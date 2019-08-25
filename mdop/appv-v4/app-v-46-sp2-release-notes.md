---
title: App-V 4.6 SP2 Release Notes
description: App-V 4.6 SP2 Release Notes
author: dansimp
ms.assetid: abb536f0-e187-4c5b-952a-f837abd10ad2
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# App-V 4.6 SP2 Release Notes


**To search these release notes, press CTRL+F.**

Read these release notes thoroughly before you install Microsoft Application Virtualization (App-V) 4.6 SP2.

These release notes contain information that is required to successfully install Application Virtualization 4.6 SP2. The release notes also contain information that is not available in the product documentation. If there is a difference between these release notes and other App-V 4.6 SP2 documentation, the latest change should be considered authoritative. These release notes supersede the content that is included with this product.

## About the Product Documentation


For more information about documentation for App-V, see the [Application Virtualization](https://go.microsoft.com/fwlink/?LinkID=232982) page on Microsoft TechNet.

## Providing feedback


We are interested in your feedback on App-V 4.6 SP2. You can send your feedback to <mdopdocs@microsoft.com>.

**Note**  
This email address is not a support channel, but your feedback will help us to plan future changes for our documentation and product releases.

 

For the latest information about MDOP and additional learning resources, see the [MDOP Information Experience](https://go.microsoft.com/fwlink/p/?LinkId=236032) page.

For more information about new updates or to provide feedback, follow us on [Facebook](https://go.microsoft.com/fwlink/p/?LinkId=242445) or [Twitter](https://go.microsoft.com/fwlink/p/?LinkId=242447).

## <a href="" id="known-issues-with-app-v-4-6-sp2-"></a>Known Issues with App-V 4.6 SP2


### Short file name support is disabled for non-system physical drives when you sequence

When you sequence on Windows 8 or Windows Server 2012, support for short file names (8.3) is disabled by default for non-system physical drives.

The underlying physical drive associated with the primary virtual application directory (for example, “Q:\\appname”) on the sequencing station must provide short file name (8.3) support in order for the App-V 4.6 SP2 Sequencer to generate short file names when creating virtual application packages. Short file name (8.3) support is disabled by default for non-system physical drives on Windows 8 or Windows Server 2012.

**Workaround:** Enable short file name (8.3) support on non-system physical drives. You can use the following command to enable short file name support on Windows 8 or Windows Server 2012.

``` syntax
fsutil 8dot3name set <virtual drive letter>:
```

For example, use the following command if the drive letter is “Q:”:

``` syntax
fsutil 8dot3name set Q: 0
```

**Note**  
You do not need to change this setting on the App-V client because the App-V file system properly handles short paths on Windows 8 or Windows Server 2012.

 

### <a href="" id="-------------app-v-does-not-override-the-default-handler-for-file-type-or-protocol-associations-on-windows-8"></a> App-V does not override the default handler for file type or protocol associations on Windows 8

If you select a default application by using **Default Programs** in **Control Panel** on Windows 8, App-V will not override the associated file type associations for that application.

**Workaround:** None.

### Virtualized Outlook 2010 is not offered as an option for mailto clickable links on Windows 8

The mailto shell extension does not offer virtualized Outlook 2010 on Windows 8. For example, if you click a mailto: link from virtualized Outlook 2010 that is running on Windows 8, a new email window is not created. This option works correctly on Windows 7 and earlier versions of the Windows operating system.

**Workaround:** None.

### <a href="" id="-------------application-virtualization-4-6-sp2-update-is-not-offered-on-all-locales-that-use-microsoft-update"></a> Application Virtualization 4.6 SP2 update is not offered on all locales that use Microsoft Update

When you use Microsoft Update, the update for App-V 4.6 SP2 is not available for the following language locales:

-   Kazakh

-   Hindi

-   Serbian-Cyrillic

**Workaround:** If you are using Microsoft Windows Server Update Services (WSUS), use the English version of the update or download the update from the Microsoft Update Catalog.

## Release Notes Copyright Information


Microsoft, Active Directory, ActiveX, Bing, Excel, Silverlight, SQL Server, Windows, Microsoft Intune, and Windows PowerShell are trademarks of the Microsoft group of companies. All other trademarks are property of their respective owners.



## Related topics


[About Microsoft Application Virtualization 4.6 SP2](about-microsoft-application-virtualization-46-sp2.md)

 

 





