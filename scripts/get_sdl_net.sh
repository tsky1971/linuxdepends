#!/bin/sh


echo "get SDL_net"
if [ ! -d SDL_net ]
then
	git clone https://github.com/libsdl-org/SDL_net.git
	cd SDL_net
		#mkdir build
		#cd build
		#	cmake ..
		#	make
		#	sudo make install
		#cd ..
		./configure
		make
		sudo make install
		sudo ldconfig
	cd ..
else
	cd SDL_net
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
		sudo ldconfig
	cd ..
fi
