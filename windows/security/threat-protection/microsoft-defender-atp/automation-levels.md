---
title: Automation levels in automated investigation and remediation
description: Get an overview of automation levels and how they work in Microsoft Defender for Endpoint
keywords: automated, investigation, level, defender atp
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.technology: windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.date: 10/21/2020
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
ms.topic: conceptual
ms.reviewer: ramarom, evaldm, isco, mabraitm, chriggs
ms.custom: AIR
---

# Automation levels in automated investigation and remediation capabilities

Depending on how you set your organization's level of automation, each automated investigation either requires user approval (default) or automatically takes action to remediate threats. The following table describes each level of automation and how it works.

|Automation level | Description|
|:---|:---|
|**Full - remediate threats automatically** <br/>(also referred to as *full automation*)| With full automation, remediation actions are performed automatically, and can be viewed in the [Action Center](auto-investigation-action-center.md) on the **History** tab. If necessary, a remediation action can be undone.<br/><br/>***Full automation is recommended** and is selected by default for tenants that were created on or after August 16, 2020 with Microsoft Defender for Endpoint, with no device groups defined yet.* <br/><br/>*If you do have a device group defined, you will have an additional device group called **Ungrouped devices (default)**, which is set to full automation.* |
|**Semi - require approval for any remediation** <br/>(also referred to as *semi-automation*)| With this level of semi-automation, approval is required for *any* remediation action. Such pending actions can be viewed and approved in the [Action Center](auto-investigation-action-center.md).<br/><br/>*This level of semi-automation is selected by default for tenants that were created before August 16, 2020 with Microsoft Defender ATP, with no device groups defined.*<br/><br/>*If you do have a device group defined, you will have an additional device group called **Ungrouped devices (default)**, which will be set to **Semi - require approval for any remediation**.*|
|**Semi - require approval for core folders remediation**  | Approval is required for remediation actions on files or executables that are in core folders. Pending actions can be viewed and approved in the [Action Center](auto-investigation-action-center.md). <br/><br/>Remediation actions can be taken automatically on files or executables that are in other (non-core) folders. Core folders include operating system directories, such as the **Windows** (`\windows\*`). |
|**Semi - require approval for non-temp folders remediation** | Approval is required for remediation actions on files or executables that are not in temporary folders. Pending actions can be viewed and approved in the [Action Center](auto-investigation-action-center.md).<br/><br/> Remediation actions can be taken automatically on files or executables that are in temporary folders. Temporary folders can include the following examples: <br/>- `\users\*\appdata\local\temp\*`<br/>- `\documents and settings\*\local settings\temp\*` <br/>- `\documents and settings\*\local settings\temporary\*`<br/>- `\windows\temp\*`<br/>- `\users\*\downloads\*`<br/>- `\program files\` <br/>- `\program files (x86)\*`<br/>- `\documents and settings\*\users\*` |
|**No automated response** | Automated investigation does not run on your organization's devices. As a result, no remediation actions are taken or pending as a result of automated investigation. <br/><br/>***This option is not recommended**, because it reduces the security posture of your organization's devices. [Consider setting up or changing your device groups to use **Full** or **Semi** automation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/machine-groups)* |


> [!IMPORTANT]
> - New tenants (which include tenants that were created on or after August 16, 2020) with Microsoft Defender for Endpoint are set to full automation by default. 
> - Full automation has proven to be reliable, efficient, and safe, and is recommended for all customers. Data collected and analyzed over the past year shows that customers who are using full automation had 40% more high-confidence malware samples removed than customers using lower levels of automation. Full automation frees up your critical security resources so they can focus more on your strategic initiatives.
> - If your security team has defined device groups that include certain levels of automation, those settings are not changed by new default settings that are rolled out. However, we recommend using full automation wherever possible.
> - You can keep your default automation setting, or change it according to your organizational needs. To change your settings, [set your level of automation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-automated-investigations-remediation#set-up-device-groups).

