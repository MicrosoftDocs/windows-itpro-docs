---
title: How to disable Windows Information Protection (WIP)
description: How to disable Windows Information Protection (WIP)
ms.date: 07/15/2022
ms.prod: m365-security
ms.topic: how-to
ms.localizationpriority: medium
author: lizgt2000
ms.author: lizlong
ms.reviewer: aaroncz
manager: dougeby
---

# How to disable Windows Information Protection (WIP)

_Applies to:_

- Windows 10
- Windows 11

#### purple box

## Use Intune to disable WIP

To remove Windows Information Protection (WIP) using Intune, you have the following options:

#### Option 1 - Remove the WIP Policy (Unassign) - preferred

Removing an existing enable policy will remove the intent to deploy WIP from those devices. When that intent is removed, a device will remove protection for files and the configuration for WIP.

#### Option 2 - Change current WIP policy to off

If you’re currently deploying a WIP policy for enrolled or unenrolled devices, you switch the WIP policy to Off. When devices check-in after this change, the devices will proceed to unprotect files previously protected by WIP.

1. Sign in to the Microsoft Endpoint Manager.
1. Open Microsoft Intune and select Apps > App protection policies > 
In Client apps - App protection policies, select <> apps. Select the existing policy to turn off.
1. From App protection policy, select the name of your policy, and then select the name of your properties.
1. Edit required settings.
**liz figure 1**
1. Set Windows Information Protection mode to off.
1. After making this change, select review and save.
1. Select save.

####  Create a disable policy - write this as a note

You can create a separate disable policy for WIP (both enrolled and unenrolled) and deploy that to your organization. You then stage the rollout by complimenting your existing enablement policy and moving entities slowly from being targeted with enable to the disable policy.

## Use Configuration Manager to disable WIP

To remove Windows Information Protection (WIP) using Configuration Manager

**liz needs steps**
**Copy steps from create-wip-policy-using-configmgr**

**liz next steps**

baseline -link

collection -link

deploy baseline to collection -link

moving devices from old collection to new collection