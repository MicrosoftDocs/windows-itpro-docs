---
title: Managing Automatic Updates for MED-V Workspaces
description: Managing Automatic Updates for MED-V Workspaces
author: dansimp
ms.assetid: 306f28a2-d653-480d-b737-4b8b3132de5d
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Managing Automatic Updates for MED-V Workspaces


The MED-V workspace is a virtual machine that contains a separate operating system, whose automatic software update process must be managed just like the physical computers in your enterprise. Because the guest operating system is not always necessarily running when the host operating system is running, you must ensure that the MED-V virtual machine is configured in such a way that software updates can be applied to the guest operating system as required. The Microsoft Enterprise Desktop Virtualization (MED-V) 2.0 solution provides the functionality that lets you determine how automatic software updates are processed in a MED-V workspace.

## Managing MED-V Workspace Wake-Up Policy


The MED-V workspace wake-up policy guarantees that the MED-V virtual machine is made available for updates for the time that you specify in your MED-V configuration settings. This applies to both updates that are published from Microsoft through Windows Update and updates deployed and controlled by non-Microsoft solutions, such as antivirus applications.

**Important**  
The MED-V workspace wake-up policy is optimized for the Microsoft Update infrastructure. If you are using Microsoft System Center Configuration Manager to deploy non-Microsoft updates, we recommend that you also use the System Center Updates Publisher, which takes advantage of the same infrastructure as Microsoft Update and therefore benefits from the MED-V workspace wake-up policy. For more information, see [System Center Updates Publisher](https://go.microsoft.com/fwlink/?LinkId=200035) (https://go.microsoft.com/fwlink/?LinkId=200035).

 

When you created your MED-V workspace package, you configured when and how it starts, either when the end user logs on (**Fast Start**) or when the end user first opens a published application (**Normal Start**). Or you set the option to let the end user control this setting.

Either way, whenever the **Fast Start** option is selected, the virtual machine continues to run as long as the MED-V host is logged on as User. In this configuration, because MED-V is active when the host is active, automatic updates are applied without requiring any extra processing from MED-V.

However, for those cases in which **Fast Start** is not specified or the virtual machine hibernates or stops, MED-V guarantees through its MED-V workspace wake-up policy that the guest operating system is being regularly updated even when MED-V is not used regularly. MED-V performs this function by regularly waking up the virtual machine based on the configuration settings that you specify. This enables the automatic update clients in the virtual machine to execute based on their configurations. After the time period defined by the MED-V configuration setting elapses, MED-V returns the virtual machine to its previous state.

**Note**  
If the end user opens a published application during the update period, the required updates are applied, but MED-V is not automatically hibernated or shut down after the update period ends. Instead, MED-V continues running.

 

The MED-V workspace wake-up policy includes three main components:

**Guest Update Manager**

Residing on the MED-V host, this stand-alone executable program is responsible for waking up the virtual machine according to a predefined, configurable schedule. Specify the configuration settings to indicate at what time the update manager should wake up the virtual machine every day, and how long the virtual machine should be kept awake (in minutes) to allow for updates to be applied. After the number of minutes specified has been reached, the guest update manager puts the virtual machine into hibernation, prepared for the next use. You can schedule the execution of this executable program through the Windows Task Manager.

**Guest Restart Management Service**

Residing on the MED-V host, this service has three primary responsibilities. Along with the Guest Update Manager, it manages the restart of the virtual machine at user logon, if it is required. It detects when virtual machine restarts are required caused by updates being installed. And it ensures that the task for the Guest Update Manager is always scheduled according to configuration.

**Guest Update Service**

Residing on the MED-V virtual machine, this Windows service has the responsibility of monitoring when installed updates require a restart. After the service becomes aware of the need for a restart, it notifies the guest restart management service on the host.

### Configuration Settings for MED-V Workspace Wake-Up Policy

You control when and for how long the virtual machine awakens to receive automatic updates by defining the following two configuration values in the registry. Both of these values are located under the HKLM\\Software\\Microsoft\\MEDV\\v2\\VM key.

**GuestUpdateTime** – Configures the hour and minute each day when MED-V must wake up the virtual machine for updating, based on the 24-hour clock standard. Specify the time in the format HH:MM. The default value is 00:00 (midnight).

**GuestUpdateDuration** – Configures the number of minutes that MED-V must keep the virtual machine awake for updating, starting at the time specified in the GuestUpdateTime configuration setting. The default value is 240 (4 hours). Setting this value to zero (0) disables the MED-V workspace wake-up policy.

For more information about how to define your MED-V configuration values, see [Managing MED-V Workspace Configuration Settings](managing-med-v-workspace-configuration-settings.md).

**Note**  
A MED-V best practice is to set your wake up interval to match the time when MED-V virtual machines are planned to be updated regularly. In addition, we recommend that you configure these settings to resemble the host computer’s behavior.

 

### Reboot Notification Using your ESD System

You can configure your ESD system to notify MED-V whenever a restart is required for the MED-V workspace after automatic updates have been applied. When you apply automatic updates through your ESD system that you know require a restart, you should write a script to signal the following global event on the MED-V workspace:

**Important**  
You must open the event with Modify Only rights and then signal it. If you do not open it with the correct permissions, it does not work.

 

``` syntax
/// <summary>
/// The guest is required to be restarted due to an ESD update.
/// </summary>
public const string MedvGuestRebootRequiredEventName = @"Global\MedvGuestRebootRequiredEvent";
using (EventWaitHandle notificationEvent = 
EventWaitHandle.OpenExisting(eventName, EventWaitHandleRights.Modify))
{
notificationEvent.Set();
}
```

When you signal this event, MED-V captures it and informs the virtual machine that a restart is required.

## Related topics


[Managing Software Updates for MED-V Workspaces](managing-software-updates-for-med-v-workspaces.md)

 

 





