---
title: Identify Applications Settings (Windows 10)
description: Identify Applications Settings
ms.assetid: eda68031-9b02-4a5b-a893-3786a6505381
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Identify Applications Settings


When planning for your migration, you should identify which applications and settings you want to migrate. For more information about how to create a custom .xml file to migrate the settings of another application, see [Customize USMT XML Files](usmt-customize-xml-files.md).

## Applications


First, create and prioritize a list of applications that to be migrated. It may be helpful to review the application lists and decide which applications will be redeployed and which applications will be retired. Often, the applications are prioritized based on a combination of how widely the application is used and how complex the application is.

Next, identify an application owner to be in charge of each application. This is necessary because the developers will not be experts on all of the applications in the organization. The application owner should have the most experience with an application. The application owner provides insight into how the organization installs, configures, and uses the application.

## Application Settings


Next, determine and locate the application settings to be migrated. You can acquire much of the information that you need for this step when you are testing the new applications for compatibility with the new operating system.

After completing the list of applications to be migrated, review the list and work with each application owner on a list of settings to be migrated. For each setting, determine whether it needs to be migrated or if the default settings are adequate. Then, determine where the setting is located; for example, in the registry or in an .ini file. Next, consider the following questions to determine what needs to be done to migrate the setting successfully:

-   Is the destination version of the application newer than the source version?

-   Do these settings work with the new version?

-   Do the settings need to be moved or altered?

-   Can the first-run process force the application to appear as if it had run already? If so, does this work correctly, or does it break the application?

After answering these questions, create a custom .xml file to migrate settings. Work with the application owner to develop test cases and to determine the file types that need to be migrated for the application.

## Locating Where Settings Are Stored


See [Migrate Application Settings](migrate-application-settings.md) and follow the directions.

## Related topics


[Determine What to Migrate](usmt-determine-what-to-migrate.md)

 

 





