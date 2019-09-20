---
title: Microsoft User Experience Virtualization (UE-V) 2.x
description: Microsoft User Experience Virtualization (UE-V) 2.x
author: dansimp
ms.assetid: b860fed0-b846-415d-bdd6-ba60231a64be
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
---


# Microsoft User Experience Virtualization (UE-V) 2.x

>[!NOTE]
>This documentation is a for version of UE-V that was included in the Microsoft Desktop Optimization Pack (MDOP). For information about the latest version of UE-V which is included in Windows 10 Enterprise, see [Get Started with UE-V](https://docs.microsoft.com/windows/configuration/ue-v/uev-getting-started).


Capture and centralize your users’ application settings and Windows OS settings by implementing Microsoft User Experience Virtualization (UE-V) 2.0 or 2.1. Then, apply these settings to the devices users access in your enterprise, like desktop computers, laptops, or virtual desktop infrastructure (VDI) sessions.

**With UE-V you can…**

-   Specify which application and desktop settings synchronize

-   Deliver the settings anytime and anywhere users work throughout the enterprise

-   Create custom templates for your third-party or line-of-business applications

-   Recover settings after hardware replacement or upgrade, or after reimaging a virtual machine to its initial state

## Components of UE-V 2.x


This diagram shows how deployed UE-V components work together to synchronize settings.

![uev2 architectural diagram](images/uev2archdiagram.gif)

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Component</th>
<th align="left">Function</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>UE-V Agent</strong></p></td>
<td align="left"><p>Installed on every computer that needs to synchronize settings, the <strong>UE-V Agent</strong> monitors registered applications and the operating system for any settings changes, then synchronizes those settings between computers.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Settings packages</strong></p></td>
<td align="left"><p>Application settings and Windows settings are stored in <strong>settings packages</strong> created by the UE-V Agent. Settings packages are built, locally stored, and copied to the settings storage location.</p>
<ul>
<li><p>The setting values for <strong>desktop applications</strong> are stored when the user closes the application.</p></li>
<li><p>Values for <strong>Windows settings</strong> are stored when the user logs off, when the computer is locked, or when the user disconnects remotely from a computer.</p></li>
</ul>
<p>The sync provider determines when the application or operating system settings are read from the <strong>Settings Packages</strong> and synchronized.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Settings storage location</strong></p></td>
<td align="left"><p>This is a standard network share that your users can access. The UE-V Agent verifies the location and creates a hidden system folder in which to store and retrieve user settings.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Settings location templates</strong></p></td>
<td align="left"><p>UE-V uses XML files as settings location templates to monitor and synchronize desktop application settings and Windows desktop settings between user computers. By default, some settings location templates are included in UE-V . You can also create, edit, or validate custom settings location templates by <a href="#customapps" data-raw-source="[managing settings synchronization for custom applications](#customapps)">managing settings synchronization for custom applications</a>.</p>
<div class="alert">
<strong>Note</strong><br/><p>Settings location templates are not required for Windows apps.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Windows app list</strong></p></td>
<td align="left"><p>Settings for Windows apps are captured and applied dynamically. The app developer specifies the settings that are synchronized for each app. UE-V determines which Windows apps are enabled for settings synchronization using a managed list of apps. By default, this list includes most Windows apps.</p>
<p>You can add or remove applications in the Windows app list by following the procedures shown <a href="https://technet.microsoft.com/library/dn458925.aspx" data-raw-source="[here](https://technet.microsoft.com/library/dn458925.aspx)">here</a>.</p></td>
</tr>
</tbody>
</table>



### <a href="" id="customapps"></a>Managing Settings Synchronization for Custom Applications

Use these UE-V components to create and manage custom templates for your third-party or line-of-business applications.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>UE-V Generator</strong></p></td>
<td align="left"><p>Use the <strong>UE-V Generator</strong> to create custom settings location templates that you can then distribute to user computers. The UE-V Generator also lets you edit an existing template or validate a template that was created by using another XML editor.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Settings template catalog</strong></p></td>
<td align="left"><p>The <strong>settings template catalog</strong> is a folder path on UE-V computers or a Server Message Block (SMB) network share that stores the custom settings location templates. The UE-V Agent checks this location once a day, retrieves new or updated templates, and updates its synchronization behavior.</p>
<p>If you use only the UE-V default settings location templates, then a settings template catalog is unnecessary. For more information about settings deployment catalogs, see <a href="https://technet.microsoft.com/library/dn458942.aspx#deploycatalogue" data-raw-source="[Configure a UE-V settings template catalog](https://technet.microsoft.com/library/dn458942.aspx#deploycatalogue)">Configure a UE-V settings template catalog</a>.</p></td>
</tr>
</tbody>
</table>



![ue-v generator process](images/ue-vgeneratorprocess.gif)

## Settings Synchronized by Default


UE-V synchronizes settings for these applications by default. For a complete list and more detailed information, see [Settings that are automatically synchronized in a UE-V deployment](https://technet.microsoft.com/library/dn458932.aspx#autosyncsettings).

Microsoft Office 2013 applications (UE-V 2.1 SP1 and 2.1)

Microsoft Office 2010 applications (UE-V 2.1 SP1, 2.1, and 2.0)

Microsoft Office 2007 applications (UE-V 2.0 only)

Internet Explorer 8, 9, and 10

Internet Explorer 11 in UE-V 2.1 SP1 and 2.1

Many Windows applications, such as Xbox

Many Windows desktop applications, such as Notepad

Many Windows settings, such as desktop background or wallpaper

**Note**  
You can also [customize UE-V to synchronize settings](https://technet.microsoft.com/library/dn458942.aspx) for applications other than those synchronized by default.



## Compare UE-V to other Microsoft products


Use this table to compare UE-V to Synchronize Profiles in Windows 7, Synchronize Profiles in Windows 8, and the Sync PC Settings feature of Microsoft account.

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="left">Synchronize Profiles using Windows 7</th>
<th align="left">Synchronize Profiles using Windows 8</th>
<th align="left">Synchronize Profiles using Windows 10</th>
<th align="left">Microsoft account</th>
<th align="left">UE-V 2.0</th>
<th align="left">UE-V 2.1 and 2.1 SP1</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Synchronize settings between multiple computers</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
</tr>
<tr class="even">
<td align="left"><p>Synchronize settings between physical and virtual apps</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Synchronize Windows app settings</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
</tr>
<tr class="even">
<td align="left"><p>Manage via WMI</p></td>
<td align="left"><p></p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p></p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Synchronize settings changes on a regular basis</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
</tr>
<tr class="even">
<td align="left"><p>Minimal configuration for Setup</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Supported on non-domain joined computers</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>●</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Supports Primary Computer Active Directory attribute</p></td>
<td align="left"><p></p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Synchronizes settings between virtual desktop infrastructure (VDI)/Remote Desktop Services (RDS) and rich desktops</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
</tr>
<tr class="even">
<td align="left"><p>Unlimited setting storage space</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
<td align="left"><p></p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Choice in which app settings to synchronize</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>●</p></td>
</tr>
<tr class="even">
<td align="left"><p>Backup/Restore for IT Pro</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>●</p></td>
<td align="left"><p>Partial</p></td>
<td align="left"><p>●</p></td>
</tr>
</tbody>
</table>



## UE-V 2.x Release Notes


For more information, and for late-breaking news that did not make it into the documentation, see

-   [Microsoft User Experience Virtualization (UE-V) 2.1 SP1 Release Notes](microsoft-user-experience-virtualization--ue-v--21-sp1-release-notes.md)

-   [Microsoft User Experience Virtualization (UE-V) 2.1 Release Notes](microsoft-user-experience-virtualization--ue-v--21-release-notesuevv21.md)

-   [Microsoft User Experience Virtualization (UE-V) 2.0 Release Notes](microsoft-user-experience-virtualization--ue-v--20-release-notesuevv2.md)

## Other resources for this product


-   [Get Started with UE-V 2.x](get-started-with-ue-v-2x-new-uevv2.md)

-   [Prepare a UE-V 2.x Deployment](prepare-a-ue-v-2x-deployment-new-uevv2.md)

-   [Administering UE-V 2.x](administering-ue-v-2x-new-uevv2.md)

-   [Troubleshooting UE-V 2.x](troubleshooting-ue-v-2x-both-uevv2.md)

-   [Technical Reference for UE-V 2.x](technical-reference-for-ue-v-2x-both-uevv2.md)

### More information

<a href="" id="mdop-techcenter-page"></a>[MDOP TechCenter Page](https://go.microsoft.com/fwlink/p/?LinkId=225286)
Learn about the latest MDOP information and resources.

<a href="" id="mdop-information-experience"></a>[MDOP Information Experience](https://go.microsoft.com/fwlink/p/?LinkId=236032)
Find documentation, videos, and other resources for MDOP technologies. You can also [send us feedback](mailto:MDOPDocs@microsoft.com) or learn about updates by following us on [Facebook](https://go.microsoft.com/fwlink/p/?LinkId=242445) or [Twitter](https://go.microsoft.com/fwlink/p/?LinkId=242447).














