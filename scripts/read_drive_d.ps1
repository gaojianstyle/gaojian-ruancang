# 解决中文编码问题（脚本内统一配置）
$OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
chcp 65001 | Out-Null

# 核心逻辑：先切换到D盘，然后读取目录
Write-Host "切换到D盘 D: drive..."
Set-Location -Path D:\
Get-ChildItem
Write-Host "D：驱动器读取完成~~"