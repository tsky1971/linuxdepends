#!/bin/sh

echo "get msgpack-cpp"
if [ ! -d msgpack-cpp ]
then 
	git clone https://github.com/msgpack/msgpack-c.git msgpack-cpp

	cd msgpack-cpp
	git checkout cpp_master
	git pull
	mkdir build
	cd build
	cmake ..
	make
	sudo make install
	cd -
else
	echo "exists already"
	cd msgpack-cpp
	git checkout cpp_master
	git pull
	cd build
	cmake ..
	make
	sudo make install
	cd -
fi

