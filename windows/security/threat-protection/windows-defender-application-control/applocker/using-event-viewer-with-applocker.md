---
title: Using Event Viewer with AppLocker (Windows 10)
description: This topic lists AppLocker events and describes how to use Event Viewer with AppLocker.
ms.assetid: 109abb10-78b1-4c29-a576-e5a17dfeb916
ms.reviewer: 
ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mjcaparas
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Using Event Viewer with AppLocker

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic lists AppLocker events and describes how to use Event Viewer with AppLocker.

The AppLocker log contains information about applications that are affected by AppLocker rules. Each event in the log contains detailed info about:

-   Which file is affected and the path of that file
-   Which packaged app is affected and the package identifier of the app
-   Whether the file or packaged app is allowed or blocked
-   The rule type (path, file hash, or publisher)
-   The rule name
-   The security identifier (SID) for the user or group identified in the rule

Review the entries in the Event Viewer to determine if any applications are not included in the rules that you automatically generated. For instance, some line-of-business apps are installed to non-standard locations, such as the root of the active drive (for example: %SystemDrive%).

For info about what to look for in the AppLocker event logs, see [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md).

**To review the AppLocker log in Event Viewer**

1.  Open Event Viewer.
2.  In the console tree under **Application and Services Logs\\Microsoft\\Windows**, click **AppLocker**.

The following table contains information about the events that you can use to determine which apps are affected by AppLocker rules.

| Event ID | Level | Event message | Description |
| - | - | - | - |
| 8000 | Error| Application Identity Policy conversion failed. Status  *&lt;%1&gt; *| Indicates that the policy was not applied correctly to the computer. The status message is provided for troubleshooting purposes.| 
| 8001 | Information| The AppLocker policy was applied successfully to this computer.| Indicates that the AppLocker policy was successfully applied to the computer.| 
| 8002 | Information|  *&lt;File name&gt; * was allowed to run.| Specifies that the .exe or .dll file is allowed by an AppLocker rule.| 
| 8003 | Warning|  *&lt;File name&gt; * was allowed to run but would have been prevented from running if the AppLocker policy were enforced.| Applied only when the  **Audit only ** enforcement mode is enabled. Specifies that the .exe or .dll file would be blocked if the  **Enforce rules ** enforcement mode were enabled. |
| 8004 | Error|  *&lt;File name&gt; * was not allowed to run.| Access to  *&lt;file name&gt; * is restricted by the administrator. Applied only when the  **Enforce rules ** enforcement mode is set either directly or indirectly through Group Policy inheritance. The .exe or .dll file cannot run.| 
| 8005| Information|  *&lt;File name&gt; * was allowed to run.| Specifies that the script or .msi file is allowed by an AppLocker rule.| 
| 8006 | Warning|  *&lt;File name&gt; * was allowed to run but would have been prevented from running if the AppLocker policy were enforced.| Applied only when the  **Audit only ** enforcement mode is enabled. Specifies that the script or .msi file would be blocked if the  **Enforce rules ** enforcement mode were enabled. |
| 8007 | Error|  *&lt;File name&gt; * was not allowed to run.| Access to  *&lt;file name&gt; * is restricted by the administrator. Applied only when the  **Enforce rules ** enforcement mode is set either directly or indirectly through Group Policy inheritance. The script or .msi file cannot run.| 
| 8008| Error| AppLocker disabled on the SKU.| Added in Windows Server 2012 and Windows 8.| 
| 8020| Information| Packaged app allowed.| Added in Windows Server 2012 and Windows 8.| 
| 8021|  Information| Packaged app audited.| Added in Windows Server 2012 and Windows 8.| 
| 8022| Information| Packaged app disabled.| Added in Windows Server 2012 and Windows 8.| 
| 8023 | Information| Packaged app installation allowed.| Added in Windows Server 2012 and Windows 8.|
| 8024 | Information| Packaged app installation audited.| Added in Windows Server 2012 and Windows 8.| 
| 8025 | Warning| Packaged app installation disabled.| Added in Windows Server 2012 and Windows 8.| 
| 8027 | Warning| No Packaged app rule configured.| Added in Windows Server 2012 and Windows 8.| 
 
## Related topics

- [Tools to use with AppLocker](tools-to-use-with-applocker.md)
 
 
