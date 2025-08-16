#!/bin/bash

SOCKET="/tmp/mpvsocket"

if [ -S "$SOCKET" ]; then
    for file in "$@"; do
        # Load new file into existing MPV
        echo '{ "command": ["loadfile", "'"$file"'", "replace"] }' | socat - "$SOCKET"

        # Check pause state
        state=$(echo '{ "command": ["get_property", "pause"] }' | socat - "$SOCKET" | jq -r '.data')

        # If paused, unpause (autoplay)
        if [ "$state" = "true" ]; then
            echo '{ "command": ["set_property", "pause", false] }' | socat - "$SOCKET"
        fi
    done
else
    # No socket → open new MPV window
    mpv "$@"
fi

