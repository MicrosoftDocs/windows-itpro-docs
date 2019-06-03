---
title: Use Automated investigations to investigate and remediate threats
description: View the list of automated investigations, its status, detection source and other details.
keywords: automated, investigation, detection, source, threat types, id, tags, machines, duration, filter export
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

# Overview of Automated investigations

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automated-investigations-abovefoldlink)

The Microsoft Defender ATP service has a wide breadth of visibility on multiple machines. With this kind of optics, the service generates a multitude of alerts. The volume of alerts generated can be challenging for a typical security operations team to individually address.


To address this challenge, Microsoft Defender ATP uses Automated investigations to significantly reduce the volume of alerts that need to be investigated individually. The Automated investigation feature leverages various inspection algorithms, and processes used by analysts (such as playbooks) to examine alerts and take immediate remediation action to resolve breaches. This significantly reduces alert volume, allowing security operations experts to focus on more sophisticated threats and other high value initiatives. 

The Automated investigations list shows all the investigations that have been initiated automatically and shows other details such as its status, detection source, and the date for when the investigation was initiated.

## Understand the Automated investigation flow

### How the Automated investigation starts

Entities are the starting point for Automated investigations. When an alert contains a supported entity for Automated investigation (for example, a file) that resides on a machine that has a supported operating system for Automated investigation then an Automated investigation can start.

>[!NOTE]
>Currently, Automated investigation only supports the following OS versions:
>- Windows 10, version 1709 (OS Build 16299.1085 with [KB4493441](https://support.microsoft.com/en-us/help/4493441/windows-10-update-kb4493441)) or later
>- Windows 10, version 1803 (OS Build 17134.704 with [KB4493464](https://support.microsoft.com/en-us/help/4493464/windows-10-update-kb4493464)) or later
>- Later versions of Windows 10

The alerts start by analyzing the supported entities from the alert and also runs a generic machine playbook to see if there is anything else suspicious on that machine. The outcome and details from the investigation is seen in the Automated investigation view.

### Details of an Automated investigation

As the investigation proceeds, you'll be able to view the details of the investigation. Selecting a triggering alert brings you to the investigation details view where you can pivot from the **Investigation graph**, **Alerts**, **Machines**, **Threats**, **Entities**, and **Log** tabs.

In the **Alerts** tab, you'll see the alert that started the investigation. 

The **Machines** tab shows where the alert was seen.

The **Threats** tab shows the entities that were found to be malicious during the investigation.

During an Automated investigation, details about each analyzed entity is categorized in the **Entities** tab. You'll be able to see the determination for each entity type, such as whether it was determined to be malicious, suspicious, or clean.

The **Log** tab reflects the chronological detailed view of all the investigation actions taken on the alert.

If there are pending actions on the investigation, the **Pending actions** tab will be displayed where you can approve or reject actions.

### How an Automated investigation expands its scope

While an investigation is running, any other alert generated from the machine will be added to an ongoing Automated investigation until that investigation is completed. In addition, if the same threat is seen on other machines, those machines are added to the investigation.

If an incriminated entity is seen in another machine, the Automated investigation will expand the investigation to include that machine and a generic machine playbook will start on that machine. If 10 or more machines are found during this expansion process from the same entity, then that expansion action will require an approval and will be seen in the **Pending actions** view.

### How threats are remediated

Depending on how you set up the machine groups and their level of automation, the Automated investigation will either require user approval (default) or automatically remediate threats.

You can configure the following levels of automation:

Automation level | Description
:---|:---
Not protected | Machines will not get any automated investigations run on them.
Semi - require approval for any remediation | This is the default automation level.<br><br>  An approval is needed for any remediation action. 
Semi - require approval for non-temp folders remediation | An approval is required on files or executables that are not in temporary folders. <br><br> Files or executables in temporary folders, such as the user's download folder or the user's temp folder, will automatically be remediated if needed.
Semi - require approval for core folders remediation | An approval is required on files or executables that are in the operating system directories such as Windows folder and Program files folder. <br><br> Files or executables in all other folders will  automatically be remediated if needed.
Full - remediate threats automatically | All remediation actions will be performed automatically.

For more information on how to configure these automation levels, see [Create and manage machine groups](machine-groups.md).

The default machine group is configured for semi-automatic remediation. This means that any malicious entity that needs to be remediated requires an approval and the investigation is added to the **Pending actions** section, this can be changed to fully automatic so that no user approval is needed. 

When a pending action is approved, the entity is then remediated and this new state is reflected in the **Entities** tab of the investigation.

## Related topic
- [Learn about the automated investigations dashboard](manage-auto-investigation.md)