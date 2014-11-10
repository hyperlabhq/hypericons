#!/bin/bash

if [[ $# == 2 ]]; then
    density=$1
    src=$2
    dst=$3
else
    echo "Usage: $0 <density> <src> <dst>"
    exit 255
fi

convert -density $density $src $dst
