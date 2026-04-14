#!/bin/sh
#

echo "get OpenDiS"
if [ ! -d OpenDiS ]
then 
	git clone --recurse-submodule https://github.com/OpenDiS/OpenDiS.git
	cd OpenDiS
		cd core/pydis
			mkdir build
			cd build
				cmake ..
				make
				sudo make install
			cd ..
		cd ..
		cd core/exadis
			mkdir build
			cd build
				cmake ..
				make
				sudo make install
			cd ..
		cd ..
		mkdir build
		cd build
			cmake ..
			make
			sudo make install	
		cd ..		
	cd ..	
else
	echo "OpenDiS exists already"
	cd OpenDiS
		git pull
		git submodule update --init --recursive
		
		cd core/pydis
			mkdir build
			cd build
				cmake ..
				make
				sudo make install
			cd ..
		cd ..
		
		cd core/exadis
			mkdir build
			cd build
				cmake ..
				make
				sudo make install
			cd ..
		cd ..
		
		cd build
			cmake ..
			make
			sudo make install
		cd ..
	cd ..
fi

