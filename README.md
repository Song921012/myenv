# Setup Linux Environment

注意:特别针对的是POP!_os系统, Ubuntu和Debian系应该也是适用的

Modify `myenv.sh` to setup linux environment.

Then copy `.zshrc`  spacevim `init.toml` to .Space.d folder

并设置好Git个人访问令牌
[创建个人访问令牌 - GitHub Docs](https://docs.github.com/cn/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

具体也可以把obsidiannote里的git文件复制到home目录

然后
git clone https://github.com/Song921012/myenv.git

# Setup Development environment

注意中途可能要unset一些环境变量

Install texlive from sources

[tlmgr无法更新](https://tex.stackexchange.com/questions/203874/sudo-does-not-find-tlmgr)

Install nodejs from sources

Install java from sources

Install Vscode from sources

```
myenv
source gitinstall.sh
source packagesup.sh
```

从官网安装miniconda

```
conda update conda
conda install python=3.10.6 #记得修改
source install_python.sh
source install_julia.sh
install_julia v1.8 1.8.1 #记得修改
```
copy julia toml and startupfile到~/.julia里边文件夹里

也可以Install conda from `environment.toml`

从官网下在Rstudio

运行 `import.r` 就把R包都安装了

# 一些疑难杂症

- dpkg依赖问题

sudo dpkg -i

sudo apt install -y

sudo apt --fix-broken install

- tlmgr问题

[tlmgr无法更新](https://tex.stackexchange.com/questions/203874/sudo-does-not-find-tlmgr)

右键打开 vscode

[右键打开](https://zhuanlan.zhihu.com/p/143533486)

[ubuntu18.04已匹配蓝牙耳机但是连接不上_light-124的博客-CSDN博客_ubuntu连接蓝牙耳机](https://blog.csdn.net/handsomeandge/article/details/121529718)



# update environment

click `refresh` is ok!

it includes

linux up (R up)

Julia up

Quarto: `quartoup.sh`

Python 和 Nodejs: `pythonup.sh`

Texlive: `othersoftwaresup.sh`

# Other important packages

一些文件详细说明

## Download source packages

myenv
source ./gitinstall.sh

and download HDF5 and Optizelle from sources websites

## Compile and Download paralleltools

source paralleltools.sh

to install paralleltools

it takes long time

## update C++ packages

packagesup.sh

## update fenicsx environment

source fenicsup.sh

## update firedrake environment

source firedrakeup.sh
