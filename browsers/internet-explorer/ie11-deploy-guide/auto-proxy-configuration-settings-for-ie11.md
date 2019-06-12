---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: networking
description: Auto proxy configuration settings for Internet Explorer 11
author: dansimp
ms.prod: ie11
ms.assetid: 5120aaf9-8ead-438a-8472-3cdd924b7d9e
ms.reviewer: 
manager: dansimp
ms.author: dansimp
title: Auto proxy configuration settings for Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Auto proxy configuration settings for Internet Explorer 11
Configure and maintain your proxy settings, like pointing your users' browsers to your automatic proxy script, through the Internet Explorer Customization Wizard 11 running on either Windows 8.1 or Windows Server 2012 R2.

## Updating your auto-proxy settings
You can use your Internet settings (.ins) files to set up your standard proxy settings. You can also specify script files (.js, .jvs, or .pac) to configure and maintain your advanced proxy settings. IE uses your auto-proxy script files to dynamically determine whether to connect to a host or use a proxy server. If a proxy server connection fails, Internet Explorer 11 automatically attempts to connect to another proxy server that you have specified.

 **To update your settings**

1.  Create a script file with your proxy information, copying it to a server location.

2.  Open the IE Customization Wizard 11, and go to the **Automatic Configuration** page.

3.  Choose the **Enable Automatic Configuration** box to let you change the rest of the configuration options, including:

    -   **Automatically configure every box:** Type how often IE should check for configuration updates. Typing **0** (zero), or not putting in any number, means that updates only happen when the computer restarts.

    -   **Automatic Configuration URL (.INS file) box:** Type the location of the .ins file you want to use for automatic configuration. For more information about setting up **Automatic Configuration**, see [Auto configuration settings for Internet Explorer 11](auto-configuration-settings-for-ie11.md).

    -   **Automatic proxy URL (.JS, .JVS, or .PAC file) box:** Type the location of your automatic proxy script. This script runs whenever IE11 makes a network request and can include multiple proxy servers for each protocol type.<p>**Important**<br>IE11 no longer supports using file server locations with your proxy configuration (.pac) files. To keep using your .pac files, you have to keep them on a web server and reference them using a URL, like `https://share/test.ins`.

## Locking your auto-proxy settings
You have two options to restrict your users' ability to override the automatic configuration settings, based on your environment.

-   **Using Microsoft Active Directory.** Choose **Disable changing proxy settings** from the Administrative Templates setting.

-   **Not Using Active Directory.** Choose the **Prevent changing proxy settings** setting in the `User Configuration\Administrative Templates\Windows Components\Internet Explorer` Group Policy object. For more information about Group Policy, see the [Group Policy TechCenter](https://go.microsoft.com/fwlink/p/?LinkId=214514).

 

 



