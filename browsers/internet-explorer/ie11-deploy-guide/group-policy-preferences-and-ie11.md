---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: security
description: Info about Group Policy preferences versus Group Policy settings
author: lomayor
ms.prod: ie11
ms.assetid: f2264c97-7f09-4f28-bb5c-58ab80dcc6ee
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Group policy preferences and Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Group policy preferences and Internet Explorer 11
Group Policy preferences are less strict than Group Policy settings, based on:

|    |Group Policy preferences |Group Policy settings |
|-----|-------------------------|----------------------|
|Enforcement |<ul><li>Not enforced</li><li>Has the user interface turned on</li><li>Can only be refreshed or applied once</li></ul> |<ul><li>Enforced</li><li>Has the user interface turned off</li><li>Can be refreshed multiple times</li></ul> |
|Flexibility |Lets you create preference items for registry settings, files, and folders. |<ul><li>Requires app support</li><li>Needs you to create Administrative Templates for new policy settings</li><li>Won't let you create policy settings to manage files and folders</li></ul> |
|Local Group Policy |Not available |Available
|Awareness |Supports apps that aren't Group Policy-aware |Requires apps to be Group Policy-aware |
|Storage |<ul><li>Overwrites the original settings</li><li>Removing the preference doesn't restore the original setting</li></ul> |<ul><li>Doesn't overwrite the original settings</li><li>Stored in the Policy branches of the registry</li><li>Removing the setting restores the original setting</li></ul> |
|Targeting and filtering |<ul><li>Targeting is specific, with a user interface for each type of targeting item</li><li>Supports targeting at the individual preference item level</li></ul> |<ul><li>Filtering is based on Windows Management Instrumentation (WMI), and requires writing WMI queries</li><li>Supports filtering at the Group Policy Object (GPO) level</li></ul> |


For more information about Group Policy preferences, see the [Group Policy Settings Reference for Windows and Windows Server](https://go.microsoft.com/fwlink/p/?LinkId=279876).

 

 



