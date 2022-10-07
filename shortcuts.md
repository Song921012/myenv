## Linux

super: 搜索

super A: 应用

super T: terminal

super y: 分屏幕

super F: 文档

prtsc: 截屏

命令+&变成后台运行, 不独占终端

## Linux 小技巧

用好oh-my-zsh自动补全,highlights,快速跳转

fd-find,fsearch

tab

### 线程管理

[Ubuntu/Linux使用命令行打开和关闭应用程序/ps命令和kill命令详解_www_helloworld_com的博客-CSDN博客_linux命令行打开软件](https://blog.csdn.net/www_helloworld_com/article/details/84886523)

### 快速跳转路径

#### 搜路径

fd-find: 命令行查找,最方便

fsearch(没输过路径)最强大

#### 跳转路径

cd 用户目录, cd -之前目录, cd .. 上一层目录

zsh z 关键字

z 显示记录的路径

z foo 切换到一个名字带有 "foo" 的路径

z foo bar 切换到一个名字带有 "foo" 并且后面带有 "bar" 的路径（例：fooesbar):

z -r foo 切换到名字带有 "foo" 并且拥有最高访问次数的路径

z -t foo 切换到最近使用的名字带有 "foo" 的路径

z -l foo 列出在 z 的数据库中名字带有 "foo" 的路径

z -x . 将当前路径从 z 的数据库中移除

### 快速跳转光标

终端内跳转 ctrl a开始/结尾e; 终端删除 ctrl k光标后/u光标前

vim: gg文件开头,G文件末尾,g0屏幕行首, 0行首页,$行尾, ctrl o之前光标,

.之前命令,n命令

%匹配括号,*,#匹配单词

Vscode Ctrl g 行数

## 查询

whoami

ifconfig

uname -a

nvdia-smi, nvcc -V

查询的几个模式

### 查安装的软件

apt list --installed | more复杂

apt list --installed | less稍微短

apt list --installed | grep gcc过滤

which,whereis查可执行文件

apt policy查软件源(==也可以Gui界面查询源删除源==)也可以去/etc/apt/source.lists.d文件夹里删除

查安装的key,apt-key list, 都在/etc/apt文件夹,trusted.gpg.d文件夹内有gpg key

### 查看环境变量

查看环境变量有三个命令：

1. `env`：env命令是environment的缩写，用于列出所有的环境变量；
2. `export`：单独使用export命令也可以像env列出所有的环境变量，不过export命令还有其他额外的功能,
3. `echo $PATH`: echo $PATH用于列出变量PATH的值，里面包含了已添加的目录。

### 查磁盘

Df命令是linux系统以磁盘分区为单位查看文件系统，可以加上参数查看磁盘剩余空间：

df -hl

du -sh 查文件夹

[Linux 查看磁盘空间 | 菜鸟教程](https://www.runoob.com/w3cnote/linux-view-disk-space.html)

### 查询文件和文件夹

fsearch: 类似everything

fd-find: 快捷键fd

which的作用是在PATH变量指定的路径中,搜索某个系统命令的位置,并且返回第一个搜索结果.

**whereis+文件名**用于程序名的搜索，搜索结果只限于二进制文件(参数-b)、man说明文件(参数-m)和源代码文件(参数-s)，如果省略参数，则返回所有信息。

## VScode

ctrl+shift+p: 唤醒命令界面

ctrl+alt+r:重启

alt:多光标, ctrl alt 上下复制光标

ctrl `: terminal

注释/取消注释: ctrl /

ctrl b: 打开隐藏目录栏

ctrl r: 打开最近文件

Julia: shift enter; alt enter; ctrl enter

Tex: ctrl alt b: ctrl alt v

ctrl g行数: 跳转行数

ctrl shift t: 打开之前关闭页面

ctrl x:删除一行

你可以通过打开命令面板(Ctrl + Shift + P)并输入Show running extensions来查看所有你安装的正在运行的插件。

## zotero

+/-: 展开关闭文献

ctrl(win)alt(linux):打开文献所在位置

## Github

t:搜索文件

I: 跳转行

b: 文件改动记录

句号:在线vscode

`gitpod.io/#/`加前缀,在线运行项目

## SpaceVim(learder\,命令:和space快捷键, tab-窗口-buffer)

:SPUpdate更新插件
:SPReinstall重装插件

### 最常用

* 用好:h 插件名等

* SPC f v d打开配置文件

* Space + f 文件; l 代码; b管理buffer (bc清楚保存窗口); s搜索; c注释 (space c l注释); e错误信息

* s键盘也管理窗口(g垂直分屏,v水平,o关闭其它,c关闭当前), space w管理窗口

* :terminal打开terminal（space '也打开shell)

* \ 数字跳tab(按标签跳转) alt前后左右(按位置跳转), space tab跳之前的文件（按时间先后跳转);

* space数字跳buffer窗口, ctrl上下左右.

* f3文件夹树(o打开文件树,d删,r重命名,y复制,x剪,p,a打开文件,A打开文件夹), f2 tagbar, space t t打开tab(r命名, o打开)

* space l r运行代码(记得先保存代码!!!), space l s i逐行运行, space l ss运行选中

* :e 文件路径, :enew, :save, space f o文件所在文件树位置

