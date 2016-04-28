---
title: Windows Firewall with Advanced Security Administration with Windows PowerShell (Windows 10)
description: Windows Firewall with Advanced Security Administration with Windows PowerShell
ms.assetid: 3e1e53af-015e-427d-a027-c2e8ceee799d
author: brianlic-msft
---

# Windows Firewall with Advanced Security Administration with Windows PowerShell


The Windows Firewall with Advanced Security Administration with Windows PowerShell Guide provides essential scriptlets for automating Windows Firewall with Advanced Security management in Windows Server 2012. It is designed for IT pros, system administrators, IT managers, and others who use and need to automate Windows Firewall with Advanced Security management in Windows.

In Windows Server 2012 and Windows 8, administrators can use Windows PowerShell to manage their firewall and IPsec deployments. This object-oriented scripting environment will make it easier for administrators to manage policies and monitor network conditions than was possible in Netsh. Windows PowerShell allows network settings to be self-discoverable through the syntax and parameters in each of the cmdlets. This guide demonstrates how common tasks were performed in Netsh and how you can use Windows PowerShell to accomplish them.

**Important**  
The netsh commands for Windows Firewall with Advanced Security have not changed since the previous operating system version. The netsh commands for Windows Firewall with Advanced Security in Windows Server 2012 are identical to the commands that are provided in Windows Server 2008 R2.

 

In future versions of Windows, Microsoft might remove the netsh functionality for Windows Firewall with Advanced Security. Microsoft recommends that you transition to Windows PowerShell if you currently use netsh to configure and manage Windows Firewall with Advanced Security.

Windows PowerShell and netsh command references are at the following locations.

