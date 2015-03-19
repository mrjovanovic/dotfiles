
#!/bin/sh

xrandr --output LVDS1 --auto --output VGA1 --auto

i3-nagbar -m "Choose screen" -t warning \
        -b "LVDS + VGA"  "xrandr --output --output LVDS1 --auto --output VGA1 --auto --right-of LVDS1" \
        -b "VGA ONLY"    "xrandr --output LVDS1 --off --output  VGA1 --auto" \
	-b "LVDS ONLY"	"xrandr --output LVDS1 --auto --output VGA1 --off"

feh --bg-fill ~/.wallpaper.jpg

