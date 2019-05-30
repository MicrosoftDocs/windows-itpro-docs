---
title: Microsoft Edge - New Tab page group policies
description: Microsoft Edge loads the default New tab page by default.  With the relevant New Tab policies, you can set a URL to load in the New Tab page and prevent users from making changes.  You can also load a blank page instead or let the users choose what loads.
manager: dansimp
ms.author: eravena
author: eavena
ms.date: 10/02/2018
ms.localizationpriority: medium
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
ms.topic: reference
---


# New Tab page  

Microsoft Edge loads the default New tab page by default.  With the relevant New Tab policies, you can set a URL to load in the New Tab page and prevent users from making changes.  You can also load a blank page instead or let the users choose what loads. 

>[!NOTE]
>New tab pages do not load while running InPrivate mode. 

## Relevant group policies

- [Set New Tab page URL](#set-new-tab-page-url)
- [Allow web content on New Tab page](#allow-web-content-on-new-tab-page)

You can find the Microsoft Edge Group Policy settings in the following location of the Group Policy Editor unless otherwise noted in the policy:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Computer Configuration\\Administrative Templates\\Windows Components\\Microsoft Edge\\**

## Configuration options

![Load the default New Tab page](../images/load-default-new-tab-page-sm.png)

![Load a blank page instead of the default New Tab page](../images/load-blank-page-not-new-tab-page-sm.png) 

![Let users choose what loads](../images/users-choose-new-tab-page-sm.png)


## Set New Tab page URL 
[!INCLUDE [set-new-tab-url-include](../includes/set-new-tab-url-include.md)]

## Allow web content on New Tab page 
[!INCLUDE [allow-web-content-new-tab-page-include](../includes/allow-web-content-new-tab-page-include.md)]
