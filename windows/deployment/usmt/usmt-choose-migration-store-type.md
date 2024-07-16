---
title: Choose a Migration Store Type
description: Learn how to choose a migration store type and estimate the amount of disk space needed for computers in the organization.
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

# Choose a migration store type

One of the main considerations for planning the migration is to determine which migration store type best meets the organization's needs. As part of these considerations, determine the following items:

- How much space is required to run the User State Migration Tool (USMT) components on the source and destination computers.
- How much space is needed to create and host the migration store.
- Whether a local share, network share, or storage device should be used.
- Ensure that user date integrity is maintained by encrypting the migration store.

## In this section

| Link | Description |
|--- |--- |
|[Migration store types overview](migration-store-types-overview.md)|Choose the migration store type that works best for the organization's needs and migration scenario.|
|[Estimate migration store size](usmt-estimate-migration-store-size.md)|Estimate the amount of disk space needed for computers in the organization based on information about the organization's infrastructure.|
|[Hard-link migration store](usmt-hard-link-migration-store.md)|Learn about hard-link migration stores and the scenarios in which they're used.|
|[Migration store encryption](usmt-migration-store-encryption.md)|Learn about the using migration store encryption to protect user data integrity during a migration.|

## Related articles

- [Plan the migration](usmt-plan-your-migration.md)
- [User State Migration Tool (USMT) how-articles](usmt-how-to.md)
