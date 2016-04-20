---
title: ACT Tools, Packages, and Services (Windows 10)
description: The Application Compatibility Toolkit is included with the Windows ADK. Download the Windows ADK.
ms.assetid: f5a16548-7d7b-4be9-835e-c06158dd0b89
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# ACT Tools, Packages, and Services


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The Application Compatibility Toolkit is included with the Windows ADK. [Download the Windows ADK.](http://go.microsoft.com/fwlink/p/?LinkId=526740)

ACT includes the following:

-   **Application Compatibility Manager (ACM):** A tool that you can use to create your data-collection packages and analyze the collected inventory and compatibility data.

-   **Inventory-collector package:** A data-collection package that can be deployed to computers to gather inventory data that will be uploaded to the ACT database.

-   **Runtime-analysis package:** A data-collection package that can be deployed to computers in a test environment for compatibility testing on the new operating system.

-   **ACT Log Processing Service (LPS):** A service that is used to process the ACT log files uploaded from the computers where your data-collection packages have been installed. The service adds the information to your ACT database.

-   **ACT LPS share:** A file share that is accessed by the ACT LPS, to store the log files that will be processed and added to the ACT database.

-   **ACT database:** A Microsoft® SQL Server database that stores the collected inventory and compatibility data. You can use ACM to view the information stored in the ACT database.

-   **Microsoft Compatibility Exchange:** A web service that propagates application-compatibility issues.

## Related topics


[ACT Deployment Options](act-deployment-options.md)

[ACT Database Configuration](act-database-configuration.md)

[ACT Database Migration](act-database-migration.md)

[ACT LPS Share Permissions](act-lps-share-permissions.md)

 

 





