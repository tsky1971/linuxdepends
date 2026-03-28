#!/bin/sh

echo "get zstd"
if [ ! -d zstd ]
then 
	git clone https://github.com/facebook/zstd.git
	cd zstd
		mkdir build
		cd build
			cmake ..
			make
			sudo make install
		cd ..
	cd ..
else
	echo "exists already"
	cd zstd
		git pull		
		cd build
			cmake ..
			make
			sudo make install
		cd ..
	cd ..
fi

