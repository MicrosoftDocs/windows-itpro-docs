---
title: Sideload LOB apps in Windows 10 (Windows 10)
description: Sideload line-of-business apps in Windows 10.
ms.assetid: C46B27D0-375B-4F7A-800E-21595CF1D53D
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
author: msfttracyp
ms.date: 05/20/2019
---

# Sideload LOB apps in Windows 10
**Applies to**

-   Windows 10
-   Windows 10 Mobile

"Line-of-Business" (LOB) apps are present in a wide range of businesses and organizations. Organizations value these apps because they solve problems unique to each business.

When you sideload an app, you deploy a signed app package to a device. You maintain the signing, hosting, and deployment of these apps. Sideloading was also available with Windows 8 and Windows 8.1

In Windows 10, sideloading is different than in earlier versions of Windows:

-   You can unlock a device for sideloading using an enterprise policy, or through **Settings**

-   License keys are not required

-   Devices do not have to be joined to a domain

## Requirements
Here's what you'll need to have:

-   Devices need to be unlocked for sideloading (unlock policy enabled)

-   Certificate assigned to app

-   Signed app package

And here's what you'll need to do:

-   Turn on sideloading - you can push a policy with an MDM provider, or you can use **Settings**.

-   Trust the app - import the security certificate to the local device.

-   Install the app - use PowerShell to install the app package.

## How do I sideload an app on desktop
You can sideload apps on managed or unmanaged devices.

>[!IMPORTANT]
> To install an app on Windows 10, in addition to following [these procedures](https://docs.microsoft.com/windows/msix/app-installer/installing-windows10-apps-web), users can also double-click any APPX/MSIX package.


**To turn on sideloading for managed devices**

-   Deploy an enterprise policy.



**To turn on sideloading for unmanaged devices**

1.  Open **Settings**.

2.  Click **Update & Security** &gt; **For developers**.

3.  On **Use developer features**, select **Sideload apps**.

**To import the security certificate**

1.  Open the security certificate for the appx package, and select **Install Certificate**.

2.  On the **Certificate Import Wizard**, select **Local Machine**.

3.  Import the certificate to the **Trusted Root Certification Authorities** folder.

    -OR-

    You can use a runtime provisioning package to import a security certificate. For information about applying a provisioning package to a Windows 10 device, see runtime instructions on [Build and apply a provisioning package]( https://go.microsoft.com/fwlink/p/?LinkId=619162).

**To install the app**
-   From the folder with the appx package, run the PowerShell `Add-AppxPackage` command to install the appx package.

## How do I sideload an app on mobile
You can sideload apps on managed or unmanaged devices.

**To turn on sideloading for a managed device**

-   Deploy an enterprise policy.

**To turn on sideloading for unmanaged devices**

1.  Open **Settings**.

2.  Click **Update & Security** &gt; **For developers**.

3.  On **Use developer features**, select **Sideload apps**.

**To import the security certificate for managed devices**

1.  Open the security certificate for the appx package, and select **Install Certificate**.

2.  On the **Certificate Import Wizard**, select **Local Machine**.

3.  Import the certificate to the **Trusted Root Certification Authorities** folder.

**To import the security certificate for unmanaged devices**

-   You can use a runtime provisioning package to import a security certificate. For information about applying a provisioning package to a Windows 10 mobile device, see runtime instructions on [Build and apply a provisioning package]( https://go.microsoft.com/fwlink/p/?LinkId=619164).

**To install the app**

-   From an email, tap a xap, appx, or appx bundle package.

    -OR-

    With your mobile device tethered to a desktop, click a xap, appx, or appx bundle package from the files system to install the app.

 

 





