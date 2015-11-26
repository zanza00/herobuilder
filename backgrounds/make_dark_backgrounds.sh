#!/bin/bash

output_dir="dark"

if [[ ! -d ${output_dir} ]]; then mkdir ${output_dir}; fi

for i in original/*.jpg; do
    if [[ ! -f ${output_dir}/${i} ]]; then
        echo "Processing ${i}"
        convert ${i} -fill black -colorize 50% ${output_dir}/${i}
    fi
done
