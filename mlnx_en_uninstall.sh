# MLNX_EN uninstall script
if ( grep -E "Ubuntu|Debian" /etc/issue > /dev/null 2>&1); then
	apt-get remove -y `dpkg --list 2>/dev/null | grep -E "mstflint|mlnx" | awk '{print $2}' 2>/dev/null` > /dev/null
	apt-get remove -y --purge mlnx-en-utils > /dev/null
else
	rpm -e `rpm -qa 2>/dev/null | grep -E "mstflint|mlnx.en"` > /dev/null
fi

echo "MLNX_EN uninstall done"
