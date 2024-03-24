#!/bin/bash


# Link to download script: wget https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/download-models.sh --content-disposition
# 1. Make script executable: chmod +x download-models.sh
# Run the script by typing bash ./download-models.sh (in the right directory)

# Start with Loras

# Directory where files will be downloaded
DOWNLOAD_DIR="/opt/ComfyUI/models/loras/"

# Create the download directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"

# List of URLs to download
urls=(
    #Add Details (Detail Tweaker XL)
    #"https://civitai.com/api/download/models/135867?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Sexy
    #"https://civitai.com/api/download/models/186014?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Silhouette - Sliders
    "https://civitai.com/api/download/models/262669?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Harness
    #"https://civitai.com/api/download/models/216424?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Pinups style Art Frahm
    #"https://civitai.com/api/download/models/202646?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Woman nude 
    #"https://civitai.com/api/download/models/363218?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Rembrandt Lighting
    #"https://civitai.com/api/download/models/315808?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Underwear 
    #"https://civitai.com/api/download/models/136277?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Flash Photo
    #"https://civitai.com/api/download/models/203379?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Low Key Lighting
    #"https://civitai.com/api/download/models/315777?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  High Key Lighting 
    #"https://civitai.com/api/download/models/315742?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Chiaroscuro Lighting Contrasting Lighting
    "https://civitai.com/api/download/models/315825?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Bad Quality
    #"https://civitai.com/api/download/models/311787?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Impossible Photos
    "https://civitai.com/api/download/models/343625?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Perfect Hands
    "https://civitai.com/api/download/models/254267?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Tanlines
    "https://civitai.com/api/download/models/282430?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # litho orwo dokumentpapier
    "https://civitai.com/api/download/models/404096?token=ad415154d4ad70c87127eb1bbe7bc6b4"
)

# Loop through the URLs and download each one
for url in "${urls[@]}"; do
    wget -P "$DOWNLOAD_DIR" "$url" --content-disposition
done

# Then Checkpoints

# Directory where files will be downloaded
DOWNLOAD_DIR="/opt/ComfyUI/models/checkpoints/"

# Create the download directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"

# List of URLs to download
urls=(
    #  Juggernaut XL v9 + RunDiffusionPhoto
    #"https://civitai.com/api/download/models/348913?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Niji
    #"https://civitai.com/api/download/models/155870?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  ZavyChromaXL
    #"https://civitai.com/api/download/models/320428?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Copax Timelsess
    #"https://civitai.com/api/download/models/344540?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Starlight
    #"https://civitai.com/api/download/models/182077?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Nightvision
    #"https://civitai.com/api/download/models/343830?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Samaritan 3D cartoon
    #"https://civitai.com/api/download/models/144566?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  TelmendoXL - mer realistisk
    #"https://civitai.com/api/download/models/131960?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Pony Diffusion V6
    "https://civitai.com/api/download/models/290640?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Suzannes Mix
    #"https://civitai.com/api/download/models/312314?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Colossus Project XL
    "https://civitai.com/api/download/models/355884?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # AlbedoBase XL
    #"https://civitai.com/api/download/models/329420?token=ad415154d4ad70c87127eb1bbe7bc6b4"

    # SUPIR upscale model
    #"https://huggingface.co/camenduru/SUPIR/resolve/main/SUPIR-v0Q.ckpt"

    #CCSR Upscale model
    #"https://huggingface.co/camenduru/CCSR/resolve/main/real-world_ccsr.ckpt"

    #  Stable Cascade
    #"https://huggingface.co/stabilityai/stable-cascade/resolve/main/stage_a.safetensors"
    #"https://huggingface.co/stabilityai/stable-cascade/resolve/main/comfyui_checkpoints/stable_cascade_stage_b.safetensors"
    #"https://huggingface.co/stabilityai/stable-cascade/resolve/main/comfyui_checkpoints/stable_cascade_stage_c.safetensors"
)

# Loop through the URLs and download each one
for url in "${urls[@]}"; do
    wget -P "$DOWNLOAD_DIR" "$url" --content-disposition
done

