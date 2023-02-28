---
title: Plan Your Migration (Windows 10)
description: Learn how to your plan your migration carefully so your migration can proceed smoothly and so that you reduce the risk of migration failure.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# Plan your migration

Before you use the User State Migration Tool (USMT) 10.0 to perform your migration, we recommend that you plan your migration carefully. Planning can help your migration proceed smoothly and can reduce the risk of migration failure.

In migration planning, both organizations and individuals must first identify what to migrate, including user settings, applications and application settings, and personal data files and folders. Identifying the applications to migrate is especially important so that you can avoid capturing data about applications that may be phased out.

One of the most important requirements for migrating settings and data is restoring only the information that the destination computer requires. Although the data that you capture on the source computer may be more comprehensive than the restoration data for backup purposes, restoring data or settings for applications that you won't install on the destination system is redundant. Restoring data or settings for applications that aren't installed can also introduce instability in a newly deployed computer.

## In this section

| Link | Description |
|--- |--- |
|[Common migration scenarios](usmt-common-migration-scenarios.md)|Determine whether you'll perform a refresh migration or a replace migration.|
|[What does USMT migrate?](usmt-what-does-usmt-migrate.md)|Learn which applications, user data, and operating system components USMT migrates.|
|[Choose a migration store type](usmt-choose-migration-store-type.md)|Choose an uncompressed, compressed, or hard-link migration store.|
|[Determine what to migrate](usmt-determine-what-to-migrate.md)|Identify user accounts, application settings, operating system settings, and files that you want to migrate inside your organization.|
|[Test your migration](usmt-test-your-migration.md)|Test your migration before you deploy Windows to all users.|

## Related articles

[USMT XML reference](usmt-xml-reference.md)
