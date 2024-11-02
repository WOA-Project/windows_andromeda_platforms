@echo off

REM X23-81973_26100.1742.240906-0331.ge_release_svc_refresh_CLIENT_CONSUMER_A64FRE_en-us.iso
REM Index 1: Home
REM Index 2: Home Single Language
REM Index 3: Pro

set WINDOWS_ISO_IMAGE=%USERPROFILE%\Downloads\X23-81973_26100.1742.240906-0331.ge_release_svc_refresh_CLIENT_CONSUMER_A64FRE_en-us.iso
set WINDOWS_ISO_IMAGE_INDEX=3
set WINDOWS_ISO_IMAGE_VERSION=10.0.26100.1742

REM Mount ISO file
powershell -command "(Mount-DiskImage -ImagePath '%WINDOWS_ISO_IMAGE%' | Get-Volume).DriveLetter" > tmpFile
set /p DriveLetter= < tmpFile
del tmpFile

REM Generate Base Virtual Disk file
REM Generate FFU Files

REM Epsilon Maximized for Windows
%PROCESSOR_ARCHITECTURE%\FirmwareGen.exe -w %DriveLetter%: -i %WINDOWS_ISO_IMAGE_INDEX% -v %WINDOWS_ISO_IMAGE_VERSION% -o "%CD%\FFUs" -d "%CD%\..\.." -p %CD%\DeviceProfiles\EpsilonMaximizedForWindows.xml -t "cmd.exe /c sign.cmd"

REM Unmount ISO image
powershell -command "Dismount-DiskImage -ImagePath '%WINDOWS_ISO_IMAGE%'"