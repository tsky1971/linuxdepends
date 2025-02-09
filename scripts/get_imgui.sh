#!/bin/sh


echo "get imgui"
if [ ! -d imgui ]
then 
	git clone https://github.com/ocornut/imgui.git
	
else
	echo "exists already"
	cd imgui
		git config pull.rebase true
		git pull		
	cd ..
fi


