---
title: Applying ActiveSync policies to device accounts (Surface Hub)
description: The Microsoft Surface Hub's device account uses ActiveSync to sync mail and calendar. This allows people to join and start scheduled meetings from the Surface Hub, and allows them to email any whiteboards they have made during their meeting.
ms.assetid: FAABBA74-3088-4275-B58E-EC1070F4D110
ms.reviewer: 
manager: dansimp
keywords: Surface Hub, ActiveSync policies
ms.prod: surface-hub
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 06/20/2019
ms.localizationpriority: medium
---

# Applying ActiveSync policies to device accounts (Surface Hub)


The Microsoft Surface Hub's device account uses ActiveSync to sync mail and calendar. This allows people to join and start scheduled meetings from the Surface Hub, and allows them to email any whiteboards they have made during their meeting.

For these features to work, the ActiveSync policies for your organization must be configured as follows:

-   There can't be any global policies that block synchronization of the resource mailbox that's being used by the Surface Hub’s device account. If there is such a blocking policy, you need to whitelist the Surface Hub as an allowed device.
-   You must set a mobile device mailbox policy where the **PasswordEnabled** setting is set to False. Other mobile device mailbox policy settings are not compatible with the Surface Hub.

## Whitelisting the DeviceID


Your organization may have a global policy that prevents syncing of device accounts provisioned on Surface Hubs. To configure this property, see [Allowing device IDs for ActiveSync](appendix-a-powershell-scripts-for-surface-hub.md#whitelisting-device-ids-cmdlet).

## Setting PasswordEnabled


The device account must have an ActiveSync policy where the **PasswordEnabled** attribute is set to False or 0. To configure this property, see [Creating a Surface Hub-compatible Microsoft Exchange ActiveSync policy](appendix-a-powershell-scripts-for-surface-hub.md#create-compatible-as-policy).

 

 





