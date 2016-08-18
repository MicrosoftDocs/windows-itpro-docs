---
title: What's new in App-V for Windows 10 (Windows 10)
description: Information about what's new in App-V for Windows 10. 
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# What's new in App-V

**Applies to**
-   Windows 10, version 1607

Microsoft Application Virtualization (App-V) enables organizations to deliver Win32 applications to users as virtual applications. Virtual applications are installed on centrally managed servers and delivered to users as a service – in real time and on as as-needed basis. Users launch virtual applications from familiar access points and interact with them as if they were installed locally. 

Application Virtualization (App-V) for Windows 10, version 1607, includes these new features and capabilities compared to App-V 5.1. See [App-V release notes](appv-release-notes-for-appv-for-windows.md) for more information about the App-V for Windows 10, version 1607 release.


## App-V is now a feature in Windows 10

With Windows 10, version 1607 and later releases, Application Virtualization (App-V) is included with [Windows 10 for Enterprise and Windows 10 for Education](https://www.microsoft.com/en-us/WindowsForBusiness/windows-product-home) and is no longer part of the Microsoft Desktop Optimization Pack. 

For information about earlier versions of App-V, see [MDOP Information Experience](https://technet.microsoft.com/itpro/mdop/index).

The changes in App-V for Windows 10, version 1607 impact already existing implementations of App-V in the following ways:

-   The App-V client is installed on user devices automatically with Windows 10, version 1607, and no longer has to be deployed separately. Performing an in-place upgrade to Windows 10, version 1607, on user devices automatically installs the App-V client.

-   The App-V application sequencer is available from the [Windows 10 Assessment and Deployment Kit (ADK)](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit). In previous releases of App-V, the application sequencer was included in the Microsoft Desktop Optimization Pack. Although you’ll need to use the new application sequencer to create new virtualized applications, existing virtualized applications will continue to work. 

>**Note**<br>If you're already using App-V 5.x, you don't need to re-deploy the App-V server components as they haven't changed since App-V 5.0 was released. 

For more information about how to configure an existing App-V installation after upgrading user devices to Windows 10, see [Upgrading to App-V for Windows 10 from an existing installation](appv-upgrading-to-app-v-for-windows-10-from-an-existing-installation.md) and [Migrating to App-V for Windows 10 from a previous version](appv-migrating-to-appv-from-a-previous-version.md).

>**Important**
You can upgrade your existing App-V installation to Windows 10, version 1607 from App-V versions 5.0 SP2 and higher only. If you are using a previous version of App-V, you’ll need to upgrade from that version to App-V 5.0 SP2 before you upgrade to Windows 10, version 1607.

 
## Support for System Center 

App-V supports System Center 2016 and System Center 2012 R2 Configuration Manager SP1. See [Planning for App-V Integration with Configuration Manager](https://technet.microsoft.com/library/jj822982.aspx) for information about integrating your App-V environment with Configuration Manager.


## Have a suggestion for App-V?


Add or vote on suggestions at [Microsoft Application Virtualization](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics


[Release Notes for App-V](appv-release-notes-for-appv-for-windows.md)

 

 





