---
title: Release Notes for App-V for Windows 10 version 1703 (Windows 10/11)
description: A list of known issues and workarounds for App-V running on Windows 10 version 1703 and Windows 11.
author: greg-lindsay
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: greglin
---


# Release Notes for App-V for Windows 10 version 1703 and later

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

The following are known issues and workarounds for Application Virtualization (App-V) running on Windows 10 version 1703 and later

- **Problem**: Unable to manually create a system-owned folder needed for the `set-AppVClientConfiguration` PowerShell cmdlet when using the PackageInstallationRoot, IntegrationRootUser, or IntegrationRootGlobal parameters.

     **Workaround**: Don't create this file manually, instead let the `Add-AppVClientPackage` cmdlet auto-generate it.

- **Problem**: Failure to update an App-V package from App-V 5.x to the latest in-box version, by using the PowerShell sequencing commands.

     **Workaround**: Make sure you have the complete App-V package or the MSI file from the original app.

- **Problem**: Unable to modify the locale for auto-sequencing.

     **Workaround**: Open the `C:\Program Files (x86)\Windows Kits\10\Microsoft Application Virtualization\AutoSequencer\Unattend_Sequencer_User_Setup_Template.xml` file and include the language code for your locale. For example, if you wanted Spanish (Spain), you'd use: es-ES.

- **Problem**: Filetype and protocol handlers aren't registering properly with the Google Chrome browser, causing you to not see App-V packages as an option for default apps from the Settings > Apps> Default Apps area.

     **Workaround**: The recommended workaround is to add the following code to the AppXManifest.xml file, underneath the `<appv:Extensions>` tag:

     ```xml
     <appv:Extension Category="AppV.URLProtocol">
         <appv:URLProtocol>
             <appv:Name>ftp</appv:Name>
             <appv:ApplicationURLProtocol>
                 <appv:DefaultIcon>[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe,0</appv:DefaultIcon>
                 <appv:ShellCommands>
                     <appv:DefaultCommand>open</appv:DefaultCommand>
                     <appv:ShellCommand>
                         <appv:ApplicationId>[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe</appv:ApplicationId>
                         <appv:Name>open</appv:Name>
                         <appv:CommandLine>"[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe" -- "%1"</appv:CommandLine>
                         <appv:DdeExec>
                             <appv:DdeCommand />
                         </appv:DdeExec>
                     </appv:ShellCommand>
                 </appv:ShellCommands>
             </appv:ApplicationURLProtocol>
         </appv:URLProtocol>
     </appv:Extension>
     <appv:Extension Category="AppV.URLProtocol">
         <appv:URLProtocol>
             <appv:Name>http</appv:Name>
             <appv:ApplicationURLProtocol>
                 <appv:DefaultIcon>[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe,0</appv:DefaultIcon>
                 <appv:ShellCommands>
                     <appv:DefaultCommand>open</appv:DefaultCommand>
                     <appv:ShellCommand>
                         <appv:ApplicationId>[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe</appv:ApplicationId>
                         <appv:Name>open</appv:Name>
                         <appv:CommandLine>"[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe" -- "%1"</appv:CommandLine>
                         <appv:DdeExec>
                             <appv:DdeCommand />
                         </appv:DdeExec>
                     </appv:ShellCommand>
                 </appv:ShellCommands>
             </appv:ApplicationURLProtocol>
         </appv:URLProtocol>
     </appv:Extension>
     <appv:Extension Category="AppV.URLProtocol">
         <appv:URLProtocol>
             <appv:Name>https</appv:Name>
             <appv:ApplicationURLProtocol>
                 <appv:DefaultIcon>[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe,0</appv:DefaultIcon>
                 <appv:ShellCommands>
                     <appv:DefaultCommand>open</appv:DefaultCommand>
                     <appv:ShellCommand>
                         <appv:ApplicationId>[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe</appv:ApplicationId>
                         <appv:Name>open</appv:Name>
                         <appv:CommandLine>"[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe" -- "%1"</appv:CommandLine>
                         <appv:DdeExec>
                             <appv:DdeCommand />
                         </appv:DdeExec>
                     </appv:ShellCommand>
                 </appv:ShellCommands>
             </appv:ApplicationURLProtocol>
         </appv:URLProtocol>
     </appv:Extension>
     ```

## Related resources list
For information that can help with troubleshooting App-V for Windows client, see:
- [Application Virtualization (App-V): List of Microsoft Support Knowledge Base Articles](https://social.technet.microsoft.com/wiki/contents/articles/14272.app-v-v5-x-list-of-microsoft-support-knowledge-base-articles.aspx)

- [The Official Microsoft App-V Team Blog](/archive/blogs/appv/)

- [Technical Reference for App-V](./appv-technical-reference.md)

- [App-V TechNet Forum](https://social.technet.microsoft.com/forums/en-us/home?forum=mdopappv)


<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics
- [What's new in App-V for Windows client](appv-about-appv.md)

- [Release Notes for App-V for Windows 10, version 1607](appv-release-notes-for-appv-for-windows-1703.md)
