---
title: Prevent ransomware and threats from encrypting and changing files
description: Files in default folders can be protected from being changed by malicious apps. Prevent ransomware from encrypting your files.
keywords: controlled folder access, windows 10, windows defender, ransomware, protect, files, folders
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
audience: ITPro
ms.date: 08/25/2020
ms.reviewer: v-maave
manager: dansimp
ms.custom: asr
---

# Protect important folders with controlled folder access

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

## What is controlled folder access?

Controlled folder access helps you protect your valuable data from malicious apps and threats, like ransomware. Controlled folder access protects your data by checking apps against a list of known, trusted apps. Supported on Windows Server 2019 and Windows 10 clients, controlled folder access can be turned on using the Windows Security App or in Microsoft Endpoint Configuration Manager and Intune (for managed devices). 

Controlled folder access works best with [Microsoft Defender Advanced Threat Protection](../microsoft-defender-atp/microsoft-defender-advanced-threat-protection.md), which gives you detailed reporting into controlled folder access events and blocks as part of the usual [alert investigation scenarios](../microsoft-defender-atp/investigate-alerts.md).

## How does controlled folder access work?

Controlled folder access works by only allowing trusted apps to access protected folders. Protected folders are specified when controlled folder access is configured. Typically, commonly used folders, such as those used for documents, pictures, downloads, and so on, are included in the list of controlled folders. 

Controlled folder access works with a list of trusted software. If an app is included in the list of trusted software, the app works as expected. If not, the app is blocked from making any changes to files that are inside protected folders. Apps are added to the trusted list based upon their prevalence and reputation. Apps that are highly prevalent throughout your organization, and that have never displayed any malicious behavior, are deemed trustworthy and automatically added to the list.

Apps can also be manually added to the trusted list via Configuration Manager and Intune. Additional actions, such as [adding a file indicator](../microsoft-defender-atp/respond-file-alerts.md#add-indicator-to-block-or-allow-a-file) for the app, can be performed from the Security Center Console.

Controlled folder access is especially useful in helping to protect your documents and information from [ransomware](https://www.microsoft.com/wdsi/threats/ransomware). In a ransomware attack, your files can get encrypted and held hostage. With controlled folder access in place, a notification appears on the computer where an app attempted to make changes to a file in a protected folder. You can [customize the notification](customize-attack-surface-reduction.md#customize-the-notification) with your company details and contact information. You can also enable the rules individually to customize what techniques the feature monitors.

The protected folders include common system folders, and you can [add additional folders](customize-controlled-folders.md#protect-additional-folders). You can also [allow apps](customize-controlled-folders.md#allow-specific-apps-to-make-changes-to-controlled-folders) to give them access to the protected folders.

You can use [audit mode](audit-windows-defender.md) to evaluate how controlled folder access would impact your organization if it were enabled. You can also visit the Windows Defender Test ground website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the feature is working and see how it works.

Controlled folder access is supported on Windows 10, version 1709 and later and Windows Server 2019.

## Requirements

Controlled folder access requires enabling [Microsoft Defender Antivirus real-time protection](../microsoft-defender-antivirus/configure-real-time-protection-microsoft-defender-antivirus.md).

## Review controlled folder access events in the Microsoft Defender Security Center

Microsoft Defender ATP provides detailed reporting into events and blocks as part of its [alert investigation scenarios](../microsoft-defender-atp/investigate-alerts.md).

You can query Microsoft Defender ATP data by using [Advanced hunting](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection). If you're using [audit mode](audit-windows-defender.md), you can use advanced hunting to see how controlled folder access settings would affect your environment if they were enabled.

Example query:

```PowerShell
DeviceEvents
| where ActionType in ('ControlledFolderAccessViolationAudited','ControlledFolderAccessViolationBlocked')
```

## Review controlled folder access events in Windows Event Viewer

You can review the Windows event log to see events that are created when controlled folder access blocks (or audits) an app:

1. Download the [Evaluation Package](https://aka.ms/mp7z2w) and extract the file *cfa-events.xml* to an easily accessible location on the device.

2. Type **Event viewer** in the Start menu to open the Windows Event Viewer.

3. On the left panel, under **Actions**, select **Import custom view...**.

4. Navigate to where you extracted *cfa-events.xml* and select it. Alternatively, [copy the XML directly](event-views.md).

5. Click **OK**.

After following the procedure, you have created a custom view that shows events related to controlled folder access, as listed in the following table:

|Event ID | Description |
|---|---|
|5007 | Event when settings are changed |
|1124 | Audited controlled folder access event | 
|1123 | Blocked controlled folder access event |

## View or change the list of protected folders

### Windows 10 security app

1. On your Windows 10 device, open the Windows Security app.

2. Select **Virus & threat protection**.

3. Under **Ransomware protection**, select **Manage ransomware protection**.

4. If controlled folder access is turned off, you'll need to turn it on. Select **protected folders**.

5. Do one of the following steps:

   - To add a folder, select **+ Add a protected folder**.
   
   - To remove a folder, select it, and then select **Remove**. 

## See also

- [Evaluate controlled folder access](evaluate-controlled-folder-access.md). Use a dedicated demo tool to see how controlled folder access works, and what events would typically be created.

- [Enable controlled folder access](enable-controlled-folders.md). Use Group Policy, PowerShell, or mobile device management CSPs to enable and manage controlled folder access in your network

- [Customize controlled folder access](customize-controlled-folders.md). Add additional protected folders, and allow specified apps to access protected folders.
