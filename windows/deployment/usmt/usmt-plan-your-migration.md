---
title: Plan Your Migration (Windows 10)
description: Learn how to your plan your migration carefully so your migration can proceed smoothly and so that you reduce the risk of migration failure.
ms.assetid: c951f7df-850e-47ad-b31b-87f902955e3e
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Plan Your Migration

Before you use the User State Migration Tool (USMT) 10.0 to perform your migration, we recommend that you plan your migration carefully. Planning can help your migration proceed smoothly and can reduce the risk of migration failure.

In migration planning, both organizations and individuals must first identify what to migrate, including user settings, applications and application settings, and personal data files and folders. Identifying the applications to migrate is especially important so that you can avoid capturing data about applications that may be phased out.

One of the most important requirements for migrating settings and data is restoring only the information that the destination computer requires. Although the data that you capture on the source computer may be more comprehensive than the restoration data for backup purposes, restoring data or settings for applications that you will not install on the destination system is redundant. This can also introduce instability in a newly deployed computer.

## In This Section

| Link | Description |
|--- |--- |
|[Common Migration Scenarios](usmt-common-migration-scenarios.md)|Determine whether you will perform a refresh migration or a replace migration.|
|[What Does USMT Migrate?](usmt-what-does-usmt-migrate.md)|Learn which applications, user data, and operating system components USMT migrates.|
|[Choose a Migration Store Type](usmt-choose-migration-store-type.md)|Choose an uncompressed, compressed, or hard-link migration store.|
|[Determine What to Migrate](usmt-determine-what-to-migrate.md)|Identify user accounts, application settings, operating system settings, and files that you want to migrate inside your organization.|
|[Test Your Migration](usmt-test-your-migration.md)|Test your migration before you deploy Windows to all users.|

## Related topics

[USMT XML Reference](usmt-xml-reference.md)
