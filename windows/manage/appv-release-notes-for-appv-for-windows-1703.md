---
title: Release Notes for App-V for Windows 10, version 1703 (Windows 10)
description: A list of known issues and workarounds for App-V running on Windows 10, version 1703.
author: eross-msft
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Release Notes for App-V for Windows 10, version 1703

**Applies to**
-   Windows 10, version 1703

The following are known issues and workarounds for Application Virtualization (App-V) running on Windows 10, version 1703.

|Problem |Workaround |
|--------|-----------|
|Unable to manually create a system-owned folder needed for the `set-AppVClientConfiguration` PowerShell cmdlet when using the _PackageInstallationRoot_, _IntegrationRootUser_, or _IntegrationRootGlobal_ parameters. |Don't create this file manually, instead let the Add-AppVClientPackage cmdlet auto-generate it. |
|Failure to update an App-V package from App-V 5.0 or App-V 5.1 to the latest version. |Make sure you have the complete App-V package or the MSI file from the original app. |
|Unable to modify the locale for auto-sequencing. |Open the `C:\Program Files (x86)\Windows Kits\10\Microsoft Application Virtualization\AutoSequencer\Unattend_Sequencer_User_Setup_Template.xml` file and include the language code for your locale. |
|Filetype and protocol handlers aren's registering properly with the Google Chrome browser, causing you to not see App-V packages as an option for default apps from the **Settings > Apps> Default Apps** area |[Liz] What is workaround? Using Microsoft Edge? This one is kind of tricky since we usually don't include 3rd party issues in release notes. Do we know of this happening with any other program besides Chrome? |







## Related resources list
For information that can help with troubleshooting App-V for Windows 10, see:
- [Application Virtualization (App-V): List of Microsoft Support Knowledge Base Articles](http://social.technet.microsoft.com/wiki/contents/articles/14272.app-v-v5-x-list-of-microsoft-support-knowledge-base-articles.aspx)

- [The Official Microsoft App-V Team Blog](https://blogs.technet.microsoft.com/appv/)

- [Technical Reference for App-V](https://technet.microsoft.com/itpro/windows/manage/appv-technical-reference)

- [App-V TechNet Forum](https://social.technet.microsoft.com/forums/en-us/home?forum=mdopappv)

## Have a suggestion for App-V?
Add or vote on suggestions on the [Application Virtualization feedback site](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization).<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics
- [What's new in App-V for Windows 10](appv-about-appv.md)

- [Release Notes for App-V for Windows 10, version 1607](appv-release-notes-for-appv-for-windows-1703.md)
