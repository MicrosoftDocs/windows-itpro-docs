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

## Setting up Business Store to use DGSS

1.	In the Azure portal, create a new resource of type Azure Active Directory, then create an associated global admin user.
2.	Log in to the Microsoft Store for Business as the global admin then go to **Organization** > **Private Store** and accept.
    This will automatically generate a root certificate for the organization.
3.	To download a root cert or upload policies/catalogs to sign, navigate to **Manage** > **Settings** > **Devices**.
    Note: you can only upload .bin and .cat files.

## Creating and Signing a Supplemental Policy

1.	Create new base policy using [New-CIPolicy](https://docs.microsoft.com/powershell/module/configci/new-cipolicy?view=win10-ps)
    ```powershell
    New-CIPolicy -Level PcaCertificate -UserPEs -ScanPath <path> -MultiplePolicyFormat 3> <path\CIPolicyLog.txt> -FilePath <path\SupplementalPolicy.xml>
    ```
2.	Change it to a supplemental policy using [Set-CIPolicyIdInfo](https://docs.microsoft.com/powershell/module/configci/set-cipolicyidinfo?view=win10-ps)
    ```powershell
    Set-CIPolicyIdInfo -BasePolicyToSupplementPath <path\SupplementalPolicy.xml> -SupplementsBasePolicyID 5951A96A-E0B5-4D3D-8FB8-3E5B61030784 -FilePath <path\SupplementalPolicy.xml>
    ```
    Note: ‘5951A96A-E0B5-4D3D-8FB8-3E5B61030784' is the S-mode Base Policy ID.
3.	Put policy in enforce mode using [Set-RuleOption](https://docs.microsoft.com/powershell/module/configci/set-ruleoption?view=win10-ps)
    ```powershell
    Set-RuleOption -FilePath <path\SupplementalPolicy.xml> -Option 3 –Delete
    ```
    This deletes the ‘audit mode’ qualifier.
4.	Convert to .bin using [ConvertFrom-CIPolicy](https://docs.microsoft.com/powershell/module/configci/convertfrom-cipolicy?view=win10-ps)
    ```powershell
    ConvertFrom-CIPolicy -XmlFilePath <path\SupplementalPolicy.xml> -BinaryFilePath <path\PolicyID>
    ```
    Note: PolicyID can be found by inspecting the Supplemental Policy XML. Convert to .bin to sign with DGSS (recommended) or .cip to sign locally.
5.	To sign using the recommended DGSS option through the Microsoft Store for Business, click **Manage** > **Settings** > **Devices** > **Upload** > **Sign**.
    To sign locally using signtool, see [Signing policies with signtool](signing-policies-with-signtool.md).

## Creating and Signing an App Catalog
An admin must generate an app catalog for every deployed app:
1.	Use Package Inspector to [create a catalog](https://docs.microsoft.com/microsoft-store/add-unsigned-app-to-code-integrity-policy#a-href-idcreate-catalog-filesacreate-catalog-files-for-your-unsigned-app)
    - Start Package Inspector to scan the installer:
      ```console
      PackageInspector.exe start C: -path <path to installer>
      ```
    - Open the app installer.
    - Stop Package Inspector:
      ```console
      PackageInspector.exe stop C: -Name <path\app.cat> -cdfpath <path\app.cdf>
      ```
2.	To sign using the recommended DGSS option through the Microsoft Store for Business, click **Manage** > **Settings** > **Devices** > **Upload** > **Sign**.
    To sign locally using signtool, see [Signing policies with signtool](signing-policies-with-signtool.md).

## User experience 

Users will either have apps pushed directly to their devices by their admins, or they can download apps that their admins have made available through the Company Portal.
