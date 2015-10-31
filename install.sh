#!/bin/bash
# install.sh - installation script for mlnx_en driver

# mv symbolic link mlx4.old to mlx4
SOURCE_PATH=/usr/src/mlnx-en-3.0/drivers/net/ethernet/mellanox/
if [ -L ${SOURCE_PATH}/mlx4 ]; then
    unlink $SOURCE_PATH/mlx4
    mv ${SOURCE_PATH}/mlx4.old ${SOURCE_PATH}/mlx4
fi

# Initial sanity checks

if [ $UID -ne 0 ]; then
	echo Must be root to run this script.
	exit 1
fi

# Initial value
batch="no"
with_sysctl="0"
with_mlnx_tune="0"
with_memtrack="0"
disable_kmp=0
build_only=0
err=0
KER_UNAME_R=`uname -r`
KER_PATH=/lib/modules/${KER_UNAME_R}/build
config="/etc/mlnx-en.conf"
skip_dist_check=0
with_mlx4=1
with_mlx5=0
TMPDIR="/tmp"

usage()
{
cat << EOF

	Usage: `basename $0` [--help]: Prints this message
			 [--batch]: Remove all installed components without promt
			 [--disable-kmp]: Disable kernel module package (KMP) support
			 [-k|--kernel <kernel version>]: Build package for this kernel version. Default: $KER_UNAME_R
			 [-s|--kernel-sources  <path to the kernel sources>]: Use these kernel sources for the build. Default: $KER_PATH
			 [--tmpdir] <path>            Change tmp directory. Default: $TMPDIR
			 [--with-sysctl]              Enable Running the sysctl_perf_tuning script
			 [--with-mlnx_tune]           Enable Running the mlnx_tune utility
			 [--without-depcheck]         Skip Distro's libraries check
			 [--without-mlx4]             Don't build/install mlx4 EN modules
			 [--without-mlx5]             Don't build/install mlx5 EN modules
EOF
}

###############################################################################
#                          Parsing command line                               #
###############################################################################
while [ ! -z "$1" ]; do
		case "$1" in
			-h|--help)
			usage
			exit 0
		;;
		-b|--batch)
			batch="yes"
		;;
		--build-only)
			build_only=1
			update_firmware=0
		;;
		--without-sysctl)
			with_sysctl="0"
		;;
		--with-sysctl)
			with_sysctl="1"
		;;
		--with-mlnx_tune)
			with_mlnx_tune="1"
		;;
		--disable-kmp)
			disable_kmp=1
		;;
		--with-memtrack)
			with_memtrack="1"
		;;
		-k | --kernel | --kernel-version)
			shift
			KVERSION=$1
		;;
		-s|--kernel-sources)
			shift
			KSRC=$1
		;;
		--without-depcheck)
			skip_dist_check=1
		;;
		--tmpdir)
			shift
			TMPDIR=$1
		;;
		--without-mlx4)
			with_mlx4=0
		;;
		--without-mlx5)
			with_mlx5=0
		;;
		*)
			echo "Bad input parameter: $1"
			usage
			exit 1
		;;
	esac
	shift
done

name=`basename $0`
cd `dirname $0`
package_dir=`pwd`

KVERSION=${KVERSION:-$KER_UNAME_R}
KSRC=${KSRC:-"/lib/modules/${KVERSION}/build"}

LOGFILE=$TMPDIR/install-mlx_en.log.$$

### Local functions

incr_err() {
	let err=$err+1
}

ex() {
	echo "EXEC: $@" >> $LOGFILE
	eval $@ >> $LOGFILE 2>&1
	if [ "$?" != "0" ]; then
		echo "$@   FAILED"
		echo "Please review $LOGFILE"
	exit 1
	fi
}

check_input() {
	if [ "x$1" == "xy" ] \
			|| [ "x$1" == "xyes" ] \
			|| [ "x$1" == "xY" ] \
			|| [ "x$1" == "xYES" ] \
			|| [ "x$1" == "x" ]  ; then
		return 1
	else
		return 0
	fi
}

