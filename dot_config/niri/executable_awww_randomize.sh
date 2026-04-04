#!/bin/sh
# Changes the wallpaper to a randomly chosen image in a given directory
# at a set interval.

DEFAULT_INTERVAL=300 # In seconds
RESIZE_TYPE="crop"
export AWWW_TRANSITION_FPS="${AWWW_TRANSITION_FPS:-60}"
export AWWW_TRANSITION_STEP="${AWWW_TRANSITION_STEP:-2}"
export AWWW_TRANSITION="${AWWW_TRANSITION:-random}"
export AWWW_TRANSITION_DURATION="${AWWW_TRANSITION_DURATION:-10}"

while true; do
  # Pick one random file and set it
  img=$(find ~/Pictures/Wallpapers/ -type f | shuf -n 1)
  awww img --resize="$RESIZE_TYPE" "$img"
  sleep "${2:-$DEFAULT_INTERVAL}"
done
