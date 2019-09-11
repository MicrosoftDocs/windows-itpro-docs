---
title: Maintaining MBAM 1.0
description: Maintaining MBAM 1.0
author: dansimp
ms.assetid: 02ffb093-c364-4837-bbe8-23d4c09fbd3d
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Maintaining MBAM 1.0


After you complete all the necessary planning and then deploy Microsoft BitLocker Administration and Monitoring (MBAM), you can configure MBAM to run in a highly available fashion while using it to manage enterprise BitLocker encryption operations. The information in this section describes high availability options for MBAM, as well as how to move MBAM Server features if necessary.

## MBAM Management Pack


The Microsoft System Center Operations Manager Management Pack for MBAM is available for download from the Microsoft Download Center.

This management pack monitors the critical interactions in the server-side infrastructure, such as the connections between the web services and databases and the operational calls between websites and their supportive web service. It also uploads the requests between desktop clients and their respective receiving web service endpoints.

[Microsoft BitLocker Administration And Monitoring Management Pack](https://go.microsoft.com/fwlink/p/?LinkId=258390)

## Ensure high availability for MBAM 1.0


MBAM is designed to be fault-tolerant. If a server becomes unavailable, the users should not be negatively affected. The information in this section can be used to configure a highly available MBAM installation.

[High Availability for MBAM 1.0](high-availability-for-mbam-10.md)

## Move MBAM 1.0 features to another server


When you need to move an MBAM Server feature from one server computer to another, there is a specific order and required steps that you should follow to avoid loss of productivity or data. This section describes the steps that you should take to move one or more MBAM Server features to a different computer.

[How to Move MBAM 1.0 Features to Another Computer](how-to-move-mbam-10-features-to-another-computer.md)

## Other resources for maintaining MBAM


[Operations for MBAM 1.0](operations-for-mbam-10.md)

 

 





