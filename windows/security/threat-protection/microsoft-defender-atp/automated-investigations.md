---
title: Use automated investigations to investigate and remediate threats
description: Understand the automated investigation flow in Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP).
keywords: automated, investigation, detection, source, threat types, id, tags, devices, duration, filter export
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.date: 09/03/2020
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
ms.reviewer: ramarom, evaldm, isco, mabraitm
---

# Overview of automated investigations

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4bOeh]

Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) offers a wide breadth of visibility on multiple devices. With this kind of optics, the service generates a multitude of alerts. The volume of alerts generated can be challenging for a typical security operations team to individually address. To address this challenge, and to reduce the volume of alerts that must be investigated individually,  Microsoft Defender ATP includes automated investigation and remediation capabilities. 

Automated investigation leverages various inspection algorithms, and processes used by analysts (such as playbooks) to examine alerts and take immediate remediation action to resolve breaches. Automated investigation and remediation capabilities significantly reduce alert volume, allowing security operations experts to focus on more sophisticated threats and other high value initiatives. The **Automated investigations** list shows all the investigations that were initiated automatically, and includes details, such as status, detection source, and when each investigation was initiated.

> [!TIP]
> Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-automated-investigations-abovefoldlink)

## How the automated investigation starts

When an alert is triggered, a security playbook goes into effect. Depending on the security playbook, an automated investigation can start. For example, suppose a malicious file resides on a device. When that file is detected, an alert is triggered, and the automated investigation process begins. Microsoft Defender ATP checks to see if the malicious file is present on any other devices in the organization. Details from the investigation, including verdicts (*Malicious*, *Suspicious*, and *No threats found*) are available during and after the automated investigation.

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
|**Alerts**| Shows the alert that started the investigation.|
|**Devices** |Shows where the alert was seen.|
|**Evidence** |Shows the entities that were found to be malicious during the investigation.|
|**Entities** |Provides details about each analyzed entity, including a determination for each entity type (*Malicious*, *Suspicious*, or *No threats found*). |
|**Log** |Shows the chronological detailed view of all the investigation actions taken on the alert.|
|**Pending actions** |If there are any actions awaiting approval as a result of the investigation, the **Pending actions** tab is displayed. On the **Pending actions** tab, you can approve or reject each action. |

> [!IMPORTANT]
> Go to the **Action center** to get an aggregated view all pending actions and manage remediation actions. The **Action center** also acts as an audit trail for all automated investigation actions. 

## How an automated investigation expands its scope

While an investigation is running, any other alerts generated from the device are added to an ongoing automated investigation until that investigation is completed. In addition, if the same threat is seen on other devices, those devices are added to the investigation.

If an incriminated entity is seen in another device, the automated investigation process expands its scope to include that device, and a general security playbook starts on that device. If 10 or more devices are found during this expansion process from the same entity, then that expansion action requires an approval, and is visible on the **Pending actions** tab.

## How threats are remediated

Depending on how you set up the device groups and their level of automation, each automated investigation either requires user approval (default) or automatically remediates threats.

> [!NOTE]
> Microsoft Defender ATP tenants created on or after August 16, 2020 have **Full - remediate threats automatically** selected by default. You can keep the default setting, or change it according to your organizational needs. To change your settings, [adjust your device group settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-automated-investigations-remediation#set-up-device-groups).

You can configure the following levels of automation:

|Automation level | Description|
|---|---|
|**Full - remediate threats automatically** | All remediation actions are performed automatically.<br/><br/>***This option is recommended** and is selected by default for Microsoft Defender ATP tenants created on or after August 16, 2020, and have no device groups defined. <br/>If you do have a device group defined, you will also have a device group called **Ungrouped devices (default)**, which will be set to **Full - remediate threats automatically**.*|
|**Semi - require approval for core folders remediation** | An approval is required on files or executables that are in the operating system directories such as Windows folder and Program files folder. <br/><br/> Files or executables in all other folders are automatically remediated, if needed.|
|**Semi - require approval for non-temp folders remediation** | An approval is required on files or executables that are not in temporary folders. <br/><br/> Files or executables in temporary folders, such as the user's download folder or the user's temp folder, are automatically be remediated (if needed).|
|**Semi - require approval for any remediation** | An approval is needed for any remediation action. <br/><br/>*This option is selected by default for Microsoft Defender ATP tenants created before August 16, 2020, and have no device groups defined. <br/>If you do have a device group defined, you will also have a device group called **Ungrouped devices (default)**, which will be set to **Semi - require approval for any remediation**.*|
|**No automated response** | Devices do not get any automated investigations run on them. <br/><br/>***This option is not recommended**, because it fully disables automated investigation and remediation capabilities, and reduces the security posture of your organization's devices.* |


> [!IMPORTANT]
> A few points of clarification regarding automation levels and default settings:
> - If your tenant already has device groups defined, the automation level settings are not changed for those device groups.
> - If your tenant was onboarded to Microsoft Defender ATP *before* August 16, 2020, and you have not defined a device group, your organization's default setting is **Semi - require approval for any remediation**.
> - If your tenant was onboarded to Microsoft Defender ATP *before* August 16, 2020, and you do have a device group defined, you also have an **Ungrouped devices (default)** device group that is set to **Semi - require approval for any remediation**. 
> - If your tenant was onboarded to Microsoft Defender ATP *on or after* August 16, 2020, and you have not defined a device group, your orgnaization's default setting is **Full - remediate threats automatically**.
> - If your tenant was onboarded to Microsoft Defender ATP *on or after* August 16, 2020, and you do have a device group defined, you also have an **Ungrouped devices (default)** device group that is set to **Full - remediate threats automatically**.
> - To change an automation level, **[edit your device groups](configure-automated-investigations-remediation.md#set-up-device-groups)**.


### A few points to keep in mind

- Your level of automation is determined by your device group settings. See [Set up device groups](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-automated-investigations-remediation#set-up-device-groups).

- If your Microsoft Defender ATP tenant was created before August 16, 2020, you have a default device group that is configured for semi-automatic remediation. Any malicious entity that calls for remediation requires an approval and the investigation is added to the **Pending actions** tab in the [Action center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/auto-investigation-action-center#the-action-center). You can configure your device groups to use full automation so that no user approval is needed. 

- If your Microsoft Defender ATP tenant was created on or after August 16, 2020, you have a default device group that is configured for full automation. Remediation actions are taken automatically for entities that are considered to be malicious. Remediation actions that were taken can be viewed on the **History** tab in the [Action center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/auto-investigation-action-center#the-action-center).

## Next steps

- [Learn about the automated investigations dashboard](manage-auto-investigation.md)

- [See the interactive guide: Investigate and remediate threats with Microsoft Defender ATP](https://aka.ms/MDATP-IR-Interactive-Guide)

## Related articles

- [Automated investigation and response in Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air)

- [Automated investigation and response in Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-autoir)