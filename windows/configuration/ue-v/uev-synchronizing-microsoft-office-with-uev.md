---
title: Synchronizing Microsoft Office with UE-V
description: Learn how User Experience Virtualization (UE-V) supports the synchronization of Microsoft Office application settings.
author: aczechowski
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.topic: article
---

# Synchronizing Office with UE-V

**Applies to**
-   Windows 10, version 1607

Microsoft User Experience Virtualization (UE-V) supports the synchronization of Microsoft Office application settings. The combination of UE-V and App-V  support for Office enables the same experience on virtualized instances of Office from any UE-V-enabled device or virtualized desktop.

## Microsoft Office support in UE-V

UE-V includes settings location templates for Microsoft Office 2016, 2013, and 2010. In previous versions of UE-V, settings location templates for Office 2013 and Office 2010 were distributed and registered when you installed the UE-V agent. Now that UE-V is a feature in Windows 10, version 1607, settings location templates are installed when you install or upgrade to the new operating system.  

These templates help synchronize users' Office experience between devices. Microsoft Office 2016 settings roamed by Office 365 experience are not included in these settings. For a list of Office 365-specific settings, see [Overview of user and roaming settings for Office](/previous-versions/office/office-2013-resource-kit/jj733593(v=office.15)).

## Synchronized Office Settings


Review the following tables for details about Office support in UE-V:

### Supported UE-V templates for Microsoft Office

|Office 2016 templates (UE-V for Windows 10 and Windows 10, version 1607, available in UE-V gallery)|Office 2013 templates (UE-V for Windows 10 and UE-V 2.x, available on UE-V gallery)|Office 2010 templates (UE-V 1.0 and 1.0 SP1)|
|--- |--- |--- |
|MicrosoftOffice2016Win32.xml<p>MicrosoftOffice2016Win64.xml<p>MicrosoftSkypeForBusiness2016Win32.xml<p>MicrosoftSkypeForBusiness2016Win64.xml|MicrosoftOffice2013Win32.xml<p>MicrosoftOffice2013Win64.xml<p>MicrosoftLync2013Win32.xml<p>MicrosoftLync2013Win64.xml|MicrosoftOffice2010Win32.xml<p>MicrosoftOffice2010Win64.xml<p>MicrosoftLync2010.xml|

### Microsoft Office Applications supported by the UE-V templates

|2016|2013|2010|
|--- |--- |--- |
|Microsoft Access 2016<p>Microsoft Lync 2016<p>Microsoft Excel 2016<p>Microsoft OneNote 2016<p>Microsoft Outlook 2016<p>Microsoft PowerPoint 2016<p>Microsoft Project 2016<p>Microsoft Publisher 2016<p>Microsoft SharePoint Designer 2013 (not updated for 2016)<p>Microsoft Visio 2016<p>Microsoft Word 2016<p>Microsoft Office Upload Manager|Microsoft Access 2013<p>Microsoft Lync 2013<p>Microsoft Excel 2013<p>Microsoft InfoPath 2013<p>Microsoft OneNote 2013<p>Microsoft Outlook 2013<p>Microsoft PowerPoint 2013<p>Microsoft Project 2013<p>Microsoft Publisher 2013<p>Microsoft SharePoint Designer 2013<p>Microsoft Visio 2013<p>Microsoft Word 2013<p>Microsoft Office Upload Manager|Microsoft Access 2010<p>Microsoft Lync 2010<p>Microsoft Excel 2010<p>Microsoft InfoPath 2010<p>Microsoft OneNote 2010<p>Microsoft Outlook 2010<p>Microsoft PowerPoint 2010<p>Microsoft Project 2010<p>Microsoft Publisher 2010<p>Microsoft SharePoint Designer 2010<p>Microsoft Visio 2010<p>Microsoft Word 2010|

## Deploying Office templates


You can deploy UE-V settings location template with the following methods:

-   **Registering template with PowerShell**. If you use Windows PowerShell to manage computers, run the following Windows PowerShell command as Administrator to register this settings location template:

    ```powershell
    Register-UevTemplate -Path <Path_to_Template>
    ```

    For more information about using UE-V and Windows PowerShell, see [Managing UE-V settings location templates using Windows PowerShell and WMI](uev-managing-settings-location-templates-using-windows-powershell-and-wmi.md).

-   **Registering template with Template Catalog Path**. If you use the Settings Template Catalog Path to manage templates on users' computers, copy the Office template into the folder defined in the UE-V service. The next time the Template Auto Update (ApplySettingsCatalog.exe) scheduled task runs, the settings location template will be registered on the device. For more information, see [Deploy a settings template catalog](uev-deploy-uev-for-custom-applications.md).

-   **Registering template with Configuration Manager**. If you use Configuration Manager to manage your UE-V settings storage templates, recreate the Template Baseline CAB, import it into Configuration Manager, and then deploy the baseline to user devices.
