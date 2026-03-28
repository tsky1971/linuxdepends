#!/bin/sh

echo "get SPIRV-Cross - DSPIRV_CROSS_STATIC=ON/OFF -DSPIRV_CROSS_SHARED=ON/OFF -DSPIRV_CROSS_CLI=ON/OFF"
if [ ! -d SPIRV-Cross ]
then
	git clone https://github.com/KhronosGroup/SPIRV-Cross.git
	cd SPIRV-Cross
		mkdir build
		cd build
			cmake ..
			make
			sudo make install
		cd ..		
	cd ..
else
	cd SPIRV-Cross
	git config pull.rebase true
	git pull
		cd build
			cmake ..
			make
			sudo make install
		cd ..		
	cd ..
fi
