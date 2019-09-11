---
title: Synchronizing Office 2013 with UE-V 2.0
description: Synchronizing Office 2013 with UE-V 2.0
author: dansimp
ms.assetid: c46feb6d-28a8-4799-888d-053531dc5842
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Synchronizing Office 2013 with UE-V 2.0


Microsoft User Experience Virtualization (UE-V) 2.0 supports the synchronization of Microsoft Office 2013 application setting using a template available from the UE-V template gallery. The combination of UE-V 2 and App-V 5.0 SP2 support of Office 2013 Professional Plus enables the same experience on virtualized instance of Office 2013 from any UE-V-enabled device or virtualized desktop.

To activate UE-V application settings support of Office 2013, you can download official UE-V Office 2013 templates from the [Microsoft User Experience Virtualization (UE-V) 2 Template Gallery](https://go.microsoft.com/fwlink/p/?LinkId=246589). This resource provides Microsoft-authored UE-V settings location templates as well as community-developed settings location templates.

## Microsoft Office support in UE-V


UE-V 1.0 and UE-V 2 include settings location templates for Microsoft Office 2010. These templates are distributed and registered as part of the UE-V Agent installation process. These templates help synchronize users’ Office experience between devices. The UE-V templates for Office 2013 provide a very similar settings experience to the templates for Office 2010. Microsoft Office 2013 settings roamed by Office 365 experience are not included in these settings. For a list of Office 365-specific settings, see [Overview of user and roaming settings for Office 2013](https://go.microsoft.com/fwlink/p/?LinkId=391220).

## Synchronized Office 2013 Settings


The following tables contain the details for Office 2013 support in UE-V:

### Supported UE-V templates for Microsoft Office

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Office 2013 templates (UE-V 2.0, available on UE-V gallery):</th>
<th align="left">Office 2010 templates (UE-V 1.0 &amp; 1.0 SP1):</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>MicrosoftOffice2013Win32.xml</p>
<p>MicrosoftOffice2013Win64.xml</p>
<p>MicrosoftLync2013Win32.xml</p>
<p>MicrosoftLync2013Win64.xml</p></td>
<td align="left"><p>MicrosoftOffice2010Win32.xml</p>
<p>MicrosoftOffice2010Win64.xml</p>
<p>MicrosoftLync2010.xml</p>
<p></p></td>
</tr>
</tbody>
</table>

 

### Microsoft Office Applications supported by the UE-V templates

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Access 2013</p>
<p>Microsoft Lync 2013</p>
<p>Microsoft Excel 2013</p>
<p>Microsoft InfoPath 2013</p>
<p>Microsoft OneNote 2013</p>
<p>Microsoft Outlook 2013</p>
<p>Microsoft PowerPoint 2013</p>
<p>Microsoft Project 2013</p>
<p>Microsoft Publisher 2013</p>
<p>Microsoft SharePoint Designer 2013</p>
<p>Microsoft Visio 2013</p>
<p>Microsoft Word 2013</p>
<p>Microsoft Office Upload Manager</p></td>
<td align="left"><p>Microsoft Access 2010</p>
<p>Microsoft Lync 2010</p>
<p>Microsoft Excel 2010</p>
<p>Microsoft InfoPath 2010</p>
<p>Microsoft OneNote 2010</p>
<p>Microsoft Outlook 2010</p>
<p>Microsoft PowerPoint 2010</p>
<p>Microsoft Project 2010</p>
<p>Microsoft Publisher 2010</p>
<p>Microsoft SharePoint Designer 2010</p>
<p>Microsoft Visio 2010</p>
<p>Microsoft Word 2010</p>
<p></p></td>
</tr>
</tbody>
</table>

 

## Deploying the Office 2013 templates


You can deploy UE-V settings location template with the following methods:

-   **Registering template via PowerShell**. If you use Windows PowerShell to manage computers, run the following Windows PowerShell command open as an administrator to register this settings location template:

    ``` syntax
    Register-UevTemplate -Path <Path_to_Template>
    ```

    For more information using UE-V and Windows PowerShell, see [Managing UE-V 2.x Settings Location Templates Using Windows PowerShell and WMI](managing-ue-v-2x-settings-location-templates-using-windows-powershell-and-wmi-both-uevv2.md).

-   **Registering template via Template Catalog Path**. If you use the Settings Template Catalog Path to manage templates on users’ computers, copy the Office 2013 template into the folder defined in the UE-V Agent. The next time the Template Auto Update (ApplySettingsCatalog.exe) scheduled task runs, the settings location template will be registered on the device. For more information, see [Deploying the Settings Template Catalog for UE-V 2](https://technet.microsoft.com/library/dn458942.aspx#deploycatalogue).

-   **Registering template via Configuration Manager**. If you use Configuration Manager to manage your UE-V settings storage templates, then recreate the Template Baseline CAB, import it into Configuration Manager, and then deploy the baseline to your clients. For more information, see the guidance provided in the documentation for the [System Center 2012 Configuration Pack for Microsoft User Experience Virtualization 2](https://go.microsoft.com/fwlink/?LinkId=317263).






 

 





