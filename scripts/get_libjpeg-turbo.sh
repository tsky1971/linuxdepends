#!/bin/sh

echo "get libjpeg-turbo"

if [ ! -d libjpeg-turbo ]
then 	
	git clone https://github.com/libjpeg-turbo/libjpeg-turbo.git

	cd libjpeg-turbo	
	git config pull.rebase true
	git pull
	mkdir build
	cd build
#	cmake -DMSGPACK_CXX11=ON ..
	cmake ..
	make
	sudo make install
	cd -
else
	echo "exists already"
	cd libjpeg-turbo
	git config pull.rebase true
	git pull
	cd build
#	cmake -DMSGPACK_CXX11=ON ..
	cmake ..	
	make
	sudo make install
	cd -
fi

