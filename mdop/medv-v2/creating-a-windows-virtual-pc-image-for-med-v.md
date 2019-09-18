---
title: Creating a Windows Virtual PC Image for MED-V
description: Creating a Windows Virtual PC Image for MED-V
author: dansimp
ms.assetid: fd7c0b1a-0769-4e7b-ad1a-dad19cca081f
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Creating a Windows Virtual PC Image for MED-V


Before you can deliver a MED-V workspace to users, you have to first prepare a virtual hard disk that you use to build the MED-V workspace installer package for Microsoft Enterprise Desktop Virtualization (MED-V) 2.0. To prepare the necessary virtual hard disk, you must create a Windows Virtual PC image that contains the required operating system, updates, and software to let you later deploy applications and URL redirection information to users. This section provides guidance about how to create the virtual hard disk.

To create a virtual image for MED-V, you must follow these steps.

1.  [Create a Windows Virtual PC image](#bkmk-creatingavirtualmachinebyusingmicrosoftvirtualpc)

2.  [Install Windows XP on the image](#bkmk-installingwindowsxpontovpc)

3.  [Install the .NET Framework on the image](#bkmk-installingnet)

4.  [Apply updates to the image](#bkmk-applypatchestovpc)

5.  [Install Integration Components](#bkmk-installintegration)

## <a href="" id="bkmk-creatingavirtualmachinebyusingmicrosoftvirtualpc"></a>Creating a Windows Virtual PC Image


To create a Windows Virtual PC image, see the Windows Virtual PC documentation:

-   [Windows Virtual PC Home Page](https://go.microsoft.com/fwlink/?LinkId=148103) (https://go.microsoft.com/fwlink/?LinkId=148103).

-   [Windows Virtual PC Help](https://go.microsoft.com/fwlink/?LinkId=182378) (https://go.microsoft.com/fwlink/?LinkId=182378).

Alternately, if you already have a Windows Imaging (WIM) file that you want to use as the basis for your virtual image, you can convert it to a VHD that you use to build the MED-V workspace. For more information about how to convert a WIM to a virtual hard disk, see [Native VHD Support in Windows 7](https://go.microsoft.com/fwlink/?LinkId=195922) (https://go.microsoft.com/fwlink/?LinkId=195922).

**Important**  
MED-V only supports one virtual hard disk per virtual machine and only one partition on each virtual disk.

 

After you have created your virtual hard disk, install Windows XP on the image.

## <a href="" id="bkmk-installingwindowsxpontovpc"></a>Installing Windows XP on a Windows Virtual PC Image


MED-V requires that Windows XP SP3 is installed on the Windows Virtual PC image before you build the MED-V workspace.

For more information about how to install Windows XP, see [Create a virtual machine and install a guest operating system](https://go.microsoft.com/fwlink/?LinkId=182379) (https://go.microsoft.com/fwlink/?LinkId=182379).

## <a href="" id="bkmk-installingnet"></a>Installing the .NET Framework 3.5 SP1 on a Windows Virtual PC Image


You must manually install the .NET Framework 3.5 SP1 and the update KB959209 into the Windows Virtual PC image that you prepare for use with MED-V. The update [KB959209](https://go.microsoft.com/fwlink/?LinkId=204950) (https://go.microsoft.com/fwlink/?LinkId=204950) addresses several known application compatibility issues.

## <a href="" id="bkmk-applypatchestovpc"></a>Applying Updates to the Windows Virtual PC Image


After you have installed Windows XP on your virtual machine, install any required Windows XP updates on the image, such as SP3. You can also install certain optional updates for better performance.

**Important**  
MED-V requires that Windows XP SP3 be running on the guest operating system.

 

**Warning**  
When you install updates to Windows XP, make sure that you remain on the version of Internet Explorer in the guest that you intend to use in the MED-V workspace. For example, if you intend to run Internet Explorer 6 in the MED-V workspace, make sure that any updates that you install now do not include Internet Explorer 7 or Internet Explorer 8. In addition, we recommend that you configure the registry to prevent automatic updates from upgrading Internet Explorer.

 

### Installing an Optional Performance Update

Although it is optional, we recommend that you install the following update for [hotfix KB972435](https://go.microsoft.com/fwlink/?LinkId=201077) (https://go.microsoft.com/fwlink/?LinkId=201077). This update increases the performance of shared folders in a Terminal Services session:

**Note**  
The update is publically available. However, you might be prompted to accept an agreement for Microsoft Services. Follow the prompts on the successive webpages to retrieve this hotfix.

 

### Configuring a Group Policy Performance Update

By default, Group Policy is downloaded to a computer one byte at a time. This causes delays while MED-V is being joined to the domain. To increase the performance of Group Policy, set the following registry key value to the registry:

Registry subkey: HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon

Entry: BufferPolicyReads

Type: DWORD

Value: 1

## <a href="" id="bkmk-installintegration"></a>Installing Integration Components


Windows Virtual PC includes the Integration Components package. This provides features that improve the interaction between the virtual environment and the physical computer. For example, the Integration Components package lets your mouse move between the host and the guest computers.

**Important**  
MED-V requires the installation of the Integration Components package.

 

When you configure the virtual image to work with MED-V, you must manually install the Integration Components package on the guest operating system to make the integration features that are available.

For more information about how to install and use the Integration Components package, see the following:

-   [Install or Upgrade the Integration Components Package](https://go.microsoft.com/fwlink/?LinkId=195923) (https://go.microsoft.com/fwlink/?LinkId=195923).

-   [About Integration Features](https://go.microsoft.com/fwlink/?LinkId=195924) (https://go.microsoft.com/fwlink/?LinkId=195924).

### Installing RemoteApp Update

After you install the Integration Components package, you are prompted to install the following update: "Update for Windows XP SP3 to enable RemoteApp." This is a required component for MED-V.

**Important**  
If you are not prompted to install the RemoteApp update, you must download and install it manually. For more information and instructions about how to download this update, see [Update for Windows XP SP3 to enable RemoteApp](https://go.microsoft.com/fwlink/?LinkId=195925) (https://go.microsoft.com/fwlink/?LinkId=195925).

 

### Enabling Remote Desktop

By default, Remote Desktop is enabled after you install the Integration Components package. For MED-V to be operational, ensure that Remote Desktop is enabled, and do not distribute any Group Policy that disables it.

For information about how to enable Remote Desktop, see [Enable or disable Remote Desktop](https://go.microsoft.com/fwlink/?LinkId=201162) (https://go.microsoft.com/fwlink/?LinkId=201162).

## Customizing Internet Explorer by Using the Internet Explorer Administration Kit


If you want, you can use the Internet Explorer Administration Kit to customize Internet Explorer on the guest operating system. For more information, see the [Internet Explorer 6 Administration Kit and Deployment Guide](https://go.microsoft.com/fwlink/?LinkId=200007) (http:// go.microsoft.com/fwlink/?LinkId=200007).

**Warning**  
You should consider security concerns associated with customizing Internet Explorer in the MED-V workspace. For more information, see [Security Best Practices for MED-V Operations](security-best-practices-for-med-v-operations.md).

 

After your virtual hard disk is installed with an up-to-date guest operating system, you can install applications on the image.

## Related topics


[Installing Applications on a Windows Virtual PC Image](installing-applications-on-a-windows-virtual-pc-image.md)

[Configuring a Windows Virtual PC Image for MED-V](configuring-a-windows-virtual-pc-image-for-med-v.md)

 

 





