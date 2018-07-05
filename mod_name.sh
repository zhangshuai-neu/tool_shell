#! /bin/bash

FILE_TYPE=".pdf";
FILE_NUM=0;
FILE_NAME="";
FILE_NAME_PRE="";
NEW_FILE_NAME_PRE="";
STR="";

touch name_list.temp;

ls -1 |grep ${FILE_TYPE} > name_list.temp;
FILE_NUM=`wc -l name_list.temp | cut -d' ' -f1`

i=1;
while [ ${i} -le ${FILE_NUM} ];do
	FILE_NAME=`sed "${i}p" -n name_list.temp`;
	FILE_NAME_PRE=`echo "${FILE_NAME}" | cut -d'.' -f1`;
	#处理一个文件
	sign=1;
	for STR in ${FILE_NAME_PRE}; do
		if [ ${sign} -eq 1 ]; then
			NEW_FILE_NAME_PRE=${STR};
			sign=0;
		else
			NEW_FILE_NAME_PRE=${NEW_FILE_NAME_PRE}_${STR};
		fi
	done
	mv "${FILE_NAME}" ${NEW_FILE_NAME_PRE}${FILE_TYPE};
	let i=i+1;
done;


rm name_list.temp;

