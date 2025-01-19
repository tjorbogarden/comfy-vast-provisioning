#!/bin/bash

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh

#Link to use in docker conf
#https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/default.sh

# Packages are installed after nodes so we can fix them...

PYTHON_PACKAGES=(
    #"opencv-python==4.7.0.72"
    "openai==1.55.3" 
    "httpx==0.27.2"
    "bitsandbytes"
    "lxml"
)

NODES=(
    #  Basinstallation
    "https://github.com/ltdrdata/ComfyUI-Manager"
    "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
    "https://github.com/ltdrdata/ComfyUI-Inspire-Pack"

    "https://github.com/rgthree/rgthree-comfy"
    "https://github.com/pythongosssss/ComfyUI-Custom-Scripts"

    #WAS node suite
    "https://github.com/WASasquatch/was-node-suite-comfyui"
    #Ultimate SD Upscale
    "https://github.com/ssitu/ComfyUI_UltimateSDUpscale"
    #Comfyroll Studio
    "https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
    # Comfyui art venture
    "https://github.com/sipherxyz/comfyui-art-venture"
    # SDXL Auto Prompter (dagthomas, ChatGPT)
    "https://github.com/dagthomas/comfyui_dagthomas"
    # Use Everywhere
    "https://github.com/chrisgoringe/cg-use-everywhere"
    # ComfyUI Easy Use
    "https://github.com/yolain/ComfyUI-Easy-Use"
    # save image with metadata
    "https://github.com/giriss/comfy-image-saver"
    # ComfyUI Essentials
    "https://github.com/cubiq/ComfyUI_essentials"

    # ComfyUI GGUF model loader
    "https://github.com/city96/ComfyUI-GGUF"

    # Get/Set nodes
    "https://github.com/kijai/ComfyUI-KJNodes"

    # Joy Caption 
    "https://github.com/aidenli/ComfyUI_NYJY"

    # FLux Resolution
    "https://github.com/gseth/ControlAltAI-Nodes"

    #Fluxtapoz
    #"https://github.com/logtd/ComfyUI-Fluxtapoz"

    # CivitAI Model Downloader
    "https://github.com/civitai/civitai_comfy_nodes"

    # Detail Daemon
    "https://github.com/Jonseed/ComfyUI-Detail-Daemon"

    "https://github.com/Fannovel16/comfyui_controlnet_aux"
    "https://github.com/TinyTerra/ComfyUI_tinyterraNodes"
    "https://github.com/cubiq/ComfyUI_IPAdapter_plus"
    "https://github.com/cubiq/ComfyUI_FaceAnalysis"
    "https://github.com/glibsonoran/Plush-for-ComfyUI"
    "https://github.com/42lux/ComfyUI-42lux"
    "https://github.com/sipie800/ComfyUI-PuLID-Flux-Enhanced"
    "https://github.com/kaibioinfo/ComfyUI_AdvancedRefluxControl"
)

CHECKPOINT_MODELS=(
    #  Juggernaut XL v9 + RunDiffusionPhoto
    #"https://civitai.com/api/download/models/348913?token=ad415154d4ad70c87127eb1bbe7bc6b4"

)

LORA_MODELS=(
    #Add Details (Detail Tweaker XL)
    #"https://civitai.com/api/download/models/135867?token=ad415154d4ad70c87127eb1bbe7bc6b4"
)

VAE_MODELS=(
    #"https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    
)

ESRGAN_MODELS=(
    #"https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"

)

CONTROLNET_MODELS=(
    #  OpenPose 
    #"https://huggingface.co/thibaud/controlnet-openpose-sdxl-1.0/resolve/main/OpenPoseXL2.safetensors
    
    
)
EMBEDDINGS=(
    #"https://civitai.com/api/download/models/258279?token=ad415154d4ad70c87127eb1bbe7bc6b4"
)

WORKFLOWS=(
    #"https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/workflow-vast.json"

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
