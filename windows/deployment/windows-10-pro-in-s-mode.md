---
title: Windows 10 Pro in S mode
description: Overview of Windows 10 Pro in S mode, switching options, and system requirements
keywords: Windows 10 S, S-mode, system requirements, Overview, Windows 10 Pro in S mode, Windows 10 Pro in S mode
ms.mktglfcycl: deploy
ms.localizationpriority: high
ms.prod: w10
ms.sitesec: library
ms.pagetype: deploy
ms.date: 04/30/2018
author: Mikeblodge
---

# Windows 10 Pro/Enterprise in S mode

S mode is an enhanced security mode of Windows 10. Windows 10 Pro and Enterprise in S mode powers affordable, cloud-ready devices that are simple, secure, and efficient. Users can get started quickly, thanks to self-service deployment and a familiar Windows experience. Low-price S mode devices offer tailored solutions for kiosks, digital signs, and task work. If your device is running Windows 10, version 1709, or Windows 10, version 1803, you can switch from Windows 10 in S mode to Windows 10 Pro.

## Benefits of Windows 10 Pro in S mode:

- **Microsoft-verified security** - It reduces risk of malware and exploitations because only Microsoft-verified apps can be installed including Windows Defender Antivirus.
- **Performance that lasts** - Provides all-day battery life to keep workers on task and not tripping over cords. Also, verified apps won’t degrade device performance over time.
- **Streamlined for speed** - Offers faster log-in times with Windows Hello. Plus, workers get all the exclusive Windows innovations including Cortana and Windows Ink. 

|  |Home  |S mode  |Pro/Pro Education  |Enterprise/Education |
|---------|:---:|:---:|:---:|:---:|
|Start Menu/Hello/Cortana/<BR>Windows Ink/Microsoft Edge | X | X | X | X |
|Store apps (including Windows <BR>desktop bridge apps) | X | X | X | X |
|Windows Update | X | X | X | X |
|Device Encryption | X | X | X | X |
|BitLocker | | X | X | X |
|Windows Update for Business |  | X | X | X |
|Microsoft Store for Education | | X | X | X |
|Mobile Device Management<BR> and Azure AD join | | X | X | X |
|Group Policy management and <BR>Active Directory Domain Services | | | X | X |
|Desktop (Windows 32) Apps | X | | X | X |
|Change App Defaults<BR>Search/Browser/Photos/etc. | X | | X | X |
|Credential Guard | | | | X |
|Device Guard | | | | X |

## Keep Line of Business apps functioning with Desktop Bridge
Worried about your LOB apps not working in S mode? Using Desktop Bridge will enable you to convert your Line of Business apps to a packaged app with UWP manifest. After testing and validating you can distribute the app through the Windows Store or existing channels. 

[Explore Desktop Bridge](https://docs.microsoft.com/en-us/windows/uwp/porting/desktop-to-uwp-root)

>[!NOTE] 
>The only way to revert to Windows 10 in S mode is to perform a BMR factory reset. This will allow you to reimage a device.

### Windows 10 in S mode is safe, secure, and fast.
We recommend staying in S mode. However, in some limited scenarios, you might need to switch to Windows 10 Pro. You can switch devices running Windows 10, version 1709 or later. Use the following information to switch to Windows 10 Pro through the Microsoft Store.

## How to switch
If you’re running Windows 10, version 1709 or version 1803, you can switch to Windows 10 Pro through the Microsoft Store. Devices running version 1803 will only be able to switch through the Store one device at a time.

1. Sign into the Microsoft Store using your Microsoft account. 
2. Search for "S mode"
3. In the offer, click **Buy**, **Get**, OR **Learn more.**
You'll be prompted to save your files before the switch starts. Follow the prompts to switch to Windows 10 Pro.

> [!IMPORTANT]
> While it’s free to switch to Windows 10 Pro, it’s not reversible. The only way to rollback this kind of switch is through a BMR factory reset.

## Related topics

[FAQs](https://support.microsoft.com/en-us/help/4020089/windows-10-in-s-mode-faq)<br>
[Compare Windows 10 editions](https://www.microsoft.com/WindowsForBusiness/Compare)<BR>
[Windows 10 Pro Education](https://docs.microsoft.com/education/windows/test-windows10s-for-edu)<BR>
[Introduction to Microsoft Intune in the Azure portal](https://docs.microsoft.com/en-us/intune/what-is-intune)
