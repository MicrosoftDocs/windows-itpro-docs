---
title: Audit Application Group Management (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Application Group Management, which determines whether the operating system generates audit events when application group management tasks are performed.
ms.assetid: 1bcaa41e-5027-4a86-96b7-f04eaf1c0606
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dulcemontemayor
ms.date: 04/19/2017
---

# Audit Application Group Management

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Application Group Management generates events for actions related to [application groups](https://technet.microsoft.com/library/cc771579.aspx), such as group creation, modification, addition or removal of group member and some other actions.

[Application groups](https://technet.microsoft.com/library/cc771579.aspx) are used by [Authorization Manager](https://technet.microsoft.com/library/cc726036.aspx).

Audit Application Group Management subcategory is out of scope of this document, because [Authorization Manager](https://technet.microsoft.com/library/cc726036.aspx) is very rarely in use and it is deprecated starting from Windows Server 2012.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                |
|-------------------|-----------------|-----------------|------------------|------------------|---------------------------------------------------------|
| Domain Controller | -               | -               | -                | -                | This subcategory is outside the scope of this document. |
| Member Server     | -               | -               | -                | -                | This subcategory is outside the scope of this document. |
| Workstation       | -               | -               | -                | -                | This subcategory is outside the scope of this document. |

## 4783(S): A basic application group was created.

## 4784(S): A basic application group was changed.

## 4785(S): A member was added to a basic application group.

## 4786(S): A member was removed from a basic application group.

## 4787(S): A non-member was added to a basic application group.

## 4788(S): A non-member was removed from a basic application group.

## 4789(S): A basic application group was deleted.

## 4790(S): An LDAP query group was created.

## 4791(S): An LDAP query group was changed.

## 4792(S): An LDAP query group was deleted.

