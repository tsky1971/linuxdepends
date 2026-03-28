#!/bin/sh

./get_SPIRV-Cross.sh

echo "get SDL_shadercross"
if [ ! -d SDL_shadercross ]
then
	git clone https://github.com/libsdl-org/SDL_shadercross.git
	cd SDL_shadercross
		mkdir build
		cd build
			cmake ..
			make
			sudo make install
		cd ..		
	cd ..
else
	cd SDL_shadercross
	git config pull.rebase true
	git pull
		cd build
			cmake ..
			make
			sudo make install
		cd ..		
	cd ..
fi
