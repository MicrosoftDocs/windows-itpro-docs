---
title: Integrate Microsoft Defender for Endpoint with other Microsoft solutions
description: Learn how Microsoft Defender for Endpoint integrates with other Microsoft solutions, including Microsoft Defender for Identity and Azure Security Center.
author: mjcaparas
ms.author: macapara
ms.prod: m365-security
keywords: microsoft 365 defender, conditional access, office, advanced threat protection, microsoft defender for identity, microsoft defender for office, azure security center, microsoft cloud app security, azure sentinel
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Microsoft Defender for Endpoint and other Microsoft solutions

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

## Integrate with other Microsoft solutions

Microsoft Defender for Endpoint directly integrates with various Microsoft solutions.

### Azure Security Center
Microsoft Defender for Endpoint provides a comprehensive server protection solution, including endpoint detection and response (EDR) capabilities on Windows Servers.

### Azure Sentinel
The Microsoft Defender for Endpoint connector lets you stream alerts from Microsoft Defender for Endpoint into Azure Sentinel. This will enable you to more comprehensively analyze security events across your organization and build playbooks for effective and immediate response.

### Azure Information Protection
Keep sensitive data secure while enabling productivity in the workplace through data discovery and data protection.

### Conditional Access
Microsoft Defender for Endpoint's dynamic device risk score is integrated into the Conditional Access evaluation, ensuring that only secure devices have access to resources. 

### Microsoft Cloud App Security
Microsoft Cloud App Security leverages Microsoft Defender for Endpoint endpoint signals to allow direct visibility into cloud application usage including the use of unsupported cloud services (shadow IT) from all Microsoft Defender for Endpoint monitored devices.

### Microsoft Defender for Identity
Suspicious activities are processes running under a user context. The integration between Microsoft Defender for Endpoint and Azure ATP provides the flexibility of conducting cyber security investigation across activities and identities.

### Microsoft Defender for Office
[Defender for Office 365](https://docs.microsoft.com/office365/securitycompliance/office-365-atp) helps protect your organization from malware in email messages or files through ATP Safe Links, ATP Safe Attachments, advanced Anti-Phishing, and spoof intelligence capabilities. The integration between Office 365 ATP and Microsoft Defender for Endpoint enables security analysts to go upstream to investigate the entry point of an attack. Through threat intelligence sharing, attacks can be contained and blocked. 

>[!NOTE]
> Defender for Office 365 data is displayed for events within the last 30 days. For alerts, Defender for Office 365 data is displayed based on first activity time. After that, the data is no longer available in Defender for Office 365.

### Skype for Business
The Skype for Business integration provides a way for analysts to communicate with a potentially compromised user or device owner through a simple button from the portal.

## Microsoft 365 Defender
With Microsoft 365 Defender, Microsoft Defender for Endpoint and various Microsoft security solutions form a unified pre- and post-breach enterprise defense suite that natively integrates across endpoint, identity, email, and applications to detect, prevent, investigate and automatically respond to sophisticated attacks. 
 
[Learn more about Microsoft 365 Defender](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection)


## Related topics
- [Configure integration and other advanced features](advanced-features.md)
- [Microsoft 365 Defender overview](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection)
- [Turn on Microsoft 365 Defender](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-enable)
- [Protect users, data, and devices with Conditional Access](conditional-access.md)
