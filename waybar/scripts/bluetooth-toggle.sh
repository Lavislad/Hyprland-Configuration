if bluetoothctl show | grep -q "Powered: yes"; then
  bluetoothctl power off
else
  bluetoothctl power on
fi

#sleep 0.9
#pkill -SIGUSR1 waybar
