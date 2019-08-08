---
title: Microsoft Edge - Favorites group policies
description: Configure Microsoft Edge to either show or hide the favorites bar on all pages. Microsoft Edge hides the favorites bar by default but shows the favorites bar on the Start and New tab pages. Also, by default, the favorites bar toggle, in Settings, is set to Off but enabled allowing users to make changes. 
services: 
keywords: 
ms.localizationpriority: medium
audience: itpromanager: dansimp
author: eavena
ms.author: eravena
ms.date: 10/02/2018
ms.reviewer: 
ms.topic: reference
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
---

# Favorites 

You can customize the favorites bar, for example, you can turn off features such as Save a Favorite and Import settings, and hide or show the favorites bar on all pages.  Another customization you can make is provisioning a standard list of favorites, including folders, to appear in addition to the user’s favorites. If it’s important to keep the favorites in both IE11 and Microsoft Edge synced, you can turn on syncing where changes to the list of favorites in one browser reflect in the other. 

>[!TIP]
>You can find the Favorites under C:\\Users\\<_username_>\\Favorites.

You can find the Microsoft Edge Group Policy settings in the following location of the Group Policy Editor unless otherwise noted in the policy:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Computer Configuration\\Administrative Templates\\Windows Components\\Microsoft Edge\\**

## Configure Favorites Bar 
[!INCLUDE [configure-favorites-bar-include](../includes/configure-favorites-bar-include.md)]

## Keep favorites in sync between Internet Explorer and Microsoft Edge 
[!INCLUDE [keep-fav-sync-ie-edge-include](../includes/keep-fav-sync-ie-edge-include.md)] 

## Prevent changes to Favorites on Microsoft Edge
[!INCLUDE [prevent-changes-to-favorites-include](../includes/prevent-changes-to-favorites-include.md)] 

## Provision Favorites 
[!INCLUDE [provision-favorites-include](../includes/provision-favorites-include.md)]
