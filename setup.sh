#!/bin/sh

mv ~/.rpmmacros .orig_rpmmacros

echo "%_topdir `pwd`" > ~/.rpmmacros

mkdir .tmp

cp mlnx-en*/mlnx-en*.tgz .tmp

cd .tmp

fname=`echo mlnx-en*.tgz`
tar xvzf $fname
rm $fname
cp -R ../mellanox mlnx-en*/drivers/net/ethernet
tar cvzf $fname mlnx-en*
mv $fname ../SOURCES

cd ..
rm -fR .tmp

rpmbuild -bs mlnx-en*/mlnx_en.spec

rm -fR BUILD
rm -fR BUILDROOT
rm -fR RPMS
rm -fR SPECS

mv .orig_rpmmacros ~/.rpmmacros

