#!/bin/bash

# Set the name of the output ZIP file
ZIPFILE="flux-backup.zip"

# Specify the folders you want to include in the zip
FOLDERS=(
    "opt/ComfyUI/custom_nodes"
    "opt/ComfyUI/models/loras/"
    "opt/ComfyUI/models/pulid"
    "opt/ComfyUI/models/configs"
    "opt/ComfyUI/user/default/workflows"
    "opt/ComfyUI/models/clip/"
)

# Specify patterns/files/folders you want to exclude
# You can use wildcard patterns to exclude, for example:
# - "folder1/*.log" excludes all .log files in folder1
# - "folder2/private/*" excludes everything in /path/to/folder2/private
# - "folder1/secret.txt" excludes exactly secret.txt in folder1
EXCLUDES=(
    "opt/ComfyUI/models/clip/t5xxl_fp16.safetensors"
    "opt/ComfyUI/models/clip/clip_l.safetensors"
)

# Zip the folders recursively, applying the exclude patterns
zip -r "$ZIPFILE" "${FOLDERS[@]}" -x "${EXCLUDES[@]}"

echo "Folders have been compressed into '$ZIPFILE' successfully!"
