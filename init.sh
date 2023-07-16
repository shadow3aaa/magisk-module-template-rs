#!/usr/bin/bash

if [[ "$1" = "--help" || "$1" = "-h" || "$1" = "" ]]; then
    echo "帮助:"
    echo "需要初始化模板仓库名"
    echo "初始化修改只能执行一次, 并且此脚本初始化后自动删除, 谨慎选择"
    echo "示例: bash ./init.sh --name foo"
    exit 0
elif [ "$1" = "--name" ]; then
    name=$2
fi

if [ "$name" = "" ]; then
    echo "未指定自定义名字"
    exit 1
fi

sed -i "s/template_nHA9NDay6C/${name}/g" ./Cargo.toml
sed -i "s/template_nHA9NDay6C/${name}/g" ./build_module/*
