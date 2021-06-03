---
title: Windows Sun Valley overview
description: Overview of Windows Sun Valley
ms.assetid: E9E2DED5-DBA7-4300-B411-BA0FD39BE18C
ms.reviewer: 
manager: laurawi
ms.audience: itpro
author: greg-lindsay
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: medium
audience: itpro
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# Windows Sun Valley overview

Sun Valley is the next client release of Windows. It represents an evolution of Windows 10 that is modern, streamlined, fresh, light, yet familiar to those who use Windows today. It is optimized to deliver great working, learning, and playing experiences. Its goal is to be our most reliable, secure, connected, and performant OS release ever. 

Sun Valley offers new features and functionality built to address challenges our customers face today as well as a completely refreshed look and feel that makes the experience clean and simple. Head to Windows.com/SV to read more about all the new features. 

Windows 10 launched six years ago. Since then, there has been a lot of hardware innovation. With Windows SV every detail has been considered. It has the power and security you crave in a redesigned and refreshed look. Plus, it comes with new tools, sounds, and apps.

Windows SV provides a familiar modern and refreshed interface that is still familiar that increases productivity and enhances the collaboration experience for end users while maintaining consistent the management forof those IT managed devices. for IT

The goal with Windows is still the same, regardless of number. Our commitment to drive innovation, bring people together and build the best version of Windows remains.  
We said we would always update Windows, of course we’re going to innovate, move people forward, commitment to give people the best version of Windows remains.

We expect most new devices to be built and designed for Windows SV, and consumer offerings will transition very quickly. Commercial and educational organizations should work with their device partners to understand what options are available for new PCs.

Commercial version
Eventually all new devices will be built and shipped with Windows Oct2021. Commercial organizations should work with their device partners to understand what options are available for new PCs

Will there be an evaluation version of Sun Valley?	Yes, you can take advantage of the Windows Insider Program to evaluate builds of Sun Valley just as we do today for Windows 10.

When will new devices be ready for purchase?	New devices will be available later in 2021. We expect to see a large refresh of commercial devices in 2022

## How to get Windows Sun Valley

All upgrades to Sun Valley from Windows 10 will be free.

Windows Sun Valley is due out later in 2021 and will be delivered over several months. The rollout of the upgrade to Windows 10 devices already in use today will begin in 2022 through the first half of that year. Once it has been tested and validated for your specific PC, Windows Update will indicate that the upgrade is ready for installation.

If your Windows 10 PC meets the minimum specifications for Sun Valley, you will be able to upgrade. We’ve made it simple for you to see for yourself.  Download the PC Health Check App to see if your PC meets the minimum specifications. (go to aka.ms/PCHealthCheck - not real URL) 

Commercial version
There is no cost to upgrade for eligible devices to Windows Oct21. Only Windows 10 PCs that are running the most current version of Windows 10 and meet the minimum hardware specifications will be eligible to upgrade. You can check to see if you have the latest updates by navigating to Windows Update in settings.

Commercial version
The upgrade is expected to be available in early 2022. Not all eligible Windows 10 PCs will be offered theo upgrade at the same time. To see if your PC is eligible, download the PC Health Check app (link). Once the upgrade rollout has started, you can check the status of your device by navigating to Windows Update in settings. 

Test out either experience by joining the Windows Insider Program (either by syncing the Windows Insider Pre-release category in WSUS or by selecting “Manage preview builds – Release Preview”).


## Windows Sun Valley servicing

No. Features of Windows SV will be updated once per year in the second half of the year, and quality updates will be releasesd every month oin the second Tuesday of the month. Starting with Windows 10, version 21H2, Windows 10 will receive only quality updates on the second Tuesday of the month

Commercial version
No. Features of Windows Oct21 will be updated once per year in the second half of the year, and quality updates will be released every month in the second Tuesday of the month. Starting with Windows 10, version 21H2, Windows 10 will receive only quality updates on the second Tuesday of the month.

How long is the support window for each Sun Valley release?	We will support each annual release for 24 months for Home, Pro, Pro for Workstations and Pro Education editions, and 36 months for Enterprise and Education editions, beginning at GA in October 2021

Annual SV releases will be supported for either 24 or 36 months, depending on edition, beginning at their initial GA.
 
•	SV editions supported for 24 months: Home, Pro, Pro Education, Pro for Workstations, Cloud
•	SV editions supported for 36 months: Enterprise, IoT Enterprise, Education

Will there still be a combined LCU and SSU package capability?	Yes. Windows XX will continue to support one cumulative package where we will deploy all LCUs and SSUs (if applicable) together as a single package to Windows Server Update Service (WSUS) and Catalog, and have them orchestrated on the device. This capability is also the default for those updating from Windows Update. 

## Mixed environment

Yes. We will continue to support Windows 10 with security updates until October 2025.

