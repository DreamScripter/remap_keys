#!/bin/bash
DIR=/mnt/invar/remap_keys/LINUX

# primero, las teclas que se intercambian, con el programa sencillo, xmodmap
nohup ${DIR}/remap_keyboard_spanish_xmodmap.sh > /dev/null 2>&1 &

# luego, ajuste fino de tecla altgr, y por tipo de aplicación con autokey
nohup autokey > /dev/null 2>&1 &

