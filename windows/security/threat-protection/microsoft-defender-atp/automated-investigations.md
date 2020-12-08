---
title: Use automated investigations to investigate and remediate threats
description: Understand the automated investigation flow in Microsoft Defender for Endpoint.
keywords: automated, investigation, detection, source, threat types, id, tags, devices, duration, filter export, defender atp
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.technology: windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.date: 12/07/2020
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

# Overview of automated investigations

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146806)


Your security operations team receives an alert whenever a malicious or suspicious artifact is detected by Microsoft Defender for Endpoint. Security operations teams face challenges in addressing the multitude of alerts that arise from the seemingly never-ending flow of threats. Microsoft Defender for Endpoint includes automated investigation and remediation (AIR) capabilities that can help your security operations team address threats more efficiently and effectively. Want to see how it works? Watch the following video:

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bOeh]

The technology in automated investigation uses various inspection algorithms and is based on processes that are used by security analysts. AIR capabilities are designed to examine alerts and take immediate action to resolve breaches. AIR capabilities significantly reduce alert volume, allowing security operations to focus on more sophisticated threats and other high-value initiatives. The [Action center](auto-investigation-action-center.md) keeps track of all the investigations that were initiated automatically, along with details, such as investigation status, detection source, and any pending or completed actions.

> [!TIP]
> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-automated-investigations-abovefoldlink).

## How the automated investigation starts

When an alert is triggered, a security playbook goes into effect. Depending on the security playbook, an automated investigation can start. For example, suppose a malicious file resides on a device. When that file is detected, an alert is triggered, and the automated investigation process begins. Microsoft Defender for Endpoint checks to see if the malicious file is present on any other devices in the organization. Details from the investigation, including verdicts (*Malicious*, *Suspicious*, and *No threats found*) are available during and after the automated investigation. To learn more about what happens after a verdict is reached, see [Automated investigation results and remediation actions](manage-auto-investigation.md#automated-investigation-results-and-remediation-actions). 

>[!NOTE]
>Currently, AIR only supports the following OS versions:
>- Windows Server 2019
>- Windows 10, version 1709 (OS Build 16299.1085 with [KB4493441](https://support.microsoft.com/help/4493441/windows-10-update-kb4493441)) or later
>- Windows 10, version 1803 (OS Build 17134.704 with [KB4493464](https://support.microsoft.com/help/4493464/windows-10-update-kb4493464)) or later
>- Windows 10, version [1803](https://docs.microsoft.com/windows/release-information/status-windows-10-1809-and-windows-server-2019) or later

## Details of an automated investigation

During and after an automated investigation, you can view details about the investigation. Select a triggering alert to view the investigation details. From there, you can go to the **Investigation graph**, **Alerts**, **Devices**, **Evidence**, **Entities**, and **Log** tabs.

|Tab |Description |
|:--|:--|
|**Alerts**| The alert(s) that started the investigation.|
|**Devices** |The device(s) where the threat was seen.|
|**Evidence** |The entities that were found to be malicious during an investigation.|
|**Entities** |Details about each analyzed entity, including a determination for each entity type (*Malicious*, *Suspicious*, or *No threats found*). |
|**Log** |The chronological, detailed view of all the investigation actions taken on the alert.|
|**Pending actions** |If there are any actions awaiting approval as a result of the investigation, the **Pending actions** tab is displayed. On the **Pending actions** tab, you can approve or reject each action. |

> [!IMPORTANT]
> Go to the **[Action center](auto-investigation-action-center.md)** to get an aggregated view all pending actions and manage remediation actions. The **Action center** also acts as an audit trail for all automated investigation actions. 

## How an automated investigation expands its scope

While an investigation is running, any other alerts generated from the device are added to an ongoing automated investigation until that investigation is completed. In addition, if the same threat is seen on other devices, those devices are added to the investigation.

If an incriminated entity is seen in another device, the automated investigation process expands its scope to include that device, and a general security playbook starts on that device. If 10 or more devices are found during this expansion process from the same entity, then that expansion action requires an approval, and is visible on the **Pending actions** tab.

## How threats are remediated

As alerts are triggered, and an automated investigation runs, a verdict is generated for each piece of evidence investigated. Verdicts can be *Malicious*, *Suspicious*, or *No threats found*. 

As verdicts are reached, automated investigations can result in one or more remediation actions. Examples of remediation actions include sending a file to quarantine, stopping a service, removing a scheduled task, and more. (See [Remediation actions](manage-auto-investigation.md#remediation-actions).)  

Depending on the [level of automation](automation-levels.md) set for your organization, as well as other security settings, remediation actions can occur automatically or only upon approval by your security operations team. Additional security settings that can affect automatic remediation include [protection from potentially unwanted applications](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus) (PUA). 

All remediation actions, whether pending or completed, can be viewed in the [Action Center](auto-investigation-action-center.md) ([https://securitycenter.windows.com](https://securitycenter.windows.com)). If necessary, your security operations team can undo a remediation action. (See [Review and approve remediation actions following an automated investigation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-auto-investigation).)

## Next steps

- [Get an overview of the automated investigations dashboard](manage-auto-investigation.md)
- [Learn more about automation levels](automation-levels.md)
- [See the interactive guide: Investigate and remediate threats with Microsoft Defender for Endpoint](https://aka.ms/MDATP-IR-Interactive-Guide)

## See also

- [PUA protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus)
- [Automated investigation and response in Microsoft Defender for Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air)
- [Automated investigation and response in Microsoft 365 Defender](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-autoir)
