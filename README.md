# My Archlinux Configs

This repository contains my Arch Linux Hyprland rice configuration as well as scripts to transform an arch system to a copy of mine.

## Demo

### Rice showcase

| Terminals | Cheat sheet |
|------------------|--------------|
| ![Terminals](images/terminals.png) | ![Cheatsheet](images/cheatsheet.png) |
| **Visual Studio Code** | **Browser (Firefox)** |
| ![VSCode](images/vscode.png) | ![Firefox](images/firefox.png) |
| **Dolphin (QT)** | **GIMP (GTK)** |
| ![Dolphin](images/dolphin.png) | ![Gimp](images/gimp.png) |

### Theme swapping

https://github.com/user-attachments/assets/e6fa29b9-faf0-43d8-8ff4-9ccda627d9ed

## Features
**Press Super+K to access the dynamically generated cheat sheet!**
- Functional top bar (waybar) with the following components
    - system monitor
    - media control
    - workspaces
    - audio/wifi/bluetooth/power
    - other fun stuff inside of "quick actions"
- Wallpaper-generated material-you theme swapping (matugen) + wallpaper selector
- Fully themed applications (firefox/vscode/gtk/qtct)
- Application launchers
- Workspace overview (alt tab)

## Installation

### Scripts
- `scripts/pull-configs.sh` pull configs to repo directory
- `scripts/apply-configs.sh` applies the rice.
- `scripts/pacman-install.sh` install necessary packages.
- `scripts/hyprpm.sh` applies the necessary hyprland plugins
- wallpapers are expected in `~/Pictures/Wallpapers` and cached in `~/.cache`

### Installing
Installing the packages, enabling the plugins, and applying the configs should be sufficient to apply 90% of my rice.
```sh
scripts/pacman-install.sh
scripts/apply-configs.sh
scripts/hyprpm.sh
mkdir ~/Pictures/Wallpapers
```

## Acknowledgements

- My firefox theme is modified from [textfox](https://github.com/adriankarlen/textfox) 