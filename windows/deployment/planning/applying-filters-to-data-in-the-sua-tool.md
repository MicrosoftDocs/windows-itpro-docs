---
title: Applying Filters to Data in the SUA Tool (Windows 10)
description: On the user interface for the Standard User Analyzer (SUA) tool, you can apply filters to the issues that the tool has found so that you can view only the information that interests you.
ms.assetid: 48c39919-3501-405d-bcf5-d2784cbb011f
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Applying Filters to Data in the SUA Tool


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

On the user interface for the Standard User Analyzer (SUA) tool, you can apply filters to the issues that the tool has found so that you can view only the information that interests you.

**To apply filters to data in the SUA tool**

1.  Use the SUA tool to test an application. For more information, see [Using the SUA Tool](using-the-sua-tool.md).

2.  After you finish testing, in the SUA tool, click a tab that shows issues that the SUA tool has found. All tabs except the **App Info** tab can show issues.

3.  On the **Options** menu, click a command that corresponds to the filter that you want to apply. The following table describes the commands.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Options menu command</th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><strong>Filter Noise</strong></p></td>
    <td align="left"><p>Filters noise from the issues.</p>
    <p>This command is selected by default.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Load Noise Filter File</strong></p></td>
    <td align="left"><p>Opens the <strong>Open Noise Filter File</strong> dialog box, in which you can load an existing noise filter (.xml) file.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Export Noise Filter File</strong></p></td>
    <td align="left"><p>Opens the <strong>Save Noise Filter File</strong> dialog box, in which you can save filter settings as a noise filter (.xml) file.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Only Display Records with Application Name in StackTrace</strong></p></td>
    <td align="left"><p>Filters out records that do not have the application name in the stack trace.</p>
    <p>However, because the SUA tool captures only the first 32 stack frames, this command can also filter out real issues with the application where the call stack is deeper than 32 frames.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Show More Details in StackTrace</strong></p></td>
    <td align="left"><p>Shows additional stack frames that are related to the SUA tool, but not related to the diagnosed application.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Warn Before Deleting AppVerifier Logs</strong></p></td>
    <td align="left"><p>Displays a warning message before the SUA tool deletes all of the existing SUA-related log files on the computer.</p>
    <p>This command is selected by default.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Logging</strong></p></td>
    <td align="left"><p>Provides the following logging-related options:</p>
    <ul>
    <li><p>Show or hide log errors.</p></li>
    <li><p>Show or hide log warnings.</p></li>
    <li><p>Show or hide log information.</p></li>
    </ul>
    <p>To maintain a manageable file size, we recommend that you do not select the option to show informational messages.</p></td>
    </tr>
    </tbody>
    </table>

     

 

 





