# Link to download script: wget https://github.com/tjorbogarden/comfy-vast-provisioning/raw/main/download-loras.sh --content-disposition
# 1. Make script executable: chmod +x download-loras.sh
# Run the script by typing bash ./download-loras.sh (in the right directory)

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
    # Lingquivera
    "https://civitai.com/api/download/models/281935?token=ad415154d4ad70c87127eb1bbe7bc6b4"
    # Mentixis
    "https://civitai.com/api/download/models/315064?token=ad415154d4ad70c87127eb1bbe7bc6b4"
)

# Loop through the URLs and download each one
for url in "${urls[@]}"; do
    wget -P "$DOWNLOAD_DIR" "$url" --content-disposition
done
