#!/bin/bash
# Define paths
LOCAL_DIR=~/Documents/aio-docs/
SMB_DIR=/Volumes/mkdocs/aio

# Sync local to SMB
echo "Syncing local changes to SMB share..."
rsync -av --delete \
  --exclude '.git/' \
  --exclude 'mkdocs-env/' \
  --exclude '*.pyc' \
  --exclude '__pycache__/' \
  "$LOCAL_DIR" "$SMB_DIR"

echo "Sync completed!"
