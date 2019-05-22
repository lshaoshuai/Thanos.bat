# Thanos
Thanos command,delete half of file in your system

for /f "skip=%r% delims=" %%a in (1.txt) do (

echo %%a

if "!n!"=="!max!" pause

goto OK

)

change to

for /f "skip=%r% delims=" %%a in (1.txt) do (

del /f /s /q %%a

if "!n!"=="!max!" pause

goto OK

)

问题1:文件名出现空格执行会找不到文件

问题2:系统找不到文件
