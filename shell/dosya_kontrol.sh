#!/bin/bash

read dosya

find $dosya 2> /dev/null
a=$?

echo "???,$a"

if [ $a -eq 0 ]
then
echo "$dosya dosyası mevcut"
else
echo "$dosya dosyası mevcut değil"
fi