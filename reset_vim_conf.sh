#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
set -e

ln -sf $SCRIPT_DIR/vimrc ~/.vimrc
ln -sf $SCRIPT_DIR/coc-settings.json ~/.vim/

color_files="$SCRIPT_DIR/colors/*"

VIM_COLOR_DIR=~/.vim/colors
if [ ! -d $VIM_COLOR_DIR ]; then
  mkdir -p $VIM_COLOR_DIR
else

for color_file in $color_files; do
    echo `basename $color_file`
    ln -sf $color_file ${VIM_COLOR_DIR}/`basename ${color_file}`
done
