---
title: Migrate User Accounts (Windows 10)
description: Migrate User Accounts
ms.assetid: a3668361-43c8-4fd2-b26e-9a2deaeaeb09
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

# Migrate User Accounts


By default, all users are migrated. The only way to specify which users to include and exclude is on the command line by using the User options. You cannot specify users in the migration XML files or by using the Config.xml file.

## In this Topic


-   [To migrate all user accounts and user settings](#bkmk-migrateall)

-   [To migrate two domain accounts (User1 and User2)](#bkmk-migratetwo)

-   [To migrate two domain accounts (User1 and User2) and move User1 from the Contoso domain to the Fabrikam domain](#bkmk-migratemoveuserone)

## <a href="" id="bkmk-migrateall"></a>To migrate all user accounts and user settings
Links to detailed explanations of commands are available in the Related Topics section.

1.  Log on to the source computer as an administrator, and specify the following in a **Command-Prompt** window:

    `scanstate \\server\share\migration\mystore /i:migdocs.xml /i:migapp.xml /o`

2.  Log on to the destination computer as an administrator.

3.  Do one of the following:

    -   If you are migrating domain accounts, specify:

        `loadstate \\server\share\migration\mystore /i:migdocs.xml /i:migapp.xml`

    -   If you are migrating local accounts along with domain accounts, specify:

        `loadstate \\server\share\migration\mystore /i:migdocs.xml /i:migapp.xml /lac /lae`

        **Note**  
        You do not have to specify the **/lae** option, which enables the account that was created with the **/lac** option. Instead, you can create a disabled local account by specifying only the **/lac** option, and then a local administrator needs to enable the account on the destination computer.

         

## <a href="" id="bkmk-migratetwo"></a>To migrate two domain accounts (User1 and User2)
Links to detailed explanations of commands are available in the Related Topics section.

1.  Log on to the source computer as an administrator, and specify:

    `scanstate \\server\share\migration\mystore /ue:*\* /ui:contoso\user1 /ui:fabrikam\user2 /i:migdocs.xml /i:migapp.xml /o`

2.  Log on to the destination computer as an administrator.

3.  Specify the following:

    `loadstate \\server\share\migration\mystore /i:migdocs.xml /i:migapp.xml`

## <a href="" id="bkmk-migratemoveuserone"></a>To migrate two domain accounts (User1 and User2) and move User1 from the Contoso domain to the Fabrikam domain
Links to detailed explanations of commands are available in the Related Topics section.

1.  Log on to the source computer as an administrator, and type the following at the command-line prompt:

    `scanstate \\server\share\migration\mystore /ue:*\* /ui:contoso\user1 /ui:contoso\user2 /i:migdocs.xml /i:migapp.xml /o`

2.  Log on to the destination computer as an administrator.

3.  Specify the following:

    `loadstate \\server\share\migration\mystore /mu:contoso\user1:fabrikam\user2 /i:migdocs.xml /i:migapp.xml`

## Related topics


[Identify Users](usmt-identify-users.md)

[ScanState Syntax](usmt-scanstate-syntax.md)

[LoadState Syntax](usmt-loadstate-syntax.md)

 

 





