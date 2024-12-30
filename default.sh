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
    # "https://github.com/StartHua/Comfyui_CXH_joy_caption"

    # FLux Resolution
    "https://github.com/gseth/ControlAltAI-Nodes"

    # Systemmonitor visar CPU osv
    #"https://github.com/crystian/ComfyUI-Crystools"

    #Fluxtapoz
    "https://github.com/logtd/ComfyUI-Fluxtapoz"

    # Regional Prompting - Dave Custom Node
    "https://github.com/Davemane42/ComfyUI_Dave_CustomNode"

    # ComfyUI Model Downloader
    "https://github.com/ciri/comfyui-model-downloader"

    
    #"https://github.com/Fannovel16/comfyui_controlnet_aux"
    #"https://github.com/jags111/efficiency-nodes-comfyui"

    #"https://github.com/chrisgoringe/cg-image-picker"
    #"https://github.com/chrisgoringe/cg-use-everywhere"
    #"https://github.com/kijai/ComfyUI-KJNodes"
    #"https://github.com/DonBaronFactory/ComfyUI-Cre8it-Nodes"

    #  Nya/test
    #"https://github.com/tinyterra/ComfyUI_tinyterraNodes"
    #"https://github.com/WASasquatch/was-node-suite-comfyui"
    #"https://github.com/chrisgoringe/cg-training-tools" 
    #"https://github.com/pythongosssss/ComfyUI-WD14-Tagger.git"
    #"https://github.com/sipherxyz/comfyui-art-venture.git" - verkar trasig
    #"https://github.com/melMass/comfy_mtb.git"
    #denoiser
    #"https://github.com/BlenderNeko/ComfyUI_Noise"
     #moondream, joytag
    #"https://github.com/gokayfem/ComfyUI_VLM_nodes"
    #"https://github.com/palant/image-resize-comfyui"
    #IPadapter
    #"https://github.com/cubiq/ComfyUI_IPAdapter_plus"
    #ChatGPT
    #"https://github.com/AppleBotzz/ComfyUI_LLMVISION"
    # 3D pose editor
    #"https://github.com/hinablue/ComfyUI_3dPoseEditor"
    
    # SUPIR Upscaler
    #"https://github.com/kijai/ComfyUI-SUPIR"
    
    #  Egna
    #"https://github.com/tjorbogarden/my-useful-comfyui-custom-nodes.git"

)

CHECKPOINT_MODELS=(
    #  Juggernaut XL v9 + RunDiffusionPhoto
    #"https://civitai.com/api/download/models/348913?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # AlbedoBase XL
    #"https://civitai.com/api/download/models/329420?token=ad415154d4ad70c87127eb1bbe7bc6b4"

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
    #"https://civitai.com/api/download/models/135867?token=ad415154d4ad70c87127eb1bbe7bc6b4"
)

VAE_MODELS=(
    #"https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    #"https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    #"https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
    #  VAE for Pony Diffusion V6
    #"https://civitai.com/api/download/models/290640?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    
)

ESRGAN_MODELS=(
    #"https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    #"https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    #"https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"

)

CONTROLNET_MODELS=(
    #  OpenPose 
    #"https://huggingface.co/thibaud/controlnet-openpose-sdxl-1.0/resolve/main/OpenPoseXL2.safetensors"
    #"https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank128/control-lora-canny-rank128.safetensors"
    #"https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank128/control-lora-depth-rank128.safetensors"
    #"https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank128/control-lora-recolor-rank128.safetensors"
    #"https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank128/control-lora-sketch-rank128-metadata.safetensors"
    
    
)
EMBEDDINGS=(
    #"https://civitai.com/api/download/models/258279?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #"https://civitai.com/api/download/models/260443?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #"https://civitai.com/api/download/models/256177?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #"https://civitai.com/api/download/models/255516?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    #"https://civitai.com/api/download/models/254195?token=ad415154d4ad70c87127eb1bbe7bc6b4"
)

WORKFLOWS=(
    #"https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/workflow-vast.json"
    #"https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/txt2img.json"
    #"https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/img2img.json"
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