Can I run both Sun Valley and Windows 10 in parallel? If so, do I use the same process and tools to manage both?	Yes, Windows SV is based on the same foundation of Windows 10 so they can coexist and will use the same processes and tools to manage them.

Will I be able to manage my Windows environment with MEM in the same way, or will there be changes?	In Configuration Manager, you can manage exactly the same way you do today. Simply sync the new Windows XX Product category. 

How will update management look for environments with mixed Sun Valley and Windows 10 populations?	You can use your current management tools and processes to manage quality updates for both Windows 10 and Windows XX, in addition to using them to move between the two products. 


Commercial
Yes. You do not have to upgrade to Windows Oct21. Microsoft will continue to support Windows 10 until October 14, 2025.

## Deploying Windows Sun Valley

You will have the option to upgrade, clean install, or reimage Windows 10 devices to move to Windows SV. For Windows 7 devices that meet hardware requirements, you will need to clean install or reimage to go directly to Windows SV.

Any specific rollback or upgrade recover mechanisms exist?	The Windows SV upgrade has a 10 day rollback period, similar to what is offered today for Windows 10 updates

I leverage Autopilot to allow end users auto provision devices, will Autopilot be available for Sun Valley?	Yes, Autopilot can still be leveraged.

Timing will vary, particularly based on internet speed. Downloading and installing Windows SV will most likely take longer than a typical Windows 10 feature update. You can use your PC while you’re downloading it and then you have the option to schedule the install to happen at a specific time when you aren’t planning on using your PC.

The free upgrade is for the same edition as you have on your device for Windows 10. If you have Windows 10 Home eEdition, you will be upgraded to Windows SV Home eEdition. For Pro and higher editions, SV will no longer be offered in S mode, so you will need to first switch out of S mode toto qualify for upgrade.

Commercial
The upgrade to Windows Oct21 is for the same edition as you have on your Windows 10 device. Devices with Windows 10 Pro installed will be upgraded to Windows Oct21 Pro.  Devices running Windows 10 Enterprise will upgrade to Windows Oct21 Enterprise. Windows Oct21 Pro will not offer Windows Oct21 Pro in S mode, so you will need to switch out of S mode to upgrade.  

Yes, once you have upgraded to Sun Valley, you have 10 days to utilize the rollback function to move back to Windows 10 while keeping files and data that you brought along with you. After that 10 day10-day period, you will need to back up this data and do a “clean install” to move back to Windows 10.

In Intune, you will need to leverage target version, if you are not already, to upgrade from Windows 10 to Windows XX. While feature update deferrals are great for moving you to newer versions of your current product (e.g. Windows 10, version 20H2 to 21H1) they are not able to move you between two different products. You will continue being able to manage quality updates for Windows 10 and Windows XX the same way as you do today. 

Commercial
Yes, once you have upgraded to Windows Oct21, you have 10 days to utilize the rollback function to move back to Windows 10 while keeping files and data that you brought along with you. After that 10-day period, you will need to back up your data and do a “clean install” to move back to Windows 10.

The upgrade experience will be similar to a feature update in Windows 10. You will download the software while able to continue to use your device. Once it is downloaded and ready to install, you will be guided through the installation process through aprocess: a series of screen and prompts.

Commercial version
The upgrade experience will be similar to a feature update in Windows 10. You will download the software while being able to continue to use your device. Once the update is downloaded and ready to install, you will be guided through the installation process through a series of screens and prompts. There will be at least one restart.

If I decline the upgrade, can I change my mind and upgrade later?	You will be given the opportunity to upgrade via the Windows Update section in Settings if you originally declined the offer.

If customers upgrade, the default experience will be for files and data to move forward with the new installation. However, we always recommend that customers back up files before installing a new Windows version. If you already sync your files to OneDrive, you may not need to take any additional action to create a backup.

Commercial version
By default, all your files and data will transfer. However, Microsoft recommends backing up your files before installation.

Are customers able to download the upgrade ‘on demand’? Will there be ways that customers can find the upgrade prior to Intelligent rollout?	Yes, we plan to have similar options that we do today for updates to Windows 10: Upgrade Assistant (similar to Update Assistant) and the Media Creation Tool. We recommend, however, that the customer wait until they are notified through Windows Update that the upgrade is ready for their device. Note that there will be temporary blocks in some instances that will prevent the upgrade from completing installation.

If a CYOD user purchases a Sun Valley device, can I move them back to Windows 10 and how?	Downgrade rights are available with Windows SV Pro OEM licensed devices. You can downgrade to any version of Windows Pro/Professional that has not reached its end of support date. You will need to reimage or clean install a Windows SV device to downgrade it to Windows 10. Downgrade rights are also available through Microsoft Volume Licensing (check your agreement for more details).

