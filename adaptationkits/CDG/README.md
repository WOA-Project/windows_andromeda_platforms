# Building Windows 10X for Surface Duo (1st Gen)

> [!CAUTION]
> This guide is incomplete and is work in progress. You will not currently get a working image on your own by following this.
> Do not ask for help yet. You will be ignored or told the same as above.

WCOS (Windows Core OS) CDG (Charles De Gaulle) Product, more commonly known as __Windows 10X__ or __ModernPC__ is a cancelled Operating System originally meant to run on a wide range of wide screen dual screen and single screen devices from a bunch of OEM partners, and Microsoft own Surface Neo device.

## Prerequisites

- An internet service provider
- Very Advanced IT Knowledge
- Oath that you have never ever used any LLM in your entire life
- A Windows 10 build 20279 Desktop virtual machine *or* at the very maximum, Windows 11 build 22000. (Any newer OS will not work for building an image here).
- A copy of the Windows 10 build 20279 Assessment and Deployment Toolkit (ADK).
- A copy of the Windows 10X build 20279 Windows System Kit for ARM64 (Internal Variant) (Non endorsed Mirror: https://archive.org/details/windows10xuups)
- .NET 8.0 Runtime Installer

## Environment Setup

- Install the Windows Desktop Operating System Build 20279 in a virtual machine (X86, AMD64 or ARM64)
- Install the Windows ADK for Build 20279 in the virtual machine
- Install the .NET 8.0 Runtime in the virtual machine
- Download the Build 20279 WSK in the virtual machine

- Clone this very repository using ```git clone https://github.com/WOA-Project/windows_andromeda_platforms```
- Change directory to ```windows_andromeda_platforms\adaptationkits\CDG```
- Extract your copy of the WSK into ```windows_andromeda_platforms\adaptationkits\MSPackages```
- Open a Command Prompt (read, cmd.exe NOT powershell.exe or pwsh.exe) as Administrator
- Change directory to ```windows_andromeda_platforms\adaptationkits\CDG```

## Build

- Run ```bootstrap.epsilon.cmd```
- If you get any failure, make sure your copy has correct license xml file names under ```windows_andromeda_platforms\adaptationkits\CDG\MSPackages\Appx```. You may have to manually rename those!
- Once done, you will get a Flash.ffu inside the ```windows_andromeda_platforms\adaptationkits\CDG\Output``` folder.

## Install

- Flash the FFU file onto the device using UFP (Unified Flashing Platform)

## Test

- Load UEFI
- Install your highest set of hopes and expectations in order for the OS to boot without the need of extra duct tape (Duct tape sold separately otherwise).