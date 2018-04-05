---
title: Windows 10 Pro in S mode
description: Overview of Windows 10 Pro in S mode, switching options, and system requirements
keywords: Windows 10 S, S-mode, system requirements, Overview, Windows 10 Pro in S mode
ms.mktglfcycl: deploy
ms.localizationpriority: high
ms.prod: w10
ms.sitesec: library
ms.pagetype: deploy
ms.date: 03/21/2018
author: Mikeblodge
---

# Windows 10 Pro in S mode

## In this topic

This topic provides an overview of Windows 10 Pro in S mode, how to switch from Windows 10 Pro in S mode to Windows 10 Pro, and the requirements to switch.

## Overview

Windows 10 Pro in S mode powers affordable, cloud-ready devices that are simple, secure, and efficient. Users can get started quickly, thanks to self-service deployment and a familiar Windows experience. Equip your users with speedy and low-cost devices that work with a wide range of peripherals, both wired and wireless. They can sign in once with their face or fingerprint, and work efficiently and seamlessly with the full version of Microsoft Office.

Windows 10 Pro in S mode helps secure users and data against modern threats by providing all the built-in protections of Windows. Affordable S mode devices offer tailored solutions for kiosks, digital signs, and task work.

The benefits of Windows 10 Pro in S mode:

- **Simple** - Keep IT management easy. Allow employees to use self-service deployment via Windows AutoPilot. Thanks to the cloud, Windows 10 Pro in S mode gives you the flexibility to use the cloud storage solution of your choice and connect to your business by signing in once to get access to company resources through Azure Active Directory (Azure AD) and Cloud-based device management. 
- **Secure** – Protect your business with built-in Windows 10 device, user, and data safeguards. Windows 10 Pro in S mode is security at its simplest and it includes Windows Defender Antivirus and all the security features of Windows 10. Sign in with your face or fingerprint using Windows Hello. 
- **Familiar** – Give users a familiar Windows experience across devices, with features they already know such as Start menu, Taskbar, Desktop, Action Center, and File Explorer. Users are not limited to online apps, so they can get the full functionality of Microsoft Office and other apps in the Microsoft Store. You can easily convert most of your legacy Line of Business apps using Desktop Bridge to be Microsoft Store-compatible, so they are available for your users to download. And you can easily and switch to Windows 10 Pro at any time for free.  
- **Efficient** – Enable workers to start quickly and never slow down. Windows 10 Pro in S mode is designed for fast performance that lasts for the supported lifetime of the device. Equip your users with speedy and low-cost devices that work with a wide range of peripherals, both wired and wireless. Windows 10 Pro in S mode supports tailored solutions for kiosks, digital signs, and task work. With Assigned Access, Windows 10 Pro devices in S mode run different applications depending on the user and keep individual identities separate and secured. Plus, users get all the exclusive Windows innovations including Cortana and Windows Ink.

## Why switch?

- Do you have apps that you want to run that aren’t in the Microsoft Store? If so, you might want to switch to Windows 10 Pro. If that’s the case, you can switch for free.

>[!NOTE] The only way to revert to Windows 10 in S mode is to perform a BMR factory reset. This will allow you to reimage a device.

## Requirements for switching

You must meet these system requirements before switching to Windows 10 Pro.

### 1709 devices
- Devices must be running Windows 10, version 1703

### 1804 devices
- Devices must be running Windows 10 Pro in S mode, version 1804

## How to switch

### Switch one device at a time using the Microsoft Store (Version 1709, 1804, and future devices).
- The user searched or sees the Windows 10 Pro switch option - The user must have an MSA account and be logged in to the Microsoft Store. When the user searches for Switch to Windows 10 Pro, they will see the offer to switch to Windows 10 Pro. The user can click the **Learn more**, **Buy** or **Get** button to switch from Windows 10 Pro in S mode to Windows 10 Pro.

Once the user makes their selection, they'll see a prompt to save their files and the switch will start. The PC will restart during this process.

### Switching for 1804 devices
The S mode switch option is recognized in the Windows AutoPilot profile and configuration will now continue.

**Switching existing devices out of S mode**
1.	Enroll S mode device in Intune.
2.	Enter the Intune admin portal.
3.	Select which devices to switch out of S mode.
4.	Select the S mode switch option in Intune/MDM.

Select the S mode switch option in Intune/MDM.The device will switch from S mode. A reboot is not required.

>[!NOTE] To rollback to Windows 10 Pro in S mode, a BMR factory reset must be performed.

### Switching in future versions

In future versions, new options will become available to switch.

**Blocking individual users from switching via the Store**
Currently, individual users can switch out of S mode at any time. To prevent this, user permissions to the Store will need to be restricted through the Intune/MDM portal.

## Related topics

[Compare Windows 10 editions](https://www.microsoft.com/WindowsForBusiness/Compare)<BR>
[Windows 10 Pro Education](https://docs.microsoft.com/education/windows/test-windows10s-for-edu)<BR>
[Introdiction to Microsoft Intune in the Azure portal](https://docs.microsoft.com/en-us/intune/what-is-intune)
