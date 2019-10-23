#!/bin/bash

for file in flowchart/*.gv; do
    filename="${file##*/}"
    echo -n "Rendering file $file... "
    dot -Tsvg $file -o image/"${filename%.*}.svg"
    echo "done."
done
