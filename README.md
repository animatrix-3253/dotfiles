# My Personal Dotfiles
---
These are the dotfiles that govern my personal computer (Debian VM on a Windows host).

***I built these dotfiles in a Debian VM. Some formats or config locations may be outdated!***

# What's Here?
---
- I use Xmonad as my window manager 
- I use Neovim as my Text Editor
- Flameshot is used for screenshots
- FFMPEG is used in place of OBS
- Bash is the Shell used
- Qutebrowser is my browser of choice 
- Alacritty is my terminal of choice
- Rofi is the application used

# Installation
---
```
# To use these dotfiles as they are run the following

# Clone the repository
git clone https://github.com/animatrix-3253/dotfiles.git

# Ensure that stow is installed
doas apt install stow

# This will create symlinks to all the dotfiles in your home directory. 
stow .
```

# Roadmap
---
- Setup Neovim for Haskell devlopment
- Add Neorg to Neovim

# Important Info and News
---
- Dotfiles are currently for Debian.
- This README will serve as a planning and design doc for this repo. You can find info and longer explanations of commits here.

### Commit Descriptions
- commit #f781c3d59ccc2d5664ee3e38a5f240cb59d7c0b7
    - Removed Dunst as it is not needed
    - Removed Pipewire as I audio is supplied by host
    - Removed LightDM using tty as login since I only have one display session
    - Added Lushwal to Neovim via Lazy.nvim
    - Themed Qutebrowser via pywal
    - Themed Xmonad via pywal
    - Themed Xmobar via pywal
    - Completed other misc. theme work
