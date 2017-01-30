---
title: Set up HoloLens in kiosk mode (HoloLens)
description: Kiosk mode limits the user's ability to launch new apps or change the running app. 
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: jdeckerMS
localizationpriority: medium
---

# Set up HoloLens in kiosk mode



Kiosk mode limits the user's ability to launch new apps or change the running app. When kiosk mode is enabled for HoloLens, the bloom gesture and Cortana are disabled, and placed apps aren't shown in the user's surroundings.

1. [Set up the HoloLens to use the Windows Device Portal](https://developer.microsoft.com/windows/holographic/using_the_windows_device_portal#setting_up_hololens_to_use_windows_device_portal). The Device Portal is a web server on your HoloLens that you can connect to from a web browser on your PC. 

    >[!IMPORTANT]
    >When you set up HoloLens to use the Device Portal, you must enable **Developer Mode** on the device. **Developer Mode** on a device that has been upgraded to Windows Holographic for Business enables side-loading of apps, which risks the installation of apps that have not been certified by the Microsoft Store. Administrators can block the ability to enable **Developer Mode** using the **ApplicationManagement/AllowDeveloper Unlock** setting in the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx). [Learn more about Developer Mode.](https://msdn.microsoft.com/windows/uwp/get-started/enable-your-device-for-development#developer-mode)
    
2. On a PC, connect to the HoloLens using [Wi-Fi](https://developer.microsoft.com/windows/holographic/Using_the_Windows_Device_Portal.html#connecting_over_wi-fi) or [USB](https://developer.microsoft.com/windows/holographic/Using_the_Windows_Device_Portal.html#connecting_over_usb).

3. [Create a user name and password](https://developer.microsoft.com/windows/holographic/Using_the_Windows_Device_Portal.html#creating_a_username_and_password) if this is the first time you connect to the Windows Device Portal, or enter the user name and password that you previously set up.

    >[!TIP]
    >If you see a certificate error in the browser, follow [these troubleshooting steps](https://developer.microsoft.com/windows/holographic/Using_the_Windows_Device_Portal.html#security_certificate). 

4. In the Windows Device Portal, click **Kiosk Mode**.

    ![Kiosk Mode](images/kiosk.png)

    >[!NOTE]
    >The kiosk mode option will be available if the device is [enrolled in device management](hololens-enroll-mdm.md) and has a [license to upgrade to Windows Holographic for Business](hololens-upgrade-enterprise.md).

5. Select **Enable Kiosk Mode**, choose an app to run when the device starts, and click **Save**.

