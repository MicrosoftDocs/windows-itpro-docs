---
title: Plan The Migration
description: Learn how to plan the migration carefully so the migration can proceed smoothly and so that the risk of migration failure is reduced.
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

# Plan the migration

Before using the User State Migration Tool (USMT) to perform a migration, Microsoft recommends that to plan the migration carefully. Planning can help the migration proceed smoothly and can reduce the risk of migration failure.

In migration planning, both organizations and individuals must first identify what to migrate, including user settings, applications and application settings, and personal data files and folders. Identifying the applications to migrate is especially important to avoid capturing data about applications that might be phased out.

One of the most important requirements for migrating settings and data is restoring only the information that the destination computer requires. Although the data that is captured on the source computer might be more comprehensive than the restoration data for backup purposes, restoring data or settings for applications that aren't installed on the destination system is redundant. Restoring data or settings for applications that aren't installed can also introduce instability in a newly deployed computer.

## In this section

| Link | Description |
|--- |--- |
|[Common migration scenarios](usmt-common-migration-scenarios.md)|Determine whether to perform a refresh migration or a replace migration.|
|[What does USMT migrate?](usmt-what-does-usmt-migrate.md)|Learn which applications, user data, and operating system components USMT migrates.|
|[Choose a migration store type](usmt-choose-migration-store-type.md)|Choose an uncompressed, compressed, or hard-link migration store.|
|[Determine what to migrate](usmt-determine-what-to-migrate.md)|Identify user accounts, application settings, operating system settings, and files that need to be migrated inside the organization.|
|[Test the migration](usmt-test-your-migration.md)|Test the migration before deploying Windows to all users.|

## Related articles

- [USMT XML reference](usmt-xml-reference.md).
