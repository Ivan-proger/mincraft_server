@ECHO OFF
title НазваниеВашегоСервера / Core [#Тут идёт сборка]
chcp 65001

:start_options
SET var=0
cls
echo ------------------------------------------------------------------------------
echo. Выберите количество RAM которое вы хотите использовать
echo ------------------------------------------------------------------------------
echo  1    Стандартный запуск
echo  2    Использовать 4GB
echo  3    Использовать 6GB
echo  4    Использовать 8GB
echo  5    Закрыть консоль и отменить запуск
echo ------------------------------------------------------------------------------
echo.

SET /p var= ^> Введите в консоль [1-5]:

if "%var%"=="0" goto start_options
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3
if "%var%"=="4" goto op4
if "%var%"=="5" goto end

echo. Выбранная опция запуска не является действительной.
echo.
pause
echo.
goto:start_options

:op1
    echo.
    echo. Стандартный запуск.
    echo. 
	java -jar -Dfile.encoding=UTF-8 Core.jar nogui
        pause
    echo.
    pause
    goto:start_options

:op2
    echo.
    echo. Вы выбрали 4GB RAM.
    echo.
        java -Xmx4G -Xms4G -jar -Dfile.encoding=UTF-8 Core.jar nogui
        pause
    echo.
    pause
    goto:start_options

:op3
    echo.
    echo. Вы выбрали 6GB RAM.
    echo.
        java -Xmx6G -Xms6G -jar -Dfile.encoding=UTF-8 Core.jar nogui
        pause
    echo.
    pause
    goto:start_options
 
:op4
    echo.
    echo. Вы выбрали 8GB RAM.
    echo.
        java -Xmx8G -Xms8G -jar -Dfile.encoding=UTF-8 Core.jar nogui
        pause
    echo.
    pause
    goto:start_options

:end
    @cls&exit