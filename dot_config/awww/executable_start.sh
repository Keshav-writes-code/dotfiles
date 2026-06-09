#!/bin/sh
# Changes the wallpaper to a randomly chosen image in a given directory
# at a set interval.

DEFAULT_INTERVAL=300 # In seconds
export AWWW_TRANSITION_FPS="${AWWW_TRANSITION_FPS:-60}"
export AWWW_TRANSITION_STEP="${AWWW_TRANSITION_STEP:-2}"
export AWWW_TRANSITION="${AWWW_TRANSITION:-random}"
export AWWW_TRANSITION_DURATION="${AWWW_TRANSITION_DURATION:-20}"

# Start awww-daemon in the background if it isn't already running
sleep 1
awww-daemon &
sleep 1 # Give the daemon a second to initialize before the loop starts

while true; do
  # Pick one random file from the directory and all its subdirectories
  # The find command will search recursively by default.
  img=$(find ~/Pictures/Wallpapers/ -type f | shuf -n 1)

  # Check if a file was actually found before trying to use it
  if [ -n "$img" ]; then
    echo "Setting wallpaper to: $img"
    awww img --resize=crop "$img"
  else
    echo "No images found in ~/Pictures/Wallpapers/. Waiting..."
  fi

  # Use the default interval unless an interval is explicitly passed as an argument
  sleep "${1:-$DEFAULT_INTERVAL}"
done
