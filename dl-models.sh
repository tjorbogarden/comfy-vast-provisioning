#!/bin/bash


# Link to download script: wget https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/dl-models.sh --content-disposition
# 1. Make script executable: chmod +x download-models.sh
# Run the script by typing bash ./download-models.sh (in the right directory)

# Directory where files will be downloaded
DOWNLOAD_DIR="/opt/ComfyUI/models/checkpoints/"

# Create the download directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"

# List of URLs to download
urls=(
    #  Juggernaut XL v9 + RunDiffusionPhoto
    #"https://civitai.com/api/download/models/348913?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    "https://huggingface.co/RunDiffusion/Juggernaut-X-v10/resolve/main/Juggernaut-X-RunDiffusion-NSFW.safetensors"
    #  Niji
    #"https://civitai.com/api/download/models/155870?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    "https://huggingface.co/inu-ai/niji-diffusion-xl-base-1.0/resolve/main/niji-diffusion-xl-base-1.0.safetensors"
    #  ZavyChromaXL
    #"https://civitai.com/api/download/models/320428?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    "https://huggingface.co/misri/zavychromaxl_v70/resolve/main/zavychromaxl_v70.safetensors"
    #  Copax Timelsess
    #"https://civitai.com/api/download/models/344540?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    "https://huggingface.co/jetjodh/CopaxTimeLessXLv12/resolve/main/copaxTimelessxlSDXL1_v12.safetensors"
    #  Starlight
    #"https://civitai.com/api/download/models/182077?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Nightvision
    #"https://civitai.com/api/download/models/343830?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Samaritan 3D cartoon
    #"https://civitai.com/api/download/models/144566?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  TelmendoXL - mer realistisk
    "https://civitai.com/api/download/models/131960?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Pony Diffusion V6
    #"https://civitai.com/api/download/models/290640?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Suzannes Mix
    #"https://civitai.com/api/download/models/312314?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Colossus Project XL
    "https://huggingface.co/n0madic/colossusProjectXL_v53/resolve/main/colossusProjectXLSFW_v53Trained.safetensors"
    #"https://civitai.com/api/download/models/355884?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # AlbedoBase XL
    #"https://civitai.com/api/download/models/329420?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # REMERetroRefinedXL
    "https://civitai.com/api/download/models/399962?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Ultraspice XL Turbo
    #"https://civitai.com/api/download/models/372600?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Onlyfornsfw
    "https://huggingface.co/ferdyshampo/OnlyForNsfw118/resolve/main/onlyfornsfw118_v20.safetensors"
    #"https://civitai.com/api/download/models/363977?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Tamarin XL
    #"https://civitai.com/api/download/models/265836?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Mklan XXX
    #"https://civitai.com/api/download/models/429768?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    

    # SUPIR upscale model
    "https://huggingface.co/camenduru/SUPIR/resolve/main/SUPIR-v0Q.ckpt"

    #CCSR Upscale model
    #"https://huggingface.co/camenduru/CCSR/resolve/main/real-world_ccsr.ckpt"

    #  Stable Cascade
    #"https://huggingface.co/stabilityai/stable-cascade/resolve/main/stage_a.safetensors"
    #"https://huggingface.co/stabilityai/stable-cascade/resolve/main/comfyui_checkpoints/stable_cascade_stage_b.safetensors"
    #"https://huggingface.co/stabilityai/stable-cascade/resolve/main/comfyui_checkpoints/stable_cascade_stage_c.safetensors"
)

# Loop through the URLs and download each one
for url in "${urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P "$DOWNLOAD_DIR" "$url"
done

# LORAS

# Directory where files will be downloaded
DOWNLOAD_DIR="/opt/ComfyUI/models/loras/"

# Create the download directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"

# List of URLs to download
urls=(
    #Add Details (Detail Tweaker XL)
    #"https://civitai.com/api/download/models/135867?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Sexy
    "https://civitai.com/api/download/models/186014?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Silhouette - Sliders - silhouette
    "https://civitai.com/api/download/models/262669?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Harness
    #"https://civitai.com/api/download/models/216424?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Pinups style Art Frahm
    #"https://civitai.com/api/download/models/202646?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Woman nude 
    #"https://civitai.com/api/download/models/363218?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Rembrandt Lighting
    "https://civitai.com/api/download/models/315808?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Underwear 
    #"https://civitai.com/api/download/models/136277?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Flash Photo
    #"https://civitai.com/api/download/models/203379?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Low Key Lighting - Low-key lighting Style
    "https://civitai.com/api/download/models/315777?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  High Key Lighting - High-key lighting Style, bright light
    "https://civitai.com/api/download/models/315742?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Chiaroscuro Lighting Contrasting Lighting
    "https://civitai.com/api/download/models/315825?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Bad Quality - badquality, low quality
    "https://civitai.com/api/download/models/311787?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Impossible Photos
    #"https://civitai.com/api/download/models/343625?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Perfect Hands
    "https://civitai.com/api/download/models/254267?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Tanlines
    "https://civitai.com/api/download/models/282430?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # litho orwo dokumentpapier
    #"https://civitai.com/api/download/models/404096?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Lingquivera - linquivera, liiv1
    #"https://civitai.com/api/download/models/281935?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Mentixis
    #"https://civitai.com/api/download/models/315064?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Long Exposure - ral-exposure
    "https://civitai.com/api/download/models/237604?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Double Vision
    #"https://civitai.com/api/download/models/132469?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Dystopia
    #"https://civitai.com/api/download/models/332104?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Zavy Contrast - dark, chiaroscuro, low-key
    "https://civitai.com/api/download/models/332071?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Film photography - film photography style, light grain
    "https://civitai.com/api/download/models/180569?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # The Line
    "https://civitai.com/api/download/models/411062?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Cucoloris Lighting - casting shadow style - cucoloris patterned illumination
    "https://civitai.com/api/download/models/436271?token=ad415154d4ad70c87127eb1bbe7bc6b4"
)

# Loop through the URLs and download each one
for url in "${urls[@]}"; do
    wget -qnc --content-disposition --show-progress -P "$DOWNLOAD_DIR" "$url"
done
