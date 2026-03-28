#!/bin/sh

echo "get UDPsocket"
if [ ! -d UDPsocket ]
then 
	git clone https://github.com/barczynsky/UDPsocket.git
	cd UDPsocket
		mkdir build
		cd build
			cmake ..
			make			
		cd ..
	cd ..
else
	echo "exists already"
	cd UDPsocket
		git config pull.rebase true
		git pull
		cd build
			cmake ..
			make
		cd ..
	cd ..
fi

echo "copy headers"

if [ ! -d /usr/local/include/UDPsocket ]
then
	sudo mkdir /usr/local/include/UDPsocket
fi

sudo cp UDPsocket/include/UDPsocket.h /usr/local/include/UDPsocket/UDPsocket.h

echo "done"


