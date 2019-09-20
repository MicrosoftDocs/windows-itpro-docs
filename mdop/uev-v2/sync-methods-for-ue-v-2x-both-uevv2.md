---
title: Sync Methods for UE-V 2.x
description: Sync Methods for UE-V 2.x
author: dansimp
ms.assetid: af0ae894-dfdc-41d2-927b-c2ab1b355ffe
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Sync Methods for UE-V 2.x


The Microsoft User Experience Virtualization (UE-V) 2.0, 2.1, and 2.1 SP1 Agent lets you synchronize users’ application and Windows settings with the settings storage location. The *Sync Method* configuration defines how the UE-V Agent uploads and downloads those settings to the settings storage location. UE-V 2.x introduces a new SyncMethod called the *SyncProvider*. For more information about trigger events that start the synchronization of application and Windows settings, see [Sync Trigger Events for UE-V 2.x](sync-trigger-events-for-ue-v-2x-both-uevv2.md).

## SyncMethod Configuration


This table explains the changes to SyncMethod from UE-V v1.0 to v2.0 to v2.1, as well as the settings for each configuration:

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>SyncMethod Configuration</strong></p></td>
<td align="left"><p><strong>V1.0</strong></p></td>
<td align="left"><p><strong>V2.0</strong></p></td>
<td align="left"><p><strong>V2.1 and V2.1 SP1</strong></p></td>
<td align="left"><p><strong>Description</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p>SyncProvider</p></td>
<td align="left"><p>n/a</p></td>
<td align="left"><p>Default</p></td>
<td align="left"><p>Default</p></td>
<td align="left"><p>Settings changes for a specific application or for global Windows desktop settings are saved locally to a cache folder. These changes are then synchronized with the settings storage location when a synchronization trigger event takes place. Pushing out changes will save the local changes to the settings storage path.</p>
<p>This default setting is the gold standard for computers. This option attempts to synchronize the setting and times out after a short delay to ensure that the application or operating system startup isn’t delayed for a long period of time.</p>
<p>This functionality is also tied to the Scheduled task – Sync Controller Application. The administrator controls the frequency of the Scheduled task. By default, computers synchronize their settings every 30 min after logging on.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>OfflineFiles</p></td>
<td align="left"><p>Default</p></td>
<td align="left"><p>Deprecated</p></td>
<td align="left"><p>Deprecated</p></td>
<td align="left"><p>Behaves the same as SyncProvider in V2.0.</p>
<p>If Offline files are enabled and the folder is pinned then UE-V will unpin this folder and sync directly to the central SMB directory.</p>
<p><strong>NOTE:</strong> In V1.0 if you wanted to use UE-V in a CorpNet disconnected manner (aka traveling with a Laptop), then the guidance is to use Offline Files to ensure that your settings roamed.  We received sufficient customer feedback that turning on Offline files is a non-trivial enterprise blocker. So in UE-V 2, we created a tightly coupled synchronization engine to cache your data locally and synchronize the settings to the central server. This feature area does not replace Offline Files or Folder Redirection.</p>
<p>UE-V 2 does not work well with Offline folders so the guidance is not to set the settings storage path to a pinned Offline or CSC folder.</p></td>
</tr>
<tr class="even">
<td align="left"><p>External</p></td>
<td align="left"><p>n/a</p></td>
<td align="left"><p>n/a</p></td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>New in UE-V 2.1, this configuration method specifies that if UE-V settings are written to a local folder on the user computer, then any external sync engine (such as OneDrive for Business, Work Folders, Sharepoint, or Dropbox) can be used to apply these settings to the different computers that users access.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>None</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>This configuration setting is designed for the Virtual Desktop Infrastructure (VDI) and Streamed Application experience primarily. This setting should be used on Windows Server boxes used in a datacenter, where the connection will always be available.</p>
<p>Any settings changes are saved directly to the server. If the network connection to the settings storage path is not available, then the settings changes are cached on the device and are synchronized the next time that the Sync Provider runs. If the settings storage path is not found and the user profile is removed from a pooled VDI environment on logoff, then these settings changes are lost, and the user must reapply the change when the computer can again reach the settings storage path.</p>
<p>Apps and OS will wait indefinitely for the location to be present. This could cause App load or OS logon time to dramatically increase if the location is not found.</p></td>
</tr>
</tbody>
</table>

 

You can configure the sync method in these ways:

-   When you [Deploy the UE-V Agent](https://technet.microsoft.com/library/dn458891.aspx#agent) through a command-line parameter or in a batch script

-   Through [Group Policy](https://technet.microsoft.com/library/dn458893.aspx) settings

-   With the [System Center Configuration Pack](https://technet.microsoft.com/library/dn458917.aspx) for UE-V

-   After installation of the UE-V Agent, by using [Windows PowerShell or Windows Management Instrumentation (WMI)](https://technet.microsoft.com/library/dn458937.aspx)






## Related topics


[Deploy Required Features for UE-V 2.x](deploy-required-features-for-ue-v-2x-new-uevv2.md#ssl)

[Deploy Required Features for UE-V 2.x](deploy-required-features-for-ue-v-2x-new-uevv2.md#config)

[Technical Reference for UE-V 2.x](technical-reference-for-ue-v-2x-both-uevv2.md)

 

 





