@echo off
setlocal enabledelayedexpansion 
echo Thanos Start
for /R D:\ %%c in (*) do (echo %%c >> 1.txt)
for /f %%a in (' find /c /v "" ^<"1.txt" ') do set n=%%a
echo 最大的数为!n!
set /a max = !n! / 2
set /a max-=1
echo 二分之一后!max!
set /a n-=1
:OK
set /a n-=1
echo 共有!n!个数
set /a r=!random!%%!n!+1
echo 随机数为!r!
for /f "skip=%r% delims=" %%a in (1.txt) do (
echo %%a
if "!n!"=="!max!" pause
goto OK
)
pause
