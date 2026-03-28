#!/bin/sh

echo "get SDL_shader_tools"
if [ ! -d SDL_shader_tools ]
then
	git clone https://github.com/libsdl-org/SDL_shader_tools.git
	cd SPIRV-Cross
		mkdir build
		cd build
			cmake ..
			make
			sudo make install
		cd ..		
	cd ..
else
	cd SDL_shader_tools
	git config pull.rebase true
	git pull
		cd build
			cmake ..
			make
			sudo make install
		cd ..		
	cd ..
fi
