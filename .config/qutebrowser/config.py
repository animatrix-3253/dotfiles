import json
import os

config.load_autoconfig()

wal_file = os.path.expanduser("~/.cache/wal/colors.json")

with open(wal_file) as f:
    wal = json.load(f)

colors = wal["colors"]

c.colors.completion.fg = colors["color7"]
c.colors.completion.odd.bg = colors["color0"]
c.colors.completion.even.bg = colors["color0"]

c.colors.statusbar.normal.bg = colors["color0"]
c.colors.statusbar.normal.fg = colors["color7"]

c.colors.tabs.bar.bg = colors["color0"]

c.colors.tabs.even.bg = colors["color7"]
c.colors.tabs.even.fg = colors["color0"]

c.colors.tabs.odd.bg = colors["color0"]
c.colors.tabs.odd.fg = colors["color7"]

c.colors.webpage.darkmode.enabled = True
