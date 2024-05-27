#!/bin/bash

# Get the current volume of the default sink
current_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1 | tr -d '%')

# Calculate the new volume
new_volume=$((current_volume + 5))

# Ensure the new volume does not exceed 100%
if [ "$new_volume" -gt 100 ]; then
  new_volume=100
fi

# Set the new volume
pactl set-sink-volume @DEFAULT_SINK@ ${new_volume}%