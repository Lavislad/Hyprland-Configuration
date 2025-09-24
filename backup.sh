SOURCE_DIRECTORY="$HOME/.config/"
BACKUP_DIRECTORY="$HOME/Documents/configs/"

echo "copying hyprland.conf"
cp "${SOURCE_DIRECTORY}hypr/hyprland.conf" "${BACKUP_DIRECTORY}hypr/"
echo "copying completed!"

echo "copying kitty/"
cp -r "${SOURCE_DIRECTORY}kitty/" "${BACKUP_DIRECTORY}"
echo "copying completed!"

echo "copying waybar"
cp -r "${SOURCE_DIRECTORY}waybar/" "${BACKUP_DIRECTORY}"
echo "copying completed!"

cd "${BACKUP_DIRECTORY}"
git add .
git commit -m "Backup $(date + '%Y-%m-%d %H:%M')"
