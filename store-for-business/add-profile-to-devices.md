---
title: Add profile to manage Windows installation on devices  (Windows 10)
description: Add an AutoPilot profile to devices. AutoPilot profiles control what is included in Windows set up experience for your employees. 
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
author: TrudyHa
localizationpriority: high
---

# Add Windows AutoPilot deployment profile to devices

**Applies to**

-   Windows 10
-   Windows 10 Mobile

## What is AutoPilot
Windows AutoPilot simplifies device set up for IT Admins. You create and apply an AutoPilot profile to your devices. When people in your organization run the out-of-box experience on the device, it installs and configures Windows based on the profile you applied to the device. 

Windows AutoPilot deployment program sets these items:
- Skips setup for Cortana, OneDrive, and OEM registration
- Automatically sets up work or school accounts

You can decide whether or not to set these items:
- Skip privacy settings
- Disable local admin account creation on the device



### AutoPilot requirements
Verify this list ... 
- Devices pre-installed with Windows 10 Pro Creators Update (version 1703 or later) 
- The devices must have access to the internet. When the device can’t connect, it shows the default Windows out-of-box experience (OOBE) screens.
- Enrolling the device into an MDM requires Azure Active Directory Premium.

For more information, see [Overview of Windows AutoPilot](https://review.docs.microsoft.com/en-us/windows/deployment/windows-10-auto-pilot?branch=dh-autopilot11975619).

## AutoPilot in Microsoft Store for Business and Education
You can manage new devices in Microsoft Store. Devices need to meet these requirements:
- Windows 10 (version ... which???)
- Specific hardware vendor???
- New devices that have not been through Windows out-of-box experience. 

You can create and apply AutoPilot profiles to these devices. The overall process looks like this. 

![Block diagram with main steps for using AutoPilot in Microsoft Store for Business: upload device list; group devices (this step is optional); add profile; and apply profile.](images/autopilot-process.png)

Figure 1 - AutoPilot process

## Add devices
To manage devices through Microsoft Store for Business and Education, you'll need a csv file that contains specific information about the devices. You should be able to get this from the supplier or store where you purchased the devices. 

The device information file needs to be in this format:

| Column    | Data |
| --------- | ---- |
| column A | data type 1|
| column B | data type 2|
| column C | data type 3|

**Upload device list**
1. Sign in to [Microsoft Store for Business](http://businessstore.microsoft.com) or [Store for Education](https://educationstore.microsoft.com). 
2. Click **Manage**, and then click **Devices**.
3. 

## Group devices
Info on creating groups.

Why would you use them?

**Create device groups**

## Add profile
Info on adding profiles -- need to create one to start; can have multiple; can edit later

TODO: include info in this topic on managing profiles, making changes, and which devices those changes are applied to -- or -- have a separate topic on managing AutoPilot profiles

**Add AutoPilot profile**

## Apply profile
Info on selecting devices by group or individually to apply profile