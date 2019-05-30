---
title: How to configure Diffie Hellman protocol over IKEv2 VPN connections (Windows 10)
description: Explains how to secure VPN connections for Diffie Hellman Group 2
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, networking
author: dulcemontemayor
ms.author: dolmont
ms.localizationpriority: medium
ms.date: 02/08/2018
---

# How to configure Diffie Hellman protocol over IKEv2 VPN connections

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows 10

In IKEv2 VPN connections, the default configuration for Diffie Hellman group is Group 2, which is not secure for IKE exchanges. 
To secure the connections, update the configuration of VPN servers and clients by running VPN cmdlets.

## VPN server

For VPN servers that run Windows Server 2012 R2 or later, you need to run [Set-VpnServerConfiguration](https://docs.microsoft.com/powershell/module/remoteaccess/set-vpnserverconfiguration?view=win10-ps) to configure the tunnel type. This makes all IKE exchanges on IKEv2 tunnel use the secure configuration.

```powershell
Set-VpnServerConfiguration -TunnelType IKEv2 -CustomPolicy
```

On an earlier versions of Windows Server, run [Set-VpnServerIPsecConfiguration](https://technet.microsoft.com/library/hh918373(v=wps.620).aspx). Since `Set-VpnServerIPsecConfiguration` doesn’t have `-TunnelType`, the configuration applies to all tunnel types on the server.

```powershell
Set-VpnServerIPsecConfiguration -CustomPolicy
```

## VPN client 

For VPN client, you need to configure each VPN connection. 
For example, run [Set-VpnConnectionIPsecConfiguration (version 4.0)](https://docs.microsoft.com/powershell/module/vpnclient/set-vpnconnectionipsecconfiguration?view=win10-ps) and specify the name of the connection:


```powershell
Set-VpnConnectionIPsecConfiguration -ConnectionName <String>
```

