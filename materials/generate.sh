#!/bin/bash
set -exo
for FILE in *.ipynb; do 
    echo "Processing $FILE file...";
    filename=$(basename -- "$FILE")
    extension="${filename##*.}"
    filename="${filename%.*}"
    jupyter nbconvert --execute --to notebook --inplace "$FILE"
    jupyter nbconvert "$FILE" --to slides
    sed -i 's+</head>+<link rel="stylesheet" href="./mytheme.css" id="theme"></head>+g' "$filename.slides.html"
done
