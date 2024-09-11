---
title: App Control for Business feature availability
description: Compare App Control for Business and AppLocker feature availability.
ms.localizationpriority: medium
ms.date: 09/11/2024
ms.topic: overview
---

# App Control for Business and AppLocker feature availability

> [!NOTE]
> Some capabilities of App Control for Business are only available on specific Windows versions. Review the following table to learn more.

| Capability  | App Control for Business | AppLocker   |
|-------------|------|-------------|
| Platform support    | Available on Windows 10, Windows 11, and Windows Server 2016 or later.  | Available on Windows 8 or later.   |
| Edition availability     | Available on Windows 10, Windows 11, and Windows Server 2016 or later. <br> App Control PowerShell cmdlets aren't available on Home edition, but policies are effective on all editions. | Policies are supported on all editions Windows 10 version 2004 and newer with [KB 5024351](https://support.microsoft.com/help/5024351).<br><br>Windows versions older than version 2004, including Windows Server 2019:<br><ul><li>Policies deployed through GP are only supported on Enterprise and Server editions.</li><li>Policies deployed through MDM are supported on all editions.</li></ul>|
| Management solutions   | <ul><li>[Intune](deployment/deploy-appcontrol-policies-using-intune.md)</li><li>[Microsoft Configuration Manager](/configmgr/protect/deploy-use/use-device-guard-with-configuration-manager) (limited built-in policies or custom policy deployment via software distribution)</li><li>[Group policy](deployment/deploy-appcontrol-policies-using-group-policy.md) </li><li>[Script](deployment/deploy-appcontrol-policies-with-script.md)</li></ul>  | <ul><li>[Intune](/windows/client-management/mdm/applocker-csp) (custom policy deployment via OMA-URI only)</li><li>Configuration Manager (custom policy deployment via software distribution only)</li><li>[Group Policy](applocker/determine-group-policy-structure-and-rule-enforcement.md)</li><li>PowerShell</li><ul> |
| Per-user and Per-user group rules | Not available (policies are device-wide).  | Available on Windows 8+.  |
| Kernel mode policies  | Available on Windows 10, Windows 11, and Windows Server 2016 or later. | Not available. |
| [Rule option 11 - Disabled:Script Enforcement](design/script-enforcement.md)  | Available on all versions of Windows 10 except 1607 LTSB, Windows 11, and Windows Server 2019 and above. **Disabled:Script Enforcement** isn't supported on **Windows Server 2016** or on **Windows 10 1607 LTSB** and shouldn't be used on those platforms. Doing so results in unexpected script enforcement behaviors. | MSI and Script rule collection is separately configurable. |
| [Per-app rules](design/use-appcontrol-policy-to-control-specific-plug-ins-add-ins-and-modules.md)  | Available on Windows 10, Windows 11, and Windows Server 2019 or later.  | Not available. |
| [Managed Installer (MI)](design/configure-authorized-apps-deployed-with-a-managed-installer.md)  | Available on Windows 10, Windows 11, and Windows Server 2019 or later. | Not available. |
| [Reputation-Based intelligence](design/use-appcontrol-with-intelligent-security-graph.md)     | Available on Windows 10, Windows 11, and Windows Server 2019 or later.  | Not available. |
| [Multiple policy support](design/deploy-multiple-appcontrol-policies.md) | Available on Windows 10, version 1903 and above, Windows 11, and Windows Server 2022.  | Not available.  |
| [Path-based rules](design/select-types-of-rules-to-create.md) | Available on Windows 10, version 1903 and above, Windows 11, and Windows Server 2022 or later. Exclusions aren't supported. Runtime user-writeability checks enforced by default.  | Available on Windows 8+. Exclusions are supported. No runtime user-writeability check. |
| [COM object allowlisting](design/allow-com-object-registration-in-appcontrol-policy.md) | Available on Windows 10, Windows 11, and Windows Server 2019 or later. | Not available. |
| [Packaged app rules](design/manage-packaged-apps-with-appcontrol.md) | Available on Windows 10, Windows 11, and Windows Server 2019 or later.  | Available on Windows 8+. |
| Enforceable file types | <ul><li>Driver files: .sys</li><li>Executable files: .exe and .com</li><li>DLLs: .dll, .rll and .ocx</li><li>Windows Installer files: .msi, .mst, and .msp</li><li>Scripts: .ps1, .vbs, and .js</li><li>Packaged apps and packaged app installers: .appx</li></ul>| <ul><li>Executable files: .exe and .com</li><li>[Optional] DLLs: .dll, .rll and .ocx</li><li>Windows Installer files: .msi, .mst, and .msp</li><li>Scripts: .ps1, .bat, .cmd, .vbs, and .js</li><li>Packaged apps and packaged app installers: .appx</li></ul>|
| [Application ID (AppId) Tagging](AppIdTagging/appcontrol-appid-tagging-guide.md) | Available on Windows 10, version 20H1 and later, and Windows 11. | Not available. |
