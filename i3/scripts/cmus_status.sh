#!/bin/sh

ARTIST=$(cmus-remote -Q 2>/dev/null | grep 'tag artist' | cut -d ' ' -f 3-)
TITLE=$(cmus-remote -Q 2>/dev/null | grep 'tag title' | cut -d ' ' -f 3-)

case $BLOCK_BUTTON in
	2) cmus-remote -u ;;
	1) cmus-remote -r ;;
	3) cmus-remote -n ;;
esac

if [ -z "$ARTIST" ];
then
echo ""
else
echo "  $ARTIST - $TITLE"
fi
