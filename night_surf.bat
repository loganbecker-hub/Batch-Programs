@echo off
title Night Surf Automatic Shutdown

rem Aborts any new shutdown schedules
shutdown /a

rem You will enter the Hours and minutes for when to shutdown your laptop
set /p hours="Enter the hours:"
set /p minutes="Enter the minutes:"

rem It will convert the hours and minutes in seconds and add them together
set /a hsecs=%hours%*60*60
set /a msecs=%minutes%*60
set /a Total=%hsecs%+%msecs%

rem Displays the hours, minutes and total seconds
echo Hours to seconds = %hsecs% seconds
echo Minutes to seconds = %msecs% seconds
echo Total seconds = %Total% seconds

rem This is the command that shutsdown the laptop
shutdown /s /t %Total%
echo Shutdown will be in %hours% hours and %minutes% minutes
pause>>nul
