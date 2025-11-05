@echo off
rem 第一步：先切换到UTF-8编码（必须在所有中文输出之前）
chcp 65001 >nul

rem 核心逻辑：切换到D盘并读取目录（中文正常显示）
echo 切换到D盘...
D: 
dir  
echo D盘读取完成