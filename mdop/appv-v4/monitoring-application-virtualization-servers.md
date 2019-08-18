---
title: Monitoring Application Virtualization Servers
description: Monitoring Application Virtualization Servers
author: eavena
ms.assetid: d84355ae-4fe4-41d9-ac3a-3eaa32d9a61f
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Monitoring Application Virtualization Servers


To simplify Application Virtualization (App-V) Server management, you can use the System Center Operations Manager 2007 Management Pack. This Management Pack supports only Application Virtualization (App-V) 4.5 servers; it does not support previous server versions. The Management Pack maximizes App-V Server availability for handling App-V Client requests.

## Status Indicators


The App-V Server health status indicators are color-coded. The colors represent the following status values:

-   No color indicates that the server is running without non-recoverable errors.

-   Yellow indicates that one of the components is not functioning correctly. The overall functionality of the server is degraded, but the server is still available.

-   Red indicates that the server is not available and that it cannot provide key services or communicate with external service dependencies.

## Monitoring Criteria


The Management Pack monitors the following aspects of server health:

-   Server Status—monitors server events to validate that the server is providing its expected services.

-   Data Store Access—tracks the ability of one or more of the App-V Management Servers to access and communicate with the App-V data store.

-   Content Data Access—monitors access to the \\Content directory, which might be a local directory or a network share, and the ability to read the requested files.

-   Security—reports errors with the App-V Server’s certificate and secure communications.

-   Client Request Handling—monitors the ability of one or more of the App-V Servers to handle and correctly respond to client requests. These requests include publishing such items as configuration requests, package load requests, and out of sequence requests.

-   Server Configuration—checks the configuration settings of the App-V Server. These configuration settings include the settings in the registry and in the App-V data store.

## Server Differences


The main differences between the App-V Management Server and the App-V Streaming Server are as follows:

-   App-V Management Servers can provide publishing, streaming, management, and reporting services. Therefore, the Management Pack can manage more aspects of the App-V Management Server than it can manage on the App-V Streaming Server, which provides only package streaming.

-   The App-V Streaming Server does not have an App-V data store, so data store access is not monitored. The configuration information for the App-V Streaming Server is managed in the registry.

-   The App-V Streaming Server does not use the App-V Server Management Console interface; use other tools to manage the configuration.

## Related topics


[Application Virtualization Server](application-virtualization-server.md)

 

 





