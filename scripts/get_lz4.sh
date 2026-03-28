#!/bin/sh

echo "get lz4"
if [ ! -d lz4 ]
then 
	git clone https://github.com/lz4/lz4.git
	cd lz4
		mkdir buildLinux
		cd buildLinux
			cmake ../build/cmake
			make
			sudo make install
		cd ..
	cd ..
else
	echo "exists already"
	cd lz4
		git pull			
		cd buildLinux
			cmake ../build/cmake
			make
			sudo make install
		cd ..
	cd ..
fi

