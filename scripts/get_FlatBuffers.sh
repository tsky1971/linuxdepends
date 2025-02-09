#!/bin/sh

echo "get flatBuffers"
if [ ! -d flatbuffers ]
then 
	git clone https://github.com/google/flatbuffers.git
	cd flatbuffers
	mkdir build
	cd build
	cmake ..
	make -j4
	sudo make install
	cd -
else
	echo "exists already"
	cd flatbuffers
	git pull
	cd build
	cmake ..
	make -j4
	sudo make install
	cd -
fi
