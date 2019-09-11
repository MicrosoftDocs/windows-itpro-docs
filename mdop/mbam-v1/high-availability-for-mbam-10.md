---
title: High Availability for MBAM 1.0
description: High Availability for MBAM 1.0
author: dansimp
ms.assetid: 5869ecf8-1056-4c32-aecb-838a37e05d39
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# High Availability for MBAM 1.0


This topic describes how to configure a highly available installation of Microsoft BitLocker Administration and Monitoring (MBAM).

## High Availability Scenarios for MBAM


Microsoft BitLocker Administration and Monitoring (MBAM) is designed to be fault-tolerant. If a server becomes unavailable, the users should not be negatively affected. For example, if the MBAM agent cannot connect to the MBAM web server, users should not be prompted for action.

When you plan your MBAM installation, consider the following concerns that can affect the availability of the MBAM service:

-   Drive encryption and recovery password – If a recovery password cannot be escrowed, the encryption will not start on the client computer.

-   Compliance status data upload – If the server that hosts the compliance status report service is not available, the compliance data will not remain current.

-   Help Desk recovery key access - If the Help Desk cannot access MBAM database information, they will be unable to provide recovery keys to users.

-   Availability of reports – Reports will not be available if the server that hosts the Compliance and Audit Reports is not available.

The main concern for MBAM high availability is BitLocker key recovery availability. If the help desk cannot provide recovery keys, users who are locked out cannot unlock their computers. To avoid this problem, consider implementing redundant web servers and databases to ensure high availability.

For more information about MBAM scalability and high availability, see the [MBAM Scalability White Paper](https://go.microsoft.com/fwlink/p/?LinkId=229025) (https://go.microsoft.com/fwlink/p/?LinkId=229025).

For general guidance on high availability for Microsoft SQL Server, see [High Availability](https://go.microsoft.com/fwlink/p/?LinkId=221504) (https://go.microsoft.com/fwlink/p/?LinkId=221504).

For general guidance on availability and scalability for web servers, see [Availability and Scalability](https://go.microsoft.com/fwlink/p/?LinkId=221503) (https://go.microsoft.com/fwlink/p/?LinkId=221503).

## Related topics


[Maintaining MBAM 1.0](maintaining-mbam-10.md)

 

 





