---
title: Migrate User Accounts
description: Learn how to migrate user accounts and how to specify which users to include and exclude by using the User options on the command line.
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

# Migrate User Accounts

By default, all users are migrated. The only way to specify which users to include and exclude is on the command line by using the [ScanState User options](usmt-scanstate-syntax.md#user-options) and the [LoadState User options](usmt-loadstate-syntax.md#user-options). Users can't be specified in the migration XML files or by using the `Config.xml` file.

## To migrate all user accounts and user settings

Links to detailed explanations of commands are available in the [Related articles](#related-articles) section.

1. Sign into the source computer as an administrator.

1. Enter the following `ScanState.exe` command line in a command prompt window:

    ```cmd
    ScanState.exe \\server\share\migration\mystore /i:MigDocs.xml /i:MigApp.xml /o
    ````

1. Sign into the destination computer as an administrator.

1. Enter one of the following `LoadState.exe` command lines in a command prompt window:

   - If migrating domain accounts, enter:

        ```cmd
        LoadState.exe  \\server\share\migration\mystore /i:MigDocs.xml /i:MigApp.xml
        ```

   - If migrating local accounts along with domain accounts, enter:

        ```cmd
        LoadState.exe  \\server\share\migration\mystore /i:MigDocs.xml /i:MigApp.xml /lac /lae
        ```

        > [!NOTE]
        >
        > The `/lae` option doesn't need to be specified, which enables the account that was created with the `/lac` option. Instead, create a disabled local account by specifying only the `/lac` option, and then a local administrator needs to enable the account on the destination computer.

## To migrate two domain accounts (User1 and User2)

Links to detailed explanations of commands are available in the [Related articles](#related-articles) section.

1. Sign into the source computer as an administrator.

1. Enter the following `ScanState.exe` command line in a command prompt window:

    ```cmd
    ScanState.exe \\server\share\migration\mystore /ue:*\* /ui:contoso\user1 /ui:fabrikam\user2 /i:MigDocs.xml /i:MigApp.xml /o
    ```

1. Sign into the destination computer as an administrator.

1. Enter the following `LoadState.exe` command line in a command prompt window:

    ```cmd
    LoadState.exe  \\server\share\migration\mystore /i:MigDocs.xml /i:MigApp.xml
    ```

## To migrate two domain accounts (User1 and User2) and move both accounts from the Contoso domain to the Fabrikam domain

Links to detailed explanations of commands are available in the [Related articles](#related-articles) section.

1. Sign into the source computer as an administrator.

1. Enter the following `ScanState.exe` command line in a command prompt window:

    ```cmd
    ScanState.exe \\server\share\migration\mystore /ue:*\* /ui:contoso\user1 /ui:contoso\user2 /i:MigDocs.xml /i:MigApp.xml /o
    ```

1. Sign into the destination computer as an administrator.

1. Enter the following `LoadState.exe` command line in a command prompt window:

    ```cmd
    LoadState.exe  \\server\share\migration\mystore /mu:contoso\user1:fabrikam\user1 /mu:contoso\user2:fabrikam\user2 /i:MigDocs.xml /i:MigApp.xml
    ```

## Related articles

- [Identify users](usmt-identify-users.md).
- [ScanState syntax](usmt-scanstate-syntax.md).
- [LoadState syntax](usmt-loadstate-syntax.md).
