#!/bin/bash
set -e -x

GCC_VERSION=gcc-12

echo "Check the locations compilers"
whereis gcc
whereis clang
whereis $GCC_VERSION

echo "Determine the location of $GCC_VERSION"
GCC12_PATH=$(type -P $GCC_VERSION)
echo $GCC12_PATH

echo "Link gcc command to particular $GCC_VERSION"
ln -sf $GCC12_PATH /usr/local/bin/gcc
gcc --version

echo "Link clang command to particular $GCC_VERSION"
ln -sf $GCC12_PATH /usr/local/bin/clang
clang --version
