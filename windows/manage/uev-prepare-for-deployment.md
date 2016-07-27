---
title: Prepare a UE-V Deployment
description: Prepare a UE-V Deployment
author: jamiejdt
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---

# Prepare a UE-V Deployment

Applies to: Windows 10, version 1607

Before you deploy User Experience Virtualization (UE-V), review this topic for important information about the type of deployment you’re planning and for preparations you can make beforehand so that your deployment is successful.

First, review these tasks that you’ll need to do to deploy UE-V:

-   [Plan your UE-V deployment](#planning)

> Before you deploy any UE-V components, review this topic to help you determine which UE-V features to deploy. If you leave this page, be sure to come back and read through the planning information below.

-   [Deploy required features for UE-V](uev-deploy-required-features.md)

> Every UE-V deployment requires these activities:

-   [Define a settings storage location](uev-deploy-required-features.md#ssl)

-   [Decide how to manage UE-V configurations](#config)

-   [Enable the UE-V](uev-deploy-required-features.md#agent) service on user computers

<!-- WATCH the preceding link, specifically the anchor-bookmark part. -->

-   Optionally, you can [Deploy UE-V for custom applications](uev-deploy-uev-for-custom-applications.md)

    Review this topic to determine whether you want UE-V to support the synchronization of settings for custom applications (third-party or line-of-business), which requires these UE-V features:

    -   [Install the UE-V template generator](uev-deploy-uev-for-custom-applications.md#uevgen) so you can create, edit, and validate the custom settings location templates required to synchronize custom application settings

    -   [Create custom settings location templates](uev-deploy-uev-for-custom-applications.md#createcustomtemplates) by using the UE-V generator

    -   [Deploy a UE-V settings template catalog](uev-deploy-uev-for-custom-applications.md#deploycatalogue) to store your custom settings location templates

The workflow diagram below illustrates a typical UE-V deployment and the decisions you need to be prepared to make.

![UE-V deployment preparation](images/uev-deployment-preparation.png)

<!-- PRESERVING ^ORIGINAL IMAGE CODING JUST IN CASE
<img src="media/image1.png" width="446" height="362" />
-->

**Planning a UE-V deployment:** Review the following topics to determine which UE-V components you’ll be deploying.

-   [Decide whether to synchronize settings for custom applications](#decide-whether-to-synchronize-settings-for-custom-applications)

    If you want to synchronize settings for custom applications, you’ll need to install the UE-V generator during deployment. Use the generator to create custom settings location templates, which involves the following tasks:

    -   Review the [settings that are synchronized automatically in a UE-V deployment](#settings-automatically-synchronized-in-a-ue-v-deployment).

    -   [Determine whether you need settings synchronized for other applications](#determine-whether-you-need-settings-synchronized-for-other-applications).

-   Review [other considerations for deploying UE-V](#other-considerations-when-preparing-a-ue-v-deployment), including high availability and capacity planning.

-   [Confirm prerequisites and supported configurations for UE-V](#confirm-prerequisites-and-supported-configurations-for-ue-v)

## Decide whether to synchronize settings for custom applications

In a UE-V deployment, many settings are automatically synchronized. You can also customize UE-V to synchronize settings for other applications, such as line-of-business and third-party apps.

Deciding if you want UE-V to synchronize settings for custom applications is probably the most important part of planning your UE-V deployment. The topics in this section will help you make that decision.

### Settings automatically synchronized in a UE-V deployment

This section explains which settings are synchronized by default in UE-V, including:

-   Desktop applications that are synchronized by default

-   Windows desktop settings that are synchronized by default

-   A statement of support for Windows applications setting synchronization

To download a complete list of the specific Microsoft Office 2013, Microsoft Office 2010, and Microsoft Office 2007 settings that are synchronized by UE-V, use the following links:

-   [User Experience Virtualization (UE-V) settings templates for Microsoft Office](https://www.microsoft.com/download/details.aspx?id=46367)

-   [Microsoft Authored Office 2016 UE-V Templates](https://gallery.technet.microsoft.com/Authored-Office-2016-32-0dc05cd8)

### Desktop applications synchronized by default in UE-V

When you enable the UE-V for Windows service, it registers a default group of settings location templates that capture settings values for these common Microsoft applications.

<!-- TOMMY WILL BE COMMENTING ON THE FOLLOWING. IT IS AT LEAST PARTLY ABOUT OLDER VERSIONS. FOR UPDATED LINKS, LOOK JUST ABOVE THIS SECTION.
**Tip**
**Microsoft Office 2007 Settings Synchronization** – In UE-V 2.1 and 2.1 SP1, a settings location template is no longer included by default for Office 2007 applications. However, you can still use Office 2007 templates from UE-V 2.0 or earlier and can get the templates from the [UE-V template gallery](http://go.microsoft.com/fwlink/p/?LinkID=246589).
-->


| **Application category**    | **Description**   |
|-----------------------------|-------------------|
| Microsoft Office 2010 applications<br>([Download a list of all settings synced](https://www.microsoft.com/download/details.aspx?id=46367)) | Microsoft Word 2010<br>Microsoft Excel 2010<br>Microsoft Outlook 2010<br>Microsoft Access 2010<br>Microsoft Project 2010<br>Microsoft PowerPoint 2010<br>Microsoft Publisher 2010<br>Microsoft Visio 2010<br>Microsoft SharePoint Workspace 2010<br>Microsoft InfoPath 2010<br>Microsoft Lync 2010<br>Microsoft OneNote 2010<br>Microsoft SharePoint Designer 2010  |
| Microsoft Office 2013 applications<br>([Download a list of all settings synced](https://www.microsoft.com/download/details.aspx?id=46367)) | Microsoft Word 2013<br>Microsoft Excel 2013<br>Microsoft Outlook 2013<br>Microsoft Access 2013<br>Microsoft Project 2013<br>Microsoft PowerPoint 2013<br>Microsoft Publisher 2013<br>Microsoft Visio 2013<br>Microsoft InfoPath 2013<br>Microsoft Lync 2013<br>Microsoft OneNote 2013<br>Microsoft SharePoint Designer 2013<br>Microsoft Office 2013 Upload Center<br>Microsoft OneDrive for Business 2013<br>The UE-V 2.1 and 2.1 SP1 Microsoft Office 2013 settings location templates include improved Outlook signature support. We’ve added synchronization of default signature settings for new, reply, and forwarded emails.<br>**Note**<br>An Outlook profile must be created for any device on which a user wants to sync their Outlook signature. If the profile is not already created, the user can create one and then restart Outlook on that device to enable signature synchronization. |
| Browser options: Internet Explorer 8, Internet Explorer 9, Internet Explorer 10, and Internet Explorer 11  | Favorites, home page, tabs, and toolbars.<br>**Note**<br>UE-V does not roam settings for Internet Explorer cookies. |
| Windows accessories | Microsoft Calculator, Notepad, WordPad. |

**Note**
UE-V does not synchronize settings between the Microsoft Calculator in Windows 10 and the Microsoft Calculator in previous operating systems.

### Desktop applications synchronized by default in UE-V 2.0

When you enable the UE-V 2.0 service, it registers a default group of settings location templates that capture settings values for these common Microsoft applications.

**Tip**
**Microsoft Office 2013 Settings Synchronization** – In UE-V 2.0, a settings location template is not included by default for Office 2013 applications, but is available for download from the [UE-V template gallery](http://go.microsoft.com/fwlink/p/?LinkID=246589). [Synchronizing Office 2013 with UE-V 2.0](https://technet.microsoft.com/en-us/itpro/mdop/uev-v2/synchronizing-office-2013-with-ue-v-20-both-uevv2) provides details about the supported templates that synchronize Office 2013 settings.

| **Application category**  | **Description** |
|-----------------------------|-------------------|
| Microsoft Office 2007 applications<br>([Download a list of all settings synced](https://www.microsoft.com/download/details.aspx?id=46367)) | Microsoft Access 2007<br>Microsoft Communicator 2007<br>Microsoft Excel 2007<br>Microsoft InfoPath 2007<br>Microsoft OneNote 2007<br>Microsoft Outlook 2007<br>Microsoft PowerPoint 2007<br>Microsoft Project 2007<br>Microsoft Publisher 2007<br>Microsoft SharePoint Designer 2007<br>Microsoft Visio 2007<br>Microsoft Word 2007 |
| Microsoft Office 2010 applications<br>([Download a list of all settings synced](https://www.microsoft.com/download/details.aspx?id=46367)) | Microsoft Word 2010<br>Microsoft Excel 2010<br>Microsoft Outlook 2010<br>Microsoft Access 2010<br>Microsoft Project 2010<br>Microsoft PowerPoint 2010<br>Microsoft Publisher 2010<br>Microsoft Visio 2010<br>Microsoft SharePoint Workspace 2010<br>Microsoft InfoPath 2010<br>Microsoft Lync 2010<br>Microsoft OneNote 2010<br>Microsoft SharePoint Designer 2010 |
| Browser options: Internet Explorer 8, Internet Explorer 9, and Internet Explorer 10 | Favorites, home page, tabs, and toolbars.<br>**Note**<br>UE-V does not roam settings for Internet Explorer cookies. |
| Windows accessories | Microsoft Calculator, Notepad, WordPad. |

### Windows settings synchronized by default

UE-V includes settings location templates that capture settings values for these Windows settings.

| **Windows settings** | **Description** | **Apply on** | **Export on** | **Default state** |
|----------------------|-----------------|--------------|---------------|-------------------|
| Desktop background   | Currently active desktop background or wallpaper. | Logon, unlock, remote connect, Scheduled Task events. | Logoff, lock, remote disconnect, user clicking **Sync Now** in Company Settings Center, or scheduled task interval | Enabled           |
| Ease of Access       | Accessibility and input settings, Microsoft Magnifier, Narrator, and on-Screen Keyboard. | Logon only. | Logoff, user clicking **Sync Now** in Company Settings Center, or scheduled task interval | Enabled           |
| Desktop settings     | Start menu and Taskbar settings, Folder options, Default desktop icons, Additional clocks, and Region and Language settings. | Logon only.  | Logoff, user clicking **Sync Now** in Company Settings Center, or scheduled task | Enabled           |

**Note**
Starting in Windows 8, UE-V does not roam settings related to the Start screen, such as items and locations. In addition, UE-V does not support synchronization of pinned taskbar items or Windows file shortcuts.

**Important**
UE-V roams taskbar settings between Windows 10 devices. However, UE-V does not synchronize taskbar settings between Windows 10 devices and devices running previous operating systems versions.

| **Settings group**       | **Category**   | **Capture**    | **Apply**    |
|--------------------------|----------------|----------------|--------------|
| **Application Settings** | Windows applications   | Close app<br>Windows app settings change event | Start the UE-V App Monitor at startup<br>Open app<br>Windows App Settings change event<br>Arrival of a settings package     |
|           | Desktop applications   | Application closes | Application opens and closes        |
| **Desktop settings**     | Desktop background     | Lock or logoff | Logon, unlock, remote connect, notification of new package arrival, user clicks **Sync Now** in Company Settings Center, or scheduled task runs. |
|           | Ease of Access (Common – Accessibility, Narrator, Magnifier, On-Screen-Keyboard) | Lock or Logoff | Logon        |
|           | Ease of Access (Shell - Audio, Accessibility, Keyboard, Mouse)    | Lock or logoff | Logon, unlock, remote connect, notification of new package arrival, user clicks **Sync Now** in Company Settings Center, or scheduled task runs  |
|           | Desktop settings       | Lock or logoff | Logon        |

### UE-V-support for Windows applications

For Windows applications, the application developer specifies the settings that are synchronized. You can specify which Windows apps are enabled for settings synchronization.

To display a list of Windows applications that can synchronize settings with their package family name, enabled status, and enabled source, at a Windows PowerShell command prompt, enter: Get-UevAppxPackage

**Note**
As of Windows 8, UE-V does not synchronize Windows app settings if the domain user links their sign-in credentials to their Microsoft Account. This linking synchronizes settings to Microsoft OneDrive so UE-V, which disables synchronization of Windows app settings.

### UE-V-support for roaming printers

Users can print to their saved network printers, including their default network printer, from any network device.

Printer roaming in UE-V requires one of these scenarios:

-   The print server can download the required driver when it roams to a new device.

-   The driver for the roaming network printer is pre-installed on any device that needs to access that network printer.

-   The printer driver can be imported from Windows Update.

**Note**
The UE-V printer roaming feature does not roam printer settings or preferences, such as printing double-sided.

### Determine whether you need settings synchronized for other applications

After you have reviewed the settings that are synchronized automatically in a UE-V deployment, you’ll need to decide whether to synchronize settings for other applications as your decision will determine how you deploy UE-V throughout your enterprise.

As an administrator, when you consider which desktop applications to include in your UE-V solution, consider which settings can be customized by users, and how and where the application stores its settings. Not all desktop applications have settings that can be customized or that are routinely customized by users. In addition, not all desktop applications settings can safely be synchronized across multiple computers or environments.

In general, you can synchronize settings that meet the following criteria:

-   Settings that are stored in user-accessible locations. For example, do not synchronize settings that are stored in System32 or outside the HKEY\_CURRENT\_USER (HKCU) section of the registry.

-   Settings that are not specific to the particular computer. For example, exclude network or hardware configurations.

-   Settings that can be synchronized between computers without risk of corrupted data. For example, do not use settings that are stored in a database file.

### Checklist for evaluating custom applications

If you’ve decided that you need to synchronize settings for other applications, can use this checklist to determine which applications you’ll include.

|       | **Description**          |
|-------|--------------------------|
| ![Checklist box](images/uev-checklist-box.gif) | Does this application contain settings that the user can customize? |
| ![Checklist box](images/uev-checklist-box.gif) | Is it important for the user that these settings are synchronized?  |
| ![Checklist box](images/uev-checklist-box.gif) | Are these user settings already managed by an application management or settings policy solution? UE-V applies application settings at application startup and Windows settings at logon, unlock, or remote connect events. If you use UE-V with other settings sharing solutions, users might experience inconsistency across synchronized settings.  |
| ![Checklist box](images/uev-checklist-box.gif) | Are the application settings specific to the computer? Application preferences and customizations that are associated with hardware or specific computer configurations do not consistently synchronize across sessions and can cause a poor application experience. |
| ![Checklist box](images/uev-checklist-box.gif) | Does the application store settings in the Program Files directory or in the file directory that is located in the **Users**\[User name\]&lt;strong&gt;AppData&lt;strong&gt;LocalLow directory? Application data that is stored in either of these locations usually should not synchronize with the user, because this data is specific to the computer or because the data is too large to synchronize. |
| ![Checklist box](images/uev-checklist-box.gif) | Does the application store any settings in a file that contains other application data that should not synchronize? UE-V synchronizes files as a single unit. If settings are stored in files that include application data other than settings, then synchronizing this additional data can cause a poor application experience. |
| ![Checklist box](images/uev-checklist-box.gif) | How large are the files that contain the settings? The performance of the settings synchronization can be affected by large files. Including large files can affect the performance of settings synchronization. |

## Other considerations when preparing a UE-V deployment

You should also consider these things when you are preparing to deploy UE-V:

-   [Managing credentials synchronization](#managing-credentials-synchronization-in-ue-v)

-   [Windows applications settings synchronization](#windows-applications-settings-synchronization)

-   [Custom UE-V settings location templates](#custom-ue-v-settings-location-templates)

-   [Unintentional user settings configurations](#prevent-unintentional-user-settings-configuration)

-   [Performance and capacity](#performance-and-capacity-planning)

-   [High availability](#high-availability-for-ue-v)

-   [Computer clock synchronization](#synchronize-computer-clocks-for-ue-v-settings-synchronization)

### Managing credentials synchronization in UE-V 

Many enterprise applications, including Microsoft Outlook and Lync, prompt users for their domain credentials when they log in. Users have the option of saving their credentials to disk to prevent having to enter them every time they open these applications. Enabling roaming credentials synchronization lets users save their credentials on one computer and avoid re-entering them on every computer they use in their environment. Users can synchronize some domain credentials with UE-V.

**Important**
Credentials synchronization is disabled by default. You must explicitly enable credentials synchronization during deployment to implement this feature.

UE-V can synchronize enterprise credentials, but does not roam credentials intended only for use on the local computer.

Credentials are synchronous settings, meaning that they are applied to your profile the first time you log in to your computer after UE-V synchronizes.

Credentials synchronization is managed by its own settings location template, which is disabled by default. You can enable or disable this template through the same methods used for other templates. The template identifier for this feature is RoamingCredentialSettings.

**Important**
If you are using Active Directory Credential Roaming in your environment, we recommend that you do not enable the UE-V credential roaming template.

Use one of these methods to enable credentials synchronization:

-   PowerShell

-   Group Policy

**Note**
Credentials are encrypted during synchronization.

[PowerShell](uev-administering-uev-with-windows-powershell-and-wmi.md)**:** Enter this PowerShell cmdlet to enable credential synchronization:

`Enable-UevTemplate RoamingCredentialSettings`

`Copy`

Use this PowerShell cmdlet to disable credential synchronization:

`Disable-UevTemplate RoamingCredentialSettings`

`Copy`

<!-- WATCH THE MDOP ADMX templates LINK IN THE NEXT PARAGRAPH. IS IT CURRENT? -->

[Group Policy](uev-configuring-uev-with-group-policy-objects.md)**:** You must [deploy the latest MDOP ADMX template](https://technet.microsoft.com/itpro/mdop/solutions/how-to-download-and-deploy-mdop-group-policy--admx--templates) to enable credential synchronization through group policy. Credentials synchronization is managed with the Windows settings. To manage this feature with Group Policy, enable the Synchronize Windows settings policy.

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

### Windows applications settings synchronization

UE-V manages Windows application settings synchronization in three ways:

-   **Sync Windows applications:** Allow or deny any Windows app synchronization

-   **Windows applications list:** Synchronize a list of Windows apps

-   **Unlisted default sync behavior:** Determine the synchronization behavior of Windows apps that are not in the Windows app list.

For more information, see the [Windows App List](uev-managing-settings-location-templates-using-windows-powershell-and-wmi.md#win8applist).

### Custom UE-V settings location templates

If you are deploying UE-V to synchronize settings for custom applications, you’ll use the UE-V template generator to create custom settings location templates for those desktop applications. After you create and test a custom settings location template in a test environment, you can deploy the settings location templates to user computers.

Custom settings location templates must be deployed with an existing deployment infrastructure, like an enterprise software distribution method such as System Center Configuration Manager, with preferences, or by configuring an UE-V settings template catalog. Templates that are deployed with Configuration Manager or Group Policy must be registered by using UE-V WMI or Windows PowerShell.

For more information about custom settings location templates, see [Deploy UE-V for custom applications](uev-deploy-uev-for-custom-applications.md). For more information about using UE-V with Configuration Manager, see [Configuring UE-V with System Center Configuration Manager 2012](uev-configuring-uev-with-system-center-configuration-manager-2012.md).

### Prevent unintentional user settings configuration

UE-V downloads new user settings information from a settings storage location and applies the settings to the local computer in these instances:

-   Every time an application is started that has a registered UE-V template.

-   When a user logs on to a computer.

-   When a user unlocks a computer.

-   When a connection is made to a remote desktop computer that has UE-V installed.

-   When the Sync Controller Application scheduled task is run.

If UE-V is installed on computer A and computer B, and the settings that you want for the application are on computer A, then computer A should open and close the application first. If the application is opened and closed on computer B first, then the application settings on computer A are configured to the application settings on computer B. Settings are synchronized between computers on per-application basis. Over time, settings become consistent between computers as they are opened and closed with preferred settings.

This scenario also applies to Windows settings. If the Windows settings on computer B should be the same as the Windows settings on computer A, then the user should log on and log off computer A first.

If the user settings that the user wants are applied in the wrong order, they can be recovered by performing a restore operation for the specific application or Windows configuration on the computer on which the settings were overwritten. For more information, see [Manage Administrative Backup and Restore in UE-V](uev-manage-administrative-backup-and-restore.md).

### Performance and capacity planning

Specify your requirements for UE-V with standard disk capacity and network health monitoring.

UE-V uses a Server Message Block (SMB) share for the storage of settings packages. The size of settings packages varies depending on the settings information for each application. While most settings packages are small, the synchronization of potentially large files, such as desktop images, can result in poor performance, particularly on slower networks.

To reduce problems with network latency, create settings storage locations on the same local networks where the users’ computers reside. We recommend 20 MB of disk space per user for the settings storage location.

By default, UE-V synchronization times out after 2 seconds to prevent excessive lag due to a large settings package. You can configure the SyncMethod=SyncProvider setting by using [Group Policy Objects](uev-configuring-uev-with-group-policy-objects.md).

### High Availability for UE-V

The UE-V settings storage location and settings template catalog support storing user data on any writable share. To ensure high availability, follow these criteria:

-   Format the storage volume with an NTFS file system.

<!-- There's a question out for Tommy on the next item -- the link is very old. -->

-   The share can use Distributed File System (DFS) replication, but Distributed File System Replication (DFSR) is specifically not supported. Distributed File System Namespaces (DFSN) are supported. For detailed information, see [Microsoft’s Support Statement Around Replicated User Profile Data](http://go.microsoft.com/fwlink/p/?LinkId=313991).

    In addition, because SYSVOL uses DFSR for replication, SYSVOL cannot be used for UE-V data file replication.

-   Configure the share permissions and NTFS access control lists (ACLs) as specified in [Deploying the Settings Storage Location for UE-V](uev-deploy-required-features.md#ssl).

-   Use file server clustering along with the UE-V service to provide access to copies of user state data in the event of communications failures.

-   You can store the settings storage path data (user data) and settings template catalog templates on clustered shares, on DFSN shares, or on both.

### Synchronize computer clocks for UE-V settings synchronization

Computers that run the UE-V service must use a time server to maintain a consistent settings experience. UE-V uses time stamps to determine if settings must be synchronized from the settings storage location. If the computer clock is inaccurate, older settings can overwrite newer settings, or the new settings might not be saved to the settings storage location.

## Confirm prerequisites and supported configurations for UE-V

Before you proceed, ensure that your environment includes these requirements for running UE-V.

| **Operating system**     | **Edition**   | **Service pack** | **System architecture** | **Windows PowerShell**   | **Microsoft .NET Framework**   |
|--------------------------|---------------|------------------|-------------------------|--------------------------|--------------------------------|
| Windows 7 | Ultimate, Enterprise, or Professional Edition   | SP1  | 32-bit or 64-bit        | Windows PowerShell 3.0 or higher | .NET Framework 4.5 or higher for UE-V 2.1.<br>.NET Framework 4 or higher for UE-V 2.0. |
| Windows Server 2008 R2   | Standard, Enterprise, Datacenter, or Web Server | SP1  | 64-bit   | Windows PowerShell 3.0 or higher | .NET Framework 4.5 or higher for UE-V 2.1.<br>.NET Framework 4 or higher for UE-V 2.0. |
| Windows 8 and Windows 8.1         | Enterprise or Pro | None | 32-bit or 64-bit        | Windows PowerShell 3.0 or higher | .NET Framework 4.5 or higher   |
| Windows 10<br>**Note**<br>Only UE-V 2.1 SP1 supports Windows 10 | Enterprise or Pro | None | 32-bit or 64-bit        | Windows PowerShell 3.0 or higher | .NET Framework 4.6 |
| Windows Server 2012 and Windows Server 2012 R2       | Standard or Datacenter           | None | 64-bit   | Windows PowerShell 3.0 or higher | .NET Framework 4.5 or higher   |

Also…

-   **MDOP License:** This technology is a part of the Microsoft Desktop Optimization Pack (MDOP). Enterprise customers can get MDOP with Microsoft Software Assurance. 

<!-- THE FOLLOWING LINK SHOULD NOT BE USED - IT HAS PROBLEMS
For more information about Microsoft Software Assurance and acquiring MDOP, see How Do I Get MDOP (<http://go.microsoft.com/fwlink/p/?LinkId=322049>). 
-->

-   **Administrative Credentials** for any computer on which you’ll be installing

<!-- QUESTIONS ARE OUT TO TOMMY ABOUT THE FOLLOWING - IT APPEARS OUTDATED, SINCE WINDOWS POWERSHELL AND .NET ARE PART OF THE O.S 
**Note**

-   The UE-V Windows PowerShell feature of the UE-V service requires .NET Framework 4 or higher and Windows PowerShell 3.0 or higher to be enabled. Download Windows PowerShell 3.0 [here](http://go.microsoft.com/fwlink/?LinkId=309609).

-   Install .NET Framework 4 or .NET Framework 4.5 on computers that run the Windows 7 or the Windows Server 2008 R2 operating system. The Windows 8, Windows 8.1, and Windows Server 2012 operating systems come with .NET Framework 4.5 installed. The Windows 10 operating system comes with .NET Framework 4.6 installed.
-->

-   The “Delete Roaming Cache” policy for Mandatory profiles is not supported with UE-V and should not be used.

There are no special random access memory (RAM) requirements specific to UE-V.

### Synchronization of settings through the Sync Provider

Sync Provider is the default setting for users, which synchronizes a local cache with the settings storage location in these instances:

-   Logon/logoff

-   Lock/unlock

-   Remote desktop connect/disconnect

-   Application open/close

A scheduled task manages this synchronization of settings every 30 minutes or through certain trigger events for certain applications. For more information, see [Changing the frequency of UE-V scheduled tasks](uev-changing-the-frequency-of-scheduled-tasks.md).

The UE-V service synchronizes user settings for computers that are not always connected to the enterprise network (remote computers and laptops) and computers that are always connected to the network (computers that run Windows Server and host virtual desktop interface (VDI) sessions).

**Synchronization for computers with always-available connections:** When you use UE-V on computers that are always connected to the network, you must configure the UE-V service to synchronize settings by using the *SyncMethod=None* parameter, which treats the settings storage server as a standard network share. In this configuration, the UE-V service can be configured to notify if the import of the application settings is delayed.

Enable this configuration using one of these methods:

<!-- THE FOLLOWING NEEDS TO BE UPDATED WHEN TOMMY PROVIDES FEEDBACK ABOUT WHAT IT SHOULD SAY - THEN THE LINK CAN BE UPDATED ALSO.
-   During UE-V installation, at the command prompt or in a batch file, set the AgentSetup.exe parameter *SyncMethod = None*. See [Deploying the UE-V Agent](https://technet.microsoft.com/library/dn458891.aspx#agent) for more information.
-->

-   After the UE-V installation, use the Settings Management feature in System Center 2012 Configuration Manager or the MDOP ADMX templates to push the *SyncMethod = None* configuration.

-   Use Windows PowerShell or Windows Management Instrumentation (WMI) to set the *SyncMethod = None* configuration.

**Note**
These last two methods do not work for pooled virtual desktop infrastructure (VDI) environments.

You must restart the computer before the settings start to synchronize.

**Note**
If you set *SyncMethod = None*, any settings changes are saved directly to the server. If the network connection to the settings storage path is not found, then the settings changes are cached on the device and are synchronized the next time that the sync provider runs. If the settings storage path is not found and the user profile is removed from a pooled VDI environment on logoff, settings changes are lost and the user must reapply the change when the computer is reconnected to the settings storage path.

**Synchronization for external sync engines:** The *SyncMethod=External* parameter specifies that if UE-V settings are written to a local folder on the user computer, then any external sync engine (such as OneDrive for Business, Work Folders, Sharepoint, or Dropbox) can be used to apply these settings to the different computers that users access.

**Support for shared VDI sessions:** UE-V supports VDI sessions that are shared among end users. You can register and configure a special VDI template, which ensures that UE-V keeps all of its functionality intact for non-persistent VDI sessions.

**Note**
If you do not enable VDI mode for non-persistent VDI sessions, certain features do not work, such as [back-up/restore and last known good (LKG)](uev-manage-administrative-backup-and-restore.md).

The VDI template is provided with UE-V and is typically available here after installation: C:\\Program Files\\Microsoft User Experience Virtualization\\Templates\\VdiState.xml

### Prerequisites for UE-V generator support

Install the UE-V generator on the computer that is used to create custom settings location templates. This computer should be able to run the applications whose settings are synchronized. You must be a member of the Administrators group on the computer that runs the UE-V generator software.

The UE-V generator must be installed on a computer that uses an NTFS file system. The UE-V generator software requires .NET Framework 4. For more information, see [Deploy UE-V for custom applications](uev-deploy-uev-for-custom-applications.md).

## Other resources for this product

-   [User Experience Virtualization](uev-for-windows.md)

-   [Get started with UE-V](uev-getting-started.md)

-   [Administering UE-V ](uev-administering-uev.md)

-   [Troubleshooting UE-V ](uev-troubleshooting.md)

-   [Technical Reference for UE-V](uev-technical-reference.md)
