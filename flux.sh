#!/bin/bash

# Link to download script: wget https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/flux.sh --content-disposition
# Make script executable: chmod +x flux.sh
# Run the script by typing bash ./flux.sh (in the right directory)

# Directory where files will be downloaded
UNET_DIR="/opt/ComfyUI/models/unet/"
VAE_DIR="/opt/ComfyUI/models/vae/"
CLIP_DIR="/opt/ComfyUI/models/clip/"
CHECKPOINTS_DIR="/opt/ComfyUI/models/checkpoints/"

# Create the download directories if they don't exist
mkdir -p "$UNET_DIR" "$VAE_DIR" "$CLIP_DIR" "$CHECKPOINTS_DIR"

# List of URLs to download for unet
unet_urls=(
  "https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors"
)

# Download unet files
for url in "${unet_urls[@]}"; do
    wget -qnc --content-disposition --show-progress --header="Authorization: Bearer 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" -P "$UNET_DIR" "$url"
done

# List of URLs to download for vae
vae_urls=(
  "https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/ae.safetensors"
)

# Download vae files
for url in "${vae_urls[@]}"; do
    wget -qnc --content-disposition --show-progress --header="Authorization: Bearer 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" -P "$VAE_DIR" "$url"
done

# List of URLs to download for clip
clip_urls=(
  "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors"
  "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors"
)

# Download clip files
for url in "${clip_urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P "$CLIP_DIR" "$url"
done

# List of URLs to download for checkpoints
checkpoint_urls=(
  "https://huggingface.co/ferdyshampo/OnlyForNsfw118/resolve/main/onlyfornsfw118_v20.safetensors"
)

# Download clip files
for url in "${checkpoint_urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P "$CHECKPOINTS_DIR" "$url"
done
