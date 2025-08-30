#!/bin/bash

rclone sync \
  "/media/Master_Drive/" \
  "gdrive:Computer Storage Backup/Master Drive" \
  --exclude "/\$RECYCLE.BIN/**" \
  --exclude "(Useless Files)/**" \
  -P --delete-excluded
