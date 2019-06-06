---
title: Application Virtualization Properties General Tab
description: Application Virtualization Properties General Tab
author: dansimp
ms.assetid: be7449d9-171a-4a11-9382-83b7008ccbdd
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Application Virtualization Properties: General Tab


Use the **General** tab of the **Application Virtualization Properties** dialog box to modify log settings and data locations.

This tab contains the following elements.

<a href="" id="log-level"></a>**Log Level**  
Select the level from the drop-down list. The default level is **Information**.

<a href="" id="reset-log"></a>**Reset Log**  
Click this button to back up the current log file and immediately start a new log file.

<a href="" id="location"></a>**Location**  
Enter or browse to the location where you want to save the log file sftlog.txt. The default locations are as follows:

-   For Windows XP, Windows Server 2003—*C:\\Documents and Settings\\All Users\\Application Data\\Microsoft\\Application Virtualization Client*

-   For Windows Vista, Windows 7, Windows Server 2008—*C:\\ProgramData\\Microsoft\\Application Virtualization Client*

<a href="" id="system-log-level"></a>**System Log Level**  
Select the level from the drop-down list. The default level is **Warning**.

**Note**  
The **System Log Level** setting controls the level of messages sent to the system event log. The logged messages are identical to the messages that get logged to the client event log, but they are stored in a different location that does not have the space limitations of the client event log. Because the system event log does not have space limitations, it is ideally suited for situations where verbose logging is necessary.

 

<a href="" id="global-data-directory"></a>**Global Data Directory**  
Enter or browse to the location of the directory of the log file. The default locations are as follows:

-   For Windows XP, Windows Server 2003—*C:\\Documents and Settings\\All Users\\Application Data\\Microsoft\\Application Virtualization Client*

-   For Windows Vista, Windows 7, Windows Server 2008—*C:\\ProgramData\\Microsoft\\Application Virtualization Client*

<a href="" id="user-data-directory"></a>**User Data Directory**  
Enter or browse to the location of the directory where user-specific data is stored. The default is %APPDATA%. This path must be a valid environment variable on the client computer.

## Related topics


[Client Management Console: Application Virtualization Properties](client-management-console-application-virtualization-properties.md)

 

 





