---
title: Log File Locations for Data Collection Packages (Windows 10)
MSHAttr: PreferredLib /library
ms.assetid: dcc395e7-2d9c-4935-abab-33c5934ce24a
description: 
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# Log File Locations for Data-Collection Packages


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

When you create a data-collection package in Application Compatibility Manager (ACM), you can select an output location for your log files. You have the following options:

-   Specify an ACT Log Processing Service (LPS) share. The data-collection package automatically writes the log files to the specified ACT LPS share.

    If the ACT LPS share is unavailable when the upload time interval is reached, the data-collection package will make two more attempts.

    For inventory collector packages, after the third attempt, the inventory collector package no longer attempts to upload data.

    For runtime-analysis packages, if the problem persists, the runtime-analysis package will store the log file in %SYSTEMDRIVE%\\Users\\All Users\\Microsoft\\Application Compatibility Toolkit\\LogProcessor\\Failed. The runtime-analysis package will attempt to upload the files again at the next upload interval.

-   Select **Local (%ACTAppData%\\DataCollector\\Output)**. If you use this option, the data-collection package creates log files on the local system and the computer administrator must manually copy the files to the ACT LPS share location. Consider this option for mobile users who are not always connected to the network. The log files are located in %SYSTEMDRIVE%\\Users\\All Users\\Microsoft\\Application Compatibility Toolkit\\DataCollector\\Output.

-   Type an alternate network share location. If you use this option, verify that the data-collection package can write to the alternate location. You might consider this option if your organization is geographically diverse. For example, administrators can create data-collection packages and file shares individually for each geographic location. Administrators at a central location must then move the log files to a central location and map the files to the ACT LPS share for processing and entry into the ACT database.

## Related topics


[Exporting a Data-Collection Package](exporting-a-data-collection-package.md)

[Deleting a Data-Collection Package](deleting-a-data-collection-package.md)

[Labeling Data in ACM](labeling-data-in-acm.md)

 

 





