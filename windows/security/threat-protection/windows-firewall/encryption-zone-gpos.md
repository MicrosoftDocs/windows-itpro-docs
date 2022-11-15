---
title: Encryption Zone GPOs (Windows)
description: Learn how to add a device to an encryption zone by adding the device account to the encryption zone group in Windows Defender Firewall with Advanced Security.
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

# Encryption Zone GPOs


Handle encryption zones in a similar manner to the boundary zones. A device is added to an encryption zone by adding the device account to the encryption zone group. Woodgrove Bank has a single service that must be protected, and the devices that are running that service are added to the group CG\_DOMISO\_Encryption. This group is granted Read and Apply Group Policy permissions in on the GPO described in this section.

The GPO is only for server versions of Windows. Client devices aren't expected to participate in the encryption zone. If the need for one occurs, either create a new GPO for that version of Windows or expand the WMI filter attached to one of the existing encryption zone GPOs to make it apply to the client version of Windows.

-   [GPO\_DOMISO\_Encryption](gpo-domiso-encryption.md)
