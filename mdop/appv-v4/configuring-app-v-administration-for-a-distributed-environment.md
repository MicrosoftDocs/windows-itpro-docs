---
title: Configuring App-V Administration for a Distributed Environment
description: Configuring App-V Administration for a Distributed Environment
author: dansimp
ms.assetid: 53971fa9-8319-435c-be74-c37feb9af1da
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Configuring App-V Administration for a Distributed Environment


When designing the infrastructure for your specific organization, you can install the App-V Management Web Service on a computer other than the computer where you install the App-V Management Server. Common reasons for separating these App-V components include the following:

-   Performance

-   Reliability

-   Availability

-   Scalability

Separating the Management Server and Management Web Service requires additional configuration for the infrastructure to operate correctly. When you separate these two features but do not complete the procedures described in this topic, the Management Console will connect to the Management Web Service but will not be able to properly authenticate with the data store. The Management Console will not load properly, and the administrator will not be able to complete any administrative tasks.

This behavior occurs because the Management Web Service cannot use the credentials, passed to it from the Management Console, to access the data store. The solution is to configure the Management Web Service server to be “Trusted for delegation.”

## Configuring Active Directory Domain Services


It is also necessary to configure Active Directory Domain Services properly to work in a distributed environment. This section includes the information you need configure Active Directory Domain Services.

### When SQL Service Uses Local System account

To set up the environment where the SQL Service uses the local system account, change the properties of the machine account of the Management Web Service to be trusted for delegation. For detailed procedures about how to do this, see [How to Configure the Server to be Trusted for Delegation](how-to-configure-the-server-to-be-trusted-for-delegation.md)

### When SQL Service Uses Domain-Based Account

To set up the environment where SQL Servers use domain-based service accounts, you need to consider whether or not a variety of factors apply, including the following:

-   Clustering of SQL Server

-   Replication

-   Automated tasks

-   Linked servers

For information about configuring Active Directory Domain Services when the SQL service uses a domain-based account, see <https://go.microsoft.com/fwlink/?LinkId=151968>.

 

 





