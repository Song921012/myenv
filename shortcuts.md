## Linux

super: 搜索

super A: 应用

super T: terminal

super y: 分屏幕

super F: 文档

prtsc: 截屏

命令+&变成后台运行, 不独占终端

## VScode

ctrl+shift+p: 唤醒命令界面

alt:多光标

`: terminal

注释/取消注释: ctrl /

ctrl b: 打开隐藏目录栏

ctrl r: 打开最近文件

Julia: shift enter; alt enter; ctrl enter

Tex: ctrl alt b: ctrl alt v



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

- 用好:h 插件名等

- SPC f v d打开配置文件

- Space + f 文件; l 代码; b管理buffer (bc清楚保存窗口); s搜索; c注释 (space c l注释); e错误信息

- s键盘也管理窗口(g垂直分屏,v水平,o关闭其它,c关闭当前), space w管理窗口

- :terminal打开terminal（space '也打开shell)

- \ 数字跳tab(按标签跳转) alt前后左右(按位置跳转), space tab跳之前的文件（按时间先后跳转);

- space数字跳buffer窗口, ctrl上下左右.

- f3文件夹树, f2 tagbar, space t t打开tab(r命名, o打开)

- space l r运行代码(记得先保存代码!!!), space l s i逐行运行, space l ss运行选中

- :e 文件路径, :enew, :save, space f o文件所在文件树位置

- 文件搜索: 当前工作路径ctrl p; 当前文件所在路径 space ff

- 内容搜索: space s / 内容,模糊查找当前工作目录, 然后alt r可以开启替换模式, 然后i,a进行修改; space s s buffer找内容

- 替换修改: 然后alt r可以开启替换模式, 然后i,a进行修改

### 单文件操作

- ggvG选中全文
- }{跳段落
- ctrl f/b翻页, d/u滚屏
- 插入模式就可以复制粘贴
- 选中模式:y复制,/y复制到粘贴板,d删除
- 删除n行:nd, n,m d删除n到m行
- 文本内复制粘贴: yy, nyy, p
- 跨区域:\y,\p
- gg跳转首行, ctral a行首
- tab跳转匹配,shift tab
- :<range> s/<search_string>/<replace_string>/<modifier>
range就是选中的内容, 可以v模式选中,自动会加.

s后边可以加\c表示区分大小写

modifier: g

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

- ctrl w: s, v水平垂直分
- :qall, :wall, :only, :close (ctrl w c)
- ctrl w: w下一个,p前一个,hljk(左右下上),t最上面,b最下面

tmux和vim结合分屏
[christoomey/vim-tmux-navigator: Seamless navigation between tmux panes and vim splits](https://github.com/christoomey/vim-tmux-navigator)

## tmux技术（Session-窗口-窗格) ctrl b启动快捷键

[rothgar/awesome-tmux: A list of awesome resources for tmux](https://github.com/rothgar/awesome-tmux)

[tmux shortcuts & cheatsheet](https://gist.github.com/MohamedAlaa/2961058)

[gpakosz/.tmux: 🇫🇷 Oh my tmux! My self-contained, pretty & versatile tmux configuration made with ❤️](https://github.com/gpakosz/.tmux)

Session和窗口分离技术, 窗口关闭后程序依然运行, 电脑关闭后重启后还可以运行.

ctrl b I/U更新安装插件

### attach和detach session

- 新建
tmux
tmux new -s session名字
然后Julia: connect externel repl
把代码贴入julia repl

- tmux ls列出session

- 退出
ctrl b d 退出窗口不退出session, 退出session要exit

tmux kill-session -t myname

关闭所有session: tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill

- 载入session
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
+  break pane into window (e.g. to select text by mouse to copy)
-  restore pane from window
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
