#!/bin/sh

echo "get Protobuf"
if [ ! -d protobuf ]
then 
	git clone https://github.com/protocolbuffers/protobuf.git
	cd protobuf
		mkdir build
		cd build
			cmake ../cmake -Dprotobuf_BUILD_TESTS=OFF
			make -j4
			sudo make install
			sudo ldconfig
		cd ..
	cd ..
else
	echo "exists already"
	cd protobuf
		git config pull.rebase true
		git pull
		cd build
			cmake ../cmake -Dprotobuf_BUILD_TESTS=OFF
			make -j4
			sudo make install
			sudo ldconfig
		cd ..
	cd ..
fi
