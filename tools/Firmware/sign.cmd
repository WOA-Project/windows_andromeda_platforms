@echo off
set SIGNING_CERT=\SecureBoot\Certs\private\OEMA0-RootPK.pfx
set Catalog=%1

set WINDOWS_KIT_ARCH_FOLDER=%PROCESSOR_ARCHITECTURE%
if %WINDOWS_KIT_ARCH_FOLDER%==AMD64 (
    set WINDOWS_KIT_ARCH_FOLDER=x64
)

"%ProgramFiles(x86)%\Windows Kits\10\bin\10.0.22621.0\%WINDOWS_KIT_ARCH_FOLDER%\signtool.exe" sign /td sha256 /fd sha256 /f "%SIGNING_CERT%" /p "" /tr http://timestamp.digicert.com "%Catalog%"