---
title: Windows 10, version 1703 Diagnostic Data (Windows 10)
description: Use this article to learn about the types of that is collected the the Full telemetry level.
keywords: privacy,Windows 10
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
localizationpriority: high
author: brianlic-msft
---

# Windows 10, version 1703 Diagnostic Data

Microsoft collects Windows diagnostic data to keep Windows up-to-date, secure, and operating properly. It also helps us improve Windows and, for users who have turned on tailored experiences, can be used to provide relevant tips and recommendations to tailor Microsoft products to the user’s needs. In keeping with our efforts to be transparent about diagnostic data Windows collects, as described in Terry Myerson’s [blog post](https://blogs.windows.com/windowsexperience/2017/01/10/continuing-commitment-privacy-windows-10/) in January 2017, this article includes descriptions of the diagnostic data that is collected by Windows at the Full telemetry level. A small subset of this data is collected at the [Basic level](https://go.microsoft.com/fwlink/?linkid=845809).


The data covered in this article is grouped into the following categories:

-   Device, Connectivity, and Configuration data
-   Product and Service Usage data
-   Product and Service Performance data
-   Software Setup and Inventory data
-   Content Consumption? data
-   Browsing History data
-   Search Requests and Query data
-   Inking, Typing, and Speech Utterance data
-   Licensing and Purchase data

> [!NOTE]  
> The majority of diagnostic data falls into the first four categories.

## Common data

Most diagnostic events contain a header of common data:

| Category Name | Examples |
| - | - |
| Common Data | Information that is added to most diagnostic events, if relevant and available:<br><ul><li>OS name, version, build, and [locale](https://msdn.microsoft.com/en-us/library/windows/desktop/dd318716.aspx)</li><li>User ID – a unique identifier associated with the user’s Microsoft Account (if one is used) or local account. The user’s Microsoft Account identifier is not collected from devices configured to send Basic Diagnostic data; Xbox UserID</li><li>Environment from which the event was logged – Application ID of app or component that logged the event, Session GUID. Used to track events over a given period of time such the period an app is running or between boots of the OS.</li><li>The diagnostic event name, Event ID, ETW[^3] opcode, version, schema signature, keywords, and flags</li><li>HTTP header information including</li><li>IP address. This is not the IP address of the device but the source address in the network packet header received by the diagnostics ingestion service.</li><li>Various IDs that are used to correlate and sequence related events together.</li><li>Device ID. This is not the user provided device name, but an ID that is unique for that device.</li><li>Device class -- Desktop, Server, or Mobile</li><li>Event collection time</li><li>Diagnostic level eg. Basic or Full, Sample level – for sampled data, what sample level is this machine opted into</li></ul> |