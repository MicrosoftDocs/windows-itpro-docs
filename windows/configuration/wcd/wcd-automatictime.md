---
title: AutomaticTime (Windows 10)
description: This section describes the AutomaticTime settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 04/30/2018
---

# AutomaticTime (Windows Configuration Designer reference)

Use these settings to configure automatic time updates. Mobile devices primarily rely on Network Identify and Time zone (NITZ), which is provided by the mobile operator, to automatically update the time on the device. When NITZ is available from the cellular network, there are no issues maintaining accurate time in devices. However, for devices that do not have a SIM or have had the SIM removed for some time, or for devices that have a SIM but NITZ is not supported, the device may run into issues maintaining accurate time on the device.

The OS includes support for Network Time Protocol (NTP), which enables devices to receive time when NITZ is not supported or when cellular data is not available. NTP gets the time by querying a server at a specified time interval. NTP is based on Coordinated Universal Time (UTC) and doesn't support time zone or daylight saving time so users will need to manually update the time zone after an update from NTP if users move between time zones.

## Applies to

| Settings | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [EnableAutomaticTime](#enableautomatictime)  |  | X |  |  |  |
| [NetworkTimeUpdateThreshold](#networktimeupdatethreshold)  |  | X |  |  |  |
| [NTPEnabled](#ntpenabled)  |  | X |  |  |  |
| [NTPRegularSyncInterval](#ntpregularsyncinterval)  |  | X |  |  |  |
| [NTPRetryInterval](#ntpretryinterval)  |  | X |  |  |  |
| [NTPServer](#ntpserver)  |  | X |  |  |  |
| [PreferredSlot](#preferredslot)  |  | X |  |  |  |

## EnableAutomaticTime

Set to **True** to enable automatic time and to **False** to disable automatic time.

## NetworkTimeUpdateThreshold

Specify the difference (in number of seconds) between the NITZ information and the current device time before a device time update is triggered.

## NTPEnabled

Set to **True** to enable the NTP client and to **False** to disable the NTP client.

## NTPRegularSyncInterval

Set the regular sync interval for phones that are set to use Network Time Protocol (NTP) time servers. Select a value between `1` and `168` hours, inclusive, The default sync interval is `12` hours.


## NTPRetryInterval

Set the retry interval if the regular sync fails. Select a value between `1` and `24` hours, inclusive. 

## NTPServer

Change the default NTP server for phones that are set to use NTP. To enumerate the NTP source server(s) used by the NTP client, set the value for NTPServer to a list of server names, delimited by semi-colons. 

**Example**:

```
ntpserver1.contoso.com;ntpserver2.fabrikam.com;ntpserver3.contoso.com
```

The list should contain one or more server names. The default NTP source server value is `time.windows.com`.





## PreferredSlot

Specify which UICC slot will be preferred for NITZ handling on a C+G dual SIM phone.

- Set to `0` to use the UICC in Slot 0 for NITZ handling.
- Set to '1' to use the UICC in Slot 1 for NITZ handling.
