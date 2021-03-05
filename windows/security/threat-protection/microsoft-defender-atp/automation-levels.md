---
title: Automation levels in automated investigation and remediation
description: Get an overview of automation levels and how they work in Microsoft Defender for Endpoint
keywords: automated, investigation, level, defender atp
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.technology: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.date: 10/22/2020
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

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

Automated investigation and remediation (AIR) capabilities in Microsoft Defender for Endpoint can be configured to one of several levels of automation. Your automation level affects whether remediation actions following AIR investigations are taken automatically or only upon approval.  
- *Full automation* (recommended) means remediation actions are taken automatically on artifacts determined to be malicious.
- *Semi-automation* means some remediation actions are taken automatically, but other remediation actions await approval before being taken. (See the table in [Levels of automation](#levels-of-automation).)
- All remediation actions, whether pending or completed, are tracked in the Action Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)). 

> [!TIP]
> For best results, we recommend using full automation when you [configure AIR](configure-automated-investigations-remediation.md). Data collected and analyzed over the past year shows that customers who are using full automation had 40% more high-confidence malware samples removed than customers who are using lower levels of automation. Full automation can help free up your security operations resources to focus more on your strategic initiatives.

## Levels of automation

The following table describes each level of automation and how it works.

|Automation level | Description|
|:---|:---|
|**Full - remediate threats automatically** <br/>(also referred to as *full automation*)| With full automation, remediation actions are performed automatically. All remediation actions that are taken can be viewed in the [Action Center](auto-investigation-action-center.md) on the **History** tab. If necessary, a remediation action can be undone.<br/><br/>***Full automation is recommended** and is selected by default for tenants that were created on or after August 16, 2020 with Microsoft Defender for Endpoint, with no device groups defined yet.*  |
|**Semi - require approval for any remediation** <br/>(also referred to as *semi-automation*)| With this level of semi-automation, approval is required for *any* remediation action. Such pending actions can be viewed and approved in the [Action Center](auto-investigation-action-center.md), on the **Pending** tab.<br/><br/>*This level of semi-automation is selected by default for tenants that were created before August 16, 2020 with Microsoft Defender ATP, with no device groups defined.*|
|**Semi - require approval for core folders remediation** <br/>(also a type of *semi-automation*)  | With this level of semi-automation, approval is required for any remediation actions needed on files or executables that are in core folders. Core folders include operating system directories, such as the **Windows** (`\windows\*`).<br/><br/>Remediation actions can be taken automatically on files or executables that are in other (non-core) folders. <br/><br/>Pending actions for files or executables in core folders can be viewed and approved in the [Action Center](auto-investigation-action-center.md), on the **Pending** tab. <br/><br/>Actions that were taken on files or executables in other folders can be viewed in the [Action Center](auto-investigation-action-center.md), on the **History** tab. |
|**Semi - require approval for non-temp folders remediation** <br/>(also a type of *semi-automation*)| With this level of semi-automation, approval is required for any remediation actions needed on files or executables that are *not* in temporary folders. <br/><br/>Temporary folders can include the following examples: <br/>- `\users\*\appdata\local\temp\*`<br/>- `\documents and settings\*\local settings\temp\*` <br/>- `\documents and settings\*\local settings\temporary\*`<br/>- `\windows\temp\*`<br/>- `\users\*\downloads\*`<br/>- `\program files\` <br/>- `\program files (x86)\*`<br/>- `\documents and settings\*\users\*`<br/><br/>Remediation actions can be taken automatically on files or executables that are in temporary folders. <br/><br/>Pending actions for files or executables that are not in temporary folders can be viewed and approved in the [Action Center](auto-investigation-action-center.md), on the **Pending** tab.<br/><br/>Actions that were taken on files or executables in temporary folders can be viewed and approved in the [Action Center](auto-investigation-action-center.md), on the **History** tab.   |
|**No automated response** <br/>(also referred to as *no automation*) | With no automation, automated investigation does not run on your organization's devices. As a result, no remediation actions are taken or pending as a result of automated investigation. However, other threat protection features, such as [protection from potentially unwanted applications](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus), can be in effect, depending on how your antivirus and next-generation protection features are configured.<br/><br/>***Using the *no automation* option is not recommended**, because it reduces the security posture of your organization's devices. [Consider setting up your automation level to full automation (or at least semi-automation)](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/machine-groups)*. |

## Important points about automation levels

- Full automation has proven to be reliable, efficient, and safe, and is recommended for all customers. Full automation frees up your critical security resources so they can focus more on your strategic initiatives.

- New tenants (which include tenants that were created on or after August 16, 2020) with Microsoft Defender for Endpoint are set to full automation by default.

- If your security team has defined device groups with a level of automation, those settings are not changed by the new default settings that are rolling out. 

- You can keep your default automation settings, or change them according to your organizational needs. To change your settings, [set your level of automation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-automated-investigations-remediation#set-up-device-groups).

## Next steps

- [Configure automated investigation and remediation capabilities in Microsoft Defender for Endpoint](configure-automated-investigations-remediation.md)

- [Visit the Action Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/auto-investigation-action-center#the-action-center)