#!/bin/sh
set -e

rm -f config.h

make clean
make

sudo make install

kill -HUP $(pidof dwm)

