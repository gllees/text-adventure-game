@echo off
color 0a
cd data
type title.txt
echo press any button to continue
pause >nul
goto start



:start
cls
echo the commands in this game are simple
echo 1. look at {what you want to look at}
echo 2. use {what you want to use} on {what you want to use it on}
echo 2.5. use {what you want to use}
echo 3. take {what you want to take}
echo 4. go {where you want to go}
echo press any button to continue
pause >nul
goto #1



:#1
cls
echo you are at a house
echo you do not know how you got there
:#1a
Set /p a=
if "%a%" == "go house" goto house
if "%a%" == "look at house" echo the house looks abandoned, mabey you should stay out
goto #1a

:house
cls
set lr=1
echo inside the house it looks as if it were a normal living room, there is a kichen and stairs that go up
:housea
set /p b=
if "%b%" == "look at living room" goto houseb
if "%b%" == "use light switch" echo you used the light switch you should look at the living room again & set lr=2
if "%b%" == "take key" echo you grabed the key & goto housec
goto housea

:houseb
if "%lr%" == "1" echo the living room is very dark it is hard to see. there seems to be a light switch
if "%lr%" == "2" echo there are blood stains on the floor, there is also a key on the floor
goto housea

:housec
set /p b=
cls
echo you finished the demo
echo push any key to close
pause >nul