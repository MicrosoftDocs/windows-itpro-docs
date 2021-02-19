---
title: AccountManagement (Windows 10)
description: This section describes the account management settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 04/30/2018
ms.reviewer: 
manager: dansimp
---

# AccountManagement (Windows Configuration Designer reference)

Use these settings to configure the Account Manager service.

## Applies to

| Settings | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [DeletionPolicy](#deletionpolicy) |  |  |  | X |  |
| [EnableProfileManager](#enableprofilemanager) |  |  |  | X |  |
| [ProfileInactivityThreshold](#profileinactivitythreshold) |  |  |  | X |  |
| [StorageCapacityStartDeletion](#storagecapacitystartdeletion) |  |  |  | X |  |
| [StorageCapacityStopDeletion](#storagecapacitystopdeletion) |  |  |  | X |  |

>[!NOTE]
>Although the AccountManagement settings are available in advanced provisioning for other editions, you should only use them for HoloLens devices.


## DeletionPolicy

Use this setting to set a policy for deleting accounts.

- **Delete immediately**: When the account signs out, it will be deleted immediately.
- **Delete at storage capacity threshold**: Accounts will be deleted when available disk space falls below the threshold you set for **StorageCapacityStartDeletion**. When the available disk space reaches the threshold you set for **StorageCapacityStopDeletion**, the Account Manager will stop deleting accounts.
- **Delete at storage capacity threshold and profile inactivity threshold**: This setting will apply the same disk space checks as noted above, and will also delete accounts if they have not signed in within the number of days specified by **ProfileInactivityThreshold**.

## EnableProfileManager

Set as **True** to enable automatic account management. If this is not set to **True**, no automatic account management will occur.


## ProfileInactivityThreshold

If you set **DeletionPolicy** as **Delete at storage capacity threshold and profile inactivity threshold**, use this setting to configure the number of days after which an account that has not signed in will be deleted.

## StorageCapacityStartDeletion

Enter the percent of total storage available for user profiles. If **DeletionPolicy** is set to **Delete at storage capacity threshold** or **Delete at storage capacity threshold and profile inactivity threshold**, profiles will be deleted when available storage capacity falls below this threshold, until the value that you set for **StorageCapacityStopDeletion** is reached. Profiles that have been inactive the longest will be deleted first.

## StorageCapacityStopDeletion

Enter the percent of total storage at which to stop deleting profiles. If **DeletionPolicy** is set to **Delete at storage capacity threshold** or **Delete at storage capacity threshold and profile inactivity threshold**, profiles will be deleted when available storage capacity falls below the threshold set for **StorageCapacityStartDeletion**, until the value that you set for **StorageCapacityStopDeletion** is reached. Profiles that have been inactive the longest will be deleted first.
