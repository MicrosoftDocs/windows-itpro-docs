---
title: Release Notes for App-V for Windows 10, version 1703 (Windows 10)
description: A list of known issues and workarounds for App-V running on Windows 10, version 1703.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---


# Release Notes for App-V for Windows 10, version 1703

**Applies to**
-   Windows 10, version 1703

The following are known issues and workarounds for Application Virtualization (App-V) running on Windows 10, version 1703.

<table border="1">
    <thead>
        <th>Problem</th>
        <th>Workaround</th>
    </thead>
    <tbody>
        <tr>
            <td>Unable to manually create a system-owned folder needed for the <code>set-AppVClientConfiguration</code> PowerShell cmdlet when using the <i>PackageInstallationRoot</i>, <i>IntegrationRootUser</i>, or <i>IntegrationRootGlobal</i> parameters.</td>
            <td>Don&#39;t create this file manually, instead let the <code>Add-AppVClientPackage</code> cmdlet auto-generate it.</td>
        </tr>
        <tr>
            <td>Failure to update an App-V package from App-V 5.x to the latest in-box version, by using the PowerShell sequencing commands.</td>
            <td>Make sure you have the complete App-V package or the MSI file from the original app.</td>
        </tr>
        <tr>
            <td>Unable to modify the locale for auto-sequencing.</td>
            <td>Open the <code>C:\Program Files (x86)\Windows Kits\10\Microsoft Application Virtualization\AutoSequencer\Unattend_Sequencer_User_Setup_Template.xml</code> file and include the language code for your locale. For example, if you wanted Spanish (Spain), you&#39;d use: <strong>es-ES</strong>.</td>
        </tr>
        <tr>
            <td>Filetype and protocol handlers aren&#39;t registering properly with the Google Chrome browser, causing you to not see App-V packages as an option for default apps from the <strong>Settings &gt; Apps&gt; Default Apps</strong> area.</td>
            <td>The recommended workaround is to add the following code to the AppXManifest.xml file, underneath the <strong>&lt;appv:Extensions&gt;</strong> tag:
<pre><code>
&lt;appv:Extension Category="AppV.URLProtocol"&gt;
    &lt;appv:URLProtocol&gt;
        &lt;appv:Name&gt;ftp&lt;/appv:Name&gt;
        &lt;appv:ApplicationURLProtocol&gt;
            &lt;appv:DefaultIcon&gt;[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe,0&lt;/appv:DefaultIcon&gt;
            &lt;appv:ShellCommands&gt;
                &lt;appv:DefaultCommand&gt;open&lt;/appv:DefaultCommand&gt;
                &lt;appv:ShellCommand&gt;
                    &lt;appv:ApplicationId&gt;[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe&lt;/appv:ApplicationId&gt;
                    &lt;appv:Name&gt;open&lt;/appv:Name&gt;
                    &lt;appv:CommandLine&gt;"[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe" -- "%1"&lt;/appv:CommandLine&gt;
                    &lt;appv:DdeExec&gt;
                        &lt;appv:DdeCommand /&gt;
                    &lt;/appv:DdeExec&gt;
                &lt;/appv:ShellCommand&gt;
            &lt;/appv:ShellCommands&gt;
        &lt;/appv:ApplicationURLProtocol&gt;
    &lt;/appv:URLProtocol&gt;
&lt;/appv:Extension&gt;
&lt;appv:Extension Category="AppV.URLProtocol"&gt;
    &lt;appv:URLProtocol&gt;
        &lt;appv:Name&gt;http&lt;/appv:Name&gt;
        &lt;appv:ApplicationURLProtocol&gt;
            &lt;appv:DefaultIcon&gt;[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe,0&lt;/appv:DefaultIcon&gt;
            &lt;appv:ShellCommands&gt;
                &lt;appv:DefaultCommand&gt;open&lt;/appv:DefaultCommand&gt;
                &lt;appv:ShellCommand&gt;
                    &lt;appv:ApplicationId&gt;[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe&lt;/appv:ApplicationId&gt;
                    &lt;appv:Name&gt;open&lt;/appv:Name&gt;
                    &lt;appv:CommandLine&gt;"[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe" -- "%1"&lt;/appv:CommandLine&gt;
                    &lt;appv:DdeExec&gt;
                        &lt;appv:DdeCommand /&gt;
                    &lt;/appv:DdeExec&gt;
                &lt;/appv:ShellCommand&gt;
            &lt;/appv:ShellCommands&gt;
        &lt;/appv:ApplicationURLProtocol&gt;
    &lt;/appv:URLProtocol&gt;
&lt;/appv:Extension&gt;
&lt;appv:Extension Category="AppV.URLProtocol"&gt;
    &lt;appv:URLProtocol&gt;
        &lt;appv:Name&gt;https&lt;/appv:Name&gt;
        &lt;appv:ApplicationURLProtocol&gt;
            &lt;appv:DefaultIcon&gt;[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe,0&lt;/appv:DefaultIcon&gt;
            &lt;appv:ShellCommands&gt;
                &lt;appv:DefaultCommand&gt;open&lt;/appv:DefaultCommand&gt;
                &lt;appv:ShellCommand&gt;
                    &lt;appv:ApplicationId&gt;[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe&lt;/appv:ApplicationId&gt;
                    &lt;appv:Name&gt;open&lt;/appv:Name&gt;
                    &lt;appv:CommandLine&gt;"[{ProgramFilesX86}]\Google\Chrome\Application\chrome.exe" -- "%1"&lt;/appv:CommandLine&gt;
                    &lt;appv:DdeExec&gt;
                        &lt;appv:DdeCommand /&gt;
                    &lt;/appv:DdeExec&gt;
                &lt;/appv:ShellCommand&gt;
            &lt;/appv:ShellCommands&gt;
        &lt;/appv:ApplicationURLProtocol&gt;
    &lt;/appv:URLProtocol&gt;
&lt;/appv:Extension&gt;
</code></pre><br/>            </td>
        </tr>
    </tbody>
</table>


## Related resources list
For information that can help with troubleshooting App-V for Windows 10, see:
- [Application Virtualization (App-V): List of Microsoft Support Knowledge Base Articles](https://social.technet.microsoft.com/wiki/contents/articles/14272.app-v-v5-x-list-of-microsoft-support-knowledge-base-articles.aspx)

- [The Official Microsoft App-V Team Blog](https://blogs.technet.microsoft.com/appv/)

- [Technical Reference for App-V](https://technet.microsoft.com/itpro/windows/manage/appv-technical-reference)

- [App-V TechNet Forum](https://social.technet.microsoft.com/forums/en-us/home?forum=mdopappv)


<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics
- [What's new in App-V for Windows 10](appv-about-appv.md)

- [Release Notes for App-V for Windows 10, version 1607](appv-release-notes-for-appv-for-windows-1703.md)
