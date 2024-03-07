#!/bin/bash

# Run the script by typing ./download-models.sh in the right directory

# Directory where files will be downloaded
DOWNLOAD_DIR="/opt/ComfyUI/models/checkpoints/"

# Create the download directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"

# List of URLs to download
urls=(
    #  Juggernaut XL v9 + RunDiffusionPhoto
    #"https://civitai.com/api/download/models/348913?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Niji
    "https://civitai.com/api/download/models/155870?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  ZavyChromaXL
    "https://civitai.com/api/download/models/320428?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Copax Timelsess
    #"https://civitai.com/api/download/models/344540?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Starlight
    #"https://civitai.com/api/download/models/182077?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Nightvision
    "https://civitai.com/api/download/models/343830?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Samaritan 3D cartoon
    #"https://civitai.com/api/download/models/144566?token=ad415154d4ad70c87127eb1bbe7bc6b4"

    # SUPIR upscale model
    #"https://huggingface.co/camenduru/SUPIR/resolve/main/SUPIR-v0Q.ckpt"

    #CCSR Upscale model
    #"https://huggingface.co/camenduru/CCSR/resolve/main/real-world_ccsr.ckpt"
)

# Loop through the URLs and download each one
for url in "${urls[@]}"; do
    wget -P "$DOWNLOAD_DIR" "$url"
done
