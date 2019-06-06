---
title: Set up a kiosk on Windows 10 Mobile or Windows 10 Mobile Enterprise (Windows 10)
description: A device in kiosk mode runs a specified app with no access to other device functions, menus, or settings.
ms.assetid: 35EC82D8-D9E8-45C3-84E9-B0C8C167BFF7
ms.reviewer: 
manager: dansimp
keywords: kiosk, lockdown, assigned access
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: mobile
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# Set up a kiosk on Windows 10 Mobile or Windows 10 Mobile Enterprise


**Applies to**

-   Windows 10 Mobile


A device in kiosk mode runs a specified app with no access to other device functions, menus, or settings. You use the [Enterprise Assigned Access](#enterprise-assigned-access) configuration service provider (CSP) to configure a kiosk experience. You can also configure a device running Windows 10 Mobile or Windows 10 Mobile Enterprise, version 1607 or earlier, for kiosk mode by using the [Apps Corner](#apps-corner) feature. (Apps Corner is removed in version 1703.)



## Enterprise Assigned Access


Enterprise Assigned Access allows you to put your Windows 10 Mobile or Windows 10 Mobile Enterprise device in kiosk mode by creating a user role that has only a single app, set to run automatically, in the Allow list.

>[!NOTE]
>The app can be a Universal Windows app, Universal Windows Phone 8 app, or a legacy Silverlight app.

 

### Set up Enterprise Assigned Access in MDM

In AssignedAccessXml, for Application, you enter the product ID for the app to run in kiosk mode. Find product IDs at [Product IDs in Windows 10 Mobile](product-ids-in-windows-10-mobile.md).

[See the technical reference for the Enterprise Assigned Access configuration service provider (CSP).](https://go.microsoft.com/fwlink/p/?LinkID=618601)

### Set up assigned access using Windows Configuration Designer

>[!IMPORTANT] 
>When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

#### Create the *AssignedAccess*.xml file

1.  Create an *AssignedAccess*.xml file that specifies the app the device will run. (You can name use any file name.) For instructions on AssignedAccessXml, see [EnterpriseAssignedAccess CSP](https://go.microsoft.com/fwlink/p/?LinkID=618601).

    >[!NOTE]
    >Do not escape the xml in *AssignedAccess*.xml file as Windows Configuration Designer will do that when building the package. Providing escaped xml in Windows ICD will cause building the package fail.
    
#### Create the provisioning package

1. [Install Windows Configuration Designer.](../provisioning-packages/provisioning-install-icd.md)

2.  Open Windows Configuration Designer (if you installed it from the Windows ADK, `%windir%\\Program Files (x86)\\Windows Kits\\10\\Assessment and Deployment Kit\\Imaging and Configuration Designer\\x86\\ICD.exe`).

3. Choose **Advanced provisioning**.



4.  Name your project, and click **Next**.

5.  Choose **All Windows mobile editions** and click **Next**.

6.  On **New project**, click **Finish**. The workspace for your package opens.

7.  Expand **Runtime settings** &gt; **EmbeddedLockdownProfiles**, and click **AssignedAccessXml**.

8.  Click **Browse** to select the *AssignedAccess*.xml file.

9.  On the **File** menu, select **Save.**

10. On the **Export** menu, select **Provisioning package**.

11. Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next.**

12. Optional. In the **Provisioning package security** window, you can choose to encrypt the package and enable package signing.

    -   **Enable package encryption** - If you select this option, an auto-generated password will be shown on the screen.

    -   **Enable package signing** - If you select this option, you must select a valid certificate to use for signing the package. You can specify the certificate by clicking **Select** and choosing the certificate you want to use to sign the package.

13. Click **Next** to specify the output location where you want the provisioning package to go when it's built. By default, Windows ICD uses the project folder as the output location.

    Optionally, you can click **Browse** to change the default output location.

14. Click **Next**.

15. Click **Build** to start building the package. The provisioning package doesn't take long to build. The project information is displayed in the build page and the progress bar indicates the build status.

    If you need to cancel the build, click **Cancel**. This cancels the current build process, closes the wizard, and takes you back to the **Customizations Page**.

16. If your build fails, an error message will show up that includes a link to the project folder. You can scan the logs to determine what caused the error. Once you fix the issue, try building the package again.

    If your build is successful, the name of the provisioning package, output directory, and project directory will be shown.

    -   If you choose, you can build the provisioning package again and pick a different path for the output package. To do this, click **Back** to change the output package name and path, and then click **Next** to start another build.
    -   If you are done, click **Finish** to close the wizard and go back to the **Customizations Page**.

17. Select the **output location** link to go to the location of the package. 

#### Distribute the provisioning package

You can distribute that .ppkg to mobile devices using any of the following methods:

-   Removable media (USB/SD)

    **To apply a provisioning package from removable media**

    1.  Copy the provisioning package file to the root directory on a micro SD card.

    2.  On the device, insert the micro SD card containing the provisioning package.

    3.  Go to **Settings** &gt; **Accounts** &gt; **Provisioning.**

    4.  Tap **Add a package**.

    5.  On the **Choose a method** screen, in the **Add from** dropdown menu, select **Removable Media**.

    6.  Select a package will list all available provisioning packages on the micro SD card. Tap the desired package, and then tap **Add**.

    7.  You will see a message that tells you what the package will do the device, such as **Adding it will: Lock down the user interface**. Tap **Yes, add it**.

    8.  Restart the device and verify that the runtime settings that were configured in the provisioning package were applied to the device.

-   Email

    **To apply a provisioning package sent in email**

    1.  Send the provisioning package in email to an account on the device.

    2.  Open the email on the device, and then double-tap the attached file.

    3.  You will see a message that tells you what the package will do the device, such as **Adding it will: Lock down the user interface**. Tap **Yes, add it**.

    4.  Restart the device and verify that the runtime settings that were configured in the provisioning package were applied to the device.

-   USB tether 

    **To apply a provisioning package using USB tether**

    1.  Connect the device to your PC by USB.

    2.  Select the provisioning package that you want to use to provision the device, and then drag and drop the file to your device.

    3.  The provisioning package installation dialog will appear on the phone.

    4.  You will see a message that tells you what the package will do the device, such as **Adding it will: Lock down the user interface**. Tap **Yes, add it**.

    5.  Restart the device and verify that the runtime settings that were configured in the provisioning package were applied to the device.

       

## Apps Corner

>[!NOTE]
>For Windows 10, versions 1507, 1511, and 1607 only.

Apps Corner lets you set up a custom Start screen on your Windows 10 Mobile or Windows 10 Mobile Enterprise device, where you can share only the apps you choose with the people you let use your device. You configure a device for kiosk mode by selecting a single app to use in Apps Corner.

**To set up Apps Corner**

1.  On Start ![start](../images/starticon.png), swipe over to the App list, then tap **Settings** ![settings](../images/settingsicon.png) &gt; **Accounts** &gt; **Apps Corner**.

2.  Tap **Apps**, tap to select the app that you want people to use in the kiosk mode, and then tap done ![done icon](images/doneicon.png).

3.  If your phone doesn't already have a lock screen password, you can set one now to ensure that people can't get to your Start screen from Apps Corner. Tap **Protect my phone with a password**, click **Add**, type a PIN in the **New PIN** box, type it again in the **Confirm PIN** box, and then tap **OK**. Press **Back** ![back](../images/backicon.png) to the Apps Corner settings.

4.  Turn **Action center** on or off, depending on whether you want people to be able to use these features when using the device in kiosk mode.

5.  Tap **advanced**, and then turn features on or off, depending on whether you want people to be able to use them.

6.  Press **Back** ![back](../images/backicon.png) when you're done.

**To use Apps Corner**

1.  On Start ![start](../images/starticon.png), swipe over to the App list, then tap **Settings** ![settings](../images/settingsicon.png) &gt; **Accounts** &gt; **Apps Corner** &gt; launch ![launch](../images/launchicon.png).

    >[!TIP]  
    >Want to get to Apps Corner with one tap? In **Settings**, tap **Apps Corner** &gt; **pin** to pin the Apps Corner tile to your Start screen.
  
2.  Give the device to someone else, so they can use the device and only the one app you chose.

3.  When they're done and you get the device back, press and hold Power ![power](../images/powericon.png), and then swipe right to exit Apps Corner.

## Related topics


[Set up a kiosk on Windows 10 Pro, Enterprise, or Education](../set-up-a-kiosk-for-windows-10-for-desktop-editions.md)

[Configure Windows 10 Mobile using Lockdown XML](lockdown-xml.md)

[Product IDs in Windows 10 Mobile](product-ids-in-windows-10-mobile.md)

 



