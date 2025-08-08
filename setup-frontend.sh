#!/bin/bash

echo "🌐 设置前端项目..."
echo "================================"

# 检查 Node.js 和 npm
echo "📦 检查 Node.js 环境..."
node --version || { echo "❌ Node.js 未安装"; exit 1; }
npm --version || { echo "❌ npm 未安装"; exit 1; }

# 清理旧的安装
echo "🧹 清理旧的依赖..."
rm -rf node_modules package-lock.json

# 安装依赖
echo "📥 安装依赖包..."
npm install

# 检查安装结果
if [ -d "node_modules" ]; then
    echo "✅ 依赖安装成功"
else
    echo "❌ 依赖安装失败"
    exit 1
fi

# 检查 Next.js
echo "🔍 检查 Next.js..."
npx next --version || { echo "❌ Next.js 安装失败"; exit 1; }

echo "================================"
echo "✅ 前端设置完成!"
echo "🚀 运行命令: npm run dev"
echo "================================"
