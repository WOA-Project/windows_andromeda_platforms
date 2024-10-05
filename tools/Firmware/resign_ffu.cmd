@echo off
set SIGNING_CERT=\SecureBoot\Certs\private\OEMA0-RootPK.pfx
set WPDK="%CD%\i386"
set FFU="%CD%\FFUs\OEMEP_128GB_HalfSplit.ffu"

del SigningCab.cab
del Flash.cat

"%WPDK%\imageutility.exe" CreateSigningCab -FfuPath "%FFU%" -CabPath SigningCab.cab
"%WPDK%\imageutility.exe" ExtractCatalog -CabPath SigningCab.cab -CatalogPath Flash.cat

REM If %PROCESSOR_ARCHITECTURE%==AMD64, then it should be x64 not AMD64
REM TODO: Fix above

"%ProgramFiles(x86)%\Windows Kits\10\bin\10.0.22621.0\%PROCESSOR_ARCHITECTURE%\signtool.exe" sign /td sha256 /fd sha256 /f "%SIGNING_CERT%" /p "" /tr http://timestamp.digicert.com Flash.cat

"%WPDK%\imageutility.exe" InjectCatalog -CabPath SigningCab.cab -CatalogPath Flash.cat
"%WPDK%\imageutility.nosigcheck.exe" ProcessSigningCab -FfuPath "%FFU%" -CabPath SigningCab.cab

del SigningCab.cab
del Flash.cat