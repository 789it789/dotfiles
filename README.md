# My Archlinux Configs

This repository contains my Arch Linux Hyprland rice configuration as well as scripts to transform an arch system to a copy of mine.

## Features
**Press Super+K to access the dynamically generated cheat sheet!**
- functional top bar (waybar) with the following components
    - system monitor
    - media control
    - workspaces
    - audio/wifi/bluetooth/power
    - other fun stuff inside of "quick actions"
- wallpaper-generated material-you theme swapping (matugen) + wallpaper selector
- fully themed applications (firefox/vscode/gtk/qtct)
- application launchers
- workspace overview (alt tab)

## Demo

### Rice showcase

| Terminals | Cheat sheet |
|------------------|--------------|
| ![Terminals](images/terminals.png) | ![Cheat sheet](images/cheatsheet.png) |
| **Visual Studio Code** | **Browser (Firefox)** |
| ![Visual Studio Code](images/vscode.png) | ![Firefox](images/firefox.png) |

### Theme swapping

https://github.com/user-attachments/assets/e6fa29b9-faf0-43d8-8ff4-9ccda627d9ed

## Installation
- `scripts/pull-configs.sh` pull configs to repo directory
- `scripts/apply-configs.sh` applies the rice.
- `scripts/pacman-install.sh` install necessary packages.
- `scripts/hyprpm.sh` applies the necessary hyprland plugins
Installing the packages, enabling the plugins, and applying the configs should be sufficient to apply 90% of my rice.

## Acknowledgements

- my firefox theme is modified from [textfox](https://github.com/adriankarlen/textfox) 