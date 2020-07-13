@echo off
color 0a
cd data
type title.txt
echo press any button to continue
set key1=1
set lr=1
set kl=1
set kn=1
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
echo 5. back (to go back)
echo press any button to continue
pause >nul
goto #1



:#1
cls
echo you are at a house
echo you do not know how you got there
:#1a
Set /p b=
if "%b%" == "go house" goto house
if "%b%" == "look at house" echo the house looks abandoned, mabey you should stay out
goto #1a

:house
cls
echo inside the house it looks as if you were in a normal living room, there is a kitchen and stairs that go up
:housea
set /p b=
if "%b%" == "look at living room" goto houseb
if "%b%" == "look at kitchen" echo you should go to the kitchen to get a better look
if "%b%" == "use light switch" echo you used the light switch you should look at the living room again & set lr=2
if "%b%" == "take key" echo you grabed the key & set key1=2
if "%b%" == "go kitchen" goto kitchen & set ba=house
if "%b%" == "back" echo why whould you go back outside? the door is locked anyways
if "%b%" == "use key on door" goto housec
if "%b%" == "go stairs" goto upstairs
goto housea

:houseb
if "%lr%" == "1" echo the living room is very dark it is hard to see. there seems to be a light switch
if "%lr%" == "2" echo there are blood stains on the floor, there is also a key on the floor
goto housea

:housec
if "%key1%" == "1" echo what key?
if "%key1%" == "2" echo it doesent fit
goto housea



:kitchen
cls
echo somthing smells terible, it is hard to see in the kitchen
:kitchena
set /p b=
if "%b%" == "go livingroom" goto house
if "%b%" == "look at kitchen" goto kitchenb
if "%b%" == "use light switch" echo you used the light switch & set kl=2
if "%b%" == "take knive" echo you took a knive & set kn=2
if "%b%" == "back" goto house
if "%b%" == "look at notebook" notebook.txt
goto kitchena

:kitchenb
if "%kl%" == "1" echo somthing smells rotten, it is hard to see, there is a light switch
if "%kl%" == "2" echo you see that what smells was the garbage can, and there are multiple knives on the counter, and a notebook (you should look at it not take it)
goto kitchena

:upstairs
cls
echo you are now upstars, you seem to be in a hallway, there is a door to the left, a door to the right, and one stright ahead
:upstairsa
set /p b=
if "%b%" == "back" goto house
if "%b%" == "go living room" goto house
if "%b%" == "look at hallway" echo there is nothing else.
if "%b%" == "go stright" goto :upstairss
if "%b%" == "go left" goto :upstairss
if "%b%" == "go right" goto :upstairss
goto upstairsa

:upstairss
echo are you sure you want to %b%? you may not be able to go back.
set /p c=
if "%c%" == "yes" goto 3w
if "%c%" == "no" goto upstairsa
goto upstairsa

:3w
cls
if "%b%" == "go right" echo you went right
if "%b%" == "go left" echo you went left
if "%b%" == "go stright" echo you went stright
echo that door lead you to the end of the demo!
echo press any button to close!
pause >nul
exit
