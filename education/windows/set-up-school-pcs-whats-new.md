---
title: What's new in the Windows Set up School PCs app
description: Find out about app updates and new features in Set up School PCs.
keywords: shared cart, shared PC, school, set up school pcs
ms.prod: w10
ms.mktglfcycl: plan
ms.sitesec: library
ms.pagetype: edu
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 08/31/2020
ms.reviewer: 
manager: dansimp
---  

# What's new in Set up School PCs
Learn what’s new with the Set up School PCs app each week. Find out about new app features and functionality, see updated screenshots, and find information about past releases.   


## Week of August 24, 2020

### Longer device names supported in app
You can now give devices running Windows 10, version 2004 and later a name that's up to 53 characters long.  

## Week of September 23, 2019  

### Easier way to deploy Office 365 to your classroom devices 
 Microsoft Office now appears as an option on the **Apps** screen. Select the app to add it to your provisioning package. Devices install Microsoft 365 Apps for enterprise. This version includes the cloud-connected and most current versions of apps such as Word, PowerPoint, Excel, and Teams.   


## Week of June 24, 2019  

### Resumed support for Windows 10, version 1903 and later   
The previously mentioned provisioning problem was resolved, so the Set up School PCs app once again supports Windows 10, version 1903 and later. The Windows 10 settings that were removed are now back in the app. 

### Device rename made optional for Azure AD joined devices  
When you set up your Azure AD join devices in the app, you no longer need to rename your devices. You can keep existing device names.  

## Week of May 23, 2019   

### Suspended support for Windows 10, version 1903 and later
Due to a provisioning problem, Set up School PCs has temporarily stopped support for Windows 10, version 1903 and later. All settings in the app that were for Windows 10, version 1903 and later have been removed. When the problem is resolved, support will resume again.  

### Mandatory device rename for Azure AD joined devices
If you configure Azure AD Join, you're now required to rename your devices during setup. You can't keep existing device names.    

## Week of April 15, 2019  

### Support for Minecraft Education Edition upgrade
 Set up School PCs only adds apps to the provisioning package that meet the minimum supported version for Windows 10. For example, Minecraft is the most recent store app to upgrade; it's only installed on devices running Windows 10, version 1709 and later. If you select an earlier version of Windows, Minecraft won't be included in the provisioning package.  

## Week of April 8, 2019  

### Apps configured as non-removeable  
Apps that you deploy with Set up School PCs are configured as non-removable apps. This feature prevents students from unpinning or uninstalling the apps they need.  

### Domain name automatically added during sign-in  
Specify your preferred Azure Active Directory tenant domain name to automatically append it to the username on the sign-in screen. With this setting, students don't need to type out long school domain names. To sign in, they type only their unique usernames.  

### Set up devices with hidden Wi-Fi network
Set up devices so that they connect to a hidden Wi-Fi network. To configure a hidden network, open the app. When you get to **Wireless network**, choose **Add a Wi-Fi network**. Enter in your Wi-Fi information and select **Hidden network**.  


## Week of December 31, 2018

### Add Microsoft Whiteboard to provisioning package  
Microsoft Whiteboard is now a Microsoft-recommended app for schools. Whiteboard is a freeform digital canvas where ideas, content, and people come together; students can create and collaborate in real time in the classroom. Add the app to your provisioning package on the **Add apps** page. For more information, see [Use Set up School PCs app](use-set-up-school-pcs-app.md#create-the-provisioning-package).  

## Week of November 5, 2018  

### Sync school app inventory from Microsoft Store
During setup, you can now add apps from your school's Microsoft Store inventory. After you sign in with your school's Office 365 account, Set up School PCs will sync the apps from Microsoft Store, and make them visible on the **Add apps** page. For more information about adding apps, see [Use Set Up School PCs app](use-set-up-school-pcs-app.md#create-the-provisioning-package).   


## Week of October 15, 2018

The Set up School PCs app was updated with the following changes:

### Three new setup screens added to the app
The following screens and functionality were added to the setup workflow. Select a screen name to view the relevant steps and screenshots in the Set Up School PCs docs.  

* [**Package name**](use-set-up-school-pcs-app.md#package-name): Customize a package name to make it easy to recognize it from your school's other packages. Azure Active Directory generates the name. It appears as the filename, and as the token name in Azure AD in the Azure portal.  

* [**Product key**](use-set-up-school-pcs-app.md#product-key): Enter a product key to upgrade your current edition of Windows 10, or change the existing product key. 

* [**Personalization**](use-set-up-school-pcs-app.md#personalization): Upload images from your computer to customize how the lock screen and background appears on student devices.

### Azure AD token expiration extended to 180 days
Packages now expire 180 days from the date you create them.  

### Updated apps with more helpful, descriptive text 
The **Skip** buttons in the app now communicate the intent of each action. An **Exit** button also appears on the last page of the app.  

### Option to keep existing device names
The [**Name these devices** screen](use-set-up-school-pcs-app.md#device-names) now gives you the option to keep the original or existing names of your student devices.   

### Skype and Messaging apps to be removed from student PCs by default
The Skype and Messaging apps are part of a selection of apps that are, by default, removed from student devices.  


## Next steps    
Learn how to create provisioning packages and set up devices in the app.   
* [What's in my provisioning package?](set-up-school-pcs-provisioning-package.md)
* [Shared PC mode for schools](set-up-school-pcs-shared-pc-mode.md)
* [Set up School PCs technical reference](set-up-school-pcs-technical.md)
* [Set up Windows 10 devices for education](set-up-windows-10.md) 

When you're ready to create and apply your provisioning package, see [Use Set up School PCs app](use-set-up-school-pcs-app.md).





