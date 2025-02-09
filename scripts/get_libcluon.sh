#!/bin/sh

echo "get libcluon"
if [ ! -d libcluon ]
then 
	git clone https://github.com/chrberger/libcluon.git

	cd libcluon
	
	git config pull.rebase true
	git pull
	
	cd libcluon
	mkdir build
	cd build
	cmake ..
	make
	sudo make install
	cd ..
	
	cd ..
else
	echo "exists already"
	cd libcluon
	git pull
	cd libcluon
	cd build
	cmake ..
	make
	sudo make install
	cd ..
	cd ..
fi

