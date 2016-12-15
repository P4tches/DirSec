#! /bin/sh
for file in $1/*; do
#        echo ${file##*/}
echo $(md5sum "$1${file##*/}")
echo $(cat "$1/.${file##*/}.hash")


	if [ echo $($(md5sum "$1/${file##*/}")) = echo $($(cat "$1/.${file##*/}.hash")) ]; then
		echo "${file##*/} OK"
	else
		echo "${file##*/} CHANGED"
fi
done

