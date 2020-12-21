---
title: Extend advanced hunting coverage with the right settings 
description: Check auditing settings on Windows devices and other settings to help ensure that you get the most comprehensive data in advanced hunting  
keywords: advanced hunting, incident, pivot, entity, audit settings, user account management, security group management, threat hunting, cyber threat hunting, search, query, telemetry, mdatp, Microsoft Defender ATP, Microsoft Defender Advanced Threat Protection, Windows Defender, Windows Defender ATP, Windows Defender Advanced Threat Protection 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 10/10/2020
---

# Extend advanced hunting coverage with the right settings

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

[Advanced hunting](advanced-hunting-overview.md) relies on data coming from across your organization. To get the most comprehensive data possible, ensure that you have the correct settings in the corresponding data sources.

## Advanced security auditing on Windows devices

Turn on these advanced auditing settings to ensure you get data about activities on your devices, including local account management, local security group management, and service creation.

Data | Description | Schema table | How to configure
-|-|-|-
Account management | Events captured as various `ActionType` values indicating local account creation, deletion, and other account-related activities | [DeviceEvents](advanced-hunting-deviceevents-table.md) | - Deploy an advanced security audit policy: [Audit User Account Management](https://docs.microsoft.com/windows/security/threat-protection/auditing/audit-user-account-management)<br> - [Learn about advanced security audit policies](https://docs.microsoft.com/windows/security/threat-protection/auditing/advanced-security-auditing)
Security group management | Events captured as various `ActionType` values indicating local security group creation and other local group management activities | [DeviceEvents](advanced-hunting-deviceevents-table.md) | - Deploy an advanced security audit policy: [Audit Security Group Management](https://docs.microsoft.com/windows/security/threat-protection/auditing/audit-security-group-management)<br> - [Learn about advanced security audit policies](https://docs.microsoft.com/windows/security/threat-protection/auditing/advanced-security-auditing)
Service installation | Events captured with the `ActionType` value `ServiceInstalled`, indicating that a service has been created | [DeviceEvents](advanced-hunting-deviceevents-table.md) | - Deploy an advanced security audit policy: [Audit Security System Extension](https://docs.microsoft.com/windows/security/threat-protection/auditing/audit-security-system-extension)<br> - [Learn about advanced security audit policies](https://docs.microsoft.com/windows/security/threat-protection/auditing/advanced-security-auditing)

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Custom detections overview](overview-custom-detections.md)
