---
title: Identify Users
description: Learn how to identify users you plan to migrate, and how to migrate local accounts and domain accounts.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.topic: article
ms.localizationpriority: medium
ms.technology: itpro-deploy
ms.date: 01/02/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Identify users

It's important to carefully consider how you plan to migrate users. By default, User State Migration Tool (USMT) migrates all users. You must specify which users to include by using the command line. You can't specify users in the **.xml** files. For instructions on how to migrate users, see [Migrate user accounts](usmt-migrate-user-accounts.md).

## Migrating local accounts

Before migrating local accounts, be aware of the following items:

- **You must explicitly specify that local accounts that are not on the destination computer should be migrated**. If you're migrating local accounts and the local account doesn't exist on the destination computer, you must use the `/lac` option when using the `LoadState.exe` command. If the `/lac` option isn't specified, no local user accounts are migrated.

- **Consider whether to enable user accounts that are new to the destination computer.** The `/lae` option enables the account that was created with the `/lac` option. However, if you create a disabled local account by using only the `/lac` option, a local administrator must enable the account on the destination computer.

- **Be careful when specifying a password for local accounts.** If you create the local account with a blank password, anyone could sign in that account on the destination computer. If you create the local account with a password, the password is available to anyone with access to the USMT command-line tools.

> [!NOTE]
>
> If there are multiple users on a computer, and a password is specified with the `/lac` option, all migrated users have the same password.

## Migrating domain accounts

The source and destination computers don't need to be connected to the domain for domain user profiles to be migrated.

## Command-line options

USMT provides several options to migrate multiple users on a single computer. The following command-line options specify which users to migrate.

- **Specifying users.** You can specify which users to migrate with the `/all`, `/ui`, `/uel`, and `/ue` options with both the  **ScanState** and **LoadState** command-line tools.

  > [!IMPORTANT]
  >
  > The `/uel` option excludes users based on the **LastModified** date of the `Ntuser.dat` file. The `/uel` option isn't valid in offline migrations.

- **Moving users to another domain.** You can move user accounts to another domain using the `/md` option with the **LoadState** command-line tool.

- **Creating local accounts.** You can create and enable local accounts using the `/lac` and `/lae` options with the **LoadState** command-line tool.

- **Renaming user accounts.** You can rename user accounts using the `/mu` option.

  > [!NOTE]
  >
  > By default, if a user name isn't specified in any of the command-line options, the user is migrated.

## Related articles

- [Determine what to migrate](usmt-determine-what-to-migrate.md).
- [ScanState syntax](usmt-scanstate-syntax.md).
- [LoadState syntax](usmt-loadstate-syntax.md).
