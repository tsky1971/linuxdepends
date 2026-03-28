#!/bin/sh

echo "get SDL_image"
if [ ! -d SDL_image ]
then
echo "get git"
	git clone https://github.com/libsdl-org/SDL_image.git
	cd SDL_image
		sh autogen.sh
		./configure
		make
		sudo make install
		#not working correct		
		#mkdir build
		#cd build
			#cmake .. -DBUILD_SHARED_LIBS=OFF
			#make
			#sudo make install
		#cd ..
	cd ..
else
	cd SDL_image
	git config pull.rebase true
	git pull
		sh autogen.sh
		./configure
		make
		sudo make install
		#not working correct
		#cd build
		#	cmake .. -DBUILD_SHARED_LIBS=OFF
		#	make
		#	sudo make install
		#cd ..
	cd ..
fi
