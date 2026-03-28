#!/bin/sh

echo "get SDL_rtf"
if [ ! -d SDL_rtf ]
then
	echo "get it"
	git clone https://github.com/libsdl-org/SDL_rtf.git
	cd SDL_rtf
		./configure
		make		
		sudo make install
	cd ..
	cd ..
else
	"already exist"
	cd SDL_rtf
    git pull
		./configure
		make
		sudo make install
	cd ..
	cd ..
fi