check_prev_install() {
	# Uninstall ofed
	INFO=/etc/infiniband/info
	if [ -x ${INFO} ]; then
		info_prefix=$(${INFO} | grep -w prefix | cut -d '=' -f 2)
		if [ -x ${info_prefix}/sbin/ofed_uninstall.sh ]; then
			if [ "$batch" == "no" ]; then
				echo -n "Remove currently installed ofed components (${info_prefix}/sbin/ofed_uninstall.sh) (y/n) [y] ? "
				read force
			else
				force="yes"
			fi
			check_input $force
			RC=$?
			if [ $RC == 1 ]; then
				echo "Cleaning an old distribution at ${info_prefix}"
				echo "Running: yes | ${info_prefix}/uninstall.sh" >> $LOGFILE
				yes | ${info_prefix}/sbin/ofed_uninstall.sh --unload-modules --force > /dev/null 2>&1
				if [ $? -ne 0 ]; then
					yes | ${info_prefix}/sbin/ofed_uninstall.sh > /dev/null 2>&1
				fi
				if ( ls ${info_prefix}/uninstall*.sh > /dev/null 2>&1 ); then
									yes | ${info_prefix}/uninstall*.sh > /dev/null 2>&1
				fi
			else
				echo "Cannot continue without removing ofed first."
				exit 1
			fi
		fi
	fi

	# Uninstall ofed rpm
	if (rpm -q ofed-kmp-default > /dev/null 2>&1); then
		if [ "$batch" == "no" ]; then
			echo "Remove currently OFED RPM?"
			echo -n "This operation is ireversable  (y/n) [y] ? "
			read force
		else
			force="yes"
		fi
		check_input $force
		RC=$?
		if [ $RC == 1 ]; then
			echo "Uninstalling OFED rpm"
			echo "Removing OFED" >> $LOGFILE 2>&1
			rpm -e ofed-kmp-default > /dev/null 2>&1
		else
			echo "Cannot continue without uninstalling OFED first."
			exit 1
		fi
	fi

	# Uninstall mlnx_en
	if [ -d /tmp/mlnx_en ] ; then
		if [ "$batch" == "no" ]; then
			echo -n "Remove currently installed mlnx-en  (y/n) [y] ? "
			read force
		else
			force="yes"
		fi
		check_input $force
		RC=$?
		if [ $RC == 1 ]; then
			echo "Cleaning an old distribution at /tmp/mlnx_en"
			echo "Removing $src_path" >> $LOGFILE 2>&1
			/sbin/mlnx_en_uninstall.sh >> $LOGFILE 2>&1
			/bin/rm -rf $src_path > /dev/null 2>&1
			/bin/rm -rf $include_path > /dev_null 2>&1
		else
			echo "Cannot continue without removing $target_path first."
			exit 1
		fi
	fi

	if (rpm -q mlnx_en > /dev/null 2>&1 || rpm -q mlnx-en-devel > /dev/null 2>&1 || rpm -q mlnx-ofc > /dev/null 2>&1); then
		if [ "$batch" == "no" ]; then
			echo -n "Remove currently installed mlnx-en  (y/n) [y] ? "
			read force
		else
			force="yes"
		fi
		check_input $force
		RC=$?
		if [ $RC == 1 ]; then
			echo "Removing previous installation"
			/bin/cp mlnx_en_uninstall.sh /sbin/
			/sbin/mlnx_en_uninstall.sh
		else
			echo "Cannot continue without removing previous installation."
			exit 1
		fi
	fi

	if (rpm -qa 2> /dev/null | grep -q "mlnx-en" || dpkg --list 2> /dev/null | grep -q "mlnx"); then
		if [ "$batch" == "no" ]; then
			echo -n "Remove currently installed mlnx-en package  (y/n) [y] ? "
			read force
		else
			force="yes"
		fi
		check_input $force
		RC=$?
		if [ $RC == 1 ]; then
			echo "Removing mlnx-en package"
			if ( grep -E "Ubuntu|Debian" /etc/issue > /dev/null 2>&1); then
				apt-get remove -y `dpkg --list 2>/dev/nulll | grep -E "mlnx" | awk '{print $2}' 2>/dev/nulll` > /dev/null
				apt-get remove -y --purge mlnx-en-utils > /dev/null
			else
				rpm -e `rpm -qa 2>/dev/nulll | grep -E "mlnx.en"` > /dev/null
			fi
		else
			echo "Cannot continue without removing mlnx-en package."
			exit 1
		fi
	fi
}

