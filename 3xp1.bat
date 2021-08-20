@ECHO OFF
title 3xp1 by Nuclide
set steps = 0
set /p number=Original Number: 
color a
:loopz
set /a steps =%steps%+1
set /a modulo=%number% %% 2
if %modulo%==0 (
    set /a number = %number% / 2
) else (
    set /a number = %number% * 3 + 1
)
echo %number%											{%steps% steps taken}
if "%number%"=="1" color c && pause >nul
goto loopz