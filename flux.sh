#!/bin/bash

# Link to download script: wget https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/flux.sh --content-disposition
# Make script executable: chmod +x flux.sh
# Run the script by typing bash ./flux.sh (in the right directory)

# Directory where files will be downloaded
UNET_DIR="/opt/ComfyUI/models/unet/"
VAE_DIR="/opt/ComfyUI/models/vae/"
CLIP_DIR="/opt/ComfyUI/models/clip/"
CHECKPOINTS_DIR="/opt/ComfyUI/models/checkpoints/"
LORAS_DIR="/opt/ComfyUI/models/loras/"
UPSCALE_MODELS_DIR="/opt/ComfyUI/models/upscale_models/"
LLM_DIR="/opt/ComfyUI/models/llm/"

# Create the download directories if they don't exist
mkdir -p "$UNET_DIR" "$VAE_DIR" "$CLIP_DIR" "$CHECKPOINTS_DIR" "$LORAS_DIR" "$UPSCALE_MODELS_DIR" "$LLM_DIR"

# install prereq dagthomas nodes - behövs inte längre? 
# pip install chardet

# install prereq joytag
pip install lxml

# List of URLs to download for unet
unet_urls=(
  #"https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors"
  #"https://huggingface.co/lllyasviel/flux1-dev-bnb-nf4/resolve/main/flux1-dev-bnb-nf4-v2.safetensors"
  #PixelWave Flux
  "https://huggingface.co/mikeyandfriends/PixelWave_FLUX.1-dev_02/resolve/main/pixelwave_flux1_dev_Q8_0_02.gguf"
  #Flux Dev GGUF
  #"https://huggingface.co/city96/FLUX.1-dev-gguf/resolve/main/flux1-dev-Q8_0.gguf"
  #Flux Unchained GGUF
  #"https://huggingface.co/mhnakif/fluxunchained-dev/resolve/main/fluxunchained-dev-q8-0.gguf"
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
  #"https://huggingface.co/ferdyshampo/OnlyForNsfw118/resolve/main/onlyfornsfw118_v20.safetensors"
  #"https://huggingface.co/RunDiffusion/Juggernaut-X-v10/resolve/main/Juggernaut-X-RunDiffusion-NSFW.safetensors"
  #"https://huggingface.co/jetjodh/CopaxTimeLessXLv12/resolve/main/copaxTimelessxlSDXL1_v12.safetensors"
  #"https://huggingface.co/n0madic/colossusProjectXL_v53/resolve/main/colossusProjectXLSFW_v53Trained.safetensors"
)

# Download checkpoint files
for url in "${checkpoint_urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P "$CHECKPOINTS_DIR" "$url"
done

# List of URLs to download for loras
loras_urls=(
  # female anatomy
  #"https://civitai.com/api/download/models/736227?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # faetastic details
  "https://civitai.com/api/download/models/720252?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Serpieri Druuna
  "https://civitai.com/api/download/models/728501?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Cinematic
  #"https://civitai.com/api/download/models/748039?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Full female anatomy
  "https://civitai.com/api/download/models/748526?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Detailifier
  "https://civitai.com/api/download/models/739154?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Nipple Fix
  #"https://civitai.com/api/download/models/733194?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # NSFW flux lora
  "https://civitai.com/api/download/models/733658?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Frank Frazetta oil painting fantasy style
  "https://civitai.com/api/download/models/792756?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Heavy Metal
  "https://civitai.com/api/download/models/745309?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Koda(k)
  "https://civitai.com/api/download/models/730657?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Ansel Adams
  "https://civitai.com/api/download/models/757542?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Ars Midjourney Style
  "https://civitai.com/api/download/models/727320?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Flux meets Midjourney
  "https://civitai.com/api/download/models/745845?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # realistic skin detailed photorealism
  "https://civitai.com/api/download/models/820397?token=ad415154d4ad70c87127eb1bbe7bc6b4"
)

# Download lora files
for url in "${loras_urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P "$LORAS_DIR" "$url"
done

# List of URLs to download for upscalers
upscale_models_urls=(
  "https://huggingface.co/lokCX/4x-Ultrasharp/resolve/main/4x-UltraSharp.pth"
)

# Download upscaler files
for url in "${upscale_models_urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P "$UPSCALE_MODELS_DIR" "$url"
done

# List of URLs to download for LLM
llm_urls=(
  # "https://huggingface.co/MaziyarPanahi/Mistral-7B-Instruct-v0.3-GGUF/resolve/main/Mistral-7B-Instruct-v0.3.Q4_K_M.gguf"
)

# Download LLM files
for url in "${llm_urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P "$LLM_DIR" "$url"
done
