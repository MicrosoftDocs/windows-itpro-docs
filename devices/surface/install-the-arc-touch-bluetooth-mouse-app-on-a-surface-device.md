---
title: Install the Arc Touch Bluetooth Mouse app on a Surface device
description: Find out about the Arc Touch Bluetooth Mouse app and how you can install it in a Microsoft Deployment Toolkit (MDT) deployment share or on a single computer.
MSHAttr: PreferredLib /library
ms.assetid: D3D306EF-4421-47F6-9467-9512B5E0EE77
keywords: ["Surface Surface Pro 3 device bluetooth customize image install download app"]
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Install the Arc Touch Bluetooth Mouse app on a Surface device


**In this article**

-   [Arc Touch Bluetooth Mouse app overview](#arc-touch-bluetooth-mouse-app-overview)
-   [Install the Arc Touch Bluetooth Mouse app in an MDT deployment share](#install-the-arc-touch-bluetooth-mouse-app-in-an-mdt-deployment-share)
-   [Install the Arc Touch Bluetooth Mouse app on a single computer](#install-the-arc-touch-bluetooth-mouse-app-on-a-single-computer)

Find out about the Arc Touch Bluetooth Mouse app and how you can install it in a [Microsoft Deployment Toolkit (MDT)](http://go.microsoft.com/fwlink/p/?LinkId=618117) deployment share or on a single computer.

If your organization is preparing images that will be deployed to your Surface devices and you have standardized on using the Arc Touch Bluetooth Mouse or Arc Touch Mouse Surface Edition, you may want to include the Arc Touch Bluetooth Mouse app inside your images instead of requiring users to download and install the app from the Windows Store individually. After it is installed, the Arc Touch Bluetooth Mouse app enables users to customize the behavior of the mouse, including the touch strip and scrolling.

## Arc Touch Bluetooth Mouse app overview


The Arc Touch Bluetooth Mouse app is available as a free download from the [Microsoft Download Center](http://go.microsoft.com/fwlink/p/?LinkId=618121). When you click **Download**, a choice of two .zip files is displayed. Select the **ArcTouchBluetoothMouse\_05272015.zip** checkbox, and then click **Next** to begin the download.

The ArcTouchBluetoothMouse\_05272015.zip file contains these three files:

-   **AUMIDs.txt** – Contains the Application User Model IDs for the Arc Touch Bluetooth Mouse App.
-   **Microsoft.ArcTouchMouseSurfaceEditionSettings\_8wekyb3d8bbwe.xml** – Contains license information.
-   **Microsoft.ArcTouchMouseSurfaceEditionSettings\_2014.1218.315.2628\_neutral\_~\_8wekyb3d8bbwe.appxbundle** – Arc Touch Bluetooth Mouse App.

## Install the Arc Touch Bluetooth Mouse app in an MDT deployment share


The following procedure uses the [Microsoft Deployment Toolkit (MDT)](http://go.microsoft.com/fwlink/p/?LinkId=618117) to inject the Arc Touch Bluetooth Mouse app. The application is provisioned automatically by MDT during deployment and thus this process can be used with existing images.

1.  Download the [ArcTouchBluetoothMouse\_05272015.zip](http://go.microsoft.com/fwlink/p/?LinkId=618121) file.
2.  Extract the contents of the ArcTouchBluetoothMouse\_05272015.zip file into an accessible location so that you can import them into the MDT deployment share in the next step.
3.  Using the New Application Wizard in the MDT Deployment Workbench, import the extracted files as a new Application with source files.
4.  On the **Command Details** page of the New Application Wizard, use the following command and run location:

    **Command:**

    <span codelanguage=""></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>DISM.exe /Online /Add-ProvisionedAppxPackage /PackagePath: 
    Microsoft.ArcTouchMouseSurfaceEditionSettings_2014.1218.315.2628_neutral_~_8wekyb3d8bbwe.appxbundle /LicensePath: 
    Microsoft.ArcTouchMouseSurfaceEditionSettings_8wekyb3d8bbwe.xml</code></pre></td>
    </tr>
    </tbody>
    </table>

    **Working directory -%DEPLOYROOT%\\Applications\\ArcTouchBluetoothMouseApp.**

After deployment, the Arc Touch Bluetooth Mouse app will be available for selection in the Applications step of the Windows Deployment Wizard. You can also install the application automatically by specifying the application in the deployment task sequence by following this process:

1.  Open your deployment task sequence in the MDT Deployment Workbench.
2.  Add a new **Install Application** task in the **State Restore** section of deployment.
3.  Select **Install a single application** and specify the **Arc Touch Bluetooth Mouse app** as the Application to be installed.

See [Sideload Apps with the Microsoft Deployment Toolkit](http://go.microsoft.com/fwlink/p/?LinkId=618167) for more information.

## Install the Arc Touch Bluetooth Mouse app on a single computer


The following procedure installs the Arc Touch Bluetooth Mouse app onto your computer and makes it available for the existing user and any user accounts created afterwards.

1.  Download the [ArcTouchBluetoothMouse\_05272015.zip](http://go.microsoft.com/fwlink/p/?LinkId=618121) file.
2.  Extract the contents of the ArcTouchBluetoothMouse\_05272015.zip file into a temporary file folder. (For example, c:\\Temp.)
3.  Begin an elevated Windows PowerShell session.
    **Note**   If you don’t run PowerShell as an administrator, the session won’t have the required permissions to install the app.

     

4.  In the elevated PowerShell session, copy and paste the following command:
    <span codelanguage=""></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>Add-AppxProvisionedPackage –Online –PackagePath 
    &lt;TempPath&gt;\Microsoft.ArcTouchMouseSurfaceEditionSettings_2014.1218.315.2628_neutral_~_8wekyb3d8bbwe.appxbundle –LicensePath 
    &lt;TempPath&gt;\Microsoft.ArcTouchMouseSurfaceEditionSettings_8wekyb3d8bbwe.xml </code></pre></td>
    </tr>
    </tbody>
    </table>

    Where &lt;TempPath&gt; is the folder where you extracted the ArcTouchBluetoothMouse\_05272015.zip file contents. For example, if you extracted the .zip file contents to the c:\\Temp folder, the command you run is:
    <span codelanguage=""></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>Add-AppxProvisionedPackage –Online –PackagePath 
    c:\Temp\Microsoft.ArcTouchMouseSurfaceEditionSettings_2014.1218.315.2628_neutral_~_8wekyb3d8bbwe.appxbundle –LicensePath 
    c:\Temp\Microsoft.ArcTouchMouseSurfaceEditionSettings_8wekyb3d8bbwe.xml</code></pre></td>
    </tr>
    </tbody>
    </table>

The Arc Touch Bluetooth Mouse app is now available on your current Windows computer. You can continue to customize your computer or begin to capture an image of that computer. You can find more information about how to capture an image on the [Surface TechCenter](http://go.microsoft.com/fwlink/p/?LinkId=618168).

 

 





