---
title: Install Windows Imaging and Configuration Designer (Windows 10)
description: Learn how to install and run Windows ICD. 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Install Windows Imaging and Configuration Designer (ICD)


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Use the Windows Imaging and Configuration Designer (ICD) tool in the Windows Assessment and Deployment Kit (ADK) to create provisioning packages to easily configure devices running Windows 10. Windows ICD is primarily designed for use by IT departments for business and educational institutions who need to provision bring-your-own-device (BYOD) and business-supplied devices.

## Supported platforms

Windows ICD can create provisioning packages for Windows 10 desktop and mobile editions, including Windows 10 IoT Core. You can run Windows ICD on the following operating systems:

- Windows 10 - x86 and amd64
- Windows 8.1 Update - x86 and amd64
- Windows 8.1 - x86 and amd64
- Windows 8 - x86 and amd64
- Windows 7 - x86 and amd64
- Windows Server 2016
- Windows Server 2012 R2 Update
- Windows Server 2012 R2
- Windows Server 2012
- Windows Server 2008 R2

## Install Windows ICD

1. Go to [Download the Windows ADK](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit) and select **Get Windows ADK** for the version of Windows 10 that you want to create provisioning packages for (version 1511 or version 1607).

    >[!NOTE]
    >The rest of this procedure uses Windows ADK for Windows 10, version 1607 as an example.
    
2. Save **adksetup.exe** and then run it.

3. On the **Specify Location** page, select an installation path and then click **Next**.
    >[!NOTE]
    >The estimated disk space listed on this page applies to the full Windows ADK. If you only install Windows ICD, the space requirement is approximately 32 MB.
4. Make a selection on the **Windows Kits Privacy** page, and then click **Next**.

5. Accept the **License Agreement**, and then click **Next**.

6. On the **Select the features you want to install** page, clear all selections except **Configuration Designer**, and then click **Install**.

    ![Only Configuration Designer selected for installation](images/icd-install.png)

## Current Windows ICD limitations


- You can only run one instance of Windows ICD on your computer at a time.

- Be aware that when adding apps and drivers, all files stored in the same folder will be imported and may cause errors during the build process.

- The Windows ICD UI does not support multivariant configurations. Instead, you must use the Windows ICD command-line interface to configure multivariant settings. For more information, see [Create a provisioning package with multivariant settings](provisioning-multivariant.md).

- While you can open multiple projects at the same time within Windows ICD, you can only build one project at a time.

- In order to enable the simplified authoring jscripts to work on a server SKU running Windows ICD, you need to explicitly enable **Allow websites to prompt for information using scripted windows**. Do this by opening Internet Explorer and then navigating to **Settings** > **Internet Options** > **Security**  -> **Custom level** > **Allow websites to prompt for information using scripted windows**, and then choose **Enable**. 

- If you copy a Windows ICD project from one PC to another PC, make sure that all the associated files for the deployment assets, such as apps and drivers, are copied along with the project to the same path as it was on the original PC. 

    For example, when you add a driver to a provisioned package, you must copy the .INF file to a local directory on the PC that is running Windows ICD. If you don't do this, and attempt to use a copied version of this project on a different PC, Windows ICD might attempt to resolve the path to the files that point to the original PC.
 
- **Recommended**: Before starting, copy all source files to the PC running Windows ICD, rather than using external sources like network shares or removable drives. This reduces the risk of interrupting the build process from a temporary network issue or from disconnecting the USB device.

**Next step**: [How to create a provisioning package](provisioning-create-package.md)

## Learn more

-   Watch the video: [Provisioning Windows 10 Devices with New Tools](https://go.microsoft.com/fwlink/p/?LinkId=615921)

-   Watch the video: [Windows 10 for Mobile Devices: Provisioning Is Not Imaging](https://go.microsoft.com/fwlink/p/?LinkId=615922)

## Related topics

- [Provisioning packages for Windows 10](provisioning-packages.md)
- [How provisioning works in Windows 10](provisioning-how-it-works.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Provision PCs with apps and certificates for initial deployments (advanced provisioning)](provision-pcs-with-apps-and-certificates.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [NFC-based device provisioning](provisioning-nfc.md)
- [Windows ICD command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)



 

 





