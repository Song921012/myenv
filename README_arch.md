# Setup Linux Environment

注意:特别针对的是Archcraft系统, arch linux系应该也是适用的

The easiest way is run `archAllInOne.sh` (remember to revise python and julia version).  The followings are descriptions.

平时记得维护Linux, CPP, Python, Fenics, Others环境:

- 安装linux包后添加myenv.sh. 更新用up
- 安装C/C++/Fortran包后添加gitinstall.sh和packagesup.sh. 更新用cppup
- 安装python包后更新install_python.sh, pythonup.sh. 更新用pythonup
- 安装fenics包后,更新fenicsup.sh. 更新用fenicsup
- (平时不用维护)julia包更新用juliaup,juliadevup
- (平时不用维护)R包更新用rup
- 其它包和同步用othersup, gitup.sh

## 先设置中文支持和archlinuxcn源

[Localization (简体中文)/Simplified Chinese (简体中文) - ArchWiki](https://wiki.archlinux.org/title/Localization_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)/Simplified_Chinese_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87))

不同的是.xprofile设置第一个
export LANG=en_US.UTF-8
export LANGUAGE=zh_CN:en_US

[Font Configuration (简体中文)/Chinese (简体中文) - ArchWiki](https://wiki.archlinux.org/title/Font_Configuration_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)/Chinese_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87))

## 下载nerd字体

推荐使用这个方法下载字体[ronniedroid/getnf: A better way to install NerdFonts](https://github.com/ronniedroid/getnf)


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

Then copy `.archzshrc`  spacevim `init.toml` to .SpaceVim.d folder

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

- 申请COPT的license

申请完之后, 解压把copt60移到/opt 然后修改.zshrc, 最后`copt_licgen -key` 后边跟licence

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

sudo usermod -aG kvm $USER

yay -S docker

sudo systemctl unmask docker

#sudo systemctl enable docker.service 开机启动

sudo usermod -aG docker $USER

Docker Desktop[Install on Arch-based distributions | Docker Documentation](https://docs.docker.com/desktop/install/archlinux/)

安装完desktop后
docker context ls
docker context use default

## VMWare虚拟机

[下载 VMware Workstation Pro - VMware Customer Connect](https://customerconnect.vmware.com/cn/downloads/info/slug/desktop_end_user_computing/vmware_workstation_pro/17_0)


下载bundel文件后

sudo chmod +x *.bundle

sudo ./*.bundle

安装后激活(位于studybook code)

然后下windows11multi edtion镜像文件安装

安装后安装VMWare tools然后激活windows11专业版(位于studybook code)

登录然后office tool plus安装office




# 一些疑难杂症


# Other applications

flatpak

- 腾讯视频: 


- 音乐 网易: app store

- screenkey app store

- 重复文件


- xmind(app store)

- 下载

xdm (app store)

- 翻译


gmail只用登陆

stu.xjtu.edu.cn自己配置服务器,都是stu.xjtu.edu.cn

xjtu.xjtu.edu登陆界面有服务器

qq要在qq邮箱中设置生成密钥



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
