#!/bin/bash

# 指定目标目录
dir="D:\codeSpace\Source-Code\C++\algorithm"

if [ -z $dir ]
  then
    echo "error: set target dir!"
    exit 1
fi

current_dir=$(pwd)

# 创建循环变量
i=1

# 循环创建目录
while [ -d "$dir/project_${i}" ]; do
  # 递增数字
  i=$(($i + 1))
done

# 创建目录
cd $dir
mkdir "project_${i}"
cd project_${i}
cp -r "$current_dir/project/" "$dir/project_${i}/"

# 打印最终目录
echo "Directory created: $dir/project_${i}"

cd ./project
code .