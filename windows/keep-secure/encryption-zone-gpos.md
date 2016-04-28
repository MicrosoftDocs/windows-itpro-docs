---
title: Encryption Zone GPOs (Windows 10)
description: Encryption Zone GPOs
ms.assetid: eeb973dd-83a5-4381-9af9-65c43c98c29b
author: brianlic-msft
---

# Encryption Zone GPOs


Handle encryption zones in a similar manner to the boundary zones. A computer is added to an encryption zone by adding the computer account to the encryption zone group. Woodgrove Bank has a single service that must be protected, and the computers that are running that service are added to the group CG\_DOMISO\_Encryption. This group is granted Read and Apply Group Policy permissions in on the GPO described in this section.

The GPO is only for server versions of Windows. Client computers are not expected to participate in the encryption zone. If the need for one occurs, either create a new GPO for that version of Windows, or expand the WMI filter attached to one of the existing encryption zone GPOs to make it apply to the client version of Windows.

-   [GPO\_DOMISO\_Encryption\_WS2008](gpo-domiso-encryption-ws2008.md)

 

 





