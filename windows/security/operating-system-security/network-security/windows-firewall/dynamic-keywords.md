---
title: Windows Firewall dynamic keywords
description: Learn about Windows Firewall dynamic keywords and how to configure it.
ms.topic: how-to
ms.date: 01/12/2024
---

# Windows Firewall dynamic keywords

Windows Firewall includes a functionality called *dynamic keywords*, which simplifies the configuration and management of Windows Firewall.

You can use dynamic keywords to create a set of IP addresses, or fully qualified domain names (FQDNs), to which one or more Firewall rules can refer.

## Configure dynamic keywords

To configure dynamic keywords, you can use:

- [Firewall CSP](/windows/client-management/mdm/firewall-csp)
- Microsoft Intune, through a simplified experience called [reusable settings groups](/mem/intune/protect/reusable-settings-groups)
- Windows PowerShell

### Microsoft Intune reusable settings groups

Microsoft Intune offers a functionality called *reusable settings groups*, which can be used to configure Windows Firewall dynamic keywords.
Reusable groups simplify the configuration and management of Windows Firewall rules, offering controls to configure and reuse settings across rules.

Reusable settings groups contain properties that can be reused across Firewall rules, like remote IP address ranges, Fully Qualified Domain Name (FQDN) definitions, and auto-resolution.
When a device is added or removed, each policy does not need to touched individually, instead the reusable group is be updated.

