---
title: Understanding AppLocker rule collections
description: This article explains the five different types of AppLocker rule collections used to enforce AppLocker policies.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Understanding AppLocker rule collections

This article explains the five different types of AppLocker rule collections used to enforce AppLocker policies.

An AppLocker rule collection is a set of rules that apply to one of five types:

- Executable files: .exe and .com
- Windows Installer files: .msi, mst, and .msp
- Scripts: .ps1, .bat, .cmd, .vbs, and .js
- DLLs: .dll and .ocx
- Packaged apps and packaged app installers: .appx

> [!IMPORTANT]
> Each app can load several DLLs, and AppLocker must check each DLL before it is allowed to run. Be sure you create DLL allow rules for every DLL that is used by any of the allowed apps. Denying some DLLs from running can also create app compatibility problems.
>
> DLL rules might cause performance problems on some computers which are already resource constrained.
>
> As a result, the DLL rule collection is not enabled by default.

For info about how to enable the DLL rule collection, see [Enable the DLL rule collection](enable-the-dll-rule-collection.md).

## Related articles

- [How AppLocker works](how-applocker-works-techref.md)
- [Understanding AppLocker default rules](understanding-applocker-default-rules.md)
