#!/bin/bash

# 檢查bot環境是否存在
if ! conda info --envs | grep -q 'bot'; then
    echo "環境 'bot' 不存在，正在創建..."
    conda create -n bot python=3.9.15 -y
else
    echo "環境 'bot' 已存在"
fi
# 把這一段註解拿掉，就會安裝到bot，不拿掉就是在base
echo "激活環境 'bot'"
source activate $HOME/miniconda3/envs/bot
