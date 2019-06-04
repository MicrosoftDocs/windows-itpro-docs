---
title: Configuring Certificates to Support the App-V Web Management Service
description: Configuring Certificates to Support the App-V Web Management Service
author: dansimp
ms.assetid: b7960161-2c19-4cbf-a98a-d4b06f547dce
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Configuring Certificates to Support the App-V Web Management Service


The App-V Web Management Service must be configured to support SSL-based connections to help secure the communication. This process requires that the Web server or computer on which the Management Service is installed has a certificate issued to the service or computer.

The following scenarios illustrate how to obtain a certificate for this purpose:

1.  The company infrastructure already has a public key infrastructure (PKI) in place that automatically issues certificates to computers.

2.  The company infrastructure already has a PKI in place, although it does not automatically issue certificates to computers.

3.  The company infrastructure has no PKI in place.

In each of the preceding scenarios, the method for obtaining a certificate is different, but the end result is the same. The administrator must assign a certificate to the IIS Default Web Site and configure the App-V Web Management Service to require secure communications.

**Important**  
The name of the certificate must match the name of the server. It is a best practice to use fully qualified domain names (FQDNs) for the common name of the certificate.

 

App-V can use IIS servers to support different infrastructure configurations. For more information about configuring IIS servers to support HTTPS, see <https://go.microsoft.com/fwlink/?LinkId=151972>.

## Related topics


[How to Install and Configure the App-V Management Console for a More Secure Environment](how-to-install-and-configure-the-app-v-management-console-for-a-more-secure-environment.md)

 

 





