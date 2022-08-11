# Set resolution

# No longer works since xorg.conf:
# xrandr -s 1280x720

# Get these settings by running 'gtf [WIDTH] [HEIGHT] [REFRESH_RATE]'
xrandr --newmode "1280x720_60.00"  74.48  1280 1336 1472 1664  720 721 724 746  -HSync +Vsync
xrandr --addmode eDP1 "1280x720_60.00"
xrandr --addmode eDP1 "1280x720_60.00"
xrandr --output eDP1 --mode "1280x720_60.00"

# Fix trackpad
id=`xinput list \
    | grep "Elan Touchpad" \
    | cut -d'=' -f2 \
    | cut -d'[' -f1` 
xinput set-prop $id 306 1
xinput set-prop $id 324 1
xinput set-prop $id 314 1
slstatus &
