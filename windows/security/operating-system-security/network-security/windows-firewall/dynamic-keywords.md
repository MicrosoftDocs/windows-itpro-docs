---
title: Windows Firewall dynamic keywords
description: Learn about Windows Firewall dynamic keywords and how to configure it using Windows PowerShell.
ms.topic: how-to
ms.date: 01/16/2024
---

# Windows Firewall dynamic keywords

Windows Firewall includes a functionality called *dynamic keywords*, which simplifies the configuration and management of Windows Firewall.

With dynamic keywords, you can define a set of IP address ranges, fully qualified domain names (FQDNs), and autoresolution options, to which one or more Firewall rules can refer.

## Configure dynamic keywords

To configure dynamic keywords, you can use:

- [Firewall CSP][CSP-1], which can be used with a Mobile Device Management (MDM) solution like Microsoft Intune
- Windows PowerShell

> [!TIP]
> Microsoft Intune offers a simplified management experience called *reusable settings groups*. For more information, see [Add reusable settings groups to profiles for Firewall rules][MEM-1].

This article describes how to configure dynamic keywords using Windows PowerShell.

## Dynamic keywords and Fully Qualified Domain Names (FQDN)

Dynamic keywords can be configured by defining a set of IP address ranges or FQDNs. Here are important things to consider when using FQDNs:

- FQDN support is for reducing the overhead of managing IP rules where IP addresses are dynamic and change frequently
- FQDNs aren't a replacement for IP addresses in all scenarios. IP addresses should be used when possible, for security and performance reasons
  - FQDN rules have a performance impact on the endpoint, including DNS latency
  - FQDN isn't a secure DNS service. The FQDN resolution uses the default DNS configuration of the endpoint
- An FQDN rule requires a DNS query to happen for that FQDN to be resolved to an IP address. Traffic to IP addresses must generate a DNS query for FQDN rules
  - Limitations may include: websites accessed via proxy, secure DNS services, certain VPN tunnel configurations, cached IPs on the endpoint
- While Partially Qualified Domain Names (PQDNs) are allowed, FQDNs are preferred. Wildcards `*` are supported for hosts, for example `*.contoso.com`

### Functions and known limitations

The Windows Firewall FQDN feature uses the Network Protection external callout driver, to inspect DNS responses where the DNS query matches FQDN rules.

- The Network Protection component doesn't periodically execute DNS queries. It requires an application to execute a DNS query
- Windows Firewall flushes all stored resolved IP addresses on device restart
- Network protection doesn't synchronously inspect the DNS response, meaning it currently doesn't hold the UDP packet during inspection. It's an asynchronous function
  - This can create a condition where an application, after receiving the DNS response, may attempt to connect to an IP address but gets initially blocked if it's faster than the FW rule update.
    - This is in the order of milliseconds
    - Generally, applications have retry logic for an initial failed connection and as a result the issue is transparent to the end user
    - On occasion a component may not have retry logic on initial connection fail. Which is solved in two ways
     - The end user can hit "refresh" in the application they're using, and it should connect successfully at that time
     - Customers can use the pre-hydration scripts tactfully where this condition is occurring in their environment
