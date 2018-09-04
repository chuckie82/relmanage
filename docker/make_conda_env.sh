set -e

wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p $CONDA_PREFIX
conda update -y conda
conda env create -n $CONDA_ENV -f env_create.yaml
rm Miniconda3-latest-Linux-x86_64.sh
