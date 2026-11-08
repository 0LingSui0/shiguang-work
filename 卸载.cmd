@echo off
chcp 65001 >nul
setlocal
set "UNINST=%LOCALAPPDATA%\Programs\ShiguangWork\Uninstall.exe"
if not exist "%UNINST%" (
  echo 没有找到卸载程序：%UNINST%
  pause
  exit /b 1
)
start "" /wait "%UNINST%"
exit /b %errorlevel%
