#!/bin/sh

./get_cJSON.sh

echo "get msgpack-cpp"
if [ ! -d msgpack-cpp ]
then 
	git clone https://github.com/msgpack/msgpack-c.git
	cd msgpack-c
		git checkout cpp_master
		git pull
		mkdir build
		cd build
			#	cmake -DMSGPACK_CXX11=ON ..
			cmake -DMSGPACK_USE_BOOST=OFF ..
			make
			sudo make install
		cd ..
	cd ..
else
	echo "exists already"
	cd msgpack-c
		git checkout cpp_master
		git pull
		cd build
			#	cmake -DMSGPACK_CXX11=ON ..
			cmake -DMSGPACK_USE_BOOST=OFF ..	
			make
			sudo make install
		cd ..
	cd ..
fi

