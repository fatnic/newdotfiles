# Load font directory
xset fp+ ~/.fonts
xset fp rehash

# Set the locale correctly
export LANG=en_GB.UTF-8
setxkbmap gb

sh ~/.fehbg

exec bspwm
