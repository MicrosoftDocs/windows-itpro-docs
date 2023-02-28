---
title: Identify Applications Settings (Windows 10)
description: Identify which applications and settings you want to migrate before using the User State Migration Tool (USMT).
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# Identify applications settings

When planning for your migration, you should identify which applications and settings you want to migrate. For more information about how to create a custom .xml file to migrate the settings of another application, see [Customize USMT XML files](usmt-customize-xml-files.md).

## Applications

First, create and prioritize a list of applications that need to be migrated. It may be helpful to review the application lists and decide which applications will be redeployed and which applications will be retired. Often, what applications are migrated are prioritized based on a combination of how widely the application is used and how complex the application is.

Next, identify an application owner to be in charge of each application. Application ownership identification is necessary because the developers won't be experts on all of the applications in the organization. The application owner should have the most experience with an application. The application owner provides insight into how the organization installs, configures, and uses the application.

## Application settings

Next, determine and locate the application settings to be migrated. You can acquire much of the information that you need for this step when you're testing the new applications for compatibility with the new operating system.

After completing the list of applications to be migrated, review the list, and work with each application owner on a list of settings to be migrated. For each setting, determine whether it needs to be migrated or if the default settings are adequate. Then, determine where the setting is located, for example, in the registry or in an .ini file. Next, consider the following questions to determine what needs to be done to migrate the setting successfully:

- Is the destination version of the application newer than the source version?

- Do these settings work with the new version?

- Do the settings need to be moved or altered?

- Can the first-run process force the application to appear as if it had run already? If so, does this work correctly, or does it break the application?

After answering these questions, create a custom .xml file to migrate settings. Work with the application owner to develop test cases and to determine the file types that need to be migrated for the application.

## Locating where settings are stored

See [Migrate application settings](migrate-application-settings.md) and follow the directions.

## Related articles

[Determine what to migrate](usmt-determine-what-to-migrate.md)
