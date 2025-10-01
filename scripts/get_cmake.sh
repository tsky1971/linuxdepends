#!/bin/sh
#
cmake_version=4.0.3

wget https://github.com/Kitware/CMake/releases/download/v$cmake_version/cmake-$cmake_version.tar.gz
tar xfz cmake-$cmake_version.tar.gz

cd cmake-$cmake_version
./bootstrap
./configure --qt-gui
make
sudo make install
cd ..
rm -rf cmake-$cmake_version
rm cmake-$cmake_version.tar.gz
