---
title: Migrate User Accounts (Windows 10)
description: Learn how to migrate user accounts and how to specify which users to include and exclude by using the User options on the command line.
ms.reviewer: 
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# Migrate User Accounts

By default, all users are migrated. The only way to specify which users to include and exclude is on the command line by using the User options. You can't specify users in the migration XML files or by using the `Config.xml` file.

## To migrate all user accounts and user settings

Links to detailed explanations of commands are available in the [Related articles](#related-articles) section.

1. Sign into the source computer as an administrator.

2. Enter the following `ScanState.exe` command line in a command prompt window:

    ``` syntax
    ScanState.exe \\server\share\migration\mystore /i:MigDocs.xml /i:MigApp.xml /o
    ````

3. Sign into the destination computer as an administrator.

4. Enter one of the following `LoadState.exe ` command lines in a command prompt window:

   - If you're migrating domain accounts, enter:

        ``` syntax
        LoadState.exe  \\server\share\migration\mystore /i:MigDocs.xml /i:MigApp.xml
        ```

   - If you're migrating local accounts along with domain accounts, enter:

        ``` syntax
        LoadState.exe  \\server\share\migration\mystore /i:MigDocs.xml /i:MigApp.xml /lac /lae
        ```

        > [!NOTE]
        > You do not have to specify the `/lae` option, which enables the account that was created with the `/lac` option. Instead, you can create a disabled local account by specifying only the `/lac` option, and then a local administrator needs to enable the account on the destination computer.

## To migrate two domain accounts (User1 and User2)

Links to detailed explanations of commands are available in the [Related articles](#related-articles) section.

1. Sign into the source computer as an administrator.

2. Enter the following `ScanState.exe` command line in a command prompt window:

    ``` syntax
    ScanState.exe \\server\share\migration\mystore /ue:*\* /ui:contoso\user1 /ui:fabrikam\user2 /i:MigDocs.xml /i:MigApp.xml /o
    ```

3. Sign into the destination computer as an administrator.

4. Enter the following `LoadState.exe ` command line in a command prompt window:

    ``` syntax
    LoadState.exe  \\server\share\migration\mystore /i:MigDocs.xml /i:MigApp.xml
    ```

## To migrate two domain accounts (User1 and User2) and move User1 from the Contoso domain to the Fabrikam domain

Links to detailed explanations of commands are available in the [Related articles](#related-articles) section.

1. Sign into the source computer as an administrator.

2. Enter the following `ScanState.exe` command line in a command prompt window:

    ``` syntax
    ScanState.exe \\server\share\migration\mystore /ue:*\* /ui:contoso\user1 /ui:contoso\user2 /i:MigDocs.xml /i:MigApp.xml /o
    ```

3. Sign into the destination computer as an administrator.

4. Enter the following `LoadState.exe ` command line in a command prompt window:

    ``` syntax
    LoadState.exe  \\server\share\migration\mystore /mu:contoso\user1:fabrikam\user2 /i:MigDocs.xml /i:MigApp.xml
    ```

## Related articles

[Identify users](usmt-identify-users.md)

[ScanState syntax](usmt-scanstate-syntax.md)

[LoadState syntax](usmt-loadstate-syntax.md)
