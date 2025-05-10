@echo off
:loop
curl -L https://airblue.com/bookings
timeout /t 1 >nul
goto loop
