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

REM Epsilon Half Split 128GB
%PROCESSOR_ARCHITECTURE%\FirmwareGen.exe -w %DriveLetter%: -i %WINDOWS_ISO_IMAGE_INDEX% -v %WINDOWS_ISO_IMAGE_VERSION% -o "%CD%\FFUs" -d "%CD%\..\.." -p %CD%\DeviceProfiles\EpsilonHalfSplit128GB.xml
call resign_ffu.cmd "%CD%\FFUs\OEMEP_128GB_HalfSplit.ffu"

REM Epsilon Half Split 256GB
%PROCESSOR_ARCHITECTURE%\FirmwareGen.exe -w %DriveLetter%: -i %WINDOWS_ISO_IMAGE_INDEX% -v %WINDOWS_ISO_IMAGE_VERSION% -o "%CD%\FFUs" -d "%CD%\..\.." -p %CD%\DeviceProfiles\EpsilonHalfSplit256GB.xml
call resign_ffu.cmd "%CD%\FFUs\OEMEP_256GB_HalfSplit.ffu"

REM Epsilon Maximized for Windows
%PROCESSOR_ARCHITECTURE%\FirmwareGen.exe -w %DriveLetter%: -i %WINDOWS_ISO_IMAGE_INDEX% -v %WINDOWS_ISO_IMAGE_VERSION% -o "%CD%\FFUs" -d "%CD%\..\.." -p %CD%\DeviceProfiles\EpsilonMaximizedForWindows.xml
call resign_ffu.cmd "%CD%\FFUs\OEMEP_MaximizedForWindows.ffu"

REM Zeta Half Split 128GB
%PROCESSOR_ARCHITECTURE%\FirmwareGen.exe -w %DriveLetter%: -i %WINDOWS_ISO_IMAGE_INDEX% -v %WINDOWS_ISO_IMAGE_VERSION% -o "%CD%\FFUs" -d "%CD%\..\.." -p %CD%\DeviceProfiles\ZetaHalfSplit128GB.xml
call resign_ffu.cmd "%CD%\FFUs\OEMZE_128GB_HalfSplit.ffu"

REM Zeta Half Split 256GB
%PROCESSOR_ARCHITECTURE%\FirmwareGen.exe -w %DriveLetter%: -i %WINDOWS_ISO_IMAGE_INDEX% -v %WINDOWS_ISO_IMAGE_VERSION% -o "%CD%\FFUs" -d "%CD%\..\.." -p %CD%\DeviceProfiles\ZetaHalfSplit256GB.xml
call resign_ffu.cmd "%CD%\FFUs\OEMZE_256GB_HalfSplit.ffu"

REM Zeta Half Split 512GB
REM %PROCESSOR_ARCHITECTURE%\FirmwareGen.exe -w %DriveLetter%: -i %WINDOWS_ISO_IMAGE_INDEX% -v %WINDOWS_ISO_IMAGE_VERSION% -o "%CD%\FFUs" -d "%CD%\..\.." -p %CD%\DeviceProfiles\ZetaHalfSplit512GB.xml
REM call resign_ffu.cmd "%CD%\FFUs\OEMZE_512GB_HalfSplit.ffu"

REM Zeta Maximized for Windows
%PROCESSOR_ARCHITECTURE%\FirmwareGen.exe -w %DriveLetter%: -i %WINDOWS_ISO_IMAGE_INDEX% -v %WINDOWS_ISO_IMAGE_VERSION% -o "%CD%\FFUs" -d "%CD%\..\.." -p %CD%\DeviceProfiles\ZetaMaximizedForWindows.xml
call resign_ffu.cmd "%CD%\FFUs\OEMZE_MaximizedForWindows.ffu"

REM Unmount ISO image
powershell -command "Dismount-DiskImage -ImagePath '%WINDOWS_ISO_IMAGE%'"