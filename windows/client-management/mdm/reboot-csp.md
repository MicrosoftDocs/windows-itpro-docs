---
title: Reboot CSP
description: Learn how the Reboot configuration service provider (CSP) is used to configure reboot settings.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# Reboot CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The Reboot configuration service provider is used to configure reboot settings.

The following shows the Reboot configuration service provider management objects in tree format as used by Open Mobile Alliance Device Management (OMA DM), OMA Client Provisioning, and Enterprise DM.

```
./Device/Vendor/MSFT
Reboot
----RebootNow
----Schedule
--------Single
--------DailyRecurrent
```

<a href="" id="--vendor-msft-reboot"></a>**./Vendor/MSFT/Reboot**

The root node for the Reboot configuration service provider.

The supported operation is Get.

<a href="" id="rebootnow"></a>**RebootNow**

This node executes a reboot of the device. RebootNow triggers a reboot within 5 minutes to allow the user to wrap up any active work.

> [!NOTE]
> If this node is set to execute during a sync session, the device will reboot at the end of the sync session.

The supported operations are Execute and Get.

<a href="" id="schedule"></a>**Schedule**

The supported operation is Get.

<a href="" id="schedule-single"></a>**Schedule/Single**

This node will execute a reboot at a scheduled date and time. The date and time value is **ISO 8601**, and both the date and time are required.
Example to configure: 2018-10-25T18:00:00

Setting a null (empty) date will delete the existing schedule. In accordance with the ISO 8601 format, the date and time representation needs to be 0000-00-00T00:00:00.

- The supported operations are Get, Add, Replace, and Delete.
- The supported data type is "String".

<a href="" id="schedule-dailyrecurrent"></a>**Schedule/DailyRecurrent**

This node will execute a reboot each day at a scheduled time starting at the configured starting time and date. Setting a null (empty) date will delete the existing schedule. The date and time value is ISO8601, and both the date and time are required. The CSP will return the date time in the following format: 2018-06-29T10:00:00+01:00.
Example to configure: 2018-10-25T18:00:00

- The supported operations are Get, Add, Replace, and Delete.
- The supported data type is "String".

## Related topics

[Configuration service provider reference](index.yml)
