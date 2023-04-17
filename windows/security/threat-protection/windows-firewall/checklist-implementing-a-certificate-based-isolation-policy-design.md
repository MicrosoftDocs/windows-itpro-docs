---
title: Checklist Implementing a Certificate-based Isolation Policy Design (Windows)
description: Use these references to learn about using certificates as an authentication option and configure a certificate-based isolation policy design.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/07/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
---

# Checklist: Implementing a Certificate-based Isolation Policy Design


This parent checklist includes cross-reference links to important concepts about using certificates as an authentication option in either a domain isolation or server isolation design.

> [!NOTE]
> Complete the tasks in this checklist in order. When a reference link takes you to a procedure, return to this topic after you complete the steps in that procedure so that you can proceed with the remaining tasks in this checklist

**Checklist: Implementing certificate-based authentication**

| Task | Reference |
| - | - |
| Review important concepts and examples for certificate-based authentication to determine if this design meets your implementation goals and the needs of your organization.| [Identifying Your Windows Defender Firewall with Advanced Security Deployment Goals](identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)<br/>[Certificate-based Isolation Policy Design](certificate-based-isolation-policy-design.md)<br/>[Certificate-based Isolation Policy Design Example](certificate-based-isolation-policy-design-example.md)<br/>[Planning Certificate-based Authentication](planning-certificate-based-authentication.md) |
| Install the Active Directory Certificate Services (AD CS) role as an enterprise root issuing certification authority (CA). This step is required only if you haven't already deployed a CA on your network.| |
| Configure the certificate template for workstation authentication certificates.| [Configure the Workstation Authentication Certificate Template](configure-the-workstation-authentication-certificate-template.md)| 
| Configure Group Policy to automatically deploy certificates based on your template to workstation devices. | [Configure Group Policy to Autoenroll and Deploy Certificates](configure-group-policy-to-autoenroll-and-deploy-certificates.md)| 
| On a test device, refresh Group Policy and confirm that the certificate is installed. | [Confirm That Certificates Are Deployed Correctly](confirm-that-certificates-are-deployed-correctly.md)| 
