---
title: Planning for Using App-V with Office
description: Planning for Using App-V with Office
author: dansimp
ms.assetid: e7a19b43-1746-469f-bad6-8e75cf4b3f67
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 03/16/2017
---


# Planning for Using App-V with Office


Use the following information to plan how to deploy Office by using Microsoft Application Virtualization (App-V) 5.1. This article includes:

-   [App-V support for Language Packs](#bkmk-lang-pack)

-   [Supported versions of Microsoft Office](#bkmk-office-vers-supp-appv)

-   [Planning for using App-V with coexisting versions of Office](#bkmk-plan-coexisting)

-   [How Office integrates with Windows when you deploy use App-V to deploy Office](#bkmk-office-integration-win)

## <a href="" id="bkmk-lang-pack"></a>App-V support for Language Packs


You can use the App-V 5.1 Sequencer to create plug-in packages for Language Packs, Language Interface Packs, Proofing Tools and ScreenTip Languages. You can then include the plug-in packages in a Connection Group, along with the Office 2013 package that you create by using the Office Deployment Toolkit. The Office applications and the plug-in Language Packs interact seamlessly in the same connection group, just like any other packages that are grouped together in a connection group.

>**Note**  
Microsoft Visio and Microsoft Project do not provide support for the Thai Language Pack.

 

## <a href="" id="bkmk-office-vers-supp-appv"></a>Supported versions of Microsoft Office

See [Microsoft Office Product IDs that App-V supports](https://support.microsoft.com/help/2842297/product-ids-that-are-supported-by-the-office-deployment-tool-for-click) for a list of supported Office products.
>**Note**&nbsp;&nbsp;You must use the Office Deployment Tool to create App-V packages for Office 365 ProPlus. Creating packages for the volume-licensed versions of Office Professional Plus or Office Standard is not supported. You cannot use the App-V Sequencer.

 

## <a href="" id="bkmk-plan-coexisting"></a>Planning for using App-V with coexisting versions of Office


You can install more than one version of Microsoft Office side by side on the same computer by using “Microsoft Office coexistence.” You can implement Office coexistence with combinations of all major versions of Office and with installation methods, as applicable, by using the Windows Installer-based (MSi) version of Office, Click-to-Run, and App-V 5.1. However, using Office coexistence is not recommended by Microsoft.

Microsoft’s recommended best practice is to avoid Office coexistence completely to prevent compatibility issues. However, when you are migrating to a newer version of Office, issues occasionally arise that can’t be resolved immediately, so you can temporarily implement coexistence to help facilitate a faster migration to the latest product version. Using Office coexistence on a long-term basis is never recommended, and your organization should have a plan to fully transition in the immediate future.

### Before you implement Office coexistence

Before implementing Office coexistence, review the following Office documentation. Choose the article that corresponds to the newest version of Office for which you plan to implement coexistence.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Office version</th>
<th align="left">Link to guidance</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Office 2013</p></td>
<td align="left"><p><a href="https://support.microsoft.com/kb/2784668" data-raw-source="[Information about how to use Office 2013 suites and programs (MSI deployment) on a computer that is running another version of Office](https://support.microsoft.com/kb/2784668)">Information about how to use Office 2013 suites and programs (MSI deployment) on a computer that is running another version of Office</a></p></td>
</tr>
<tr class="even">
<td align="left"><p>Office 2010</p></td>
<td align="left"><p><a href="https://support.microsoft.com/kb/2121447" data-raw-source="[Information about how to use Office 2010 suites and programs on a computer that is running another version of Office](https://support.microsoft.com/kb/2121447)">Information about how to use Office 2010 suites and programs on a computer that is running another version of Office</a></p></td>
</tr>
</tbody>
</table>

 

The Office documentation provides extensive guidance on coexistence for Windows Installer-based (MSi) and Click-to-Run installations of Office. This App-V topic on coexistence supplements the Office guidance with information that is more specific to App-V deployments.

### Supported Office coexistence scenarios

The following tables summarize the supported coexistence scenarios. They are organized according to the version and deployment method you’re starting with and the version and deployment method you are migrating to. Be sure to fully test all coexistence solutions before deploying them to a production audience.

>**Note**  
Microsoft does not support the use of multiple versions of Office in Windows Server environments that have the Remote Desktop Session Host role service enabled. To run Office coexistence scenarios, you must disable this role service.

 

### Windows integrations & Office coexistence

The Windows Installer-based and Click-to-Run Office installation methods integrate with certain points of the underlying Windows operating system. When you use coexistence, common operating system integrations between two Office versions can conflict, causing compatibility and user experience issues. With App-V, you can sequence certain versions of Office to exclude integrations, thereby “isolating” them from the operating system.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"></th>
<th align="left">Mode in which App-V can sequence this version of Office</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Office 2007</p></td>
<td align="left"><p>Always non-integrated. App-V does not offer any operating system integrations with a virtualized version of Office 2007.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Office 2010</p></td>
<td align="left"><p>Integrated and non-integrated mode.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Office 2013</p></td>
<td align="left"><p>Always integrated. Windows operating system integrations cannot be disabled.</p></td>
</tr>
</tbody>
</table>

 

Microsoft recommends that you deploy Office coexistence with only one integrated Office instance. For example, if you’re using App-V to deploy Office 2010 and Office 2013, you should sequence Office 2010 in non-integrated mode. For more information about sequencing Office in non-integration (isolated) mode, see [How to sequence Microsoft Office 2010 in Microsoft Application Virtualization 5.0](https://support.microsoft.com/kb/2830069).

### Known limitations of Office coexistence scenarios

The following sections describe some issues that you might encounter when using App-V to implement coexistence with Office.

### Limitations common to Windows Installer-based/Click-to-Run and App-V Office coexistence scenarios

The following limitations can occur when you install the following versions of Office on the same computer:

-   Office 2010 by using the Windows Installer-based version

-   Office 2013 by using App-V

After you publish Office 2013 by using App-V side by side with an earlier version of the Windows Installer-based Office 2010 might also cause the Windows Installer to start. This is because the Windows Installer-based or Click-to-Run version of Office 2010 is trying to automatically register itself to the computer.

To bypass the auto-registration operation for native Word 2010, follow these steps:

1.  Exit Word 2010.

2.  Start the Registry Editor by doing the following:

    -   In Windows 7: Click **Start**, type **regedit** in the Start Search box, and then press Enter.

    -   In Windows 8.1 or Windows 10, type **regedit** press Enter on the Start page and then press Enter.

    If you are prompted for an administrator password or for a confirmation, type the password, or click **Continue**.

3.  Locate and then select the following registry subkey:

    ``` syntax
    HKEY_CURRENT_USER\Software\Microsoft\Office\14.0\Word\Options
    ```

4.  On the **Edit** menu, click **New**, and then click **DWORD Value**.

5.  Type **NoReReg**, and then press Enter.

6.  Right-click **NoReReg** and then click **Modify**.

7.  In the **Valuedata** box, type **1**, and then click **OK**.

8.  On the File menu, click **Exit** to close Registry Editor.

## <a href="" id="bkmk-office-integration-win"></a>How Office integrates with Windows when you use App-V to deploy Office


When you deploy Office 2013 by using App-V, Office is fully integrated with the operating system, which provides end users with the same features and functionality as Office has when it is deployed without App-V.

The Office 2013 App-V package supports the following integration points with the Windows operating system:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Extension Point</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Lync meeting Join Plug-in for Firefox and Chrome</p></td>
<td align="left"><p>User can join Lync meetings from Firefox and Chrome</p></td>
</tr>
<tr class="even">
<td align="left"><p>Sent to OneNote Print Driver</p></td>
<td align="left"><p>User can print to OneNote</p></td>
</tr>
<tr class="odd">
<td align="left"><p>OneNote Linked Notes</p></td>
<td align="left"><p>OneNote Linked Notes</p></td>
</tr>
<tr class="even">
<td align="left"><p>Send to OneNote Internet Explorer Add-In</p></td>
<td align="left"><p>User can send to OneNote from IE</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Firewall Exception for Lync and Outlook</p></td>
<td align="left"><p>Firewall Exception for Lync and Outlook</p></td>
</tr>
<tr class="even">
<td align="left"><p>MAPI Client</p></td>
<td align="left"><p>Native apps and add-ins can interact with virtual Outlook through MAPI</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SharePoint Plug-in for Firefox</p></td>
<td align="left"><p>User can use SharePoint features in Firefox</p></td>
</tr>
<tr class="even">
<td align="left"><p>Mail Control Panel Applet</p></td>
<td align="left"><p>User gets the mail control panel applet in Outlook</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Primary Interop Assemblies</p></td>
<td align="left"><p>Support managed add-ins</p></td>
</tr>
<tr class="even">
<td align="left"><p>Office Document Cache Handler</p></td>
<td align="left"><p>Allows Document Cache for Office applications</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Outlook Protocol Search handler</p></td>
<td align="left"><p>User can search in outlook</p></td>
</tr>
<tr class="even">
<td align="left"><p>Active X Controls:</p></td>
<td align="left"><p>For more information on ActiveX controls, refer to <a href="https://go.microsoft.com/fwlink/p/?LinkId=331361" data-raw-source="[ActiveX Control API Reference](https://go.microsoft.com/fwlink/p/?LinkId=331361)">ActiveX Control API Reference</a>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>   Groove.SiteClient</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="even">
<td align="left"><p>   PortalConnect.PersonalSite</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="odd">
<td align="left"><p>   SharePoint.openDocuments</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="even">
<td align="left"><p>   SharePoint.ExportDatabase</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="odd">
<td align="left"><p>   SharePoint.SpreadSheetLauncher</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="even">
<td align="left"><p>   SharePoint.StssyncHander</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="odd">
<td align="left"><p>   SharePoint.DragUploadCtl</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="even">
<td align="left"><p>   SharePoint.DragDownloadCtl</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="odd">
<td align="left"><p>   Sharepoint.OpenXMLDocuments</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="even">
<td align="left"><p>   Sharepoint.ClipboardCtl</p></td>
<td align="left"><p>Active X control</p></td>
</tr>
<tr class="odd">
<td align="left"><p>   WinProj.Activator</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="even">
<td align="left"><p>   Name.NameCtrl</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="odd">
<td align="left"><p>   STSUPld.CopyCtl</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="even">
<td align="left"><p>   CommunicatorMeetingJoinAx.JoinManager</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="odd">
<td align="left"><p>   LISTNET.Listnet</p></td>
<td align="left"><p>Active X Control</p></td>
</tr>
<tr class="even">
<td align="left"><p>   OneDrive Pro Browser Helper</p></td>
<td align="left"><p>Active X Control]</p></td>
</tr>
<tr class="odd">
<td align="left"><p>OneDrive Pro Icon Overlays</p></td>
<td align="left"><p>Windows Explorer shell icon overlays when users look at folders OneDrive Pro folders</p></td>
</tr>
<tr class="even">
<td align="left"><p>Shell extensions</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Shortcuts</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Search</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>

 






 

 





