---
title: How to Generate Reports
description: How to Generate Reports
author: dansimp
ms.assetid: 9f8ba28e-1993-4c11-a28a-493718051e5d
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Generate Reports


The following report types can be created by administrators in MED-V:

-   [Status](#bkmk-generatingastatusreport)—Use the status report to review the current status of all active users and all MED-V workspaces of each user based on a defined period of time. This includes viewing computers that are currently connected to the server or, if they are not currently connected, the date and time they were last connected to the server, the status of each computer, and other relevant information.

-   [Activity Log](#bkmk-generatinganactivitylogreport)—Use this report to review events that originated from a specific host or user in a defined date range.

-   [Error Log](#bkmk-generatinganerrorlogreport)—Use this report to view errors that originated from a specific host or user in a defined date range.

The report results can be sorted by any column by clicking the appropriate column name.

The report results can be grouped by dragging a column header to the top of the report. Drag multiple column headers to group one column after another.

## <a href="" id="bkmk-generatingastatusreport"></a>How to Generate a Status Report


**To generate a status report**

1.  Click the **Reports** management button.

2.  In the **Reports** module, on the **Report Types** menu, select **Status**, and click **Generate**.

    The Report Parameters dialog box appears.

3.  In the **Report Parameters** dialog box, in the **Number of days** field, enter a number or use the arrows to select the number of days to include in the status report, and click **OK**.

    A status report is generated. The report parameters are defined in the following table.

**Client MED-V Workspace Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Time</p></td>
<td align="left"><p>The date and time the event occurred.</p>
<div class="alert">
<strong>Note</strong>  
<p>By default, the events are displayed in descending date order. However, it can be changed by clicking the Time Received column.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>User Name</p></td>
<td align="left"><p>The user who initiated the event.</p>
<div class="alert">
<strong>Note</strong>  
<p>If the event occurred before a user logged on, the user name is SYSTEM.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>Host Name</p></td>
<td align="left"><p>The name of the host computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Workspace Name</p></td>
<td align="left"><p>The name of the MED-V workspace.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Workspace Computer Name</p></td>
<td align="left"><p>The name of the computer the MED-V workspace is running on.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Online</p></td>
<td align="left"><p>The current state of the client computer:</p>
<ul>
<li><p><strong>Stopped</strong></p></li>
<li><p><strong>Started at &lt;date and time the workspace was started&gt;</strong></p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Client Version</p></td>
<td align="left"><p>The version number of the client.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Policy Version</p></td>
<td align="left"><p>The policy version that the MED-V workspace is currently using.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Image Name</p></td>
<td align="left"><p>The name of the image.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Image Version</p></td>
<td align="left"><p>The image version that the MED-V workspace is currently using.</p>
<div class="alert">
<strong>Note</strong>  
<p>MED-V workspace version can be Unknown if it has not yet been downloaded onto a computer.</p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-generatinganactivitylogreport"></a>How to Generate an Activity Log Report


**To generate an activity log report**

1.  Click the **Reports** management button.

    The Reports module appears.

2.  In the **Reports** module, on the **Report Types** menu, select **Activity Log**, and click **Generate**.

3.  In the **Report Parameters** dialog box, configure one or more of the following parameters:

    -   **Number of days**—The number of days to display in the report.

    -   **User name contains**—Any event where the user name contains the text entered is included in the report.

    -   **Host name contains**—Any event where the host name contains the text entered is included in the report.

4.  Click **OK**.

    A report is generated with the events and dates selected. The report parameters are defined in the following table.

**Activity Log Report Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Event ID</p></td>
<td align="left"><p>The event ID.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Severity</p></td>
<td align="left"><p><strong>Information, Error, Warning</strong></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Category</p></td>
<td align="left"><p>The module that the report is referring to.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Description</p></td>
<td align="left"><p>A description of the event.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Time Received</p></td>
<td align="left"><p>The date and time the event was received on the server.</p>
<div class="alert">
<strong>Note</strong>  
<p>If the client is working offline, the server receives the reports when the client is online.</p>
</div>
<div>
 
</div>
<div class="alert">
<strong>Note</strong>  
<p>By default, the events are displayed in descending date order. However, it can be changed by clicking the <strong>Time Received</strong> column.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>Client Time</p></td>
<td align="left"><p>The date and time the event occurred according to the client clock.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Host Name</p></td>
<td align="left"><p>The name of the host computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p>User Name</p></td>
<td align="left"><p>The user who initiated the event.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Workspace Name</p></td>
<td align="left"><p>The name of the MED-V workspace.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Workspace Computer Name</p></td>
<td align="left"><p>The name of the computer the MED-V workspace is running on.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-generatinganerrorlogreport"></a>How to Generate an Error Log Report


**To generate an error log report**

1.  Click the **Reports** management button.

2.  In the **Reports** module, on the **Report Types** menu, select **Error Log**, and click **Generate**.

3.  In the **Report Parameters** dialog box, configure one or more of the following parameters:

    -   **Number of days**—The number of days to display in the report.

    -   **User name contains**—Any event where the user name contains the text entered is included in the report.

    -   **Host name contains**—Any event where the host name contains the text entered is included in the report.

4.  Click **OK**.

    A report is generated with the events and dates selected. The report parameters are defined in the following table.

**Error Log Report Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Event ID</p></td>
<td align="left"><p>The event ID.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Category</p></td>
<td align="left"><p>The module that the report is referring to.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Description</p></td>
<td align="left"><p>A description of the event.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Time Received</p></td>
<td align="left"><p>The date and time the event was received on the server.</p>
<div class="alert">
<strong>Note</strong>  
<p>If the client is working offline, the server receives the reports when the client is online.</p>
</div>
<div>
 
</div>
<div class="alert">
<strong>Note</strong>  
<p>By default, the events are displayed in descending date order. However, it can be changed by clicking the <strong>Time Received</strong> column.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>Client Time</p></td>
<td align="left"><p>The date and time the event occurred according to the client clock.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Host Name</p></td>
<td align="left"><p>The name of the host computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>User Name</p></td>
<td align="left"><p>The user who initiated the event.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Workspace Name</p></td>
<td align="left"><p>The name of the MED-V workspace.</p></td>
</tr>
</tbody>
</table>

 

 

 





