---
title: Surface Brightness Control
description: This topic describes how you can use the Surface Brightness Control app to manage display brightness in point-of-sale and kiosk scenarios.
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: surface, devices
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 1/15/2019
ms.reviewer: 
manager: dansimp
---

# Surface Brightness Control

When deploying Surface devices in point of sale or other “always-on”
kiosk scenarios, you can optimize power management using the new Surface
Brightness Control app.

Available for download with [Surface Tools for
IT](https://www.microsoft.com/download/details.aspx?id=46703), Surface Brightness Control is
designed to help reduce thermal load and lower the overall carbon
footprint for deployed Surface devices. The tool automatically dims the screen when not in use and
includes the following configuration options:

- Period of inactivity before dimming the display.

- Brightness level when dimmed.

- Maximum brightness level when in use.

**To run Surface Brightness Control:**

- Install surfacebrightnesscontrol.msi on the target device and Surface Brightness Control
  will begin working immediately.

## Configuring Surface Brightness Control

You can adjust the default values via the Windows Registry. For more
information about using the Windows Registry, refer to the [Registry
documentation](https://docs.microsoft.com/windows/desktop/sysinfo/registry).

1.  Run regedit from a command prompt to open the Windows Registry
    Editor.
    
      - Computer\HKEY\_LOCAL\_MACHINE\SOFTWARE\Microsoft\Surface\Surface
        Brightness Control\	
		

| Registry Setting | Data| Description  
|-----------|------------|---------------
| Brightness Control Enabled  |  Default: 01  <br> Option: 01, 00 <br> Type: REG_BINARY |  This setting allows you to turn Surface Brightness Control on or off. To disable Surface Brightness Control, set the value to 00. If you do not configure this setting, Surface Brightness Control is on. |
| Brightness Control On Power Enabled| Default: 01 <br> Options: 01, 00 <br> Type: REG_BINARY | This setting allows you to turn off Surface Brightness Control when the device is directly connected to power. To disable Surface Brightness Control when power is plugged in, set the value to 00. If you do not configure this setting, Surface Brightness Control is on. |
| Dimmed Brightness   | Default: 20  <br>Option: Range of 0-100 percent of screen brightness <br> Data Type: Positive integer <br> Type: REG_DWORD | This setting allows you to manage brightness range during periods of inactivity. If you do not configure this setting, the brightness level will drop to 20 percent of full brightness after 30 seconds of inactivity. |
Full Brightness   | Default: 100  <br>Option: Range of 0-100 percent of screen brightness <br> Data Type: Positive integer <br> Type: REG_DWORD  | This setting allows you to manage the maximum brightness range for the device. If you do not configure this setting, the maximum brightness range is 100 percent.|  
| Inactivity Timeout| Default: 30 seconds <br>Option: Any numeric value  <br>Data Type: Integer  <br> Type: REG_DWORD | This setting allows you to manage the period of inactivity before dimming the device. If you do not configure this setting, the inactivity timeout is 30 seconds.|
| Telemetry  Enabled | Default: 01 <br>Option: 01, 00 <br> Type: REG_BINARY  | This setting allows you to manage the sharing of app usage information to improve software and provide better user experience. To disable telemetry, set the value to 00. If you do not configure this setting, telemetry information is shared with Microsoft in accordance with the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement). |

## Changes and updates

### Version 1.12.239.0
*Release Date: 26 April 2019*<br>
This version of Surface Brightness Control adds support for the following:
- Touch delay fixes.


## Related topics

- [Battery limit setting](battery-limit.md)
