#!/bin/sh

echo "get cglm"
if [ ! -d cglm ] 
then 
	git clone https://github.com/recp/cglm.git
	cd cglm
		mkdir build
		cd build
			cmake ..
			make
			sudo make install
		cd ..
	cd ..
else
	echo "exists already"
	cd cglm
		git pull
		cd build
			cmake ..
			make
			sudo make install
		cd ..
	cd ..	
fi
