#!/bin/sh

. "$HOME/.cache/wal/colors.sh"

sed \
  -e "s|{background}|$background|g" \
  -e "s|{foreground}|$foreground|g" \
  "$HOME/.config/xmobar/xmobarrc.template" \
  > "$HOME/.config/xmobar/xmobarrc"
