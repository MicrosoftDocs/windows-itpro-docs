---
title: Viewing and Configuring MED-V Logs
description: Viewing and Configuring MED-V Logs
author: levinec
ms.assetid: a15537ce-981d-4f55-9c3c-e7fbf94b8fe5
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Viewing and Configuring MED-V Logs


When you are troubleshooting MED-V issues and problems, you may find it helpful or necessary to access the MED-V event logs. You can open Event Viewer for the host computer and the guest virtual machine by using the MED-V Administration Toolkit. You can also use the MED-V Administration Toolkit to set the logging level at which the MED-V event logs report MED-V events.

For information about how to open the MED-V Administration Toolkit, see [Troubleshooting MED-V by Using the Administration Toolkit](troubleshooting-med-v-by-using-the-administration-toolkit.md).

## Viewing MED-V Event Logs


On the **MED-V Administration Toolkit** window, click **Host Events** to open the event viewer for the host computer. Or, click **Guest Events** to open Event Viewer for the guest virtual machine.

Event Viewer opens and displays the corresponding event logs that you can use to troubleshoot the issues that you might encounter when you deploy or manage MED-V. By default, only errors and warnings are displayed. For more information about specific event IDs and messages, see [MED-V Event Log Messages](med-v-event-log-messages.md).

**Note**  
End users can only save event log files in the guest if they have administrative permissions.

 

### To manually open the Event Viewer in the host computer

1.  Click **Start**, click **Control Panel**, and then click **Administrative Tools**.

2.  Double-click **Event Viewer**, and then click **Applications and Services Logs**.

3.  Double-click **MEDV**.

## Configuring MED-V Event Logs


You can specify the MED-V event logging level by selecting the corresponding option button on the MED-V Administration Toolkit. You can decide whether event logging includes errors only, errors and warnings, or errors, warnings and informational messages. The event logging level specified is set for both the host computer and the guest virtual machine.

You can also specify the event logging level by editing the EventLogLevel registry value. For more information, see [Managing MED-V Workspace Configuration Settings](managing-med-v-workspace-configuration-settings.md).

**Note**  
The level you specify on the **MED-V Administration Toolkit** window applies to future MED-V event logging. If you set the level to capture all errors, warnings, and informational messages, then the event logs fill more quickly and older events are removed.

 

## Related topics


[Restarting and Resetting a MED-V Workspace](restarting-and-resetting-a-med-v-workspace.md)

[Viewing MED-V Workspace Configurations](viewing-med-v-workspace-configurations.md)

 

 





