#!/bin/sh
#https://shnoh171.github.io/gpu%20and%20gpu%20programming/2019/08/26/installing-glfw-on-ubuntu.html
echo "get glad"
if [ ! -d glad ] 
then 
	git clone https://github.com/Dav1dde/glad.git
	cd glad
	mkdir build
	cd build
	cmake ..
	make
	sudo cp -a include /usr/local/
	sudo cp -a *.a /usr/local/lib/
	cd ..
else
	echo "exists already"
	git pull
	cd glad
	cd build
	cmake ..
	make
	sudo cp -a include /usr/local/
	sudo cp -a libglad.a /usr/local/lib/
	cd ..	
fi
