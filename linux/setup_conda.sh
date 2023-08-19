#!/bin/bash

# 檢查conda命令是否存在
if ! command -v conda &>/dev/null; then
    echo "Miniconda未安裝，正在安裝..."
    curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
    bash Miniconda3-latest-Linux-x86_64.sh -b
    rm Miniconda3-latest-Linux-x86_64.sh
else
    echo "Miniconda已安裝"
fi

# 檢查.bashrc中是否已有conda的路徑
if ! grep -q 'conda.sh' ~/.bashrc; then
    echo "在.bashrc中添加conda的路徑"
    echo ". $HOME/miniconda3/etc/profile.d/conda.sh" >> ~/.bashrc
    echo "conda activate" >> ~/.bashrc
else
    echo "conda的路徑已在.bashrc中"
fi
