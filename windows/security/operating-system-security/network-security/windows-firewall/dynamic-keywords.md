---
title: Windows Firewall dynamic keywords
description: Learn about Windows Firewall dynamic keywords and how to configure it using Windows PowerShell.
ms.topic: how-to
ms.date: 09/06/2024
---

# Windows Firewall dynamic keywords

> [!IMPORTANT]
>This article describes features or settings that are in preview. The content is subject to change and may have dependencies on other features or services in preview.

Windows Firewall includes a functionality called *dynamic keywords*, which simplifies the configuration and management of Windows Firewall.

With dynamic keywords, you can define a set of IP address ranges, fully qualified domain names (FQDNs), and **autoresolution** options, to which one or more Firewall rules can refer.

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
  - FQDN rules can affect performance on the endpoint, caused by DNS latency and other factors
  - FQDN isn't a secure DNS service. The FQDN resolution uses the default DNS configuration of the endpoint
- An FQDN rule requires a DNS query to happen for that FQDN to be resolved to an IP address. Traffic to IP addresses must generate a DNS query for FQDN rules
  - Limitations include: websites accessed via proxy, secure DNS services, certain VPN tunnel configurations, cached IPs on the endpoint
- While Partially Qualified Domain Names (PQDNs) are allowed, FQDNs are preferred. Wildcards `*` are supported for hosts, for example `*.contoso.com`

Two examples of FQDN rules are:

- Block all outbound and inbound by default and allow specific outbound traffic
- Block all inbound by default and block some specific outbound traffic

> [!NOTE]
> Inbound FQDN rules aren't natively supported. However, it's possible to use *pre-hydration* scripts to generate inbound IP entries for the rules.

> [!CAUTION]
> The default configuration of *Blocked for Outbound* rules can be considered for certain highly secure environments. However, the *Inbound* rule configuration should never be changed in a way that allows traffic by default.

In high security environments, an inventory of all apps should be maintained. Records should include whether an app requires network connectivity. Administrators should create new rules specific to each app that needs network connectivity, and push those rules centrally, using a device management solution.

### Functions and known limitations

The Windows Firewall FQDN feature uses the Network Protection external callout driver, to inspect DNS responses where the DNS query matches FQDN rules. Some important functions and limitations of the feature are:

- The Network Protection component doesn't periodically execute DNS queries. It requires an application to execute a DNS query
- Windows Firewall flushes all stored resolved IP addresses on device restart
- Network protection doesn't synchronously inspect the DNS response, as it doesn't hold the UDP packet during inspection. The result is a potential condition where an application, after receiving the DNS response, attempts to connect, but gets blocked if it's faster than the firewall rule update
  - Generally, applications have retry logic for an initial failed connection and as a result the issue is transparent to the end user
  - On occasion a component might not have retry logic on initial connection fail. Which is solved in two ways:
    - The user can hit *refresh* in the application they're using, and it should connect successfully
    - Administrators can use the *prehydration* scripts tactfully, where this condition is occurring in their environment

### FQDN Feature requirements

The following are requirements for the FQDN feature:

- Microsoft Defender Antivirus must be turned on and running platform version `4.18.2209.7` or later.
  - To verify, open [Windows Security](windowsdefender://) and select **Settings** > **About**
- Network Protection must be in *block* or *audit* mode. For more information, see [Check if network protection is enabled][M365-1].
- DNS over HTTPS (DoH) must be disabled. To configure your preferred browser, you can use the following settings:
  - [Microsoft Edge][EDGE-1]
  - [Chrome][HTTP-1]
  - [Firefox][HTTP-2]
- The device's default DNS resolution settings apply. This feature doesn't provide DNS security or functionality changes
    > [!TIP]
    > You can also download the ADMX file from there, follow the directions, and configure it via gpedit.msc for local testing.

## Manage dynamic keywords with Windows PowerShell

This section provides some examples how to manage dynamic keywords using Windows PowerShell. A few important things to consider when using dynamic keywords are:

- All dynamic keyword objects must have a unique identifier (GUID) to represent them
- A firewall rule can use dynamic keywords instead of explicitly defining IP addresses for its conditions
- A firewall rule can use both dynamic keywords and statically defined address ranges
- A dynamic keyword object can be reused across multiple firewall rules
- If a firewall rule doesn't have any configured remote addresses, then the rule isn't enforced. For example, if a rule is configured with only `AutoResolve` objects that aren't yet resolved
- If a rule uses multiple dynamic keywords, then the rule is enforced for all addresses that are *currently* resolved. The rule is enforced even if there are unresolved objects. When a dynamic keyword address is updated, all associated rule objects have their remote addresses updated
- Windows doesn't enforce any dependencies between a rule and a dynamic keyword address, and either object can be created first. A rule can reference dynamic keyword IDs that don't yet exist, in which case the rule isn't enforced
- You can delete a dynamic keyword address, even if it's in use by a firewall rule

### Allow Outbound

Here's an example script to allow an FQDN from PowerShell. Replace the `$fqdn` variable value with the FQDN you wish to block (line #1):

```PowerShell
$fqdn = 'contoso.com'
$id = '{' + (new-guid).ToString() + '}'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
```

Dynamic keyword addresses can be created with the `AutoResolve` parameter set to `$true` or `$false`. If `AutoResolve` is set to `$true`, then Windows attempts to resolve the keyword to an IP address.

### Block Outbound

Here's an example script to block an FQDN from PowerShell. Replace the `$fqdn` variable value with the FQDN you wish to block (line #1):

```PowerShell
$fqdn = 'contoso.com'
$id = '{' + (new-guid).ToString() + '}'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "block $fqdn" -Action Block -Direction Outbound -RemoteDynamicKeywordAddresses $id
```

### Display Auto resolve rules and associated resolved IP addresses

This example shows how to display all dynamic keyword addresses that have the `AutoResolve` parameter set to `$true` and the associated resolved IP addresses.

```PowerShell
Get-NetFirewallDynamicKeywordAddress -AllAutoResolve
```

> [!NOTE]
> IP addresses will not populate until DNS query is observed.

### Hydrate FQDN rules

The following sample scripts read the current Windows Firewall configuration, extract FQDN-based rules, and perform DNS resolution on each domain. The result is that the IP addresses for those rules get "prehydrated."

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

In the next example, a list of applications is parsed for FQDN evaluation. The FQDNs listed in the scripts were observed when inspecting traffic on the first launch of Microsoft Edge.

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

[M365-1]: /microsoft-365/security/defender-endpoint/enable-network-protection#check-if-network-protection-is-enabled

[MEM-1]: /mem/intune/protect/endpoint-security-firewall-policy#add-reusable-settings-groups-to-profiles-for-firewall-rules

[PS-1]: /powershell/module/netsecurity/get-netfirewalldynamickeywordaddress
[PS-2]: /powershell/module/netsecurity/new-netfirewalldynamickeywordaddress
[PS-3]: /powershell/module/netsecurity/remove-netfirewalldynamickeywordaddress
[PS-4]: /powershell/module/netsecurity/update-netfirewalldynamickeywordaddress

[WIN-1]: /windows/win32/ics/firewall-dynamic-keywords
