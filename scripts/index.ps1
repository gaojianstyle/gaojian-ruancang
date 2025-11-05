# 全面解决中文编码问题（增强版）
# 设置PowerShell输出编码
$OutputEncoding = [System.Text.Encoding]::UTF8

# 设置控制台输入输出编码
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::InputEncoding = [System.Text.Encoding]::UTF8

# 设置系统活动代码页为UTF-8
chcp 65001 | Out-Null

# 显式设置PowerShell的默认编码首选项
[System.Text.Encoding]::Default = [System.Text.Encoding]::UTF8

# 核心逻辑：先切换到D盘，然后读取目录
Write-Host "切换到D盘 D: drive..."
Set-Location -Path D:\
Get-ChildItem
Write-Host "D：驱动器读取完成~~"
Write-Host "切换到C盘 ..."
Set-Location -Path C:\
Get-ChildItem
Write-Host "C：驱动器读取完成~~"








