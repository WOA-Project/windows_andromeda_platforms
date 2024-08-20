# Non exhaustive list of ETW providers for Snapdragon 855 (SM8150)

This list is for debugging purposes. Many drivers use ETW Tracing for logging. This table will help finding out which GUID you want for which driver along with commands for WinDBG and autologger snippets.

## Microsoft Windows

<table>
<tr>
<td> Offending component </td> <td> ETW Provider Name </td> <td> ETW Provider GUID </td> <td> WMI Trace KD Command ON </td> <td> WMI Trace KD Command OFF </td> <td> Autologger </td>
</tr>
<tr>
<td>hidspi</td>
<td>hidspi
TRACE_FLAG_DEFAULT
PUBLIC_TMF:</td>
<td>

```
0a6b3bb2-3504-49c1-81d0-6a4b88b96427
```
</td>
<td>

```
!wmitrace.enable meow 0a6b3bb2-3504-49c1-81d0-6a4b88b96427 -level 0xFF
```
</td>
<td>

```
!wmitrace.disable meow 0a6b3bb2-3504-49c1-81d0-6a4b88b96427
```
</td>
<td><details>

```.reg
[HKEY_LOCAL_MACHINE\RTS\ControlSet001\Control\WMI\Autologger\QCOM\{0a6b3bb2-3504-49c1-81d0-6a4b88b96427}]
"Enabled"=dword:00000001
"EnableFlags"=dword:ffffffff
"EnableLevel"=dword:00000004
"MatchAnyKeyword"=hex(b):00,00,00,00,00,00,00,00
"Status"=dword:00000000

```
</details></td>
</tr>
<tr>
<td>HidSpiCx</td>
<td>HidSpiCx
TRACE_FLAG_DEFAULT
PUBLIC_TMF:</td>
<td>

```
5ed8bb73-c76f-49d9-bf05-4982903c6ca5
```
</td>
<td>

```
!wmitrace.enable meow 5ed8bb73-c76f-49d9-bf05-4982903c6ca5 -level 0xFF
```
</td>
<td>

```
!wmitrace.disable meow 5ed8bb73-c76f-49d9-bf05-4982903c6ca5
```
</td>
<td><details>

```.reg
[HKEY_LOCAL_MACHINE\RTS\ControlSet001\Control\WMI\Autologger\QCOM\{5ed8bb73-c76f-49d9-bf05-4982903c6ca5}]
"Enabled"=dword:00000001
"EnableFlags"=dword:ffffffff
"EnableLevel"=dword:00000004
"MatchAnyKeyword"=hex(b):00,00,00,00,00,00,00,00
"Status"=dword:00000000

```
</details></td>
</tr>
</table>

---

_**© 2020-2024 The Duo WOA Authors**_

_Snapdragon is a registered trademark of Qualcomm Incorporated. Microsoft, the Microsoft Corporate Logo, Windows, Surface, Surface Duo, Windows Hello, Continuum, Hyper-V, and DirectX are registered trademarks of Microsoft Corporation in the United States. Android is a registered trademark of Google LLC. Miracast is a registered trademark of the Wi-Fi Alliance. Other binaries may be copyright Qualcomm Incorporated and Microsoft Surface._

_**Limited emergency calling**_

_Running Windows on your Surface Duo is not a replacement for a proper phone operating system and does not have emergency calling capabilities._

_**Hello from Seattle (US), France, Italy.**_