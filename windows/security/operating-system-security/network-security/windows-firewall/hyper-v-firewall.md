---
title: Hyper-V firewall 
description: Learn how to configure Hyper-V firewall rules and settings using PowerShell or Configuration Service Provider (CSP).
ms.topic: how-to
ms.date: 11/08/2023
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
---

# Configure Hyper-V firewall

Starting in Windows 11, version 22H2, Hyper-V firewall is a network firewall solution that enables filtering of inbound and outbound traffic to/from containers hosted by Windows, including the Windows Subsystem for Linux (WSL).\
This article describes how to configure Hyper-V firewall rules and settings using PowerShell, configuration service provider (CSP), or group policy (GPO).

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
| `LoopbackEnabled` | Tracks if loopback traffic between the host and the container is allowed, without requiring any Hyper-V Firewall rules. WSL enables it by default, to allow the Windows Host to talk to WSL, and WSL to talk to the Windows Host. |
| `AllowHostPolicyMerge` | Determines how Windows Host Firewall Enterprise Settings (GPO), Hyper-V Firewall Enterprise Settings (CSP), Windows Host Firewall Enterprise Settings (CSP), local Hyper-V Firewall settings, and local Host Firewall settings interact.<br>This setting is detailed with the [Set-NetFirewallHyperVVMSetting][PS-2] cmdlet. |

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

You can configure Hyper-V firewall using the [Firewall CSP][CSP-1], for example with an MDM solution like Microsoft Intune. To learn how to configure Hyper-V firewall with Microsoft Intune, see [ADD LINK][INT-1].

Here's a list of settings that can be used to configure Hyper-v firewall:

|Value name|Description|
|-|-|
|`./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}/`**[EnableFirewall]**|This value is an on/off switch for the Hyper-V Firewall. This value controls the settings for all profiles.|
|`./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}/`**[EnableLoopback]**|Enables loopback between this guest and another guest or the host.|
|`./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}/`**[AllowHostPolicyMerge]**|This value is used as an on/off switch. If this value is true, applicable host firewall rules and settings are applied to Hyper-V Firewall.|
|`./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}/`**[DefaultInboundAction]**|This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on inbound connections. This value controls the settings for all profiles. It's recommended to instead use the profile setting value under the profile subtree.|
|`./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}/`**[DefaultOutboundAction]**|This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on outbound connections. This value controls the settings for all profiles. It's recommended to instead use the profile setting value under the profile subtree.|

The following values apply to Hyper-V firewall profile settings: *Public*, *Private*, *Domain*:

|Value name|Description|
|---|---|
|`./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}/<Profile>/`**[EnableFirewall][PROFILE]**|Enables Hyper-V firewall rules for this profile.|
|`./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}/<Profile>/`**[AllowLocalPolicyMerge][PROFILE]**|This value is used as an on/off switch. If this value is false, Hyper-V Firewall rules from the local store are ignored and not enforced.|[True, False]|
|`./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}/<Profile>/`**[DefaultOutboundAction][PROFILE]**|The default action for outbound traffic that is applied if no rules match the traffic.|
|`./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}/<Profile>/`**[DefaultInboundAction][PROFILE]**|The default action for inbound traffic that is applied if no rules match the traffic.|
|`./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}/<Profile>/`**[AllowLocalPolicyMerge][PROFILE]**|||

The following values apply to Hyper-V firewall rules:

