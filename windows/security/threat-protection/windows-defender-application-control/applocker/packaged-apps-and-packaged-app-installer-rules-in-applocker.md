---
title: Packaged apps and packaged app installer rules in AppLocker (Windows 10)
description: This topic explains the AppLocker rule collection for packaged app installers and packaged apps.
ms.assetid: 8fd44d08-a0c2-4c5b-a91f-5cb9989f971d
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 10/13/2017
---

# Packaged apps and packaged app installer rules in AppLocker

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic explains the AppLocker rule collection for packaged app installers and packaged apps.

Universal Windows apps can be installed through the Microsoft Store or can be sideloaded using the Windows PowerShell cmdlets. Universal Windows apps can be installed by a standard user unlike some Classic Windows applications that sometimes require administrative privileges for installation.
Typically, an app consists of multiple components – the installer used to install the app and one or more exes, dlls or scripts. With Classic Windows applications, not all those components always share common attributes such as the publisher name, product name and product version. Therefore, AppLocker has to control each of these components separately through different rule collections – exe, dll, script and Windows Installers. In contrast, all the components of a Universal Windows app share the same attributes: Publisher name, Package name and Package version. It is therefore possible to control an entire app with a single rule.

AppLocker enforces rules for Universal Windows apps separately from Classic Windows applications. A single AppLocker rule for a Universal Windows app can control both the installation and the running of an app. Because all Universal Windows apps are signed, AppLocker supports only publisher rules for Universal Windows apps. A publisher rule for a Universal Windows app is based on the following attributes of the app:

-   Publisher name
-   Package name
-   Package version

In summary, including AppLocker rules for Universal Windows apps in your policy design provides:

-   The ability to control the installation and running of the app
-   The ability to control all the components of the app with a single rule rather than controlling individual binaries within the app
-   The ability to create application control policies that survive app updates
-   Management of Universal Windows apps through Group Policy.
