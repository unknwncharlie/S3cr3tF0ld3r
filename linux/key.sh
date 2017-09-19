#!/bin/bash
if [ -e hidden ]
then 
	password=`sudo cat hidden/password`
	echo "Please enter Password to hide file system:"
	read user_pass
	if [ "$user_pass" == "$password" ];
	then
		mv hidden .hidden
	else
		echo "Wrong password"
	fi
else
	password=`sudo cat .hidden/password`
	echo "Please enter Password to unhide file system:"
	read user_pass
	if [ "$user_pass" == "$password" ]
	then
		mv .hidden hidden
	else
		echo "Wrong Password"
	fi
fi
echo "Operation Completed"
