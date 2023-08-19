#!/bin/bash

# 檢查.bashrc中是否已有conda的路徑
if grep -q 'conda.sh' ~/.bashrc; then
    echo "在.bashrc中移除conda的路徑"
    sed -i '/conda.sh/d' ~/.bashrc
    sed -i '/conda activate/d' ~/.bashrc
else
    echo "conda的路徑不在.bashrc中"
fi

# 移除miniconda3目錄
if [ -d "$HOME/miniconda3" ]; then
    echo "正在移除miniconda3目錄..."
    rm -rf $HOME/miniconda3
else
    echo "miniconda3目錄不存在"
fi
