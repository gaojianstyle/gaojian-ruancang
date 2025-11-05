@echo off
rem 解决中文编码问题（设置为UTF-8）
chcp 65001 >nul

rem 核心逻辑：切换到D盘并读取目录
echo 切换到D盘 D: drive...
rem 切换到D盘根目录
D:  
rem 读取目录内容（等效于Get-ChildItem）
dir
echo D：驱动器读取完成
