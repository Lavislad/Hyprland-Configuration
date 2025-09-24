SOURCE_DIRECTORY="$HOME/.config/"
BACKUP_DIRECTORY="$HOME/Documents/configs/"

echo "Installing hyprland.conf"
cp "${BACKUP_DIRECTORY}hypr/hyprland.conf" "${SOURCE_DIRECTORY}hypr/hyprland.conf"
echo "Installing completed!"

echo "Installing kitty/"
cp -r "${BACKUP_DIRECTORY}kitty/" "${SOURCE_DIRECTORY}"
echo "Installing completed!"

echo "Installing waybar/"
cp -r "${BACKUP_DIRECTORY}waybar/" "${SOURCE_DIRECTORY}"
echo "Installing completed!"
