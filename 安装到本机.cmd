@echo off
chcp 65001 >nul
setlocal
set "HERE=%~dp0"
set "WORK=%TEMP%\shiguang-setup"
if not exist "%WORK%" mkdir "%WORK%" >nul 2>nul
copy /Y "%HERE%拾光工作-Setup-2.0.exe" "%WORK%\Setup.exe" >nul
if errorlevel 1 (
  echo 复制安装包到临时目录失败。
  pause
  exit /b 1
)
echo 正在从 ASCII 路径安装：%WORK%\Setup.exe
start "" /wait "%WORK%\Setup.exe"
exit /b %errorlevel%
