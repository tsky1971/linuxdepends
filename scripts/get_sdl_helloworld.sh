#!/bin/sh

./get_sdl.sh
./get_sdl_image.sh
./get_sdl_mixer.sh
./get_sdl_net.sh
./get_sdl_rtf.sh
./get_sdl_ttf.sh
./get_sdl_sdl_shader_tools.sh
./get_sdl_shadercross.sh

echo "get SDL_helloworld"
if [ ! -d SDL_helloworld ]
then
	git clone https://github.com/libsdl-org/SDL_helloworld.git
	cd SDL_helloworld
		mkdir build
		cd build
			cmake ..
			make
			sudo make install
		cd ..		
	cd ..
else
	cd SDL_helloworld
	git config pull.rebase true
	git pull
		cd build
			cmake ..
			make
			sudo make install
		cd ..		
	cd ..
fi
