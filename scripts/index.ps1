# 关键原理：
# PowerShell（尤其是 Windows PowerShell 5.1）对脚本编码非常敏感：
# 包含中文的脚本必须用 UTF-8 with BOM 编码（无 BOM 的 UTF-8 会被当作系统默认 ANSI 编码解析，导致乱码）；
# 乱码会破坏字符串的语法（比如单引号 ' 被解析为其他字符），直接导致「缺少终止符」等语法错误。
# 保存为 test.ps1，编码设为 UTF-8 with BOM
$OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
chcp 65001 | Out-Null  # 加 | Out-Null 隐藏 chcp 的输出信息
Write-Host '开始...'
cd D:\
# Get-ChildItem -Path D:\
dir
cd D:\.codes
# git clone https://github.com/gaojianstyle/gaojian-ruancang.git
# cd gaojian-ruancang
dir
Write-Host '完成'