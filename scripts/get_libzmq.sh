#!/bin/sh


if [ ! -d libzmq ]
then 
	git clone https://github.com/zeromq/libzmq.git

	#cd ../dependencies/libzmq 
	#mkdir build && cd build
	#cmake .. && make -j 4

	cd libzmq
	mkdir build
	cd build
	cmake ..
	make
	sudo make install
	sudo ldconfig
	#git checkout tags/v4.3.2
	#./autogen.sh 
	#./configure --with-libsodium && make
	#sudo make install
	#sudo ldconfig
	cd -
else
	echo "exists already"
	cd libzmq
	git pull
	#git checkout tags/v4.3.2
	#./autogen.sh 
	#./configure --with-libsodium && make
	sudo make install
	sudo ldconfig
	cd -
fi

