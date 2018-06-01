# Load font directory
xset fp+ ~/.fonts
xset fp rehash

# Set the locale correctly
export LANG=en_GB.UTF-8
setxkbmap gb

xsetroot -cursor_name arrow

sh ~/.fehbg

compton &
dropbox &

xrdb ~/.Xresources
exec bspwm
