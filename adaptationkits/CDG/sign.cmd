@echo off
set SIGNING_CERT=\SecureBoot\Certs\private\OEMA0-RootPK.pfx
set Catalog=%1

set WINDOWS_KIT_ARCH_FOLDER=%PROCESSOR_ARCHITECTURE%
if %WINDOWS_KIT_ARCH_FOLDER%==AMD64 (
    set WINDOWS_KIT_ARCH_FOLDER=x64
)

"%WSKContentRoot%\tools\bin\i386\signtool.exe" sign /td sha256 /fd sha256 /f "%SIGNING_CERT%" /p "" /tr http://timestamp.digicert.com "%Catalog%"