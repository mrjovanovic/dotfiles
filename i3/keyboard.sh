#!/bin/sh
# this script prints the current keyboard layout

LAYOUT=$(setxkbmap -query | awk '/layout/{print $2}')
#VARIANT=$(setxkbmap -query | awk '/variant/{print $2}')

echo "$LAYOUT"
