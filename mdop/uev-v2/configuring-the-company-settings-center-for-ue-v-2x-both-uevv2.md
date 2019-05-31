---
title: Configuring the Company Settings Center for UE-V 2.x
description: Configuring the Company Settings Center for UE-V 2.x
author: levinec
ms.assetid: 48fadb0a-c0dc-4287-9474-f94ce1417003
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Configuring the Company Settings Center for UE-V 2.x


Microsoft User Experience Virtualization (UE-V) 2.0, 2.1, and 2.1 SP1 include a new application, the Company Settings Center, which helps users manage settings to synchronize. The Company Settings Center is installed by using the UE-V Agent. Users access the Company Settings Center in Control Panel, in the **Start** menu or on the **Start** screen, and via the UE-V notification area icon. Company Settings Center displays which settings are synchronized and helps users see the synchronization status of UE-V. Users can use the Company Settings Center to select which applications or Windows features synchronize their settings between computers. They can also click the **Sync Now** button to synchronize all settings immediately. The administrator can also include a link for support in the Company Settings Center.

## About the Company Settings Center


The Company Settings Center desktop application provides users with information about UE-V settings synchronization. The Company Settings Center is accessible in several different ways:

-   Notification area icon – With the **Tray Icon** Group Policy setting or Windows PowerShell configuration enabled, the UE-V icon appears in the notification area. Click the UE-V icon to open the Company Settings Center.

    **Note**  
    The notification area icon can be disabled by using the following settings:

    -   Group Policy setting: `Policy Tray Icon`

    -   Windows PowerShell cmdlet: `TrayIconEnabled`

    -   Configuration item in the UE-V Configuration Pack for System Center 2012 Configuration Manager: `Tray icon enabled`

     

-   Control Panel application – In Control Panel, browse to **Appearance and Personalization**, and then click **Company Settings Center**.

-   First use notification – Unless disabled, the UE-V Agent alerts the user that settings are now synchronized when the UE-V agent runs for the first time on a computer. Click the notification dialog box to open the Company Settings Center.

-   The **Start** screen or **Start** menu includes a link to the Company Settings Center. A search for Company Settings Center finds the application.

## Configuring the support link in the Company Settings Center


The Company Settings Center can include a hyperlink that users can click to get support with UE-V settings synchronization problems. This link can open any valid URL protocol, such as http:// for a webpage or mailto:// for an email. The support link can be configured by using Group Policy, Windows PowerShell, or the System Center 2012 Configuration Manager UE-V Configuration Pack.

**How to configure the Company Settings Center support link**

1.  Open your preferred management tool:

    -   **Group Policy** - If you have not already done so, download the ADMX template for UE-V 2 from [MDOP Administrative Templates](https://go.microsoft.com/fwlink/p/?LinkId=393941).

    -   **Windows PowerShell** – On a computer with the UE-V Agent installed, open **Windows PowerShell**. For more information about administering UE-V by using Windows PowerShell, see [Administering UE-V 2.x with Windows PowerShell and WMI](administering-ue-v-2x-with-windows-powershell-and-wmi-both-uevv2.md).

    -   **System Center 2012 Configuration Pack for Microsoft User Experience Virtualization (UE-V)** – Import the UE-V Configuration Pack and follow the Configuration Pack documentation to create configuration items. For more information about the UE-V Configuration Pack, see [Configuring UE-V 2.x with System Center Configuration Manager 2012](configuring-ue-v-2x-with-system-center-configuration-manager-2012-both-uevv2.md).

2.  Edit the settings for the following policies:

    -   **Contact IT Link Text** - This setting specifies the text of the Contact IT URL hyperlink in the Company Settings Center. If you enable this setting, the Company Settings Center displays the specified text in the link to the Contact IT URL.

        -   Group Policy settings: `Contact IT Link Text`

        -   Windows PowerShell cmdlet: `ContactITDescription`

        -   Configuration Pack configuration item: `IT contact descriptive text`

    -   **Contact IT URL** - This setting specifies the URL for the Contact IT link in the Company Settings Center in a valid URL protocol, such as http:// for a webpage or mailto:// for an email.

        -   Group Policy settings: `Contact IT URL`

        -   Windows PowerShell cmdlet: `ContactITUrl`

        -   Configuration Pack configuration item: `IT contact URL`

3.  Deploy settings to users’ computers by using the management tool.






 

 





