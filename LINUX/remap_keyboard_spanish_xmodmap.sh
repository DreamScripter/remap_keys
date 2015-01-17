#!/bin/bash

# para ejecutar esto al inicio del sistema, añadir el contenido de esto sin el xmodmap -e ''
# por ejemplo: xmodmap -e 'keycode 66 = Control_L' --> keycode 66 = Control_L
# a un archivo ~/.Xmodmap
# The key pressed alone
# 1.- With the Shift modifier
# 2.- The key pressed along with the Mode_switch key
# 3.- With Mode_switch AND Shift


# block mayus ahora es ctrl_l
xmodmap -e 'keycode 66 = Control_L'
xmodmap -e 'clear Lock'
xmodmap -e 'add Control = Control_L'

# Ctrl_l ahora es block mayus
xmodmap -e 'keycode 37 = Caps_Lock'
xmodmap -e 'add Control = Control_L'

# la tecla del acento es ahora ctrl_r, pero mantiene sus antiguas funciones pulsando a la vez shift o altgr
xmodmap -e 'keycode 48 = Control_R dead_diaeresis apostrophe quotedbl braceleft braceleft dead_acute dead_diaeresis braceleft braceleft'
xmodmap -e 'clear Lock'
xmodmap -e 'add Control = Control_R'

# altgr ahora es alt_r
xmodmap -e 'keycode 108 = Alt_R Meta_R Alt_R Meta_R Alt_R Meta_R Alt_R Meta_R'

# la ñ es ahora enter
xmodmap -e 'keycode 47 = Return Return Return Return Return'

# Control_R es ahora lo que antes era la ñ
xmodmap -e 'keycode 105 = ntilde Ntilde semicolon colon asciitilde dead_doubleacute ntilde Ntilde asciitilde dead_doubleacute'

# ` es ahora acento, pero el resto de cosas se mantienen
xmodmap -e 'keycode 34 = dead_acute dead_circumflex bracketleft braceleft bracketleft dead_abovering dead_grave dead_circumflex bracketleft dead_abovering'

