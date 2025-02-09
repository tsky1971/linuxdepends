#!/bin/sh

echo "get SDL_ttf"
if [ ! -d SDL_ttf ]
then
	git clone https://github.com/libsdl-org/SDL_ttf.git
	cd SDL_ttf
	mkdir build			
	cd build
		cmake ..
		make
		sudo make install
		sudo ldconfig
		cd ..
	cd ..
else
	cd SDL_ttf
	git config pull.rebase true
	git pull
	cd build
		cmake ..
		make
		sudo make install
		sudo ldconfig
		cd ..
	cd ..
fi
