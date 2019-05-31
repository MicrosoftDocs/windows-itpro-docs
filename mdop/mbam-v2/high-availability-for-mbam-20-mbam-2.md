---
title: High Availability for MBAM 2.0
description: High Availability for MBAM 2.0
author: msfttracyp
ms.assetid: 244ee013-9e2a-48d2-b842-4e10594fd74f
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# High Availability for MBAM 2.0


This topic provides basic information about a highly available installation of Microsoft BitLocker Administration and Monitoring (MBAM). High-availability scenarios are not fully supported in this version of MBAM, so they are not described here. It is recommended that you search related blogs and forums, where users describe how they have successfully configured high availability for MBAM in their environments.

## High Availability Scenarios for MBAM


Microsoft BitLocker Administration and Monitoring is designed to be fault-tolerant. If a server becomes unavailable, users should not be negatively affected. For example, if the MBAM agent cannot connect to the MBAM web server, users should not be prompted for action.

When you plan your MBAM installation, consider the following items, which can affect the availability of the MBAM service:

-   Drive encryption and recovery password – If a recovery password cannot be escrowed, the encryption does not start on the client computer.

-   Compliance status data upload – If the server that hosts the compliance status report service is not available, the compliance data does not remain current.

-   Help Desk recovery key access - If the Help Desk cannot access MBAM database information, the Help Desk cannot provide recovery keys to users.

-   Availability of reports –If the server that hosts the Compliance and Audit Reports is not available, reports will not be available.

## <a href="" id="how-the-mbam-backup-uses-the-volume-shadow-copy-service--vss--"></a>How the MBAM Backup Uses the Volume Shadow Copy Service (VSS)


MBAM 2.0 provides a Volume Shadow Copy Service (VSS) writer, called the Microsoft BitLocker Administration and Management Writer, which facilitates the backup of the Compliance and Audit Database and the Recovery Database.

The MBAM Server Windows Installer registers the MBAM VSS Writer. Any failure during the VSS writer registration causes the MBAM Server installation to roll back. In a topology where the Compliance and Audit Database and the Recovery Database are installed on different servers, a separate instance of MBAM VSS Writer is registered on each server. The MBAM VSS Writer is dependent on the SQL Server VSS Writer. The SQL Server VSS Writer is registered as part of the Microsoft SQL Server installation. Any backup technology that uses VSS writers to perform backup can discover the MBAM VSS Writer.

## Related topics


[Maintaining MBAM 2.0](maintaining-mbam-20-mbam-2.md)

 

 





