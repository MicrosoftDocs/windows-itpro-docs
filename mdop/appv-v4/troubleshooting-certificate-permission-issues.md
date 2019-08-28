---
title: Troubleshooting Certificate Permission Issues
description: Troubleshooting Certificate Permission Issues
author: manikadhiman
ms.assetid: 06b8cbbc-93fd-44aa-af39-2d780792d3c3
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Troubleshooting Certificate Permission Issues


After the installation of App-V 4.5, if the private key has not been configured with the proper ACL for the Network Service, an event is logged in the NT Event Log and an entry is placed in the `Sft-server.log` file.

## Error Messages


### Windows Server 2003

Event ID 36870—A fatal error occurred when attempting to access the SSL server credential private key. The error code returned from the cryptographic module is 0x80090016.

### Windows Server 2008

Event ID 36870—A fatal error occurred when attempting to access the SSL server credential private key. The error code returned from the cryptographic module is 0x8009030d.

## Sft-server.log


The following error is placed in the `sft-server.log` file located in the `%ProgramFiles%\Microsoft System Center App Virt Management Server\App Virt Management Server\logs` directory:

Certificate could not be loaded. Error code \[-2146893043\]. Make sure that the Network Service account has proper access to the certificate and its corresponding private key file.

 

 





