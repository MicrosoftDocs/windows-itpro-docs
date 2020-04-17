---
title: Manage the end-user experience with updates
ms.reviewer: 
manager: laurawi
description: Windows Update for Business lets you manage when devices received updates from Windows Update.
ms.prod: w10
ms.mktglfcycl: manage
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.topic: article
---

# Manage the end-user experience

Windows Update for Business provides controls to help meet your organization’s security standards as well as provide a great end-user experience. You can do this by setting automatic updates to occur at times that work well for those in your organization, setting deadlines for quality and feature updates, etc {if we could list a third thing instead of "etc." it would read better}. For the best experience, it is usually better to employ fewer controls. {are we trying to say "set as few of these as possible"?} 

## Recommended settings for the end-user experience

Features such as smart busy check, ensuring that we don’t update when the user is logged on, and configurable active hours help keep devices secure while preserving a great user experience. Follow these steps to take advantage of these features: {not sure I'm really understanding these steps--given the intro, I'd expect to see more specific steps. Some of the "steps" seem to be settings, but one is an action?}

1.	Automatically download, install, and restart (default if no restart policies are configured or enabled)
2.	Use the default notifications 
3.	Set update deadlines

## Set Deadlines

The compliance deadline policy {keep the topic we already have on this (https://docs.microsoft.com/en-us/windows/deployment/update/wufb-compliancedeadlines) and link to it from here maybe?} released in June 2019 enables the IT admin to set separate deadlines and grace periods for feature and quality updates. This policy enables you to specify the number of days after an update is published by which a device must install the update. The policy also includes a configurable grace period that specifies the number of days from when the update is installed on the device to when the device is forced to restart. This is extremely beneficial in a vacation scenario as it allows, for example, users who have been away to have a bit of time before being forced to restart devices when they return from vacation.
