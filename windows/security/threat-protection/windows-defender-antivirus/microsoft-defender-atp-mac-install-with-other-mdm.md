---
title: Installing Microsoft Defender ATP for Mac with different MDM product
description: Describes how to install Microsoft Defender ATP for Mac, using an unsupported MDM solution.
keywords: microsoft, defender, atp, mac, installation, deploy, macos, mojave, high sierra, sierra
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: mavel
author: maximvelichko
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Deployment with a different MDM system

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)
 
>[!IMPORTANT]
>This topic relates to the pre-release version of Microsoft Defender ATP for Mac. Microsoft Defender ATP for Mac is not yet widely available, and this topic only applies to enterprise customers who have been accepted into the preview program. Microsoft makes no warranties, express or implied, with respect to the information provided here.

## Prerequisites and system requirements

Before you get started, please see [the main Microsoft Defender ATP for Mac page](microsoft-defender-atp-mac.md) for a description of prerequisites and system requirements for the current software version.

## Approach

Your organization may use a Mobile Device Management (MDM) solution we do not officially support.
This does not mean you will be unable to deploy or run Microsoft Defender ATP for Mac.
However, we will not be able to provide support for deploying or managing Defender via these solutions.

Microsoft Defender ATP for Mac does not depend on any vendor-specific features. It can be used with any MDM solution that supports the following features:

- Deploying a macOS .pkg to managed machines.
- Deploying macOS system configuration profiles to managed machines.
- Running an arbitrary admin-configured tool/script on managed machines. 

The majority of modern MDM solutions include these features, however, they may call them differently.

You can deploy Defender without the last requirement from the list above, however:

- You won't be able to collect status in a centralized way
- If you decide to uninstall Defender, you'll need to logon to the client machine locally as an administrator

## Deployment

Most MDM solution use the same model for managing macOS machines, with similar terminology.
Use [JAMF-based deployment](microsoft-defender-atp-mac-install-with-jamf.md) as a template.

### Package

Configure deployment of a [required application package](microsoft-defender-atp-mac-install-with-jamf.md#package), 
with the installation package (wdav.pkg) downloaded from [ATP](microsoft-defender-atp-mac-install-with-jamf.md#download-installation-and-onboarding-packages).

Your MDM solution can allow you uploading of an arbitrary application package, or require you to wrap it into a custom package first. 

### License settings

Setup [a system configuration profile](microsoft-defender-atp-mac-install-with-jamf.md#configuration-profile). 
Your MDM solution may call it something like "Custom Settings Profile", as Microsoft Defender ATP for Mac is not part of macOS.

Use the property list, jamf/WindowsDefenderATPOnboarding.plist, which can extracted from an onboarding package downloaded from [ATP](microsoft-defender-atp-mac-install-with-jamf.md#download-installation-and-onboarding-packages).
Your system may support an arbitrary property list in XML format. You can just upload the jamf/WindowsDefenderATPOnboarding.plist file as-is in that case. 
Alternatively, it may require you to convert the property list to a different format first.

Note that your custom profile would have an id, name or domain attribute. You must use exactly "com.microsoft.wdav.atp". 
MDM will use it to deploy the settings file to **/Library/Managed Preferences/com.microsoft.wdav.atp.plist** on a client machine, and Defender will use this file for loading onboarding info.

### KEXT

Setup a KEXT or kernel extension policy. Use team identifier **UBF8T346G9** to whitelist kernel extensions provided by Microsoft. 

## Was it successful?

Run [mdatp](microsoft-defender-atp-mac-install-with-jamf.md#check-onboarding-status) on a client machine.
