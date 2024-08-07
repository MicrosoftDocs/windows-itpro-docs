---
title: AppLocker rule collection extensions
description: This article describes the RuleCollectionExtensions added in Windows 10.
ms.collection:
- tier3
- must-keep
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 06/07/2024
---

# AppLocker rule collection extensions

This article describes the rule collection extensions added in Windows 10 and later. Rule collection extensions are optional features available only for the EXE and DLL rule collections. Configure rule collection extensions by directly editing your AppLocker policy XML as shown in the following XML fragment.

```xml
<RuleCollectionExtensions>
    <ThresholdExtensions>
        <Services EnforcementMode="Enabled"/>
    </ThresholdExtensions>
    <RedstoneExtensions>
        <SystemApps Allow="Enabled"/>
    </RedstoneExtensions>
</RuleCollectionExtensions>
```

> [!IMPORTANT]
> When adding any rule collection extensions to your AppLocker policy, you must include both the *ThresholdExtensions* and *RedstoneExtensions* or your policy will cause unexpected behavior.

## Services enforcement

By default, AppLocker policy only applies to code running in a user's context. On Windows 10, Windows 11, and Windows Server 2016 or later, you can apply AppLocker policy to nonuser processes, including services running as SYSTEM. You must enable services enforcement when using AppLocker with Windows Defender Application Control's (WDAC) [managed installer](/windows/security/application-security/application-control/windows-defender-application-control/design/configure-authorized-apps-deployed-with-a-managed-installer) feature.

To apply AppLocker policy to nonuser processes, set ``<Services EnforcementMode="Enabled"/>`` in the ``<ThresholdExtensions>`` section as shown in the preceding XML fragment.

## System apps

When using AppLocker to control nonuser processes, your policy must allow all Windows system code or your device might behave unexpectedly. To automatically allow all system code that is part of Windows, set ``<SystemApps Allow="Enabled"/>`` in the ``<RedstoneExtensions>`` section as shown in the preceding XML fragment.
