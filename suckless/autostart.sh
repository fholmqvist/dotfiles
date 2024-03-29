# ---- SETTINGS FOR PRIMARY MACHINE ----
xrandr --output DVI-D-0 --right-of HDMI-0


# # ---- SETTINGS FOR LAPTOP ----
# # Get these settings by running 'gtf [WIDTH] [HEIGHT] [REFRESH_RATE]'
# xrandr --newmode "1280x720_60.00"  74.48  1280 1336 1472 1664  720 721 724 746  -HSync +Vsync
# xrandr --addmode eDP-1 "1280x720_60.00"
# xrandr --addmode eDP-1 "1280x720_60.00"
# xrandr --output eDP-1 --mode "1280x720_60.00"

# # ---- WORK MOUSE SENSITIVITY ----

# xinput set-prop 14 338 -0.6

# # ---- SWEDISH KEYBOARD ----
# setxkbmap se
# loadkeys se

# # ---- TOUCHPAD SETTINGS ----

# id=`xinput list            \
#     | grep 'Elan Touchpad' \
#     | cut -d'=' -f2        \
#     | cut -d'[' -f1`

# tapping=`xinput list-props $id  \
#     | grep 'Tapping Enabled'    \
#     | head -1                   \
#     | cut -d '(' -f 2           \
#     | cut -d ')' -f 1`

# scrolling=`xinput list-props $id       \
#     | grep 'Natural Scrolling Enabled' \
#     | head -1                          \
#     | cut -d '(' -f 2                  \
#     | cut -d ')' -f 1`

# xinput set-prop $id $tapping 1
xinput set-prop $id $scrolling 1


# ---- SLSTATUS ----

mplanner >/dev/null 2>&1 &
slstatus
