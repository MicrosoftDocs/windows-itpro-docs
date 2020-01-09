---
title: Deploying Windows 10 with the Microsoft Deployment Toolkit (MDT)
description: This guide will walk you through the process of deploying Windows 10 in an enterprise environment using the Microsoft Deployment Toolkit (MDT).
ms.assetid: 837f009c-617e-4b3f-9028-2246067ee0fb
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: deploy, tools, configure, script
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.pagetype: mdt
ms.topic: article
---

# Deploying Windows 10 with MDT

**Applies to**
- Windows 10

This guide will walk you through the process of deploying Windows 10 in an enterprise environment using the Microsoft Deployment Toolkit (MDT). A summary topics in the guide is provided in the table below. Complete each of the topics below in the order they are listed.

This topic also provides a detailed description of the [proof of concept environment](#proof-of-concept-environment) used in this guide, and [sample files](#sample-files) are provided below to help you put the information you learn into practice more quickly.

## Proof-of-concept environment

For the purposes of this guide we will use the following servers and client machines: DC01, MDT01, CM01, PC0001, and PC0002.

![computers](../images/mdt-01-fig01.png)

DC01 is a domain controller; the other servers and client machines are members of the domain contoso.com for the fictitious Contoso Corporation. All servers are running Windows Server 2012 R2, but you can also use a later version of Windows Server with minor adjustments to some procedures.



## Sample files

In order to help you put the information you learn into practice more quickly, we recommend that you download a small set of sample files for the fictitious Contoso Corporation:
-   [Gather.ps1](https://go.microsoft.com/fwlink/p/?LinkId=619361). This sample Windows PowerShell script performs the MDT Gather process in a simulated MDT environment. This allows you to test the MDT gather process and check to see if it is working correctly without performing a full Windows deployment.
-   [Set-OUPermissions.ps1](https://go.microsoft.com/fwlink/p/?LinkId=619362). This sample Windows PowerShell script creates a domain account and then configures OU permissions to allow the account to join machines to the domain in the specified OU.
-   [MDTSample.zip](https://go.microsoft.com/fwlink/p/?LinkId=619363). This sample web service shows you how to configure a computer name dynamically using MDT.

## Related topics

[Microsoft Deployment Toolkit downloads and resources](https://go.microsoft.com/fwlink/p/?LinkId=618117)<br>
[Windows 10 deployment scenarios](../windows-10-deployment-scenarios.md)<br>
[Windows 10 deployment tools](../windows-deployment-scenarios-and-tools.md)<br>
[Deploy Windows 10 with System Center Configuration Manager](../deploy-windows-sccm/deploy-windows-10-with-system-center-configuration-manager.md)<br>
[Deploy Windows To Go in your organization](../deploy-windows-to-go.md)<br>
[Sideload apps in Windows 10](/windows/application-management/sideload-apps-in-windows-10)<br>
[Volume Activation for Windows 10](../volume-activation/volume-activation-windows-10.md)
