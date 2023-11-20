---
title: Configure Windows Firewall
description: Learn about the available tools to configure Windows Firewall and firewall rules.
ms.date: 11/15/2023
ms.topic: best-practice
---

# Configure Windows Firewall

This article describes the available tools to configure Windows Firewall and firewall rules.

## Configuration tools

Windows offers different tools to view the status and configure Windows Firewall. All tools interact with the same underlying services, but provide different levels of control over those services:

- [Windows Security](#windows-security)
- [Control Panel](#control-panel)
- [Windows Defender Firewall with Advanced Security](#windows-defender-firewall-with-advanced-security) and its integration with the Microsoft Management Console (MMC)
- [Configuration Service Provider (CSP)](#configuration-service-provider-csp)
- [Command line tools](#command-line-tools)

> [!NOTE]
> To change the configuration of Windows Firewall on a device, you must have administative rights.

:::row:::
  :::column span="4":::
    #### Windows Security
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
    The *Windows Security* app can be used to view the Windows Firewall status and access advanced tools to configure it. Select <kbd>START</kbd>, type `Windows Security`, and press <kbd>ENTER</kbd>. Once Windows Security is open, select the tab **Firewall & network protection**. Or use the following shortcut:
    > [!div class="nextstepaction"]
    > [Open Firewall & network protection][SEC-1]

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/windows-security.png" alt-text="Screenshot showing the Windows Security app." lightbox="images/windows-security.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Control Panel
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
    The *Windows Defender Firewall* Control Panel applet (`firewall.cpl`) provides basic functionalities to configure Windows Firewall.
  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/control-panel.png" alt-text="Screenshot showing the Windows Defender Firewall control panel applet." lightbox="images/control-panel.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Windows Defender Firewall with Advanced Security
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
    The *Windows Defender Firewall with Advanced Security* MMC snap-in provides advanced configuration functionalities. It can be used locally (`wf.msc`) and in group policy (GPO) implementations.
  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/mmc-advanced-security.png" alt-text="Screenshot of the Windows Defender Firewall with Advanced Security MMC snap-in." lightbox="images/mmc-advanced-security.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Configuration Service Provider (CSP)
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    The [Firewall CSP](/windows/client-management/mdm/firewall-csp) provides an interface to configure and query the status of Windows Firewall, which can be used with a mobile device management (MDM) solution like Microsoft Intune.
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Command line tools
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    The `NetSecurity` PowerShell module and `Network Command Shell (netsh.exe)` are command line utilities that can be used to query the status and configure Windows Firewall.
  :::column-end:::
:::row-end:::

## Local policy merge and application rules

Firewall rules can be deployed:

1. Locally using the [Windows Defender Firewall with Advanced Security](#windows-defender-firewall-with-advanced-security) console (`wf.msc`) or the local GPO editor (`gpedit.msc`)
1. Locally using [command line tools](#command-line-tools)
1. Remotely using group policy (GPO) settings if the device is a member of an Active Directory domain, or managed by Configuration Manager
1. Remotely using the [Firewall CSP](/windows/client-management/mdm/firewall-csp), with a mobile device management (MDM) solution like Microsoft Intune

*Rule merging* settings control how rules from different policy sources can be combined. Administrators can configure different merge behaviors for *Domain*, *Private*, and *Public profiles*.

The rule-merging policy settings either allow or prevent local administrators from creating their own firewall rules in addition to those rules obtained from GPO or CSP.

|  | Path |
|--|--|
| **CSP** | Domain Profile: `./Vendor/MSFT/Firewall/MdmStore/DomainProfile/`[AllowLocalPolicyMerge](/windows/client-management/mdm/firewall-csp#mdmstoredomainprofileallowlocalpolicymerge) <br> Private Profile`./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/`[AllowLocalPolicyMerge](/windows/client-management/mdm/firewall-csp#mdmstoreprivateprofileallowlocalpolicymerge) <br> Public Profile `./Vendor/MSFT/Firewall/MdmStore/PublicProfile/`[AllowLocalPolicyMerge](/windows/client-management/mdm/firewall-csp#mdmstorepublicprofileallowlocalipsecpolicymerge) |
| **GPO** | **Computer Configuration** > **Windows Settings** > **Security Settings** > **Windows Defender Firewall with Advanced Security**|

Administrators may disable *LocalPolicyMerge* in high-security environments to maintain tighter control over endpoints. This setting can impact some applications and services that automatically generate a local firewall policy upon installation.

> [!IMPORTANT]
> If merging of local policies is disabled, centralized deployment of rules is required for any app that needs inbound connectivity.

It's important to create and maintain a list of such apps, including the network ports used for communications. Typically, you can find what ports must be open for a given service on the app's website. For more complex deployments, a thorough analysis might be needed using network packet capture tools.

In general, to maintain maximum security, admins should only deploy firewall exceptions for apps and services determined to serve legitimate purposes.

> [!NOTE]
> The use of wildcard patterns, such as `C:\*\teams.exe` isn't supported in application rules. You can only create rules using the full path to the application(s).

## Group policy processing  

The Windows Firewall settings configured via GPO or CSP are stored in the registry. By default, group policies are refreshed in the background every 90 minutes, with a random offset of 0 to 30 minutes.

Windows Firewall monitors the registry for changes, and if something is written to the registry it notifies the *Windows Filtering Platform (WFP)*, which performs the following actions:

1. Reads all firewall rules and settings
1. Applies any new filters
1. Removes the old filters

> [!NOTE]
> The actions are triggered whenever something is written to, or deleted from the registry location the GPO settings are stored, regardless if there's really a configuration change. During the process, IPsec connections are disconnected.

Many policy implementations specify that they're updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired policy setting in case a user has changed it. To control the behavior of the registry group policy processing, you can use the policy **Computer Configuration** > **Administrative Templates** > **System** > **Group Policy** > **Configure registry policy processing**. The **Process even if the Group Policy objects haven't changed** option updates and reapplies the policies even if the policies haven't changed. This option is disabled by default.

If you enable the option **Process even if the Group Policy objects haven't changed**, the WFP filters get reapplied at **every** background refresh. In case you have 10 group policies, the WFP filters get reapplied 10 times during the refresh interval. If an error happens during policy processing, the applied settings might be incomplete, resulting in issues like:

- Windows Firewall blocks inbound or outbound traffic allowed by group policies
- Local Firewall settings are applied instead of group policy settings
- IPsec connections can't establish

The temporary solution is to refresh the group policy settings, using the command `gpupdate.exe /force`, which requires connectivity to a domain controller.

To avoid the issue, leave the policy **Configure registry policy processing** to the default value of **Not Configured** or, if already configured, configure it **Disabled**.

> [!IMPORTANT]
> The checkbox next to **Process even if the Group Policy objects have not changed** must be unchecked. If you leave it unchecked, WFP filters are written only in case there's a configuration change.
>
> If there's a requirement to force registry deletion and rewrite, then disable background processing by checking the checkbox next to **Do not apply during periodic background processing**.

## *Shields up* mode for active attacks

An important Windows Firewall feature you can use to mitigate damage during an active attack is the *shields up* mode. It's an informal term referring to an easy method a firewall administrator can use to temporarily increase security in the face of an active attack.

Shields up can be achieved by checking **Block all incoming connections, including those in the list of allowed apps** setting found in either the Windows Settings app or Control Panel.

![Incoming connections.](images/fw06-block.png)

:::image type="content" alt-text="Firewall cpl." source="images/fw07-legacy.png":::

By default, the Windows Firewall blocks everything unless there's an exception rule created. The *shield up* option overrides the exceptions. For example, the Remote Desktop feature automatically creates firewall rules when enabled. However, if there's an active exploit using multiple ports and services on a host, you can, instead of disabling individual rules, use the shields up mode to block all inbound connections, overriding previous exceptions, including the rules for Remote Desktop. The Remote Desktop rules remain intact but remote access won't work as long as shields up is activated.

Once the emergency is over, uncheck the setting to restore regular network traffic.

## WDAC tagging policies

Windows Firewall supports the use of Windows Defender Application Control (WDAC) Application ID (AppID) tags in firewall rules. With this capability, Windows Firewall rules can be scoped to an application or a group of applications by referencing process tags, without using absolute path or sacrificing security. There are two steps for this configuration:

### Step 1: Deploy WDAC AppId Tagging Policies

A Windows Defender Application Control (WDAC) policy must be deployed, which specifies individual applications or groups of applications to apply a *PolicyAppId tag* to the process token(s). Then, the admin can define firewall rules that are scoped to all processes tagged with the matching PolicyAppId.

Follow the detailed [WDAC Application ID (AppId) Tagging guide](../../../application-security/application-control/windows-defender-application-control/AppIdTagging/wdac-appid-tagging-guide.md) to create, deploy, and test an AppID policy to tag applications.

### Step 2: Configure Firewall Rules using PolicyAppId Tags

Use one of the two methods below to configure firewall rules using PolicyAppId tags:

- Deploy firewall rules with Microsoft Intune: when creating firewall rules with Intune Microsoft Defender Firewall Rules, provide the AppId tag in the Policy App ID setting. The properties come directly from the [Firewall configuration service provider](/windows/client-management/mdm/firewall-csp)(CSP) and apply to the Windows platform.
You can do this through the Intune admin center under Endpoint security > Firewall. Policy templates can be found via Create policy > Windows 10, Windows 11, and Windows Server > Microsoft Defender Firewall or Microsoft Defender Firewall Rules.
- Create local firewall rules with PowerShell: you can use [`New-NetFirewallRule`](/powershell/module/netsecurity/new-netfirewallrule) and specify the `-PolicyAppId` parameter. You can specify one tag at a time while creating firewall rules. Multiple User Ids are supported.

<!--links-->

[SEC-1]: windowsdefender://network/
