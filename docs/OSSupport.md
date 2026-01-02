# OS Driver feature support tidbits

## Additions

### INF Directives

- AddSoftware and friends: TODO!
- AddComponent and friends: TODO!
- AddEventProvider and friends: 17623
- AddFilter and friends: 17704

### Components

#### Sensor Components

- Windows.Internal.Devices.Sensors.dll (Desktop): 17704:
    - Windows.Internal.Devices.Sensors.FlipSensor
    - Windows.Internal.Devices.Sensors.FoldSensor
    - Windows.Internal.Devices.Sensors.HingeAngleSensor
    - Windows.Internal.Devices.Sensors.HingedDualPanelDevicePostureSensor
    - Windows.Internal.Devices.Sensors.SensorReserved_Alpha
    - Windows.Internal.Devices.Sensors.SensorReserved_DeviceContext
    - Windows.Internal.Devices.Sensors.SensorReserved_zAlpha
    - Windows.Internal.Devices.Sensors.SensorReserved_zDeviceContext
- Windows.Internal.Devices.Sensors.dll v2 (Desktop): 18936:
    - Windows.Internal.Devices.Sensors.FlipSensor
    - Windows.Internal.Devices.Sensors.FoldSensor
    - Windows.Internal.Devices.Sensors.HingeAngleSensor
    - Windows.Internal.Devices.Sensors.HingedDualPanelDevicePostureSensor
    - Windows.Internal.Devices.Sensors.SensorReserved_Alpha
    - Windows.Internal.Devices.Sensors.SensorReserved_DeviceContext
    - Windows.Internal.Devices.Sensors.SensorReserved_zAlpha
    - Windows.Internal.Devices.Sensors.SensorReserved_zDeviceContext
    - Windows.Internal.System.TwoPanelHingedDevicePosture
- Windows.Internal.Devices.Sensors.dll v3 (Desktop): 18941 (checked, no) <-> 18975 (checked, yes):
    - Windows.Internal.Devices.Sensors.FlipSensor
    - Windows.Internal.Devices.Sensors.FoldSensor
    - Windows.Internal.System.TwoPanelHingedDevicePosture

```
18945.1001.rs_prerelease.190720-1835 Insider Preview
18946.1000.rs_xbox_dev.190723-1700
18947.1000.rs_xbox.190723-1357 / 18947.1000.rs_prerelease.190723-1401
18950.1000.rs_prerelease.190726-1645 Insider Preview
18956.1000.rs_prerelease.190803-1414 Insider Preview
18963.1000.rs_prerelease.190814-0221 Insider Preview
18965.1000.rs_prerelease.190816-1722 Insider Preview / 18965.1005.rs_prerelease_flt.190816-2000 Insider Preview update
18970.1001.rs_prerelease.190824-1711 Insider Preview / 18970.1005.rs_prerelease_flt.190825-1835
```

- Windows.Internal.Devices.Sensors.dll v4 (Desktop): 19536
    - Windows.Internal.Devices.Sensors.FlipSensor
    - Windows.Internal.Devices.Sensors.FoldSensor
    - Windows.Internal.System.TwoPanelFolioHingeDevicePosture
    - Windows.Internal.System.TwoPanelHingedDevicePosture

#### Touch Components

- CapImg: TODO! After 9600 (checked) Before (or equal to) 9834 (checked)
- HeatCore classic: TODO! (between 14941 (checked) and 14965 (checked))

```
14942.1000.rs_prerelease.161003-1929 Insider Preview
14943.1000.rs_prerelease.161004-1700
14944.1000.rs_prerelease.161005-1700
14946.1000.rs_prerelease.161007-1700 Insider Preview
14948.1000.rs_prerelease.161011-1700
14949.1000.rs_prerelease.161012-1700
14951.1000.rs_prerelease.161014-1700 Insider Preview
14954.1000.rs_prerelease.161019-1700
14955.1000.rs_prerelease.161020-1700 Insider Preview
14958.1000.rs_prerelease.161025-1700
14959.1000.rs_prerelease.161026-1700 Insider Preview
14961.1000.rs_prerelease.161028-2228
14963.1000.rs_prerelease.161101-1742
14964.1000.rs_prerelease.161102-1700 / 14964.1000.rs_shell_vhub_midtop.161107-2300
```

- HidSpi: 17655 (Desktop)
- HeatCore extension: 18252
- HidSpi Filter Levels: TODO!

#### Cellular components

- Microsoft-Windows-CoreSystem-Cellcore-CellularAPI (ihvrilproxy.dll, rilproxy.dll, cellularapi.dll): TODO! After 9600 (checked) Before (or equal to) 9834 (checked)
- PhoneSvc and friends: TODO! After 9600 (checked) Before (or equal to) 9834 (checked)
- PhoneSvc and friends: 10537 (Previously removed in 10131)
- PhoneProviders and friends: 10547

### Driver Extensions / Libraries

- mshwnclx.sys: 16222
- KNetPwrDepBroker.sys: 16362

### WDDM

- WDDM 2.3: 16170
- WDDM 2.4: 16362 (but not the original compiles of 17000)
- WDDM 2.5: 17618
- WDDM 2.6: 18252
- WDDM 2.7: 18890

### HAL Support

- GICv3: TODO!

### UMDF

- Using dirid 13 for UMDF drivers: TODO!

### Kernel APIs:

- ExAllocatePool2: TODO! After 18941 (checked, no), Before 18975 (checked, yes)

## Removals:

### Components

- CapImg: 18252
- HeatCore classic: 18252
- MSNfcI2C547: Removed in 18890 (on desktop only)

### Cellular related

- cellular stuff (need to expand): TODO!
- PhoneSvc and friends: Removed in 10131
- Actual EMB Support in WwanSvc: Removed in 18912 (WP Extension OIDs)
- PhoneProvider CellLine and IMS: Removed in 19569
- Microsoft-Windows-CoreSystem-Cellcore-CellularAPI (ihvrilproxy.dll, rilproxy.dll, cellularapi.dll): Removed in 21313
- the actual build which breaks old phoneprovider: TODO! (Note: patched in https://github.com/WOA-Project/SurfaceDuo-Drivers/commit/75ce1d6a1639a059bd00bb507b493f3540ae991a: ANYSOC: Fix PhoneProvider compatibility with PhoneSvc on GE / Nov 9, 2023, around 25992.1000)

## Currently in use in INFs

- 10.0...16299
- 10.0...17134
- 10.0...17704
- 10.0...17763
- 10.0...18252
- 10.0...18362
- 10.0...18912
- 10.0...19041
- 10.0...19565
- 10.0...21313
- 10.0...22000
- 10.0...22621
- 10.0...26100
