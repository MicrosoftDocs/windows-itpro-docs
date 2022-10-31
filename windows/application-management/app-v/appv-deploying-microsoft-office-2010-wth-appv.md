---
title: Deploying Microsoft Office 2010 by Using App-V
description: Create Office 2010 packages for Microsoft Application Virtualization (App-V) using the App-V Sequencer or the App-V Package Accelerator.
author: aczechowski
ms.prod: windows-client
ms.date: 04/18/2018
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.topic: article
ms.technology: itpro-apps
---

# Deploying Microsoft Office 2010 by Using App-V

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

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

Sequencing Office 2010 is one of the main methods for creating an Office 2010 package on App-V. For more information, see [How to Sequence a New Application with App-V 5.0](/microsoft-desktop-optimization-pack/appv-v5/how-to-sequence-a-new-application-with-app-v-50-beta-gb18030).

## Deploying the Microsoft Office package for App-V

You can deploy Office 2010 packages by using any of the following App-V deployment methods:

* Microsoft Endpoint Configuration Manager
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
|Active X Controls:<br>- Groove.SiteClient<br>- PortalConnect.PersonalSite<br>- SharePoint.openDocuments<br>-  SharePoint.ExportDatabase<br>- SharePoint.SpreadSheetLauncher<br>- SharePoint.StssyncHander<br>- SharePoint.DragUploadCtl<br>- SharePoint.DragDownloadCtl<br>- Sharpoint.OpenXMLDocuments<br> - Sharepoint.ClipboardCtl<br>- WinProj.Activator<br>- Name.NameCtrl<br>- STSUPld.CopyCtl<br>- CommunicatorMeetingJoinAx.JoinManager<br>- LISTNET.Listnet<br>- OneDrive Pro Browser Helper|Active X Control. <br><br>For more information about ActiveX controls, see the [ActiveX Control API Reference](/previous-versions/office/developer/sharepoint-2010/ms440037(v=office.14)).||
|OneDrive Pro Icon Overlays|Windows explorer shell icon overlays when users look at folders OneDrive Pro folders||

### Connection Groups

* [Managing Connection Groups](appv-managing-connection-groups.md)

### Dynamic Configuration

* [About App-V Dynamic Configuration](appv-dynamic-configuration.md)
