# Функция для получения текущей громкости
get_volume() {
  pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1 | tr -d '%'
}

# Функция для проверки mute статуса
is_muted() {
  pactl get-sink-mute @DEFAULT_SINK@ | grep -q "yes"
}

# Функция для отображения ползунка
show_slider() {
  VOLUME=$(get_volume)
  MUTED=$(is_muted && echo "true" || echo "false")

  # Отправляем данные в waybar
  echo "{\"percentage\": $VOLUME, \"muted\": $MUTED}"
}

# Функция для скрытия ползунка
hide_slider() {
  echo "{\"percentage\": 0, \"muted\": false, \"hidden\": true}"
}

# Обработка сигналов
case "$1" in
"show")
  show_slider
  ;;
"hide")
  hide_slider
  ;;
"toggle")
  # Проверяем текущее состояние
  if [ -f /tmp/waybar-volume-visible ]; then
    hide_slider
    rm /tmp/waybar-volume-visible
  else
    show_slider
    touch /tmp/waybar-volume-visible
  fi
  ;;
*)
  # По умолчанию скрыт
  hide_slider
  ;;
esac
