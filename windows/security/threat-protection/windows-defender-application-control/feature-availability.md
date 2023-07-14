---
title: Windows Defender Application Control feature availability
description: Compare Windows Defender Application Control (WDAC) and AppLocker feature availability.
ms.prod: windows-client
ms.technology: itpro-security
ms.localizationpriority: medium
author: jgeurten
ms.reviewer: aaroncz
ms.author: jogeurte
manager: aaroncz
ms.date: 05/26/2023
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
| Platform support    | Available on Windows 10, Windows 11, and Windows Server 2016 or later.  | Available on Windows 8 or later.   |
| SKU availability     | Available on Windows 10, Windows 11, and Windows Server 2016 or later. <br> WDAC PowerShell cmdlets aren't available on Home edition, but policies are effective on all editions. | Policies are supported on all editions Windows 10 version 2004 and newer with [KB 5024351](https://support.microsoft.com/help/5024351).<br><br>Windows versions older than version 2004, including Windows Server 2019:<br><ul><li>Policies deployed through GP are only supported on Enterprise and Server editions.</li><li>Policies deployed through MDM are supported on all editions.</li></ul>|
| Management solutions   | <ul><li>[Intune](./deployment/deploy-windows-defender-application-control-policies-using-intune.md)</li><li>[Microsoft Configuration Manager](/configmgr/protect/deploy-use/use-device-guard-with-configuration-manager) (limited built-in policies or custom policy deployment via software distribution)</li><li>[Group policy](./deployment/deploy-windows-defender-application-control-policies-using-group-policy.md) </li><li>[Script](/windows/security/threat-protection/windows-defender-application-control/deployment/deploy-wdac-policies-with-script)</li></ul>  | <ul><li>[Intune](/windows/client-management/mdm/applocker-csp) (custom policy deployment via OMA-URI only)</li><li>Configuration Manager (custom policy deployment via software distribution only)</li><li>[Group Policy](./applocker/determine-group-policy-structure-and-rule-enforcement.md)</li><li>PowerShell</li><ul> |
| Per-User and Per-User group rules | Not available (policies are device-wide).  | Available on Windows 8+.  |
| Kernel mode policies  | Available on Windows 10, Windows 11, and Windows Server 2016 or later. | Not available. |
| [Rule option 11 - Disabled:Script Enforcement](/windows/security/threat-protection/windows-defender-application-control/design/script-enforcement)  | Available on all versions of Windows 10 except 1607 LTSB, Windows 11, and Windows Server 2019 and above. **Disabled:Script Enforcement** is not supported on **Windows Server 2016** or on **Windows 10 1607 LTSB** and should not be used on those platforms. Doing so will result in unexpected script enforcement behaviors. | MSI and Script rule collection is separately configurable. |
| [Per-app rules](/windows/security/threat-protection/windows-defender-application-control/use-windows-defender-application-control-policy-to-control-specific-plug-ins-add-ins-and-modules)  | Available on Windows 10, Windows 11, and Windows Server 2019 or later.  | Not available. |
| [Managed Installer (MI)](/windows/security/threat-protection/windows-defender-application-control/configure-authorized-apps-deployed-with-a-managed-installer)  | Available on Windows 10, Windows 11, and Windows Server 2019 or later. | Not available. |
| [Reputation-Based intelligence](/windows/security/threat-protection/windows-defender-application-control/use-windows-defender-application-control-with-intelligent-security-graph)     | Available on Windows 10, Windows 11, and Windows Server 2019 or later.  | Not available. |
| [Multiple policy support](/windows/security/threat-protection/windows-defender-application-control/deploy-multiple-windows-defender-application-control-policies) | Available on Windows 10, version 1903 and above, Windows 11, and Windows Server 2022.  | Not available.  |
| [Path-based rules](/windows/security/threat-protection/windows-defender-application-control/select-types-of-rules-to-create) | Available on Windows 10, version 1903 and above, Windows 11, and Windows Server 2019 or later. Exclusions aren't supported. Runtime user-writeability checks enforced by default.  | Available on Windows 8+. Exclusions are supported. No runtime user-writeability check. |
| [COM object allowlisting](/windows/security/threat-protection/windows-defender-application-control/allow-com-object-registration-in-windows-defender-application-control-policy) | Available on Windows 10, Windows 11, and Windows Server 2019 or later. | Not available. |
| [Packaged app rules](/windows/security/threat-protection/windows-defender-application-control/manage-packaged-apps-with-windows-defender-application-control) | Available on Windows 10, Windows 11, and Windows Server 2019 or later.  | Available on Windows 8+. |
| Enforceable file types | <ul><li>Driver files: .sys</li><li>Executable files: .exe and .com</li><li>DLLs: .dll and .ocx</li><li>Windows Installer files: .msi, .mst, and .msp</li><li>Scripts: .ps1, .vbs, and .js</li><li>Packaged apps and packaged app installers: .appx</li></ul>| <ul><li>Executable files: .exe and .com</li><li>[Optional] DLLs: .dll, .rll and .ocx</li><li>Windows Installer files: .msi, .mst, and .msp</li><li>Scripts: .ps1, .bat, .cmd, .vbs, and .js</li><li>Packaged apps and packaged app installers: .appx</li></ul>|
| [Application ID (AppId) Tagging](/windows/security/threat-protection/windows-defender-application-control/AppIdTagging/windows-defender-application-control-appid-tagging-guide) | Available on Windows 10, version 20H1 and above, and Windows 11. | Not available. |