For more information, see [Use reusable groups of settings with Intune policies](/intune/protect/endpoint-security-firewall-policy#add-reusable-settings-groups-to-profiles-for-firewall-rules).

## Fully Qualified Domain Names (FQDN)

Dynamic keywords can be set up with IP addresses or FQDNs. FQDNs are auto-resolved by the client.

Here are important things to consider when using FQDNs in dynamic keywords:

- FQDN support is for reducing the overhead of managing IP rules where IP addresses are dynamic and change frequently
- FQDNs are not a replacement for IP addresses in all scenarios. IP addresses should be used when possible, for security and performance reasons
  - FQDN rules have a performance impact on the endpoint
  - FQDN is not a secure DNS service. The FQDN resolution uses the default DNS configuration of the endpoint
  - DNS latency can impact endpoint performance
- An FQDN rule requires a DNS query to happen for that FQDN to be resolved to an IP address. Traffic to IP addresses must generate a DNS query for FQDN rules
  - Limitations may include: websites accessed via proxy, secure DNS services, certain VPN tunnel configurations, cached IPs on the endpoint
- Fully Qualified Domain Names (FQDNs) are the best option, but Partially Qualified Domain Names (PQDNs) are allowed. Wildcards `*` are supported for hosts, for example `*.contoso.com`

Further information on the API structure can be found in https://learn.microsoft.com/windows/win32/ics/firewall-dynamic-keywords.

### Functions and known limitations

The Windows Firewall FQDN feature uses the Network Protection external callout driver, to inspect DNS responses where the DNS query matches FQDN rules.

- The Network Protection component doesn't periodically execute DNS queries. It requires an application to execute a DNS query
- Windows Firewall flushes all stored resolved IP addresses on device restart
- Network protection doesn't synchronously inspect the DNS response, meaning it currently doesn't hold the UDP packet during inspection. It is an asynchronous function
  - This can create a condition where an application, after receiving the DNS response, may attempt to connect to an IP address but gets initially blocked if it is faster than the FW rule update.
    - This is in the order of milliseconds
    - Generally, applications have retry logic for an initial failed connection and as a result the issue is transparent to the end user
    - On occasion a component may not have retry logic on initial connection fail. Which is generally solved in two ways
      - The end user can hit "refresh" in the application they are using, and it should connect successfully at that time
      - Customers can use the pre-hydration scripts tactfully where this condition is occurring in their environment
- MDE keywords in the FQDN feature are case sensitive.
- If local policy merge is disabled, then all rules must be recreated via Intune. For more information, see [Local policy merge and application rules](rules.md#local-policy-merge-and-application-rules).

### Order of operations

1. Firewall publishes the list of FQDNs to Network Protection
1. Network Protection listens for DNS queries where FQDNs match the definition from Windows Firewall
1. Network Protection listens for the DNS response. Once UDP packets are received, Network Protection parses the packets and sends the information to Windows Firewall
1. Windows firewall updates the corresponding firewall rules with the resolved IP(s)

### Key Configuration Points for FQDN Feature

- Microsoft Defender Antivirus must be turned on and running platform version 4.18.2209.7 or later.
  - To verify, open [Windows Security](windowsdefender://) and select **Settings** > **About**
- Network Protection must be in *block* or *audit* mode. For more information, see [Check if network protection is enabled](/microsoft-365/security/defender-endpoint/enable-network-protection?view=o365-worldwide#check-if-network-protection-is-enabled).
- DNS over HTTPS (DoH) must be disabled. To configure your preferred browser, you can use the following settings:
  - [Edge](/deployedge/microsoft-edge-policies#control-the-mode-of-dns-over-https)
  - [Chrome](https://chromeenterprise.google/policies?policy=DnsOverHttpsMode)
  - [Firefox](https://support.mozilla.org/kb/firefox-dns-over-https)
- The device's default DNS resolution settings apply. This feature does not provide any additional DNS security or functionality changes
  - For Edge version 109 and later, configure the browser to use the default system DNS through [this policy](/deployedge/microsoft-edge-policies#builtindnsclientenabled). For more information, see [Configure Microsoft Edge policy settings on Windows devices](/deployedge/configure-microsoft-edge)
    > [!TIP]
    > You can also download the ADMX file from there, follow the directions, and configure it via gpedit.msc for local testing.

### Example configurations for the two primary postures for FQDN

- Block all outbound and inbound by default and allow specific outbound traffic
- Block all inbound by default and block some specific outbound traffic
- Inbound FQDN rules are not natively supported. However, it is possible to use Sample_hydration_scripts to generate inbound IP entries for the rules.  

Here are a few general guidelines for configuring outbound rules. https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-firewall/checklist-creating-outbound-firewall-rules

> [!CAUTION]
> The default configuration of *Blocked for Outbound* rules can be considered for certain highly secure environments. However, the *Inbound* rule configuration should never be changed in a way that allows traffic by default.

In high security environments, an inventory of all enterprise-spanning apps must be taken and logged by the administrator or administrators. Records must include whether an app used requires network connectivity. Administrators will need to create new rules specific to each app that needs network connectivity and push those rules centrally, via group policy (GP), Mobile Device Management (MDM), or both (for hybrid or co-management environments). E.g., Edge https://learn.microsoft.com/en-us/deployedge/microsoft-edge-security-endpoints

## Manage dynamic keywords with Windows PowerShell

The following hydration scripts read the current Firewall configuration, extract FQDN based rules and perform DNS resolution on each domain, so that IP addresses for those rules get populated.

### Hydrate FQDN rule IPs using Resolve-DNSName

```PowerShell
Get-NetFirewallDynamicKeywordAddress -AllAutoResolve |`
ForEach-Object {
  if(!$_.Keyword.Contains("*")) { 
    Write-Host "Getting" $_.Keyword
    resolve-dnsname -Name $_.Keyword -DNSOnly | out-null
  }
}
```

Silent:

```PowerShell
Get-NetFirewallDynamicKeywordAddress -AllAutoResolve |`
ForEach-Object {
  if(!$_.Keyword.Contains("*")) {
    resolve-dnsname -Name $_.Keyword -DNSOnly | out-null
  }
}
```

Hydrate FQDN rule IPs using NSLookup

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

### Additional PowerShell and Firewall Commands

#### Enable Network Protection

Block Mode:

`Set-MpPreference -EnableNetworkProtection Enable`

Audit Mode:

`Set-MpPreference -EnableNetworkProtection AuditMode`

#### Display Auto resolve rules and associated resolved IP addresses

> [!NOTE]
> IP addresses will not populate until DNS query is observed.

`Get-NetFirewallDynamicKeywordAddress -AllAutoResolve`

### Block Outbound

Here is an example script to block a site from PowerShell (replace somedomain.com below with the domain you wish to block):

```PowerShell
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'somedomain.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "block $fqdn" -Action Block -Direction Outbound -RemoteDynamicKeywordAddresses $id
```

### Allow Outbound

Here is an example script to allow a site from PowerShell. Replace the `$fqdn` variable value with the FQDN you wish to block (line #1):

```PowerShell
$fqdn = 'google.com'
$id = '{' + (new-guid).ToString() + '}'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
```

## Example rules for block all outbound and allow some FQDNs

### Chrome Config

This is a sample list of application FQDN evaluation. These were observed when inspecting traffic on Chrome first launch. This is not a complete list and not a recommendation. It is an example of how an application should be evaluated to ensure proper connectivity and function, as https://microsoft.sharepoint.com/teams/windowsdefender/Shared%20Documents/WiAD%20PM/Boost%20-%20Data%20and%20Web%20Protection/Firewall/General%20FQDN%20Firewall%20Rule%20Considerations.docx#_Configuring_block_all.

```PowerShell
$id = '{' + (new-guid).ToString() + '}'
$fqdn = '*.google.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'http://www.google.com/'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'google.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = '*.googleapis.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = '*.googleusercontent.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'http://www.gstatic.com/'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'ipv6.msftconnecttest.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'client.wns.windows.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'dns.msftncsi.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = '*.microsoft.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'http://www.microsoft.com/'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'microsoft.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = '*.gfx.ms.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
```

### Edge Rules

This is a sample list of application FQDN evaluation. These were observed when inspecting traffic on Edge first launch.

> [!NOTE]
> This is not a complete list and not a recommendation. It is an example of how an application should be evaluated to ensure proper connectivity and function, as described above.

[Edge](deployedge/microsoft-edge-security-endpoints)

```PowerShell
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'ctldl.windowsupdate.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'config.edge.skype.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'ntp.msn.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'edge.microsoft.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = '*.events.data.microsoft.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'login.live.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = '*.smartscreen.microsoft.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = '*.msftconnecttest.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'assets.msn.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'client.wns.windows.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'dns.msftncsi.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = '*.microsoft.com'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
 
$id = '{' + (new-guid).ToString() + '}'
$fqdn = 'http://www.microsoft.com/'
New-NetFirewallDynamicKeywordAddress -id $id -Keyword $fqdn -AutoResolve $true
New-NetFirewallRule -DisplayName "allow $fqdn" -Action Allow -Direction Outbound -RemoteDynamicKeywordAddresses $id
```
