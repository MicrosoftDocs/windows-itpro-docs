---
title: Sideloading Win32 apps on Windows 10 S mode devices  (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: jsuther1974
ms.date: 05/06/2018
---

# Sideloading Win32 apps on Windows 10 S mode devices 

**Applies to:**

-   Windows 10
-   Windows Server 2016

Windows 10 S mode is a locked-down system that only runs Store apps. 
Although it provides tight security and thereby promises reduced management, its application control restrictions make it difficult for some to adopt it widely. 
Sideloading makes S mode a more viable proposition for enterprise and education workloads by allowing critical Desktop apps in addition to Store apps.

## Process Overview

To allow Win32 apps to run on a Windows 10 device in S mode, admins must ‘unlock’ the device so exceptions can be made to S mode policy, and then upload a corresponding signed catalog for each app to Intune. Here are the steps:

1. Unlock S mode devices through Intune
   - Admin uses the Device Guard Signing Service (DGSS) in the Microsoft Store for Business to generate a root certificate for the organization and upload it to Intune
   - Intune will ensure this certificate is included in a device’s unlock token from OCDUS, and any app catalogs which are signed with it will be able to run on the unlocked device
2. Create a supplemental policy to allow Win32 apps
   - Admin uses Windows Defender Application Control tools to create a supplemental policy
   - Admin uses DGSS to sign their supplemental policy
   - Admin uploads signed supplemental policy to Intune
3. Allow Win32 app catalogs through Intune 
   - Admin creates catalog files (1 for every app) and signs them using DGSS or other certificate infrastructure 
   - Admin submits the signed catalog to Intune 
   - Intune applies the signed catalog to unlocked S mode device using Sidecar

## [Admin] Setting up Business Store to use DGSS

1.	In the Azure portal, create a new resource of type Azure Active Directory, then create an associated global admin user.
2.	Log in to the Microsoft Store for Business as the global admin then go to Organization > Private Store and accept
•	This will automatically generate a root certificate for the organization
3.	To download a root cert or upload policies/catalogs to sign, navigate to Manage > Settings > Devices
•	Note: you can only upload .bin and .cat files
[Admin] Creating and Signing a Supplemental Policy
