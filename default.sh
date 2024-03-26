#!/bin/bash

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh

#Link to use in docker conf
#https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/default.sh

# Packages are installed after nodes so we can fix them...

PYTHON_PACKAGES=(
    #"opencv-python==4.7.0.72"
)

NODES=(
    #  Basinstallation
    "https://github.com/ltdrdata/ComfyUI-Manager"
    "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
    "https://github.com/ltdrdata/ComfyUI-Inspire-Pack"
    "https://github.com/Fannovel16/comfyui_controlnet_aux"
    "https://github.com/jags111/efficiency-nodes-comfyui"
    "https://github.com/rgthree/rgthree-comfy"
    "https://github.com/chrisgoringe/cg-image-picker"
    "https://github.com/chrisgoringe/cg-use-everywhere"
    "https://github.com/kijai/ComfyUI-KJNodes"
    "https://github.com/DonBaronFactory/ComfyUI-Cre8it-Nodes"
    "https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
    #  Nya/test
    "https://github.com/tinyterra/ComfyUI_tinyterraNodes"
    "https://github.com/WASasquatch/was-node-suite-comfyui"
    "https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
    "https://github.com/chrisgoringe/cg-training-tools" 
    #"https://github.com/pythongosssss/ComfyUI-WD14-Tagger.git"
    #"https://github.com/sipherxyz/comfyui-art-venture.git" - verkar trasig
    "https://github.com/melMass/comfy_mtb.git"
    #denoiser
    "https://github.com/BlenderNeko/ComfyUI_Noise.git"
     #moondream, joytag
    "https://github.com/gokayfem/ComfyUI_VLM_nodes.git"
    "https://github.com/palant/image-resize-comfyui.git"

    
    # CCSR Upscaler
    "https://github.com/kijai/ComfyUI-CCSR"
    
    # SUPIR Upscaler
    # "https://github.com/kijai/ComfyUI-SUPIR.git"
    
    #  Egna
    "https://github.com/tjorbogarden/my-useful-comfyui-custom-nodes.git"

)

CHECKPOINT_MODELS=(
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
    # Pony Diffusion V6
    #"https://civitai.com/api/download/models/290640?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Suzannes Mix
    #"https://civitai.com/api/download/models/312314?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  ICBINP XL
    #"https://civitai.com/api/download/models/313378?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Colossus Project XL
    #"https://civitai.com/api/download/models/355884?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # AlbedoBase XL
    "https://civitai.com/api/download/models/329420?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # REMERetroRefinedXL
    #"https://civitai.com/api/download/models/399962?token=ad415154d4ad70c87127eb1bbe7bc6b4"

    # SUPIR upscale model
    #"https://huggingface.co/camenduru/SUPIR/resolve/main/SUPIR-v0Q.ckpt"

    #CCSR Upscale modell
    #"https://huggingface.co/camenduru/CCSR/resolve/main/real-world_ccsr.ckpt"

    #  Stable Cascade
    #"https://huggingface.co/stabilityai/stable-cascade/resolve/main/stage_a.safetensors"
    #"https://huggingface.co/stabilityai/stable-cascade/resolve/main/comfyui_checkpoints/stable_cascade_stage_b.safetensors"
    #"https://huggingface.co/stabilityai/stable-cascade/resolve/main/comfyui_checkpoints/stable_cascade_stage_c.safetensors"
)

LORA_MODELS=(
    #Add Details (Detail Tweaker XL)
    "https://civitai.com/api/download/models/135867?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Sexy
    "https://civitai.com/api/download/models/186014?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Silhouette - Sliders
    #"https://civitai.com/api/download/models/262669?token=ad415154d4ad70c87127eb1bbe7bc6b4"
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
    #"https://civitai.com/api/download/models/315825?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Bad Quality
    #"https://civitai.com/api/download/models/311787?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #  Impossible Photos
    #"https://civitai.com/api/download/models/343625?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Lingquivera
    #"https://civitai.com/api/download/models/281935?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #Mentixis
    #"https://civitai.com/api/download/models/315064?token=ad415154d4ad70c87127eb1bbe7bc6b4"
)

VAE_MODELS=(
    #"https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    #"https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
    #  VAE for Pony Diffusion V6
    #"https://civitai.com/api/download/models/290640?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"

)

CONTROLNET_MODELS=(
    #  OpenPose 
    "https://huggingface.co/thibaud/controlnet-openpose-sdxl-1.0/resolve/main/OpenPoseXL2.safetensors"
    "https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank128/control-lora-canny-rank128.safetensors"
    "https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank128/control-lora-depth-rank128.safetensors"
    "https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank128/control-lora-recolor-rank128.safetensors"
    "https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank128/control-lora-sketch-rank128-metadata.safetensors"
    
    
)
EMBEDDINGS=(
    "https://civitai.com/api/download/models/258279?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    "https://civitai.com/api/download/models/260443?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    "https://civitai.com/api/download/models/256177?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    "https://civitai.com/api/download/models/255516?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    "https://civitai.com/api/download/models/254195?token=ad415154d4ad70c87127eb1bbe7bc6b4"
)

WORKFLOWS=(
    "https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/workflow-vast.json"
    "https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/txt2img.json"
    "https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/img2img.json"
)
### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    DISK_GB_AVAILABLE=$(($(df --output=avail -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_USED=$(($(df --output=used -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_ALLOCATED=$(($DISK_GB_AVAILABLE + $DISK_GB_USED))
    provisioning_print_header
    provisioning_get_nodes
    provisioning_install_python_packages
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/embeddings" \
        "${EMBEDDINGS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/pysssss-workflows" \
        "${WORKFLOWS[@]}"
    provisioning_print_end
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                    micromamba -n comfyui run ${PIP_INSTALL} -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                micromamba -n comfyui run ${PIP_INSTALL} -r "${requirements}"
            fi
        fi
    done
}

function provisioning_install_python_packages() {
    if [ ${#PYTHON_PACKAGES[@]} -gt 0 ]; then
        micromamba -n comfyui run ${PIP_INSTALL} ${PYTHON_PACKAGES[*]}
    fi
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    dir="$1"
    mkdir -p "$dir"
    shift
    if [[ $DISK_GB_ALLOCATED -ge $DISK_GB_REQUIRED ]]; then
        arr=("$@")
    else
        printf "WARNING: Low disk space allocation - Only the first model will be downloaded!\n"
        arr=("$1")
    fi
    
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
}

provisioning_start
