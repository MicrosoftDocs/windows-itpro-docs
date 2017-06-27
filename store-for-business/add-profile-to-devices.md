---
title: Add profile to manage Windows installation on devices  (Windows 10)
description: Add an AutoPilot profile to devices. AutoPilot profiles control what is included in Windows set up experience for your employees. 
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
author: TrudyHa
ms.author: TrudyHa
ms.date: 06/26/2107
localizationpriority: high
---

# Add Windows AutoPilot deployment profile to devices

**Applies to**

-   Windows 10
-   Windows 10 Mobile

Windows AutoPilot Deployment Program simplifies device set up for IT Admins. For an overview of benefits, scenarios, and prerequisites, see [Overview of Windows AutoPilot](https://review.docs.microsoft.com/en-us/windows/deployment/windows-10-auto-pilot?branch=dh-autopilot11975619).

## What is Windows AutoPilot Deployment Program?
In Microsoft Store for Business, you can manage devices for your organization and apply an *AutoPilot deployment profile* to your devices. When people in your organization run the out-of-box experience on the device, the profile configures Windows based on the AutoPilot deployment profile you applied to the device. 

AutoPilot deployment profiles have two main parts: default settings that can't be changed, and optional settings that you can include. 

### AutoPilot deployment profiles - default settings
These settings are configured with all AutoPilot deployment profiles:
- Skip Cortana, OneDrive, and OEM registration setup pages
- Automatically setup for work or school
- Sign in experience with company or school brand 

### AutoPilot deployment profiles - optional settings
These settings are off by default. You can turn them on for your AutoPilot deployment profiles:
- Skip privacy settings
- Disable local admin account creation on the device

## Windows AutoPilot deployment profiles in Microsoft Store for Business and Education
You can manage new devices in Microsoft Store for Business or Microsoft Store for Education. Devices need to meet these requirements:
- Windows 10, version 1703 or later
- New devices that have not been through Windows out-of-box experience. 

You can create and apply AutoPilot deployment profiles to these devices. The overall process looks like this. 

![Block diagram with main steps for using AutoPilot in Microsoft Store for Business: upload device list; group devices (this step is optional); add profile; and apply profile.](images/autopilot-process.png)

Figure 1 - Windows AutoPilot Deployment Program process

## Add devices and apply AutoPilot deployment profile
To manage devices through Microsoft Store for Business and Education, you'll need a .csv file that contains specific information about the devices. You should be able to get this from your Microsoft account contact, or the store where you purchased the devices. Upload the .csv file to Microsoft Store to add the devices. 

Columns in the device information file needs to using this naming and be in this order:
- Column 1: Serial Number
- Column 2: Product Id 
- Column 3: Hardware Hash   

When you add devices, you need to add them to a *device group*. Device groups allow you to apply an AutoPilot deployment profile to mutliple devices. The first time you add devices to a group, you'll need to create a device group. 

**Add and group devices**
1. Sign in to [Microsoft Store for Business](http://businessstore.microsoft.com) or [Microsoft Store for Education](https://educationstore.microsoft.com). 
2. Click **Manage**, and then click **Devices**.
3. Click **Add devices**, navigate to the *.csv file and select it. 
4. Type a name for a new device group, or choose one from the list, and then click **Add**. </br>
If you don't add devices to a group, you can select the individual devices to apply a profile to. <br>  
![Screenshot of Add devices to a group dialog. You can create a new group, or select a current group.](images/add-devices.png)</br>
 
5. Click the devices or device group that you want to manage. You need to select devices before you can apply an AutoPilot deployment profile. 

**Apply AutoPilot deployment profile**
1. When you have devices selected, click **AutoPilot deployment**. 
2. Choose the AutoPilot deployment profile to apply to the selected devices.</br> 
    > [!NOTE]
    > The first time you use AutoPilot deployment profiles, you'll need to create one. See Create AutoPilot profile.</br> 
3. Microsoft Store for Business applies the profile to your selected devices, and shows the profile name on **Devices**.
TBD: art 

## Manage AutoPilot deployment profiles
You can manage the AutoPilot deployment profiles created in Microsoft Store. You can create a new profile, edit, or delete a profile. 

**Create AutoPilot profile**
1. Sign in to [Microsoft Store for Business](http://businessstore.microsoft.com) or [Microsoft Store for Education](https://educationstore.microsoft.com). 
2. Click **Manage**, and then click **Devices**.
3. Click **AutoPilot deployment**, and then click **Create new profile**. 
TBD: art. 
4. Name the profile, choose the settings to include, and then click **Create**.</br>
The new profile is added to the **AutoPilot deployment** list.  

**Edit or delete AutoPilot profile**
1. Sign in to [Microsoft Store for Business](http://businessstore.microsoft.com) or [Microsoft Store for Education](https://educationstore.microsoft.com). 
2. Click **Manage**, and then click **Devices**.
3. Click **AutoPilot deployment**, click **Edit your profiles**, and then choose the profile to edit.
TBD: art
4. Change settings for the profile, and then click **Save**.</br> 
-or-</br>
Click **Delete profile** to delete the profile. 

## Apply a different AutoPilot deployment profile to devices
After you've applied an AutoPilot deployment profile to a device, if you decide to apply a different profile, you can remove the profile and apply a new profile. 

> [!NOTE]
> The new profile will only be applied if the device has not been started, and gone through the out-of-box experience. Settings from a different profile can't be applied when another profile has been applied. Windows would need to be reinstalled on the device for the second profile to be applied to the device. 

