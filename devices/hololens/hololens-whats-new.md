---
title: What's new in Microsoft HoloLens (HoloLens)
description: Windows Holographic for Business gets new features in Windows 10, version 1803.
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: jdeckerms
ms.author: jdecker
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/30/2018
---

# What's new in Microsoft HoloLens



Windows 10, version 1803, is the first feature update to Windows Holographic for Business since its release in Windows 10, version 1607. This update introduces the following changes:

- Previously, you could only verify that upgrade license for Commercial Suite had been applied to your HoloLens device by checking to see if VPN was an available option on the device. Now, **Settings** > **System** will display **Windows Holographic for Business** after the upgrade license is applied. [Learn how to unlock Windows Holographic for Business features](hololens-upgrade-enterprise.md). 

- You can view the operating system build number in device properties in the File Explorer app and in the [Windows Device Recovery Tool (WDRT)](https://support.microsoft.com/help/12379/windows-10-mobile-device-recovery-tool-faq).
    
- Provisioning a HoloLens device is now easier with the new **Provision HoloLens devices** wizard in the Windows Configuration Designer tool. In the wizard, you can configure the setup experience and network connections, set developer mode, and obtain bulk Azure AD tokens. [Learn how to use the simple provisioning wizard for HoloLens](hololens-provisioning.md#wizard).

    ![Provisioning HoloLens devices](images/provision-hololens-devices.png)

- When you create a local account in a provisioning package, the password no longer expires every 42 days.

- You can [configure HoloLens as a single-app or multi-app kiosk](hololens-kiosk.md). Multi-app kiosk mode lets you set up a HoloLens to only run the apps that you specify, and prevents users from making changes.

- Media Transfer Protocol (MTP) is enabled so that you can connect the HoloLens device to a PC by USB and transfer files between HoloLens and the PC. You can also use the File Explorer app to move and delete files from within HoloLens.

- Previously, after you signed in to the device with an Azure Active Directory (Azure AD) account, you then had to **Add work access** in **Settings** to get access to corporate resources. Now, you sign in with an Azure AD account and enrollment happens automatically. 

- Before you sign in, you can choose the network icon below the password field to choose a different Wi-Fi network to connect to. You can also connect to a guest network, such as at a hotel, conference center, or business. 

- You can now easily [share HoloLens with multiple people](hololens-multiple-users.md) using Azure AD accounts.

- When setup or  sign-in fails, choose the new **Collect info** option to get diagnostic logs for troubleshooting.

- Individual users can sync their corporate email without enrolling their device in mobile device management (MDM). You can use the device with a Microsoft Account, download and install the Mail app, and add an email account directly.

- You can check the MDM sync status for a device in **Settings** > **Accounts** > **Access Work or School** > **Info**. In the **Device sync status** section, you can start a sync, see areas managed by MDM, and create and export an advanced diagnostics report.





## Additional resources

- [Reset or recover your HoloLens](https://developer.microsoft.com/windows/mixed-reality/reset_or_recover_your_hololens)
- [Restart, rest, or recover HoloLens](https://support.microsoft.com/help/13452/hololens-restart-reset-or-recover-hololens)
- [Manage devices running Windows Holographic with Microsoft Intune](https://docs.microsoft.com/intune/windows-holographic-for-business)

