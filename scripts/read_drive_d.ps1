# 解决中文编码问题（脚本内统一配置）
$OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
chcp 65001 | Out-Null  # 切换UTF-8编码，Out-Null隐藏无关输出

# 核心逻辑：读取D盘目录
Write-Host "开始读取D盘根目录..."
Get-ChildItem -Path D:\
Write-Host "D盘目录读取完成"