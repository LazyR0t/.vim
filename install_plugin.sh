#!/bin/sh

if [ $# -eq 2 ];then
	GIT_LINK=$1
	OUTPUT_FOLDER=$2
	git submodule add $GIT_LINK bundle/$OUTPUT_FOLDER
	git add .
	git commit -m "Installed $OUTPUT_FOLDER as a submodule"
fi;
