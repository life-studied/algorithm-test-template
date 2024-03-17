# algorithm-test-template

​	本项目为一个快速搭建算法模板的项目。懒人用的。

## Environment

* Window 10/11
* vscode（不需要配置json）
  * c/c++
  * c/c++ extension pack
  * cmake
  * cmake tools
* cmake

## Quick Start

### clone repository

```shell
git clong git@github.com:life-studied/algorithm-test-template.git
```

### 设置target目录

​	选择一个目录，作为你以后用来放算法项目的目录，将该目录地址拷贝到./make_proj.sh中的dir变量中。

### 创建快捷方式

​	右击make_proj.sh文件，创建快捷方式并复制到桌面。

## Usage

### code

​	每次双击`make_proj.sh`生成新的项目，会自动打开vscode，在main.cpp中完成你的代码（原代码用于重定向输入，你的代码应该在此之后）。

### run

​	在input.txt中放入你的输入。

​	每次generate后可以在bin/output.txt中看到输出。

### debug

​	在input.txt中放入你的输入。

​	使用cmake tools的debug按钮即可。