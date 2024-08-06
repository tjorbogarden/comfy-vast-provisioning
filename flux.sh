#!/bin/bash

# Link to download script: wget https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/flux.sh --content-disposition
# Make script executable: chmod +x flux.sh
# Run the script by typing bash ./flux.sh (in the right directory)

# Directory where files will be downloaded
DOWNLOAD_DIR="/opt/ComfyUI/models/unet/"

# Create the download directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"

# List of URLs to download
urls=(
  #unet
  "https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors"

)

# Loop through the URLs and download each one
for url in "${urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P --header=\"Authorization: Bearer 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\"" "$DOWNLOAD_DIR" "$url"
done

# Directory where files will be downloaded
DOWNLOAD_DIR="/opt/ComfyUI/models/vae/"

# Create the download directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"

# List of URLs to download
urls=(
  #vae
  "https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/ae.safetensors"
)

# Loop through the URLs and download each one
for url in "${urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P --header=\"Authorization: Bearer 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\"" "$DOWNLOAD_DIR" "$url"
done
#rename file
mv "$DOWNLOAD_DIR"+diffusion_pytorch_model.safetensors pixart_sigma_vae.safetensors

# Directory where files will be downloaded
DOWNLOAD_DIR="/opt/ComfyUI/models/clip/"

# Create the download directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"

# List of URLs to download
urls=(
  #clip
  "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors" 
  "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors"
)

# Loop through the URLs and download each one
for url in "${urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P "$DOWNLOAD_DIR" "$url"
done
