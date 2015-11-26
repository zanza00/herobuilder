#!/bin/bash

install_file="3.2.0.tar.gz"
install_dir="reveal.js-${install_file/.tar.gz/}"
backgrounds_dir="backgrounds"

if [[ ! -d ${install_dir} ]]; then
	if [[ ! -f ${install_file} ]]; then
		wget https://github.com/hakimel/reveal.js/archive/${install_file}
		tar xvzf ${install_file}
		rm -f ${install_file}
	fi
fi

ln -s ${install_dir} "reveal.js"

if [[ -d ${backgrounds_dir} && -f ${backgrounds_dir}/make_dark_backgrounds.sh ]]; then
	cd ${backgrounds_dir}
	./make_dark_backgrounds.sh
fi