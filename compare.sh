#!/bin/sh
# Compares baserom.gbc and pokekuristaru.gbc

# create baserom.txt if necessary
if [ ! -f baserom.txt ]; then
	hexdump -C baserom.gbc > baserom.txt
fi

hexdump -C pokekuristaru.gbc > pokekuristaru.txt

diff -u baserom.txt pokekuristaru.txt | less
