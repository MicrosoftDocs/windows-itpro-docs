---
title: System Utilization Report
description: System Utilization Report
author: dansimp
ms.assetid: 4d490d15-2d1f-4f2c-99bb-0685447c0672
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# System Utilization Report


Use the System Utilization Report to graph the total daily system usage. You can use this report to determine the load on your Application Virtualization System.

This report tracks the usage over time during the reporting period for the specified server or for the server group.

The System Utilization Report also graphs the following system usage:

-   Usage by day of the week

-   Usage by hour of the day

The System Utilization Report also includes a summary of the total system usage for specific users and total session counts.

When you create a report, you specify the parameters that are used for collecting the data when the report is run.

Reports are not run automatically; you must run them explicitly to generate output data. The length of time it takes to run this report is determined by the amount of data collected in the data store.

After you run a report and the output is displayed in the Application Virtualization Server Management Console, you can export the report into the following formats:

-   Adobe Acrobat (PDF)

-   Microsoft Office Excel

**Note**  
The App-V server name reported from the clients must be part of the Default Server Group in order for the System Utilization report to show data. For example, if you are using multiple servers with a Network Load Balancer (NLB), you must add the NLB cluster name to the Default Server Group.

 

## Related topics


[How to Create a Report](how-to-create-a-reportserver.md)

[How to Delete a Report](how-to-delete-a-reportserver.md)

[How to Export a Report](how-to-export-a-reportserver.md)

[How to Print a Report](how-to-print-a-reportserver.md)

[How to Run a Report](how-to-run-a-reportserver.md)

 

 





