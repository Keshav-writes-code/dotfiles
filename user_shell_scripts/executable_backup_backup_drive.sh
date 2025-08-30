#!/bin/bash

rclone sync \
  "/media/Backup/" \
  "gdrive:Computer Storage Backup/Backup Drive (HDD 298 GB)" \
  --exclude "/\$RECYCLE.BIN/**" \
  --exclude "(Useless Files)/**" \
  --exclude "Adobe Cache/**" \
  -P --delete-excluded
