#!/bin/sh
# skripta štampa status ncmpcpp-ja
# script prints ncmpcpp status

PESMA=$(ncmpcpp --now-playing '%a - %t')

case $BLOCK_BUTTON in
	2) ncmpcpp toggle ;;
	1) ncmpcpp prev ;;
	3) ncmpcpp next ;;
esac

if [ -z "$PESMA" ];
then
echo ""
else
echo " $PESMA"
fi