is_installed()
{
	/bin/rpm -q $1 > /dev/null 2>&1
}

is_installed_deb()
{
	installed_deb=$(/usr/bin/dpkg-query -l $1 2>/dev/null | awk '/^[rhi][iU]/{print $2}')
	if [ "$installed_deb" == "" ]; then
		return 1
	else
		return 0
	fi
}

# Check that a previous version is loaded
check_loaded_modules() {
	if ( `/sbin/lsmod | grep mlx > /dev/null 2>&1`); then
		if [ "$batch" == "no" ]; then
			echo; echo "   In order for newly installed mlx modules to load, "
			echo "   previous modules must first be unloaded."
			echo -n "   Do you wish to reload the driver now? (y/n) [y] "
			read force
		else
			force="yes"
		fi
		check_input $force
		RC=$?
		if [ $RC == 1 ]; then
			echo "Reloading mlx modules"
			/etc/init.d/mlnx-en.d restart
		else
			echo "WARNING: Loading the new installed modules could cause symbol confilcts"
			echo "		 Please unload all prevoius versions of mlx modules"
			echo
		fi
	fi
}

check_headers()
{
	if [ $skip_dist_check -eq 1 ]; then
		return
	fi

	echo "Checking for Linux headers availability..."
	if [ ! -d "${KSRC}/" ]; then
		echo
		echo "ERROR: No kernel sources/headers found for $KVERSION kernel."
		echo "Cannot continue..."
		echo "To install the missing sources/headers run the following command:"
		case "$distro" in
			sles*|*SUSE*)
				echo "zypper install kernel-devel kernel-syms"
			;;
			ubuntu*|debian*)
				echo "apt-get install linux-headers-`uname -r`"
			;;
			*)
				echo "yum install kernel-devel"
			;;
		esac
		exit 1
	fi
}

check_dist_req()
{
	if [ $skip_dist_check -eq 1 ]; then
		return
	fi

	local build_requires_common="gcc make patch gcc-c++"
	local build_requires_redhat="$build_requires_common redhat-rpm-config rpm-build"
	local build_requires_suse="$build_requires_common kernel-syms"
	local build_requires_debian="debhelper autotools-dev dkms zlib1g-dev"
	local missing_rpms=""
	local package=

	echo "Verifying dependencies..."
	case "$distro" in
		xen*|fc*|oel*|rhel*)
			for package in $build_requires_redhat; do
				if ! is_installed "$package"; then
					missing_rpms="$missing_rpms $package"
				fi
			done
		;;
		sles*)
			for package in $build_requires_suse; do
				if ! is_installed "$package"; then
					missing_rpms="$missing_rpms $package"
				fi
			done
			case "$distro" in
				sles12*)
					if ! is_installed "rpm-build"; then
						missing_rpms="$missing_rpms rpm-build"
					fi
				;;
			esac
		;;
		ubuntu*|debian*)
			for package in $build_requires_debian; do
				if ! is_installed_deb "$package"; then
					missing_rpms="$missing_rpms $package"
				fi
			done
		;;
	esac

	if [ ! -z "$missing_rpms" ]; then
		echo "mlnx-en requires the following RPM(s) to be installed: $missing_rpms"
		exit 1
	fi

	# make sure this func will run once
	skip_dist_check=1
}

TOPDIR=$TMPDIR/MLNX_EN.$$
ARCH=`rpm --eval %{_target_cpu} 2> /dev/null || uname -m`

