#!/bin/bash

# Directory where files will be downloaded
DOWNLOAD_DIR="/opt/ComfyUI/models/checkpoints/"

# Create the download directory if it doesn't exist
# mkdir -p "$DOWNLOAD_DIR"

# File containing URLs
URL_FILE="urls.txt"

# Read each URL from the file and download it
while IFS= read -r url; do
  wget -P "$DOWNLOAD_DIR" "$url"
done < "$URL_FILE"
