#！/bin/bash

echo "添加源"
sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.sjtug.sjtu.edu.cn/ros/ubuntu/ `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt -y install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

echo "下载ros-noetic"
sudo apt update
sudo apt -y install ros-noetic-desktop-full

echo "添加到环境"
echo "source /opt/ros/noetic/setup.zsh" >> ~/.zshrc
source ~/.zshrc

echo "下载依赖"
sudo apt -y install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential

echo "初始化"
sudo rosdep init
rosdep update

echo "ROS-noetic安装完毕"