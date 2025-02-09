#!/bin/sh

echo "get lz4"
if [ ! -d lz4 ]
then 
	git clone https://github.com/lz4/lz4.git
	cd lz4
	mkdir buildlinux
	cd build
	cmake ../build/cmake
	make
	sudo make install
	cd -
else
	echo "exists already"
	cd lz4
	git pull
	cd buildlinux
	cmake ../build/cmake
	make
	sudo make install
	cd -
fi

