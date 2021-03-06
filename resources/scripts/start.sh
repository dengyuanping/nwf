#!/bin/bash
cd $(cd $(dirname $0) && pwd -P)
cd npl_packages/main
git pull
cd ../nwf/
git pull
cd ../../

if [ -f "www.tar.gz" ]; then
	echo "source package 'www.tar.gz' exits, directory www will be replace.."
	rm -rf www
	tar -xf www.tar.gz
fi

pwd
npl -d bootstrapper="www/webapp.lua"

