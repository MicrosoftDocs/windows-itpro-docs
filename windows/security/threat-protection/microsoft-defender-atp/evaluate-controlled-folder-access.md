---
title: Evaluate controlled folder access
description: See how controlled folder access can help protect files from being changed by malicious apps.
keywords: Exploit protection, windows 10, windows defender, ransomware, protect, evaluate, test, demo, try
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
audience: ITPro
author: levinec
ms.author: ellevin
ms.reviewer: 
manager: dansimp
---

# Evaluate controlled folder access

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

* [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[Controlled folder access](controlled-folders.md) is a feature that helps protect your documents and files from modification by suspicious or malicious apps. Controlled folder access is supported on Windows Server 2019 and Windows 10 clients.

It is especially useful in helping protect against [ransomware](https://www.microsoft.com/wdsi/threats/ransomware) that attempts to encrypt your files and hold them hostage.

This article helps you evaluate controlled folder access. It explains how to enable audit mode so you can test the feature directly in your organization.

> [!TIP]
> You can also visit the Microsoft Defender ATP demo scenario website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the feature is working and see how it works.

## Use audit mode to measure impact

Enable the controlled folder access in audit mode to see a record of what *would* have happened if it was fully enabled. Test how the feature will work in your organization to ensure it doesn't affect your line-of-business apps. You can also get an idea of how many suspicious file modification attempts generally occur over a certain period of time.

To enable audit mode, use the following PowerShell cmdlet:

```PowerShell
Set-MpPreference -EnableControlledFolderAccess AuditMode
```

> [!TIP]
> If you want to fully audit how controlled folder access will work in your organization, you'll need to use a management tool to deploy this setting to devices in your network(s).
You can also use Group Policy, Intune, mobile device management (MDM), or Microsoft Endpoint Configuration Manager to configure and deploy the setting, as described in the main [controlled folder access topic](controlled-folders.md).

## Review controlled folder access events in Windows Event Viewer

The following controlled folder access events appear in Windows Event Viewer under Microsoft/Windows/Windows Defender/Operational folder.

Event ID | Description
-|-
 5007 | Event when settings are changed
 1124 | Audited controlled folder access event
 1123 | Blocked controlled folder access event

> [!TIP]
> You can configure a [Windows Event Forwarding subscription](https://docs.microsoft.com/windows/win32/wec/setting-up-a-source-initiated-subscription) to collect the logs centrally. 

## Customize protected folders and apps

During your evaluation, you may wish to add to the list of protected folders, or allow certain apps to modify files.

See [Protect important folders with controlled folder access](controlled-folders.md) for configuring the feature with management tools, including Group Policy, PowerShell, and MDM configuration service providers (CSPs).

## See also

* [Protect important folders with controlled folder access](controlled-folders.md)
* [Evaluate Microsoft Defender ATP]../(microsoft-defender-atp/evaluate-atp.md)
* [Use audit mode](audit-windows-defender.md)
