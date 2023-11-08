---
title: Hyper-V firewall 
description: Learn how
ms.topic: how-to
ms.date: 11/08/2023
---

# Configure Hyper-V firewall rules

Hyper-V Firewall is a new network firewall solution introduced with Windows 11 22H2. This firewall solution enables filtering inbound and outbound traffic to/from containers that are being hosted by Windows, including the Windows Subsystem for Linux (WSL).  

## Manage locally from PowerShell

Follow the steps below to manage Hyper-V firewall locally on your machine via the command line.

### Get the VMCreatorId GUID

Hyper-V firewall rules are enabled per VMCreatorId. First you need to obtain this, which you can do by running:  

```powershell
Get-NetFirewallHyperVVMCreator 
```

This will output a VmCreatorId. Please note that these are unique, and so the one shown below is exclusive to WSL.

```powershell
VMCreatorId  : {40E0AC32-46A5-438A-A0B2-2B479E8F2E90} 
FriendlyName : WSL 
```

### Firewall Settings

Hyper-V Firewall has settings that apply in general to a VMCreatorId. To see these you can use the [Get-NetFirewallHyperVVMSetting]( https://learn.microsoft.com/powershell/module/netsecurity/get-netfirewallhypervvmsetting?view=windowsserver2022-ps) commandlet. For example, you can get the policies affecting WSL with the command below:

```powershell
Get-NetFirewallHyperVVMSetting -PolicyStore ActiveStore -Name "{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}" 
```

This will output these values:

1. Enabled (True/False) - if Hyper-V Firewall is enabled for WSL VMs
2. DefaultInboundAction, DefaultOutboundAction - these are default rule policies as applied to packets entering or leaving the WSL container. These are the defaults (which can be configured more specifically later)
3. LoopbackEnabled - this tracks if loopback traffic between the host and the container is allowed (without requiring any special Hyper-V Firewall rules). WSL enables this by default, to allow the Windows Host to talk to WSL, and WSL to talk to the Windows Host
4. AllowHostPolicyMerge - this setting determines how Windows Host Firewall Enterprise Settings (GP), Hyper-V Firewall Enterprise Settings (MDM), Windows Host Firewall Enterprise Settings (MDM), local Hyper-V Firewall settings, and local Host Firewall settings interact

   a. This setting is detailed with Set-NetFirewallHyperVVMSetting: [Set-NetFirewallHyperVVMSetting (NetSecurity) | Microsoft Learn](https://learn.microsoft.com/powershell/module/netsecurity/set-netfirewallhypervvmsetting?view=windowsserver2022-ps)

> [!NOTE]
> `-PolicyStore ActiveStore` returns the *applied* settings.

You can set specific settings using the [Set-NetFirewallHyperVVMSetting]( https://learn.microsoft.com/powershell/module/netsecurity/set-netfirewallhypervvmsetting?view=windowsserver2022-ps) command. For example, the command below sets the default inbound connection to Allow:

```powershell
Set-NetFirewallHyperVVMSetting -Name '{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}' -DefaultInboundAction Allow 
```

### Firewall Rules

Hyper-V firewall rules can be enumerated and created from PowerShell. To view rules please use the [Get-NetFirewallHyperVRule]( https://learn.microsoft.com/powershell/module/netsecurity/get-netfirewallhypervrule?view=windowsserver2022-ps ) commandlet. For example, to view firewall rules that only pertain to WSL you can use the command below:

```powershell
Get-NetFirewallHyperVRule -VMCreatorId "{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}" 
```

And to set specific rules you can use the [Set-NetFirewallHyperVRule]( https://learn.microsoft.com/powershell/module/netsecurity/set-netfirewallhypervrule?view=windowsserver2022-ps) commandlet.

For example, you can create an inbound rule to allow TCP traffic to the Windows Subsystem for Linux (WSL) on port 80 with this PowerShell command:  

```powershell
New-NetFirewallHyperVRule -Name MyWebServer -DisplayName "My Web Server" -Direction Inbound -VMCreatorId "{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}" -Protocol TCP -LocalPorts 80 
```

### Targeting Hyper-V firewall rules and settings to specific profiles

Hyper-V firewall rules and settings can be targeted to the Firewall profile of the networks that are connected. These are the same Firewall Profiles that the Windows Firewall targets (Public Profile, Private Profile, Domain Profile). This has similar policy options as the above Hyper-V firewall PowerShell commandlets, but are just applied to specific profiles for the connected Windows Host network adapter.

You can view these settings per profile with this command:

```powershell
Get-NetFirewallHyperVProfile -PolicyStore ActiveStore 
```

> [!NOTE]
> `-PolicyStore ActiveStore` returns the *applied* settings.

The values here are the same as above, with one additional one:

- AllowLocalFirewallRules: This setting determines how Enterprise (MDM) Hyper-V Firewall Rules interact with locally defined Hyper-V Firewall Rules. If this is set to True, then Windows will apply both the Hyper-V Firewall Rules from Enterprise Policies and the locally defined Hyper-V Firewall Rules. If this is set to False, then the locally defined Hyper-V Firewall rules are not applied, and only the Hyper-V Firewall Rules pushed by the Enterprise Policies are applied.

You can set these settings per profile using the [Set-NetFirewallHyperVProfile]( https://learn.microsoft.com/powershell/module/netsecurity/set-netfirewallhypervprofile?view=windowsserver2022-ps) commandlet.  

You can set rules per profile using the [Set-NetFirewallHyperVRule]( https://learn.microsoft.com/powershell/module/netsecurity/set-netfirewallhypervrule?view=windowsserver2022-ps) commandlet with the `-Profile` option.

## Manage from Intune

You can also manage these settings online via Intune.
