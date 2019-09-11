---
title: Prepare a UE-V 2.x Deployment
description: Prepare a UE-V 2.x Deployment
author: dansimp
ms.assetid: c429fd06-13ff-48c5-b9c9-fa1ec01ab800
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
---


# Prepare a UE-V 2.x Deployment


There is some planning and preparation to do before you deploy Microsoft User Experience Virtualization (UE-V) 2.0 or 2.1 as a solution for synchronizing settings between devices that users access in your enterprise. This topic helps you determine what type of deployment you'll be doing and what preparation you can make beforehand so that your deployment is successful.

First, let’s look at the tasks you’ll do to deploy UE-V:

-   Plan your UE-V Deployment

    Before you deploy anything, a good first step is to do a little bit of planning so that you can determine which UE-V features you’ll deploy. So if you leave this page, make sure you come back and read through the planning information below.

-   [Deploy Required Features for UE-V 2.x](deploy-required-features-for-ue-v-2x-new-uevv2.md)

    Every UE-V deployment requires these activities:

    -   [Define a settings storage location](https://technet.microsoft.com/library/dn458891.aspx#ssl)

    -   [Decide how to deploy the UE-V Agent and manage UE-V configurations](https://technet.microsoft.com/library/dn458891.aspx#config)

    -   [Install the UE-V Agent](https://technet.microsoft.com/library/dn458891.aspx#agent) on every user computer that needs settings synchronized

-   Optionally, you can [Deploy UE-V 2.x for Custom Applications](deploy-ue-v-2x-for-custom-applications-new-uevv2.md)

    Planning will help you figure out whether you want UE-V to support the synchronization of settings for custom applications (third-party or line-of-business), which requires these UE-V features:

    -   [Install the UEV Generator](https://technet.microsoft.com/library/dn458942.aspx#uevgen) so you can create, edit, and validate the custom settings location templates required to synchronize custom application settings

    -   [Create custom settings location templates](https://technet.microsoft.com/library/dn458942.aspx#createcustomtemplates) by using the UE-V Generator

    -   [Deploy a UE-V settings template catalog](https://technet.microsoft.com/library/dn458942.aspx#deploycatalogue) that you use to store your custom settings location templates

This workflow diagram provides a high-level understanding of a UE-V deployment and the decisions that determine how you deploy UE-V in your enterprise.

![deploymentworkflow](images/deploymentworkflow.png)

**Planning a UE-V deployment:** First, you want to do a little bit of planning so that you can determine which UE-V components you’ll be deploying. Planning a UE-V deployment involves these things:

-   [Decide whether to synchronize settings for custom applications](#deciding)

    This determines whether you will install the UE-V Generator during deployment, which lets you create custom settings location templates. It involves the following:

    Review the [settings that are synchronized automatically in a UE-V deployment](#autosyncsettings).

    [Determine whether you need settings synchronized for other applications](#determinesettingssync).

-   Review [other considerations for deploying UE-V](#considerations), such as high availability and capacity planning.

-   [Confirm prerequisites and supported configurations for UE-V](#prereqs)

## <a href="" id="deciding"></a>Decide Whether to Synchronize Settings for Custom Applications


In a UE-V deployment, many settings are automatically synchronized. But you can also customize UE-V to synchronize settings for other applications, such as line-of-business and third-party apps.

Deciding if you want UE-V to synchronize settings for custom applications is probably the most important part of planning your UE-V deployment. The topics in this section will help you make that decision.

### <a href="" id="autosyncsettings"></a>Settings that are automatically synchronized in a UE-V deployment

This section provides information about the settings that are synchronized by default in UE-V, including the following:

Desktop applications whose settings are synchronized by default

Windows desktop settings that are synchronized by default

A statement of support for Windows app setting synchronization

See [User Experience Virtualization (UE-V) settings templates for Microsoft Office](https://www.microsoft.com/download/details.aspx?id=46367) to download a complete list of the specific Microsoft Office 2013, Microsoft Office 2010, and Microsoft Office 2007 settings that are synchronized by UE-V.

### Desktop applications synchronized by default in UE-V 2.1 and UE-V 2.1 SP1

When you install the UE-V 2.1 or 2.1 SP1 Agent, it registers a default group of settings location templates that capture settings values for these common Microsoft applications.

**Tip**  
**Microsoft Office 2007 Settings Synchronization** – In UE-V 2.1 and 2.1 SP1, a settings location template is no longer included by default for Office 2007 applications. However, you can still use Office 2007 templates from UE-V 2.0 or earlier and can get the templates from the [UE-V template gallery](https://go.microsoft.com/fwlink/p/?LinkID=246589).



<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>Application category</strong></th>
<th align="left"><strong>Description</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Office 2010 applications</p>
<p>(<a href="https://www.microsoft.com/download/details.aspx?id=46367" data-raw-source="[Download a list of all settings synced](https://www.microsoft.com/download/details.aspx?id=46367)">Download a list of all settings synced</a>)</p></td>
<td align="left"><p>Microsoft Word 2010</p>
<p>Microsoft Excel 2010</p>
<p>Microsoft Outlook 2010</p>
<p>Microsoft Access 2010</p>
<p>Microsoft Project 2010</p>
<p>Microsoft PowerPoint 2010</p>
<p>Microsoft Publisher 2010</p>
<p>Microsoft Visio 2010</p>
<p>Microsoft SharePoint Workspace 2010</p>
<p>Microsoft InfoPath 2010</p>
<p>Microsoft Lync 2010</p>
<p>Microsoft OneNote 2010</p>
<p>Microsoft SharePoint Designer 2010</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Office 2013 applications</p>
<p>(<a href="https://www.microsoft.com/download/details.aspx?id=46367" data-raw-source="[Download a list of all settings synced](https://www.microsoft.com/download/details.aspx?id=46367)">Download a list of all settings synced</a>)</p></td>
<td align="left"><p>Microsoft Word 2013</p>
<p>Microsoft Excel 2013</p>
<p>Microsoft Outlook 2013</p>
<p>Microsoft Access 2013</p>
<p>Microsoft Project 2013</p>
<p>Microsoft PowerPoint 2013</p>
<p>Microsoft Publisher 2013</p>
<p>Microsoft Visio 2013</p>
<p>Microsoft InfoPath 2013</p>
<p>Microsoft Lync 2013</p>
<p>Microsoft OneNote 2013</p>
<p>Microsoft SharePoint Designer 2013</p>
<p>Microsoft Office 2013 Upload Center</p>
<p>Microsoft OneDrive for Business 2013</p>
<p>The UE-V 2.1 and 2.1 SP1 Microsoft Office 2013 settings location templates include improved Outlook signature support. We’ve added synchronization of default signature settings for new, reply, and forwarded emails.</p>
<div class="alert">
<strong>Note</strong><br/><p>An Outlook profile must be created for any device on which a user wants to sync their Outlook signature. If the profile is not already created, the user can create one and then restart Outlook on that device to enable signature synchronization.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p>Browser options: Internet Explorer 8, Internet Explorer 9, Internet Explorer 10, and Internet Explorer 11</p></td>
<td align="left"><p>Favorites, home page, tabs, and toolbars.</p>
<div class="alert">
<strong>Note</strong><br/><p>UE-V does not roam settings for Internet Explorer cookies.</p>
</div>
<div>

</div></td>
</tr>
<tr class="even">
<td align="left"><p>Windows accessories</p></td>
<td align="left"><p>Microsoft Calculator, Notepad, WordPad.</p></td>
</tr>
</tbody>
</table>



**Note**  
UE-V 2.1 SP1 does not synchronize settings between the Microsoft Calculator in Windows 10 and the Microsoft Calculator in previous operating systems.



### Desktop applications synchronized by default in UE-V 2.0

When you install the UE-V 2.0 Agent, it registers a default group of settings location templates that capture settings values for these common Microsoft applications.

**Tip**  
**Microsoft Office 2013 Settings Synchronization** – In UE-V 2.0, a settings location template is not included by default for Office 2013 applications, but is available for download from the [UE-V template gallery](https://go.microsoft.com/fwlink/p/?LinkID=246589). [Synchronizing Office 2013 with UE-V 2.0](synchronizing-office-2013-with-ue-v-20-both-uevv2.md) provides details about the supported templates that synchronize Office 2013 settings.



<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>Application category</strong></th>
<th align="left"><strong>Description</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Office 2007 applications</p>
<p>(<a href="https://www.microsoft.com/download/details.aspx?id=46367" data-raw-source="[Download a list of all settings synced](https://www.microsoft.com/download/details.aspx?id=46367)">Download a list of all settings synced</a>)</p></td>
<td align="left"><p>Microsoft Access 2007</p>
<p>Microsoft Communicator 2007</p>
<p>Microsoft Excel 2007</p>
<p>Microsoft InfoPath 2007</p>
<p>Microsoft OneNote 2007</p>
<p>Microsoft Outlook 2007</p>
<p>Microsoft PowerPoint 2007</p>
<p>Microsoft Project 2007</p>
<p>Microsoft Publisher 2007</p>
<p>Microsoft SharePoint Designer 2007</p>
<p>Microsoft Visio 2007</p>
<p>Microsoft Word 2007</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Office 2010 applications</p>
<p>(<a href="https://www.microsoft.com/download/details.aspx?id=46367" data-raw-source="[Download a list of all settings synced](https://www.microsoft.com/download/details.aspx?id=46367)">Download a list of all settings synced</a>)</p></td>
<td align="left"><p>Microsoft Word 2010</p>
<p>Microsoft Excel 2010</p>
<p>Microsoft Outlook 2010</p>
<p>Microsoft Access 2010</p>
<p>Microsoft Project 2010</p>
<p>Microsoft PowerPoint 2010</p>
<p>Microsoft Publisher 2010</p>
<p>Microsoft Visio 2010</p>
<p>Microsoft SharePoint Workspace 2010</p>
<p>Microsoft InfoPath 2010</p>
<p>Microsoft Lync 2010</p>
<p>Microsoft OneNote 2010</p>
<p>Microsoft SharePoint Designer 2010</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Browser options: Internet Explorer 8, Internet Explorer 9, and Internet Explorer 10</p></td>
<td align="left"><p>Favorites, home page, tabs, and toolbars.</p>
<div class="alert">
<strong>Note</strong><br/><p>UE-V does not roam settings for Internet Explorer cookies.</p>
</div>
<div>

</div></td>
</tr>
<tr class="even">
<td align="left"><p>Windows accessories</p></td>
<td align="left"><p>Microsoft Calculator, Notepad, WordPad.</p></td>
</tr>
</tbody>
</table>



### <a href="" id="autosyncsettings2"></a>Windows settings synchronized by default

UE-V includes settings location templates that capture settings values for these Windows settings.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Windows settings</th>
<th align="left">Description</th>
<th align="left">Apply on</th>
<th align="left">Export on</th>
<th align="left">Default state</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Desktop background</p></td>
<td align="left"><p>Currently active desktop background or wallpaper.</p></td>
<td align="left"><p>Logon, unlock, remote connect, Scheduled Task events.</p></td>
<td align="left"><p>Logoff, lock, remote disconnect, user clicking <strong>Sync Now</strong> in Company Settings Center, or scheduled task interval</p></td>
<td align="left"><p>Enabled</p></td>
</tr>
<tr class="even">
<td align="left"><p>Ease of Access</p></td>
<td align="left"><p>Accessibility and input settings, Microsoft Magnifier, Narrator, and on-Screen Keyboard.</p></td>
<td align="left"><p>Logon only.</p></td>
<td align="left"><p>Logoff, user clicking <strong>Sync Now</strong> in Company Settings Center, or scheduled task interval</p></td>
<td align="left"><p>Enabled</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Desktop settings</p></td>
<td align="left"><p>Start menu and Taskbar settings, Folder options, Default desktop icons, Additional clocks, and Region and Language settings.</p></td>
<td align="left"><p>Logon only.</p></td>
<td align="left"><p>Logoff, user clicking <strong>Sync Now</strong> in Company Settings Center, or scheduled task</p></td>
<td align="left"><p>Enabled</p></td>
</tr>
</tbody>
</table>



**Note**  
Starting in Windows 8, UE-V does not roam settings related to the Start screen, such as items and locations. In addition, UE-V does not support synchronization of pinned taskbar items or Windows file shortcuts.



**Important**  
UE-V 2.1 SP1 roams taskbar settings between Windows 10 devices. However, UE-V does not synchronize taskbar settings between Windows 10 devices and devices running previous operating systems.



<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Settings group</th>
<th align="left">Category</th>
<th align="left">Capture</th>
<th align="left">Apply</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Application Settings</strong></p></td>
<td align="left"><p>Windows apps</p></td>
<td align="left"><p>Close app</p>
<p>Windows app settings change event</p></td>
<td align="left"><p>Start the UE-V App Monitor at startup</p>
<p>Open app</p>
<p>Windows App Settings change event</p>
<p>Arrival of a settings package</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p>Desktop applications</p></td>
<td align="left"><p>Application closes</p></td>
<td align="left"><p>Application opens and closes</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Desktop settings</strong></p></td>
<td align="left"><p>Desktop background</p></td>
<td align="left"><p>Lock or logoff</p></td>
<td align="left"><p>Logon, unlock, remote connect, notification of new package arrival, user clicks <strong>Sync Now</strong> in Company Settings Center, or scheduled task runs.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p>Ease of Access (Common – Accessibility, Narrator, Magnifier, On-Screen-Keyboard)</p></td>
<td align="left"><p>Lock or Logoff</p></td>
<td align="left"><p>Logon</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p>Ease of Access (Shell - Audio, Accessibility, Keyboard, Mouse)</p></td>
<td align="left"><p>Lock or logoff</p></td>
<td align="left"><p>Logon, unlock, remote connect, notification of new package arrival, user clicks <strong>Sync Now</strong> in Company Settings Center, or scheduled task runs</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p>Desktop settings</p></td>
<td align="left"><p>Lock or logoff</p></td>
<td align="left"><p>Logon</p></td>
</tr>
</tbody>
</table>



### UE-V-support for Windows Apps

For Windows apps, the app developer specifies the settings that are synchronized. You can specify which Windows apps are enabled for settings synchronization.

To display a list of Windows apps that can synchronize settings on a computer with their package family name, enabled status, and enabled source, at a Windows PowerShell command prompt, enter: `Get-UevAppxPackage`

**Note**  
As of Windows 8, UE-V does not synchronize Windows app settings if the domain user links their sign-in credentials to their Microsoft Account. This linking synchronizes settings to Microsoft OneDrive so UE-V, which disables synchronization of Windows app settings.



### UE-V-support for Roaming Printers

UE-V 2.1 SP1 lets network printers roam between devices so that a user has access to their network printers when logged on to any device on the network. This includes roaming the printer that they set as the default.

Printer roaming in UE-V requires one of these scenarios:

-   The print server can download the required driver when it roams to a new device.

-   The driver for the roaming network printer is pre-installed on any device that needs to access that network printer.

-   The printer driver can be obtained from Windows Update.

**Note**  
The UE-V printer roaming feature does **not** roam printer settings or preferences, such as printing double-sided.



### <a href="" id="determinesettingssync"></a>Determine whether you need settings synchronized for other applications

After you have reviewed the settings that are synchronized automatically in a UE-V deployment, you want to decide whether you will synchronize settings for other applications since this determines how you deploy UE-V throughout your enterprise.

As an administrator, when you consider which desktop applications to include in your UE-V solution, consider which settings can be customized by users, and how and where the application stores its settings. Not all desktop applications have settings that can be customized or that are routinely customized by users. In addition, not all desktop applications settings can safely be synchronized across multiple computers or environments.

In general, you can synchronize settings that meet the following criteria:

-   Settings that are stored in user-accessible locations. For example, do not synchronize settings that are stored in System32 or outside the HKEY\_CURRENT\_USER (HKCU) section of the registry.

-   Settings that are not specific to the particular computer. For example, exclude network or hardware configurations.

-   Settings that can be synchronized between computers without risk of corrupted data. For example, do not use settings that are stored in a database file.

### <a href="" id="checklistsettingssync"></a>Checklist for evaluating custom applications

If you’ve decided that you need settings synchronized for other applications, you can use this checklist to help figure out which applications you’ll include.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"></th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Does this application contain settings that the user can customize?</p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Is it important for the user that these settings are synchronized?</p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Are these user settings already managed by an application management or settings policy solution? UE-V applies application settings at application startup and Windows settings at logon, unlock, or remote connect events. If you use UE-V with other settings sharing solutions, users might experience inconsistency across synchronized settings.</p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Are the application settings specific to the computer? Application preferences and customizations that are associated with hardware or specific computer configurations do not consistently synchronize across sessions and can cause a poor application experience.</p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Does the application store settings in the Program Files directory or in the file directory that is located in the <strong>Users</strong>[User name]&lt;strong&gt;AppData</strong>&lt;strong&gt;LocalLow</strong> directory? Application data that is stored in either of these locations usually should not synchronize with the user, because this data is specific to the computer or because the data is too large to synchronize.</p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Does the application store any settings in a file that contains other application data that should not synchronize? UE-V synchronizes files as a single unit. If settings are stored in files that include application data other than settings, then synchronizing this additional data can cause a poor application experience.</p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>How large are the files that contain the settings? The performance of the settings synchronization can be affected by large files. Including large files can affect the performance of settings synchronization.</p></td>
</tr>
</tbody>
</table>



## <a href="" id="considerations"></a>Other Considerations when Preparing a UE-V Deployment


You should also consider these things when you are preparing to deploy UE-V:

-   [Managing credentials synchronization](#creds)

-   [Windows app settings synchronization](#appxsettings)

-   [Custom UE-V settings location templates](#custom)

-   [Unintentional user settings configurations](#prevent)

-   [Performance and capacity](#capacity)

-   [High availability](#high)

-   [Computer clock synchronization](#clocksync)

### <a href="" id="creds"></a>Managing credentials synchronization in UE-V 2.1 and UE-V 2.1 SP1

Many enterprise applications, including Microsoft Outlook and Lync, prompt users for their domain credentials at login. Users have the option of saving their credentials to disk to prevent having to enter them every time they open these applications. Enabling roaming credentials synchronization lets users save their credentials on one computer and avoid re-entering them on every computer they use in their environment. Users can synchronize some domain credentials with UE-V 2.1 and 2.1 SP1.

**Important**  
Credentials synchronization is disabled by default. You must explicitly enable credentials synchronization during deployment to implement this feature.



UE-V 2.1 and 2.1 SP1 can synchronize enterprise credentials, but do not roam credentials intended only for use on the local computer.

Credentials are synchronous settings, meaning they are applied to your profile the first time you log in to your computer after UE-V synchronizes.

Credentials synchronization is managed by its own settings location template, which is disabled by default. You can enable or disable this template through the same methods used for other templates. The template identifier for this feature is RoamingCredentialSettings.

**Important**  
If you are using Active Directory Credential Roaming in your environment, we recommend that you don’t enable the UE-V credential roaming template.



Use one of these methods to enable credentials synchronization:

-   Company Settings Center

-   PowerShell

-   Group Policy

**Note**  
Credentials are encrypted during synchronization.



[Company Settings Center](https://technet.microsoft.com/library/dn458903.aspx)**:** Check the Roaming Credential Settings check box under Windows Settings to enable credential synchronization. Uncheck the box to disable it. This check box only appears in Company Settings Center if your account is not configured to synchronize settings using a Microsoft Account.

[PowerShell](https://technet.microsoft.com/library/dn458937.aspx)**:** This PowerShell cmdlet enables credential synchronization:

``` syntax
Enable-UevTemplate RoamingCredentialSettings
```

This PowerShell cmdlet disables credential synchronization:

``` syntax
Disable-UevTemplate RoamingCredentialSettings
```

[Group Policy](https://technet.microsoft.com/library/dn458893.aspx)**:** You must [deploy the latest MDOP ADMX template](https://go.microsoft.com/fwlink/p/?LinkId=393944) to enable credential synchronization through group policy. Credentials synchronization is managed with the Windows settings. To manage this feature with Group Policy, enable the Synchronize Windows settings policy.

1.  Open Group Policy Editor and navigate to **User Configuration – Administrative Templates – Windows Components – Microsoft User Experience Virtualization**.

2.  Double-click on **Synchronize Windows settings**.

3.  If this policy is enabled, you can enable credentials synchronization by checking the **Roaming Credentials** check box, or disable credentials synchronization by unchecking it.

4.  Click **OK**.

### Credential locations synchronized by UE-V

Credential files saved by applications into the following locations are synchronized:

-   %UserProfile%\\AppData\\Roaming\\Microsoft\\Credentials\\

-   %UserProfile%\\AppData\\Roaming\\Microsoft\\Crypto\\

-   %UserProfile%\\AppData\\Roaming\\Microsoft\\Protect\\

-   %UserProfile%\\AppData\\Roaming\\Microsoft\\SystemCertificates\\

Credentials saved to other locations are not synchronized by UE-V.

### <a href="" id="appxsettings"></a>Windows app settings synchronization

UE-V manages Windows app settings synchronization in three ways:

-   **Sync Windows Apps:** Allow or deny any Windows app synchronization

-   **Windows App List:** Synchronize a list of Windows apps

-   **Unlisted Default Sync Behavior:** Determine the synchronization behavior of Windows apps that are not in the Windows app list.

For more information, see the [Windows App List](https://technet.microsoft.com/library/dn458925.aspx#win8applist).

### <a href="" id="custom"></a>Custom UE-V settings location templates

If you are deploying UE-V to synchronize settings for custom applications, you will use the UE-V Generator to create custom settings location templates for those desktop applications. After you create and test a custom settings location template in a test environment, you can deploy the settings location templates to computers in the enterprise.

Custom settings location templates must be deployed with an existing deployment infrastructure, like an enterprise software distribution (ESD) method such as System Center Configuration Manager, with preferences, or by configuring an UE-V settings template catalog. Templates that are deployed with Configuration Manager or Group Policy must be registered by using UE-V WMI or Windows PowerShell.

For more information about custom settings location templates, see [Deploy UE-V 2.x for Custom Applications](deploy-ue-v-2x-for-custom-applications-new-uevv2.md). For more information about using UE-V with Configuration Manager, see [Configuring UE-V 2.x with System Center Configuration Manager 2012](configuring-ue-v-2x-with-system-center-configuration-manager-2012-both-uevv2.md).

### <a href="" id="prevent"></a>Prevent unintentional user settings configuration

UE-V downloads new user settings information from a settings storage location and applies the settings to the local computer in these instances:

-   Every time an application is started that has a registered UE-V template.

-   When a user logs on to a computer.

-   When a user unlocks a computer.

-   When a connection is made to a remote desktop computer that has UE-V installed.

-   When the Sync Controller Application scheduled task is run.

If UE-V is installed on computer A and computer B, and the settings that you want for the application are on computer A, then computer A should open and close the application first. If the application is opened and closed on computer B first, then the application settings on computer A are configured to the application settings on computer B. Settings are synchronized between computers on per-application basis. Over time, settings become consistent between computers as they are opened and closed with preferred settings.

This scenario also applies to Windows settings. If the Windows settings on computer B should be the same as the Windows settings on computer A, then the user should log on and log off computer A first.

If the user settings that the user wants are applied in the wrong order, they can be recovered by performing a restore operation for the specific application or Windows configuration on the computer on which the settings were overwritten. For more information, see [Manage Administrative Backup and Restore in UE-V 2.x](manage-administrative-backup-and-restore-in-ue-v-2x-new-topic-for-21.md).

### <a href="" id="capacity"></a>Performance and capacity planning

Specify your requirements for UE-V with standard disk capacity and network health monitoring.

UE-V uses a Server Message Block (SMB) share for the storage of settings packages. The size of settings packages varies depending on the settings information for each application. While most settings packages are small, the synchronization of potentially large files, such as desktop images, can result in poor performance, particularly on slower networks.

To reduce problems with network latency, create settings storage locations on the same local networks where the users’ computers reside. We recommend 20 MB of disk space per user for the settings storage location.

By default, UE-V synchronization times out after 2 seconds to prevent excessive lag due to a large settings package. You can configure the SyncMethod=SyncProvider setting by using [Group Policy Objects](https://technet.microsoft.com/library/dn458893.aspx).

### <a href="" id="high"></a>High Availability for UE-V

The UE-V settings storage location and settings template catalog support storing user data on any writable share. To ensure high availability, follow these criteria:

-   Format the storage volume with an NTFS file system.

-   The share can use Distributed File System (DFS) but there are restrictions.
Specifically, Distributed File System Replication (DFS-R) single target configuration with or without a Distributed File System Namespace (DFS-N) is supported.
Likewise, only single target configuration is supported with DFS-N.
For detailed information, see [Microsoft’s Support Statement Around Replicated User Profile Data](https://go.microsoft.com/fwlink/p/?LinkId=313991)
and also [Information about Microsoft support policy for a DFS-R and DFS-N deployment scenario](https://support.microsoft.com/kb/2533009).

    In addition, because SYSVOL uses DFS-R for replication, SYSVOL cannot be used for UE-V data file replication.

-   Configure the share permissions and NTFS access control lists (ACLs) as specified in [Deploying the Settings Storage Location for UE-V 2.x](https://technet.microsoft.com/library/dn458891.aspx#ssl).

-   Use file server clustering along with the UE-V Agent to provide access to copies of user state data in the event of communications failures.

-   You can store the settings storage path data (user data) and settings template catalog templates on clustered shares, on DFS-N shares, or on both.

### <a href="" id="clocksync"></a>Synchronize computer clocks for UE-V settings synchronization

Computers that run the UE-V Agent must use a time server to maintain a consistent settings experience. UE-V uses time stamps to determine if settings must be synchronized from the settings storage location. If the computer clock is inaccurate, older settings can overwrite newer settings, or the new settings might not be saved to the settings storage location.

## <a href="" id="prereqs"></a>Confirm Prerequisites and Supported Configurations for UE-V


Before you proceed, make sure your environment includes these requirements for running UE-V.

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>Operating system</strong></th>
<th align="left"><strong>Edition</strong></th>
<th align="left"><strong>Service pack</strong></th>
<th align="left"><strong>System architecture</strong></th>
<th align="left"><strong>Windows PowerShell</strong></th>
<th align="left"><strong>Microsoft .NET Framework</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>Ultimate, Enterprise, or Professional Edition</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
<td align="left"><p>Windows PowerShell 3.0 or higher</p></td>
<td align="left"><p>.NET Framework 4.5 or higher for UE-V 2.1.</p>
<p>.NET Framework 4 or higher for UE-V 2.0.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2</p></td>
<td align="left"><p>Standard, Enterprise, Datacenter, or Web Server</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>Windows PowerShell 3.0 or higher</p></td>
<td align="left"><p>.NET Framework 4.5 or higher for UE-V 2.1.</p>
<p>.NET Framework 4 or higher for UE-V 2.0.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 8 and Windows 8.1</p></td>
<td align="left"><p>Enterprise or Pro</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
<td align="left"><p>Windows PowerShell 3.0 or higher</p></td>
<td align="left"><p>.NET Framework 4.5 or higher</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 10, pre-1607 version</p>
<div class="alert">
<strong>Note</strong><br/><p>Only UE-V 2.1 SP1 supports Windows 10, pre-1607 version</p>
</div>
<div>

</div></td>
<td align="left"><p>Enterprise or Pro</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
<td align="left"><p>Windows PowerShell 3.0 or higher</p></td>
<td align="left"><p>.NET Framework 4.6</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2012 and Windows Server 2012 R2</p></td>
<td align="left"><p>Standard or Datacenter</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>Windows PowerShell 3.0 or higher</p></td>
<td align="left"><p>.NET Framework 4.5 or higher</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2016</p></td>
<td align="left"><p>Standard or Datacenter</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>Windows PowerShell 3.0 or higher</p></td>
<td align="left"><p>.NET Framework 4.6 or higher</p></td>
</tr>
</tbody>
</table>



Also…

-   **MDOP License:** This technology is a part of the Microsoft Desktop Optimization Pack (MDOP). Enterprise customers can get MDOP with Microsoft Software Assurance. For more information about Microsoft Software Assurance and acquiring MDOP, see How Do I Get MDOP (https://go.microsoft.com/fwlink/p/?LinkId=322049).

-   **Administrative Credentials** for any computer on which you’ll be installing

**Note**  

-   Starting with WIndows 10, version 1607, UE-V is included with [Windows 10 for Enterprise](https://www.microsoft.com/WindowsForBusiness/windows-for-enterprise) and is no longer part of the Microsoft Desktop Optimization Pack.

-   The UE-V Windows PowerShell feature of the UE-V Agent requires .NET Framework 4 or higher and Windows PowerShell 3.0 or higher to be enabled. Download Windows PowerShell 3.0 [here](https://go.microsoft.com/fwlink/?LinkId=309609).

-   Install .NET Framework 4 or .NET Framework 4.5 on computers that run the Windows 7 or the Windows Server 2008 R2 operating system. The Windows 8, Windows 8.1, and Windows Server 2012 operating systems come with .NET Framework 4.5 installed. The Windows 10 operating system comes with .NET Framework 4.6 installed.
-   The “Delete Roaming Cache” policy for Mandatory profiles is not supported with UE-V and should not be used.



There are no special random access memory (RAM) requirements specific to UE-V.

### Synchronization of Settings through the Sync Provider

Sync Provider is the default setting for users, which synchronizes a local cache with the settings storage location in these instances:

-   Logon/logoff

-   Lock/unlock

-   Remote desktop connect/disconnect

-   Application open/close

A scheduled task manages this synchronization of settings every 30 minutes or through certain trigger events for certain applications. For more information, see [Changing the Frequency of UE-V 2.x Scheduled Tasks](changing-the-frequency-of-ue-v-2x-scheduled-tasks-both-uevv2.md).

The UE-V Agent synchronizes user settings for computers that are not always connected to the enterprise network (remote computers and laptops) and computers that are always connected to the network (computers that run Windows Server and host virtual desktop interface (VDI) sessions).

**Synchronization for computers with always-available connections:** When you use UE-V on computers that are always connected to the network, you must configure the UE-V Agent to synchronize settings by using the *SyncMethod=None* parameter, which treats the settings storage server as a standard network share. In this configuration, the UE-V Agent can be configured to notify if the import of the application settings is delayed.

Enable this configuration through one of these methods:

-   During UE-V installation, at the command prompt or in a batch file, set the AgentSetup.exe parameter *SyncMethod = None*. [Deploying the UE-V 2.x Agent](https://technet.microsoft.com/library/dn458891.aspx#agent) provides more information.

-   After the UE-V installation, use the Settings Management feature in System Center 2012 Configuration Manager or the MDOP ADMX templates to push the *SyncMethod = None* configuration.

-   Use Windows PowerShell or Windows Management Instrumentation (WMI) to set the *SyncMethod = None* configuration.

    **Note**  
    These last two methods do not work for pooled virtual desktop infrastructure (VDI) environments.



You must restart the computer before the settings start to synchronize.

**Note**  
If you set *SyncMethod = None*, any settings changes are saved directly to the server. If the network connection to the settings storage path is not found, then the settings changes are cached on the device and are synchronized the next time that the sync provider runs. If the settings storage path is not found and the user profile is removed from a pooled VDI environment on logoff, settings changes are lost and the user must reapply the change when the computer is reconnected to the settings storage path.



**Synchronization for external sync engines:** The *SyncMethod=External* parameter specifies that if UE-V settings are written to a local folder on the user computer, then any external sync engine (such as OneDrive for Business, Work Folders, Sharepoint, or Dropbox) can be used to apply these settings to the different computers that users access.

**Support for shared VDI sessions:** UE-V 2.1 and 2.1 SP1 provide support for VDI sessions that are shared among end users. You can register and configure a special VDI template, which ensures that UE-V keeps all of its functionality intact for non-persistent VDI sessions.

**Note**  
If you do not enable VDI mode for non-persistent VDI sessions, certain features do not work, such as [back-up/restore and last known good (LKG)](https://technet.microsoft.com/library/dn878331.aspx).



The VDI template is provided with UE-V 2.1 and 2.1 SP1 and is typically available here after installation: C:\\Program Files\\Microsoft User Experience Virtualization\\Templates\\VdiState.xml

### Prerequisites for UE-V Generator support

Install the UE-V Generator on the computer that is used to create custom settings location templates. This computer should be able to run the applications whose settings are synchronized. You must be a member of the Administrators group on the computer that runs the UE-V Generator software.

The UE-V Generator must be installed on a computer that uses an NTFS file system. The UE-V Generator software requires .NET Framework 4. For more information, see [Deploy UE-V 2.x for Custom Applications](deploy-ue-v-2x-for-custom-applications-new-uevv2.md).

## Other resources for this product


-   [Microsoft User Experience Virtualization (UE-V) 2.x](index.md)

-   [Get Started with UE-V 2.x](get-started-with-ue-v-2x-new-uevv2.md)

-   [Administering UE-V 2.x](administering-ue-v-2x-new-uevv2.md)

-   [Troubleshooting UE-V 2.x](troubleshooting-ue-v-2x-both-uevv2.md)

-   [Technical Reference for UE-V 2.x](technical-reference-for-ue-v-2x-both-uevv2.md)














