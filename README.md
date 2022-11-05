# Setup Linux Environment

注意:特别针对的是POP!_os系统, Ubuntu和Debian系应该也是适用的

The easiest way is run `AllInOne.sh` (remember to revise python and julia version).  The followings are descriptions.

平时记得维护Linux, CPP, Python, Firedrake, Fenics, Others环境:

- 安装linux包后添加myenv.sh. 更新用up
- 安装C/C++/Fortran包后添加gitinstall.sh和packagesup.sh. 更新用cppup
- 安装python包后更新install_python.sh, pythonup.sh. 更新用pythonup
- 安装firedrake包后(fireadd),更新firedrakeinstall.sh. 更新用fireup
- 安装fenics包后,更新fenicsup.sh. 更新用fenicsup
- (平时不用维护)julia包更新用juliaup,juliadevup
- (平时不用维护)R包更新用rup
- 其它包和同步用othersup, gitup.sh

## 先把中文路径改为英文路径

[Ubuntu /home下中文目录如何修改成英文_fei2636的博客-CSDN博客_ubuntu 文件夹英文](https://blog.csdn.net/fei2636/article/details/79202102)

也可以安装系统时默认英文

## 下载好字体

[Nerd Fonts - Iconic font aggregator, glyphs/icons collection, & fonts patcher](https://www.nerdfonts.com/font-downloads)

```
cd ~/Downloads
git clone https://github.com/ryanoasis/nerd-fonts.git
sudo ./install.sh Ubuntu
sudo ./install.sh UbuntuMono
sudo ./install.sh Mononoki
sudo ./install.sh Meslo
sudo ./install.sh Hack
sudo ./install.sh FiraMono
sudo ./install.sh FiraCode
sudo ./install.sh FantasqueSansMono
sudo ./install.sh DejaVuSansMono
sudo ./install.sh CascadiaCode
```

Repo很大, 10几个G, 推荐手动下载安装上面提到的字体.

```
sudo unzip '*.zip' -d /usr/share/fonts/  # 或者 for z in *.zip; do unzip $z; done
sudo fc-cache -fv
```

然后修改终端字体为CaskaydiaCove Nerd Font Mono.

## 设置好Git个人访问令牌

[创建个人访问令牌 - GitHub Docs](https://docs.github.com/cn/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

具体也可以把obsidiannote里的git文件复制到home目录

## myenv和myhsl配置系统环境

git clone <https://github.com/Song921012/myenv.git>

git clone <https://github.com/Song921012/myhsl.git>

Modify `myenv.sh` to setup linux environment.

Then copy `.zshrc`  spacevim `init.toml` to .SpaceVim.d folder

## 配置完之后可以大致设置一下

例如系统字体, 在优化工具, gonme tweaks中修改为

- 界面: Hack Nerd Font Bold 12
- 文档: Dejavu Sans Mono Bold 14
- 等宽: Hack Nerd Font Regular 12

开机启动添加vscode, thunderbird, firefox, zotero等等

# Setup Development environment

注意中途可能要unset一些环境变量

Install texlive from sources

[tlmgr无法更新](https://tex.stackexchange.com/questions/203874/sudo-does-not-find-tlmgr)

```
myenv
source gitinstall.sh
```

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
- Pardiso的license
- Gurobi的license
- Knitro的license
HSL系列软件

- algencan-3.1.1: 从hsl中copy到myenv/src
- algencan-4.0.0: 从hsl中copy到myenv/src
- Galahad: see pacakgesup.sh
  [home · ralna/GALAHAD Wiki](https://github.com/ralna/GALAHAD/wiki)
  [raw.githubusercontent.com/ralna/GALAHAD/master/doc/README](https://raw.githubusercontent.com/ralna/GALAHAD/master/doc/README)



## Docker

[Install and Use Tensorman - System76 Support](https://support.system76.com/articles/tensorman/)


从官网下载docker
[Install Docker Desktop on Ubuntu | Docker Documentation](https://docs.docker.com/desktop/install/ubuntu/)

[Install Docker Engine on Ubuntu | Docker Documentation](https://docs.docker.com/engine/install/ubuntu/#install-docker-engine)


[Post-installation steps for Linux | Docker Documentation](https://docs.docker.com/engine/install/linux-postinstall/)


[Installation Guide — NVIDIA Cloud Native Technologies documentation](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker)(记得把distributions改为"ubuntu22.04")

[Sign in and get started | Docker Documentation](https://docs.docker.com/desktop/get-started/#credentials-management-for-linux-users)

[[Install nvidia-docker2 In Pop!_OS]#popos](https://gist.github.com/kuang-da/2796a792ced96deaf466fdfb7651aa2e)


# 一些疑难杂症

- dpkg依赖问题

sudo dpkg -i

sudo apt install -y

sudo apt --fix-broken install

- tlmgr问题

[tlmgr无法更新](https://tex.stackexchange.com/questions/203874/sudo-does-not-find-tlmgr)

- 右键打开 vscode

[右键打开](https://zhuanlan.zhihu.com/p/143533486)

- 蓝牙连接

[ubuntu18.04已匹配蓝牙耳机但是连接不上_light-124的博客-CSDN博客_ubuntu连接蓝牙耳机](https://blog.csdn.net/handsomeandge/article/details/121529718)

- 桌面图标: 在applications文件夹新建desktop文件

# Other applications

- 软件与更新

搜Software & Updates

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

- 清理
  
  bleachkit(app store)

- 显示按键

 screenkey app store

- 重复文件

dupeguru app store

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

click `refreshall` is ok!

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

## vscode.vim

configure vscode neovim

## texstudioconfig.txs

configure texstudio
