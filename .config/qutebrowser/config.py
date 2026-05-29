# ------ Load GUI -----
config.load_autoconfig(True)

# ------ Theming ------
import json
from pathlib import Path

wal_cache = Path.home() / ".cache" / "wal" / "colors.json"

with open(wal_cache) as theme_file:
    colors = json.load(theme_file)

special = colors["special"]
palette = colors["colors"]

bg = special["background"]
fg = special["foreground"]

c.colors.completion.fg = fg
c.colors.completion.odd.bg = bg
c.colors.completion.even.bg = bg

c.colors.statusbar.normal.bg = bg
c.colors.statusbar.normal.fg = fg

c.colors.tabs.bar.bg = bg
c.colors.tabs.even.bg = bg
c.colors.tabs.even.fg = fg
c.colors.tabs.odd.bg = bg
c.colors.tabs.odd.fg = fg

c.colors.tabs.selected.even.bg = palette["color4"]
c.colors.tabs.selected.even.fg = bg
c.colors.tabs.selected.odd.bg = palette["color4"]
c.colors.tabs.selected.odd.fg = bg

c.colors.webpage.darkmode.enabled = True
# ------ Theming ------

# ------ Font ------
c.fonts.default_family = "FiraCode Nerd Mono"
c.fonts.default_size = "11pt"
# ------ Font ------
