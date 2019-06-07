---
title: How to Deploy the App-V Databases by Using SQL Scripts
description: How to Deploy the App-V Databases by Using SQL Scripts
author: dansimp
ms.assetid: 23637936-475f-4ca5-adde-76bb27d2372b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Deploy the App-V Databases by Using SQL Scripts


Use the following instructions to use SQL scripts, rather than the Windows Installer, to:

-   Install the App-V 5.0 databases

-   Upgrade the 5.0 databases to a later version

**How to install the App-V databases by using SQL scripts**

1. Before you install the database scripts, review and keep a copy of the App-V license terms. By running the database scripts, you are agreeing to the license terms. If you do not accept them, you should not use this software.

2. Copy the **appv\_server\_setup.exe** from the App-V release media to a temporary location.

3. From a command prompt, run **appv\_server\_setup.exe** and specify a temporary location for extracting the database scripts.

   Example: appv\_server\_setup.exe /layout c:\\&lt;temporary location path&gt;

4. Browse to the temporary location that you created, open the extracted **DatabaseScripts** folder, and review the appropriate Readme.txt file for instructions:

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Database</th>
   <th align="left">Location of Readme.txt file to use</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p>Management database</p></td>
   <td align="left"><p>ManagementDatabase subfolder</p>
   <div class="alert">
   <strong>Important</strong><br/><p>If you are upgrading to or installing the App-V 5.0 SP3 Management database, see <a href="https://support.microsoft.com/kb/3031340" data-raw-source="[SQL scripts to install or upgrade the App-V 5.0 SP3 Management Server database fail](https://support.microsoft.com/kb/3031340)">SQL scripts to install or upgrade the App-V 5.0 SP3 Management Server database fail</a>.</p>
   </div>
   <div>

   </div></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Reporting database</p></td>
   <td align="left"><p>ReportingDatabase subfolder</p></td>
   </tr>
   </tbody>
   </table>



~~~
**Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issu**e? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).
~~~

## Related topics


[Deploying the App-V 5.0 Server](deploying-the-app-v-50-server.md)

[How to Deploy the App-V 5.0 Server](how-to-deploy-the-app-v-50-server-50sp3.md)









