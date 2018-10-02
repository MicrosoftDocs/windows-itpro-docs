---
title: Switch to Windows 10 Pro/Enterprise from S mode
description: Overview of Windows 10 Pro/Enterprise in S mode. S mode switch options are also outlined in this document. Switching out of S mode is optional.
keywords: Windows 10 S switch, S mode Switch, Switch in S mode, s mode switch, Windows 10 S, S-mode, system requirements, Overview, Windows 10 Pro in S mode, Windows 10 Pro in S mode
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.prod: w10
ms.sitesec: library
ms.pagetype: deploy
ms.date: 08/30/2018
author: Mikeblodge
---

# Switch to Windows 10 Pro/Enterprise from S mode

We recommend staying in S mode. However, in some limited scenarios, you might need to switch to Windows 10 Pro. You can switch devices running Windows 10, version 1709 or later. Use the following information to switch to Windows 10 Pro through the Microsoft Store.

> [!IMPORTANT]
> While it’s free to switch to Windows 10 Pro, it’s not reversible. The only way to rollback this kind of switch is through a [bare metal recover (BMR)](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/create-media-to-run-push-button-reset-features-s14) reset. This restores a Windows device to the factory state, even if the user needs to replace the hard drive or completely wipe the drive clean. If a device is switched out of S mode via the Microsoft Store, it will remain out of S mode even after the device is reset.

## How to switch
If you’re running Windows 10, version 1709 or version 1803, you can switch to Windows 10 Pro through the Microsoft Store. Devices running version 1803 will only be able to switch through the Store one device at a time.

1. Sign into the Microsoft Store using your Microsoft account. 
2. Search for "S mode"
3. In the offer, click **Buy**, **Get**, OR **Learn more.**
You'll be prompted to save your files before the switch starts. Follow the prompts to switch to Windows 10 Pro.

## Keep Line of Business apps functioning with Desktop Bridge
Worried about your LOB apps not working in S mode? Using Desktop Bridge will enable you to convert your Line of Business apps to a packaged app with UWP manifest. After testing and validating you can distribute the app through the Windows Store or existing channels. 

[Explore Desktop Bridge](https://docs.microsoft.com/en-us/windows/uwp/porting/desktop-to-uwp-root)

## Repackage win32 apps into the MSIX format
The MSIX Packaging Tool (Preview) is now available to install from the Microsoft Store. The MSIX Packaging Tool enables you to repackage your existing win32 applications to the MSIX format. You can run your desktop installers through this tool interactively and obtain an MSIX package that you can install on your machine and upload to the Microsoft Store.

[Explore MSIX app Packaging Tool](https://docs.microsoft.com/en-us/windows/application-management/msix-app-packaging-tool)

## Related topics

[FAQs](https://support.microsoft.com/en-us/help/4020089/windows-10-in-s-mode-faq)<br>
[Compare Windows 10 editions](https://www.microsoft.com/WindowsForBusiness/Compare)<BR>
[Windows 10 Pro Education](https://docs.microsoft.com/education/windows/test-windows10s-for-edu)<BR>
[Introduction to Microsoft Intune in the Azure portal](https://docs.microsoft.com/en-us/intune/what-is-intune)
