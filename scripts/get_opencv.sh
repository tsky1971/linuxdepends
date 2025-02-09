#!/bin/sh
#
#

echo "get opencv"
if [ ! -d opencv ]
then 
	git clone https://github.com/opencv/opencv.git	
	git clone https://github.com/opencv/opencv_contrib.git
	cd opencv
		mkdir build
		cd build
			cmake .. -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules
			make
			sudo make install	
		cd ..
	cd ..	
else
	echo "exists already"
	cd opencv_contrib
	git pull
	cd ..
	cd opencv
	git pull
	cd build
	cmake .. -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules
	make
	sudo make install
	cd ..
	cd ..
fi

