#!/bin/bash
echo -n "site: "

read site
echo "$site" > dosya

grep http dosya
a=$?

while [ $a -eq 0 ]
do
	echo "http olmasın"
	echo -n "site: "
	read site
	echo "$site" > dosya
	grep http dosya
	a=$?
done

grep www dosya
a=$?
if [ $a -ne 0 ]
then
	echo "site='www.$site'" > dosya
	echo "host \$site" >> dosya
	bash dosya
else
	host $site

fi