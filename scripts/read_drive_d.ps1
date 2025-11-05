# 解决中文编码问题（脚本内统一配置）
$OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
chcp 65001 | Out-Null  # 切换UTF-8编码，Out-Null隐藏无关输出

# 核心逻辑：先切换到D盘，然后读取目录
Write-Host "开始读取D盘根目录..."
Set-Location -Path D:\  # 切换到D盘
Get-ChildItem
Write-Host "D盘目录读取完成"