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
-   Windows 10

This guide will walk you through the process of deploying Windows 10 in an enterprise environment using the Microsoft Deployment Toolkit (MDT).

To download the latest version of MDT, visit the [MDT resource page](https://go.microsoft.com/fwlink/p/?LinkId=618117).

MDT is a unified collection of tools, processes, and guidance for automating desktop and server deployment. In addition to reducing deployment time and standardizing desktop and server images, MDT enables you to more easily manage security and ongoing configurations. MDT builds on top of the core deployment tools in the Windows Assessment and Deployment Kit (Windows ADK) with additional guidance and features designed to reduce the complexity and time required for deployment in an enterprise environment.

MDT supports the deployment of Windows 10, as well as Windows 7, Windows 8, Windows 8.1, and Windows Server. It also includes support for zero-touch installation (ZTI) with Microsoft System Center Configuration Manager.

For more information about MDT, see [Get started with the Microsoft Deployment Toolkit (MDT)](get-started-with-the-microsoft-deployment-toolkit.md) for an overview of MDT, including a description of many of the key features and options. A list of components in MDT that support Lite Touch Installation (LTI) is also provided.

## In this guide

- [The proof of concept environment](#proof-of-concept-environment) used in this guide is described. 
- [Step by step procedures](#deploy-windows-10-with-mdt) are provided to guide you through several deployment scenarios.
- [Sample files](#sample-files) are provided to help you put the information you learn into practice more quickly.

## Proof-of-concept environment

For the purposes of this guide we will use the following servers and client machines: DC01, MDT01, CM01, PC0001, and PC0002.

![computers](../images/mdt-01-fig01.png)

DC01 is a domain controller; the other servers and client machines are members of the domain contoso.com for the fictitious Contoso Corporation.

### Server details

- **DC01.** A computer running Windows Server 2012 R2, fully patched with the latest security updates, and configured as an Active Directory Domain Controller, DNS Server, and (optionally) DHCP Server for the contoso.com domain.
  - Server name: DC01
  - IP Address: 10.169.5.147
  - Roles: DNS, DHCP, and domain controller
- **MDT01.** A computer running Windows Server 2012 R2, fully patched with the latest security updates, and configured as a member server in the contoso.com domain. This is an application server that is used to run MDT.
  - Server name: MDT01
  - IP Address: 10.169.5.148
  - Data drive D: with at least 100GB of free space.
- **CM01.** A computer running Windows Server 2012 R2, fully patched with the latest security updates, and configured as a member server in the contoso.com domain. This is a System Center Configuration Manager site server.
  - Server name: CM01
  - IP Address: 10.169.5.149
  - Data drive D: with at least 100GB of free space.

### Client details

- **PC0001.** A computer running Windows 10 Enterprise x64, fully patched with the latest security updates, and configured as a member in the contoso.com domain. This machine is referenced as the admin workstation.
  - Client name: PC0001
  - IP Address: DHCP
- **PC0002.** A computer running Windows 7 SP1 Enterprise x64, fully patched with the latest security updates, and configured as a member in the contoso.com domain. This machine is referenced during the migration scenarios.
  - Client name: PC0002
  - IP Address: DHCP
- **PC0003 - PC0007** These are other client computers similar to PC0001 and PC0002 that are used in the guide for various scenarios. The device names are incremented to avoid confusion. For example, PC0003 and PC0004 are running Windows 7 just like PC0002, but are used for Config Mgr refresh and replace scenarios, respectively.

### Network environment

For this lab, all server and client computers are on the same subnet. This is not required, but each server and client computer must be able to connect to each other, including resolution of all DNS names and Active Directory information for the contoso.com domain.  Internet connectivity is also requried to download OS and applicaton updates.

### Organizational unit structure

![figure 2](../images/mdt-01-fig02.jpg)

The organizational unit (OU) structure used in this guide.

### Deploy Windows 10 with MDT

See the following topics when you are ready to try deploying Windows 10 with MDT. You must complete each of these topics in the order they are listed.

| Topic | Description | Required / optional |
| :---   | :---      | :--- |
| [Prepare for deployment with MDT](prepare-for-windows-deployment-with-mdt.md) | Installation of MDT.  | Required |
| [Create a Windows 10 reference image](create-a-windows-10-reference-image.md) | Create a deployment share, configure rules and settings, and import all the applications and operating system files required to build a Windows 10 reference image.       | Required |
| [Deploy a Windows 10 image using MDT](deploy-a-windows-10-image-using-mdt.md) | Take a reference image for Windows 10 and deploy that image to your environment using MDT.       | Required  |
| [Build a distributed environment for Windows 10 deployment](build-a-distributed-environment-for-windows-10-deployment.md) | Replicate your Windows 10 deployment shares to facilitate the deployment of Windows 10 in remote or branch locations. | Optional  |
| [Refresh a Windows 7 computer with Windows 10](refresh-a-windows-7-computer-with-windows-10.md) | Use MDT Lite Touch Installation (LTI) to upgrade a Windows 7 computer to a Windows 10 computer using the computer refresh process.  | Required |
| [Replace a Windows 7 computer with a Windows 10 computer](replace-a-windows-7-computer-with-a-windows-10-computer.md) | Use MDT Lite Touch Installation (LTI) to replace the a Windows 7 computer with a Windows 10 computer using the replace process.  | Required  |
| [Perform an in-place upgrade to Windows 10 with MDT](upgrade-to-windows-10-with-the-microsoft-deployment-toolkit.md) | Use an MDT task sequence to completely automate the in-place upgrade process. | Required |
| [Configure MDT settings](configure-mdt-settings.md) | Learn about configuring MDT customizations for your environment. | Optional |

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
