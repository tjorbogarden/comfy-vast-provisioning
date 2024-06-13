#!/bin/bash

# Link to download script: wget https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/pixart.sh --content-disposition
# Make script executable: chmod +x pixart.sh
# Run the script by typing bash ./pixart.sh (in the right directory)

# Directory where files will be downloaded
DOWNLOAD_DIR="/opt/ComfyUI/models/checkpoints/"

# Create the download directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"

# List of URLs to download
urls=(
    #Pixart Sigma 1024
    "https://huggingface.co/PixArt-alpha/PixArt-alpha/resolve/main/PixArt-XL-2-1024-MS.pth"
    "https://huggingface.co/PixArt-alpha/PixArt-Sigma/resolve/main/PixArt-Sigma-XL-2-1024-MS.pth"
    
    #Juggernaut SDXL
    "https://huggingface.co/RunDiffusion/Juggernaut-X-v10/resolve/main/Juggernaut-X-RunDiffusion-NSFW.safetensors"
)

# Loop through the URLs and download each one
for url in "${urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P "$DOWNLOAD_DIR" "$url"
done

# Directory where files will be downloaded
DOWNLOAD_DIR="/opt/ComfyUI/models/vae/"

# Create the download directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"

# List of URLs to download
urls=(
    #Pixart VAE
    "https://huggingface.co/PixArt-alpha/PixArt-LCM-XL-2-1024-MS/resolve/main/transformer/diffusion_pytorch_model.safetensors"
)

# Loop through the URLs and download each one
for url in "${urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P "$DOWNLOAD_DIR" "$url"
done
#rename file
mv "$DOWNLOAD_DIR"+diffusion_pytorch_model.safetensors pixart_sigma_vae.safetensors

# Directory where files will be downloaded
DOWNLOAD_DIR="/opt/ComfyUI/models/t5/"

# Create the download directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"

# List of URLs to download
urls=(
    #Pixart Sigma t5
    "https://huggingface.co/city96/t5-v1_1-xxl-encoder-bf16/resolve/main/model.safetensors"
    "https://huggingface.co/city96/t5-v1_1-xxl-encoder-bf16/resolve/main/config.json"   
)

# Loop through the URLs and download each one
for url in "${urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P "$DOWNLOAD_DIR" "$url"
done
