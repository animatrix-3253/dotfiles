# My Personal Dotfiles
---
These are the dotfiles that govern my personal computer.
I currently operate off a Windows Laptop but, I plan to switch to Void Linux soon.

***I built these dotfiles in a Debian VM. Some formats or config locations may be outdated!***

# What's Here?
---
- I use Xmonad as my window manager ( Will be switiching to Awesome in the near future )
- I use Neovim as my Text Editor
- Flameshot is used for screenshots
- FFMPEG is used in place of OBS
- Bash is the Shell used
- LightDM is the Display Manger setup
- Dunst is the notification daemon
- Pipewire handles all the audio
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
- [ ] Switch to Void
- [ ] Change WM to Awesome
- [ ] Theme WM
- [ ] Theme Qutebrowser
- [ ] Add Lushwal to Neovim
- [ ] Add Neorg to Neovim

# Important Info and News
---
- Dotfiles are currently for Debian. Void Linux swap in the works.

### Commit Descriptions

- This README will serve as a planning and design doc for this repo. You can find info and longer explanations of commits here.
