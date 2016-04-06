---
title: Update Windows 10 images with provisioning packages (Windows 10)
description: Use a provisioning package to apply settings, profiles, and file assets to a Windows 10 image.
ms.assetid: 3CA345D2-B60A-4860-A3BF-174713C3D3A6
keywords: ["provisioning", "bulk deployment", "image"]
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: CFaw
---

# Update Windows 10 images with provisioning packages
**Applies to**

-   Windows 10
-   Windows 10 Mobile

Use a provisioning package to apply settings, profiles, and file assets to a Windows 10 image.

In Windows 10, you can apply a provisioning package at any time. A provisioning package can include management instructions and policies, installation of specific apps, customization of network connections and policies, and more.

You can include provisioning packages when you build a Windows image. This way, you can create a single provisioning package that you can add to different hardware-specific images.

You can also put a provisioning package on a USB drive or SD card to apply to off-the-shelf devices. You can even send the provisioning package to someone in email.

Rather than wiping a device and applying a new system image when you need to change configuration, you can reset the device to its original state and then apply a new provisioning package.

For details about the settings you can customize in provisioning packages, see [Windows Provisioning settings reference]( http://go.microsoft.com/fwlink/p/?LinkId=619012).

## Advantages
-   You can configure new devices without reimaging.

-   Works on both mobile and desktop devices.

-   No network connectivity required.

-   Simple for people to apply.

-   Ensure compliance and security before a device is enrolled in MDM.

## Create package
Use the Windows Imaging and Configuration Designer (ICD) tool included in the Windows Assessment and Deployment Kit (ADK) for Windows 10 to create a runtime provisioning package. [Install the ADK.](http://go.microsoft.com/fwlink/p/?LinkId=526740)

1.  Open Windows ICD (by default, `%windir%\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86\ICD.exe`).

2.  Choose **New provisioning package**.

3.  Name your project, and click **Next**.

4.  Choose **Common to all Windows editions** and click **Next**.

5.  On **New project**, click **Finish**. The workspace for your package opens.

6.  Configure settings. [Learn more about specific settings in provisioning packages.]( http://go.microsoft.com/fwlink/p/?LinkId=615916)

7.  On the **File** menu, select **Save.**

8.  On the **Export** menu, select **Provisioning package**.

9.  Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next.**

10. Set a value for **Package Version**.

    **Tip**  
    You can make changes to existing packages and change the version number to update previously applied packages.

11. Optional. In the **Provisioning package security** window, you can choose to encrypt the package and enable package signing.

    -   **Enable package encryption** - If you select this option, an auto-generated password will be shown on the screen.

    -   **Enable package signing** - If you select this option, you must select a valid certificate to use for signing the package. You can specify the certificate by clicking **Select...** and choosing the certificate you want to use to sign the package.

        **Important**  
        We recommend that you include a trusted provisioning certificate in your provisioning package. When the package is applied to a device, the certificate is added to the system store and any package signed with that certificate thereafter can be applied silently. 

12. Click **Next** to specify the output location where you want the provisioning package to go once it's built. By default, Windows ICD uses the project folder as the output location.<p>
Optionally, you can click **Browse** to change the default output location.

13. Click **Next**.

14. Click **Build** to start building the package. The project information is displayed in the build page and the progress bar indicates the build status.<p>
If you need to cancel the build, click **Cancel**. This cancels the current build process, closes the wizard, and takes you back to the **Customizations Page**.

15. If your build fails, an error message will show up that includes a link to the project folder. You can scan the logs to determine what caused the error. Once you fix the issue, try building the package again.<p>
If your build is successful, the name of the provisioning package, output directory, and project directory will be shown.

    -   If you choose, you can build the provisioning package again and pick a different path for the output package. To do this, click **Back** to change the output package name and path, and then click **Next** to start another build.
    
    -   If you are done, click **Finish** to close the wizard and go back to the **Customizations Page**.

16. Select the **output location** link to go to the location of the package. You can provide that .ppkg to others through any of the following methods:

    -   Shared network folder

    -   SharePoint site

    -   Removable media (USB/SD)

    -   Email

    -   USB tether (mobile only)

    -   NFC (mobile only)

## Add package to image
**To add a provisioning package to Windows 10 for desktop editions (Home, Pro, Enterprise, and Education)**

-   Follow the steps in the "To build an image for Windows 10 for desktop editions" section in [Use the Windows ICD command-line interface]( http://go.microsoft.com/fwlink/p/?LinkId=617371).

**To add a provisioning package to a Windows 10 Mobile image**

-   Follow the steps in the "To build an image for Windows 10 Mobile or Windows 10 IoT Core (IoT Core)" section in [Use the Windows ICD command-line interface]( http://go.microsoft.com/fwlink/p/?LinkId=617371).<p>
The provisioning package is placed in the FFU image and is flashed or sector written to the device. During device setup time, the provisioning engine starts and consumes the packages.

## Learn more
-   [Build and apply a provisioning package]( http://go.microsoft.com/fwlink/p/?LinkId=629651)

-   [Provisioning Windows 10 Devices with New Tools](http://go.microsoft.com/fwlink/p/?LinkId=615921)

-   [Windows 10 for Mobile Devices: Provisioning Is Not Imaging](http://go.microsoft.com/fwlink/p/?LinkId=615922)

## Related topics
- [Configure devices without MDM](../manage/configure-devices-without-mdm.md)