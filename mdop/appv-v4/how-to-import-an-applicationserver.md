---
title: How to Import an Application
description: How to Import an Application
author: dansimp
ms.assetid: ab40acad-1025-478d-8e13-0e1ff1bd37e4
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Import an Application


Typically, you import applications to make them available to stream from an Application Virtualization Management Server. You can also add an application manually, but you must provide precise, detailed information about the application to do so. For more information, see [How to Manually Add an Application](how-to-manually-add-an-application.md).

**Note**  
To import an application, you must have its sequenced Open Software Descriptor (OSD) file or its Sequencer Project (SPRJ) file available on the server.

 

When importing an application, you should make sure the server is configured with a value in the **Default Content Path** field on the **General** tab of the **System Options** dialog (accessible by right-clicking the **Application Virtualization System** node in the App-V Server Console). The default content path value defines where the applications will be imported, and during the import process, this value is used to modify the paths defined in the OSD file for the SFT file and for the icon shortcuts. In the OSD file, the path for the SFT file is specified in the CODEBASE HREF entry and the path for the icons is specified in the SHORTCUTS entry.

During the import process, the protocol, server, and, if present, port specified in these two paths in the OSD file will be replaced with the value from the default content path. The following table provides an example of how the import path will be affected.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Default Content Path</th>
<th align="left">OSD File CODEBASE HREF</th>
<th align="left">Resulting Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>\server\content&lt;/p&gt;</td>
<td align="left"><p><a href="http://WebServer/myFolder/package.sft" data-raw-source="http://WebServer/myFolder/package.sft">http://WebServer/myFolder/package.sft</a></p></td>
<td align="left"><p>\server\content\myFolder\package.sft</p></td>
</tr>
</tbody>
</table>

 

**To import an application**

1.  Right-click the **Applications** node in the left pane, and choose **Import Applications**.

2.  In the **Open** dialog box, navigate to the application's SPRJ or OSD file. Highlight the file and click **Open**.

3.  In the **New Application Wizard**, be sure the **Enabled** box is selected for applications you want to stream. There you can also enter a description and verify the server and file paths. Also, if you have set up license and server groups, you can select those.

4.  Click **Next**.

5.  On the **Published Shortcuts** screen, select the boxes for the locations where you would like the application shortcuts to appear on the client computers.

6.  Click **Next**.

7.  In the **File Associations** screen, you can add new file associations to this application. To do so, click **Add**, enter the extension (without a preceding dot), enter a description, and click **OK**.

    **Note**  
    Applications sequenced with Sequencer 4.0 populate the **File Associations** dialog box when you import or create them through the management console. Applications with previous Sequencer version packages do not.

     

8.  Click **Next**.

9.  In the **Access Permissions** screen, click **Add**.

10. Complete the **Select Groups** dialog box. When you finish, click **OK**.

11. Click **Next**.

12. On the **Summary** screen, you can review the import settings. Click **Finish**, or click **Back** to change the import or click **Cancel** to cancel the import.

## Related topics


[How to Manage Application Groups in the Server Management Console](how-to-manage-application-groups-in-the-server-management-console.md)

[How to Manage Applications in the Server Management Console](how-to-manage-applications-in-the-server-management-console.md)

[How to Manually Add an Application](how-to-manually-add-an-application.md)

 

 





