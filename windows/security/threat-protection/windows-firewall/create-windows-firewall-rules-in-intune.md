---
title: Create Windows Firewall rules in Intune (Windows)
description: Learn how to use Intune to create rules in Windows Defender Firewall with Advanced Security. Start by creating a profile in Device Configuration in Intune.
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Create Windows Firewall rules in Intune


>[!IMPORTANT]
>This information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

To get started, Open the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), and then go to **Devices** > **Windows** > **Configuration profiles** > **Create profile** > Choose **Windows 10 and later** as the platform, Choose **Templates**, then **Endpoint protection** as the profile type. 
Select Windows Defender Firewall.
:::image type="content" source="images/windows-firewall-intune.png" alt-text="Example of a Windows Defender Firewall policy in Microsoft Intune and the Endpoint Manager admin center.":::

>[!IMPORTANT]
>A single Endpoint Protection profile may contain up to a maximum of 150 firewall rules. If a client device requires more than 150 rules, then multiple profiles must be assigned to it.

## Firewall rule components

The firewall rule configurations in Intune use the Windows CSP for Firewall. For more information, see [Firewall CSP](/windows/client-management/mdm/firewall-csp).

## Application
Control connections for an app or program. 
Apps and programs can be specified either file path, package family name, or Windows service short name. 

The file path of an app is its location on the client device. 
For example, C:\Windows\System\Notepad.exe. 
[Learn more](/windows/client-management/mdm/firewall-csp#filepath) 

Package family names can be retrieved by running the Get-AppxPackage command from PowerShell. 
[Learn more](https://aka.ms/intunefirewallPackageNameFromPowerShell) 

Windows service short names are used in cases when a service, not an application, is sending or receiving traffic. 
Default is All. 

[Learn more](/windows/client-management/mdm/firewall-csp#servicename)

## Protocol
Select the protocol for this port rule. Transport layer protocols—TCP and UDP—allow you to specify ports or port ranges. For custom protocols, enter a number between 0 and 255 representing the IP protocol. 

Default is Any. 

[Learn more](/windows/client-management/mdm/firewall-csp#protocol)

## Local ports
Comma separated list of ranges. For example, *100-120,200,300-320*. Default is All. 

[Learn more](/windows/client-management/mdm/firewall-csp#localportranges)

## Remote ports
Comma separated list of ranges. For example, *100-120,200,300-320*. Default is All. 

[Learn more](/windows/client-management/mdm/firewall-csp#remoteportranges)

## Local addresses
Comma-separated list of local addresses covered by the rule. Valid tokens include:
- \* indicates any local address. If present, this token must be the only one included. 
- A subnet can be specified using either the subnet mask or network prefix notation. If a subnet mask or a network prefix isn't specified, the subnet mask default is 255.255.255.255. 
- A valid IPv6 address. 
- An IPv4 address range in the format of "start address-end address" with no spaces included. 
- An IPv6 address range in the format of "start address-end address" with no spaces included. Default is Any address. 

[Learn more](/windows/client-management/mdm/firewall-csp#localaddressranges)

## Remote addresses
List of comma separated tokens specifying the remote addresses covered by the rule. Tokens are case insensitive. Valid tokens include:
- \* indicates any remote address. If present, this token must be the only one included. 
- Defaultgateway 
- DHCP 
- DNS 
- WINS 
- Intranet (supported on Windows versions 1809+) 
- RmtIntranet (supported on Windows versions 1809+) 
- Internet (supported on Windows versions 1809+) 
- Ply2Renders (supported on Windows versions 1809+) 
- LocalSubnet indicates any local address on the local subnet. 
- A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to 255.255.255.255. 
- A valid IPv6 address. 
- An IPv4 address range in the format of "start address-end address" with no spaces included. 
- An IPv6 address range in the format of "start address-end address" with no spaces included. 

Default is Any address. 

[Learn more](https://aka.ms/intunefirewallremotaddressrule)

## Edge traversal (UI coming soon)
Indicates whether edge traversal is enabled or disabled for this rule. The EdgeTraversal setting indicates that specific inbound traffic is allowed to tunnel through NATs and other edge devices using the Teredo tunneling technology. In order for this setting to work correctly, the application or service with the inbound firewall rule needs to support IPv6. The primary application of this setting allows listeners on the host to be globally addressable through a Teredo IPv6 address. New rules have the EdgeTraversal property disabled by default. This setting can only be configured via Intune Graph at this time. 

[Learn more](/windows/client-management/mdm/firewall-csp#edgetraversal)

## Authorized users
Specifies the list of authorized local users for this rule. A list of authorized users can't be specified if the rule being authored is targeting a Windows service. Default is all users. 

[Learn more](/windows/client-management/mdm/firewall-csp#localuserauthorizedlist)

## Configuring firewall rules programmatically

Coming soon.
