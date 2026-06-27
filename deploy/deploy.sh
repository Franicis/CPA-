#!/bin/bash
# 考证刷题 - 阿里云部署脚本
# 在服务器上执行

echo "===== 安装依赖 ====="
npm install --production

echo "===== 启动应用 ====="
# 方式一：直接用 node
# NODE_ENV=production nohup node dist/boot.js > app.log 2>&1 &

# 方式二：使用 PM2（推荐）
# 先安装: npm install -g pm2
pm2 start ecosystem.config.cjs
pm2 save

echo "===== 完成 ====="
echo "访问 http://服务器IP:3000"