distro_rpm=`rpm -qf /etc/issue 2> /dev/null | head -1`
case $distro_rpm in
	redhat-release-5Server-5.2*|centos-release-5-2.el5.centos*)
	distro=rhel5.2
	dist_rpm=rhel5u2
	;;
	redhat-release-5Server-5.3*|redhat-release-5Client-5.3*|centos-release-5-3*)
	distro=rhel5.3
	dist_rpm=rhel5u3
	;;
	redhat-release-5Server-5.4*|redhat-release-5Client-5.4*|entos-release-5-4*)
	distro=rhel5.4
	dist_rpm=rhel5u4
	;;
	centos-release-5-10.el5.centos)
	distro=xenserver6.5
	dist_rpm=xenserver6u5
	;;
	redhat-release-5Server-5.5*|redhat-release-5Client-5.5*|centos-release-5-5*|enterprise-release-5*)
	if (grep -q XenServer /etc/issue 2> /dev/null); then
		distro=xenserver6
		dist_rpm=xenserver6
	else
		distro=rhel5.5
		dist_rpm=rhel5u5
	fi
	;;
	redhat-release-5Server-5.6*|redhat-release-5Client-5.6*|centos-release-5-6*)
	distro=rhel5.6
	dist_rpm=rhel5u6
	;;
	redhat-release-5Server-5.7*|redhat-release-5Client-5.7*|centos-release-5-7*)
	if (grep -q XenServer /etc/issue 2> /dev/null); then
		distro=xenserver6.1
		dist_rpm=xenserver6u1
	else
		distro=rhel5.7
		dist_rpm=rhel5u7
	fi
	;;
	redhat-release-5Server-5.8*|redhat-release-5Client-5.8*|centos-release-5-8*)
	distro=rhel5.8
	dist_rpm=rhel5u8
	;;
	redhat-release-5Server-5.9*|redhat-release-5Client-5.9*|centos-release-5-9*)
	distro=rhel5.9
	dist_rpm=rhel5u9
	;;
	redhat-release*-6.0*|centos-release-6-0*|centos-*6Server-*-6.0*|enterprise-release-*-6.0*)
	distro=rhel6.0
	dist_rpm=rhel6u0
	;;
	redhat-release*-6.1*|centos-*6Server-*-6.1*|centos-release-6-1*|enterprise-release-*-6.1*)
	distro=rhel6.1
	dist_rpm=rhel6u1
	;;
	redhat-release*-6.2*|centos-*6Server-*-6.2*|centos-release-6-2*|enterprise-release-*-6.2*)
	distro=rhel6.2
	dist_rpm=rhel6u2
	;;
	redhat-release*-6.3*|centos-*6Server-*-6.3*|centos-release-6-3*|enterprise-release-*-6.3*)
	distro=rhel6.3
	dist_rpm=rhel6u3
	;;
	redhat-release*-6.4*|centos-*6Server-*-6.4*|centos-release-6-4*|enterprise-release-*-6.4*)
	distro=rhel6.4
	dist_rpm=rhel6u4
	;;
	redhat-release*-6.5*|centos-*6Server-*-6.5*|centos-release-6-5*|enterprise-release-*-6.5*)
	distro=rhel6.5
	dist_rpm=rhel6u5
	;;
	redhat-release*-6.6*|centos-*6Server-*-6.6*|centos-release-6-6*|enterprise-release-*-6.6*)
	distro=rhel6.6
	dist_rpm=rhel6u6
	;;
	redhat-release*-6.7*|centos-*6Server-*-6.7*|centos-release-6-7*|enterprise-release-*-6.7*)
	distro=rhel6.7
	dist_rpm=rhel6u7
	;;
	redhat-release-server-7.1*)
	distro=rhel7.1
	dist_rpm=rhel7u1
	;;
	redhat-release*-7.0*)
	distro=rhel7.0
	dist_rpm=rhel7u0
	;;
	oraclelinux-release-7.0*)
	distro=oel7.0
	dist_rpm=oel7u0
	;;
	oraclelinux-release-6Server-6*)
	distro=oel6.6
	dist_rpm=oel6u6
	;;
	oraclelinux-release-6Server-5*)
	distro=oel6.5
	dist_rpm=oel6u5
	;;
	oraclelinux-release-6Server-4*)
	distro=oel6.4
	dist_rpm=oel6u4
	;;
	oraclelinux-release-6Server-3*)
	distro=oel6.3
	dist_rpm=oel6u3
	;;
	oraclelinux-release-6Server-2*)
	distro=oel6.2
	dist_rpm=oel6u2
	;;
	oraclelinux-release-6Server-1*)
	distro=oel6.1
	dist_rpm=oel6u1
	;;
	sles-release-10-15.35)
	distro=sles10sp2
	dist_rpm=sles10sp2
	;;
	sles-release-10-15.45.8)
	distro=sles10sp3
	dist_rpm=sles10sp3
	;;
	sles-release-10-15.57.1)
	distro=sles10sp4
	dist_rpm=sles10sp4
	;;
	sles-release-11-72.13)
	distro=sles11
	dist_rpm=sles11sp0
	;;
	sles-release-11.1-1.152)
	distro=sles11sp1
	dist_rpm=sles11sp1
	;;
	sles-release-11.2*)
	distro=sles11sp2
	dist_rpm=sles11sp2
	;;
	sles-release-11.3*)
	distro=sles11sp3
	dist_rpm=sles11sp3
	;;
	sles-release-11.4*)
	distro=sles11sp4
	dist_rpm=sles11sp4
	;;
	sles-release-12-1*)
	distro=sles12sp0
	dist_rpm=sles12sp0
	;;
	fedora-release-14*)
	distro=fc14
	dist_rpm=fc14
	;;
	fedora-release-15*)
	distro=fc15
	dist_rpm=fc15
	;;
	fedora-release-16*)
	distro=fc16
	dist_rpm=fc16
	;;
	fedora-release-17*)
	distro=fc17
	dist_rpm=fc17
	;;
	fedora-release-18*)
	distro=fc18
	dist_rpm=fc18
	;;
	fedora-release-19*)
	distro=fc19
	dist_rpm=fc19
	;;
	fedora-release-20*)
	distro=fc20
	dist_rpm=fc20
	;;
	openSUSE-release-11.1*)
	distro=openSUSE11sp1
	dist_rpm=openSUSE11sp1
	;;
	openSUSE-release-12.1*)
	distro=openSUSE12sp1
	dist_rpm=openSUSE12sp1
	;;
	openSUSE-release-13.1*)
	distro=openSUSE13sp1
	dist_rpm=openSUSE13sp1
	;;
	*)
	if [ -x "/usr/bin/lsb_release" ]; then
		dist_rpm=`lsb_release -s -i | tr '[:upper:]' '[:lower:]'`
		dist_rpm_ver=`lsb_release -s -r`
		distro=$dist_rpm$dist_rpm_ver
		case $distro in
		ubuntu*|debian*)
		;;
		*)
			distro=unsupported
			dist_rpm=unsupported
		;;
		esac
	else
		distro=unsupported
		dist_rpm=unsupported
	fi
	;;
