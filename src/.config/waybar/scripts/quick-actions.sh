#!/usr/bin/env bash

menu=(
    " Keybinds"
    "󰹑 Screenshot"
    "󰅇 Clipboard"
    " Code"
    "󰞅 Emojis"
    " Icons"
    " Picker"
    " VPN"
    " Packages"
    " Bluetooth"
    "󰁹 Power"
)

# Show rofi menu
selected=$(printf '%s\n' "${menu[@]}" | rofi -dmenu -i -p "Quick Actions" -theme ~/.config/rofi/quick-actions.rasi)

# Handle selection
if [ -n "$selected" ]; then

    case "$selected" in
        "󰹑 Screenshot")
            killall rofi
            sleep 0.05
            wayfreeze & PID=$!
            sleep 0.1
            REGION=$(slurp)
            kill $PID 2>/dev/null
            wait $PID 2>/dev/null
            sleep 0.6
            if [ -n "$REGION" ]; then
                grim -g "$REGION" -t png - | wl-copy -t image/png
                notify-send "Screenshot" "Copied to clipboard"
            else
                notify-send "Screenshot" "Cancelled"
            fi
            ;;
        "󰅇 Clipboard")
            clipse-gui
            ;;
        " Code")
            ~/.config/waybar/scripts/code-launcher.sh
            ;;
        "󰞅 Emojis")
            rofi -show emoji -theme ~/.config/rofi/config.rasi
            ;;
        " Icons")
            selected_icon=$(~/.config/waybar/scripts/icon-picker-helper.sh | rofi -dmenu -i -p "Icon Picker" -theme ~/.config/rofi/config.rasi)
            if [ -n "$selected_icon" ]; then
                icon=$(echo "$selected_icon" | awk '{print $1}')
                echo -n "$icon" | wl-copy
                notify-send 'Icon Picker' 'Icon Picker' "Copied: $icon"
            fi
            ;;
        " Picker")
            ~/.config/waybar/scripts/color-picker.sh
            ;;
        " VPN")
            ~/.config/waybar/scripts/tailscale.sh
            ;;
        " Packages")
            ~/.config/waybar/scripts/installer-wrapper.sh
            ;;
        " Bluetooth")
            rofi-bluetooth
            ;;
        "󰁹 Power")
            ~/.config/waybar/scripts/power-profile.sh
            ;;
        " Keybinds")
            ~/.config/hypr/scripts/cheatsheet.sh
            ;;
    esac
fi
