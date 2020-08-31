---
title: Integrate Microsoft Defender ATP with other Microsoft solutions
ms.reviewer: 
description: Learn how Microsoft Defender ATP integrates with other Microsoft solutions, including Azure Advanced Threat Protection and Azure Security Center.
keywords: microsoft threat protection, conditional access, office, advanced threat protection, azure atp, azure security center, microsoft cloud app security
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Microsoft Defender ATP and other Microsoft solutions

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

## Integrate with other Microsoft solutions

 Microsoft Defender ATP directly integrates with various Microsoft solutions.

### Azure Advanced Threat Protection (Azure ATP)
 Suspicious activities are processes running under a user context. The integration between Microsoft Defender ATP and Azure ATP provides the flexibility of conducting cyber security investigation across activities and identities. 

### Azure Security Center
Microsoft Defender ATP provides a comprehensive server protection solution, including endpoint detection and response (EDR) capabilities on Windows Servers.

### Azure Information Protection
Keep sensitive data secure while enabling productivity in the workplace through data discovery and data protection.

### Conditional Access
Microsoft Defender ATP's dynamic device risk score is integrated into the Conditional Access evaluation, ensuring that only secure devices have access to resources. 


### Microsoft Cloud App Security
Microsoft Cloud App Security leverages Microsoft Defender ATP endpoint signals to allow direct visibility into cloud application usage including the use of unsupported cloud services (shadow IT) from all Microsoft Defender ATP monitored devices.

### Office 365 Advanced Threat Protection (Office 365 ATP)
[Office 365 ATP](https://docs.microsoft.com/office365/securitycompliance/office-365-atp) helps protect your organization from malware in email messages or files through ATP Safe Links, ATP Safe Attachments, advanced Anti-Phishing, and spoof intelligence capabilities. The integration between Office 365 ATP and Microsoft Defender ATP enables security analysts to go upstream to investigate the entry point of an attack. Through threat intelligence sharing, attacks can be contained and blocked. 

>[!NOTE]
> Office 365 ATP data is displayed for events within the last 30 days. For alerts, Office 365 ATP data is displayed based on first activity time. After that, the data is no longer available in Office 365 ATP.

### Skype for Business
The Skype for Business integration provides a way for analysts to communicate with a potentially compromised user or device owner through a simple button from the portal.

## Microsoft Threat Protection
 With Microsoft Threat Protection, Microsoft Defender ATP and various Microsoft security solutions form a unified pre- and post-breach enterprise defense suite that natively integrates across endpoint, identity, email, and applications to detect, prevent, investigate and automatically respond to sophisticated attacks. 
 
 [Learn more about Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection)


## Related topics
- [Configure integration and other advanced features](advanced-features.md)
- [Microsoft Threat Protection overview](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection)
- [Turn on Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-enable)
- [Protect users, data, and devices with Conditional Access](conditional-access.md)