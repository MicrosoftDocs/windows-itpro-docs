---
title: Script rules in AppLocker
description: This article describes the file formats and available default rules for the script rule collection.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Script rules in AppLocker

This article describes the file formats and available default rules for the script rule collection.

AppLocker defines script rules to include only the following file formats:
- `.ps1`
- `.bat`
- `.cmd`
- `.vbs`
- `.js`

The following table lists the default rules that are available for the script rule collection.

| Purpose | Name | User | Rule condition type |
| --- | --- | --- | --- |
| Allows members of the local Administrators group to run all scripts| (Default Rule) All scripts| BUILTIN\Administrators | Path: `*\` |
| Allow all users to run scripts in the Windows folder | (Default Rule) All scripts located in the Windows folder | Everyone | Path: `%windir%\*` |
| Allow all users to run scripts in the Program Files folder| (Default Rule) All scripts located in the Program Files folder | Everyone | Path: `%programfiles%\*`|

> [!NOTE]
> When a script runs that is not allowed by policy, AppLocker raises an event indicating that the script was "blocked". However, the actual script enforcement behavior is handled by the script host. In the case of PowerShell, "blocked" scripts will still run, but only in [Constrained Language Mode](/powershell/module/microsoft.powershell.core/about/about_language_modes). Authorized scripts run in Full Language Mode.

## Related articles

- [Understanding AppLocker default rules](understanding-applocker-default-rules.md)