* 文件搜索: 当前工作路径ctrl p; 当前文件所在路径 space ff

* 内容搜索: space s / 内容,模糊查找当前工作目录, 然后alt r可以开启替换模式, 然后i,a进行修改; space s s buffer找内容

* 替换修改: 然后alt r可以开启替换模式, 然后i,a进行修改

### 单文件操作

vim几个重要概念

#### 操作符(d,dd,y,v,p,c)

删除d(delete),dd删除单行,x删除单词,

黏贴最后一次删除的东西p(paste),

选中v,复制y(和d类似),

替换r(replace)字符

替换c(change)词和段,

:<range> s/<search_string>/<replace_string>/<modifier>
range就是选中的内容, 可以v模式选中,自动会加.

s后边可以加\c表示区分大小写

modifier: g

u(undo)撤销,

ctrl r恢复

ctrl f/b翻页, d/u滚屏

* 选中模式:y复制,/y复制到粘贴板,d删除
* 跨区域:\y,\p

#### 动作(e,w,b,$,0,}{,gg,G,nG,n)

上下左右移动光标, ctrol o/I之前/新位置,

单词:e到单词末尾, w到下一个单词开始, b之前单词

行:$行尾, 0行首,

段落:}一个段落, {上一个段落,

(很重要)匹配: /搜索,tab跳转匹配,shift tab, （v2/foo选中两个foo之间的文本）;%匹配括号; */#匹配下/上一个同样的词

f/F: 当前行找字符

t/T: till直到

全文:gg文首,G文末,行数+G

文件操作：:e,:new,:h,:saveas,:bn下一个文件，:bp上一个文件

插入：i,a,o,O(上一行行首)

#### 操作次数:动作前加数字变成重复很多次动作,小数点重复之前命令

#### 自定义函数：:call CheckChineseMark()

#### :!运行shell命令(很重要)

#### 文件操作(配合:!)

:e 打开文件, :w保存文件

#### 范围range

:n,m

可视化v,选中的也是rangge

### Checkers: space e

[dense-analysis/ale: Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support](https://github.com/dense-analysis/ale)

### Format: space b f

[sbdchd/neoformat: A (Neo)vim plugin for formatting code.](https://github.com/sbdchd/neoformat)

### code complete

[Shougo/deoplete.nvim: Dark powered asynchronous completion framework for neovim/Vim8](https://github.com/Shougo/deoplete.nvim#requirements)

### Git

### 模糊搜索

[Yggdroot/LeaderF: An efficient fuzzy finder that helps to locate files, buffers, mrus, gtags, etc. on the fly for both vim and neovim.](https://github.com/Yggdroot/LeaderF)

### vim分屏

* ctrl w: s, v水平垂直分
* :qall, :wall, :only, :close (ctrl w c)
* ctrl w: w下一个,p前一个,hljk(左右下上),t最上面,b最下面

tmux和vim结合分屏
[christoomey/vim-tmux-navigator: Seamless navigation between tmux panes and vim splits](https://github.com/christoomey/vim-tmux-navigator)

## tmux技术（Session-窗口-窗格) ctrl b启动快捷键

[rothgar/awesome-tmux: A list of awesome resources for tmux](https://github.com/rothgar/awesome-tmux)

[tmux shortcuts & cheatsheet](https://gist.github.com/MohamedAlaa/2961058)

[gpakosz/.tmux: 🇫🇷 Oh my tmux! My self-contained, pretty & versatile tmux configuration made with ❤️](https://github.com/gpakosz/.tmux)

Session和窗口分离技术, 窗口关闭后程序依然运行, 电脑关闭后重启后还可以运行.

ctrl b I/U更新安装插件

### attach和detach session

* 新建
tmux
tmux new -s session名字
然后Julia: connect externel repl
把代码贴入julia repl

* tmux ls列出session

* 退出
ctrl b d 退出窗口不退出session, 退出session要exit

tmux kill-session -t myname

关闭所有session: tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill

* 载入session
tmux attach -t session名字

### Session-窗口-窗格

Session

Session

:new new session
s  list sessions
`$` name session

Windows (tabs)

c: create window
w: list windows
n: next window
p: previous window
f: find window
,: rename window
`&` kill window

Panes (splits)

\%  vertical split
"  horizontal split

o  swap panes
q  show pane numbers
x  kill pane

* break pane into window (e.g. to select text by mouse to copy)

* restore pane from window
space - toggle between layouts
 q (Show pane numbers, when the numbers show up type the key to goto that pane)
{ (Move the current pane left)
} (Move the current pane right)
z toggle pane zoom

### 保存,载入

[tmux-plugins/tmux-resurrect: Persists tmux environment across system restarts.](https://github.com/tmux-plugins/tmux-resurrect)

[tmux-plugins/tmux-continuum: Continuous saving of tmux environment. Automatic restore when tmux is started. Automatic tmux start when computer is turned on.](https://github.com/tmux-plugins/tmux-continuum)
tmux-continum每15min会自动保存一次你第一次创建的session内容, 所以有例外,只创建一个session就好,名字就叫.tmux/recurrence/last

PREFIX + CTRL s：手动保存会话,会有个时间戳

导入之前保存的程序
tmux new -s
cd ~/.tmux/resurrect/
ln -sf <file_name> last
ctrl b ctrl r
