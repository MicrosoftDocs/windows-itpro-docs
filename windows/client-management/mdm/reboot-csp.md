---
title: Reboot CSP
description: Reboot CSP
ms.assetid: 4E3F1225-BBAD-40F5-A1AB-FF221B6BAF48
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
---

# Reboot CSP


The Reboot configuration service provider is used to configure reboot settings.

The following diagram shows the Reboot configuration service provider management objects in tree format as used by Open Mobile Alliance Device Management (OMA DM), OMA Client Provisioning, and Enterprise DM.

![reboot](images/reboot-csp.png)

<a href="" id="--vendor-msft-reboot"></a>**./Vendor/MSFT/Reboot**  
<p style="margin-left: 20px">The root node for the Reboot configuration service provider.</p>

<p style="margin-left: 20px">The supported operation is Get.</p>

<a href="" id="rebootnow"></a>**RebootNow**  
<p style="margin-left: 20px">This node executes a reboot of the device. RebootNow triggers a reboot within 5 minutes to allow the user to wrap up any active work.</p>

> [!Note]  
> If this node is set to execute during a sync session, the device will reboot at the end of the sync session.

<p style="margin-left: 20px">The supported operations are Execute and Get.

<a href="" id="schedule"></a>**Schedule**  
<p style="margin-left: 20px">The supported operation is Get.</p>

<a href="" id="schedule-single"></a>**Schedule/Single**  
<p style="margin-left: 20px">This node will execute a reboot at a scheduled date and time. Setting a null (empty) date will delete the existing schedule. The date and time value is ISO8601, and both the date and time are required. For example: 2015-12-15T07:36:25Z</p>

<p style="margin-left: 20px">The supported operations are Get, Add, Replace, and Delete.</p>

<a href="" id="schedule-dailyrecurrent"></a>**Schedule/DailyRecurrent**  
<p style="margin-left: 20px">This node will execute a reboot each day at a scheduled time starting at the configured starting time and date. Setting a null (empty) date will delete the existing schedule. The date and time value is ISO8601, and both the date and time are required. For example: 2015-12-15T07:36:25Z</p>

<p style="margin-left: 20px">The supported operations are Get, Add, Replace, and Delete.</p>

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 






