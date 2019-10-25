#!/bin/bash
FOLDER=$1
BRANCH=$2


if [ ! -n "${BRANCH}" ]; then
	BRANCH = "develop"i;
fi

for i in $(ls ${FOLDER}); do

	if [ -d ${i} ]; then

		for j in $(ls -a ${i}); do

			if [ ${j} == '.git' ]; then
			 	cd ${i}; 
				echo " ${i} ";
				git status;
				cd ../;
				echo "\033[5m  ----------------------------------------------------------------------------------------------"
			fi
		done
		
	fi
done

echo ${FOLDER}

read -r -p "小老弟 要不要更新git? [Y/n] " input
				 
case $input in
	[yY][eE][sS]|[yY]|[])
				echo "Yes"
				;;
	
	[nN][oO]|[nN])
				echo "No"
				exit 1
				;;

	*)
				echo "别乱输"
				exit 1
				;;

esac


for i in $(ls ${FOLDER}); do

	if [ -d ${i} ]; then

		for j in $(ls -a ${i}); do

			if [ ${j} == '.git' ]; then
				 cd ${i};
				 echo  " ${i} ";
				 git checkout ${BRANCH} ; git pull --all;
				 cd ../;
				 echo "-----------------------------------------------------------------------------------------------"
			fi
		done
		
	fi
done
# for fold in $(ls $FOLDER); do
# 	echo $(fold)
# done
