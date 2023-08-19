#!/bin/bash

# 安裝依賴
if [ -f "requirements.txt" ]; then
    echo "安裝依賴..."
    pip3 install -r requirements.txt
else
    echo "未找到requirements.txt文件，跳過依賴安裝"
fi
