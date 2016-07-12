#!/bin/bash

mkdir work
pushd work
	git clone git@github.com:mmorris/mmorris.github.io.git
	httrack https://mattmorris.org

	pushd mmorris.github.io
	git rm -r *
	mv ../mattmorris.org/* .
	git add *
	git commit -m "update"
	git push origin master
	popd
popd
rm -rf work