esac

cd ${package_dir}

if [ $build_only -eq 0 ]; then
	echo "Installing mlnx-en for Linux"
	echo "Starting installation at `date`..." | tee -a $LOGFILE

	# Clean old source code
	check_prev_install

	# Add th uninstall script
	/bin/cp mlnx_en_uninstall.sh /sbin/
fi

# Create installation dir
if [ -d $TOPDIR ]; then
	ex /bin/rm -rf $TOPDIR
fi

ex /bin/mkdir $TOPDIR
ex /bin/mkdir ${TOPDIR}/BUILD
ex /bin/mkdir ${TOPDIR}/SRPMS
ex /bin/mkdir ${TOPDIR}/RPMS
ex /bin/mkdir ${TOPDIR}/SOURCES


if [ "$dist_rpm" == "ubuntu" ] || [ "$dist_rpm" == "debian" ]; then
	DPKG_BUILDPACKAGE="/usr/bin/dpkg-buildpackage"
	for package in mlnx-en 
	do
		debs=`/bin/ls DEBS/${package}* 2> /dev/null`
		if [ -n "$debs" ]; then
			if [ $build_only -eq 0 ]; then
				echo "Installing ${package}..."
				ex "dpkg -i --force-confmiss $DPKG_FLAGS $debs"
			fi
		else
			check_headers
			check_dist_req
			echo "Building ${package} binary DEBs"
			gz=`ls -1 ${package_dir}/SOURCES/${package}*.orig.tar.gz`
			cd ${TOPDIR}/BUILD
			ex "/bin/cp $gz ."
			ex "tar xzf $gz"
			cd ${package}*
			ENV_VARS=
			if [ "X$package" == "Xmlnx-en" ]; then
				ENV_VARS="MLX4=$with_mlx4 MLX5=$with_mlx5"
			fi
			ex "$ENV_VARS $DPKG_BUILDPACKAGE -us -uc"
			mkdir -p $package_dir/DEBS > /dev/null 2>&1
			/bin/cp -af ${TOPDIR}/BUILD/*.deb $package_dir/DEBS > /dev/null 2>&1
			if [ $build_only -eq 0 ]; then
				echo "Installing ${package}..."
				ex "dpkg -i --force-confmiss $DPKG_FLAGS ${TOPDIR}/BUILD/${package}*.deb"
			fi
		fi
	done
	# verify that the compilation passed successfully
	if [ $build_only -eq 0 ]; then
		/sbin/depmod >/dev/null 2>&1
		mods=
		if [ $with_mlx4 -eq 1 ]; then
			mods="$mods mlx4_en mlx4_ib"
		fi
		if [ $with_mlx5 -eq 1 ]; then
			mods="$mods mlx5_core"
		fi
		for mod in $mods
		do
			file=$(/sbin/modinfo $mod 2>/dev/null | grep filename | cut -d ":" -f 2 | sed -s 's/\s//g')
			origin=
			if [ -f "$file" ]; then
				origin=$(/usr/bin/dpkg -S $file 2>/dev/null | cut -d ":" -f 1)
			fi
			if [ "$file" == "" ]; then
				echo "Installation finished with errors."
				echo "See $LOGFILE"
				exit 1
			fi
			case "$origin" in
				linux*)
				echo "Installation finished with errors."
				echo "See $LOGFILE"
				exit 1
				;;
			esac
		done
	fi
else # not ubuntu/debian
	target_cpu=`rpm --eval %_target_cpu`
	case "$dist_rpm" in
		rhel5*)
		if [ "$target_cpu" == "i386" ]; then
			target_cpu=i686
		fi
		;;
	esac

	kmp=1

	if ! ( /bin/rpm -qf /lib/modules/$KVERSION/build/scripts > /dev/null 2>&1 ); then
		kmp=0
	fi

	if [ $kmp -eq 1 ]; then
		case $distro in
		rhel5.2 | oel* | fc* | xenserver*)
		kmp=0
		;;
		esac
	
		case $KVERSION in
		*xs*|*fbk*|*fc*|*debug*|*uek*|2\.6\.18*)
		kmp=0
		;;
		esac
	fi

	if [ $kmp -eq 1 ]; then
		# RHEL
		case "${distro}${KVERSION}" in
			rhel7*el7*|rhel6*el6*)
			;;
			sles12sp03.12.2[0-9]-[0-9]*-*)
			;;
			sles11sp43.0.[1-9][0-9][0-9]-[0-9][0-9]*)
			;;
			sles11sp33.0.7[6-9]-[0-9].[0-9]*|sles11sp33.0.[8-9][0-9]-[0-9].[0-9]*|sles11sp33.0.[8-9][0-9]-[0-9].[0-9]*|sles11sp33.0.[1-9][0-9][0-9]-[0-9].[0-9]*)
			;;
			sles11sp23.0.1[3-9]-0.[0-9]*|sles11sp23.0.[2-8][0-9]-0.[0-9]*)
			;;
			sles11sp12.6.32.1[2-9]-0.[0-9]*|sles11sp12.6.32.[2-5][0-9]-0.[0-9]*)
			;;
			openSUSE12sp13.1.[0-9]*)
			;;
			*)
			kmp=0
			;;
		esac

		if [ $disable_kmp -eq 1 ]; then
			kmp=0
		fi
	fi

	case $KVERSION in
		*2.6.18*)
		with_mlx4=0
		;;
	esac

	cmd="rpmbuild --rebuild \
		 --define '_dist .${dist_rpm}' --define '_target_cpu $target_cpu' \
		 --define 'KVERSION $KVERSION' --define 'KSRC $KSRC' \
		 --define '_topdir $TOPDIR' --define 'MLX4 $with_mlx4' \
		 --define '_topdir $TOPDIR' --define 'MLX5 $with_mlx5' \
		 --define '_topdir $TOPDIR' --define 'MEMTRACK $with_memtrack'"

	SRPM=`ls -1 ${package_dir}/SRPMS/mlnx-en*`
	if [ $kmp -eq 1 ]; then
		cmd="$cmd --define 'KMP 1'"
	fi

	case $distro in
		rhel6.3)
		cmd="$cmd --define '__find_provides %{nil}'"
		;;
	esac

	cmd="$cmd $SRPM"

	RPMS_DIR="$package_dir/RPMS/$dist_rpm/$target_cpu"
	if [ $kmp -eq 1 ]; then
		mlnx_ker_rpms=`/bin/ls $RPMS_DIR/kmod*mlnx* $RPMS_DIR/*mlnx*kmp* 2>/dev/null`
	else
		mlnx_ker_rpms=`/bin/ls $RPMS_DIR/*mlnx*${KVERSION//-/_}.${target_cpu}.rpm 2>/dev/null`
	fi
	if [ "X$mlnx_ker_rpms" == "X" ];then
		check_headers
		check_dist_req
		echo "Building mlnx-en binary RPMs"
		ex $cmd
		mkdir -p $RPMS_DIR > /dev/null 2>&1
		/bin/cp -af ${TOPDIR}/RPMS/${target_cpu}/*mlnx* $RPMS_DIR/ > /dev/null 2>&1
		if [ $kmp -eq 1 ]; then
			mlnx_ker_rpms=`/bin/ls $RPMS_DIR/kmod*mlnx* $RPMS_DIR/*mlnx*kmp* 2>/dev/null`
		else
			mlnx_ker_rpms=`/bin/ls $RPMS_DIR/*mlnx*${KVERSION//-/_}.${target_cpu}.rpm 2>/dev/null`
		fi
	fi
	mlnx_us_rpms=`/bin/ls $RPMS_DIR/*mlnx-en-doc* 2>/dev/null \
				$RPMS_DIR/*mlnx-en-sources* 2>/dev/null \
				$RPMS_DIR/*mlnx-en-utils* 2>/dev/null`


	if [ $build_only -eq 0 ]; then
		echo "Installing mlnx-en"
		ex "rpm -ivh --nodeps $mlnx_ker_rpms $mlnx_us_rpms"

		/sbin/depmod
	fi
fi # ubuntu/debian

#
# update mlnx-en.conf
#
if [ $with_sysctl -eq 1 ]; then
	sed -i 's/RUN_SYSCTL=no/RUN_SYSCTL=yes/' $config
fi

if [ $with_mlnx_tune -eq 1 ]; then
	sed -i 's/RUN_MLNX_TUNE=no/RUN_MLNX_TUNE=yes/' $config
fi

if [ $with_mlx4 -eq 0 ]; then
	sed -i 's/MLX4_LOAD=yes/MLX4_LOAD=no/' $config
fi

if [ $with_mlx5 -eq 0 ]; then
	sed -i 's/MLX5_LOAD=yes/MLX5_LOAD=no/' $config
fi

# Check that a previous version is loaded
if [ $build_only -eq 0 ]; then
	check_loaded_modules

	if [ $err -eq 0 ]; then
		echo "Installation finished successfully."
		/bin/rm $LOGFILE
		/bin/rm -rf $TOPDIR
	else
		echo "Installation finished with errors."
		echo "See $LOGFILE"
		exit 1
	fi
fi
