---
title: Manage settings with an MDM provider (Surface Hub)
description: Microsoft Surface Hub provides an enterprise management solution to help IT administrators manage policies and business applications on these devices using a mobile device management (MDM) solution.
ms.assetid: 18EB8464-6E22-479D-B0C3-21C4ADD168FE
keywords: mobile device management, MDM, manage policies
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: surfacehub, mobility
author: TrudyHa
localizationpriority: high
---

# Manage settings with an MDM provider (Surface Hub)


Microsoft Surface Hub provides an enterprise management solution to help IT administrators manage policies and business applications on these devices using a mobile device management (MDM) solution.

The Surface Hub operating system has a built-in management component that's used to communicate with the device management server. There are two parts to the Surface Hub management component: the enrollment client, which enrolls and configures the device to communicate with the enterprise management server; and the management client, which periodically synchronizes with the management server to check for and apply updates. Third-party MDM servers can manage Surface Hub devices by using the Mobile Device Management protocol.

### Supported services

Surface Hub management has been validated for the following MDM providers:

-   Microsoft Intune
-   System Center Configuration Manager

### <a href="" id="enroll-into-mdm"></a>Enroll a Surface Hub into MDM

If you joined your Surface Hub to an Azure Active Directory (Azure AD) subscription, the device can automatically enroll into MDM and will be ready for remote management.

Alternatively, the device can be enrolled like any other Windows device by going to **Settings** &gt; **Accounts** &gt; **Work access**.

![Image showing enroll in device maagement page.](images/managesettingsmdm-enroll.png)

### Manage a device through MDM

The following table lists the device settings that can be managed remotely using MDM, including the OMA URI paths that 3rd party MDM providers need to create policies. Intune and SCCM have special templates to help create policies to manage these settings.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"></th>
<th align="left">Setting</th>
<th align="left">OMA URI</th>
<th align="left">Type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>1</p></td>
<td align="left"><p>Auto Awake when someone is in the room</p></td>
<td align="left"><p>./Vendor/MSFT/SurfaceHub/InBoxApps/Welcome/AutoWakeScreen</p></td>
<td align="left"><p>Boolean</p></td>
</tr>
<tr class="even">
<td align="left"><p>2</p></td>
<td align="left"><p>Require that people must enter a PIN when pairing to the Surface Hub</p></td>
<td align="left"><p>./Vendor/MSFT/SurfaceHub/InBoxApps/WirelessProjection/PINRequired</p></td>
<td align="left"><p>Boolean</p></td>
</tr>
<tr class="odd">
<td align="left"><p>3</p></td>
<td align="left"><p>Set the maintenance window duration. This time is in minutes. As an example, to set a 3 hour duration, you set the value to 180.</p></td>
<td align="left"><p>./Vendor/MSFT/SurfaceHub/MaintenanceHoursSimple/Hours/Duration</p></td>
<td align="left"><p>Int</p></td>
</tr>
<tr class="even">
<td align="left"><p>4</p></td>
<td align="left"><p>Set the maintenance window start time. This time is in minutes past midnight. To set a 2:00 am start time, set a value of 120, meaning 120 minutes past midnight.</p></td>
<td align="left"><p>./Vendor/MSFT/SurfaceHub/MaintenanceHoursSimple/Hours/StartTime</p></td>
<td align="left"><p>Int</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5</p></td>
<td align="left"><p>The Microsoft Operations Management Suite (OMS) Workspace ID that this device will connect to.</p></td>
<td align="left"><p>./Vendor/MSFT/SurfaceHub/MOMAgent/WorkspaceID</p></td>
<td align="left"><p>String</p></td>
</tr>
<tr class="even">
<td align="left"><p>6</p></td>
<td align="left"><p>The key that must be used when connecting to the specified OMS workspace.</p></td>
<td align="left"><p>./Vendor/MSFT/SurfaceHub/MOMAgent/WorkspaceKey</p></td>
<td align="left"><p>String</p></td>
</tr>
<tr class="odd">
<td align="left"><p>7</p></td>
<td align="left"><p>Choose the meeting information displayed on the welcome screen.</p>
<p>Value : 0 - Show organizer and time only</p>
<p>Value : 1 - Show organizer, time, and subject (subject is hidden for private meetings)</p></td>
<td align="left"><p>./Vendor/MSFT/SurfaceHub/InBoxApps/Welcome/MeetingInfoOption</p></td>
<td align="left"><p>Int</p></td>
</tr>
<tr class="even">
<td align="left"><p>8</p></td>
<td align="left"><p>Enable/Disable all Wireless Projection to the Surface Hub</p></td>
<td align="left"><p>./Vendor/MSFT/SurfaceHub/InBoxApps/WirelessProjection/Enabled</p></td>
<td align="left"><p>Boolean</p></td>
</tr>
<tr class="odd">
<td align="left"><p>9</p></td>
<td align="left"><p>Select a specific wireless channel on which Miracast Receive will operate</p></td>
<td align="left"><p>./Vendor/MSFT/SurfaceHub/InBoxApps/WirelessProjection/Channel</p></td>
<td align="left"><p>Int</p></td>
</tr>
<tr class="even">
<td align="left"><p>10</p></td>
<td align="left"><p>Change the background image for the welcome screen using a PNG image URL.</p></td>
<td align="left"><p>./Vendor/MSFT/SurfaceHub/InBoxApps/Welcome/CurrentBackgroundPath (Note: must be accessed using https.)</p></td>
<td align="left"><p>String</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Manage Microsoft Surface Hub](manage-surface-hub.md)

[Microsoft Surface Hub administrator's guide](surface-hub-administrators-guide.md)

 

 





