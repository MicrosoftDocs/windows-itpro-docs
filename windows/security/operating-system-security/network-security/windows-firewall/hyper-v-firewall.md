---
title: Hyper-V firewall
description: Learn how to configure Hyper-V firewall rules and settings using PowerShell or Configuration Service Provider (CSP).
ms.topic: how-to
ms.date: 09/06/2024
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
---

# Configure Hyper-V firewall

Starting in Windows 11, version 22H2, Hyper-V firewall is a network firewall solution that enables filtering of inbound and outbound traffic to/from containers hosted by Windows, including the Windows Subsystem for Linux (WSL).\
This article describes how to configure Hyper-V firewall rules and settings using PowerShell or configuration service provider (CSP).

> [!IMPORTANT]
> The configuration of Hyper-V firewall is not available via group policy (GPO). If Windows Firewall settings are configured via GPO and Hyper-V firewall settings aren't configured via CSP, then the applicable rules and settings are automatically mirrored from the GPO configuration.

## Configure Hyper-V firewall with PowerShell

This section describes the steps to manage Hyper-V firewall using PowerShell.

### Obtain the WSL GUID

Hyper-V firewall rules are enabled per *VMCreatorId*. To obtain the VMCreatorId, use the cmdlet:

```powershell
Get-NetFirewallHyperVVMCreator
```

The output contains a VmCreator object type, which has unique identifier `VMCreatorId` and `friendly name` properties. For example, the following output shows the properties of WSL:

```powershell
PS C:\> Get-NetFirewallHyperVVMCreator
VMCreatorId : {40E0AC32-46A5-438A-A0B2-2B479E8F2E90}
FriendlyName : WSL
```

> [!NOTE]
> The WSL VMCreatorId is `{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}`.

### Verify Hyper-V firewall settings

Hyper-V firewall has settings that apply in general to a VMCreatorId. Use the [Get-NetFirewallHyperVVMSetting][PS-1] cmdlet to check the settings. For example, you can obtain the policies applied to WSL with the command:

```powershell
Get-NetFirewallHyperVVMSetting -PolicyStore ActiveStore -Name '{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}'
```

> [!NOTE]
> `-PolicyStore ActiveStore` returns the *applied* settings.

The output contains the following values:

| Value | Description |
|--|--|
| `Enabled` (True/False) | True if Hyper-V Firewall is enabled for WSL VMs. |
| `DefaultInboundAction`, `DefaultOutboundAction` | These are default rule policies applied to packets entering or leaving the WSL container. The rule policies can be modified, as described in this article.  |
| `LoopbackEnabled` | Tracks if loopback traffic between the host and the container is allowed, without requiring any Hyper-V Firewall rules. WSL enables it by default, to allow the Windows Host to talk to WSL, and WSL to talk to the Windows Host.|
| `AllowHostPolicyMerge` | Determines how Windows Host Firewall Enterprise Settings (GPO), Hyper-V Firewall Enterprise Settings (CSP), Windows Host Firewall Enterprise Settings (CSP), local Hyper-V Firewall settings, and local Host Firewall settings interact.<br>This setting is detailed with the [Set-NetFirewallHyperVVMSetting][PS-2] cmdlet.|

### Configure Hyper-V firewall settings

To configure Hyper-V firewall, use the [Set-NetFirewallHyperVVMSetting][PS-2] command. For example, the following command sets the default inbound connection to *Allow*:

```powershell
Set-NetFirewallHyperVVMSetting -Name '{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}' -DefaultInboundAction Allow
```

### Firewall Rules

Hyper-V firewall rules can be enumerated and created from PowerShell. To view rules, use the [Get-NetFirewallHyperVRule][PS-3] cmdlet. For example, to view firewall rules that only pertain to WSL, use the following command:

```powershell
Get-NetFirewallHyperVRule -VMCreatorId '{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}'
```

To configure specific rules, use the [Set-NetFirewallHyperVRule][PS-4] cmdlet.

For example, to create an inbound rule to allow TCP traffic to WSL on port 80, use the following command:

```powershell
New-NetFirewallHyperVRule -Name MyWebServer -DisplayName "My Web Server" -Direction Inbound -VMCreatorId '{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}' -Protocol TCP -LocalPorts 80
```

### Target Hyper-V firewall rules and settings to specific profiles

Hyper-V firewall rules and settings can be targeted to the *Firewall profiles*, which are based on the type of network the device is connected to:

- Public profile
- Private profile
- Domain profile

The policy options are similar to the ones already described, but are applied to specific profiles for the connected Windows Host network adapter.

To view the settings per profile, use the following command:

```powershell
Get-NetFirewallHyperVProfile -PolicyStore ActiveStore
```

> [!NOTE]
> `-PolicyStore ActiveStore` returns the *applied* settings.

The output contains an extra value compared to the ones described in the previous section:

| Value | Description |
|--|--|
| `AllowLocalFirewallRules` (True/False)| This setting determines how enterprise Hyper-V firewall rules (CSP or GPO) interact with the locally defined Hyper-V firewall rules:<br>- if the value is *True*, both the enterprise Hyper-V firewall rules and the locally defined rules are applied<br>- if the value is *False*, the locally defined Hyper-V firewall rules aren't applied, and only enterprise rules are applied. |

> [!NOTE]
> To configure these **settings** per profile, use the [Set-NetFirewallHyperVProfile][PS-5] cmdlet.
>
> To configure these **rules** per profile using the [Set-NetFirewallHyperVRule][PS-4] cmdlet with the `-Profile` option.

## Configure Hyper-V firewall with CSP

You can configure Hyper-V firewall using the [Firewall CSP][CSP-1], for example with an MDM solution like Microsoft Intune.

To learn more about the CSP options, follow these links:

- [Configure Hyper-V firewall settings][SETTINGS]: to configure the Hyper-V firewall settings
- [Configure Hyper-V firewall rules][RULE]: to configure list of rules controlling traffic through the Hyper-V firewall

To learn how to configure the firewall with Microsoft Intune, see [Firewall policy for endpoint security][INT-1].

### :::image type="icon" source="../../../images/icons/feedback.svg" border="false"::: Provide feedback

To provide feedback for Hyper-V firewall, open [**Feedback Hub**][FHUB] and use the category **Security and Privacy > Microsoft Defender Firewall and network protection**.

<!--links used in this document-->

[CSP-1]: /windows/client-management/mdm/firewall-csp

[FHUB]: feedback-hub://?tabid=2&newFeedback=true&feedbackType=1
[INT-1]: /mem/intune/protect/endpoint-security-firewall-policy
[PS-1]: /powershell/module/netsecurity/get-netfirewallhypervvmsetting
[PS-2]: /powershell/module/netsecurity/set-netfirewallhypervvmsetting
[PS-3]: /powershell/module/netsecurity/get-netfirewallhypervrule
[PS-4]: /powershell/module/netsecurity/set-netfirewallhypervrule
[PS-5]: /powershell/module/netsecurity/set-netfirewallhypervprofile

[RULE]: /windows/client-management/mdm/firewall-csp#mdmstorehypervfirewallrules
[SETTINGS]: /windows/client-management/mdm/firewall-csp#mdmstorehypervvmsettings
