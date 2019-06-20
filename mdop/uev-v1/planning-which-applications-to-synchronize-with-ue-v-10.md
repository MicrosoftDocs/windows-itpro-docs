---
title: Planning Which Applications to Synchronize with UE-V 1.0
description: Planning Which Applications to Synchronize with UE-V 1.0
author: levinec
ms.assetid: c718274f-87b4-47f3-8ef7-5e1bd5557a9d
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Planning Which Applications to Synchronize with UE-V 1.0


Microsoft User Experience Virtualization (UE-V) uses settings location templates (XML files) that define the settings that are captured and applied by UE-V. UE-V includes a set of predefined settings location templates and also allows administrators to create custom settings location templates for third-party or line-of-business applications that are used in the enterprise.

As an administrator, when you consider which applications to include in your UE-V solution, consider which settings can be customized by users, and how and where the application stores its settings. Not all applications have settings that can be customized or that are routinely customized by users. In addition, not all applications settings can safely roam across multiple computers or environments. Synchronize settings that meet the following criteria:

-   Settings that are stored in user-accessible locations. For example, do not synchronize settings that are stored in system32 or outside HKCU section of the registry.

-   Settings that are not specific to the particular computer. For example, exclude network or hardware configurations.

-   Settings that can be synchronized between computers without risk of corrupted data. For example, do not use settings that are stored in a database file.

## Settings location templates that are included in UE-V


**UE-V application settings location templates**

The UE-V agent installation software installs the agent and registers a default group of settings location templates for common Microsoft applications. These settings location templates capture settings values for the following applications:

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
<td align="left"><p>Microsoft Office 2010 applications</p></td>
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
<p>Microsoft OneNote 2010</p></td>
</tr>
<tr class="even">
<td align="left"><p>Browser options (Internet Explorer 8, Internet Explorer 9, and Internet Explorer 10)</p></td>
<td align="left"><p>Favorites, home page, tabs, and toolbars.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows accessories</p></td>
<td align="left"><p>Calculator, Notepad, WordPad.</p></td>
</tr>
</tbody>
</table>

 

Application settings are applied to the application when the application is started. They are saved when the application closes.

**UE-V Windows settings location templates**

User Experience Virtualization includes settings location templates that capture settings values for the following Windows settings:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Windows settings</th>
<th align="left">Description</th>
<th align="left">Apply on</th>
<th align="left">Default state</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Desktop background</p></td>
<td align="left"><p>Currently active desktop background.</p></td>
<td align="left"><p>Logon, unlock, remote connect.</p></td>
<td align="left"><p>Enabled</p></td>
</tr>
<tr class="even">
<td align="left"><p>Ease of Access</p></td>
<td align="left"><p>Accessibility and input settings, magnifier, Narrator, and on-Screen keyboard.</p></td>
<td align="left"><p>Logon, unlock, remote connect.</p></td>
<td align="left"><p>Disabled</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Desktop settings</p></td>
<td align="left"><p>Start menu and Taskbar settings, Folder options, default desktop icons, additional clocks, and region and Language settings.</p></td>
<td align="left"><p>Logon only.</p></td>
<td align="left"><p>Disabled</p></td>
</tr>
</tbody>
</table>

 

The Windows desktop background and Ease of Access settings are applied when the user logs on, when the computer is unlocked, or upon remote connection to another computer. The agent saves these settings when the user logs off, when the computer is locked, or when a remote connection is disconnected. By default, Windows desktop background settings are roamed between computers of the same operating system version.

Windows desktop and Ease of Access settings are applied at logon before the desktop is presented to the user. To optimize the logon experience, these settings are not roamed by default. Desktop and Ease of Access settings can be enabled by using Group Policy, PowerShell, and WMI.

UE-V does not support the roaming of settings between operating systems with different languages. For example, synchronization between English and German is not supported. The language of all computers to which UE-V roams the user settings must match.

**Note**  
If you change the settings location templates that are provided by Microsoft, User Experience Virtualization might not work properly for the designated application or Windows settings group.

 

## <a href="" id="prevent-unintentional-user-settings-configuration-"></a>Prevent unintentional user Settings configuration


User Experience Virtualization checks for new user settings information, and downloads that information accordingly from a settings storage location. Then, it applies the settings to the local computer in the following cases:

-   Every time an application is launched that has a registered UE-V template.

-   When a user logs on to their computer.

-   When a user unlocks their computer.

-   When a connection is made to a remote desktop computer that has UE-V installed.

If UE-V is installed on computer A and computer B, and the desired settings for the application are on computer A, then computer A must open and close the application first. If an application is opened and closed on computer B first, then the application settings on computer A will be configured to be the same as the application settings on computer B.

This scenario also applies to Windows settings. If the Windows settings on computer B should be the same as the Windows settings on computer A, then the user should logon and logoff computer A first.

If the desired user settings are applied in the wrong order, they can be recovered by performing a restore operation for the specific application or Windows configuration on the computer on which the settings were overwritten. For more information, see [Restoring Application and Windows Settings Synchronized with UE-V 1.0](restoring-application-and-windows-settings-synchronized-with-ue-v-10.md).

## Custom UE-V settings location templates


You can create custom settings location templates by using the UE-V Generator. After you create and test a custom settings location template in a test environment, you can deploy the settings location templates to computers in the enterprise. Custom settings location templates must be deployed with an existing deployment infrastructure, such as enterprise software distribution (ESD) method, with preferences, or by configuring an UE-V settings template catalog. Templates that are deployed with ESD or Group Policy must be registered by using UE-V WMI or PowerShell. For more information about custom settings location templates, see [Planning for Custom Template Deployment for UE-V 1.0](planning-for-custom-template-deployment-for-ue-v-10.md).

For guidance on whether a line-of-business application should be synchronized, see [Checklist for Evaluating Line-of-Business Applications for UE-V 1.0](checklist-for-evaluating-line-of-business-applications-for-ue-v-10.md).

## Related topics


[Planning for UE-V 1.0](planning-for-ue-v-10.md)

[Planning for Custom Template Deployment for UE-V 1.0](planning-for-custom-template-deployment-for-ue-v-10.md)

[Deploying UE-V 1.0](deploying-ue-v-10.md)

 

 





