#!/bin/bash
# 阿里云服务器环境安装脚本
# 在全新的 CentOS/Ubuntu 服务器上执行

echo "===== 安装 Node.js ====="
# Ubuntu/Debian
curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
apt-get install -y nodejs

# CentOS
# curl -fsSL https://rpm.nodesource.com/setup_22.x | bash -
# yum install -y nodejs

echo "===== 安装 PM2 ====="
npm install -g pm2

echo "===== 安装 Nginx ====="
apt-get install -y nginx
# cp nginx.conf /etc/nginx/sites-available/exam-app
# ln -s /etc/nginx/sites-available/exam-app /etc/nginx/sites-enabled/
# nginx -s reload

echo "===== 环境准备完成 ====="
echo "接下来: bash deploy.sh"
