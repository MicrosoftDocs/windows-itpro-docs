---
title: Identify Applications Settings
description: Identify which applications and settings need to be migrated before using the User State Migration Tool (USMT).
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 01/09/2024
ms.topic: conceptual
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Identify applications settings

Which applications and settings need to be migrated should be identified when planning a migration. For more information about how to create a custom **.xml** file to migrate the settings of another application, see [Customize USMT XML files](usmt-customize-xml-files.md).

## Applications

First, create and prioritize a list of applications that need to be migrated. It might be helpful to review the application lists and decide which applications need to be redeployed and which applications need to be retired. Often, how the application is used and how complex the application is determines the priority of what applications are migrated.

Next, identify an application owner to be in charge of each application. Application ownership identification is necessary because the developers aren't be experts on all of the applications in the organization. The application owner should have the most experience with an application. The application owner provides insight into how the organization installs, configures, and uses the application.

## Application settings

Next, determine and locate the application settings to be migrated. Much of the information that is needed for this step can be acquired when testing the new applications for compatibility with the new operating system.

After completing the list of applications to be migrated, review the list, and work with each application owner on a list of settings to be migrated. For each setting, determine whether it needs to be migrated or if the default settings are adequate. Then, determine where the setting is located, for example, in the registry or in an **.ini** file. Next, consider the following questions to determine what needs to be done to migrate the setting successfully:

- Is the destination version of the application newer than the source version?

- Do these settings work with the new version?

- Do the settings need to be moved or altered?

- Can the first-run process force the application to appear as if it ran already? If so, does this work correctly, or does it break the application?

After answering these questions, create a custom **.xml** file to migrate settings. Work with the application owner to develop test cases and to determine the file types that need to be migrated for the application.

## Locating where settings are stored

See [Migrate application settings](migrate-application-settings.md) and follow the directions.

## Related articles

- [Determine what to migrate](usmt-determine-what-to-migrate.md).