-   [Netsh Commands for Windows Firewall with Advanced Security](http://technet.microsoft.com/library/cc771920)

## Scope


This guide does not teach you the fundamentals of Windows Firewall with Advanced Security, which can be found in [Windows Firewall with Advanced Security Overview](../p_server_archive/windows-firewall-with-advanced-security-overview-win8.md). It does not teach the fundamentals of Windows PowerShell, and it assumes that you are familiar with the Windows PowerShell language and the basic concepts of Windows PowerShell. For more information about Windows PowerShell concepts and usage, see the reference topics in the [Additional resources](#bkmk-additionalresources) section of this guide.

## Audience and user requirements


This guide is intended for IT pros, system administrators, and IT managers, and it assumes that you are familiar with Windows Firewall with Advanced Security, the Windows PowerShell language, and the basic concepts of Windows PowerShell.

## System requirements


To run the scripts and scriptlets in this guide, install and configure your system as follows:

-   Windows Server 2012

-   Windows PowerShell 3.0 (included in Windows Server 2012)

-   Windows NetSecurity Module for Windows PowerShell (included in Windows Server 2012)

-   Windows PowerShell ISE (optional feature in Windows PowerShell 3.0, which is installed by using Server Manager)

**Note**  
In Windows PowerShell 3.0, modules are imported automatically when you get or use any cmdlet in the module. You can still use the **Import-Module** cmdlet to import a module.

Use **Import-Module** if you are using Windows PowerShell 2.0, or if you need to use a feature of the module before you use any of its cmdlets. For more information, see [Import-Module](http://go.microsoft.com/fwlink/p/?linkid=141553).

Use **Import-PSSnapIn** to use cmdlets in a Windows PowerShell snap-in, regardless of the version of Windows PowerShell that you are running.

 

## In this guide


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[Set profile global defaults](#bkmk-profileglobaldefaults)</p></td>
<td><p>Enable and control firewall behavior</p></td>
</tr>
<tr class="even">
<td><p>[Deploy basic firewall rules](#bkmk-deploying)</p></td>
<td><p>How to create, modify, and delete firewall rules</p></td>
</tr>
<tr class="odd">
<td><p>[Manage Remotely](#bkmk-remote)</p></td>
<td><p>Remote management by using <code>-CimSession</code></p></td>
</tr>
<tr class="even">
<td><p>[Deploy basic IPsec rule settings](#bkmk-deployingipsec)</p></td>
<td><p>IPsec rules and associated parameters</p></td>
</tr>
<tr class="odd">
<td><p>[Deploy secure firewall rules with IPsec](#bkmk-deploysecurerules)</p></td>
<td><p>Domain and server isolation</p></td>
</tr>
<tr class="even">
<td><p>[Additional resources](#bkmk-additionalresources)</p></td>
<td><p>More information about Windows PowerShell</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-profileglobaldefaults"></a>Set profile global defaults


Global defaults set the system behavior in a per profile basis. Windows Firewall with Advanced Security supports Domain, Private, and Public profiles.

### Enable Windows Firewall

Windows Firewall drops traffic that does not correspond to allowed unsolicited traffic, or traffic that is sent in response to a request by the computer. If you find that the rules you create are not being enforced, you may need to enable Windows Firewall. Here is how to do this on a local domain computer:

**Netsh**

``` syntax
netsh advfirewall set allprofiles state on
```

Windows PowerShell

The following Windows PowerShell cmdlet or cmdlets perform the same function as the preceding procedure. Enter each cmdlet on a single line, even though they may appear word-wrapped across several lines here because of formatting constraints.

``` syntax
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True
```

### Control firewall behavior

The global default settings can be defined through the command-line interface. These modifications are also available through the Windows Firewall with Advanced Security MMC snap-in.

The following scriptlets set the default inbound and outbound actions, specifies protected network connections, and allows notifications to be displayed to the user when a program is blocked from receiving inbound connections. It allows unicast response to multicast or broadcast network traffic, and it specifies logging settings for troubleshooting.

**Netsh**

``` syntax
netsh advfirewall set allprofiles firewallpolicy blockinbound,allowoutbound 
netsh advfirewall set allprofiles settings inboundusernotification enable
netsh advfirewall set allprofiles settings unicastresponsetomulticast enable
netsh advfirewall set allprofiles logging filename %SystemRoot%\System32\LogFiles\Firewall\pfirewall.log
```

Windows PowerShell

``` syntax
Set-NetFirewallProfile -DefaultInboundAction Block -DefaultOutboundAction Allow –NotifyOnListen True -AllowUnicastResponseToMulticast True –LogFileName %SystemRoot%\System32\LogFiles\Firewall\pfirewall.log

```

## <a href="" id="bkmk-deploying"></a>Deploy basic firewall rules


This section provides scriptlet examples for creating, modifying, and deleting firewall rules.

### Create firewall rules

Adding a firewall rule in Windows PowerShell looks a lot like it did in Netsh, but the parameters and values are specified differently.

Here is an example of how to allow the Telnet application to listen on the network. This firewall rule is scoped to the local subnet by using a keyword instead of an IP address. Just like in Netsh, the rule is created on the local computer, and it becomes effective immediately.

**Netsh**

``` syntax
netsh advfirewall firewall add rule name="Allow Inbound Telnet" dir=in program= %SystemRoot%\System32\tlntsvr.exe remoteip=localsubnet action=allow
```

Windows PowerShell

``` syntax
New-NetFirewallRule -DisplayName “Allow Inbound Telnet” -Direction Inbound -Program %SystemRoot%\System32\tlntsvr.exe -RemoteAddress LocalSubnet -Action Allow
```

The following scriptlet shows how to add a basic firewall rule that blocks outbound traffic from a specific application and local port to a Group Policy Object (GPO) in Active Directory. In Windows PowerShell, the policy store is specified as a parameter within the **New-NetFirewall** cmdlet. In Netsh, you must first specify the GPO that the commands in a Netsh session should modify. The commands you enter are run against the contents of the GPO, and this remains in effect until the Netsh session is ended or until another set store command is executed.

Here, **domain.contoso.com** is the name of your Active Directory Domain Services (AD DS), and **gpo\_name** is the name of the GPO that you want to modify. Quotation marks are required if there are any spaces in the GPO name.

**Netsh**

``` syntax
netsh advfirewall set store gpo=domain.contoso.com\gpo_name
netsh advfirewall firewall add rule name="Block Outbound Telnet" dir=out program=%SystemRoot%\System32\telnet.exe protocol=tcp localport=23 action=block 
```

Windows PowerShell

``` syntax
New-NetFirewallRule -DisplayName “Block Outbound Telnet” -Direction Outbound -Program %SystemRoot%\System32\tlntsvr.exe –Protocol TCP –LocalPort 23 -Action Block –PolicyStore domain.contoso.com\gpo_name 
```

### GPO Caching

To reduce the burden on busy domain controllers, Windows PowerShell allows you to load a GPO to your local session, make all your changes in that session, and then save it back at all once.

The following performs the same actions as the previous example (by adding a Telnet rule to a GPO), but we do so leveraging GPO caching in PowerShell. Changing the GPO by loading it onto your local session and using the *-GPOSession* parameter are not supported in Netsh

Windows PowerShell

``` syntax
$gpo = Open-NetGPO –PolicyStore domain.contoso.com\gpo_name
New-NetFirewallRule -DisplayName “Block Outbound Telnet” -Direction Outbound -Program %SystemRoot%\System32\telnet.exe –Protocol TCP –LocalPort 23 -Action Block –GPOSession $gpo
Save-NetGPO –GPOSession $gpo 
```

Note that this does not batch your individual changes, it loads and saves the entire GPO at once. So if any other changes are made by other administrators, or in a different Windows PowerShell window, saving the GPO overwrites those changes.

### Modify an existing firewall rule

When a rule is created, Netsh and Windows PowerShell allow the administrator to change rule properties and influence, but the rule maintains its unique identifier (in Windows PowerShell this is specified with the *-Name* parameter).

For example, you could have a rule **Allow Web 80** that enables TCP port 80 for inbound unsolicited traffic. You can change the rule to match a different remote IP address of a Web server whose traffic will be allowed by specifying the human-readable, localized name of the rule.

**Netsh**

``` syntax
netsh advfirewall firewall set rule name="Allow Web 80" new remoteip=192.168.0.2
```

Windows PowerShell

``` syntax
Set-NetFirewallRule –DisplayName “Allow Web 80” -RemoteAddress 192.168.0.2
```

Netsh requires you to provide the name of the rule for it to be changed and we do not have an alternate way of getting the firewall rule. In Windows PowerShell, you can query for the rule using its known properties.

When you run `Get-NetFirewallRule`, you may notice that common conditions like addresses and ports do not appear. These conditions are represented in separate objects called Filters. As shown before, you can set all the conditions in New-NetFirewallRule and Set-NetFirewallRule. If you want to query for firewall rules based on these fields (ports, addresses, security, interfaces, services), you will need to get the filter objects themselves.

You can change the remote endpoint of the **Allow Web 80** rule (as done previously) using filter objects. Using Windows PowerShell you query by port using the port filter, then assuming additional rules exist affecting the local port, you build with further queries until your desired rule is retrieved.

In the following example, we assume the query returns a single firewall rule, which is then piped to the `Set-NetFirewallRule` cmdlet utilizing Windows PowerShell’s ability to pipeline inputs.

Windows PowerShell

``` syntax
Get-NetFirewallPortFilter | ?{$_.LocalPort -eq 80} | Get-NetFirewallRule | ?{ $_.Direction –eq “Inbound” -and $_.Action –eq “Allow”} | Set-NetFirewallRule -RemoteAddress 192.168.0.2
```

You can also query for rules using the wildcard character. The following example returns an array of firewall rules associated with a particular program. The elements of the array can be modified in subsequent `Set-NetFirewallRule` cmdlets.

Windows PowerShell

``` syntax
Get-NetFirewallApplicationFilter -Program "*svchost*" | Get-NetFirewallRule
```

Multiple rules in a group can be simultaneously modified when the associated group name is specified in a Set command. You can add firewall rules to specified management groups in order to manage multiple rules that share the same influences.

In the following example, we add both inbound and outbound Telnet firewall rules to the group **Telnet Management**. In Windows PowerShell, group membership is specified when the rules are first created so we re-create the previous example rules. Adding rules to a custom rule group is not possible in Netsh.

Windows PowerShell

``` syntax
New-NetFirewallRule -DisplayName “Allow Inbound Telnet” -Direction Inbound -Program %SystemRoot%\System32\tlntsvr.exe -RemoteAddress LocalSubnet -Action Allow –Group “Telnet Management”
New-NetFirewallRule -DisplayName “Block Outbound Telnet” -Direction Inbound -Program %SystemRoot%\System32\tlntsvr.exe -RemoteAddress LocalSubnet -Action Allow –Group “Telnet Management”
```

If the group is not specified at rule creation time, the rule can be added to the rule group using dot notation in Windows PowerShell. You cannot specify the group using `Set-NetFirewallRule` since the command allows querying by rule group.

Windows PowerShell

``` syntax
$rule = Get-NetFirewallRule -DisplayName “Allow Inbound Telnet” 
$rule.Group = “Telnet Management”
$rule | Set-NetFirewallRule
```

Using the `Set` command, if the rule group name is specified, the group membership is not modified but rather all rules of the group receive the same modifications indicated by the given parameters.

The following scriptlet enables all rules in a predefined group containing remote management influencing firewall rules.

**Netsh**

``` syntax
netsh advfirewall firewall set rule group="windows firewall remote management" new enable=yes
```

Windows PowerShell

``` syntax
Set-NetFirewallRule -DisplayGroup “Windows Firewall Remote Management” –Enabled True
```

There is also a separate `Enable-NetFirewallRule` cmdlet for enabling rules by group or by other properties of the rule.

Windows PowerShell

``` syntax
Enable-NetFirewallRule -DisplayGroup “Windows Firewall Remote Management” -Verbose
```

### Delete a firewall rule

Rule objects can be disabled so that they are no longer active. In Windows PowerShell, the **Disable-NetFirewallRule** cmdlet will leave the rule on the system, but put it in a disabled state so the rule no longer is applied and impacts traffic. A disabled firewall rule can be re-enabled by **Enable-NetFirewallRule**. This is different from the **Remove-NetFirewallRule**, which permanently removes the rule definition from the system.

The following cmdlet deletes the specified existing firewall rule from the local policy store.

**Netsh**

``` syntax
netsh advfirewall firewall delete rule name=“Allow Web 80”
```

Windows PowerShell

``` syntax
Remove-NetFirewallRule –DisplayName “Allow Web 80”
```

Like with other cmdlets, you can also query for rules to be removed. Here, all blocking firewall rules are deleted from the system.

Windows PowerShell

``` syntax
Remove-NetFirewallRule –Action Block
```

Note that it may be safer to query the rules with the **Get** command and save it in a variable, observe the rules to be affected, then pipe them to the **Remove** command, just as we did for the **Set** commands. The following example shows how the administrator can view all the blocking firewall rules, and then delete the first four rules.

Windows PowerShell

``` syntax
$x = Get-NetFirewallRule –Action Block
$x
$x[0-3] | Remove-NetFirewallRule
```

## <a href="" id="bkmk-remote"></a>Manage remotely


Remote management using WinRM is enabled by default on Windows Server 2012. The cmdlets that support the *CimSession* parameter use WinRM and can be managed remotely by default. This is important because the default and recommended installation mode for Windows Server 2012 is Server Core which does not include a graphical user interface.

The following example returns all firewall rules of the persistent store on a computer named **RemoteComputer**.

Windows PowerShell

``` syntax
Get-NetFirewallRule –CimSession RemoteComputer
```

We can perform any modifications or view rules on remote computers by simply using the *–CimSession* parameter. Here we remove a specific firewall rule from a remote computer.

Windows PowerShell

``` syntax
$RemoteSession = New-CimSession –ComputerName RemoteComputer
Remove-NetFirewallRule –DisplayName “AllowWeb80” –CimSession $RemoteSession -Confirm
```

## <a href="" id="bkmk-deployingipsec"></a>Deploy basic IPsec rule settings


An Internet Protocol security (IPsec) policy consists of rules that determine IPsec behavior. IPsec supports network-level peer authentication, data origin authentication, data integrity, data confidentiality (encryption), and replay protection. For more information about IPsec, see [Windows Firewall with Advanced Security Learning Roadmap](http://technet.microsoft.com/library/dd772715(WS.10).aspx).

Windows PowerShell can create powerful, complex IPsec policies like in Netsh and the Windows Firewall with Advanced Security MMC snap-in. However, because Windows PowerShell is object-based rather than string token-based, configuration in Windows PowerShell offers greater control and flexibility.

In Netsh, the authentication and cryptographic sets were specified as a list of comma-separated tokens in a specific format. In Windows PowerShell, rather than using default settings, you first create your desired authentication or cryptographic proposal objects and bundle them into lists in your preferred order. Then, you create one or more IPsec rules that reference these sets. The benefit of this model is that programmatic access to the information in the rules is much easier. See the following sections for clarifying examples.

![object model for creating a single ipsec rule](images/createipsecrule.gif)

### Create IPsec rules

The following cmdlet creates basic IPsec transport mode rule in a Group Policy Object. An IPsec rule is simple to create; all that is required is the display name, and the remaining properties use default values. Inbound traffic is authenticated and integrity checked using the default quick mode and main mode settings. These default settings can be found in the MMC snap-in under Customize IPsec Defaults.

**Netsh**

``` syntax
netsh advfirewall set store gpo=domain.contoso.com\gpo_name
netsh advfirewall consec add rule name="Require Inbound Authentication" endpoint1=any endpoint2=any action=requireinrequestout
```

Windows PowerShell

``` syntax
New-NetIPsecRule -DisplayName “Require Inbound Authentication” -PolicyStore domain.contoso.com\gpo_name
```

### Add custom authentication methods to an IPsec rule

If you want to create a custom set of quick-mode proposals that includes both AH and ESP in an IPsec rule object, you create the associated objects separately and link their associations. For more information about authentication methods, see [Choosing the IPsec Protocol](http://technet.microsoft.com/library/cc757847(WS.10).aspx) .

You can then use the newly created custom quick-mode policies when you create IPsec rules. The cryptography set object is linked to an IPsec rule object.

![crypto set object](images/qmcryptoset.gif)

In this example, we build on the previously created IPsec rule by specifying a custom quick-mode crypto set. The final IPsec rule requires outbound traffic to be authenticated by the specified cryptography method.

**Netsh**

``` syntax
netsh advfirewall set store gpo=domain.contoso.com\gpo_name
netsh advfirewall consec add rule name="Require Outbound Authentication" endpoint1=any endpoint2=any action=requireinrequestout qmsecmethods=ah:sha1+esp:sha1-3des
```

Windows PowerShell

``` syntax
$AHandESPQM = New-NetIPsecQuickModeCryptoProposal -Encapsulation AH,ESP –AHHash SHA1 -ESPHash SHA1 -Encryption DES3
$QMCryptoSet = New-NetIPsecQuickModeCryptoSet –DisplayName “ah:sha1+esp:sha1-des3” -Proposal $AHandESPQM –PolicyStore domain.contoso.com\gpo_name
New-NetIPsecRule -DisplayName “Require Inbound Authentication” -InboundSecurity Require -OutboundSecurity Request -QuickModeCryptoSet $QMCryptoSet.Name –PolicyStore domain.contoso.com\gpo_name
```

### IKEv2 IPsec transport rules

A corporate network may need to secure communications with another agency. But, you discover the agency runs non-Windows operating systems and requires the use of the Internet Key Exchange Version 2 (IKEv2) standard.

You can leverage IKEv2 capabilities in Windows Server 2012 by simply specifying IKEv2 as the key module in an IPsec rule. This can only be done using computer certificate authentication and cannot be used with phase 2 authentication.

Windows PowerShell

``` syntax
New-NetIPsecRule -DisplayName “Require Inbound Authentication” -InboundSecurity Require -OutboundSecurity Request –Phase1AuthSet MyCertAuthSet -KeyModule IKEv2 –RemoteAddress $nonWindowsGateway
```

For more information about IKEv2, including scenarios, see [Securing End-to-End IPsec Connections by Using IKEv2 in Windows Server 2012](../p_server_archive/securing-end-to-end-ipsec-connections-by-using-ikev2-in-windows-server-2012.md).

### Copy an IPsec rule from one policy to another

Firewall and IPsec rules with the same rule properties can be duplicated to simplify the task of re-creating them within different policy stores.

To copy the previously created rule from one policy store to another, the associated objects must be also be copied separately. Note that there is no need to copy associated firewall filters. You can query rules to be copied in the same way as other cmdlets.

Copying individual rules is a task that is not possible through the Netsh interface. Here is how you can accomplish it with Windows PowerShell.

Windows PowerShell

``` syntax
$Rule = Get-NetIPsecRule –DisplayName “Require Inbound Authentication”
$Rule | Copy-NetIPsecRule –NewPolicyStore domain.costoso.com\new_gpo_name
$Rule | Copy-NetPhase1AuthSet –NewPolicyStore domain.costoso.com\new_gpo_name
```

### Handling Windows PowerShell errors

****

To handle errors in your Windows PowerShell scripts, you can use the *–ErrorAction* parameter. This is especially useful with the **Remove** cmdlets. If you want to remove a particular rule, you will notice that it fails if the rule is not found. When removing rules, if the rule isn’t already there, it is generally acceptable to ignore that error. In this case, you can do the following to suppress any “rule not found” errors during the remove operation.

Windows PowerShell

``` syntax
Remove-NetFirewallRule –DisplayName “Contoso Messenger 98” –ErrorAction SilentlyContinue
```

Note that the use of wildcards can also suppress errors, but they could potentially match rules that you did not intend to remove. This can be a useful shortcut, but should only be used if you know there aren’t any extra rules that will be accidentally deleted. So the following cmdlet will also remove the rule, suppressing any “not found” errors.

Windows PowerShell

``` syntax
Remove-NetFirewallRule –DisplayName “Contoso Messenger 98*”
```

When using wildcards, if you want to double-check the set of rules that is matched, you can use the *–WhatIf* parameter.

Windows PowerShell

``` syntax
Remove-NetFirewallRule –DisplayName “Contoso Messenger 98*” –WhatIf
```

If you only want to delete some of the matched rules, you can use the *–Confirm* parameter to get a rule-by-rule confirmation prompt.

Windows PowerShell

``` syntax
Remove-NetFirewallRule –DisplayName “Contoso Messenger 98*” –Confirm
```

You can also just perform the whole operation, displaying the name of each rule as the operation is performed.

Windows PowerShell

``` syntax
Remove-NetFirewallRule –DisplayName “Contoso Messenger 98*” –Verbose
```

### Monitor

The following Windows PowerShell commands are useful in the update cycle of a deployment phase.

To allow you to view all the IPsec rules in a particular store, you can use the following commands. In Netsh, this command does not show rules where profile=domain,public or profile=domain,private. It only shows rules that have the single entry domain that is included in the rule. The following command examples will show the IPsec rules in all profiles.

**Netsh**

``` syntax
netsh advfirewall consec show rule name=all
```

Windows PowerShell

``` syntax
Show-NetIPsecRule –PolicyStore ActiveStore
```

You can monitor main mode security associations for information such as which peers are currently connected to the computer and which protection suite is used to form the security associations.

Use the following cmdlet to view existing main mode rules and their security associations:

**Netsh**

``` syntax
netsh advfirewall monitor show mmsa all
```

Windows PowerShell

``` syntax
Get-NetIPsecMainModeSA
```

### Find the source GPO of a rule

To view the properties of a particular rule or group of rules, you query for the rule. When a query returns fields that are specified as **NotConfigured**, you can to determine which policy store a rule originates from.

For objects that come from a GPO (the *–PolicyStoreSourceType* parameter is specified as **GroupPolicy** in the **Show** command), if *–TracePolicyStore* is passed, the name of the GPO is found and returned in the **PolicyStoreSource** field.

Windows PowerShell

``` syntax
Get-NetIPsecRule –DisplayName “Require Inbound Authentication” –TracePolicyStore 
```

It is important to note that the revealed sources do not contain a domain name.

### Deploy a basic domain isolation policy

IPsec can be used to isolate domain members from non-domain members. Domain isolation uses IPsec authentication to require that the domain computer members positively establish the identities of the communicating computers to improve security of an organization. One or more features of IPsec can be used to secure traffic with an IPsec rule object.

To implement domain isolation on your network, the computers in the domain receive IPsec rules that block unsolicited inbound network traffic that is not protected by IPsec. Here we create an IPsec rule that requires authentication by domain members. Through this, you can isolate domain member computers from computers that are non-domain members. In the following examples, Kerberos authentication is required for inbound traffic and requested for outbound traffic.

**Netsh**

``` syntax
netsh advfirewall set store gpo=domain.contoso.com\domain_isolation
netsh advfirewall consec add rule name=“Basic Domain Isolation Policy” profile=domain endpoint1=”any” endpoint2=”any” action=requireinrequestout auth1=”computerkerb”
```

Windows PowerShell

``` syntax
$kerbprop = New-NetIPsecAuthProposal –Machine –Kerberos

$Phase1AuthSet = New-NetIPsecPhase1AuthSet -DisplayName "Kerberos Auth Phase1" -Proposal $kerbprop –PolicyStore domain.contoso.com\domain_isolation

New-NetIPsecRule –DisplayName “Basic Domain Isolation Policy” –Profile Domain –Phase1AuthSet $Phase1AuthSet.Name –InboundSecurity Require –OutboundSecurity Request –PolicyStore domain.contoso.com\domain_isolation 
```

### Configure IPsec tunnel mode

The following command creates an IPsec tunnel that routes traffic from a private network (192.168.0.0/16) through an interface on the local computer (1.1.1.1) attached to a public network to a second computer through its public interface (2.2.2.2) to another private network (192.157.0.0/16). All traffic through the tunnel is checked for integrity by using ESP/SHA1, and it is encrypted by using ESP/DES3.

**Netsh**

``` syntax
netsh advfirewall consec add rule name="Tunnel from 192.168.0.0/16 to 192.157.0.0/16" mode=tunnel endpoint1=192.168.0.0/16 endpoint2=192.157.0.0/16 localtunnelendpoint=1.1.1.1 remotetunnelendpoint=2.2.2.2 action=requireinrequireout qmsecmethods=esp:sha1-3des
```

Windows PowerShell

``` syntax
$QMProposal = New-NetIPsecQuickModeCryptoProposal -Encapsulation ESP -ESPHash SHA1 -Encryption DES3
$QMCryptoSet = New-NetIPsecQuickModeCryptoSet –DisplayName “esp:sha1-des3” -Proposal $QMProposal
New-NetIPSecRule -DisplayName “Tunnel from HQ to Dallas Branch” -Mode Tunnel -LocalAddress 192.168.0.0/16 -RemoteAddress 192.157.0.0/16 -LocalTunnelEndpoint 1.1.1.1 -RemoteTunnelEndpoint 2.2.2.2 -InboundSecurity Require -OutboundSecurity Require -QuickModeCryptoSet $QMCryptoSet.Name
```

## <a href="" id="bkmk-deploysecurerules"></a>Deploy secure firewall rules with IPsec


In situations where only secure traffic can be allowed through the Windows Firewall, a combination of manually configured firewall and IPsec rules are necessary. The firewall rules determine the level of security for allowed packets, and the underlying IPsec rules secure the traffic. The scenarios can be accomplished in Windows PowerShell and in Netsh, with many similarities in deployment.

### Create a secure firewall rule (allow if secure)

Configuring firewalls rule to allow connections if they are secure requires the corresponding traffic to be authenticated and integrity protected, and then optionally encrypted by IPsec.

The following example creates a firewall rule that requires traffic to be authenticated. The command permits inbound Telnet network traffic only if the connection from the remote computer is authenticated by using a separate IPsec rule.

**Netsh**

``` syntax
netsh advfirewall firewall add rule name="Allow Authenticated Telnet" dir=in program=%SystemRoot%\System32\tlntsvr.exe security=authenticate action=allow
```

Windows PowerShell

``` syntax
New-NetFirewallRule -DisplayName “Allow Authenticated Telnet” -Direction Inbound -Program %SystemRoot%\System32\tlntsvr.exe -Authentication Required -Action Allow
```

The following command creates an IPsec rule that requires a first (computer) authentication and then attempts an optional second (user) authentication. Creating this rule secures and allows the traffic through the firewall rule requirements for the messenger program.

**Netsh**

``` syntax
netsh advfirewall consec add rule name="Authenticate Both Computer and User" endpoint1=any endpoint2=any action=requireinrequireout auth1=computerkerb,computerntlm auth2=userkerb,userntlm,anonymous
```

Windows PowerShell

``` syntax
$mkerbauthprop = New-NetIPsecAuthProposal -Machine –Kerberos
$mntlmauthprop = New-NetIPsecAuthProposal -Machine -NTLM
$P1Auth = New-NetIPsecPhase1AuthSet -DisplayName “Machine Auth” –Proposal $mkerbauthprop,$mntlmauthprop
$ukerbauthprop = New-NetIPsecAuthProposal -User -Kerberos
$unentlmauthprop = New-NetIPsecAuthProposal -User -NTLM
$anonyauthprop = New-NetIPsecAuthProposal -Anonymous
$P2Auth = New-NetIPsecPhase2AuthSet -DisplayName “User Auth” -Proposal $ukerbauthprop,$unentlmauthprop,$anonyauthprop
New-NetIPSecRule -DisplayName “Authenticate Both Computer and User” -InboundSecurity Require -OutboundSecurity Require -Phase1AuthSet $P1Auth.Name –Phase2AuthSet $P2Auth.Name
```

### Isolate a server by requiring encryption and group membership

To improve the security of the computers in an organization, an administrator can deploy domain isolation in which domain-members are restricted. They require authentication when communicating among each other and reject non-authenticated inbound connections. To improve the security of servers with sensitive data, this data must be protected by allowing access only to a subset of computers within the enterprise domain.

IPsec can provide this additional layer of protection by isolating the server. In server isolation, sensitive data access is restricted to users and computers with legitimate business need, and the data is additionally encrypted to prevent eavesdropping.

### Create a firewall rule that requires group membership and encryption

To deploy server isolation, we layer a firewall rule that restricts traffic to authorized users or computers on the IPsec rule that enforces authentication.

The following firewall rule allows Telnet traffic from user accounts that are members of a custom group created by an administrator called “Authorized to Access Server.” This access can additionally be restricted based on the computer, user, or both by specifying the restriction parameters.

A Security Descriptor Definition Language (SDDL) string is created by extending a user or group’s security identifier (SID). For more information about finding a group’s SID, see: [Finding the SID for a group account](http://technet.microsoft.com/library/cc753463(WS.10).aspx#bkmk_FINDSID).

Restricting access to a group allows administrations to extend strong authentication support through Windows Firewall/and or IPsec policies.

The following example shows you how to create an SDDL string that represents security groups.

Windows PowerShell

``` syntax
$user = new-object System.Security.Principal.NTAccount (“corp.contoso.com\Administrators”)
$SIDofSecureUserGroup = $user.Translate([System.Security.Principal.SecurityIdentifier]).Value
$secureUserGroup = "D:(A;;CC;;;$SIDofSecureUserGroup)"
```

By using the previous scriptlet, you can also get the SDDL string for a secure computer group as shown here:

Windows PowerShell

``` syntax
$secureMachineGroup = "D:(A;;CC;;;$SIDofSecureMachineGroup)"
```

For more information about how to create security groups or how to determine the SDDL string, see [Working with SIDs](http://technet.microsoft.com/library/ff730940.aspx).

Telnet is an application that does not provide encryption. This application can send data, such as names and passwords, over the network. This data can be intercepted by malicious users. If an administrator would like to allow the use of Telnet, but protect the traffic, a firewall rule that requires IPsec encryption can be created. This is necessary so that the administrator can be certain that when this application is used, all of the traffic sent or received by this port is encrypted. If IPsec fails to authorize the connection, no traffic is allowed from this application.

In this example, we allow only authenticated and encrypted inbound Telnet traffic from a specified secure user group through the creation of the following firewall rule.

**Netsh**

``` syntax
netsh advfirewall set store gpo=domain.contoso.com\Server_Isolation
netsh advfirewall firewall add rule name=“Allow Encrypted Inbound Telnet to Group Members Only” program=%SystemRoot%\System32\tlntsvr.exe protocol=TCP dir=in action=allow localport=23 security=authenc rmtusrgrp ="D:(A;;CC;;; S-1-5-21-2329867823-2610410949-1491576313-1735)"
```

Windows PowerShell

``` syntax
New-NetFirewallRule -DisplayName "Allow Encrypted Inbound Telnet to Group Members Only" -Program %SystemRoot%\System32\tlntsvr.exe -Protocol TCP -Direction Inbound -Action Allow -LocalPort 23 -Authentication Required -Encryption Required –RemoteUser $secureUserGroup –PolicyStore domain.contoso.com\Server_Isolation
```

### Endpoint security enforcement

The previous example showed end to end security for a particular application. In situations where endpoint security is required for many applications, having a firewall rule per application can be cumbersome and difficult to manage. Authorization can override the per-rule basis and be done at the IPsec layer.

In this example, we set the global IPsec setting to only allow transport mode traffic to come from an authorized user group with the following cmdlet. Consult the previous examples for working with security groups.

Windows PowerShell

``` syntax
Set-NetFirewallSetting -RemoteMachineTransportAuthorizationList $secureMachineGroup
```

### Create firewall rules that allow IPsec-protected network traffic (authenticated bypass)

Authenticated bypass allows traffic from a specified trusted computer or user to override firewall block rules. This is helpful when an administrator wants to use scanning servers to monitor and update computers without the need to use port-level exceptions. For more information, see [How to enable authenticated firewall bypass](http://technet.microsoft.com/library/cc753463(WS.10).aspx).

In this example, we assume that a blocking firewall rule exists. This example permits any network traffic on any port from any IP address to override the block rule, if the traffic is authenticated as originating from a computer or user account that is a member of the specified computer or user security group.

**Netsh**

``` syntax
netsh advfirewall set store gpo=domain.contoso.com\domain_isolation
netsh advfirewall firewall add rule name="Inbound Secure Bypass Rule" dir=in security=authenticate action="bypass" rmtcomputergrp="D:(A;;CC;;;S-1-5-21-2329867823-2610410949-1491576313-1114)" rmtusrgrp="D:(A;;CC;;; S-1-5-21-2329867823-2610410949-1491576313-1735)"
```

Windows PowerShell

``` syntax
New-NetFirewallRule –DisplayName “Inbound Secure Bypass Rule" –Direction Inbound –Authentication Required –OverrideBlockRules $true -RemoteMachine $secureMachineGroup –RemoteUser $secureUserGroup –PolicyStore domain.contoso.com\domain_isolation
```

## <a href="" id="bkmk-additionalresources"></a>Additional resources


For more information about Windows PowerShell concepts, see the following topics.

-   [Windows PowerShell Getting Started Guide](http://go.microsoft.com/fwlink/p/?linkid=113440)

-   [Windows PowerShell User Guide](http://go.microsoft.com/fwlink/p/?linkid=113441)

-   [Windows PowerShell About Help Topics](http://go.microsoft.com/fwlink/p/?linkid=113206)

-   [about\_Functions](http://go.microsoft.com/fwlink/p/?linkid=113231)

-   [about\_Functions\_Advanced](http://go.microsoft.com/fwlink/p/?linkid=144511)

-   [about\_Execution\_Policies](http://go.microsoft.com/fwlink/p/?linkid=135170)

-   [about\_Foreach](http://go.microsoft.com/fwlink/p/?linkid=113229)

-   [about\_Objects](http://go.microsoft.com/fwlink/p/?linkid=113241)

-   [about\_Properties](http://go.microsoft.com/fwlink/p/?linkid=113249)

-   [about\_While](http://go.microsoft.com/fwlink/p/?linkid=113275)

-   [about\_Scripts](http://go.microsoft.com/fwlink/p/?linkid=144310)

-   [about\_Signing](http://go.microsoft.com/fwlink/p/?linkid=113268)

-   [about\_Throw](http://go.microsoft.com/fwlink/p/?linkid=145153)

-   [about\_PSSessions](http://go.microsoft.com/fwlink/p/?linkid=135181)

-   [about\_Modules](http://go.microsoft.com/fwlink/p/?linkid=144311)

-   [about\_Command\_Precedence](http://go.microsoft.com/fwlink/p/?linkid=113214)

 

 





