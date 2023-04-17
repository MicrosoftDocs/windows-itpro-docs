---
title: GPO\_DOMISO\_Encryption\_WS2008 (Windows)
description: This example GPO supports the ability for servers that contain sensitive data to require encryption for all connection requests.
ms.topic: conceptual
ms.prod: windows-client
ms.date: 09/08/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
---

# GPO\_DOMISO\_Encryption\_WS2008


This GPO is authored by using the Windows Defender Firewall with Advanced Security interface in the Group Policy editing tools. Woodgrove Bank began by copying and pasting the GPO for the Windows Server 2008 version of the isolated domain GPO, and then renamed the copy to reflect its new purpose.

This GPO supports the ability for servers that contain sensitive data to require encryption for all connection requests. It's intended to only apply to server computers that are running Windows Server 2012, Windows Server 2008 R2, or Windows Server 2008.

## IPsec settings


The copied GPO includes and continues to use the IPsec settings that configure key exchange, main mode, and quick mode algorithms for the isolated domain. The following changes are made to encryption zone copy of the GPO:

The encryption zone servers require all connections to be encrypted. To do this encryption, change the IPsec default settings for the GPO to enable the setting **Require encryption for all connection security rules that use these settings**. This setting disables all integrity-only algorithm combinations.

## Connection security rules


Rename the **Isolated Domain Rule** to **Encryption Zone Rule**. Leave the authentication mode setting on **Require inbound and request outbound**. In this mode, the computer forces authentication for all inbound network traffic, and uses it when it can on outbound traffic.

## Registry settings


The encryption zone uses the same registry settings as the isolated domain to optimize IPsec operation. For more information, see the description of the registry settings in [Isolated Domain](isolated-domain.md).

## Firewall rules


Copy the firewall rules for the encryption zone from the GPO that contains the firewall rules for the isolated domain. Customize this copy, removing rules for services not needed on servers in this zone, and adding inbound rules to allow the network traffic for the services that are to be accessed by other computers. For example, Woodgrove Bank added a firewall rule to allow inbound network traffic to TCP port 1433 for SQL Server client requests.

Change the action for every inbound firewall rule from **Allow the connection** to **Allow only secure connections**, and then select **Require the connections to be encrypted**.

Make sure that the GPO that contains firewall rules for the isolated domain doesn't also apply to the boundary zone to prevent overlapping, and possibly conflicting rules.

**Next:** [Server Isolation GPOs](server-isolation-gpos.md)

 

 





