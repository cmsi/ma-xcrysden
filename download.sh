#!/bin/sh
. $(dirname $0)/path.sh

if [ -f xcrysden_$VERSION_BASE.orig.tar.gz ]; then
  exit 127
fi
wget http://www.xcrysden.org/download/xcrysden-$VERSION_BASE.tar.gz
tar zxvf xcrysden-$VERSION_BASE.tar.gz
mv xcrysden-$VERSION_BASE xcrysden_$VERSION_BASE
tar zcvf xcrysden_$VERSION_BASE.orig.tar.gz xcrysden_$VERSION_BASE
rm -rf xcrysden-$VERSION_BASE.tar.gz xcrysden_$VERSION_BASE
