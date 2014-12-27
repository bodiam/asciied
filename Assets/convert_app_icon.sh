#!/bin/bash

#
# This script converts an app icon with a size bigger than 1024x1024 to all
# smaller file sizes that Xcode requires for a Mac app.
#

if [ ! -x /usr/local/bin/convert ]; then
    echo "ImageMagick not installed, please run 'brew install imagemagick'"  >&2
    exit 1
fi

if [ "$1" == "" ]; then
    echo "Usage: $0 filename_of_app_icon.png" >&2
    exit 1
else
    if [ ! -e "$1" ]; then
        echo "File '$1' doesn't exist" >&2
        exit 1
    fi
fi


source="$1"
pointsizes="16 32 128 256 512"

for i in $pointsizes; do
    path=$(dirname "${source}")
    file=$(basename "${source}")
    ext=${source#${source%.*}}
    target=$(basename "${source}" "${ext}")

    size1x=$i
    size2x=$(($size1x * 2))
    convert "$1" -resize ${size1x}x${size1x} "${target}_${size1x}${ext}"
    convert "$1" -resize ${size2x}x${size2x} "${target}_${size1x}@2x${ext}"
done
