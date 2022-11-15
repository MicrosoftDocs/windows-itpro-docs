---
title: Understand AppLocker enforcement settings (Windows)
description: This topic describes the AppLocker enforcement settings for rule collections.
ms.assetid: 48773007-a343-40bf-8961-b3ff0a450d7e
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
ms.technology: itpro-security
---

# Understand AppLocker enforcement settings

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic describes the AppLocker enforcement settings for rule collections.

Rule enforcement is applied only to a collection of rules, not to individual rules. AppLocker divides the rules into four collections: executable files, Windows Installer files, scripts, and DLL files. For more info about rule collections, see [Understanding AppLocker rule collections](understanding-applocker-rule-collections.md). By default, if enforcement isn't configured and rules are present in a rule collection, those rules are enforced. The following table details the three AppLocker rule enforcement settings in Group Policy for each rule collection.

| Enforcement setting | Description |
| - | - |
| Not configured | By default, enforcement isn't configured in a rule collection. If rules are present in the corresponding rule collection, they're enforced. If rule enforcement is configured in a higher-level linked Group Policy object (GPO), that enforcement value overrides the **Not configured** value.| 
| Enforce rules | Rules are enforced for the rule collection, and all rule events are audited.| 
| Audit only | Rule events are audited only. Use this value when planning and testing AppLocker rules.| 
 
For the AppLocker policy to be enforced on a device, the Application Identity service must be running. For more info about the Application Identity service, see [Configure the Application Identity service](configure-the-application-identity-service.md).

When AppLocker policies from various GPOs are merged, the enforcement modes are merged by using the standard Group Policy order of inheritance, which is local, domain, site, and organizational unit (OU). The Group Policy setting that was last written or applied by order of inheritance is used for the enforcement mode, and all rules from linked GPOs are applied.
