---
title: What's new in User Account Control (Windows 10)
description: User Account Control (UAC) helps prevent malware from damaging a computer and helps organizations deploy a better-managed desktop environment.
ms.assetid: 9281870C-0819-4694-B4F1-260255BB8D07
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# What's new in User Account Control?

**Applies to**
-   Windows 10

User Account Control (UAC) helps prevent malware from damaging a computer and helps organizations deploy a better-managed desktop environment.

You should not turn off UAC because this is not a supported scenario for devices running Windows 10. If you do turn off UAC, all Univeral Windows Platform apps stop working. You must always set the **HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\EnableLUA** registry value to 1. If you need to provide auto elevation for programmatic access or installation, you could set the **HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\ConsentPromptBehaviorAdmin** registry value to 0, which is the same as setting the UAC slider Never Notify. This is not recommended for devices running Windows 10.

For more info about how manage UAC, see [UAC Group Policy Settings and Registry Key Settings](../keep-secure/user-account-control-group-policy-and-registry-key-settings.md).

In Windows 10, User Account Control has added some improvements.

## New features in Windows 10

-   **Integration with the Antimalware Scan Interface (AMSI)**. The [AMSI](http://msdn.microsoft.com/library/windows/desktop/dn889587.aspx) scans all UAC elevation requests for malware. If malware is detected, the admin privilege is blocked.

[Learn how to manage User Account Control within your organization](../keep-secure/user-account-control-overview.md).
 
 
