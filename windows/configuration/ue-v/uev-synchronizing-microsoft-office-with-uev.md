---
title: Synchronizing Microsoft Office with UE-V
description: Synchronizing Office with UE-V
author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---


# Synchronizing Office with UE-V

**Applies to**
-   Windows 10, version 1607

Microsoft User Experience Virtualization (UE-V) supports the synchronization of Microsoft Office application settings. The combination of UE-V and App-V  support for Office enables the same experience on virtualized instances of Office from any UE-V-enabled device or virtualized desktop.

To synchronize Office applications settings, you can download Office templates from the [User Experience Virtualization (UE-V) Template Gallery](https://gallery.technet.microsoft.com/site/search?f%5B0%5D.Type=RootCategory&f%5B0%5D.Value=UE-V&f%5B0%5D.Text=UE-V). This resource provides Microsoft-authored UE-V settings location templates as well as community-developed settings location templates.


## Microsoft Office support in UE-V

UE-V includes settings location templates for Microsoft Office 2016, 2013, and 2010. In previous versions of UE-V, settings location templates for Office 2013 and Office 2010 were distributed and registered when you installed the UE-V agent. Now that UE-V is a feature in Windows 10, version 1607, settings location templates are installed when you install or upgrade to the new operating system.  

These templates help synchronize users’ Office experience between devices. Microsoft Office 2016 settings roamed by Office 365 experience are not included in these settings. For a list of Office 365-specific settings, see [Overview of user and roaming settings for Office](https://technet.microsoft.com/library/jj733593.aspx).

## Synchronized Office Settings


Review the following tables for details about Office support in UE-V:

### Supported UE-V templates for Microsoft Office

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Office 2016 templates (UE-V for Windows 10 and Windows 10, version 1607, available in UE-V gallery)</th>
<th align="left">Office 2013 templates (UE-V for Windows 10 and UE-V 2.x, available on UE-V gallery)</th>
<th align="left">Office 2010 templates (UE-V 1.0 and 1.0 SP1)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>MicrosoftOffice2016Win32.xml</p>
<p>MicrosoftOffice2016Win64.xml</p>
<p>MicrosoftSkypeForBusiness2016Win32.xml</p>
<p>MicrosoftSkypeForBusiness2016Win64.xml</p></td>
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
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Access 2016</p>
<p>Microsoft Lync 2016</p>
<p>Microsoft Excel 2016</p>
<p>Microsoft OneNote 2016</p>
<p>Microsoft Outlook 2016</p>
<p>Microsoft PowerPoint 2016</p>
<p>Microsoft Project 2016</p>
<p>Microsoft Publisher 2016</p>
<p>Microsoft SharePoint Designer 2013 (not updated for 2016)</p>
<p>Microsoft Visio 2016</p>
<p>Microsoft Word 2016</p>
<p>Microsoft Office Upload Manager</p></td>
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

 

## Deploying Office templates


You can deploy UE-V settings location template with the following methods:

-   **Registering template with PowerShell**. If you use Windows PowerShell to manage computers, run the following Windows PowerShell command as Administrator to register this settings location template:

    ``` syntax
    Register-UevTemplate -Path <Path_to_Template>
    ```

    For more information about using UE-V and Windows PowerShell, see [Managing UE-V settings location templates using Windows PowerShell and WMI](uev-managing-settings-location-templates-using-windows-powershell-and-wmi.md).

-   **Registering template with Template Catalog Path**. If you use the Settings Template Catalog Path to manage templates on users’ computers, copy the Office template into the folder defined in the UE-V service. The next time the Template Auto Update (ApplySettingsCatalog.exe) scheduled task runs, the settings location template will be registered on the device. For more information, see [Deploy a settings template catalog](uev-deploy-uev-for-custom-applications.md).

-   **Registering template with Configuration Manager**. If you use Configuration Manager to manage your UE-V settings storage templates, recreate the Template Baseline CAB, import it into Configuration Manager, and then deploy the baseline to user devices. For more information, see the guidance provided in the documentation for the [System Center 2012 Configuration Pack for Microsoft User Experience Virtualization 2.0](https://www.microsoft.com/en-us/download/details.aspx?id=40913).





