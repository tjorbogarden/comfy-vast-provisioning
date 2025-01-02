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
STYLE_MODELS="/opt/ComfyUI/models/style_models/"
CLIPVISION_DIR="/opt/ComfyUI/models/clip_vision/"

# Create the download directories if they don't exist
mkdir -p "$UNET_DIR" "$VAE_DIR" "$CLIP_DIR" "$CHECKPOINTS_DIR" "$LORAS_DIR" "$UPSCALE_MODELS_DIR" "$STYLE_MODELS" "$CLIPVISION_DIR"

# install prereq dagthomas nodes
pip install openai==1.55.3 httpx==0.27.2 --force-reinstall --quiet

# install prereq joytag
pip install lxml bitsandbytes

# Face Recognintion
# apt install cmake
# pip install face_recognition


# List of URLs to download for unet
unet_urls=(
  #"https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors"
  #"https://huggingface.co/lllyasviel/flux1-dev-bnb-nf4/resolve/main/flux1-dev-bnb-nf4-v2.safetensors"
  #PixelWave Flux
  #"https://huggingface.co/mikeyandfriends/PixelWave_FLUX.1-dev_02/resolve/main/pixelwave_flux1_dev_Q8_0_02.gguf"
  #Flux Dev GGUF
  "https://huggingface.co/city96/FLUX.1-dev-gguf/resolve/main/flux1-dev-Q8_0.gguf"
  #Flux Unchained GGUF
  #"https://huggingface.co/mhnakif/fluxunchained-dev/resolve/main/fluxunchained-dev-q8-0.gguf"
  # STOIQO Afrodite Flux
  "https://civitai.com/api/download/models/897489?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  #Fluxmania
  "https://civitai.com/api/download/models/1129380?token=ad415154d4ad70c87127eb1bbe7bc6b4"
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
  # "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors"
  "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp8_e4m3fn.safetensors"
  "https://huggingface.co/QuanSun/EVA-CLIP/resolve/main/EVA02_CLIP_L_336_psz14_s6B.pt"
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
  # Ultimate@home
  "https://civitai.com/api/download/models/1177215?token=ad415154d4ad70c87127eb1bbe7bc6b4"
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
  # sameface lora
  "https://civitai.com/api/download/models/857446?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # dramatic portrait
  "https://civitai.com/api/download/models/1165313?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # dramatic portrait BW - trigger "BW portrait"
  "https://civitai.com/api/download/models/1169868?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Mangaka
  "https://civitai.com/api/download/models/1073576?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Organic Sauce Flux Pony tecknad stil 
  "https://civitai.com/api/download/models/1000905?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Flat Anime trigger word: "Flat colour anime style image showing"
  "https://civitai.com/api/download/models/838667?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Cyberpunk Anime style 
  "https://civitai.com/api/download/models/747534?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Mythport Fantasy Anime trigger word: "mythp0rt"
  "https://civitai.com/api/download/models/753053?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Comic book page style trigger word: comic strip style
  "https://civitai.com/api/download/models/841525?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # New Fantasy Core
  "https://civitai.com/api/download/models/1067495?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Dynamic Ink  trigger word: Inkplash art
  "https://civitai.com/api/download/models/914935?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Flux tools Depth Lora
  "https://civitai.com/api/download/models/1086175?token=ad415154d4ad70c87127eb1bbe7bc6b4"
  # Ethereal Photography
  "https://civitai.com/api/download/models/974452?token=ad415154d4ad70c87127eb1bbe7bc6b4"

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

# List of URLs to download for Clip Vision
clipvision_urls=(
  "https://huggingface.co/Comfy-Org/sigclip_vision_384/resolve/main/sigclip_vision_patch14_384.safetensors"
)

# Download ClipVision files
for url in "${clipvision_urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P "$CLIPVISION_DIR" "$url"
done

# List of URLs to download for Style Models
stylemodels_urls=(
  "https://huggingface.co/black-forest-labs/FLUX.1-Redux-dev/resolve/main/flux1-redux-dev.safetensors"
)

# Download Style Model files
for url in "${stylemodels_urls[@]}"; do
    wget -qnc --content-disposition --show-progress --header="Authorization: Bearer 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" -P "$STYLE_MODELS" "$url" 
done
