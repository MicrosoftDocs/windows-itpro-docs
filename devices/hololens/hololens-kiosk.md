---
title: Set up HoloLens in kiosk mode (HoloLens)
description: Use a kiosk configuration to lock down the apps on HoloLens. 
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: jdeckerms
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# Set up HoloLens in kiosk mode

In Windows 10, version 1803, you can configure your HoloLens devices to run as multi-app or single-app kiosks.

When HoloLens is configured as a multi-app kiosk, only the allowed apps are available to the user. The benefit of a multi-app kiosk, or fixed-purpose device, is to provide an easy-to-understand experience for individuals by putting in front of them only the things they need to use, and removing from their view the things they don’t need to access. 

Single-app kiosk mode starts the specified app when the user signs in, and restricts the user's ability to launch new apps or change the running app. When single-app kiosk mode is enabled for HoloLens, the bloom gesture and Cortana are disabled, and placed apps aren't shown in the user's surroundings. 

>[!WARNING]
>The assigned access feature which enables kiosk mode is intended for corporate-owned fixed-purpose devices. When the multi-app assigned access configuration is applied on the device, certain policies are enforced system-wide, and will impact other users on the device. Deleting the multi-app configuration will remove the assigned access lockdown profiles associated with the users, but it cannot revert all [the enforced policies](https://docs.microsoft.com/windows/configuration/lock-down-windows-10-to-specific-apps#policies-set-by-multi-app-kiosk-configuration). A factory reset is needed to clear all the policies enforced via assigned access.

For HoloLens devices running Windows 10, version 1803, there are three methods that you can use to configure the device as a kiosk:
- You can [use Microsoft Intune](#intune-kiosk), for HoloLens devices managed by Intune, to configure single-app and multi-app kiosks.
- You can [use a provisioning package](#ppkg-kiosk) to configure single-app and multi-app kiosks.
- You can [use the Windows Device Portal](#portal-kiosk) to configure single-app kiosks.

For HoloLens devices running Windows 10, version 1607, you can [use the Windows Device Portal](#portal-kiosk) to configure single-app kiosks.

<span id="intune-kiosk"/>
## Set up kiosk mode using Microsoft Intune (Windows 10, version 1803)



<span id="ppkg-kiosk"/>
## Setup kiosk mode using a provisioning package (Windows 10, version 1803)




<span id="portal-kiosk"/>
## Set up kiosk mode using the Windows Device Portal (Windows 10, version 1607 and version 1803) 

1. [Set up the HoloLens to use the Windows Device Portal](https://developer.microsoft.com/windows/mixed-reality/using_the_windows_device_portal#setting_up_hololens_to_use_windows_device_portal). The Device Portal is a web server on your HoloLens that you can connect to from a web browser on your PC. 

    >[!IMPORTANT]
    >When you set up HoloLens to use the Device Portal, you must enable **Developer Mode** on the device. **Developer Mode** on a device that has been upgraded to Windows Holographic for Business enables side-loading of apps, which risks the installation of apps that have not been certified by the Microsoft Store. Administrators can block the ability to enable **Developer Mode** using the **ApplicationManagement/AllowDeveloper Unlock** setting in the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx). [Learn more about Developer Mode.](https://msdn.microsoft.com/windows/uwp/get-started/enable-your-device-for-development#developer-mode)
    
2. On a PC, connect to the HoloLens using [Wi-Fi](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal.html#connecting_over_wi-fi) or [USB](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal.html#connecting_over_usb).

3. [Create a user name and password](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal.html#creating_a_username_and_password) if this is the first time you connect to the Windows Device Portal, or enter the user name and password that you previously set up.

    >[!TIP]
    >If you see a certificate error in the browser, follow [these troubleshooting steps](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal.html#security_certificate). 

4. In the Windows Device Portal, click **Kiosk Mode**.

    ![Kiosk Mode](images/kiosk.png)

    >[!NOTE]
    >The kiosk mode option will be available if the device is [enrolled in device management](hololens-enroll-mdm.md) and has a [license to upgrade to Windows Holographic for Business](hololens-upgrade-enterprise.md).

5. Select **Enable Kiosk Mode**, choose an app to run when the device starts, and click **Save**.

