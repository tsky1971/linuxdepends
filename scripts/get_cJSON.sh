#!/bin/sh


echo "get cJSON"
if [ ! -d cJSON ]
then 
	git clone https://github.com/DaveGamble/cJSON.git
	cd cJSON		
		git pull
		mkdir build
		cd build
			cmake ..
			make
			sudo make install
		cd ..
	cd ..
else
	echo "exists already"
	cd cJSON
		git pull
		cd build			
			cmake ..	
			make
			sudo make install
		cd ..
	cd ..
fi
