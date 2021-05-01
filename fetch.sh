#!/bin/sh

set -e

repos='
dmenu
dwm
sblocks
slock
st
xkblt
xwrtnm
'

clone() {
	git clone https://github.com/gotroyb127/$1
}

for rp in $repos
do
	[ ! -d "$rp" ] &&
		clone "$rp"
	cd "$rp"
	git pull --ff-only
	cd ..
done
