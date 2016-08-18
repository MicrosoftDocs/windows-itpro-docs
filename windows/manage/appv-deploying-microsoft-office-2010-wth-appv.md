---
title: Deploying Microsoft Office 2010 by Using App-V (Windows 10)
description: Deploying Microsoft Office 2010 by Using App-V
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Deploying Microsoft Office 2010 by Using App-V

**Applies to**
-   Windows 10, version 1607

You can create Office 2010 packages for Microsoft Application Virtualization (App-V) using one of the following methods:

-   Application Virtualization (App-V) Sequencer

-   Application Virtualization (App-V) Package Accelerator

## App-V support for Office 2010


The following table shows the App-V versions, methods of Office package creation, supported licensing, and supported deployments for Office 2010.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Supported item</th>
<th align="left">Level of support</th>
</tr>
</thead>
<tbody>
<tr class="even">
<td align="left"><p>Package creation</p></td>
<td align="left"><ul>
<li><p>Sequencing</p></li>
<li><p>Package Accelerator</p></li>
<li><p>Office Deployment Kit</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Supported licensing</p></td>
<td align="left"><p>Volume Licensing</p></td>
</tr>
<tr class="even">
<td align="left"><p>Supported deployments</p></td>
<td align="left"><ul>
<li><p>Desktop</p></li>
<li><p>Personal VDI</p></li>
<li><p>RDS</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Creating Office 2010 App-V using the sequencer


Sequencing Office 2010 is one of the main methods for creating an Office 2010 package on App-V. Microsoft has provided a detailed recipe through a Knowledge Base article. To create an Office 2010 package on App-V, refer to the following link for detailed instructions:

[How To Sequence Microsoft Office 2010 in Microsoft Application Virtualization 5.0](https://support.microsoft.com/en-us/kb/2830069)

## Creating Office 2010 App-V packages using package accelerators


Office 2010 App-V packages can be created through package accelerators. Microsoft has provided package accelerators for creating Office 2010 on Windows 10, Windows 8 and Windows 7. To create Office 2010 packages on App-V using Package accelerators, refer to the following pages to access the appropriate package accelerator:

-   [App-V 5.0 Package Accelerator for Office Professional Plus 2010 – Windows 8](https://gallery.technet.microsoft.com/App-V-50-Package-a29410db)

-   [App-V 5.0 Package Accelerator for Office Professional Plus 2010 – Windows 7](https://gallery.technet.microsoft.com/App-V-50-Package-e7ef536b)

For detailed instructions on how to create virtual application packages using App-V package accelerators, see [How to Create a Virtual Application Package Using an App-V Package Accelerator](appv-create-a-virtual-application-package-package-accelerator.md).

## Deploying the Microsoft Office package for App-V


You can deploy Office 2010 packages by using any of the following App-V deployment methods:

-   System Center Configuration Manager

-   App-V server

-   Stand-alone through Windows PowerShell commands

## Office App-V package management and customization


Office 2010 packages can be managed like any other App-V packages through known package management mechanisms. No special instructions are needed, for example, to add, publish, unpublish, or remove Office packages.

## Microsoft Office integration with Windows


The following table provides a full list of supported integration points for Office 2010.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Extension Point</th>
<th align="left">Description</th>
<th align="left">Office 2010</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Lync meeting Join Plug-in for Firefox and Chrome</p></td>
<td align="left"><p>User can join Lync meetings from Firefox and Chrome</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Sent to OneNote Print Driver</p></td>
<td align="left"><p>User can print to OneNote</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="odd">
<td align="left"><p>OneNote Linked Notes</p></td>
<td align="left"><p>OneNote Linked Notes</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Send to OneNote Internet Explorer Add-In</p></td>
<td align="left"><p>User can send to OneNote from IE</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Firewall Exception for Lync and Outlook</p></td>
<td align="left"><p>Firewall Exception for Lync and Outlook</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>MAPI Client</p></td>
<td align="left"><p>Native apps and add-ins can interact with virtual Outlook through MAPI</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>SharePoint Plugin for Firefox</p></td>
<td align="left"><p>User can use SharePoint features in Firefox</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Mail Control Panel Applet</p></td>
<td align="left"><p>User gets the mail control panel applet in Outlook</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Primary Interop Assemblies</p></td>
<td align="left"><p>Support managed add-ins</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Office Document Cache Handler</p></td>
<td align="left"><p>Allows Document Cache for Office applications</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Outlook Protocol Search handler</p></td>
<td align="left"><p>User can search in outlook</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="even">
<td align="left"><p>Active X Controls:</p></td>
<td align="left"><p>For more information on ActiveX controls, refer to [ActiveX Control API Reference](https://msdn.microsoft.com/library/office/ms440037(v=office.14).aspx).</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>   Groove.SiteClient</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>   PortalConnect.PersonalSite</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>   SharePoint.openDocuments</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>   SharePoint.ExportDatabase</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>   SharePoint.SpreadSheetLauncher</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>   SharePoint.StssyncHander</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>   SharePoint.DragUploadCtl</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>   SharePoint.DragDownloadCtl</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>   Sharpoint.OpenXMLDocuments</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>   Sharepoint.ClipboardCtl</p></td>
<td align="left"><p>Active X control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>   WinProj.Activator</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>   Name.NameCtrl</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>   STSUPld.CopyCtl</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>   CommunicatorMeetingJoinAx.JoinManager</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>   LISTNET.Listnet</p></td>
<td align="left"><p>Active X Control</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>   OneDrive Pro Browser Helper</p></td>
<td align="left"><p>Active X Control]</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>OneDrive Pro Icon Overlays</p></td>
<td align="left"><p>Windows explorer shell icon overlays when users look at folders OneDrive Pro folders</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>

 

## Additional resources


**Office 2013 App-V Packages Additional Resources**

[Supported scenarios for deploying Microsoft Office as a sequenced App-V Package](https://support.microsoft.com/en-us/kb/2772509)

**Office 2010 App-V Packages**

[Microsoft Office 2010 Sequencing Kit for Microsoft Application Virtualization 5.0](https://www.microsoft.com/en-us/download/details.aspx?id=38399)

[Known issues when you create or use an App-V 5.0 Office 2010 package](https://support.microsoft.com/en-us/kb/2828619)

[How To Sequence Microsoft Office 2010 in Microsoft Application Virtualization 5.0](https://support.microsoft.com/en-us/kb/2830069)

**Connection Groups**

[Deploying Connection Groups in Microsoft App-V v5](https://blogs.technet.microsoft.com/appv/2012/11/06/deploying-connection-groups-in-microsoft-app-v-v5/)

[Managing Connection Groups](appv-managing-connection-groups.md)

**Dynamic Configuration**

[About App-V Dynamic Configuration](appv-dynamic-configuration.md)

## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).
