#!/bin/bash -x

for file in `ls *.txt`;
do
	folderName=`echo $file | awk -F. '{print $1}'`;
	ext=`echo $file | awk -F. '{print $2}'`;
	if [ -d $folderName ];
	then
		rm -R $folderName;
	fi
	mkdir $folderName;
	cp $file  $folderName/$folderName-`date +%d-%m-%y`.$ext;
	#sleep 60;
done

