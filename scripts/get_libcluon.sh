#!/bin/sh

echo "get libcluon"
if [ ! -d libcluon ]
then 
	git clone https://github.com/chrberger/libcluon.git

	cd libcluon
	
		git config pull.rebase true
		git pull
	
		mkdir build
		cd build
			cmake -DCMAKE_POLICY_VERSION_MINIMUM=3.5 ../libcluon 
			make
			sudo make install
		cd ..
	
	cd ..
else
	echo "exists already"
	cd libcluon
		git pull
		
		cd build
			cmake -DCMAKE_POLICY_VERSION_MINIMUM=3.5 ../libcluon
			make
			sudo make install
		cd ..
	cd ..
fi