| Value name | Description |
|--|--|
| `./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/<RuleId>/`**[Name][RULE]** | Friendly name of the rule. |
| `./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/<RuleId>/`**[Priority][RULE]** | Specifies the ordering of rule enforcement. If not specified, block rules are ordered ahead of allow rules. A lower priority rule is evaluated before a higher priority one. |
| `./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/<RuleId>/`**[Direction][RULE]** | Comma separated list. The rule is enabled based on the traffic direction as following. <br><br>- `IN`: the rule applies to inbound traffic. <br><br>-`OUT`: the rule applies to outbound traffic. <br><br>If not specified the detault is OUT. |
| `./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/<RuleId>/`**[VMCreatorId][RULE]** | This field specifies the VM Creator ID that this rule is applicable to. A `NULL` GUID will result in this rule applying to all VM creators. |
| Protocol <br><br>`./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/<RuleId>/`**[Protocol][RULE]** | `0-255` number representing the ip protocol (TCP = 6, UDP = 17). If not specified the default is All. |
| `./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/<RuleId>/`**[LocalAddressRanges][RULE]** | Consists of one or more comma-delimited tokens specifying the local addresses covered by the rule. `*` is the default value. <br><br>Valid tokens include: <br><br>`*`: indicates any local address. If present, this must be the only token included. <br><br>A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to `255.255.255.255`. <br><br>A valid IPv6 address. <br><br>An IPv4 address range in the format of *start address - end address* with no spaces included. <br><br>An IPv6 address range in the format of *start address - end address* with no spaces included. If not specified the default is All. |
| `./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/<RuleId>/`**[LocalPortRanges][RULE]** | Comma Separated list of ranges specifying the local port of the traffic covered by this rule. For example, `100-120,200,300-320`. If not specified the default is All. |
| `./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/<RuleId>/`**[RemoteAddressRanges][RULE]** | Consists of one or more comma-delimited tokens specifying the remote addresses covered by the rule. `*` is the default value. <br><br>Valid tokens include: <br><br>`*`: indicates any remote address. If present, this must be the only token included. <br><br>A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to `255.255.255.255`. <br><br>A valid IPv6 address. <br><br>An IPv4 address range in the format of *start address - end address* with no spaces included. <br><br>An IPv6 address range in the format of *start address - end address* with no spaces included. If not specified the default is All. |
| `./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/<RuleId>/`**[RemotePortRanges][RULE]** | Comma Separated list of ranges specifying the remote port of the traffic covered by this rule. For example, `100-120,200,300-320`. If not specified the default is All. |
| `./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/<RuleId>/`**[Action][RULE]** | Specifies the action the rule enforces: <br><br>0 - Block <br><br>1 - Allow |
| `./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/<RuleId>/`**[Enabled][RULE]** | Indicates whether the rule is enabled or disabled. If the rule must be enabled, this value must be set to true. If not specified - a new rule is disabled by default. |
| `./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/<RuleId>/`**[Status][RULE]** | Provides information about the specific version of the rule in deployment for monitoring purposes. |
| `./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/<RuleId>/`**[Profiles][RULE]** | Specifies the profiles to which the rule belongs: Domain, Private, Public. See [FW_PROFILE_TYPE](/openspecs/windows_protocols/ms-fasp/7704e238-174d-4a5e-b809-5f3787dd8acc) for the bitmasks that are used to identify profile types. If not specified, the default is All. |

### :::image type="icon" source="../../../images/icons/feedback.svg" border="false"::: Provide feedback

To provide feedback for Hyper-V firewall, open [**Feedback Hub**][FHUB] and use the category **Security and Privacy > Microsoft Defender Firewall and network protection**.

<!--links used in this document-->

[CSP-1]: /windows/client-management/mdm/firewall-csp

[FHUB]: feedback-hub://?tabid=2&newFeedback=true&feedbackType=1
[INT-1]: /windows/client-management/mdm/firewall-csp
[PS-1]: /powershell/module/netsecurity/get-netfirewallhypervvmsetting
[PS-2]: /powershell/module/netsecurity/set-netfirewallhypervvmsetting
[PS-3]: /powershell/module/netsecurity/get-netfirewallhypervrule
[PS-4]: /powershell/module/netsecurity/set-netfirewallhypervrule
[PS-5]: /powershell/module/netsecurity/set-netfirewallhypervprofile

[RULE]: /windows/client-management/mdm/firewall-csp#mdmstorehypervfirewallrules
[PROFILE]: /windows/client-management/mdm/firewall-csp#mdmstorehypervvmsettingsvmcreatorid
[EnableFirewall]: /windows/client-management/mdm/firewall-csp#mdmstorehypervvmsettingsvmcreatoridenablefirewall
[EnableLoopback]: /windows/client-management/mdm/firewall-csp#mdmstorehypervvmsettingsvmcreatoridenableloopback
[AllowHostPolicyMerge]: /windows/client-management/mdm/firewall-csp#mdmstorehypervvmsettingsvmcreatoridallowhostpolicymerge
[DefaultOutboundAction]: /windows/client-management/mdm/firewall-csp#mdmstorehypervvmsettingsvmcreatoriddefaultoutboundaction
[DefaultInboundAction]: /windows/client-management/mdm/firewall-csp#mdmstorehypervvmsettingsvmcreatoriddefaultinboundaction
