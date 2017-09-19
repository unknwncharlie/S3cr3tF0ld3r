@echo off
:main
set /p status=<hidden/status.txt
set /p password=<hidden/password.txt
set /p user_pass=Enter Password:
IF NOT %password%==%user_pass% GOTO wrong_pass
IF %status%=="1" GOTO hide
IF %status%=="0" GOTO unhide

:hide
echo Hiding the folder
attrib +r +h +s hidden
@echo "0"> hidden/status.txt
GOTO exit

:unhide
echo Unhiding the folder
attrib -r -h -s hidden
@echo "1"> hidden/status.txt
GOTO exit

:wrong_pass
echo That was the wrong Password
GOTO main

:exit
echo Operation Completed
