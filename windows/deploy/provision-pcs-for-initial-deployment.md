---
title: Provision PCs with common settings (Windows 10)
description: Create a provisioning package to apply common settings to a PC running Windows 10. 
ms.assetid: 66D14E97-E116-4218-8924-E2A326C9367E
keywords: ["runtime provisioning", "provisioning package"]
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---

# Provision PCs with common settings for initial deployment


**Applies to**

-   Windows 10
-   Windows 10 Mobile

This topic explains how to create and apply a provisioning package that contains common enterprise settings to a device running Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile, or Windows 10 Mobile Enterprise.

In Windows 10, you can apply a provisioning package at any time. You can put a provisioning package on a USB drive to apply to off-the-shelf devices during setup, making it fast and easy to configure new devices. 

## Advantages
-   You can configure new devices without reimaging.

-   Works on both mobile and desktop devices.

-   No network connectivity required.

-   Simple for people to apply.

-   Ensure compliance and security before a device is enrolled in MDM.

##Create the provisioning package

Use the Windows Imaging and Configuration Designer (ICD) tool included in the Windows Assessment and Deployment Kit (ADK) for Windows 10 to create a provisioning package. [Install the ADK.](http://go.microsoft.com/fwlink/p/?LinkId=526740)

1. Open Windows ICD (by default, %windir%\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86\ICD.exe).

2. Click **Simple provisioning**.

3. Name your project and click **Finish**.

4. In the **Set up device** step, enter a unique 15-character name for the device. For help generating a unique name, you can use %SERIAL%, which includes a hardware-specific serial number, or you can use %RAND:x%, which generates random characters of x length.

5. (Optional) You can upgrade the following editions of Windows 10 by providing a product key for the edition to upgrade to.
    - Home to Education
    - Pro to Education
    - Pro to Enterprise
    - Enterprise to Education
    - Mobile to Mobile Enterprise


6. Click **Set up network**.

7. Toggle **On** or **Off** for wireless network connectivity. If you select **On**, enter the SSID, type, and (if required) password for the wireless network.

8. Click **Enroll into Active Directory**.

9. Toggle **Yes** or **No** for Active Directory enrollment. If you select **Yes**, enter the credentials for an account with permissions to enroll the device. (Optional) Enter a user name and password to create a local administrator account.

    > **Warning**: If you don't create a local administrator account and the device fails to enroll in Active Directory for any reason, you will have to reimage the device and start over. As a best practice, we recommend:
      - Use a least-privileged domain account to join the device to the domain.
      - Create a temporary administrator account to use for debugging or reprovisioning if the device fails to enroll successfully.
      - [Use Group Policy to delete the temporary administrator account](https://blogs.technet.microsoft.com/canitpro/2014/12/10/group-policy-creating-a-standard-local-admin-account/) after the device is enrolled in Active Directory.


10. Click **Finish**.

11. Review your settings in the summary. You can return to previous pages to change your selections. Then, under Protect your package, toggle **Yes** or **No** to encrypt the provisioning package. If you select **Yes**, enter a password. This password must be entered to apply the encrypted provisioning package.

12. Click **Create**.

> **Important**  When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

## Apply package



## Learn more


-   [Provisioning Windows 10 Devices with New Tools](http://go.microsoft.com/fwlink/p/?LinkId=615921)

-   [Windows 10 for Mobile Devices: Provisioning Is Not Imaging](http://go.microsoft.com/fwlink/p/?LinkId=615922)

 

 





