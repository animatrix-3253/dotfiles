#!/bin/bash

source "${HOME}/.cache/wal/colors.sh"

cat > "${HOME}/.config/dunst/colors" << EOF
[global]
  frame_color = "${color4}"
  seperator_color = frame

[urgnecy_low]
  background = "${background}"
  foreground = "${foreground}"
  timeout = 5

[urgency_normal]
  background = "${background}"
  foreground = "${foreground}"
  timeout = 5

[urgency_critical]
  background = "${background}"
  foreground = "${foreground}"
  frame_color = "${color1}"
  timeout = 0
EOF
