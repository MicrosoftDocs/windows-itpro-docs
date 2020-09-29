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
ms.date: 09/28/2020
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
ms.reviewer: ramarom, evaldm, isco, mabraitm, chriggs
ms.custom: AIR
---

# Overview of automated investigations

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4bOeh]

Your security operations team receives an alert whenever a malicious or suspicious artifact is detected by Microsoft Defender for Endpoint. Security operations teams face challenges in addressing the multitude of alerts that arise from the seemingly never-ending flow of threats. Microsoft Defender for Endpoint includes automated investigation and remediation capabilities that can help your security operations team address threats more efficiently and effectively. 

Automated investigation uses various inspection algorithms and processes used by analysts to examine alerts and take immediate action to resolve breaches. These capabilities significantly reduce alert volume, allowing security operations to focus on more sophisticated threats and other high-value initiatives. The [Action center](auto-investigation-action-center.md) keeps track of all the investigations that were initiated automatically, along with details, such as investigation status, detection source, and any pending or completed actions.

> [!TIP]
> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-automated-investigations-abovefoldlink)

## How the automated investigation starts

When an alert is triggered, a security playbook goes into effect. Depending on the security playbook, an automated investigation can start. For example, suppose a malicious file resides on a device. When that file is detected, an alert is triggered, and the automated investigation process begins. Microsoft Defender for Endpoint checks to see if the malicious file is present on any other devices in the organization. Details from the investigation, including verdicts (*Malicious*, *Suspicious*, and *No threats found*) are available during and after the automated investigation.

>[!NOTE]
>Currently, automated investigation only supports the following OS versions:
>- Windows Server 2019
>- Windows 10, version 1709 (OS Build 16299.1085 with [KB4493441](https://support.microsoft.com/help/4493441/windows-10-update-kb4493441)) or later
>- Windows 10, version 1803 (OS Build 17134.704 with [KB4493464](https://support.microsoft.com/help/4493464/windows-10-update-kb4493464)) or later
>- Later versions of Windows 10

## Details of an automated investigation

During and after an automated investigation, you can view details about the investigation. Select a triggering alert to view the investigation details. From there, you can go to the **Investigation graph**, **Alerts**, **Devices**, **Evidence**, **Entities**, and **Log** tabs.

|Tab |Description |
|--|--|
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

Depending on how you set up the device groups and their level of automation, each automated investigation either requires user approval (default) or automatically takes action to remediate threats.

> [!NOTE]
> Microsoft Defender for Endpoint tenants created on or after August 16, 2020 have **Full - remediate threats automatically** selected by default. You can keep the default setting, or change it according to your organizational needs. To change your settings, [adjust your device group settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-automated-investigations-remediation#set-up-device-groups).

You can configure the following levels of automation:

|Automation level | Description|
|---|---|
|**Full - remediate threats automatically** | All remediation actions are performed automatically. Remediation actions that were taken can be viewed in the [Action Center](auto-investigation-action-center.md), on the **History** tab.<br/><br/>***This option is recommended** and is selected by default for tenants that were created on or after August 16, 2020 with Microsoft Defender for Endpoint, with no device groups defined yet.* <br/><br/>*If you do have a device group defined, you will also have a device group called **Ungrouped devices (default)**, which will be set to **Full - remediate threats automatically**.* |
|**Semi - require approval for core folders remediation** | Approval is required for remediation actions on files or executables that are in core folders. Pending actions can be viewed and approved in the [Action Center](auto-investigation-action-center.md). <br/><br/>Remediation actions can be taken automatically on files or executables that are in other (non-core) folders. Core folders include operating system directories, such as the **Windows** (`\windows\*`). |
|**Semi - require approval for non-temp folders remediation** | Approval is required for remediation actions on files or executables that are not in temporary folders. Pending actions can be viewed and approved in the [Action Center](auto-investigation-action-center.md).<br/><br/> Remediation actions can be taken automatically on files or executables that are in temporary folders. Temporary folders can include the following examples: <br/>- `\users\*\appdata\local\temp\*`<br/>- `\documents and settings\*\local settings\temp\*` <br/>- `\documents and settings\*\local settings\temporary\*`<br/>- `\windows\temp\*`<br/>- `\users\*\downloads\*`<br/>- `\program files\` <br/>- `\program files (x86)\*`<br/>- `\documents and settings\*\users\*` |
|**Semi - require approval for any remediation** | Approval is required for any remediation action. Pending actions can be viewed and approved in the [Action Center](auto-investigation-action-center.md).<br/><br/>*This option is selected by default for tenants that were created before August 16, 2020 with Microsoft Defender ATP, with no device groups defined.*<br/><br/>*If you do have a device group defined, you will also have a device group called **Ungrouped devices (default)**, which will be set to **Semi - require approval for any remediation**.*|
|**No automated response** | Automated investigation does not run on your organization's devices. As a result, no remediation actions are taken or pending as a result of automated investigation. <br/><br/>***This option is not recommended**, because it reduces the security posture of your organization's devices. [Consider setting up or changing your device groups to use **Full** or **Semi** automation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/machine-groups)* |


> [!IMPORTANT]
> Regarding automation levels and default settings:
> - If your tenant already has device groups defined, then the automation level settings are not changed for those device groups.
> - If your tenant was onboarded to Microsoft Defender for Endpoint *before* August 16, 2020, and you have not defined a device group, your organization's default setting is **Semi - require approval for any remediation**.
> - If your tenant was onboarded to Microsoft Defender for Endpoint *before* August 16, 2020, and you do have a device group defined, you also have an **Ungrouped devices (default)** device group that is set to **Semi - require approval for any remediation**. 
> - If your tenant was onboarded to Microsoft Defender for Endpoint *on or after* August 16, 2020, and you have not defined a device group, your orgnaization's default setting is **Full - remediate threats automatically**.
> - If your tenant was onboarded to Microsoft Defender for Endpoint *on or after* August 16, 2020, and you do have a device group defined, you also have an **Ungrouped devices (default)** device group that is set to **Full - remediate threats automatically**.
> - To change an automation level, **[edit your device groups](configure-automated-investigations-remediation.md#set-up-device-groups)**.


### A few points to keep in mind

- Your level of automation is determined by your device group settings. To learn more, see [Set up device groups](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-automated-investigations-remediation#set-up-device-groups).

- If your Microsoft Defender for Endpoint tenant was created before August 16, 2020, then you have a default device group that is configured for semi-automatic remediation. In this case, some or all remediation actions for malicious entities require approval. Such actions are listed on the **Pending actions** tab in the [Action center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/auto-investigation-action-center#the-action-center). You can set your [device groups](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-automated-investigations-remediation#set-up-device-groups) to use full automation so that no user approval is needed. 

- If your Microsoft Defender for Endpoint tenant was created on or after August 16, 2020, then you have a default device group that is configured for full automation. In this case, remediation actions are taken automatically for entities that are considered to be malicious. Such actions are listed on the **History** tab in the [Action center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/auto-investigation-action-center#the-action-center).

## Next steps

- [Learn about the automated investigations dashboard](manage-auto-investigation.md)

- [See the interactive guide: Investigate and remediate threats with Microsoft Defender for Endpoint](https://aka.ms/MDATP-IR-Interactive-Guide)

## See also

- [Automated investigation and response in Microsoft Defender for Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air)

- [Automated investigation and response in Microsoft 365 Defender](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-autoir)
