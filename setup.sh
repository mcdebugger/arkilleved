#!/bin/bash

if [ ! -f "extern/glftfont/GLFT_Font.cpp" ]; then
	echo -n 'Initializing and updating required git submodules... '
	git submodule init
	git submodule update
	echo '[OK]'
fi

if [ ! -d "build" ]; then
	mkdir build
fi

cd build
cmake ../
make

echo ''
echo '***************************************************'
echo '*                                                 *'
echo '* Compile should be completed.                    *'
echo '*                                                 *'
echo '* Type `make install` or `sudo make install`      *'
echo '* from "build/" directory to install application. *'
echo '*                                                 *'
echo '***************************************************'
echo ''
