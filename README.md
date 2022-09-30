# Setup Linux Environment

注意:特别针对的是POP!_os系统, Ubuntu和Debian系应该也是适用的

设置好Git个人访问令牌
[创建个人访问令牌 - GitHub Docs](https://docs.github.com/cn/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

具体也可以把obsidiannote里的git文件复制到home目录

然后
git clone <https://github.com/Song921012/myenv.git>

git clone <https://github.com/Song921012/myhsl.git>

Modify `myenv.sh` to setup linux environment.

Then copy `.zshrc`  spacevim `init.toml` to .Space.d folder

# Setup Development environment

注意中途可能要unset一些环境变量

Install texlive from sources

[tlmgr无法更新](https://tex.stackexchange.com/questions/203874/sudo-does-not-find-tlmgr)

```
myenv
source gitinstall.sh
```

把HSL文件放到Ipopt thirdpartyhsl文件夹中

```
source packagesup.sh
```

从官网安装miniconda

从官网安装Rstudio

```
conda update conda
conda install python=3.10.6 #记得修改
source install_python.sh
source install_julia.sh
install_julia v1.8 1.8.1 #记得修改
R --no-save <~/myenv/importr.r
cd ~/myenv
conda env create -f fenicsxenvironment.yml
conda env create -f fenicsenvironment.yml
cd ~/myenv
source firedrakeinstall.sh
```

copy julia toml and startupfile到~/.julia里边文件夹里

base环境也可以Install conda from `environment.toml`

另外也可以申请

- 申请COPT的license
- mosek的license

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

# Other applications

- obsidian: deb安装

- Wechat: deepwine

- qq: 放弃安装

- zoom: app store

- 腾讯视频: app store

- 输入法

[Pop!_OS 21.04 安装 Fcitx + rime 输入法 - Jixun's Blog](https://jixun.uk/posts/2021/pop-os-21-04-install-fcitx-rime/)

搜狗输入法从官网下

- 图片 gthumb: app store

- 音乐 网易: app store

- 视频 VLC: app store

- PDF

Okular查看 app store

PDF chain, PDFtk 命令行处理PDF app store

PDF arrange (处理单页pdf) app store

- Office

libre office 自带

WPS从官网下

- 重复文件

dupeguru app store

- 种子(自动下载了)

sudo add-apt-repository ppa:poplite/qbittorrent-enhanced
sudo apt update
sudo apt install qbittorrent-enhanced

- xmind(app store)

- 下载

xdm (app store)

- 翻译

- thunderbird (app store)

gmail只用登陆

stu.xjtu.edu.cn自己配置服务器,都是stu.xjtu.edu.cn

xjtu.xjtu.edu登陆界面有服务器

qq要在qq邮箱中设置生成密钥

- 杀毒

clamav (app store)

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
