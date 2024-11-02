@echo off

echo Copying Driver Components...
xcopy /cheriky ..\..\components .\MSPackages\Microsoft\Andromeda855\ARM64\fre\Drivers\

echo Copying WSK Components...
xcopy /cheriky "%ProgramFiles(x86)%\Windows Kits\10\tools .\

echo Launching ImageApp...
set WSKContentRoot=%CD%
call build.epsilon.cmd

REM Mount VHDX
echo Mounting VHDX for patching...
powershell -command "(Mount-DiskImage -ImagePath '%CD%\Output\Flash.vhdx' | Get-Volume -FileSystemLabel EFIESP).DriveLetter" > tmpFile
set /p DriveLetter= < tmpFile
del tmpFile

REM TODO: Assign letter to EFIESP

echo Patching...
call patch.epsilon.cmd %DriveLetter%

REM Unmount VHDX
echo Unmounting VHDX...
powershell -command "Dismount-DiskImage -ImagePath '%CD%\Output\Flash.vhdx'"

echo Generating FFU Image...
%PROCESSOR_ARCHITECTURE%\img2ffu.exe -i %CD%\Output\Flash.vhdx -f Output\Flash.ffu -c 16384 -s 4096 -p "Microsoft Corporation.Surface.Surface Duo.1930;OEMB1.*.OEMB1 Product.*;OEMEP.*.OEMEP Product.*" -o 10.0.20279.1002 -b 4000 -v V2 -d VenHw(860845C1-BE09-4355-8BC1-30D64FF8E63A) -l false -e .\provisioning-partitions.txt -t "cmd.exe /c sign.cmd"