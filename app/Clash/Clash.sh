#!/bin/bash

app_folder=~/.app

# 检查是否存在~/.app文件夹
if [ ! -d "$app_folder" ]; then
    echo "Creating $app_folder..."
    mkdir "$app_folder"
else
    echo "$app_folder already exists. Skipping..."
fi

cd ~/.app
wegt https://github.com/Fndroid/clash_for_windows_pkg/releases/download/0.20.32/Clash.for.Windows-0.20.32-x64-linux.tar.gz
tar -zxvf Clash.for.Windows-0.20.32-x64-linux.tar.gz -C ~/.app
mv Clash\ for\ Windows-0.20.32-x64-linux/ clash
cd clash
wget https://cdn.jsdelivr.net/gh/Dreamacro/clash@master/docs/logo.png
