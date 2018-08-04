# Load font directory
xset fp+ ~/.fonts
xset fp rehash

# Set the locale correctly
export LANG=en_GB.UTF-8
setxkbmap gb

xsetroot -cursor_name left_ptr &

sh ~/.fehbg

compton &
dropbox &


xrdb ~/.Xresources
exec bspwm


# exec i3
