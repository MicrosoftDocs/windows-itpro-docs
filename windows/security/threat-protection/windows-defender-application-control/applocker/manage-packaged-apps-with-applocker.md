---
title: Manage packaged apps with AppLocker (Windows 10)
description: This topic for IT professionals describes concepts and lists procedures to help you manage Packaged apps with AppLocker as part of your overall application control strategy.
ms.assetid: 6d0c99e7-0284-4547-a30a-0685a9916650
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
ms.date: 09/21/2017
---

# Manage packaged apps with AppLocker

**Applies to**
 -   Windows 10
 -   Windows Server

This topic for IT professionals describes concepts and lists procedures to help you manage Packaged apps with AppLocker as part of your overall application control strategy.

## Understanding Packaged apps and Packaged app installers for AppLocker

Packaged apps, also known as Universal Windows apps, are based on a model that ensures all the files within an app package share the same identity. With classic Windows apps, each file within the app could have a unique identity.
With packaged apps, it is possible to control the entire app by using a single AppLocker rule.

>**Note:**  AppLocker supports only publisher rules for packaged apps. All packaged apps must be signed by the software publisher because Windows does not support unsigned packaged apps.
 
Typically, an app consists of multiple components: the installer that is used to install the app, and one or more exes, dlls, or scripts. With classic Windows apps, not all these components always share common attributes such as the software’s publisher name, product name, and product version. Therefore, AppLocker controls each of these components separately through different rule collections, such as exe, dll, script, and Windows Installer rules. In contrast, all the components of a packaged app share the same publisher name, package name, and package version attributes. Therefore, you can control an entire app with a single rule.

### <a href="" id="bkmk-compareclassicmetro"></a>Comparing classic Windows apps and packaged apps

AppLocker policies for packaged apps can only be applied to apps installed on computers running at least Windows Server 2012 or Windows 8, but classic Windows apps can be controlled on devices running at least Windows Server
2008 R2 or Windows 7. The rules for classic Windows apps and packaged apps can be enforced in tandem. The differences between packaged apps and classic Windows apps that you should consider include:

-   **Installing the apps**   All packaged apps can be installed by a standard user, whereas a number of classic Windows apps require administrative privileges to install. In an environment where most of the users are standard users, you might not have numerous exe rules (because classic Windows apps require administrative privileges to install), but you might want to have more explicit policies for packaged apps.
-   **Changing the system state**   Classic Windows apps can be written to change the system state if they are run with administrative privileges. Most packaged apps cannot change the system state because they run with limited privileges. When you design your AppLocker policies, it is important to understand whether an app that you are allowing can make system-wide changes.
-   **Acquiring the apps**   Packaged apps can be acquired through the Store, or by loading using Windows PowerShell cmdlets (which requires a special enterprise license). Classic Windows apps can be acquired through traditional means.

AppLocker uses different rule collections to control packaged apps and classic Windows apps. You have the choice to control one type, the other type, or both.

For info about controlling classic Windows apps, see [Administer AppLocker](administer-applocker.md).

For more info about packaged apps, see [Packaged apps and packaged app installer rules in AppLocker](packaged-apps-and-packaged-app-installer-rules-in-applocker.md).

## Design and deployment decisions

You can use two methods to create an inventory of packaged apps on a computer: the AppLocker console or the **Get-AppxPackage** Windows PowerShell cmdlet.

>**Note:**  Not all packaged apps are listed in AppLocker’s application inventory wizard. Certain app packages are framework packages that are leveraged by other apps. By themselves, these packages cannot do anything, but blocking such packages can inadvertently cause failure for apps that you want to allow. Instead, you can create Allow or Deny rules for the packaged apps that use these framework packages. The AppLocker user interface deliberately filters out all the packages that are registered as framework packages. For info about how to create an inventory list, see [Create list of apps deployed to each business group](create-list-of-applications-deployed-to-each-business-group.md).
 
For info about how to use the **Get-AppxPackage** Windows PowerShell cmdlet, see the [AppLocker PowerShell Command Reference](https://technet.microsoft.com/library/hh847210.aspx).

For info about creating rules for Packaged apps, see [Create a rule for packaged apps](create-a-rule-for-packaged-apps.md).

Consider the following info when you are designing and deploying apps:

-   Because AppLocker supports only publisher rules for packaged apps, collecting the installation path information for packaged apps is not necessary.
-   You cannot create hash- or path-based rules for packaged apps because all packaged apps and packaged app installers are signed by the software publisher of the package. Classic Windows apps were not always consistently signed; therefore, AppLocker has to support hash- or path-based rules.
-   By default, if there are no rules in a particular rule collection, AppLocker allows every file that is included in that rule collection. For example, if there are no Windows Installer rules, AppLocker allows all .msi, .msp, and .mst files to run. An existing AppLocker policy that was targeted at computers running Windows Server 2008 R2 and Windows 7 would not have rules for Packaged apps. Therefore, when a computer running at least Windows Server 2012 or
Windows 8 joins a domain where an AppLocker policy is already configured, users would be allowed to run any packaged app. This might be contrary to your design.

    To prevent all packaged apps from running on a newly domain-joined computer, by default AppLocker blocks all packaged apps on a computer running at least Windows Server 2012 or Windows 8 if the existing domain policy has rules configured in the exe rule collection. You must take explicit action to allow packaged apps in your enterprise. You can allow only a select set of packaged apps. Or if you want to allow all packaged apps, you can create a default rule for the packaged apps collection.

## Using AppLocker to manage packaged apps

Just as there are differences in managing each rule collection, you need to manage the packaged apps with the following strategy:

1.  Gather information about which Packaged apps are running in your environment. For information about how to do this, see [Create list of apps deployed to each business group](create-list-of-applications-deployed-to-each-business-group.md).

2.  Create AppLocker rules for specific packaged apps based on your policy strategies. For more information, see [Create a rule for packaged apps](create-a-rule-for-packaged-apps.md) and [Packaged Apps Default Rules in AppLocker](https://technet.microsoft.com/library/ee460941(WS.10).aspx).

3.  Continue to update the AppLocker policies as new package apps are introduced into your environment. To do this, see [Add rules for packaged apps to existing AppLocker rule-set](add-rules-for-packaged-apps-to-existing-applocker-rule-set.md).

4.  Continue to monitor your environment to verify the effectiveness of the rules that are deployed in AppLocker policies. To do this, see [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md).
