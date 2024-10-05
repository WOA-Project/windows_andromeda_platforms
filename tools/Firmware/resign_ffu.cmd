@echo off
set SIGNING_CERT=\SecureBoot\Certs\private\OEMA0-RootPK.pfx
set WPDK="%CD%\i386"
set FFU=%1

del SigningCab.cab
del Flash.cat

"%WPDK%\imageutility.exe" CreateSigningCab -FfuPath "%FFU%" -CabPath SigningCab.cab
"%WPDK%\imageutility.exe" ExtractCatalog -CabPath SigningCab.cab -CatalogPath Flash.cat

set WINDOWS_KIT_ARCH_FOLDER=%PROCESSOR_ARCHITECTURE%
if %WINDOWS_KIT_ARCH_FOLDER%==AND64 (
    set WINDOWS_KIT_ARCH_FOLDER=x64
)

"%ProgramFiles(x86)%\Windows Kits\10\bin\10.0.22621.0\%WINDOWS_KIT_ARCH_FOLDER%\signtool.exe" sign /td sha256 /fd sha256 /f "%SIGNING_CERT%" /p "" /tr http://timestamp.digicert.com Flash.cat

"%WPDK%\imageutility.exe" InjectCatalog -CabPath SigningCab.cab -CatalogPath Flash.cat
"%WPDK%\imageutility.nosigcheck.exe" ProcessSigningCab -FfuPath "%FFU%" -CabPath SigningCab.cab

del SigningCab.cab
del Flash.cat