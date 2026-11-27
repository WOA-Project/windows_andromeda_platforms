# Building Windows 8828080 for Surface Duo (1st Gen)

> [!CAUTION]
> This guide is incomplete and is work in progress. You will not currently get a working image on your own by following this.
> Do not ask for help yet. You will be ignored or told the same as above.

WCOS (Windows Core OS) AOS Product, more commonly known as __Windows 8828080__ or __AndromedaOS__ is a cancelled Operating System originally meant to run on Microsoft own Surface Duo device.

## Prerequisites

- An internet service provider
- Very Advanced IT Knowledge
- Oath that you have never ever used any LLM in your entire life
- A Windows 10 build 18236 Desktop virtual machine *or* at the very maximum, Windows 11 build 22000. (Any newer OS will not work for building an image here).
- A copy of the Windows 8828080 build 18236 Windows System Kit for ARM64 (Internal Variant) (Non endorsed Mirror: http://fullflash.pvabel.net/DuoWOA/WSKs/rs_prerelease_cfga/18236.1000.180905-1440/wd.7z)
- .NET 8.0 Runtime Installer

## Environment Setup

- Install the Windows Desktop Operating System Build 18236 in a virtual machine (X86, AMD64 or ARM64)
- Extract _WSK_kit.7z into the virtual machine C:\Program Files (x86)\Windows Kits\10 folder.
- Install the .NET 8.0 Runtime in the virtual machine
- Download the Build 18236 WSK in the virtual machine

- Clone this very repository using ```git clone https://github.com/WOA-Project/windows_andromeda_platforms```
- Change directory to ```windows_andromeda_platforms\adaptationkits\AOS```
- Extract your copy of the WSK (only the files under wd\compilerTemp\BMT.WCOSz4ic5trk.hm1\DeviceImaging\AndromedaOS\FMFiles) into ```windows_andromeda_platforms\adaptationkits\AOS\FMFiles\arm64\AndromedaOS```
- Extract your copy of the WSK (only the folders under wd\in\BuildChunkArtifact\98158f2a-e7b8-5335-f797-0e4c74a379ea\arm64fre\SPKG) into ```windows_andromeda_platforms\adaptationkits\AOS\MSPackages```
- Open a Command Prompt (read, cmd.exe NOT powershell.exe or pwsh.exe) as Administrator
- Change directory to ```windows_andromeda_platforms\adaptationkits\AOS```

## Build

- Run ```bootstrap.epsilon.cmd```
- Once done, you will get a Flash.ffu inside the ```windows_andromeda_platforms\adaptationkits\AOS\Output``` folder.

## Install

- Flash the FFU file onto the device using UFP (Unified Flashing Platform)

## Test

- Load UEFI
- Install your highest set of hopes and expectations in order for the OS to boot without the need of extra duct tape (Duct tape sold separately otherwise).