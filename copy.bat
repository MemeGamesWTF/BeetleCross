@echo off
:: Set the source folder where the PNG files are located
set "sourceDir=%~dp0MemeGamesAssets"

:: Check if the source folder exists
if not exist "%sourceDir%" (
    echo The folder "MemeGamesAssets" does not exist in the current directory.
    pause
    exit /b
)

:: Loop through all folders in the same directory as the batch file
for /d %%F in ("%~dp0*") do (
    if not "%%~nxF"=="MemeGamesAssets" (
        echo Copying PNG files to %%F
        xcopy "%sourceDir%\*.png" "%%F\" /Y
    )
)

echo Done!
pause
