---
title: Windows Firewall tools
description: Learn about the available tools to configure Windows Firewall and firewall rules.
ms.date: 09/06/2024
ms.topic: best-practice
---

# Windows Firewall tools

Windows offers different tools to view the status and configure Windows Firewall. All tools interact with the same underlying services, but provide different levels of control over those services:

- [Windows Security](#windows-security)
- [Control Panel](#control-panel)
- [Windows Defender Firewall with Advanced Security](#windows-defender-firewall-with-advanced-security) (WFAS)
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
    The *Windows Defender Firewall* Control Panel applet provides basic functionalities to configure Windows Firewall. Select <kbd>START</kbd>, type `firewall.cpl`, and press <kbd>ENTER</kbd>.
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
    The *Windows Defender Firewall with Advanced Security* (WFAS) is a Microsoft Management Console (MMC) snap-in that provides advanced configuration functionalities. It can be used locally and in group policy (GPO) implementations.

    - If you are configuring a single device, select <kbd>START</kbd>, type `wf.msc`, and press <kbd>ENTER</kbd>
    - If you're configuring devices joined to an Active Directory domain, [create or edit](/previous-versions/windows/it-pro/windows-server-2008-r2-and-2008/cc754740(v=ws.11)) a group policy object (GPO) and expand the nodes **Computer Configuration** > **Policies** > **Windows Settings** > **Security Settings** > **Windows Firewall with Advanced Security**

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/wfas.png" alt-text="Screenshot of the Windows Defender Firewall with Advanced Security MMC snap-in." lightbox="images/wfas.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Configuration Service Provider (CSP)
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    The [Firewall CSP][CSP] provides an interface to configure and query the status of Windows Firewall, which can be used with a mobile device management (MDM) solution like Microsoft Intune.
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

## Group policy processing considerations

The Windows Firewall policy settings are stored in the registry. By default, group policies are refreshed in the background every 90 minutes, with a random offset between 0 and 30 minutes.

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

:::image type="content" alt-text="Screenshot of the Windows Security app showing incoming connections." source="images/fw06-block.png":::

:::image type="content" alt-text="Screenshot of the Control Panel Firewall applet." source="images/fw07-legacy.png":::

By default, the Windows Firewall blocks everything unless there's an exception rule created. The *shield up* option overrides the exceptions. For example, the Remote Desktop feature automatically creates firewall rules when enabled. However, if there's an active exploit using multiple ports and services on a host, you can, instead of disabling individual rules, use the shields up mode to block all inbound connections, overriding previous exceptions, including the rules for Remote Desktop. The Remote Desktop rules remain intact but remote access can't work as long as shields up is active.

Once the emergency is over, uncheck the setting to restore regular network traffic.

## Next steps

From the following dropdown, select one of tools to learn how to configure Windows Firewall:

> [!div class="op_single_selector"]
>
> - [Configure with Microsoft Intune 🔗][INT-1]
> - [Configure with group policy](configure.md)
> - [Configure with command line tools](configure-with-command-line.md)

<!--links-->

[SEC-1]: windowsdefender://network/
[CSP]: /windows/client-management/mdm/firewall-csp
[INT-1]: /mem/intune/protect/endpoint-security-firewall-policy
