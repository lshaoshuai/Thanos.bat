# Thanos
Thanos command,delete half of file in your system

- 先找到当前目录下所有文件
- 存到txt文本中
- 通过随机数找到txt的行数，并删除该行
- 删除txt文本的总行数的一半

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
