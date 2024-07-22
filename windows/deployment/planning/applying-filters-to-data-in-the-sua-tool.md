---
title: Applying Filters to Data in the SUA Tool (Windows 10)
description: Learn how to apply filters to results from the Standard User Analyzer (SUA) tool while testing your application.
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 10/28/2022
ms.topic: conceptual
ms.subservice: itpro-deploy
---

# Applying Filters to Data in the SUA Tool

**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

On the user interface for the Standard User Analyzer (SUA) tool, you can apply filters to the issues that the tool has found so that you can view only the information that interests you.

**To apply filters to data in the SUA tool**

1.  Use the SUA tool to test an application. For more information, see [Using the SUA Tool](using-the-sua-tool.md).

2.  After you finish testing, in the SUA tool, click a tab that shows issues that the SUA tool has found. All tabs except the **App Info** tab can show issues.

3.  On the **Options** menu, click a command that corresponds to the filter that you want to apply. The following table describes the commands.

    |Options menu command|Description|
    |--- |--- |
    |**Filter Noise**|Filters noise from the issues.<p>This command is selected by default.|
    |**Load Noise Filter File**|Opens the **Open Noise Filter File** dialog box, in which you can load an existing noise filter (.xml) file.|
    |**Export Noise Filter File**|Opens the **Save Noise Filter File** dialog box, in which you can save filter settings as a noise filter (.xml) file.|
    |**Only Display Records with Application Name in StackTrace**|Filters out records that do not have the application name in the stack trace. <p>However, because the SUA tool captures only the first 32 stack frames, this command can also filter out real issues with the application where the call stack is deeper than 32 frames.|
    |**Show More Details in StackTrace**|Shows additional stack frames that are related to the SUA tool, but not related to the diagnosed application.|
    |**Warn Before Deleting AppVerifier Logs**|Displays a warning message before the SUA tool deletes all of the existing SUA-related log files on the computer.<p>This command is selected by default.|
    |**Logging**|Provides the following logging-related options:<ul><li>Show or hide log errors.<li>Show or hide log warnings.<li>Show or hide log information.</ul><p>To maintain a manageable file size, we recommend that you do not select the option to show informational messages.|
    
   
