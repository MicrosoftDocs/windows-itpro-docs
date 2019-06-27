---
title: Installing Microsoft Defender ATP for Mac with different MDM product
description: Describes how to install Microsoft Defender ATP for Mac on other management solutions.
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

# Deployment with a different Mobile Device Management (MDM) system

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)
 
## Prerequisites and system requirements

Before you get started, see [the main Microsoft Defender ATP for Mac page](microsoft-defender-atp-mac.md) for a description of prerequisites and system requirements for the current software version.

## Approach

> [!CAUTION]
> Currently, Microsoft oficially supports only Intune and JAMF for the deployment and management of Microsoft Defender ATP for Mac. Microsoft makes no warranties, express or implied, with respect to the information provided below.

If your organization uses a Mobile Device Management (MDM) solution that is not officially supported, this does not mean you are unable to deploy or run Microsoft Defender ATP for Mac.

Microsoft Defender ATP for Mac does not depend on any vendor-specific features. It can be used with any MDM solution that supports the following features:

- Deploy a macOS .pkg to managed machines.
- Deploy macOS system configuration profiles to managed machines.
- Run an arbitrary admin-configured tool/script on managed machines.

Most modern MDM solutions include these features, however, they may call them differently.

You can deploy Defender without the last requirement from the preceding list, however:

- You will not be able to collect status in a centralized way
- If you decide to uninstall Defender, you will need to logon to the client machine locally as an administrator

## Deployment

Most MDM solutions use the same model for managing macOS machines, with similar terminology. Use [JAMF-based deployment](microsoft-defender-atp-mac-install-with-jamf.md) as a template.

### Package

Configure deployment of a [required application package](microsoft-defender-atp-mac-install-with-jamf.md#package), 
with the installation package (wdav.pkg) downloaded from [Microsoft Defender Security Center](microsoft-defender-atp-mac-install-with-jamf.md#download-installation-and-onboarding-packages).

In order to deploy the package to your enterprise, use the instructions associated with your MDM solution.

### License settings

Set up [a system configuration profile](microsoft-defender-atp-mac-install-with-jamf.md#configuration-profile). 
Your MDM solution may call it something like "Custom Settings Profile", as Microsoft Defender ATP for Mac is not part of macOS.

Use the property list, jamf/WindowsDefenderATPOnboarding.plist, which can be extracted from an onboarding package downloaded from [Microsoft Defender Security Center](microsoft-defender-atp-mac-install-with-jamf.md#download-installation-and-onboarding-packages).
Your system may support an arbitrary property list in XML format. You can upload the jamf/WindowsDefenderATPOnboarding.plist file as-is in that case.
Alternatively, it may require you to convert the property list to a different format first.

Typically, your custom profile has an id, name, or domain attribute. You must use exactly "com.microsoft.wdav.atp" for this value.
MDM uses it to deploy the settings file to **/Library/Managed Preferences/com.microsoft.wdav.atp.plist** on a client machine, and Defender uses this file for loading the onboarding information.

### Kernel extension policy

Set up a KEXT or kernel extension policy. Use team identifier **UBF8T346G9** to whitelist kernel extensions provided by Microsoft.

## Check installation status

Run [mdatp](microsoft-defender-atp-mac-install-with-jamf.md#check-onboarding-status) on a client machine to check the onboarding status.
