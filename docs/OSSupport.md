# OS Driver feature support tidbits

## Additions

### INF Directives

- AddSoftware and friends: 
- AddComponent and friends: 
- AddEventProvider and friends: 17623
- AddFilter and friends: 17704

### Components

#### Touch Components

- CapImg: TODO! After 9600 (checked) Before (or equal to) 9834 (checked)
- HeatCore classic: TODO! (between 14910 (unchecked) and 14965 (checked))
- HidSpi: 17655
- HeatCore extension: 18252

#### Cellular components

- Microsoft-Windows-CoreSystem-Cellcore-CellularAPI (ihvrilproxy.dll, rilproxy.dll, cellularapi.dll): TODO! After 9600 (checked) Before (or equal to) 9834 (checked)
- PhoneSvc and friends: TODO! After 9600 (checked) Before (or equal to) 9834 (checked)
- PhoneSvc and friends: 10537 (Previously removed in 10131)
- PhoneProviders and friends: 10547

### Driver Extensions / Libraries

- mshwnclx.sys: 16222
- KNetPwrDepBroker.sys: 16362

### WDDM

- WDDM 2.3: TODO!
- WDDM 2.4: 16362 (but not the original compiles of 17000)
- WDDM 2.5: 17618
- WDDM 2.6: 18252
- WDDM 2.7: 18890

### HAL Support

- GICv3:

### UMDF

- Using dirid 13 for UMDF drivers: TODO!

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
