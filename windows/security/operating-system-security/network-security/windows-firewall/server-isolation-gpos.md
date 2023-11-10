---
title: Server Isolation GPOs 
description: Learn about required GPOs for isolation zones and how many server isolation zones you need in Windows Defender Firewall with Advanced Security.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 11/10/2023
---

# Server Isolation GPOs

Each set of devices that have different users or devices accessing them require a separate server isolation zone. Each zone requires one GPO for each version of Windows running on devices in the zone. The *Woodgrove Bank* example has an isolation zone for their devices that run SQL Server. The server isolation zone is logically considered part of the encryption zone. Therefore, server isolation zone GPOs must also include rules for encrypting all isolated server traffic. *Woodgrove Bank* copied the encryption zone GPOs to serve as a starting point, and renamed them to reflect their new purpose.

All of the device accounts for devices in the SQL Server server isolation zone are added to the group *CG_SRVISO_WGBANK_SQL*. This group is granted **Read** and **Apply Group Policy** permissions in on the GPOs described in this section. The GPOs are only for server versions of Windows. Client devices aren't expected to be members of the server isolation zone, although they can access the servers in the zone by being a member of a network access group (NAG) for the zone.

## GPO_SRVISO

This GPO is identical to the *GPO_DOMISO_Encryption* GPO with the following changes:

- The firewall rule that enforces encryption is modified to include the NAGs on the **Users and Computers** tab of the rule. The NAGs-granted permissions include *CG_NAG_SQL_Users* and *CG_NAG_SQL_Computers*.

## Next steps

> [!div class="nextstepaction"]
> Learn how to use security group filtering and WMI filtering to provide the most flexible options for applying GPOs to devices in Active Directory.
>
>
> [Plan GPO Deployment >](planning-gpo-deployment.md)
