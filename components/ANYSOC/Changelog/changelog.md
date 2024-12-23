## Surface Duo BSP - Version 2412.74 (Cherry blossom)

> [!NOTE]
> Higher thermals in Windows is currently expected and is not dangerous

<details>
  <summary>General information</summary>
  <p>
**Released:** 12/24/2024 00:00 AM UTC+2

**Quality:** Preview

You can view compatibility for this release, along with important information and what works, and what doesn't at this link: https://github.com/WOA-Project/SurfaceDuo-Guides/blob/main/Status.md
  </p>
</details>

<details>
  <summary>Important information</summary>
  <p>
- ⚠️ For users who are updating from an earlier release than version 2301.93, please reinstall.

- ⚠️ If you need dual boot, you will have to make your own image. Please follow this guidance: https://github.com/WOA-Project/SurfaceDuo-Guides/blob/main/Install/DualBoot.md

- ⚠️ You need to backup your original boot image for OTAs to work with Android. When you get an OTA, you will want to revert your boot image for the update to work, or you'll have to use an official OTA recovery package.
  </p>
</details>

---

[▶️ Install Surface Duo (1st Gen) UEFI and Drivers for Windows from scratch (Clean Installation)](https://github.com/WOA-Project/SurfaceDuo-Guides/blob/main/Install/Client/InstallWindows-SurfaceDuo1.md)

[▶️ Install Surface Duo 2 UEFI and Drivers for Windows from scratch (Clean Installation)](https://github.com/WOA-Project/SurfaceDuo-Guides/blob/main/Install/Client/InstallWindows-SurfaceDuo2.md)

[▶️ Update from an older version of Surface Duo UEFI and Drivers (both got updated with v2412.74)](https://github.com/WOA-Project/SurfaceDuo-Guides/blob/main/Update/UpdateDriversAndUEFI.md)

---

### Clean Installation & Update Files

These files are to be used when clean installing Windows on your Surface Duo or updating an existing installation

<details>

<table>
<tr>
<td>Drivers File</td>
<td>UEFI File</td>
<td>Target Device</td>
<td>OS Version</td>
<td>Notes</td>
</tr>
<tr>
<td>

[SurfaceDuo-Drivers-v2412.74-Desktop-Epsilon.7z](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/SurfaceDuo-Drivers-v2412.74-Desktop-Epsilon.7z)
</td>
<td>

- [Fast Boot](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.1st.Gen.UEFI-v2412.74.Fast.Boot.zip)
- [Dual Boot for FW 2022.902.48 (Latest OTA for Surface Duo (1st Gen) devices)](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.1st.Gen.UEFI-v2412.74.Dual.Boot.zip)
- [FD for making your own Dual Boot Image](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.1st.Gen.UEFI-v2412.74.FD.for.making.your.own.Dual.Boot.Image.zip)
</td>
<td>Surface Duo (1st Gen)</td>
<td>Windows 10 Version 2004 and higher</td>
<td><details>

N/A
</details></td>
</tr>
<tr>
<td>

[SurfaceDuo-Drivers-v2412.74-Desktop-Zeta.7z](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/SurfaceDuo-Drivers-v2412.74-Desktop-Zeta.7z)
</td>
<td>

- [Fast Boot](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.2.UEFI-v2412.74.Fast.Boot.zip)
- [Dual Boot for FW 2023.501.541 (Latest OTA for Surface Duo 2 devices)](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.2.UEFI-v2412.74.Dual.Boot.zip)
- [FD for making your own Dual Boot Image](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.2.UEFI-v2412.74.FD.for.making.your.own.Dual.Boot.Image.zip)
</td>
<td>Surface Duo 2</td>
<td>Windows 11 Version 24H2 and higher</td>
<td><details>

N/A
</details></td>
</tr>
<tr>
<td>

[SurfaceDuo-Drivers-v2412.74-Desktop-Epsilon.7z](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/SurfaceDuo-Drivers-v2412.74-Desktop-Epsilon.7z)
</td>
<td>

- [Fast Boot](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.1st.Gen.UEFI-v2412.74.Secure.Boot.Disabled.Fast.Boot.zip)
- [Dual Boot for FW 2022.902.48 (Latest OTA for Surface Duo (1st Gen) devices)](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.1st.Gen.UEFI-v2412.74.Secure.Boot.Disabled.Dual.Boot.zip)
- [FD for making your own Dual Boot Image](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.1st.Gen.UEFI-v2412.74.Secure.Boot.Disabled.FD.for.making.your.own.Dual.Boot.Image.zip)
</td>
<td>Surface Duo (1st Gen)</td>
<td>Windows 10 Version 1803 to Windows 10 Version 1909</td>
<td><details>

N/A
</details></td>
</tr>
</table>

#### If you are clean installing:

- Download the Driver File onto your Computer
- Extract it
- Connect your Surface Duo to your computer in Mass Storage mode
- Double Tap on the `OfflineUpdater.cmd` file
- Enter the Drive Letter for the Surface Duo Windows Partition (See This PC for knowing this)
- Wait til the processes finishes
- Reboot your device
- Boot the device using the new UEFI version linked alongside the Driver File above

#### If you are updating an existing installation:

- Download the Driver File onto your Surface Duo
- Extract it
- Double Tap on the `OnlineUpdater.cmd` file
- Wait til the processes finishes
- Reboot your device
- Boot the device using the new UEFI version linked alongside the Driver File above

In case you're having issues/troubles updating within the OS on the device, you can always put your phone into mass storage, and use `OfflineUpdater.cmd` to update the drivers this way, and then use the new UEFI version linked alongside the Driver File above.

</details>

---

### Full Flash Update Files

We're now providing FFU files directly from the release page outside of Telegram. The FFU files are also still uploaded on Telegram FFU channel, and they match this very specific release.

Learn more about FFU files: [FFU Flashing Guide](https://github.com/WOA-Project/SurfaceDuo-Guides/blob/main/Install/Client/FlashingFFU.md)

<details>

### Surface Duo (1st Gen)

UEFI files:
- [Fast Boot](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.1st.Gen.UEFI-v2412.74.Fast.Boot.zip)
- [Dual Boot for FW 2022.902.48 (Latest OTA for Surface Duo (1st Gen) devices)](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.1st.Gen.UEFI-v2412.74.Dual.Boot.zip)
- [FD for making your own Dual Boot Image](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.1st.Gen.UEFI-v2412.74.FD.for.making.your.own.Dual.Boot.Image.zip)

FFU files:
<table>
<tr>
<td>FFU File</td>
<td>OS Version</td>
<td>Notes</td>
</tr>
<tr>
<td>
For 128GB variants

[OEMEP_128GB_HalfSplit.ffu](https://fullflash.pvabel.net/DuoWOA/v2412.74/OEMEP_128GB_HalfSplit.ffu)

Size: 7.06 GB

SHA1: `F8019308DFEAFB9D08AFA0D129700A51AF26F7DB`
</td>
<td>Windows 11 Version 24H2 (26100.1742) (en-US)</td>
<td><details>

Assumed Compatibility with 256gb variants (may have issues but should work, if issues arise we're not responsible and you should be able to recover either way, the main issue is more the split being 64(Windows)/192(Android) than anything else!).

1) After "Getting Ready" boot, on the second boot, the device may show a black screen, if this happens, press the power button once and it will continue to oobe after a minute. Be patient and don't press it more than once.
</details></td>
</tr>
<tr>
<td>
For 256GB variants

[OEMEP_256GB_HalfSplit.ffu](https://fullflash.pvabel.net/DuoWOA/v2412.74/OEMEP_256GB_HalfSplit.ffu)

Size: 7.06 GB

SHA1: `9D20079250E8C1E73153DF25044A7454CF05FDB2`
</td>
<td>Windows 11 Version 24H2 (26100.1742) (en-US)</td>
<td><details>

No Compatibility at all with 128GB, please do not flash on a 128GB Surface Duo!

1) After "Getting Ready" boot, on the second boot, the device may show a black screen, if this happens, press the power button once and it will continue to oobe after a minute. Be patient and don't press it more than once.
</details></td>
</tr>
<tr>
<td>
4GB Android, everything else for Windows

[OEMEP_MaximizedForWindows.ffu](https://fullflash.pvabel.net/DuoWOA/v2412.74/OEMEP_MaximizedForWindows.ffu)

Size: 7.06 GB

SHA1: `166F09D2459330089435EC41CA29D3D679E7C088`
</td>
<td>Windows 11 Version 24H2 (26100.1742) (en-US)</td>
<td><details>

Official Variant: 4GB only for Android, everything else for Windows, 256GB users may have to expand the MainOS partition using Disk Management in windows by using the "Extend Partition" option.

1) After "Getting Ready" boot, on the second boot, the device may show a black screen, if this happens, press the power button once and it will continue to oobe after a minute. Be patient and don't press it more than once.
</details></td>
</tr>
</table>


### Surface Duo 2

UEFI Files:
- [Fast Boot](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.2.UEFI-v2412.74.Fast.Boot.zip)
- [Dual Boot for FW 2023.501.541 (Latest OTA for Surface Duo 2 devices)](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.2.UEFI-v2412.74.Dual.Boot.zip)
- [FD for making your own Dual Boot Image](https://github.com/WOA-Project/SurfaceDuo-Releases/releases/download/2412.74/Surface.Duo.2.UEFI-v2412.74.FD.for.making.your.own.Dual.Boot.Image.zip)

FFU Files
<table>
<tr>
<td>FFU File</td>
<td>OS Version</td>
<td>Notes</td>
</tr>
<tr>
<td>
For 128GB variants

[OEMZE_128GB_HalfSplit.ffu](https://fullflash.pvabel.net/DuoWOA/v2412.74/OEMZE_128GB_HalfSplit.ffu)

Size: 6.52 GB

SHA1: `F98EA80722D2A7858B2522B919EDED9763AFD62B`
</td>
<td>Windows 11 Version 24H2 (26100.1742) (en-US)</td>
<td><details>

Assumed Compatibility with 256gb and 512gb variants (may have issues but should work, if issues arise we're not responsible and you should be able to recover either way, the main issue is more the split being 64(Windows)/192(Android) than anything else!).

1) After "Getting Ready" boot, on the second boot, the device may show a black screen, if this happens, press the power button once and it will continue to oobe after a minute. Be patient and don't press it more than once.
</details></td>
</tr>
<tr>
<td>
For 256GB variants

[OEMZE_256GB_HalfSplit.ffu](https://fullflash.pvabel.net/DuoWOA/v2412.74/OEMZE_256GB_HalfSplit.ffu)

Size: 6.46 GB

SHA1: `D2B09267806D8EF6B889D504B268D03EDBBF3CD5`
</td>
<td>Windows 11 Version 24H2 (26100.1742) (en-US)</td>
<td><details>

No Compatibility at all with 128GB, please do not flash on a 128GB Surface Duo! Assumed Compatibility with 512gb variants (may have issues but should work, if issues arise we're not responsible and you should be able to recover either way, the main issue is more the split being different than anything else!). 

1) After "Getting Ready" boot, on the second boot, the device may show a black screen, if this happens, press the power button once and it will continue to oobe after a minute. Be patient and don't press it more than once.
</details></td>
</tr>
<tr>
<td>
4GB Android, everything else for Windows

[OEMZE_MaximizedForWindows.ffu](https://fullflash.pvabel.net/DuoWOA/v2412.74/OEMZE_MaximizedForWindows.ffu)

Size: 6.45 GB

SHA1: `2692A51BF6C55F350DA37CFB9F810175C181F655`
</td>
<td>Windows 11 Version 24H2 (26100.1742) (en-US)</td>
<td><details>

Official Variant: 4GB only for Android, everything else for Windows, 256GB/512GB users may have to expand the MainOS partition using Disk Management in windows by using the "Extend Partition" option.

1) After "Getting Ready" boot, on the second boot, the device may show a black screen, if this happens, press the power button once and it will continue to oobe after a minute. Be patient and don't press it more than once.
</details></td>
</tr>
</table>

</details>

---

### Release notes

>[!NOTE]
>This release includes both UEFI packages and Driver packages

Common:

- Enable advanced USB Function Modes in the Surface Settings application
- Secrets

Surface Duo (1st Gen):

- General Driver Improvements and Updates

Surface Duo 2:

- General Driver Improvements and Updates

---

- Please download ```SurfaceDuo-Drivers-v2412.74-Desktop-Epsilon.7z``` if you want drivers for Surface Duo 1

- Please download ```SurfaceDuo-Drivers-v2412.74-Desktop-Zeta.7z``` if you want drivers for Surface Duo 2

---

- We are aware auto pairing of the pen will not work anymore on Windows 10, a fix is due in the next update.

<details>
  <summary>Known issues</summary>
  <p>
- Installing Gallium Semester Insider builds may lead to a black screen on second boot of the OS, simply press the power button to continue.

- Booting Windows 10 18362/18363 will lead to "static screen" effects on the right display, much like driver releases from last year did on any version of Windows. A fix is being worked on for the next release.

- The TPM driver is not working for Windows 10 18362/18363. A fix is being worked on for the next release.

- The Posture driver is not working for Windows 10 18362/18363. A fix is being worked on for the next release.

- Enhanced auto rotation is not working for Windows 10 18362/18363. A fix is being worked on for the next release.

- Brightness control is glitchy on both displays.

- On device speakers are not functional.

- Dongles are not detected correctly when plugged into the USB Type-C port.

- Updating drivers may lead to weird configurations if done on old driver releases.

- MAC addresses do not reflect the real addresses asigned to the device.

- BitLocker drive encryption is not available.

- USB dongles that are not externally powered may not currently work.

- USB-C Billboard devices will not currently work.

- External Display Stream support will not currently work.

- Additional information provided by the posture sensor is currently not available for public consumption. This includes peek events.

- Digitizers will not react to the device being folded over.

- Displays will not react to the device being folded over most of the time.

- Physical device data is incorrect.

- Digitizers aren't calibrated correctly.

- Flipping the device is not smooth.

- Users upgrading from releases older than the January ones may want to clean install again.

- Booting Windows 10 18362/18363 with Secure Boot enabled is not currently supported and will result in a broken installation.

- In some cases, booting the UEFI image may lead to "static screen" effects on the left display. Please do not force reboot the device as it may interrupt the installation process, if ongoing, and instead please wait a few minutes.

- Windows Recovery environment lacks drivers unless Windows has performed a Feature Update at least once.

- sRGB is not available currently, and displays will not react to ICC profiles being applied.
  </p>
</details>

---

<details>
  <summary>Accessing Foldable Sensors from your applications</summary>
  <p>
In order to currently access the sensor data given by the foldable sensors, you need to use the following apis:


- Windows.Devices.Sensors.HingeAngleSensor*
- Windows.Internal.Devices.Sensors.FlipSensor* (2)
- Windows.Internal.System.TwoPanelHingePostureDevice* (2)


(2): These apis require the use of an externally sourced winmd available from https://github.com/ADeltaX/InternalWinMD/blob/master/%23winmd/Windows.Internal.Devices.Sensors.winmd


In the future, further apis will be functional (specifically under the Windows.System.Preview namespace). Consider this an early "thing".


The following API may be used to determine if your app is used on a dual screen device: https://docs.microsoft.com/en-us/uwp/api/windows.ui.windowmanagement.windowingenvironment.getdisplayregions?view=winrt-22621

The following API may be used to determine on which display region your app is currently being shown: https://docs.microsoft.com/en-us/uwp/api/windows.ui.windowmanagement.appwindow.getdisplayregions?view=winrt-22621

The following API may be used to move your application to the other display: https://docs.microsoft.com/en-us/uwp/api/windows.ui.windowmanagement.appwindow.requestmoverelativetodisplayregion?view=winrt-22621

THe following API may be used to move your application to a specific display: https://docs.microsoft.com/en-us/uwp/api/windows.ui.windowmanagement.appwindow.requestmovetodisplayregion?view=winrt-22621

The following API may be used for spanning purposes: https://docs.microsoft.com/en-us/uwp/api/windows.ui.windowmanagement.appwindow.requestsize?view=winrt-22621

The Windowing Environment for Windows Desktop editions (outside of tablet mode) is Overlapped. Tiled is used for Tablet Mode and Windows Core OS's ModernPC.


### Code Samples

```cpp
#include <iostream>
#include <windows.h>
#include <winrt/Windows.Foundation.h>
#include <winrt/Windows.Internal.Devices.Sensors.h>
#include <winrt/Windows.Internal.System.h>
#include <winrt/Windows.System.Preview.h>
#include <winrt/Windows.UI.WindowManagement.h>
#include <winrt/Windows.Foundation.Collections.h>

using namespace std;
using namespace winrt;
using namespace Windows::Foundation;
using namespace Windows::Internal::Devices::Sensors;
using namespace Windows::Internal::System;
using namespace Windows::System::Preview;
using namespace Windows::UI::WindowManagement;
using namespace Windows::Foundation::Collections;

VOID OnFoldSensorReadingChanged(FoldSensor const&, FoldSensorReadingChangedEventArgs const& args)
{
	try {
		printf("Fold sensor state changed.\n");
		switch (args.Reading().GestureState())
		{
		case GestureState::Started:
			std::cout << "Fold started\n" << std::endl;
			break;
		case GestureState::Completed:
			std::cout << "Fold stopped\n" << std::endl;
			break;
		case GestureState::Cancelled:
			std::cout << "Fold cancelled\n" << std::endl;
			break;
		case GestureState::Unknown:
			std::cout << "Fold unknown\n" << std::endl;
			break;
		}

		for (auto panel : args.Reading().ContributingPanel())
		{
			printf("Panel: %s\n", to_string(panel).c_str());
		}
		
		std::cout << "Initial angle " << args.Reading().InitialAngle() << std::endl;
		std::cout << "Final angle " << args.Reading().FinalAngle() << std::endl;
		
		switch (args.Reading().FoldType())
		{
		case FoldType::Closing:
			std::cout << "Fold Closing\n" << std::endl;
			break;
		case FoldType::Opening:
			std::cout << "Fold Opening\n" << std::endl;
			break;
		case FoldType::NotDetected:
			std::cout << "Fold NotDetected\n" << std::endl;
			break;
		}
	}
	catch (...) {}
}

VOID PrintDetails(TwoPanelHingedDevicePostureReading const& args)
{
	try {
		std::cout << "Panel1 " << args.Panel1Id().c_str() << "\n" << std::endl;
		std::cout << "Panel2 " << args.Panel2Id().c_str() << "\n" << std::endl;

		std::cout << "Panel1 Orientation " << (int)args.Panel1Orientation() << "\n" << std::endl;
		std::cout << "Panel2 Orientation " << (int)args.Panel2Orientation() << "\n" << std::endl;

		switch (args.HingeState())
		{
		case Windows::Internal::System::HingeState::Unknown:
			std::cout << "Hinge1State Unknown\n" << std::endl;
			break;
		case Windows::Internal::System::HingeState::Closed:
			std::cout << "Hinge1State Closed\n" << std::endl;
			break;
		case Windows::Internal::System::HingeState::Concave:
			std::cout << "Hinge1State Concave\n" << std::endl;
			break;
		case Windows::Internal::System::HingeState::Flat:
			std::cout << "Hinge1State Flat\n" << std::endl;
			break;
		case Windows::Internal::System::HingeState::Convex:
			std::cout << "Hinge1State Convex\n" << std::endl;
			break;
		case Windows::Internal::System::HingeState::Full:
			std::cout << "Hinge1State Full\n" << std::endl;
			break;
		}
	}
	catch (...) {}
}

VOID OnPostureChanged(TwoPanelHingedDevicePosture const&, TwoPanelHingedDevicePostureReadingChangedEventArgs const& args)
{
	try {
		printf("Posture sensor state changed.\n");
		PrintDetails(args.Reading());
	}
	catch (...) {}
}

VOID OnSensorReadingChanged(FlipSensor const&, FlipSensorReadingChangedEventArgs const& args)
{
	try {
		printf("Flip sensor state changed.\n");
		switch (args.Reading().GestureState())
		{
		case GestureState::Started:
			std::cout << "Flip started\n" << std::endl;
			break;
		case GestureState::Completed:
			std::cout << "Flip stopped\n" << std::endl;
			break;
		case GestureState::Cancelled:
			std::cout << "Flip cancelled\n" << std::endl;
			break;
		case GestureState::Unknown:
			std::cout << "Flip unknown\n" << std::endl;
			break;
		}
	}
	catch (...) {}
}

int main()
{
    init_apartment();
	printf("Trying to get flip sensor.\n");
	try {
		FlipSensor flip = FlipSensor::GetDefaultAsync().get();
		if (flip == nullptr)
		{
			printf("Flip sensor not found.\n");
		}
		else
		{
			printf("Starting listening session for flip sensor.\n");
			flip.ReadingChanged(OnSensorReadingChanged);
		}
		printf("Press any key to stop\n");
		std::cin.get();
	}
	catch (...) {}

	printf("Trying to get posture sensor.\n");
	try {
		TwoPanelHingedDevicePosture Posture = TwoPanelHingedDevicePosture::GetDefaultAsync().get();
		if (Posture == nullptr)
		{
			printf("Posture sensor not found.\n");
		}
		else
		{
			auto curpst = Posture.GetCurrentPostureAsync().get();
			if (curpst != nullptr)
			{
				PrintDetails(curpst);
			}
			printf("Starting listening session for Posture sensor.\n");
			Posture.PostureChanged(OnPostureChanged);
		}
		printf("Press any key to stop\n");
		std::cin.get();
	}
	catch (...) {}

	printf("Trying to get fold sensor.\n");
	try {
		FoldSensor fold = FoldSensor::GetDefaultAsync().get();
		if (fold == nullptr)
		{
			printf("Fold sensor not found.\n");
		}
		else
		{
			printf("Starting listening session for fold sensor.\n");
			fold.ReadingChanged(OnFoldSensorReadingChanged);
		}
		printf("Press any key to stop\n");
		std::cin.get();
	}
	catch (...) {}
}
```
  </p>
</details>

---

### Dual Boot Information

<details>

*Important!*: The Dual Boot images currently target the following Android OTA update versions from Microsoft. These images _can only be used_ on a phone that had as latest the following OTA versions from microsoft *even if you are currently running a custom android system image*. Using these images will work *with a custom Android System Image* but the device *bootloader and firmware* must be from the same Microsoft OTA version as shipped from the stock Microsoft Android Updates!

| Device Name   | Device Variant                          | Dual Boot Compatible with the following firmware/bootloader version only |
|---------------|-----------------------------------------|--------------------------------------------------------------------------|
| Surface Duo   | United States of America (GEN)          | 2022.902.48  (Latest OTA for Surface Duo (1st Gen) devices)              |
| Surface Duo   | United States of America (AT&T)         | 2022.902.48  (Latest OTA for Surface Duo (1st Gen) devices)              |
| Surface Duo   | Europe (EEA)                            | 2022.902.48  (Latest OTA for Surface Duo (1st Gen) devices)              |
| Surface Duo 2 | United States of America (mmWave)       | 2023.501.541 (Latest OTA for Surface Duo 2 devices)               |
| Surface Duo 2 | Europe (5G NR)                          | 2023.501.541 (Latest OTA for Surface Duo 2 devices)               |

Flashing these images on any other version may brick your phone or render touch unusable! Make backups of your original boot partitions and ALWAYS test before flashing permanently using "fastboot boot image.img"!.

If you do not currently run above firmware versions, please also follow https://github.com/WOA-Project/SurfaceDuo-Guides/blob/main/Install/DualBoot.md.

For more information on dual boot, manual steps on how to craft such image file, and how to flash it, and use it, please visit https://github.com/WOA-Project/SurfaceDuo-Guides/blob/main/Install/DualBoot.md.

We do not recommend inexperienced users without advanced knowledge of IT/Command prompts to do this ever. You may find it very hard and mess up your device easily if you do it wrong. Also important to note Android OTAs will not work anymore with a custom boot.img flashed onto the device and you will need to reflash your original backup for them to work or else, you'll be forced to recover with an OTA zip package from https://aka.ms/sri if one is even available for your current version or higher.

<details>
  <summary>Some examples about what above warning means for you when running custom operating systems on your surface duo and if you are willing to run dual boot images</summary>
  <p>
To clarify above bullet point

If for example you flashed the Pixel Experience Android 13 Android System Image on your Surface Duo, and previously you were running Microsoft Stock Android OTA version 2022.123.45, your device firmware and bootloader are still version 2022.123.45 and will not be compatible with these images targeting 2022.902.48

In another example, you flashed the Pixel Experience Android 13 Android System Image on your Surface Duo, and previously you were running Microsoft Stock Android OTA version 2022.902.48, your device firmware and bootloader are still version 2022.902.48 and you are compatible with these images.

You are currently running stock microsoft android version 2022.902.48; you are compatible

You are currently not running stock microsoft android version 2022.902.48; you are not compatible
  </p>
</details>

</details>

---

### Hey wow, that's a lot of UEFI images right here! Which one do I even download?

- FastBoot -> Image intended to be used with fastboot boot uefi.img to directly boot into the UEFI this way via your computer, use this one if you're following the installation guides right now
- Dual Boot -> Image intended to be flashed onto boot after checking compatibility with above table to make sure you meet the usability criteria and your device will work fine
- FD -> File needed to make your own custom dual boot images in case you do not meet the compatibility table, using the guide to do so (https://github.com/WOA-Project/SurfaceDuo-Guides/blob/main/Install/DualBoot.md)

Use the files without SecureBoot Disabled in their filenames if and only if:
- I am booting a version of Windows higher than build 18363 (the latest Windows 10 feature update, Windows 11, Windows 11 Version 22H2 etc..)

Only use the files with SecureBoot Disabled in their filenames if and only if:
- I am booting Windows 10 build 18363 or lower on my device (Please also turn on testsigning in BCD in order to boot)
- I am booting Windows 10X on my device
- I am booting a linux distribution
---

<details>
  <summary>How to offline update an existing Windows Desktop installation</summary>
  <p>
Please follow the steps detailed at https://github.com/WOA-Project/SurfaceDuo-Guides/blob/main/Update/UpdateDriversAndUEFI.md
  </p>
</details>

<details>
  <summary>How to install Windows Desktop on internal Storage</summary>
  <p>
Please follow the steps detailed at https://github.com/WOA-Project/SurfaceDuo-Guides
  </p>
</details>

<details>
  <summary>Bug reporting</summary>
  <p>
This release is a Preview release. Bug exists and may happen. If you notice a bug not present in the following bug list, please report them on our Telegram Group.
  </p>
</details>

---

Seems Faster(TM)

-- The DuoWoA authors