@echo off
REM Counter-Strike 2 Autoexec Setup Script

REM Set the path to your autoexec.cfg file (update if your Steam library is elsewhere)
set AUTOEXEC_PATH="C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\game\csgo\cfg\autoexec.cfg"

REM Check if autoexec.cfg exists in the current directory
if not exist autoexec.cfg (
    echo autoexec.cfg not found in the current directory.
    exit /b 1
)

REM Copy autoexec.cfg to the game config folder
copy /Y autoexec.cfg %AUTOEXEC_PATH%
if errorlevel 1 (
    echo Failed to copy autoexec.cfg. Please check permissions.
    exit /b 1
) else (
    echo autoexec.cfg successfully copied to %AUTOEXEC_PATH%
)

REM Display recommended launch options
echo.
echo Add these to your Steam Launch Options:
echo -freq 144 -fullscreen -console +exec autoexec.cfg
echo.
pause