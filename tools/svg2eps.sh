#!/bin/bash

if [[ $# == 2 ]]; then
    src=$1
    dst=$2
else
    echo "Usage: $0 <src> <dst>"
    exit 255
fi

bin_inkscape="$HOME/Applications/Inkscape.app/Contents/Resources/bin/inkscape"

$bin_inkscape -z -T -E $dst $src
