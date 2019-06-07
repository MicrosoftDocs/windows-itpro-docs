---
title: How to Change the Log Reporting Levels and Reset the Log Files
description: How to Change the Log Reporting Levels and Reset the Log Files
author: dansimp
ms.assetid: 9561d6fb-b35c-491b-a355-000064583194
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Change the Log Reporting Levels and Reset the Log Files


You can use the following procedure to change the log reporting level from the **Application Virtualization** node in the Application Virtualization Management Console. When the log file reaches the maximum size (default is 256 MB), a reset is forced when the next write to the log occurs. A reset causes a new log file to be created, and the old file is renamed as a backup.

**To change the log reporting level**

1.  Right-click the **Application Virtualization** node, and select **Properties** from the pop-up menu.

2.  On the **General** tab in the **Properties** dialog box, from the **Log Level** drop-down list, select the desired log level.

    **Note**  
    If you choose **Verbose** as the logging level, the log files will grow large very quickly. This might inhibit client performance, so best practice is to use this log level only for diagnosing specific problems.

     

3.  On the **General** tab in the **Properties** dialog box, from the **System Log Level** drop-down list, select the desired log level.

    **Note**  
    The **System Log Level** setting controls the level of messages sent to the system event log. The logged messages are identical to the messages that get logged to the client event log, but they are stored in a different location.

     

4.  Click **OK** or **Apply** to change the setting.

**To reset the log file**

1.  Right-click the **Application Virtualization** node, and select **Properties** from the pop-up menu.

2.  On the **General** tab in the **Properties** dialog box, click **Reset Log** to back up the current log file and immediately start a new log file. The backup log files are stored in the same folder.

3.  Click **OK** or **Apply** to change the setting.

## Related topics


[How to Configure the Client in the Application Virtualization Client Management Console](how-to-configure-the-client-in-the-application-virtualization-client-management-console.md)

[User Access Permissions in Application Virtualization Client](user-access-permissions-in-application-virtualization-client.md)

 

 





