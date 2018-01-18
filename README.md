# configs

## Installation
I'm using GNU stow to manage my dotfiles. I've created folders for each theme that I'll be making.
To install, simply `cd` into the theme's directory, and for each dotfile that you'd like, use stow to symlink them.

Example:
`gnu stow -t ~ polybar`

You have to specify the root dir because I wanted to separate my dotfiles into themes.

# themes

## Base 16
![Screenshot](https://raw.githubusercontent.com/zeke8402/configs/master/base16/screenshots/demo.png)

My current setup. I love the Base 16 ocean theme, so I built my configs around it (dunst isn't done yet)

## Crunchbang
![Screenshot](https://raw.githubusercontent.com/zeke8402/configs/master/crunchbang/screenshots/desktop.png)
This was inspired by the minimalist feel of crunchbang, which has evolved into ArchLabs (which, is also the distro I'm using). 

### to-do

* set up xautolock (look i3-fancy repo)
* screen script to change back to laptop once external is gone
* login screen
