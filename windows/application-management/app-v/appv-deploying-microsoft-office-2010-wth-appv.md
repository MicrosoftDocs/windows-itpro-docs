---
title: Deploying Microsoft Office 2010 by Using App-V (Windows 10)
description: Deploying Microsoft Office 2010 by Using App-V
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
---
# Deploying Microsoft Office 2010 by Using App-V

>Applies to: Windows 10, version 1607

You can create Office 2010 packages for Microsoft Application Virtualization (App-V) using one of the following methods:

* Application Virtualization (App-V) Sequencer
* Application Virtualization (App-V) Package Accelerator

## App-V support for Office 2010

The following table shows the App-V versions, methods of Office package creation, supported licensing, and supported deployments for Office 2010.

|Supported item|Support level|
|---|---|
|Package creation|- Sequencing<br>- Package Accelerator<br>- Office Deployment Kit|
|Supported licensing|Volume Licensing|
|Supported deployments|- Desktop<br>- Personal VDI<br>- RDS|

## Creating Office 2010 App-V using the sequencer

Sequencing Office 2010 is one of the main methods for creating an Office 2010 package on App-V. Microsoft has provided a detailed recipe through a Knowledge Base article. For detailed instructions about how to create an Office 2010 package on App-V, see [How To Sequence Microsoft Office 2010 in Microsoft Application Virtualization 5.0](https://support.microsoft.com/kb/2830069).

## Creating Office 2010 App-V packages using package accelerators

Office 2010 App-V packages can be created through package accelerators. Microsoft has provided package accelerators for creating Office 2010 on Windows 10, Windows 8, and Windows 7. The following pages will show you which package accelerator is best for creating Office 2010 App-V packages on your version of Windows:

* [App-V 5.0 Package Accelerator for Office Professional Plus 2010 – Windows 8](https://gallery.technet.microsoft.com/App-V-50-Package-a29410db)
* [App-V 5.0 Package Accelerator for Office Professional Plus 2010 – Windows 7](https://gallery.technet.microsoft.com/App-V-50-Package-e7ef536b)

For detailed instructions on how to create virtual application packages using App-V package accelerators, see [How to Create a Virtual Application Package Using an App-V Package Accelerator](appv-create-a-virtual-application-package-package-accelerator.md).

## Deploying the Microsoft Office package for App-V

You can deploy Office 2010 packages by using any of the following App-V deployment methods:

* System Center Configuration Manager
* App-V server
* Stand-alone through Windows PowerShell commands

## Office App-V package management and customization

Office 2010 packages can be managed like any other App-V packages through known package management mechanisms. No special instructions are needed, for example, to add, publish, unpublish, or remove Office packages.

## Microsoft Office integration with Windows

The following table provides a full list of supported integration points for Office 2010.

(POPULATE THE THIRD COLUMN)

|Extension Point|Description|Office 2010|
|---|---|---|
|Lync meeting Join Plug-in for Firefox and Chrome|User can join Lync meetings from Firefox and Chrome||
|Sent to OneNote Print Driver|User can print to OneNote|Yes|
|OneNote Linked Notes|OneNote Linked Notes||
|Send to OneNote Internet Explorer Add-In|User can send to OneNote from IE||
|Firewall Exception for Lync and Outlook|Firewall Exception for Lync and Outlook||
|MAPI Client|Native apps and add-ins can interact with virtual Outlook through MAPI||
|SharePoint Plugin for Firefox|User can use SharePoint features in Firefox||
|Mail Control Panel Applet|User gets the mail control panel applet in Outlook|Yes|
|Primary Interop Assemblies|Support managed add-ins||
|Office Document Cache Handler|Allows Document Cache for Office applications||
|Outlook Protocol Search handler|User can search in Outlook|Yes|
|Active X Controls:<br>- Groove.SiteClient<br>- PortalConnect.PersonalSite<br>- SharePoint.openDocuments<br>-  SharePoint.ExportDatabase<br>- SharePoint.SpreadSheetLauncher<br>- SharePoint.StssyncHander<br>- SharePoint.DragUploadCtl<br>- SharePoint.DragDownloadCtl<br>- Sharpoint.OpenXMLDocuments<br> - Sharepoint.ClipboardCtl<br>- WinProj.Activator<br>- Name.NameCtrl<br>- STSUPld.CopyCtl<br>- CommunicatorMeetingJoinAx.JoinManager<br>- LISTNET.Listnet<br>- OneDrive Pro Browser Helper|Active X Control. <br><br>For more information about ActiveX controls, see the [ActiveX Control API Reference](<https://msdn.microsoft.com/library/office/ms440037(v=office.14).aspx>).||
|OneDrive Pro Icon Overlays|Windows explorer shell icon overlays when users look at folders OneDrive Pro folders||

## Additional resources

### Office 2013 App-V Packages Additional Resources

* [Supported scenarios for deploying Microsoft Office as a sequenced App-V Package](https://support.microsoft.com/kb/2772509)

### Office 2010 App-V Packages

* [Microsoft Office 2010 Sequencing Kit for Microsoft Application Virtualization 5.0](https://www.microsoft.com/download/details.aspx?id=38399)
* [Known issues when you create or use an App-V 5.0 Office 2010 package](https://support.microsoft.com/kb/2828619)
* [How To Sequence Microsoft Office 2010 in Microsoft Application Virtualization 5.0](https://support.microsoft.com/kb/2830069)

### Connection Groups

* [Managing Connection Groups](appv-managing-connection-groups.md)
* [Connection groups on the App-V team blog](https://blogs.msdn.microsoft.com/gladiator/tag/connection-groups/)

### Dynamic Configuration

* [About App-V Dynamic Configuration](appv-dynamic-configuration.md)



