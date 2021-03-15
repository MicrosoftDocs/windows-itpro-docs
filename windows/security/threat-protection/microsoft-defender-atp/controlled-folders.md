---
title: Protect important folders from ransomware from encrypting your files with controlled folder access
description: Files in default folders can be protected from being changed by malicious apps. Prevent ransomware from encrypting your files.
keywords: controlled folder access, windows 10, windows defender, ransomware, protect, files, folders
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
audience: ITPro
ms.date: 02/03/2021
ms.reviewer: v-maave
manager: dansimp
ms.custom: asr
ms.technology: mde
---

# Protect important folders with controlled folder access

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-assignaccess-abovefoldlink)

## What is controlled folder access?

Controlled folder access helps protect your valuable data from malicious apps and threats, such as ransomware. Controlled folder access protects your data by checking apps against a list of known, trusted apps. Supported on Windows Server 2019 and Windows 10 clients, controlled folder access can be turned on using the Windows Security App, Microsoft Endpoint Configuration Manager, or Intune (for managed devices). 

> [!NOTE]
> Scripting engines are not trusted and you cannot allow them access to controlled protected folders.  For example, PowerShell is not trusted by controlled folder access, even if you allow with [certificate and file indicators](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/indicator-certificates). 

Controlled folder access works best with [Microsoft Defender for Endpoint](../microsoft-defender-atp/microsoft-defender-advanced-threat-protection.md), which gives you detailed reporting into controlled folder access events and blocks as part of the usual [alert investigation scenarios](../microsoft-defender-atp/investigate-alerts.md).

> [!TIP]
> Controlled folder access blocks don't generate alerts in the [Alerts queue](../microsoft-defender-atp/alerts-queue.md). However, you can view information about controlled folder access blocks in the [device timeline view](../microsoft-defender-atp/investigate-machines.md), while using [advanced hunting](../microsoft-defender-atp/advanced-hunting-overview.md), or with [custom detection rules](../microsoft-defender-atp/custom-detection-rules.md).

## How does controlled folder access work?

Controlled folder access works by only allowing trusted apps to access protected folders. Protected folders are specified when controlled folder access is configured. Typically, commonly used folders, such as those used for documents, pictures, downloads, and so on, are included in the list of controlled folders. 

Controlled folder access works with a list of trusted apps. Apps that are included in the list of trusted software work as expected. Apps that are not included in the list are prevented from making any changes to files inside protected folders. 

Apps are added to the list based upon their prevalence and reputation. Apps that are highly prevalent throughout your organization and that have never displayed any behavior deemed malicious are considered trustworthy. Those apps are added to the list automatically.

Apps can also be added manually to the trusted list by using Configuration Manager or Intune. Additional actions, such as [adding a file indicator](../microsoft-defender-atp/respond-file-alerts.md#add-indicator-to-block-or-allow-a-file) for an app, can be performed from the Security Center Console.

## Why controlled folder access is important

Controlled folder access is especially useful in helping to protect your documents and information from [ransomware](https://www.microsoft.com/wdsi/threats/ransomware). In a ransomware attack, your files can get encrypted and held hostage. With controlled folder access in place, a notification appears on the computer where an app attempted to make changes to a file in a protected folder. You can [customize the notification](customize-attack-surface-reduction.md#customize-the-notification) with your company details and contact information. You can also enable the rules individually to customize what techniques the feature monitors.

The [protected folders](#review-controlled-folder-access-events-in-windows-event-viewer) include common system folders (including boot sectors), and you can [add more folders](customize-controlled-folders.md#protect-additional-folders). You can also [allow apps](customize-controlled-folders.md#allow-specific-apps-to-make-changes-to-controlled-folders) to give them access to the protected folders.

You can use [audit mode](audit-windows-defender.md) to evaluate how controlled folder access would impact your organization if it were enabled. You can also visit the Windows Defender Test ground website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the feature is working and see how it works.

Controlled folder access is supported on the following versions of Windows:
- [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) and later
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)

## Windows system folders are protected by default

Windows system folders are protected by default, along with several other folders: 

- `c:\Users\<username>\Documents`
- `c:\Users\Public\Documents`
- `c:\Users\<username>\Pictures`
- `c:\Users\Public\Pictures`
- `c:\Users\Public\Videos`
- `c:\Users\<username>\Videos`
- `c:\Users\<username>\Music`
- `c:\Users\Public\Music`
- `c:\Users\<username>\Favorites`

> [!NOTE]
> You can configure additional folders as protected, but you cannot remove the Windows system folders that are protected by default.

## Requirements for controlled folder access

Controlled folder access requires enabling [Microsoft Defender Antivirus real-time protection](../microsoft-defender-antivirus/configure-real-time-protection-microsoft-defender-antivirus.md).

## Review controlled folder access events in the Microsoft Defender Security Center

Defender for Endpoint provides detailed reporting into events and blocks as part of its [alert investigation scenarios](../microsoft-defender-atp/investigate-alerts.md).

You can query Microsoft Defender for Endpoint data by using [Advanced hunting](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection). If you're using [audit mode](audit-windows-defender.md), you can use [advanced hunting](advanced-hunting-overview.md) to see how controlled folder access settings would affect your environment if they were enabled.

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
5. Select **OK**.

The following table shows events related to controlled folder access:

|Event ID | Description |
|:---|:---|
|5007 | Event when settings are changed |
|1124 | Audited controlled folder access event | 
|1123 | Blocked controlled folder access event |

## View or change the list of protected folders

You can use the Windows Security app to view the list of folders that are protected by controlled folder access. 

1. On your Windows 10 device, open the Windows Security app.
2. Select **Virus & threat protection**.
3. Under **Ransomware protection**, select **Manage ransomware protection**.
4. If controlled folder access is turned off, you'll need to turn it on. Select **protected folders**.
5. Do one of the following steps:
   - To add a folder, select **+ Add a protected folder**.
   - To remove a folder, select it, and then select **Remove**. 

> [!NOTE]
> [Windows system folders](#windows-system-folders-are-protected-by-default) are protected by default, and you cannot remove them from the list.

## See also

- [Evaluate controlled folder access](evaluate-controlled-folder-access.md)
- [Customize controlled folder access](customize-controlled-folders.md)
- [Protect more folders](customize-controlled-folders.md#protect-additional-folders)
