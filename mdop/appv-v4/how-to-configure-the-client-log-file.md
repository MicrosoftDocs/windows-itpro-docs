---
title: How to Configure the Client Log File
description: How to Configure the Client Log File
author: dansimp
ms.assetid: dd79f8ce-61e2-4dc8-af03-2a353554a1b2
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Configure the Client Log File


You can use the following procedures to configure the Application Virtualization (App-V) Client log file.

**To change the log file location**

-   Edit the following registry key value to specify the new path for the log file. You must restart the **sftlist** service after changing this value. This location can also be changed interactively after installation.

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Configuration\\LogFileName

**To change the log reporting level**

-   By default, the type of messages that are written to the log include all events of severity level 4 (Informational) or higher. The severity level is stored in the following key value. Set this key value to 5 to enable verbose logging. Use verbose logging only for short periods during troubleshooting because it will generate a very large volume of messages and cause the log to fill up quickly.

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Configuration\\LogMinSeverity

**To change the log size**

-   In Application Virtualization (App-V) 4.5, the log size is controlled by the following registry key value. This value defaults to 256 MB and defines the maximum size, in MB, that the log can grow to before being reset.

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Configuration\\LogMaxSize

    **Caution**  
    This registry key value must be set to a value greater than zero to ensure the log file does get reset.

     

**To change the number of backup copies**

-   When the log file reaches the maximum size, a reset is forced when the next write to the log occurs. A reset causes a new log file to be created, and the old file is renamed as a backup. The following registry setting controls the number of backup copies of the log file that are kept when the file is reset. The default value is 4.

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Configuration\\LogRolloverCount

    The format of the backup log file names is: **sftlog\_YYYYMMDD\_hhmmss-uuu.txt** and is based on the reset time, in Universal Coordinated Time (UTC). The following table lists the symbols used in creating the file names and their descriptions.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Symbol</th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>YYYY</p></td>
    <td align="left"><p>4-digit year</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>MM</p></td>
    <td align="left"><p>2-digit month (01–12)</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>DD</p></td>
    <td align="left"><p>2-digit day of the month (01–31)</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>hh</p></td>
    <td align="left"><p>hour (00–23)</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>mm</p></td>
    <td align="left"><p>minutes (00–59)</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>ss</p></td>
    <td align="left"><p>seconds (00–59)</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>uuu</p></td>
    <td align="left"><p>milliseconds (000–999)</p></td>
    </tr>
    </tbody>
    </table>

     

## Related topics


[How to Configure the App-V Client Registry Settings by Using the Command Line](how-to-configure-the-app-v-client-registry-settings-by-using-the-command-line.md)

 

 





