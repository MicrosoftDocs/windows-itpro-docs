---
title: How to configure Diffie Hellman protocol over IKEv2 VPN connections (Windows 10 and Windows 11)
description: Learn how to update the Diffie Hellman configuration of VPN servers and clients by running VPN cmdlets to secure connections.
ms.prod: windows-client
author: paolomatarazzo
ms.author: paoloma
ms.localizationpriority: medium
ms.date: 09/23/2021
manager: aaroncz
ms.reviewer: pesmith
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
ms.technology: itpro-security
---

# How to configure Diffie Hellman protocol over IKEv2 VPN connections

>Applies To: Windows Server (General Availability Channel), Windows Server 2016, Windows 10, Windows 11

In IKEv2 VPN connections, the default configuration for Diffie Hellman group is Group 2, which is not secure for IKE exchanges.

To secure the connections, update the configuration of VPN servers and clients by running VPN cmdlets.

## VPN server

For VPN servers that run Windows Server 2012 R2 or later, you need to run [Set-VpnServerConfiguration](/powershell/module/remoteaccess/set-vpnserverconfiguration?view=win10-ps&preserve-view=true) to configure the tunnel type. This makes all IKE exchanges on IKEv2 tunnel use the secure configuration.

```powershell
Set-VpnServerConfiguration -TunnelType IKEv2 -CustomPolicy
```

On an earlier version of Windows Server, run [Set-VpnServerIPsecConfiguration](/previous-versions/windows/powershell-scripting/hh918373(v=wps.620)). Since `Set-VpnServerIPsecConfiguration` doesn’t have `-TunnelType`, the configuration applies to all tunnel types on the server.

```powershell
Set-VpnServerIPsecConfiguration -CustomPolicy
```

## VPN client 

For VPN client, you need to configure each VPN connection. 
For example, run [Set-VpnConnectionIPsecConfiguration (version 4.0)](/powershell/module/vpnclient/set-vpnconnectionipsecconfiguration?view=win10-ps&preserve-view=true) and specify the name of the connection:


```powershell
Set-VpnConnectionIPsecConfiguration -ConnectionName <String>
```