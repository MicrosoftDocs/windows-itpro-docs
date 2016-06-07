---
title: Data Sent Through the Microsoft Compatibility Exchange (Windows 10)
description: The Microsoft Compatibility Exchange propagates data of various types between Microsoft Corporation, independent software vendors (ISVs) and the Application Compatibility Toolkit (ACT) Community.
ms.assetid: 3ec61e33-9db8-4367-99d5-e05c2f50e144
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
author: TrudyHa
---

# Data Sent Through the Microsoft Compatibility Exchange


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The Microsoft Compatibility Exchange propagates data of various types between Microsoft Corporation, independent software vendors (ISVs) and the Application Compatibility Toolkit (ACT) Community.

## Data Sent to Microsoft


During synchronization, the Microsoft Compatibility Exchange sends the following information to Microsoft Corporation:

-   **Application information and properties**. This data includes the application name, the vendor, the version number, the language, and the deployment type.

The data-synchronization process does not send your list of URLs visited as part of the information exchange.

## Data Sent to the ACT Community


The Microsoft Compatibility Exchange sends the following information to the ACT Community for each application that you decide to share with the ACT Community:

-   **Application information and properties**. This data includes the application name, the vendor, the version number, the language, and the deployment type.

-   **Miscellaneous data**. This data includes:

    -   The database GUID that identifies the organization that is the source of the data.

    -   The issue data.

    -   The issue ID.

    -   The platform and destination operating system.

    -   The severity.

    -   The cause.

    -   The symptom.

    -   The solution data.

    -   The solution type.

    -   The issue and solution provider.

    -   The issue and solution subprovider.

    -   The issue and solution published date.

    -   Your risk assessment.

The data-synchronization process does not send your list of URLs visited as part of the information exchange.

## Data Matching


After you send your data, the Microsoft Compatibility Exchange matches your application properties against the known issues listed in the Application Profile database. The Microsoft Compatibility Exchange downloads any issues and corresponding solutions that match your application set and then stores the information in your ACT database.

## Data Sent From Microsoft and ISVs


For each application that matches an application in the Application Profile database, the Microsoft Compatibility Exchange returns the following information, provided by authoritative sources including Microsoft Corporation and independent software vendors (ISVs).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Data</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Risk assessment</p></td>
<td align="left"><p>The determination of whether the application has compatibility issues.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Symptom</p></td>
<td align="left"><p>Behavior exhibited by the application.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Cause</p></td>
<td align="left"><p>Reason for the failure.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Provider and subprovider</p></td>
<td align="left"><p>Source of the compatibility issue.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Issue ID</p></td>
<td align="left"><p>A unique ID number for the compatibility issue.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Severity</p></td>
<td align="left"><p>Impact this issue has on the application experience.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Priority</p></td>
<td align="left"><p>Degree of impact that this issue has on your organization.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Published Date</p></td>
<td align="left"><p>Date that the source entered the data into the database.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Operating system name</p></td>
<td align="left"><p>Friendly name of the installed operating system.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Major version</p></td>
<td align="left"><p>Major version number of the operating system.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Minor version</p></td>
<td align="left"><p>Minor version number of the operating system.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Locale</p></td>
<td align="left"><p>Language ID of the application to which the compatibility issue applies.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Title</p></td>
<td align="left"><p>Short title of the compatibility issue.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Summary</p></td>
<td align="left"><p>Description of the compatibility issue.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Service pack major</p></td>
<td align="left"><p>Major version number of the operating system service pack.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Service pack minor</p></td>
<td align="left"><p>Minor version number of the operating system service pack.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>URL HREF</p></td>
<td align="left"><p>URL of any links provided for the compatibility issue.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Provider and subprovider IDs</p></td>
<td align="left"><p>IDs for the source of the compatibility issue's solution.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Solution type</p></td>
<td align="left"><p>Type of solution provided for the compatibility issue.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Locale</p></td>
<td align="left"><p>Language ID of the application to which the solution applies.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Title</p></td>
<td align="left"><p>Short title of the solution.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Details</p></td>
<td align="left"><p>Description of the solution.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>URL HREF</p></td>
<td align="left"><p>URL of any links provided for the compatibility issue solution.</p></td>
</tr>
</tbody>
</table>

 

## Data Sent From the ACT Community


For each application that matches an application in the Application Profile database, the Microsoft Compatibility Exchange returns the following ACT Community information, which you receive only if you are a member of the ACT Community:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Data</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Works</strong></p></td>
<td align="left"><p>The count of <strong>Works</strong> ratings, for 32-bit and 64-bit operating systems.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Works with Minor Issues or has Solutions</strong></p></td>
<td align="left"><p>The count of <strong>Works with Minor Issues or has Solutions</strong> ratings, for 32-bit and 64-bit operating systems.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Does Not Work</strong></p></td>
<td align="left"><p>The count of <strong>Does Not Work</strong> ratings, for 32-bit and 64-bit operating systems.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Selecting the Send and Receive Status for an Application](selecting-the-send-and-receive-status-for-an-application.md)

[Sending and Receiving Compatibility Data](sending-and-receiving-compatibility-data.md)

 

 





