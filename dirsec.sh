#! /bin/sh
for file in $1/*; do
	echo ${file##*/}
	md5sum "$1/${file##*/}" > "$1/.${file##*/}.hash"
done
