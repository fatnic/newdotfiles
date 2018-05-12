# Load font directory
xset fp+ ~/.fonts
xset fp rehash

xsetroot -cursor_name left_ptr

# Set the locale correctly
export LANG=en_GB.UTF-8
setxkbmap gb

sh ~/.fehbg

compton &

xrdb ~/.Xresources
exec bspwm
