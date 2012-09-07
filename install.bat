@echo off
rem set the sublime config directory
setlocal
if "%SUBLIME_CONFIG_DIR%" == "" set SUBLIME_CONFIG_DIR=%APPDATA%\Sublime Text 2
rem Check for directory existance
dir "%SUBLIME_CONFIG_DIR%" /D
if not errorlevel 1 goto copyPackages else goto noConfigDir

:noConfigDir
echo Aborting because "%SUBLIME_CONFIG_DIR%" does not appear to be the Sublime Text
echo packages directory.  You can determine the correct configuration directory
echo using the [Preferences ^> Browse Packages...] menu option in Sublime Text.
echo Then specify it at the command line like:
echo set SUBLIME_CONFIG_DIR="path\to\sublime\Packages"
echo install.bat
endlocal
goto :eof

:copyPackages
xcopy "%cd%\Packages" "%SUBLIME_CONFIG_DIR%\Packages" /S /Y
endlocal
