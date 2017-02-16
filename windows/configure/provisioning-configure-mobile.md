---
title: Use Windows Configuration Designer to configure Windows 10 Mobile devices (Windows 10)
description: 
keywords: phone, handheld, lockdown, customize
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: jdeckerMS
---

# Use Windows Configuration Designer to configure Windows 10 Mobile devices 

Windows provisioning makes it easy for IT administrators to configure end-user devices without imaging. Using provisioning packages, ayou can easily specify desired configuration, settings, and information required to enroll the devices into management, and then apply that configuration to target devices in a matter of minutes. 

A provisioning package (.ppkg) is a container for a collection of configuration settings. Using Windows Configuration Designer, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image.

Windows Configuration Designer can be installed from the [Windows Assessment and Deployment Kit (ADK) for Windows 10](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit). Windows Configuration Designer is also available as an app in the Windows Store. [Learn more about installing Windows Configuration Designer.](provisioning-install-icd.md)

## Create a provisioning package using the wizard

The **Provision Windows mobile devices** wizard lets you configure common settings for devices running Windows 10 Mobile in a simple, graphical workflow.

### Start a new project

1. Open Windows Configuration Designer:
    - From either the Start screen or Start menu search, type 'Windows Configuration Designer' and click the Windows Configuration Designer shortcut, 
    
    or
    
    - If you installed Windows Configuration Designer from the ADK, navigate to `C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86` (on an x64 computer) or `C:\Program Files\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86\ICD.exe` (on an x86 computer), and then double-click **ICD.exe**.

2. On the **Start** page, choose **Provision Windows mobile devices**.

3. Enter a name for your project, and then click **Next**.


### Configure settings in the wizard

<table>
<tr><td valign="top">![step one](images/one.png)![set up device](images/set-up-device-mobile.png)</br></br>Enter a device name.</br></br> Optionally, you can enter a product key to upgrade the device from Windows 10 Mobile to Windows 10 Mobile Enterprise. </td><td>![device name, upgrade license](images/set-up-device-details-mobile.png)</td></tr>
<tr><td valign="top">![step two](images/two.png)  ![set up network](images/set-up-network-mobile.png)</br></br>Toggle **On** or **Off** for wireless network connectivity. </br></br>If you select **On**, enter the SSID, network type (**Open** or **WPA2-Personal**), and (if **WPA2-Personal**) the password for the wireless network.</td><td>![Enter network SSID and type](images/set-up-network-details-mobile.png)</td></tr>
<tr><td valign="top">![step three](images/three.png)  ![bulk enrollment in Azure Active Directory](images/bulk-enroll-mobile.png)</br></br>You can enroll the device in Azure AD. </br></br>To enroll the device in Azure AD, select that option and enter a friendly name for the bulk token you will get using the wizard. (Something about expiry) Click **Get bulk token** (then what?) <</td><td>IMAGE PENDING</td></tr>
<tr><td valign="top">![step four](images/four.png) ![finish](images/finish-mobile.png)</br></br>You can set a password to protect your provisioning package. You must enter this password when you apply the provisioning package to a device.</td><td>![Protect your package](images/finish-details-mobile.png)</td></tr>
</table>

### do something
