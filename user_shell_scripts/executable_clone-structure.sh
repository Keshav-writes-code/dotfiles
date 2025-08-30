#!/bin/bash

src="$1"
dest="$2"

if [ ! -d "$src" ]; then
  echo "Source directory does not exist!"
  exit 1
fi

if [ -z "$dest" ]; then
  echo "Destination directory not specified!"
  exit 1
fi

if [ "$dest" = "." ]; then
  # Clone only the contents, not the top-level folder itself
  find "$src" -mindepth 1 -type d -print0 | sed -z "s|$src/||" | xargs -0 -I{} mkdir -p "./{}"
else
  find "$src" -type d -print0 | sed -z "s|$src|$dest|" | xargs -0 -I{} mkdir -p "{}"
fi

echo "Cloned structure to: $dest"
