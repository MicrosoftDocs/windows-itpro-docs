---
title: Manage Microsoft Surface Hub
description: How to manage your Surface Hub after finishing the first-run program.
ms.assetid: FDB6182C-1211-4A92-A930-6C106BCD5DC1
keywords: manage Surface Hub
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: surfacehub
author: TrudyHa
localizationpriority: medium
---

# Manage Microsoft Surface Hub


How to manage your Surface Hub after finishing the first-run program.

## Introduction


After initial setup of Microsoft Surface Hub, the device’s settings and configuration can be modified or changed in several ways:

-   Local management: using the Settings app on the device
-   Remote management: using a mobile device management (MDM) solution, like Microsoft Intune, AirWatch, or System Center 2012 R2 Configuration Manager.

For locally-managed devices, administrator credentials are required to use the Settings app. These can be login credentials for Active Directory, Azure Active Directory (Azure AD), or a local admin account. One of these will have been selected during first run (see [Set up admins for this device](first-run-program-surface-hub.md#setup-admins)).

For remotely-managed devices, the device must be enrolled into an MDM solution, either during first run or in the Settings app.

Be aware that the two management methods are not mutually exclusive—every device will have the capability to be locally managed, and devices can be remotely managed if you choose.

>**Note**  If a device is remotely managed, then any changes to local settings that are also remotely managed will only persist until the next time your Surface Hub syncs with your MDM solution. Once a sync occurs, the settings and policies defined on your MDM solution will be pushed to the device, overwriting the local changes.

 

## Surface Hub-only settings


Surface Hubs have many settings that are common to other Windows devices, but also have settings which are only configurable on Surface Hubs.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Location</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Change friendly name</p></td>
<td align="left"><p>System - About</p></td>
<td align="left"><p>Set the Surface Hub name that people will see when connecting wirelessly.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Collect logs</p></td>
<td align="left"><p>System - About</p></td>
<td align="left"><p>Collect logs to give to Microsoft Support.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Change meeting info shown on the welcome screen</p></td>
<td align="left"><p>System – Microsoft Surface Hub</p></td>
<td align="left"><p>Choose whether meeting organizer, time, and subject show up on the welcome screen.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Session time out</p></td>
<td align="left"><p>System – Microsoft Surface Hub</p></td>
<td align="left"><p>Choose how long the device needs to be inactive before returning to the welcome screen.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Turn on screen with motion sensors</p></td>
<td align="left"><p>System – Microsoft Surface Hub</p></td>
<td align="left"><p>Choose whether the screen turns on when motion is detected.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure Microsoft Operational Management Suite (MOMS)</p></td>
<td align="left"><p>System – Microsoft Surface Hub</p></td>
<td align="left"><p>Add information to set up monitoring using MOMS.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Change Skype for Business fully qualified domain name (FQDN)</p></td>
<td align="left"><p>System – Microsoft Surface Hub</p></td>
<td align="left"><p>Add the FQDN for a Skype for Business certificate.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Save BitLocker key</p></td>
<td align="left"><p>System – Microsoft Surface Hub</p></td>
<td align="left"><p>Set the default destination for saving the BitLocker recovery key to a USB drive.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Turn off wireless projection using Miracast</p></td>
<td align="left"><p>Devices - Connect</p></td>
<td align="left"><p>Choose whether presenters can wirelessly project to the Surface Hub using Miracast.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Require a PIN for wireless projection</p></td>
<td align="left"><p>Devices - Connect</p></td>
<td align="left"><p>Choose whether people are required to enter a PIN before they use wireless projection.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Wireless projection (Miracast) channel</p></td>
<td align="left"><p>Devices - Connect</p></td>
<td align="left"><p>Change the channel for Miracast projection.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Change device account</p></td>
<td align="left"><p>Accounts - All accounts</p></td>
<td align="left"><p>Change the Surface Hub's device account.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Check sync status</p></td>
<td align="left"><p>Accounts - All accounts</p></td>
<td align="left"><p>Check the sync status of the device account’s mail and calendar on the Surface Hub.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Turn on password rotation</p></td>
<td align="left"><p>Accounts - All accounts</p></td>
<td align="left"><p>Choose whether the device account’s password will automatically change every day (Active Directory only).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Edit admin account</p></td>
<td align="left"><p>Accounts - All accounts</p></td>
<td align="left"><p>Change the password for the local admin account.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Change maintenance hours</p></td>
<td align="left"><p>Updates &amp; security – Windows Update – Advanced settings</p></td>
<td align="left"><p>Set the hours when updates can be installed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configure Windows Server Update Services (WSUS) server</p></td>
<td align="left"><p>Updates &amp; security – Windows Update – Advanced settings</p></td>
<td align="left"><p>Change whether the device receives updates from the WSUS you choose.</p></td>
</tr>
</tbody>
</table>

 
## Which should I choose?


If you plan to deploy multiple Surface Hubs, we recommend that you manage your devices remotely. This requires that your organization use an MDM solution to deploy policies. For more information, see [Manage settings with an MDM provider](manage-settings-with-mdm-for-surface-hub.md).

Every Surface Hub can be managed locally by an admin who physically logs in to the device. Which method is used to log in is decided during first run (see [Set up admins for this device](first-run-program-surface-hub.md#setup-admins)).

## In this section

|Topic | Description|
| ------ | --------------- |
| [Remote Surface Hub management](remote-surface-hub-management.md) |Topics related to managing your Surface Hub remotely. Include install apps, managing settings with MDM and monitoring with Operations Management Suite. |
| [Manage Surface Hub settings](manage-surface-hub-settings.md) |Topics related to managing Surface Hub settings: accessibility, device account, device reset, fully qualified domain name, Windows Update settings, and wireless network |
| [Save your BitLocker key](https://technet.microsoft.com/itpro/surface-hub/save-bitlocker-key-surface-hub) | Every Surface Hub is automatically set up with BitLocker drive encryption software. Microsoft strongly recommends that you make sure you back up your BitLocker recovery keys.|
| [End a meeting with I’m done](https://technet.microsoft.com/itpro/surface-hub/i-am-done-finishing-your-surface-hub-meeting) | At the end of a meeting, users can tap I'm Done to clean up any sensitive data and prepare the device for the next meeting.|
| [Connect other devices and display with Surface Hub](https://technet.microsoft.com/itpro/surface-hub/connect-and-display-with-surface-hub) | You can connect other device to your Surface Hub to display content.|
| [Using a room control system]( https://technet.microsoft.com/itpro/surface-hub/use-room-control-system-with-surface-hub) | Room control systems can be used with your Microsoft Surface Hub.|

