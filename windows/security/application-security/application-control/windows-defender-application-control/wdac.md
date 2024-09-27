---
title: Application Control for Windows
description: Application Control restricts which applications users are allowed to run and the code that runs in the system core.
ms.localizationpriority: medium
ms.collection:
- tier3
ms.date: 08/30/2023
ms.topic: overview
---

# Application Control for Windows

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](feature-availability.md).

With thousands of new malicious files created every day, using traditional methods like antivirus solutions-signature-based detection to fight against malware-provides an inadequate defense against new attacks.

In most organizations, information is the most valuable asset, and ensuring that only approved users have access to that information is imperative. However, when a user runs a process, that process has the same level of access to data that the user has. As a result, sensitive information could easily be deleted or transmitted out of the organization if a user knowingly or unknowingly runs malicious software.

Application control can help mitigate these types of security threats by restricting the applications that users are allowed to run and the code that runs in the System Core (kernel). Application control policies can also block unsigned scripts and MSIs, and restrict Windows PowerShell to run in [Constrained Language Mode](/powershell/module/microsoft.powershell.core/about/about_language_modes).

Application control is a crucial line of defense for protecting enterprises given today's threat landscape, and it has an inherent advantage over traditional antivirus solutions. Specifically, application control moves away from an application trust model where all applications are assumed trustworthy to one where applications must earn trust in order to run. Many organizations, like the Australian Signals Directorate, understand the significance of application control and frequently cite application control as one of the most effective means for addressing the threat of executable file-based malware (.exe, .dll, etc.).

> [!NOTE]
> Although application control can significantly harden your computers against malicious code, we recommend that you continue to maintain an enterprise antivirus solution for a well-rounded enterprise security portfolio.

Windows 10 and Windows 11 include two technologies that can be used for application control depending on your organization's specific scenarios and requirements:

- **Windows Defender Application Control (WDAC)**; and
- **AppLocker**

## WDAC and Smart App Control

Starting in Windows 11 version 22H2, [Smart App Control](https://support.microsoft.com/topic/what-is-smart-app-control-285ea03d-fa88-4d56-882e-6698afdb7003) provides application control for consumers. Smart App Control is based on WDAC, allowing enterprise customers to create a policy that offers the same security and compatibility with the ability to customize it to run line-of-business (LOB) apps. To make it easier to implement this policy, an [example policy](design/example-wdac-base-policies.md) is provided. The example policy includes **Enabled:Conditional Windows Lockdown Policy** option that isn't supported for WDAC enterprise policies. This rule must be removed before you use the example policy. To use this example policy as a starting point for creating your own policy, see [Create a custom base policy using an example WDAC base policy](design/create-wdac-policy-for-lightly-managed-devices.md#create-a-custom-base-policy-using-an-example-wdac-base-policy).

Smart App Control is only available on clean installation of Windows 11 version 22H2 or later, and starts in evaluation mode. Smart App Control is automatically turned off for enterprise managed devices unless the user has turned it on first. To turn off Smart App Control across your organization's endpoints, you can set the **VerifiedAndReputablePolicyState** (DWORD) registry value under `HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy` as shown in the following table. After you change the registry value, you must use [CiTool.exe -r](/windows/security/threat-protection/windows-defender-application-control/operations/citool-commands#refresh-the-wdac-policies-on-the-system) for the change to take effect.

| Value | Description |
|-------|-------------|
| 0     | Off         |
| 1     | Enforce     |
| 2     | Evaluation  |

> [!IMPORTANT]
> Once you turn Smart App Control off, it can't be turned on without resetting or reinstalling Windows.

### Smart App Control Enforced Blocks

Smart App Control enforces the [Microsoft Recommended Driver Block rules](design/microsoft-recommended-driver-block-rules.md) and the [Microsoft Recommended Block Rules](design/applications-that-can-bypass-wdac.md), with a few exceptions for compatibility considerations. The following aren't blocked by Smart App Control:

- Infdefaultinstall.exe
- Microsoft.Build.dll
- Microsoft.Build.Framework.dll
- Wslhost.dll

[!INCLUDE [windows-defender-application-control-wdac](../../../../../includes/licensing/windows-defender-application-control-wdac.md)]

## Related articles

- [WDAC design guide](design/wdac-design-guide.md)
- [WDAC deployment guide](deployment/wdac-deployment-guide.md)
- [WDAC operational guide](operations/wdac-operational-guide.md)
- [AppLocker overview](applocker/applocker-overview.md)