- MDE keywords in the FQDN feature are case sensitive.
- If local policy merge is disabled, then all rules must be recreated via Intune. For more information, see [Local policy merge and application rules](rules.md#local-policy-merge-and-application-rules).

### Order of operations

1. Firewall publishes the list of FQDNs to Network Protection
1. Network Protection listens for DNS queries where FQDNs match the definition from Windows Firewall
1. Network Protection listens for the DNS response. Once UDP packets are received, Network Protection parses the packets and sends the information to Windows Firewall
1. Windows Firewall updates the corresponding firewall rules with the resolved IP(s)

### Key Configuration Points for FQDN Feature

- Microsoft Defender Antivirus must be turned on and running platform version `4.18.2209.7` or later.
  - To verify, open [Windows Security](windowsdefender://) and select **Settings** > **About**
- Network Protection must be in *block* or *audit* mode. For more information, see [Check if network protection is enabled][M365-1].
- DNS over HTTPS (DoH) must be disabled. To configure your preferred browser, you can use the following settings:
  - [Microsoft Edge][EDGE-1]
  - [Chrome][HTTP-1]
  - [Firefox][HTTP-2]
- The device's default DNS resolution settings apply. This feature doesn't provide any additional DNS security or functionality changes
  - For Edge version 109 and later, configure the browser to use the default system DNS through [this policy][EDGE-2]. For more information, see [Configure Microsoft Edge policy settings on Windows devices][EDGE-3]
    > [!TIP]
    > You can also download the ADMX file from there, follow the directions, and configure it via gpedit.msc for local testing.

### Example configurations for the two primary postures for FQDN

- Block all outbound and inbound by default and allow specific outbound traffic
- Block all inbound by default and block some specific outbound traffic
- Inbound FQDN rules aren't natively supported. However, it's possible to use Sample_hydration_scripts to generate inbound IP entries for the rules.  

Here are a few general guidelines for configuring outbound rules. https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-firewall/checklist-creating-outbound-firewall-rules

> [!CAUTION]
> The default configuration of *Blocked for Outbound* rules can be considered for certain highly secure environments. However, the *Inbound* rule configuration should never be changed in a way that allows traffic by default.

In high security environments, an inventory of all enterprise-spanning apps must be taken and logged by the administrator or administrators. Records must include whether an app used requires network connectivity. Administrators will need to create new rules specific to each app that needs network connectivity and push those rules centrally, via group policy (GP), Mobile Device Management (MDM), or both (for hybrid or co-management environments). For example, Edge https://learn.microsoft.com/en-us/deployedge/microsoft-edge-security-endpoints

## Manage dynamic keywords with Windows PowerShell

<!--
All dynamic keyword addresses must have a unique GUID identifier to represent them.

A firewall rule:
- can use dynamic keywords instead of explicitly defining IP addresses for its conditions. A firewall rule 
- can use both dynamic keywords and statically defined remote address range

A dynamic keyword object can be re-used across multiple firewall rules.

If a firewall rule doesn't have any configured remote addresses (that is, configured with only AutoResolve objects which have not yet been resolved), then the rule won't be enforced. If a rule uses multiple dynamic keyword addresses, then the rule will be enforced for all addresses that are currently resolved, even if there are other objects that are not yet resolved. When a dynamic keyword address is updated, all associated rule objects will have their remote addresses updated as well.

The operating system (OS) itself doesn't enforce any dependencies between a rule and a dynamic keyword address. This means that either object can be created first—the rule can reference dynamic keyword address IDs that don't yet exist (in which case, the rule won't be enforced). Furthermore, you can delete a dynamic keyword address even if it's in use by a firewall rule.
-->

### Allow Outbound

Here's an example script to allow a site from PowerShell. Replace the `$fqdn` variable value with the FQDN you wish to block (line #1):

```PowerShell
$fqdn = 'contoso.com'
$id = '{' + (new-guid).ToString() + '}'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
```

### Display Auto resolve rules and associated resolved IP addresses

> [!NOTE]
> IP addresses will not populate until DNS query is observed.

`Get-NetFirewallDynamicKeywordAddress -AllAutoResolve`

### Allow Outbound

Here's an example script to allow a site from PowerShell. Replace the `$fqdn` variable value with the FQDN you wish to block (line #1):

```PowerShell
$fqdn = 'google.com'
$id = '{' + (new-guid).ToString() + '}'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
```

### Block Outbound

Here's an example script to block a site from PowerShell (replace somedomain.com below with the domain you wish to block):

```PowerShell
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'somedomain.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "block $fqdn" -Action Block -Direction Outbound -RemoteDynamicKeywordAddresses $id
```

### Hydrate FQDN rules

The following sample scripts read the current Windows Firewall configuration, extract FQDN-based rules, and perform DNS resolution on each domain. The result is that the IP addresses for those rules get populated.

```PowerShell
Get-NetFirewallDynamicKeywordAddress -AllAutoResolve |`
ForEach-Object {
  if(!$_.Keyword.Contains("*")) { 
    Write-Host "Getting" $_.Keyword
    resolve-dnsname -Name $_.Keyword -DNSOnly | out-null
  }
}
```

A similar script can be used to perform DNS resolution using `nslookup.exe`:

```PowerShell
Get-NetFirewallDynamicKeywordAddress -AllAutoResolve |`
ForEach-Object {
  if(!$_.Keyword.Contains("*")) {
    Write-Host "Getting" $_.Keyword
    nslookup $_.Keyword
  }
}
```

If using `nslookup.exe`, you must create an outbound firewall rule when using the *block all outbound* posture. Here's the command to create the outbound rule for `nslookup.exe`:

```PowerShell
$appName = 'nslookup'
$appPath = 'C:\Windows\System32\nslookup.exe'
New-NetFirewallRule -DisplayName "allow $appName" -Program $appPath -Action Allow -Direction Outbound -Protocol UDP -RemotePort 53
```

### Block all outbound and allow some FQDNs

This is a sample list of application FQDN evaluation. These were observed when inspecting traffic on the first launch of Microsoft Edge.

> [!IMPORTANT]
> This is not a complete list nor a recommendation. It's an example of how an application should be evaluated to ensure proper connectivity and function.

To learn more about Microsoft Edge requirements for Internet connectivity, see [allowlist for Microsoft Edge endpoints][EDGE-4].

```PowerShell
$domains = @(
    '*.microsoft.com',
    '*.msftconnecttest.com',
    'assets.msn.com',
    'client.wns.windows.com',
    'config.edge.skype.com',
    'ctldl.windowsupdate.com',
    'dns.msftncsi.com',
    'login.live.com',
    'ntp.msn.com'
)

foreach ($domain in $domains) {
    $id = '{' + (New-Guid).ToString() + '}'
    New-NetFirewallDynamicKeywordAddress -Id $id -Keyword $domain -AutoResolve $true
    New-NetFirewallRule -DisplayName "allow $domain" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
}
```

For more information about the PowerShell cmdlets used to manage dynamic keywords, see:

- [Get-NetFirewallDynamicKeywordAddress][PS-1]
- [New-NetFirewallDynamicKeywordAddress][PS-2]
- [Remove-NetFirewallDynamicKeywordAddress][PS-3]
- [Update-NetFirewallDynamicKeywordAddress][PS-4]

For information about the API structure, see [Firewall dynamic keywords][WIN-1].

<!--links-->

[CSP-1]: /windows/client-management/mdm/firewall-csp

[EDGE-1]: /deployedge/microsoft-edge-policies#control-the-mode-of-dns-over-https
[EDGE-2]: /deployedge/microsoft-edge-policies#builtindnsclientenabled
[EDGE-3]: /deployedge/configure-microsoft-edge
[EDGE-4]: /deployedge/microsoft-edge-security-endpoints

[HTTP-1]: https://chromeenterprise.google/policies?policy=DnsOverHttpsMode
[HTTP-2]: https://support.mozilla.org/kb/firefox-dns-over-https

[M365-1]: /microsoft-365/security/defender-endpoint/enable-network-protection?view=o365-worldwide#check-if-network-protection-is-enabled

[MEM-1]: /mem/intune/protect/endpoint-security-firewall-policy#add-reusable-settings-groups-to-profiles-for-firewall-rules

[PS-1]: /powershell/module/netsecurity/get-netfirewalldynamickeywordaddress
[PS-2]: /powershell/module/netsecurity/new-netfirewalldynamickeywordaddress
[PS-3]: /powershell/module/netsecurity/remove-netfirewalldynamickeywordaddress
[PS-4]: /powershell/module/netsecurity/update-netfirewalldynamickeywordaddress

[WIN-1]: /windows/win32/ics/firewall-dynamic-keywords
