@echo off
set /a short_break_count=0

:loop
timeout /t 1200 >nul
set /a short_break_count+=1


if %short_break_count%==4 (
    echo.
    echo "Time for an extended break! Move around, stretch, and relax your eyes."
    msg * "Extended break! Get up, stretch, and relax your eyes for 10-15 minutes."
    timeout /t 600 >nul
    set /a short_break_count=0
) else (

    if %short_break_count%==2 (
    echo.
    echo "Check your screen brightness. Adjust it to match the ambient light."
    msg * "Reminder: Check your screen brightness. Adjust it if necessary to avoid eye strain."
) else (
    echo.
    echo "Time to take a break! Look away from the screen and focus on something 20 feet away."
    echo "Remember the 20-20-20 rule!"
    msg * "Time to take a break! Look away from the screen and focus on something 20 feet away. Remember the 20-20-20 rule!"
))

goto loop
