---
title: Windows Defender Application Control feature availability
description: Compare Windows Defender Application Control (WDAC) and AppLocker feature availability.
ms.prod: windows-client
ms.technology: itpro-security
ms.localizationpriority: medium
ms.collection: M365-security-compliance
author: jgeurten
ms.reviewer: aaroncz
ms.author: jogeurte
manager: aaroncz
ms.date: 06/27/2022
ms.custom: asr
ms.topic: overview
---

# Windows Defender Application Control and AppLocker feature availability

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. See below to learn more.

| Capability  | Windows Defender Application Control | AppLocker   |
|-------------|------|-------------|
| Platform support    | Available on Windows 10, Windows 11, and Windows Server 2016 or later  | Available on Windows 8 or later   |
| SKU availability     | Cmdlets are available on all SKUs on 1909+ builds.<br>For pre-1909 builds, cmdlets are only available on Enterprise but policies are effective on all SKUs.  | Policies deployed through GP are only effective on Enterprise devices.<br>Policies deployed through MDM are effective on all SKUs.  |
| Management solutions   | <ul><li>[Intune](./deployment/deploy-windows-defender-application-control-policies-using-intune.md) (limited built-in policies or custom policy deployment via OMA-URI)</li><li>[Microsoft Configuration Manager](/configmgr/protect/deploy-use/use-device-guard-with-configuration-manager) (limited built-in policies or custom policy deployment via software distribution)</li><li>[Group policy](./deployment/deploy-windows-defender-application-control-policies-using-group-policy.md) </li><li>PowerShell</li></ul>  | <ul><li>[Intune](/windows/client-management/mdm/applocker-csp) (custom policy deployment via OMA-URI only)</li><li>Configuration Manager (custom policy deployment via software distribution only)</li><li>[Group Policy](./applocker/determine-group-policy-structure-and-rule-enforcement.md)</li><li>PowerShell</li><ul> |
| Per-User and Per-User group rules | Not available (policies are device-wide)  | Available on Windows 8+  |
| Kernel mode policies  | Available on all Windows 10 versions and Windows 11  | Not available |
| Per-app rules  | [Available on 1703+](./use-windows-defender-application-control-policy-to-control-specific-plug-ins-add-ins-and-modules.md)  | Not available |
| Managed Installer (MI)  | [Available on 1703+](./configure-authorized-apps-deployed-with-a-managed-installer.md)  | Not available  |
| Reputation-Based intelligence     | [Available on 1709+](./use-windows-defender-application-control-with-intelligent-security-graph.md)  | Not available |
| Multiple policy support           | [Available on 1903+](./deploy-multiple-windows-defender-application-control-policies.md)  | Not available  |
| Path-based rules                  | [Available on 1903+.](./select-types-of-rules-to-create.md#more-information-about-filepath-rules) Exclusions aren't supported. Runtime user-writeability checks enforced by default.  | Available on Windows 8+. Exclusions are supported. No runtime user-writeability check. |
| COM object configurability        | [Available on 1903+](./allow-com-object-registration-in-windows-defender-application-control-policy.md)  | Not available |
| Packaged app rules                | [Available on RS5+](./manage-packaged-apps-with-windows-defender-application-control.md)  | Available on Windows 8+   |
| Enforceable file types       | <ul><li>Driver files: .sys</li><li>Executable files: .exe and .com</li><li>DLLs: .dll and .ocx</li><li>Windows Installer files: .msi, .mst, and .msp</li><li>Scripts: .ps1, .vbs, and .js</li><li>Packaged apps and packaged app installers: .appx</li></ul>| <ul><li>Executable files: .exe and .com</li><li>[Optional] DLLs: .dll, .rll and .ocx</li><li>Windows Installer files: .msi, .mst, and .msp</li><li>Scripts: .ps1, .bat, .cmd, .vbs, and .js</li><li>Packaged apps and packaged app installers: .appx</li></ul>|
| Application ID (AppId) Tagging | [Available on 20H1+](./AppIdTagging/windows-defender-application-control-appid-tagging-guide.md)  | Not available |
