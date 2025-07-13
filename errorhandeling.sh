#!/bin/bash

create_dir (){

	mkdir demo

}
if ! create_dir;then
	echo "code exited as dir exists" >>/dev/null
	exit 1
fi

echo "dir created"

