#!/bin/sh

if [ ! -d cppzmq ]
then 
	git clone https://github.com/zeromq/cppzmq.git
	cd cppzmq 
else
	echo "exists already"
	cd cppzmq
	git pull
fi

sudo cp *.hpp /usr/local/include/

cd -
