---
title: Repackage your existing win32 applications to the MSIX format.
description: Learn how to install and use the MSIX packaging tool.
keyboards: ["MSIX", "application", "app", "win32", "packaging tool"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
ms.author: mikeblodge
ms.topic: article
ms.date: 08/01/2018
---

# Repackage existing win32 applications to the MSIX format

The MSIX Packaging Tool (Preview) is now available to install from the Microsoft Store. The MSIX Packaging Tool enables you to repackage your existing win32 applications to the MSIX format. You can run your desktop installers through this tool interactively and obtain an MSIX package that you can install on your machine and upload to the Microsoft Store (coming soon). 

> Prerequisites:

- Participation in the Windows Insider Program  
- Minimum Windows 10 build 17701 
- Admin privileges on your PC account 
- A valid MSA alias (to access the app from the Store) 

## What's new
v1.2018.807.0
- Ability to add/edit/remove file and registry exclusion items is now supported in Settings menu.
- Fixed an issue where signing in with password protected certificates would fail in the tool.
- Fixed an issue where the tool was crashing when editing an existing MSIX package.
- Fixed an issue where the tool was injecting whitespaces programmatically to install location paths that was causing conversion failures.
- Minor UI tweaks to add clarity.
- Minor updates to the logs for added clarity.



## Installing the MSIX Packaging Tool

1. Use the MSA login associated with your Windows Insider Program credentials in the [Microsoft Store](https://www.microsoft.com/store/r/9N5LW3JBCXKF). 
2. Open the product description page.
3. Click the install icon to begin installation.

This is an early preview build and not all features are supported. Here is what you can expect to be able to do with this preview:

- Package your favorite application installer interactively (msi, exe, App-V 5.x and ClickOnce) to MSIX format by launching the tool and selecting **Application package** icon. 
- Create a modification package for a newly created Application MSIX Package by launching the tool and selecting the **Modification package** icon.
- Open your MSIX package to view and edit its content/properties by navigating to the **Open package editor** tab. Browse to the MSIX package and select **Open package**. 

Features not supported in the tool are currently greyed out. Here are some of the highlighted missing features: 

- Package Support Framework integration. For more detail on how you can use Package Support Framework today, check out the article posted on the [MSIX blog](https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Ftechcommunity.microsoft.com%2Ft5%2FMSIX-Blog%2FMSIX-Package-Support-Framework-is-now-available-on-GitHub%2Fba-p%2F214548&data=02%7C01%7Cpezan%40microsoft.com%7Cbe2761c174cd465136ce08d5f1252d8a%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C636680064344941094&sdata=uW3oOOEYQxd0iVgsJkZXZTQwlvf%2FimVCaOdFUXcRoeY%3D&reserved=0). 
- Packaging on existing virtual machines. You can still install the Tool on a fresh VM, but the tool cannot currently spawn off a conversion from a local machine to an existing VM. 
- Command Line Interface support  
- Conversion of App-V 4.x packages 

## How to file feedback

Open Feedback Hub. Alternatively, launch the tool and select the **Settings** gear icon in the top right corner to open the Feedback tab. Here you can file feedback for suggestions, problems, and see other feedback items. 

## Best practices 

- When Packaging ClickOnce installers, it is necessary to send a shortcut to the desktop if the installer is not doing so already. In general, it's a good practice to always send a shortcut to your desktop for the main app executable. 
- When creating modification packages, you need to declare the **Package Name** (Identity Name) of the parent application in the tool UI so that the tool sets the correct package dependency in the manifest of the modification package. 
- Declaring an installation location field on the Package information page is optional but *recommended*. Make sure that this path matches the installation location of application Installer. 
- Performing the preparation steps on the **Prepare Computer** page is optional but *highly recommended*.  

## Known issues
1. MSIX Packaging Tool Driver will fail to install if Windows Insider flight ring settings do no match the OS build of the conversion environment. Navigate to Settings, Updates & Security, Windows Insider Program to make sure your Insider preview build settings do not need attention. If you see this message click on the Fix me button to log in again. You might have to go to Windows Update page and check for update before settings change takes effect. Then try to run the tool again to download the MSIX Packaging Tool driver. If you are still hitting issues, try changing your flight ring to Canary or Insider Fast, install the latest Windows updates and try again. 
2. You cannot edit the manifest manually from within the tool. (edit manifest button is disabled). Please use the SDK tools to unpack the MSIX package to edit the manifest manually.
3. Restarting the machine during application installation is not supported. Please ignore the restart request if possible or pass an argument to the installer to not require a restart.


