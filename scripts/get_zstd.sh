#!/bin/sh

echo "get zstd"
if [ ! -d zstd ]
then 
	git clone https://github.com/facebook/zstd.git
	cd zstd
	make -j4
	sudo make install
	cd -
else
	echo "exists already"
	cd zstd
	git pull
	make -j4
	sudo make install
	cd -
fi

