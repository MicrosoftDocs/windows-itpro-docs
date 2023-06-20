---
title: Understanding AppLocker rule collections
description: This topic explains the five different types of AppLocker rules used to enforce AppLocker policies.
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
ms.topic: conceptual
ms.date: 09/21/2017
ms.technology: itpro-security
---

# Understanding AppLocker rule collections

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic explains the five different types of AppLocker rules used to enforce AppLocker policies.

An AppLocker rule collection is a set of rules that apply to one of five types:

-   Executable files: .exe and .com
-   Windows Installer files: .msi, mst, and .msp
-   Scripts: .ps1, .bat, .cmd, .vbs, and .js
-   DLLs: .dll and .ocx
-   Packaged apps and packaged app installers: .appx

If you use DLL rules, a DLL allow rule has to be created for each DLL that is used by all of the allowed apps.

>**Important:**  Each app can load several DLLs, and AppLocker must check each DLL before it is allowed to run. Therefore, creating DLL rules might cause performance problems on some computers. Denying some DLLs from running can also create app compatibility problems. As a result, the DLL rule collection is not enabled by default.
 
For info about how to enable the DLL rule collection, see [Enable the DLL rule collection](enable-the-dll-rule-collection.md).

## Related topics

- [How AppLocker works](how-applocker-works-techref.md)
- [Understanding AppLocker default rules](understanding-applocker-default-rules.md)
