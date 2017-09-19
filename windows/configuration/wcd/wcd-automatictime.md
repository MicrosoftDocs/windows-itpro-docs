---
title: AutomaticTime (Windows 10)
description: This section describes the AutomaticTime settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.date: 08/21/2017
---

# AutomaticTime (Windows Configuration Designer reference)

Use these settings to configure automatic time updates.

## Applies to

| Settings | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [NTPRegularSyncInterval](#ntpregularsyncinterval)  |  | X |  |  |  |
| [NTPRetryInterval](#ntpretryinterval)  |  | X |  |  |  |
| [NTPServer](#ntpserver)  |  | X |  |  |  |


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
