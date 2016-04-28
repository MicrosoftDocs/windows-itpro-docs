---
title: Server Isolation GPOs (Windows 10)
description: Server Isolation GPOs
ms.assetid: c97b1f2f-51d8-4596-b38a-8a3f6f706be4
author: brianlic-msft
---

# Server Isolation GPOs


Each set of computers that have different users or computers accessing them require a separate server isolation zone. Each zone requires one GPO for each version of Windows running on computers in the zone. The Woodgrove Bank example has an isolation zone for their computers that run SQL Server. The server isolation zone is logically considered part of the encryption zone. Therefore, server isolation zone GPOs must also include rules for encrypting all isolated server traffic. Woodgrove Bank copied the encryption zone GPOs to serve as a starting point, and renamed them to reflect their new purpose.

All of the computer accounts for computers in the SQL Server server isolation zone are added to the group CG\_SRVISO\_WGBANK\_SQL. This group is granted Read and Apply Group Policy permissions in on the GPOs described in this section. The GPOs are only for server versions of Windows. Client computers are not expected to be members of the server isolation zone, although they can access the servers in the zone by being a member of a network access group (NAG) for the zone.

## <a href="" id="gpo-srviso-ws2008"></a>GPO\_SRVISO\_WS2008


This GPO is identical to the GPO\_DOMISO\_Encryption\_WS2008 GPO with the following changes:

-   The firewall rule that enforces encryption is modified to include the NAGs on the **Users and Computers** tab of the rule. The NAGs granted permission include CG\_NAG\_SQL\_Users and CG\_NAG\_SQL\_Computers.

    **Important**  
    Earlier versions of Windows support only computer-based authentication. If you specify that user authentication is mandatory, only users on computers that are running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008 R2 or Windows Server 2008 can connect.

     

**Next: **[Planning GPO Deployment](planning-gpo-deployment.md)

 

 





