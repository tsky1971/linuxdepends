#!/bin/sh

echo "get CWPack"
if [ ! -d CWPack ]
then 
	git clone https://github.com/clwi/CWPack.git

else
	echo "exists already"
	cd CWPack
	git pull
	cd --
fi

