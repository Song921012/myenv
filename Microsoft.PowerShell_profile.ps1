#Invoke-Expression (&starship init powershell)

oh-my-posh init pwsh --config 'D:/Documents/ohmyposhthemes/M365Princess.omp.json' | Invoke-Expression

#M365Princess
#powerlevel10k_rainbow
#craver

Import-Module PSConsoleTheme

Set-PSReadLineOption -PredictionSource History # 设置预测文本来源为历史记录
Set-PSReadlineKeyHandler -Key Tab -Function Complete # 设置 Tab 键补全
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete # 设置 Ctrl+d 为菜单补全和 Intellisense
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo # 设置 Ctrl+z 为撤销
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward # 设置向上键为后向搜索历史记录
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward # 设置向下键为前向搜索历史纪录

function ssh_zhen {
ssh hpc.abm-lab.yorku.ca -l zhenw
}

function ssh_nancy {
ssh hpc.abm-lab.yorku.ca -l nancys
}

Set-Alias sshzhen ssh_zhen
Set-Alias sshnancy  ssh_nancy



#VPN

function set_proxy_variable {
	$proxy = 'http://127.0.0.1:7890'

    # temporary
    $env:HTTP_PROXY = $proxy
    $env:HTTPS_PROXY = $proxy

    # forever
    # [System.Environment]::SetEnvironmentVariable("HTTP_PROXY", $proxy, "User")
    # [System.Environment]::SetEnvironmentVariable("HTTPS_PROXY", $proxy, "User")
    
    Write-Host "`n   OPEN powershell proxy channel!`n"
}

function unset_proxy_variable {
    # temporary
    Remove-Item env:HTTP_PROXY
    Remove-Item env:HTTPS_PROXY

    # forever
    # [Environment]::SetEnvironmentVariable('http_proxy', $null, 'User')
    # [Environment]::SetEnvironmentVariable('https_proxy', $null, 'User')

    Write-Host "`n   CLOSE powershell proxy channel!`n"
}

New-Alias vpnon set_proxy_variable
New-Alias vpnoff unset_proxy_variable


# git

function git_sync{
git pull
git add -A
git commit -m 'update'
git push
}

function git_up{
powershell.exe -noexit "& 'C:\Users\12475\Desktop\myenv\gitup.ps1'"
}

New-Alias gitsync git_sync
New-Alias gitup git_up

function vpngit_up{
vpnon
gitup
vpnoff
}
New-Alias vpngitup vpngit_up

# juliaup
function julia_up{
julia -e 'using Pkg;using Dates;Pkg.update();Pkg.gc(collect_delay = Day(0))'
}

New-Alias juliaup julia_up

# pythonup
function python_up{
powershell.exe -noexit "& 'C:\Users\12475\Desktop\myenv\pythonup.ps1'"
}

New-Alias pythonup python_up


# refresh
function refresh_all{
echo "refresh"
(juliaup)
(pythonup)
(vpngitup)
}

New-Alias refresh refresh_all


