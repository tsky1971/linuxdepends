#!/bin/sh

echo "get SDL"
if [ ! -d SDL ]
then 
	git clone https://github.com/libsdl-org/SDL.git
	cd SDL
		mkdir build
		cd build
			cmake ..
			make
			sudo make install
		cd ..
	cd ..
else
	echo "exists already"
	cd SDL
		git config pull.rebase true
		git pull
		cd build
			cmake ..
			make
			sudo make install
		cd ..
	cd ..
fi


