---
title: Monitoring MED-V Workspace Deployments
description: Monitoring MED-V Workspace Deployments
author: levinec
ms.assetid: 5de0cb06-b8a9-48a5-b8b3-836954295765
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Monitoring MED-V Workspace Deployments


The monitoring feature in Microsoft Enterprise Desktop Virtualization (MED-V) 2.0 lets you run queries on individual MED-V workspaces to determine whether first time setup succeeded throughout your enterprise after the MED-V workspaces are deployed. Monitoring the success of first time setup is important because MED-V is not in a usable state until first time setup has been completed successfully.

This section provides information and instruction to assist you in monitoring the success or failure of first time setup.

## To monitor MED-V workspace deployments


The monitoring feature consists of a coupled in-process Windows Management Instrumentation (WMI) provider that you can query using WMI Query Language to discover the status of first time setup for all end users on a MED-V workspace.

The WMI provider is implemented by using the WMI Provider Extension framework from the Microsoft .Net Framework 3.5. The WMI provider executes in the context of LocalService and stores the first time setup state securely under \\ProgramData.

The WMI provider is implemented in the **root\\microsoft\\medv** namespace and implements the class **FTS\_Status**, which exposes the method **SetFtsState**. MED-V uses **SetFtsState** to set the first time setup state.

The class contains the following properties.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Machine</strong></p></td>
<td align="left"><p><strong>Read Only</strong> property that contains the name of the guest virtual machine provisioned by first time setup. This key contains the name that the guest would have had on first time setup failure.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>StatusCode</strong></p></td>
<td align="left"><p><strong>Read Only</strong> property that contains zero if first time setup succeeded. Any other value returned equals the event ID for the error that is logged.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Time</strong></p></td>
<td align="left"><p>The UTC time that first time setup completed.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>User</strong></p></td>
<td align="left"><p>The user for which first time setup was run.</p></td>
</tr>
</tbody>
</table>

 

The following code shows the Managed Object Format (MOF) file that defines the **FTS\_Status** class.

``` syntax
[dynamic: ToInstance, provider("MedvWmi, Version=2.0.258.0, Culture=neutral, PublicKeyToken=14986c3f172d1c2c")]
class FTS_Status
{
[read, key] string User;
[read] string Machine;
[read] sint32 StatusCode;
[read] datetime Time;
[static, implemented] void SetFtsState([in] sint32 statusCode, [in] string machine);
};
```

Because your main concern is most likely those MED-V workspaces for which first time setup was not completed successfully, you can write your query to only return those that failed first time setup, for example:

``` syntax
Select * from FTS_Status where StatusCode != 0
```

In this case, the monitoring feature returns a list of those MED-V workspaces that failed first time setup, which you can use to take the appropriate actions to resolve the failure.

## Related topics


[Monitor MED-V Workspaces](monitor-med-v-workspaces.md)

[How to Verify First Time Setup Settings](how-to-verify-first-time-setup-settings.md)

 

 





