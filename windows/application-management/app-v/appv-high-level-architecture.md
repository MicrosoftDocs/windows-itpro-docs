---
title: High-level architecture for App-V (Windows 10)
description: High-level Architecture for App-V.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.topic: article
---
# High-level architecture for App-V

>Applies to: Windows 10, version 1607

Use the following information to simplify your Microsoft Application Virtualization (App-V) deployment.

## Architecture overview

A typical App-V implementation consists of the following elements.

|Element|Description|
|---|---|
|App-V Management server|The App-V Management server provides overall management functionality for the App-V infrastructure. Additionally, you can install more than one instance of the management server in your environment which provides the following benefits:<br>**Fault tolerance and high availability**—installing and configuring the App-V Management server on two separate computers can help in situations when one of the servers is unavailable or offline. You can also help increase App-V availability by installing the Management server on multiple computers. In this scenario, consider using a network load balancer to keep server requests balanced.<br>**Scalability**—you can add additional management servers as necessary to support a high load. For example, you can install multiple servers behind a load balancer.|
|App-V Publishing Server|The App-V publishing server provides functionality for virtual application hosting and streaming. The publishing server does not require a database connection and supports HTTP and HTTPS protocols.<br>You can also help increase App-V availability by installing the Publishing server on multiple computers. You should also consider having a network load balancer to keep server requests balanced.|
|App-V Reporting Server|The App-V Reporting server lets authorized users run and view existing App-V reports and ad hoc reports for managing App-V infrastructure. The Reporting server requires a connection to the App-V reporting database. You can also help increase App-V availability by installing the Reporting server on multiple computers. You should also consider having a network load balancer to keep server requests balanced.|
|App-V Client|The App-V client enables packages created using App-V to run on target computers.|

>[!NOTE]
>If you are using App-V with electronic software distribution (ESD), you aren't required to use the App-V Management server. However, you can still use App-V's reporting and streaming functionality.

## Related topics

- [Getting Started with App-V](appv-getting-started.md)
