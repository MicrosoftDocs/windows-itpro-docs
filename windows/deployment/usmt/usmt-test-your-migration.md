---
title: Test Your Migration (Windows 10)
description: Test Your Migration
ms.assetid: 754af276-8386-4eac-8079-3d1e45964a0d
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Test Your Migration


Always test your migration plan in a controlled laboratory setting before you deploy it to your entire organization. In your test environment, you need at least one computer for each type of operating system from which you are migrating data.

After you have thoroughly tested the entire migration process on a single computer running each of your source operating systems, conduct a pilot migration with a small group of users. After migrating a few typical user states to the intermediate store, note the space required and adjust your initial calculations accordingly. For details about estimating the space needed for your migration, see [Estimate Migration Store Size](usmt-estimate-migration-store-size.md). You might also need to adjust the registry-setting and file-location information in your migration-rule files. If you make changes, test the migration again. Then verify that all data and settings have migrated as expected. A pilot migration also gives you an opportunity to test your space estimates for the intermediate store.

If your test migration encounters any errors, examine the ScanState and LoadState logs to obtain the exact User State Migration Tool (USMT) 10.0 return code and associated error messages or Windows application programming interface (API) error message. For more information about USMT return codes and error messages, see [Return Codes](usmt-return-codes.md). You can also obtain more information about a Windows API error message by typing **net helpmsg** and the error message number on the command line.

In most cases, the ScanState and LoadState logs indicate why a USMT migration is failing. We recommend that you use the **/v**<em>:5</em> option when testing your migration. This verbosity level can be adjusted in a production migration. Reducing the verbosity level might make it more difficult to diagnose failures that are encountered during production migrations. You can use a higher verbosity level if you want the log files output to go to a debugger.

**Note**  
Running the ScanState and LoadState tools with the **/v**<em>:5</em> option creates a detailed log file. Although this option makes the log file large, it is helpful in determining where migration errors occurred.

 

After you have determined that the pilot migration successfully migrated the specified files and settings, you are ready to add USMT to the server that is running Microsoft® System Center Configuration Manager (SCCM), or a non-Microsoft management technology. For more information, see [Configuration Manager](https://go.microsoft.com/fwlink/p/?LinkId=140246).

**Note**  
For testing purposes, you can create an uncompressed store using the **/hardlink /nocompress** option. When compression is disabled, the ScanState tool saves the files and settings to a hidden folder named "File" at *StorePath*\\USMT. You can use the uncompressed store to view what USMT has stored or to troubleshoot a problem, or you can run an antivirus utility against the files. Additionally, you can also use the **/listfiles** command-line option and the diagnostic log to list the files that were gathered and to troubleshoot problems with your migration.

 

## Related topics


[Plan Your Migration](usmt-plan-your-migration.md)

[Log Files](usmt-log-files.md)

 

 





