#!/bin/bash

# grab the purest color definition file
input="/home/zeke/.cache/wal/colors"
i=0
content=""
while IFS= read -r line
do

    # generate the color list for my style config
    if [ $i -eq 0 ]; then 
        content="${content}  background:${line}00;"
        content="${content}  color$i:${line};"
    else 
        content="${content}  color$i:${line};"
    fi

    ((i++))

done < "$input"

# write in the 10th line my color list
sed -i "10i$content" /home/zeke/configs/rofi/.config/rofi/spotlight-dark.rasi
