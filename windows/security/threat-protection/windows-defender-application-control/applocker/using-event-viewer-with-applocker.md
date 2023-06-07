---
title: Using Event Viewer with AppLocker 
description: This article lists AppLocker events and describes how to use Event Viewer with AppLocker.
ms.assetid: 109abb10-78b1-4c29-a576-e5a17dfeb916
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: conceptual
ms.technology: itpro-security
ms.date: 02/02/2023
---

# Using Event Viewer with AppLocker

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This article lists AppLocker events and describes how to use Event Viewer with AppLocker.

The AppLocker log contains information about applications that are affected by AppLocker rules. Each event in the log contains details such as the following information:

- Which file is affected and the path of that file
- Which packaged app is affected and the package identifier of the app
- Whether the file or packaged app is allowed or blocked
- The rule type (path, file hash, or publisher)
- The rule name
- The security identifier (SID) for the user or group identified in the rule

Review the entries in the Event Viewer to determine if any applications aren't included in the rules that you automatically generated. For instance, some line-of-business apps are installed to non-standard locations, such as the root of the active drive (for example, `%SystemDrive%`).

For info about what to look for in the AppLocker event logs, see [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md).

> [!NOTE]
> The AppLocker event logs are very verbose and can result in a large number of events depending on the policies deployed, particularly in the *AppLocker - EXE and DLL* event log. If you're using an event forwarding and collection service, like LogAnalytics, you may want to adjust the configuration for that event log to only collect Error events or stop collecting events from that log altogether.

**To review the AppLocker log in Event Viewer**

1. Open Event Viewer.
2. In the console tree under **Application and Services Logs\\Microsoft\\Windows**, select **AppLocker**.

The following table contains information about the events that you can use to determine which apps are affected by AppLocker rules.

| Event ID | Level | Event message | Description |
| --- | --- | --- | --- |
| 8000 | Error| Application Identity Policy conversion failed. Status * &lt;%1&gt; *| Indicates that the policy wasn't applied correctly to the computer. The status message is provided for troubleshooting purposes.| 
| 8001 | Information| The AppLocker policy was applied successfully to this computer.| Indicates that the AppLocker policy was successfully applied to the computer.| 
| 8002 | Information| *&lt;File name&gt; * was allowed to run.| Specifies that the .exe or .dll file is allowed by an AppLocker rule.| 
| 8003 | Warning| *&lt;File name&gt; * was allowed to run but would have been prevented from running if the AppLocker policy was enforced.| Applied only when the **Audit only** enforcement mode is enabled. Specifies that the .exe or .dll file would be blocked if the **Enforce rules** enforcement mode were enabled. |
| 8004 | Error| *&lt;File name&gt; * was not allowed to run.| Access to *&lt;file name&gt;* is restricted by the administrator. Applied only when the **Enforce rules** enforcement mode is set either directly or indirectly through Group Policy inheritance. The .exe or .dll file can't run.| 
| 8005| Information| *&lt;File name&gt; * was allowed to run.| Specifies that the script or .msi file is allowed by an AppLocker rule.| 
| 8006 | Warning| *&lt;File name&gt; * was allowed to run but would have been prevented from running if the AppLocker policy was enforced.| Applied only when the **Audit only** enforcement mode is enabled. Specifies that the script or .msi file would be blocked if the **Enforce rules** enforcement mode were enabled. |
| 8007 | Error| *&lt;File name&gt; * was not allowed to run.| Access to *&lt;file name&gt;* is restricted by the administrator. Applied only when the **Enforce rules** enforcement mode is set either directly or indirectly through Group Policy inheritance. The script or .msi file can't run.| 
| 8008| Error| AppLocker disabled on the SKU.| Added in Windows Server 2012 and Windows 8.| 
| 8020| Information| Packaged app allowed.| Added in Windows Server 2012 and Windows 8.| 
| 8021| Information| Packaged app audited.| Added in Windows Server 2012 and Windows 8.| 
| 8022| Information| Packaged app disabled.| Added in Windows Server 2012 and Windows 8.| 
| 8023 | Information| Packaged app installation allowed.| Added in Windows Server 2012 and Windows 8.|
| 8024 | Information| Packaged app installation audited.| Added in Windows Server 2012 and Windows 8.| 
| 8025 | Warning| Packaged app installation disabled.| Added in Windows Server 2012 and Windows 8.| 
| 8027 | Warning| No Packaged app rule configured.| Added in Windows Server 2012 and Windows 8.| 
| 8028 | Warning | * was allowed to run but would have been prevented if the Config CI policy was enforced.| Added in Windows Server 2016 and Windows 10.|
| 8029 | Error | * was prevented from running due to Config CI policy.| Added in Windows Server 2016 and Windows 10.|
| 8030 | Information | ManagedInstaller check SUCCEEDED during Appid verification of * | Added in Windows Server 2016 and Windows 10.|
| 8031 | Information | SmartlockerFilter detected file * being written by process * | Added in Windows Server 2016 and Windows 10.|
| 8032 | Error | ManagedInstaller check FAILED during Appid verification of * | Added in Windows Server 2016 and Windows 10.|
| 8033 | Warning | ManagedInstaller check FAILED during Appid verification of * . Allowed to run due to Audit AppLocker Policy. | Added in Windows Server 2016 and Windows 10.|
| 8034 | Information | ManagedInstaller Script check FAILED during Appid verification of * | Added in Windows Server 2016 and Windows 10.|
| 8035 | Error | ManagedInstaller Script check SUCCEEDED during Appid verification of * | Added in Windows Server 2016 and Windows 10.|
| 8036 | Error | * was prevented from running due to Config CI policy | Added in Windows Server 2016 and Windows 10.|
| 8037 | Information | * passed Config CI policy and was allowed to run | Added in Windows Server 2016 and Windows 10.|
| 8038 | Information | Publisher info: Subject: * Issuer: * Signature index * (* total) | Added in Windows Server 2016 and Windows 10.|
| 8039 | Warning | * passed Config CI policy and was allowed to run | Added in Windows Server 2016 and Windows 10.|
| 8040 | Error | Package family name * version * was prevented from installing or updating due to Config CI policy | Added in Windows Server 2016 and Windows 10.|

 
## Related articles

- [Tools to use with AppLocker](tools-to-use-with-applocker.md)
 
