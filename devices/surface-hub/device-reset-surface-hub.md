---
title: Device reset (Surface Hub)
description: You may wish to reset your Microsoft Surface Hub.
ms.assetid: 44E82EEE-1905-464B-A758-C2A1463909FF
keywords: reset Surface Hub
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: surfacehub
author: TrudyHa
localizationpriority: medium
---

# Device reset (Surface Hub)


You may wish to reset your Microsoft Surface Hub.

Typical reasons for a reset include:

-   The device isn’t running well after installing an update.
-   You’re repurposing the device for a new meeting space and want to reconfigure it.
-   You want to change how you locally manage the device.

Initiating a reset will return the device to the last cumulative Windows update, and remove all local user files and configuration, including:

-   The device account
-   MDM enrollment
-   Domain join or Azure AD join information
-   Local admins on the device
-   Configurations from MDM or the Settings app

**To reset a Surface Hub from Settings**</br>
1.	On your Surface Hub, open **Settings**. 

    ![Image showing Settings app for Surface Hub.](images/sh-settings.png)
 
2.	Click **Update & Security**.

    ![Image showing Update & Security group in Settings app for Surface Hub.](images/sh-settings-update-security.png)
 
3.	Click **Recovery**, and then click **Get started**.

    ![Image showing Reset device option in Settings app for Surface Hub.](images/sh-settings-reset-device.png) 

**To reset a Surface Hub from Windows Recovery Environment**</br>
On rare occasions, a Surface Hub may encounter an error while cleaning up user and app data at the end of a session. When this happens, the device will automatically reboot and try again. If this operation fails repeatedly, the device will be automatically locked to protect user data. To unlock it, you must reset the device from Windows Recovery Environment (Windows RE). To learn more about Windows RE, see [What is Windows RE?](https://technet.microsoft.com/library/cc765966.aspx).

To reset a Surface Hub from Windows RE:

1.  From the welcome screen, toggle the Surface Hub's power switch 3 times. Wait a few seconds between each toggle. See the [Surface Hub Site Readiness Guide](https://www.microsoft.com/surface/support/surface-hub/surface-hub-site-readiness-guide) for help with locating the power switch.
2.  The device should automatically boot into Windows RE. Select **Advanced Repair**.
3.  Select **Reset**.
4.  If prompted, enter your device's BitLocker key.

**Important Note**</br>
Performing a device reset may take up to 2 hours. Do not interrupt the reset process. Interrupting the process will render the device inoperable, requiring warranty service to return to normal functionality.

After the reset, Surface Hub restarts the [first run program](first-run-program-surface-hub.md) again. 

## Related topics


[Manage Microsoft Surface Hub](manage-surface-hub.md)

[Microsoft Surface Hub administrator's guide](surface-hub-administrators-guide.md)
