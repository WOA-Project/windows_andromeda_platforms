@echo off
mkdir "%CD%\FFUs"

REM X23-81973_26100.1742.240906-0331.ge_release_svc_refresh_CLIENT_CONSUMER_A64FRE_en-us.iso
REM Index 3: Pro

FirmwareGen -w D: -i 3 -v 10.0.26100.1742 -o "%CD%\FFUs" -d "%CD%\..\.." -p %CD%\DeviceProfiles\EpsilonMaximizedForWindows.xml