#!/bin/sh

echo "get aixlog"
if [ ! -d aixlog ]
then 
	git clone https://github.com/badaix/aixlog.git
	cd aixlog
	make
	sudo make install
	cd -
else
	echo "exists already"
	cd aixlog
	git pull
	make
	sudo make install
	cd -
fi

