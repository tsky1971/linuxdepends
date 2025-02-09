#!/bin/sh

echo "get msgpack-c"
if [ ! -d msgpack-c ]
then 
	git clone https://github.com/msgpack/msgpack-c.git

	cd msgpack-c
	git checkout c_master
	git pull
	mkdir build
	cd build
#	cmake -DMSGPACK_CXX11=ON ..
	cmake ..
	make
	sudo make install
	cd -
else
	echo "exists already"
	cd msgpack-c
	git checkout c_master
	git pull
	cd build
#	cmake -DMSGPACK_CXX11=ON ..
	cmake ..	
	make
	sudo make install
	cd -
fi

