@echo off
set NAME=AI-Course-Fundamentals
title %NAME%
color 0A
set url=https://github.com/Wind-Kyle/ai-course-fundamentals/
set branch=origin/master

goto fetch
goto report_issue


:initialize
echo.
echo Initializing git ...
git init
git remote add %branch% %url%


:fetch
if not exist "%CD%\.git" goto initialize
echo.
echo Updating for latest files ...
echo.
cd "%CD%"
git reset --hard FETCH_HEAD
git fetch --all


:report_issue
echo.
echo Please check the issue, before report it.
echo :: %url% ::
echo.
set /P menu=Do you want to go to the Issues page? (y/n):
if "%menu%"=="y" start https://github.com/Wind-Kyle/ai-course-fundamentals/issues/
if "%menu%"=="n" echo Good Bye!
pause
