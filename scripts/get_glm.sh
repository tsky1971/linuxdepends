#!/bin/sh

echo "get glm"
if [ ! -d glm ] 
then 
	git clone https://github.com/g-truc/glm.git
	cd glm
		mkdir build
		cd build
			cmake ..
			make
			sudo make install
		cd ..
	cd ..
else
	echo "exists already"
	cd glm
		git pull
		cd build
			cmake ..
			make
			sudo make install
		cd ..
	cd ..	
fi
