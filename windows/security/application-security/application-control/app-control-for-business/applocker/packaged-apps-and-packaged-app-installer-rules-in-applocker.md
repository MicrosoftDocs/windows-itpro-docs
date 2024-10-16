---
title: Packaged apps and packaged app installer rules in AppLocker
description: This article explains the AppLocker rule collection for packaged app installers and packaged apps.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Packaged apps and packaged app installer rules in AppLocker

This article explains the AppLocker rule collection for packaged app installers and packaged apps.

Packaged apps can be installed through the Microsoft Store or can be sideloaded using the Windows PowerShell cmdlets. Standard users can install packaged apps unlike some Classic Windows applications that sometimes require administrative privileges for installation. Typically, an app consists of multiple components - the installer used to install the app and one or more exes, dlls or scripts. With Classic Windows applications, those components often don't share common attributes such as the publisher name, product name and product version. Therefore, AppLocker has to control each of these components separately through different rule collections - exe, dll, script and Windows Installers. In contrast, all the components of a Packaged app share the same attributes: Publisher name, Package name and Package version. It's therefore possible to control an entire app with a single rule.

AppLocker enforces rules for Packaged apps separately from Classic Windows applications. A single AppLocker rule for a Packaged app can control both the installation and the running of an app. Because all Packaged apps are signed, AppLocker supports only publisher rules for Packaged apps. A publisher rule for a Packaged app is based on the following attributes of the app:

- Publisher name
- Package name
- Package version

In summary, including AppLocker rules for Packaged apps in your policy design provides:

- The ability to control the installation and running of the app.
- The ability to control all the components of the app with a single rule rather than controlling individual binaries within the app.
- The ability to create application control policies that survive app updates.
- Management of Packaged apps through Group Policy.
