---
title: Group Policies that apply only to Windows 10 Enterprise and Education Editions (Windows 10)
description: Use this topic to learn about Group Policy objects that apply only to Windows 10 Enterprise and Windows 10 Education.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: brianlic-msft
---

# Group Policies that apply only to Windows 10 Enterprise and Education Editions

**Applies to**

-   Windows 10

In Windows 10, version 1607, the following Group Policies apply only to Windows 10 Enterprise and Windows 10 Education.

| Policy name | Policy path | Comments |
| --- | --- | --- |
| **Configure Spotlight on lock screen** | User Configuration > Administrative Templates > Windows Components > Cloud Content | For more info, see [Windows spotlight on the lock screen](https://technet.microsoft.com/en-us/itpro/windows/whats-new/windows-spotlight). Note that an additional **Cloud Content** policy, **Do not suggest third-party content in Windows spotlight**, does apply to Windows 10 Pro. |
| **Turn off all Windows Spotlight features** | User Configuration > Administrative Templates > Windows Components > Cloud Content | For more info, see [Windows spotlight on the lock screen](https://technet.microsoft.com/en-us/itpro/windows/whats-new/windows-spotlight) |
| **Turn off Microsoft consumer features** | Computer Configuration > Administrative Templates > Windows Components > Cloud Content | For more info, see [Windows spotlight on the lock screen](https://technet.microsoft.com/en-us/itpro/windows/whats-new/windows-spotlight) |
| **Do not display the lock screen** | Computer Configuration > Administrative Templates > Control Panel > Personalization | For more info, see [Windows spotlight on the lock screen](https://technet.microsoft.com/en-us/itpro/windows/whats-new/windows-spotlight) |
| **Do not require CTRL+ALT+DEL** </br>combined with</br>**Turn off app notifications on the lock screen** | Computer Configuration > Administrative Templates > System > Logon </br>and</br>Computer Configuration > Windows Settings > Security Settings > Local Policies > Security Options > Interactive logon | When both of these policy settings are enabled, the combination will also disable lock screen apps ([assigned access](set-up-a-device-for-anyone-to-use.md)) on Windows 10 Enterprise and Windows 10 Education only. These policy settings can be applied to Windows 10 Pro, but lock screen apps will not be disabled on Windows 10 Pro. |
| **Do not show Windows Tips** | Computer Configuration > Administrative Templates > Windows Components > Cloud Content | For more info, see [Windows spotlight on the lock screen](https://technet.microsoft.com/en-us/itpro/windows/whats-new/windows-spotlight) |
| **Force a specific default lock screen image** | Computer Configuration > Administrative Templates > Control Panel > Personalization | For more info, see [Windows spotlight on the lock screen](https://technet.microsoft.com/en-us/itpro/windows/whats-new/windows-spotlight) |
| **Start layout** | User Configuration\Administrative Templates\Start Menu and Taskbar | For more info, see [Manage Windows 10 Start layout options and policies](windows-10-start-layout-options-and-policies.md)  |
| **Turn off the Store application** | Computer Configuration > Administrative Templates > Windows Components > Store > Turn off the Store application<br><br>User Configuration > Administrative Templates > Windows Components > Store > Turn off the Store | For more info, see [Knowledge Base article# 3135657](https://support.microsoft.com/en-us/kb/3135657). |



 
