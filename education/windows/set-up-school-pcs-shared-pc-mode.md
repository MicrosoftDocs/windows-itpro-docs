---  
title: Shared PC mode for school devices  
description: Describes how shared PC mode is set for devices set up with the Set up School PCs app.  
keywords: shared cart, shared PC, school, set up school pcs  
ms.prod: w10  
ms.mktglfcycl: plan  
ms.sitesec: library  
ms.pagetype: edu  
ms.localizationpriority: medium  
author: mjcaparas
ms.author: macapara
ms.date: 07/13/2018  
---  

# Shared PC mode for school devices

Shared PC mode optimizes Windows 10 for shared use scenarios, such as classrooms and school libraries.  A Windows 10 PC in shared PC mode requires minimal to zero maintenance and management. Update settings are optimized for classroom settings, so that they automatically occur outside of school hours.

Shared PC mode can be applied on devices running:
* Windows 10 Pro
* Windows 10 Pro Education
* Windows 10 Education
* Windows 10 Enterprise  

To learn more about how to set up a device in shared PC mode, see [Set up a shared or guest PC with Windows 10](https://docs.microsoft.com/windows/configuration/set-up-shared-or-guest-pc).  

## Windows Updates
Shared PC mode configures power and Windows Update settings so that computers update regularly. Computers that are set up through the Set up School PCs app are configured to:  
* Wake nightly.  
* Check for and install updates.  
* Forcibly reboot, when necessary, to complete updates.  

These configurations reduce the need to update and reboot computers during daytime work hours. Notifications about needed updates are also blocked from disrupting students.

## Default admin accounts in Azure Active Directory  
By default, the account that joins your computer to Azure AD will be given admin permissions on the computer. Global administrators in the joined Azure AD domain will also have admin permissions when signed in to the joined computer.  

An Azure AD Premium subscription lets you specify the accounts that get admin accounts on a computer. These accounts are configured in Intune in the Azure portal.  

## Account deletion policies
This section describes the deletion behavior for the accounts configured in shared PC mode. A delete policy makes sure that outdated or stale accounts are regularly removed to make room for new accounts. 

### Azure AD accounts

The default deletion policy is set to automatically cache accounts. Cached accounts are automatically deleted when disk space gets too low, or when there's an extended period of inactivity. Accounts continue to delete until the computer reclaims sufficient disk space. Deletion policies behave the same for Azure AD and Active Directory domain accounts. 

### Guest and Kiosk accounts
Guest accounts and accounts created through Kiosk are deleted after they sign out of their account.

### Local accounts
Local accounts that you created before enabling shared PC mode aren't deleted. Local accounts that you create through the following path, after enabling PC mode, are not deleted: **Settings** app > **Accounts** > **Other people** > **Add someone**     

## Create custom Windows images
Shared PC mode is compatible with custom Windows images.  

To create a compatible image, first create your custom Windows image with all software, updates, and drivers. Then use the System Preparation (Sysprep) tool with the `/oobe` flag to create the SharedPC-compatible version. For example, `sysrep/oobe`.

Teachers can then run the Set up School PCs package on the computer.  

## Optimize device for use by a single student
Shared PC mode is enabled by default. This mode optimizes device settings for schools where PCs are shared by students.  The  Set up School PCs app also offers the option to configure settings for devices that aren't shared. 
  
If you select this setting, the app modifies shared PC mode so that it's appropriate for a single device. To see how the settings differ, refer to the Shared PC mode policy table in the article [What's in my provisioning package?](set-up-school-pcs-provisioning-package.md)  
1. In the app, go to the **Create package** > **Settings** step. 
2. Select **Optimize device for a single student, instead of a shared cart or lab**.  

## Next steps  
Learn more about setting up devices with the Set up School PCs app.  
* [Azure AD Join with Set up School PCs](set-up-school-pcs-azure-ad-join.md)
* [Set up School PCs technical reference](set-up-school-pcs-technical.md)
* [What's in my provisioning package](set-up-school-pcs-provisioning-package.md)
* [Set up Windows 10 devices for education](set-up-windows-10.md) 

When you're ready to create and apply your provisioning package, see [Use Set up School PCs app](use-set-up-school-pcs-app.md).





