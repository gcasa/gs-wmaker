#!/bin/sh

set -eu

: "${MAKE:=make}"
: "${SUDO:=sudo -E}"

if [ ! -x ./configure ]; then
  echo "Generating configure"
  ./autogen.sh
fi

echo "Configuring Window Maker"
./configure "$@"

echo "Building Window Maker"
$MAKE

echo "Installing Window Maker"
$SUDO $MAKE install

echo "Done."
