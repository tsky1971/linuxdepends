#!/bin/sh
#


echo "get skypjack ENTT"
if [ ! -d entt ]
then 
	git clone https://github.com/skypjack/entt.git
	cd entt
		mkdir build
		cd build
			cmake ..
			make
			sudo make install	
		cd ..
	cd ..	
else
	echo "exists already"
	cd entt
		git pull	
		cd build
			cmake ..
			make
			sudo make install
		cd ..
	cd ..
fi

