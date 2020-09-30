---
title: Authorize apps deployed with a WDAC managed installer (Windows 10)
description: Explains how you can use a managed installer to automatically authorize applications deployed and installed by a designated software distribution solution, such as Microsoft Endpoint Configuration Manager. 
keywords:  security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 08/14/2020
---

# Authorize apps deployed with a WDAC managed installer

**Applies to:**

- Windows 10
- Windows Server 2019

Windows 10, version 1703 (also known as the Windows 10 Creators Update) provides a new option, known as a managed installer, that allows IT administrators to automatically authorize applications deployed and installed by a designated software distribution solution such as Microsoft Endpoint Configuration Manager.
A managed installer helps an IT admin balance security and manageability requirements when employing application execution control policies by providing an option that does not require specifying explicit rules for software that is being managed through a software distribution solution.

## How does a managed installer work?

A managed installer uses a new rule collection in AppLocker to specify one or more executables that are trusted by the organization as an authorized source for application deployment.

Specifying an executable as a managed installer will cause Windows to tag files that are written from the executable's process (or processes it launches) as having originated from a trusted installation authority. The Managed Installer rule collection is currently supported for AppLocker rules in Group Policy and in Configuration Manager, but not in the AppLocker CSP for OMA-URI policies.

Once the IT administrator adds the Allow: Managed Installer option to a WDAC policy, the WDAC component will subsequently check for the presence of the origin information when evaluating other application execution control rules specified in the policy. If there are no deny rules present for the file, it will be authorized based on the managed installer origin information.

Admins needs to ensure that there is a WDAC policy in place to allow the system to boot and run any other authorized applications that may not be deployed through a managed installer.
An example managed installer use-case can be seen in the guidance for [creating a WDAC policy for fully-managed devices](create-wdac-policy-for-fully-managed-devices.md).

Note that a WDAC policy with managed installer configured will begin to tag files which originated from that managed installer, regardless of whether the policy is in audit or enforced mode.

## Security considerations with managed installer

Since managed installer is a heuristic-based mechanism, it does not provide the same security guarantees that explicit allow or deny rules do.
It is best suited for deployment to systems where each user is configured as a standard user and where all software is deployed and installed by a software distribution solution, such as  Microsoft Endpoint Configuration Manager.

Users with administrator privileges or malware running as an administrator user on the system may be able to circumvent the intent of Windows Defender Application Control when the managed installer option is allowed.
If the authorized managed installer process performs installations in the context of a user with standard privileges, then it is possible that standard users or malware running as standard user may be able to circumvent the intent of Windows Defender Application Control.
Some application installers include an option to automatically run the application at the end of the installation process. If this happens when the installer is run by a managed installer, then the managed installer's heuristic tracking and authorization may continue to apply to all files created during the first run of the application. This could result in over-authorization for executables that were not intended.
To avoid this, ensure that the application deployment solution being used as a managed installer limits running applications as part of installation.

## Known limitations with managed installer

- Application execution control based on managed installer does not support applications that self-update/auto-update.
If an application deployed by a managed installer subsequently updates itself, the updated application files will no longer include the managed installer origin information and will not be authorized to run.
Enterprises should deploy and install all application updates using the managed installer.
In some cases, it may be possible to also designate an application binary that performs the self-updates as a managed installer.
Proper review for functionality and security should be performed for the application before using this method.

- Modern apps deployed through a managed installer will not be tracked by the managed installer heuristic and will need to be separately authorized in your WDAC policy.

- Executables that extract files and then attempt to execute may not be allowed by the managed installer heuristic.
In some cases, it may be possible to also designate an application binary that performs such an operation as a managed installer.
Proper review for functionality and security should be performed for the application before using this method.

- The managed installer heuristic does not authorize drivers.
The WDAC policy must have rules that allow the necessary drivers to run.  

- In some cases, the code integrity logs where WDAC errors and warnings are written will contain error events for native images generated for .NET assemblies.
Typically, the error is functionally benign as a blocked native image will result in the corresponding assembly being re-interpreted.
Review for functionality and performance for the related applications using the native images maybe necessary in some cases.
