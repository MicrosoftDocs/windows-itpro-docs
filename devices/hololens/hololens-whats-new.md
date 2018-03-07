---
title: What's new in Microsoft HoloLens (HoloLens)
description: HoloLens provides extra features designed for business in the Commercial Suite.
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: jdeckerms
ms.localizationpriority: medium
ms.date: 04/01/2018
---

# What's new in Microsoft HoloLens

Windows 10, version 1803, is the first feature update to Windows 10 Holographic for Business. This update introduces the following changes:

- Previously, you could only verify that upgrade license for Commercial Suite had been applied to your HoloLens device by checking to see if VPN was now an available option on the device. Now, **Settings** > **System** will display **Windows Holographic for Business** after the upgrade license is applied. Learn how to [unlock Windows Holographic for Business features](hololens-upgrade-enterprise.md). 
    
- Provisioning a HoloLens device is now easier with the new **Provision HoloLens devices** wizard in the Windows Configuration Designer tool. In the wizard, you can configure the setup experience, network connections, set developer mode, and obtain bulk Azure AD tokens. Learn how to [use simple provisioning for HoloLens](hololens-provisioning.md#simple).

    ![Provisioning HoloLens devices](images/provision-hololens-devices.png)

- Media Transfer Protocol (MTP) is enabled so you can plug the HoloLens device in to a PC by USB and transfer files between HoloLens and the PC.

- Previously, after you signed in to the device with an Azure Active Directory (AD) account, you then had to **Add work access** in **Settings** to get access to corporate resources. Now, you sign in with an Azure AD account and enrollment happens automatically. 

- multi-user (AAD)
- multi transfer protocol (MTP) support
- file explorer
- OOBE diagnostic
- Wi-Fi on sign-in
- guest network
- improved add work (AAD) account
- mail sync without MDM enrollment
- edition name
- configure setup options, bulk AAD token/provisioning wizard
- developer mode
- multi-app kiosk (use groups)
- local account indefinite password expiry
-  MDM sync status
- account mgt: "visitor" group acct