#!/bin/sh

echo "Generate Configure"
./autogen.sh && ./configure

echo "Build GNUstepLib & install"
cd WINGs/GNUstepLib
make debug=yes
sudo -E make install

echo "Build WINGs & install"
cd ..
make
sudo -E make install

echo "Build WindowMaker and install"
cd ../
make
sudo -E make install

echo "Done."
exit 0
