---
title: Use the Lockdown Designer app to configure Windows 10 Mobile devices (Windows 10)
description: 
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: jdeckerMS
---

# Use the Lockdown Designer app to configure Windows 10 Mobile devices

![Lockdown Designer in the Store](images/ldstore.png)

Windows 10 Mobile allows enterprises to lock down a device, define multiple user roles, and configure custom layouts on a device. For example, the enterprise can lock down a device so that only applications and settings in an allow list are available. This is accomplished using Lockdown XML, an XML file that contains settings for Windows 10 Mobile. 

When you deploy the lockdown XML file to a device, it is saved on the device as **wehlockdown.xml**. When the device boots, it looks for wehlockdown.xml and applies any settings configured in the file. 

The Lockdown Designer app helps you configure and create your lockdown XML file, and includes a remote simulation to help you determine the layout for tiles on the Start screen. Using Lockdown Designer is easier than [manually creating a lockdown XML file](lockdown-xml.md).



## Overview

Lockdown Designer can be installed on a PC running Windows 10, version 1607 or later. After you install the app, you connect a mobile device running Windows 10 Mobile, version 1703, to the PC. 

>[!NOTE]
>Lockdown Designer will not make any changes to the connected device, but we recommend that you use a test device.

Lockdown Designer will populate the available settings and apps to configure from the connected device. Using the different pages in the app, you select the settings, apps, and layout to be included in the lockdown XML.

When you're done, you export the configuration to a lockdown XML file. This configuration can be applied to any device running Windows 10 Mobile, version 1703.

>[!NOTE]
>You can also import an existing WEHLockdown.xml file to Lockdown Designer and modify it in the app.

## Procedure

1. Open Lockdown Designer.

2. Click **Create new project**.

2. Connect a Windows 10 Mobile device to the PC by USB and unlock the device.

4. On the mobile device, go to **Settings** > **Update & security** > **For developers**, enable **Developer mode** and **Device discovery**, and then turn on **Device Portal**. Note the IP address displayed under **Connect using Wi-Fi**.

3. On the **Project setting** > **General settings** page, enter the IP address for the mobile device, and append `:10080`.



