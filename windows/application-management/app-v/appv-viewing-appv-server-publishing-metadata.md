---
title: Viewing App-V Server Publishing Metadata (Windows 10/11)
description: Use this procedure to view App-V Server publishing metadata, which can help you resolve publishing-related issues.
author: aczechowski
ms.prod: windows-client
ms.date: 04/19/2017
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.technology: itpro-apps
---

# Viewing App-V Server Publishing Metadata

**Applies to**
-   Windows Server 2016

Use this procedure to view App-V Server publishing metadata, which can help you resolve publishing-related issues. You must be using the App-V Management server to use this procedure.

This article contains the following information:

-   [Definition of publishing metadata](#bkmk-whatis-pub-metadata)

-   [Syntax to use for viewing publishing metadata](#bkmk-syntax-view-pub-meta)

-   [Query values for client operating system](#bkmk-values-query-pub-meta)

## <a href="" id="bkmk-whatis-pub-metadata"></a>Definition of publishing metadata

When packages are published to a computer that is running the App-V client, metadata is sent to that computer indicating which packages and connection groups are being published. The App-V Client makes two separate requests for the following:

-   Packages and connection groups that are entitled to the client computer.

-   Packages and connection groups that are entitled to the current user.

The Publishing server communicates with the Management server to determine which packages and connection groups are available to the requester. The Publishing server must be registered with the Management server in order for the metadata to be generated.

You can view the metadata for each request in an Internet browser by using a query that is in the context of the specific user or computer.

## <a href="" id="bkmk-syntax-view-pub-meta"></a>Query syntax for viewing publishing metadata

This section provides information about queries for viewing publishing metadata for App-V 5.0 SP3 Server and App-V 5.1 server. The App-V server components have not changed since App-V 5.0 was released, so App-V 5.x Server is the version of the server used with App-V for Windows client.

**Query syntax**

`http://<PubServer>:<Publishing Port#>/?ClientVersion=<BuildNumber>&ClientOS=<OSStringValue>`

For information about the variables in this syntax, see the table that follows.

**Query example**

`http://pubsvr01:2718/?ClientVersion=10.0.14393&ClientOS=WindowsClient_10.0_x64`

In this example:

- A computer running Windows Server 2016 named “pubsvr01” hosts the Publishing service.

- The Windows client is 64-bit.

**Query parameter descriptions**

The following table describes the parameters shown in the preceding **Query syntax**.

| Parameter  | Description   |
|------------|---------------|
| `<PubServer>`  |  Name of the App-V Publishing server. |
| `<Publishing Port#>` | Port to the App-V Publishing server, which you defined when you configured the Publishing server. |
| `ClientVersion=<BuildNumber>` | Windows client build number. You can obtain this number by running the following Windows PowerShell command:<br>`(Get-CimInstance Win32_OperatingSystem).version`  |
| `ClientOS=<OSStringValue>` | Operating system of the computer that is running the App-V client. Refer to the table that follows for the correct value.<br>You can omit this parameter, with the result that only the packages that were sequenced to support all operating systems will appear in the metadata. |

To get the name of the Publishing server and the port number (`http://<PubServer>:<Publishing Port#>`) from the App-V client, look at the URL configuration of the <strong>Get-AppvPublishingServer</strong> Windows PowerShell cmdlet.

## <a href="" id="bkmk-values-query-pub-meta"></a>Query values for client operating system

In your publishing metadata query, enter the string values that correspond to the client operating system that you’re using.

|Operating system|Architecture|String value|
|--- |--- |--- |
|Windows 10/11|64-bit|WindowsClient_10.0_x64|
|Windows 10/11|32-bit|WindowsClient_10.0_x86|
|Windows 8.1|64-bit|WindowsClient_6.2_x64|
|Windows 8.1|32-bit|WindowsClient_6.2_x86|
|Windows 8|64-bit|WindowsClient_6.2_x64|
|Windows 8|32-bit|WindowsClient_6.2_x86|
|Windows Server 2012 R2|64-bit|WindowsServer_6.2_x64|
|Windows Server 2012 R2|32-bit|WindowsServer_6.2_x86|
|Windows Server 2012|64-bit|WindowsServer_6.2_x64|
|Windows Server 2012|32-bit|WindowsServer_6.2_x86|
|Windows Server 2008 R2|64-bit|WindowsServer_6.1_x64|
|Windows Server 2008 R2|32-bit|WindowsServer_6.1_x86|


<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related articles

[Technical Reference for App-V](appv-technical-reference.md)
