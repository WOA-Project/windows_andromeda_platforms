# OS Driver feature support tidbits

## Additions

- AddSoftware and friends: 
- AddComponent and friends: 
- AddEventProvider and friends: 17623
- AddFilter and friends: 17704

- HidSpi: 17655
- CapImg: 
- HeatCore classic: TODO (between 14910 (unchecked) and 14965 (checked))
- HeatCore extension: 18252

- mshwnclx.sys: 16222
- KNetPwrDepBroker.sys: 16362

- WDDM 2.4: 
- WDDM 2.5: 17618
- WDDM 2.6: 18252
- WDDM 2.7: 

- GICv3:

- Using dirid 13 for UMDF drivers: 

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

## Removals:

- CapImg: 18252
- HeatCore classic: 18252
- MSNfcI2C547: Removed in 18890 (on desktop only)

- cellular stuff (need to expand): TODO!
- Actual EMB Support in WwanSvc: Removed in 18912 (WP Extension OIDs)
- PhoneProvider CellLine and IMS: Removed in 19569
- Microsoft-Windows-CoreSystem-Cellcore-CellularAPI (ihvrilproxy.dll, rilproxy.dll, cellularapi.dll): Removed in 21313
- the actual build which breaks old phoneprovider: (Note: patched in https://github.com/WOA-Project/SurfaceDuo-Drivers/commit/75ce1d6a1639a059bd00bb507b493f3540ae991a: ANYSOC: Fix PhoneProvider compatibility with PhoneSvc on GE / Nov 9, 2023, around 25992.1000)