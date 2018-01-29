---
title: How to configure Diffie Hellman protocol over IKEv2 VPN connections (Windows 10)
description: tbd
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, networking
author: jdeckerms
ms.localizationpriority: high
ms.date: 07/27/2017
---

# How to configure Diffie Hellman protocol over IKEv2 VPN connections

**Applies to**
-   Windows 10
-   Windows Server

In IKEv2 VPN connections, the default configuration for Diffie Hellman group is Group 2, which is not secure for IKE exchanges. 
To secure VPN connections, update the VPN configuration by running VPN cmdlets with the CustomPolicy parameter.

For VPN servers, configure each tunnel type. That is, if you update the IKEv2 tunnel configuration, all IKE exchanges on IKEv2 tunnel use the secure configuration.

For example, on a VPN server that runs Windows Server 2016, run [Set-VpnServerConfiguration](https://docs.microsoft.com/powershell/module/remoteaccess/set-vpnserverconfiguration?view=win10-ps):

```powershell
Set-VpnServerConfiguration -TunnelType IKEv2 -CustomPolicy
```

On a VPN server that runs Windows Server 2012 R2, run [Set-VpnServerIPsecConfiguration](https://technet.microsoft.com/library/hh918373(v=wps.620).aspx):

```powershell
Set-VpnServerIPsecConfiguration -CustomPolicy
```

For VPN clients, configure each VPN connection. 

For example, on a VPN client that runs Windows 10, run [Set-VpnConnectionIPsecConfiguration (version 4.0)](https://docs.microsoft.com/powershell/module/vpnclient/set-vpnconnectionipsecconfiguration?view=win10-ps):

```powershell
Set-VpnConnectionIPsecConfiguration 
```

On a VPN server that runs Windows Server 2012 R2, run [Set-VpnConnectionIPsecConfiguration (version 3.0)](https://technet.microsoft.com/library/dn262642(v=wps.630).aspx):

```powershell
Set-VpnConnectionIPsecConfiguration 
```
