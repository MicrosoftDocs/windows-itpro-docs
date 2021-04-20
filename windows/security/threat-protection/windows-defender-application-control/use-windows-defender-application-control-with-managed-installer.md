---
title: Authorize apps installed by a managed installer (Windows 10)
description: Explains how to automatically allow applications deployed and installed by a managed installer.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
ms.author: dansimp
manager: dansimp
ms.date: 08/14/2020
ms.technology: mde
---

# Authorize apps deployed by a managed installer

**Applies to:**

- Windows 10
- Windows Server 2019

Windows 10, version 1703 introduced a new option for Windows Defender Application Control (WDAC), called managed installer, that helps balance security and manageability when enforcing application control policies. This option lets you automatically allow applications installed by a designated software distribution solution such as Microsoft Endpoint Configuration Manager.

## How does a managed installer work?

A new rule collection in AppLocker specifies binaries that are trusted by the organization as an authorized source for application deployment. When one of these binaries runs, Windows will monitor the binary's process (and processes it launches) and tag all files it writes as having originated from a managed installer. The managed installer rule collection is configured using Group Policy and can be applied with the Set-AppLockerPolicy PowerShell cmdlet. You can't currently set managed installers with the AppLocker CSP through MDM.

Having defined your managed installers using AppLocker, you can then configure WDAC to trust files installed by a managed installer by adding the Enabled:Managed Installer option to your WDAC policy. Once that option is set, WDAC will check for managed installer origin information when determining whether or not to allow a binary to run. As long as there are no deny rules present for the file, WDAC will allow a file to run based on its managed installer origin.

You should ensure that the WDAC policy allows the system to boot and any other authorized applications that can't be deployed through a managed installer.

For an example of a managed installer use case, see [Creating a WDAC policy for fully managed devices](create-wdac-policy-for-fully-managed-devices.md).

## Security considerations with managed installer

Since managed installer is a heuristic-based mechanism, it doesn't provide the same security guarantees that explicit allow or deny rules do.
It is best suited for use where each user operates as a standard user and where all software is deployed and installed by a software distribution solution, such as Microsoft Endpoint Configuration Manager.

Users with administrator privileges or malware running as an administrator user on the system may be able to circumvent the intent of Windows Defender Application Control when the managed installer option is allowed.

If a managed installer process runs in the context of a user with standard privileges, then it is possible that standard users or malware running as standard user may be able to circumvent the intent of Windows Defender Application Control.

Some application installers may automatically run the application at the end of the installation process. If this happens when the installer is run by a managed installer, then the managed installer's heuristic tracking and authorization will extend to all files created during the first run of the application. This could result in over-authorization for executables that were not intended. To avoid that outcome, ensure that the application deployment solution used as a managed installer limits running applications as part of installation.

## Known limitations with managed installer

- Application control based on managed installer does not support applications that self-update. If an application deployed by a managed installer later updates itself, the updated application files won't include the managed installer origin information and may not be able to run. When you rely on managed installers, you must deploy and install all application updates using a managed installer or include rules to authorize the app in the WDAC policy. In some cases, it may be possible to also designate an application binary that performs self-updates as a managed installer. Proper review for functionality and security should be performed for the application before using this method.

- [Packaged apps (MSIX)](https://docs.microsoft.com/windows/msix/) deployed through a managed installer aren't tracked by the managed installer heuristic and will need to be separately authorized in your WDAC policy. See [Manage packaged apps with WDAC](manage-packaged-apps-with-windows-defender-application-control.md).

- Some applications or installers may extract, download, or generate binaries and immediately attempt to run them. Files run by such a process may not be allowed by the managed installer heuristic. In some cases, it may be possible to also designate an application binary that performs such an operation as a managed installer. Proper review for functionality and security should be performed for the application before using this method.

- The managed installer heuristic doesn't authorize kernel drivers. The WDAC policy must have rules that allow the necessary drivers to run.  
