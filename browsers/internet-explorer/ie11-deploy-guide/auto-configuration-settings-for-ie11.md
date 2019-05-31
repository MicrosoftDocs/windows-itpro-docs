---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: networking
description: Auto configuration settings for Internet Explorer 11
author: dansimp
ms.prod: ie11
ms.assetid: 90308d59-45b9-4639-ab1b-497e5ba19023
ms.reviewer: 
manager: dansimp
ms.author: dansimp
title: Auto configuration settings for Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Auto configuration settings for Internet Explorer 11
Automatic configuration lets you apply custom branding and graphics to your internal Internet Explorer installations, running on Windows 8.1 or Windows Server 2012 R2. For more information about adding custom branding and graphics to your IE package, see [Customize the toolbar button and Favorites List icons using IEAK 11](../ie11-ieak/guidelines-toolbar-and-favorites-list-ieak11.md).<p>**Important**<br>You'll only see and be able to use the **IE Customization Wizard 11 - Automatic Configuration** page if you're creating an internal IE installation package. For more information about the **IE Customization Wizard 11 - Automatic Configuration** page, see [Use the Automatic Configuration page in the IEAK 11 Wizard](../ie11-ieak/auto-config-ieak11-wizard.md).

## Adding the automatic configuration registry key
For custom graphics and branding, add the `FEATURE\AUTOCONFIG\BRANDING` registry key to your IE installation package.<p>**Important**<br>Follow these directions carefully because serious problems can occur if you update your registry incorrectly. For added protection, back up your registry so you can restore it if a problem occurs.

 **To add the registry key**

1.  On the **Start** screen, type **regedit**, and then click **Regedit.exe**.

2.  Right-click the `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl` subkey, point to **New**, and then click **Key**.

3.  Enter the new key name, `FEATURE\AUTOCONFIG\BRANDING`, and then press Enter.

4.  Right-click `FEATURE\AUTOCONFIG\BRANDING`, point to **New**, and then click **DWORD (32-bit) Value**.

5.  Enter the new DWORD value name, **iexplore.exe**, and then press Enter.

6.  Right-click **iexplore.exe**, and then click **Modify**.

7.  In the **Value data** box, enter **1**, and then click **OK**.

8.  Exit the registry editor.

## Updating your automatic configuration settings
After adding the `FEATURE\AUTOCONFIG\BRANDING` registry key, you can change your automatic configuration settings to pick up the updated branding.
<p>**Important**<br>Your branding changes won't be added or updated if you've previously chosen the **Disable external branding of IE** setting in the `User Configuration\Administrative Templates\Windows Components\Internet Explorer` Group Policy object. This setting is intended to prevent branding by a third-party, like an Internet service or content provider. For more information about Group Policy, including videos and the latest technical documentation, see the [Group Policy TechCenter](https://go.microsoft.com/fwlink/p/?LinkId=214514).

 **To update your settings**

1.  Open the IE Customization Wizard 11, and go to the **Automatic Configuration** page.

2.  Choose the **Automatically detect configuration settings** check box to allow automatic detection of browser settings.

3.  Choose the **Enable Automatic Configuration** box to let you change the rest of the configuration options, including:

    -   **Automatically configure every box:** Type how often IE should check for configuration updates. Typing **0** (zero), or not putting in any number, means that automatic configuration only happens when the computer restarts.

    -   **Automatic Configuration URL (.INS file) box:** Type the location of your automatic configuration script.

    -   **Automatic proxy URL (.JS, .JVS, or .PAC file) box:** Type the location of your automatic proxy script.<p> **Important**<br>Internet Explorer 11 no longer supports using file server locations with your proxy configuration (.pac) files. To keep using your .pac files, you have to keep them on a web server and reference them using a URL, like `https://share/test.ins`.

If your branding changes aren't correctly deployed after running through this process, see [Auto configuration and auto proxy problems with Internet Explorer 11](auto-configuration-and-auto-proxy-problems-with-ie11.md).

## Locking your automatic configuration settings
You have two options to restrict your users' ability to override the automatic configuration settings, based on your environment.

-   **Using Microsoft Active Directory.** Choose **Disable changing Automatic Configuration settings** from the Administrative Templates setting.

-   **Not Using Active Directory.** Choose the **Disable changing Automatic Configuration settings** setting in the `User Configuration\Administrative Templates\Windows Components\Internet Explorer` Group Policy object.

 

 



