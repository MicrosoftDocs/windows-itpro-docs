---
title: How to Add or Remove an Administrator by Using the Management Console (Windows 10)
description: How to add or remove an administrator by using the Management Console
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/08/2018
ms.topic: article
---
# How to add or remove an administrator by using the Management Console

>Applies to: Windows 10, version 1607

Use the following procedures to add or remove an administrator on the Microsoft Application Virtualization (App-V) server.

## Add an administrator using the Management Console

1. Open the Microsoft Application Virtualization (App-V) Management Console and select **Administrators** in the navigation pane. The navigation pane will display a list of Access Directory (AD) users and groups that currently have administrative access to the Microsoft Application Virtualization (App-V) server.
2. To add a new administrator, select **Add Administrator**. Enter the name of the administrator that you want to add in the **Active Directory Name** field. Make sure to also provide the associated user account domain name. For example, **Domain** \\ **UserName**.
3. Select the account you want to add and select **Add**. The new account should now appear in the list of server administrators.

## Remove an administrator using the Management Console

1. Open the Microsoft Application Virtualization (App-V) Management Console and select **Administrators** in the navigation pane. The navigation pane displays a list of AD users and groups that currently have administrative access to the Microsoft Application Virtualization (App-V) server.
2. Right-click the account to be removed from the list of administrators and select **Remove**.





## Related topics

* [Operations for App-V](appv-operations.md)