If I’m upgrading from Windows 10 to Sun Valley can I change editions at that time (e.g., from Home or Education to Pro)?	No, you will need to change editions separately (before or after upgrading). Applicable fees may apply to acquire the license for the new edition

Commercial version 
If you have Windows 10 Pro, you’ll upgrade to Windows Oct2021 Pro. You can then step up to Windows Oct2021 Enterprise. If you have Windows 10 Home, you’ll upgrade to Windows Oct2021 Home. You can then step up to Windows 10 Pro.

## Requirements

The upgrade to Sun Valley is available for devices running Windows 10, version 20H1 or newer, on eligible hardware.

You can use the PC Health Check app to determine if your PC can upgrade. The PC Health Check is available for download <here>. [this will eventually need to change to a message about WU – Aug 2021 timeframe]

Can Enterprise customers get the upgrade?	Enterprise customers are eligible per the terms of their current licensing agreement

What about Windows RT?	Windows RT is not eligible for upgrade.

Any device that meets the minimum specification can upgrade run Windows SV. However, Windows 7 devices will likely not meet the minimum specification because of age and generation of the processor that was included with that device. Please see below for the full CPU list available through our Windows SV specifications page to see which ones are compatible for upgrade. If a customer with a Windows 7 PC that meets the minimum spec wants to upgrade, they would need to purchase a Windows 10 license, perform a clean install,  and proceed with the upgrade to Windows SV. In 2022, they will also have the option to purchase Windows SV at retail and install it on the compatible Windows 7 device.

The minimum storage drive requirement is 64GB for Windows SV. Ongoing requirements for feature and quality updates will vary, but are generally expected to be similar to what we see today for Windows 10


Commercial
To see if your PC is eligible, download the PC Health Check app (link). Once the upgrade rollout has started, you can check the status of your device by navigating to Windows Update in settings. 

## Managing Windows Sun Valley


With Windows 10, Microsoft forced me to make significant changes to my IT processes, management approach and tooling, what will this new version require me to change?	Windows SV is based on the same foundation of Windows 10, so it will support the same management tools that you use today with Windows 10.

## Hardware compatibility

Most software and accessories that worked with Windows 10 areis expected to work with Windows SV. Check with your software publisher or accessory manufacturer for specific details on your products.

Commercial version
Most software and accessories that worked with Windows 10 are expected to work with Windows Oct21. Check with your software publisher or accessory manufacturer for specific details on your products.

Most software and accessories that worked with Windows 10 is expected to work with Windows SV. Check with your software publisher or accessory manufacturer for specific details on your products.

Most software and accessories that worked with Windows 10 is expected to work with Windows SV. Check with your software publisher or accessory manufacturer for specific details on your products and to see if an upgrade of your security solution is required for WIndowsWindows SV.

Commercial version
Most software and accessories that worked with Windows 10 are expected to work with Windows Oct21. Check with your software publisher or accessory manufacturer for specific details on your products.

## App management in Windows Sun Valley

Commercial version (specific to apps)
Yes, Microsoft is committed to ensuring your applications work on the latest versions of our software and Windows Oct21 has been built with compatibility in mind. Our promise states that apps that worked on Windows 7/8.1/10 will work on Windows Oct21. If you have App Assure, Microsoft will help you fix them at no cost.

App Assure is a service that helps customers remediate application issues that they may experience when deploying the latest version of our software. 

App Assure is available at no additional cost for eligible customers with 150+ seats. For more information on eligibility requirements, please navigate to this page

Visit the App Assure page and sign in to submit your request for assistance for a dedicated App Assure Manager. If you experience any issues submitting a request for assistance, please contact ACHELP@microsoft.com and our team members will reach out to you to help!

Yes, most apps and devices that worked with Windows 10 will be compatible with Sun Valley.  You can also check with your software publisher manufacturer for more detailed information.

## Licensing

Will I get Sun Valley as part of my Microsoft 365 license?
Microsoft 365 licenses that include Windows licenses will allow you to run Sun Valley on supported devices.


If I have a volume license, will it equally cover Sun Valley and Windows 10 devices both before and after upgrade?	Yes

## Applications

Will Safeguard holds still function for SV and how will that work between the two different OS versions?	Yes. IT Administrators will have access to safeguard hold information using Update Compliance. More information can be found here.

What’s going to happen with kiosk mode?	Commercial version
Windows Oct2021 is committed to support all of the commercial scenarios that we supported in Windows 10, which includes kiosk mode. In this initial Windows Oct2021 release, we are supporting single app kiosk mode. In the future, we plan to support multi-app kiosk mode.

Will Known Issue Rollback (KIR) function on SV?	Yes, the known issue rollback will function on SV.

What’s not in Sun Valley that’s in Windows 10?	(link to Aaron Grady deck). This is also published on the Windows specifications page and there will be a docs/technet article that will be published, too


----------------------------------------






