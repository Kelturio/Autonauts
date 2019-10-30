@echo off
color 0a
set ScriptDir=%~dp0
set ScriptDir=%ScriptDir:~0,-1%
set Source=sandbox
echo Source=%Source%
rem set python="%ProgramFiles%\Python36\python.exe" 
rem echo python=%python%
set FileIn="%ScriptDir%\Saves\%Source%\World.txt"
echo FileIn=%FileIn%
set FileOut="%ScriptDir%\Saves\%Source%H\World.txt"
echo FileOut=%FileOut%

mkdir "%ScriptDir%\Saves\%Source%H\"

copy /Y "%ScriptDir%\Saves\%Source%\Recording.txt" "%ScriptDir%\Saves\%Source%H\Recording.txt"
copy /Y "%ScriptDir%\Saves\%Source%\Summary.txt" "%ScriptDir%\Saves\%Source%H\Summary.txt"
copy /Y "%ScriptDir%\Saves\%Source%\Thumbnail.jpg" "%ScriptDir%\Saves\%Source%H\Thumbnail.jpg"

python -m json.tool %FileIn% %FileOut%

rem timeout /t 4

rem pause
rem timeout /t 16
goto:eof
