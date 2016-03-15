---
title: Install the Surface app
description: Find out how to install the Surface app on your computer.
MSHAttr: PreferredLib /library
ms.assetid: D17D0DA5-E544-4F94-8686-9496A73FF3D1
keywords: ["install app free download device deploy"]
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Install the Surface app


**In this article**

-   [How to install the Surface app on your computer](#how-to-install-the-surface-app-on-your-computer)
-   [How to install the Surface app as part of an MDT deployment share](#how-to-install-the-surface-app-as-part-of-an-mdt-deployment-share)
-   [Related topics](#related-topics)

Find out how to install the Surface app on your computer.

The Surface app is a lightweight Windows Store app that provides control of these Surface-specific settings and options:

-   Enable or disable the Windows button on the Surface device

-   Adjust the sensitivity of a Surface Pen

-   Customize Surface Pen button actions

-   Enable or disable Surface audio enhancements

The app also includes quick access to support documentation and to support information for your Surface device.

If your organization is preparing images that will be deployed to your Surface devices, you may want to include the Surface app (formerly called the Surface Hub) inside your images instead of requiring users to download and install the app from the Windows Store individually. The Surface app is available as a free download, packaged as a single .zip file, from the [Surface tools for IT](http://go.microsoft.com/fwlink/p/?LinkId=618121) page on the Microsoft Download Center.

The SurfaceApp\_xxxxxx.zip file contains the following files:

-   **5164dcd1aa5240c09c3d2108cfb773af\_License1.xml** - contains license information
-   **5164dcd1aa5240c09c3d2108cfb773af.appxbundle** - Surface app

**Note**  
Surface app version 10.0.342.0 and later require Windows 10 and will not install on Windows 8.1.

 

## How to install the Surface app on your computer


Follows these steps to install the Surface app on your computer and make it available for the existing user and any user accounts created thereafter:

1.  Download the [SurfaceApp\_xxxxxx.zip](http://go.microsoft.com/fwlink/p/?LinkId=618121) file.
2.  Extract the contents of the SurfaceApp\_xxxxxx.zip file into the temporary file folder, **C:\\Temp**.
3.  Begin an elevated PowerShell session.
    **Note**   If you don't run PowerShell as an administrator, the session won't have the required permissions to install the app.

     

4.  In the elevated PowerShell session, copy and paste the following command:
    <span codelanguage=""></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>Add-AppxProvisionedPackage -Online -PackagePath C:\Temp\5164dcd1aa5240c09c3d2108cfb773af.appxbundle -LicensePath C:\Temp\5164dcd1aa5240c09c3d2108cfb773af_License1.xml
     </code></pre></td>
    </tr>
    </tbody>
    </table>

5.  Delete the extracted files from the C:\\Temp folder, where the installation files were temporarily stored.

The Surface app will now be available on your current Windows computer. You can then proceed to customize your computer or begin to capture an image of that computer. For more information about capturing an image, see [Deploy Surface](http://go.microsoft.com/fwlink/p/?LinkId=618168).

## How to install the Surface app as part of an MDT deployment share


The following procedure uses the [Microsoft Deployment Toolkit (MDT)](http://go.microsoft.com/fwlink/p/?LinkId=618117) to inject the Surface app. The application is provisioned automatically by MDT during deployment and thus you can use this process with existing images.

1.  Download the [SurfaceApp\_xxxxxx.zip](http://go.microsoft.com/fwlink/p/?LinkId=618121) file.
2.  Extract the contents of the SurfaceApp\_xxxxxx.zip file into an accessible location so you can import them into the MDT deployment share in the next step.
3.  Using the New Application Wizard in the MDT Deployment Workbench, import the extracted files as a new **Application with source files**.
4.  On the **Details** page of the **New Application Wizard**, type **Surface App** in the **Application Name** field.
5.  On the **Command Details** page of the **New Application Wizard**:

    -   Use the following command in the **Command Line** field:

        <span codelanguage=""></span>
        <table>
        <colgroup>
        <col width="100%" />
        </colgroup>
        <tbody>
        <tr class="odd">
        <td align="left"><pre><code>DISM.exe /Online /Add-ProvisionedAppxPackage /PackagePath:5164dcd1aa5240c09c3d2108cfb773af.appxbundle /LicensePath:5164dcd1aa5240c09c3d2108cfb773af_License1.xml
         </code></pre></td>
        </tr>
        </tbody>
        </table>

    -   Use the following location in the **Working Directory** field:

        <span codelanguage=""></span>
        <table>
        <colgroup>
        <col width="100%" />
        </colgroup>
        <tbody>
        <tr class="odd">
        <td align="left"><pre><code>%DEPLOYROOT%\Applications\Surface App </code></pre></td>
        </tr>
        </tbody>
        </table>

After deployment, the Surface app will be available for selection in the Applications step of the Windows Deployment Wizard. You can also install the application automatically by specifying the application in the deployment task sequence by following this process:

1.  Open your deployment task sequence in the MDT Deployment Workbench.
2.  Add a new **Install Application** task in the **State Restore** section of deployment.
3.  Select **Install a single application** and specify **Surface App** as the **Application to be installed**.

## Related topics


[Deploy a Windows 10 image using MDT 2013 Update 1](1d70a3d8-1b1d-4051-b656-c0393a93f83c)

[Sideload LOB apps in Windows 10](C46B27D0-375B-4F7A-800E-21595CF1D53D)

 

 





