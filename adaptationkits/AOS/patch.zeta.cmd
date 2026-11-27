@echo off
set EFIESP=%1
set MainOS=%2
set VIRT_EFIESP=%3

ren %EFIESP%\efi\Microsoft\Boot\SecureBootPolicy.p7b SecureBootPolicy.p7b.bak
rem copy SiPolicy.p7b %EFIESP%\efi\Microsoft\Boot\

bcdedit /store %EFIESP%\efi\Microsoft\Boot\BCD /set {default} testsigning on
bcdedit /store %EFIESP%\efi\Microsoft\Boot\BCD /set {default} nointegritychecks on

bcdedit /store %VIRT_EFIESP%\efi\Microsoft\Boot\BCD /set {default} testsigning on
bcdedit /store %VIRT_EFIESP%\efi\Microsoft\Boot\BCD /set {default} nointegritychecks on

REM I seriously do not have the courage at the moment to fix this god damned
REM issue in the firmware so this will do til pigs will have wings

takeown /F %MainOS%\Windows\System32\EnableWcosUefiSbTest.exe
icacls %MainOS%\Windows\System32\EnableWcosUefiSbTest.exe /grant Users:F
ren %MainOS%\Windows\System32\EnableWcosUefiSbTest.exe EnableWcosUefiSbTest.exe.bak