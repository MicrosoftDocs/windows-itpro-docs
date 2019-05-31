---
title: Checklist Implementing a Certificate-based Isolation Policy Design (Windows 10)
description: Checklist Implementing a Certificate-based Isolation Policy Design
ms.assetid: 1e34b5ea-2e77-4598-a765-550418d33894
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 08/17/2017
---

# Checklist: Implementing a Certificate-based Isolation Policy Design

**Applies to**
-   Windows 10
-   Windows Server 2016

This parent checklist includes cross-reference links to important concepts about using certificates as an authentication option in either a domain isolation or server isolation design.

>**Note:**  Complete the tasks in this checklist in order. When a reference link takes you to a procedure, return to this topic after you complete the steps in that procedure so that you can proceed with the remaining tasks in this checklist

**Checklist: Implementing certificate-based authentication**

| Task | Reference |
| - | - |
| Review important concepts and examples for certificate-based authentication to determine if this design meets your deployment goals and the needs of your organization.| [Identifying Your Windows Defender Firewall with Advanced Security Deployment Goals](identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)<br/>[Certificate-based Isolation Policy Design](certificate-based-isolation-policy-design.md)<br/>[Certificate-based Isolation Policy Design Example](certificate-based-isolation-policy-design-example.md)<br/>[Planning Certificate-based Authentication](planning-certificate-based-authentication.md) |
| Install the Active Directory Certificate Services (AD CS) role as an enterprise root issuing certification authority (CA). This step is required only if you have not already deployed a CA on your network.| |
| Configure the certificate template for workstation authentication certificates.| [Configure the Workstation Authentication Certificate Template](configure-the-workstation-authentication-certificate-template.md)| 
| Configure Group Policy to automatically deploy certificates based on your template to workstation devices. | [Configure Group Policy to Autoenroll and Deploy Certificates](configure-group-policy-to-autoenroll-and-deploy-certificates.md)| 
| On a test device, refresh Group Policy and confirm that the certificate is installed. | [Confirm That Certificates Are Deployed Correctly](confirm-that-certificates-are-deployed-correctly.md)| 
