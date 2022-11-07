---
title: WDAC Admin Tips & Known Issues
description: WDAC Known Issues
keywords: security, malware
ms.prod: windows-client
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
ms.author: jogeurte
ms.manager: jsuther
manager: aaroncz
ms.date: 07/01/2022
ms.technology: itpro-security
ms.topic: article
ms.localizationpriority: medium
---

# WDAC Admin Tips & Known Issues

**Applies to:**


- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic covers tips and tricks for admins and known issues with Windows Defender Application Control (WDAC). Test this configuration in your lab before enabling it in production.

## Managed Installer and ISG will cause garrulous events

When Managed Installer and ISG are enabled, 3091 and 3092 events will be logged when a file didn't have Managed Installer or ISG authorization, regardless of whether the file was allowed. Beginning with the September 2022 C release, these events will be moved to the verbose channel since the events don't indicate an issue with the policy.

## .NET native images may generate false positive block events

In some cases, the code integrity logs where Windows Defender Application Control errors and warnings are written will contain error events for native images generated for .NET assemblies. Typically, native image blocks are functionally benign as a blocked native image will fall back to its corresponding assembly and .NET will regenerate the native image at its next scheduled maintenance window.

## MSI Installations launched directly from the internet are blocked by WDAC

Installing .msi files directly from the internet to a computer protected by WDAC will fail.
For example, this command won't work:

```console
msiexec –i https://download.microsoft.com/download/2/E/3/2E3A1E42-8F50-4396-9E7E-76209EA4F429/Windows10_Version_1511_ADMX.msi
```

As a workaround, download the MSI file and run it locally:

```console
msiexec –i c:\temp\Windows10_Version_1511_ADMX.msi  
```
