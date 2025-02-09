#!/bin/sh
#https://github.com/nigels-com/glew

echo "get glew"
if [ ! -d glew ] 
then 
	git clone https://github.com/nigels-com/glew.git
	cd glew
		cd auto
			make
		cd ..		
		make
		sudo make install		
	cd ..
else
	echo "exists already"	
	cd glew
		git pull
		cd auto
			make
		cd ..		
		make
		sudo make install		
	cd ..
fi
