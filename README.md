# GRE

## Environment setup
    conda create -n gre python=3.9
    conda activate gre
    pip install torch==2.0.0+cu117 torchvision==0.15.1+cu117 -f https://download.pytorch.org/whl/torch_stable.html
    pip install -r requirements.txt

## Download dataset

    sh link.sh

## Download pre-trained models
Download the [pre-trained models](https://drive.google.com/drive/folders/1jf8SzSWlmVs3j7EgY8o5zH8oS-vKC3MV?usp=sharing) and put them in ./data/exp/

## Testing

    sh test.sh

## Training

    sh test.sh

## Acknowledgement

    sh test.sh