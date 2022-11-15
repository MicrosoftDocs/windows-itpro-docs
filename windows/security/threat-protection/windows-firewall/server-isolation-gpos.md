---
title: Server Isolation GPOs (Windows)
description: Learn about required GPOs for isolation zones and how many server isolation zones you need in Windows Defender Firewall with Advanced Security.
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/08/2021
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Server Isolation GPOs


Each set of devices that have different users or devices accessing them require a separate server isolation zone. Each zone requires one GPO for each version of Windows running on devices in the zone. The Woodgrove Bank example has an isolation zone for their devices that run SQL Server. The server isolation zone is logically considered part of the encryption zone. Therefore, server isolation zone GPOs must also include rules for encrypting all isolated server traffic. Woodgrove Bank copied the encryption zone GPOs to serve as a starting point, and renamed them to reflect their new purpose.

All of the device accounts for devices in the SQL Server server isolation zone are added to the group CG\_SRVISO\_WGBANK\_SQL. This group is granted Read and Apply Group Policy permissions in on the GPOs described in this section. The GPOs are only for server versions of Windows. Client devices aren't expected to be members of the server isolation zone, although they can access the servers in the zone by being a member of a network access group (NAG) for the zone.

## GPO\_SRVISO


This GPO is identical to the GPO\_DOMISO\_Encryption GPO with the following changes:

-   The firewall rule that enforces encryption is modified to include the NAGs on the **Users and Computers** tab of the rule. The NAGs-granted permissions include CG\_NAG\_SQL\_Users and CG\_NAG\_SQL\_Computers.

    >**Important:**  Earlier versions of Windows support only device-based authentication. If you specify that user authentication is mandatory, only users on devices that are running at least Windows Vista or Windows Server 2008 can connect.

**Next:** [Planning GPO Deployment](planning-gpo-deployment.md)
