#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
set -e

ln -sf $SCRIPT_DIR/vimrc ~/.vimrc
ln -sf $SCRIPT_DIR/coc-settings.json ~/.vim/

color_files="$SCRIPT_DIR/colors/*"
for color_file in $color_files; do
    echo `basename $color_file`
    ln -sf $color_file ~/.vim/colors/`basename ${color_file}`
done
