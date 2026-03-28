#!/bin/sh

echo "get SDL_mixer"
if [ ! -d SDL_mixer ]
then
	git clone https://github.com/libsdl-org/SDL_mixer.git
	cd SDL_mixer
		mkdir build
		#cd build
		#	cmake ..
		#	make
		#	sudo make install
		#cd ..
		./configure
		make 
		sudo make install
	cd ..
else
	cd SDL_mixer
		git config pull.rebase true
		git pull
		#cd build
		#	cmake ..
		#	make
		#	sudo make install
		#cd ..
		./configure
		make 
		sudo make install
	cd ..
fi
