---
title: Installing Microsoft Defender ATP for Mac with different MDM product
description: Describes how to install Microsoft Defender ATP for Mac, using an unsupported MDM solution.
keywords: microsoft, defender, atp, mac, installation, deploy, macos, mojave, high sierra, sierra
search.product: eADQiWindows 10XVcnh
search.appverid: #met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: mavel
author: maximvelichko
ms.localizationpriority: #medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: #conceptual
---

# Deployment with a different MDM system

**Applies to:**

[Windows Defender Advanced Threat Protection (Windows Defender ATP) for Mac](https://go.microsoft.com/fwlink/p/?linkid=???To-Add???)
 
>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

This topic describes how to install Microsoft Defender ATP for Mac. It supports the preview program and the information here is subject to change.
Microsoft Defender ATP for Mac is not yet widely available, and this topic only applies to enterprise customers who have been accepted into the preview program.

## Prerequisites and system requirements

Before you get started, please see [the main Microsoft Defender ATP for Mac page]((microsoft-defender-atp.md)) for a description of prerequisites and system requirements for the current software version.

## Approach

Your organization may use one of existing MDM solutions that we do not officially support. 
It does not mean that Defender will not work with it. 
It means that provide support for deployment/management with this MDM solution.

However, Defender does not depend on any vendor-specific features, and can be used with any MDM solution that supports the following features (practically any modern MDM solution would support them):

- Deployment a macOS .pkg to managed machines.
- Deployment macOS system configuration profiles to managed machines.
- Running an arbitrary admin-configured tool/script on managed machines. 

You can deploy Defender without the last requirement, however:

- You won't be able to collect status in a centralized way
- If you decide to uninstall Defender, you'll need to logon to the client machine locally as an administrator

## Deployment

Most of MDM solution use the same model for managing macOS machines, with similar terminology.
Use [JAMF-based deployment](microsoft-defender-atp-mac-install-with-jamf.md) as a template.

### Package

Configure deployment of a [required application package](microsoft-defender-atp-mac-install-with-jamf.md#package), 
using Installation package (wdav.pkg) downloaded from [ATP](microsoft-defender-atp-mac-install-with-jamf.md#download-installation-and-onboarding-packages).

Your MDM solution can allow you uploading an arbitrary application package, or require you to wrap it into a custom package first. 

### License settings

Setup [a system configuration profile](microsoft-defender-atp-mac-install-with-jamf.md#configuration-profile). 
Your MDM product may call it something like "Custom Settings Profile" (as Defender is not a part of macOS).

Use jamf/WindowsDefenderATPOnboarding.plist extracted from an onboarding package downloaded from [ATP](microsoft-defender-atp-mac-install-with-jamf.md#download-installation-and-onboarding-packages).
Your system may support an arbitrary Plist in XML format (you can just upload the jamf/WindowsDefenderATPOnboarding.plist file as-is in this case), or require you to convert to a different format first.

Note that your custom profile would have an id, name or domain attribute. You must use exactly "com.microsoft.wdav.atp". 
MDM will use it to deploy the settings file as **/Library/Managed Preferences/com.microsoft.wdav.atp.plist** on a client machine, and Defender will use this file for loading onboarding info.

### KEXT

Setup a KEXT or kernel extension policy. Use team identifier **UBF8T346G9** to whitelist kernel extensions provided by Microsoft. 

## Was it successful?

Run [mdatp](microsoft-defender-atp-mac-install-with-jamf.md#check-onboarding-status) on a client machine.
