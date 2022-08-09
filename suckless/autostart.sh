xrandr -s 1280x720
id=`xinput list \
    | grep "Elan Touchpad" \
    | cut -d'=' -f2 \
    | cut -d'[' -f1` 
xinput set-prop $id 306 1 # Touch click
xinput set-prop $id 324 1 # Touch click
xinput set-prop $id 314 1 # Natural scroll
slstatus &
