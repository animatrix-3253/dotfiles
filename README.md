# My Personal Dotfiles
---
Feel free to modiify these files or use them as a basis for your own files.

# Installation
---
Should you choose to use my files, simply clone the repo and use the GNU command Stow to symlink these files into
their proper places.

If you do not have Stow you can obtain it from your package manager.

Please note that, "I use Arch BTW" and these config have been written as such.
```
sudo pacman -S stow
cd ~/.dotfiles
stow .
```

# Pywal
---

```
# Create theme with pywal
wal -i /path/to/your/wallpaper.png

# Everything except dunst will update autmatically to do it run
cd ~/.dotfiles/.config/dunst
chmod +x dunst_pywal.sh 
./dunst_pywal.sh

# script will not work if wal -i was not previously run. 
```

```
# To install all packages simply run
sudo pacman -S $(cat package_list.txt)
```

***Please note that all the packages in the repo are from the official Arch repositories.***
