---
title: How to configure cryptographic settings for IKEv2 VPN connections
description: Learn how to update the IKEv2 cryptographic settings of VPN servers and clients by running VPN cmdlets to secure connections.
ms.date: 08/03/2023
ms.topic: how-to
---

# How to configure cryptographic settings for IKEv2 VPN connections

In IKEv2 VPN connections, the default setting for IKEv2 cryptographic settings are:

- Encryption Algorithm: DES3  
- Integrity, Hash Algorithm: SHA1  
- Diffie Hellman Group (Key Size): DH2

These settings aren't secure for IKE exchanges.  

To secure the connections, update the configuration of VPN servers and clients by running VPN cmdlets.

## VPN server

For VPN servers that run Windows Server 2012 R2 or later, you need to run [Set-VpnServerConfiguration](/powershell/module/remoteaccess/set-vpnserverconfiguration?view=win10-ps&preserve-view=true) to configure the tunnel type. These settings are effective for all IKEv2 VPN connections.

```powershell
Set-VpnServerConfiguration -TunnelType IKEv2 -CustomPolicy
```

On an earlier version of Windows Server, run [Set-VpnServerIPsecConfiguration](/previous-versions/windows/powershell-scripting/hh918373(v=wps.620)). Since `Set-VpnServerIPsecConfiguration` doesn't have `-TunnelType`, the configuration applies to all tunnel types on the server.

```powershell
Set-VpnServerIPsecConfiguration -CustomPolicy
```

## VPN client

For VPN client, you need to configure each VPN connection.
For example, run [Set-VpnConnectionIPsecConfiguration (version 4.0)](/powershell/module/vpnclient/set-vpnconnectionipsecconfiguration?view=win10-ps&preserve-view=true) and specify the name of the connection:

```powershell
Set-VpnConnectionIPsecConfiguration -ConnectionName <String>
```

## IKEv2 Crypto Settings Example

The following commands configure the IKEv2 cryptographic settings to:  

- Encryption Algorithm: AES128  
- Integrity, Hash Algorithm: SHA256  
- Diffie Hellman Group (Key Size): DH14  

### IKEv2 VPN Server  

```powershell
Set-VpnServerConfiguration -TunnelType IKEv2 -CustomPolicy -AuthenticationTransformConstants SHA256128 -CipherTransformConstants AES128 -DHGroup Group14 -EncryptionMethod AES128 -IntegrityCheckMethod SHA256 -PFSgroup PFS2048 -SALifeTimeSeconds 28800 -MMSALifeTimeSeconds 86400 -SADataSizeForRenegotiationKilobytes 1024000  
restart-service RemoteAccess -PassThru
```

If you need to switch back to the default IKEv2 settings, use this command:

```powershell
Set-VpnServerConfiguration -TunnelType IKEv2 -RevertToDefault  
restart-service RemoteAccess -PassThru
```

### IKEv2 VPN Client  

```powershell
Set-VpnConnectionIPsecConfiguration -ConnectionName <String - your VPN connection name> -AuthenticationTransformConstants SHA256128 -CipherTransformConstants AES128 -DHGroup Group14 -EncryptionMethod AES128 -IntegrityCheckMethod SHA256 -PfsGroup PFS2048 -Force
```

If you need to switch back to the default IKEv2 settings, use this command:

```powershell
Set-VpnConnectionIPsecConfiguration -ConnectionName <String - your VPN connection name> -RevertToDefault -Force
```

> [!TIP]  
> If you're configuring a all-user VPN connection or a Device Tunnel you must use the `-AllUserConnection` parameter in the `Set-VpnConnectionIPsecConfiguration` command.  