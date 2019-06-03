---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: How to use the User Experience page in the IEAK 11 Customization Wizard to decide user interaction with the Setup process.
author: dansimp
ms.prod: ie11
ms.assetid: d3378058-e4f0-4a11-a888-b550af994bfa
ms.reviewer: 
manager: dansimp
ms.author: dansimp
title: Use the User Experience page in the IEAK 11 Wizard (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Use the User Experience page in the IEAK 11 Wizard
The **User Experience** page of the Internet Explorer Customization Wizard 11 lets you decide how much you want your employees to interact with the custom package’s Setup process.

**Note**<br>You’ll only see this page if you are running the **Internal** version of the Internet Explorer Customization Wizard 11.<p>The customizations you make on this page only apply to Internet Explorer for the desktop on Windows 7.

**To use the User Experience page**

1.  Choose how your employee should interact with Setup, including:

    -   **Interactive installation**. Lets your employees change installation options while installing your custom package. This experience shows all of the progress and error messages throughout the process.

    -   **Hands-free installation**. Lets you make all of the decisions for your employees. However, they’ll still see all of the progress and error messages throughout the process.

    -   **Completely silent installation**. Lets you make all of the decisions for your employees and hides all of the progress and error messages. Because this mode is completely silent, if the installation fails, your employees won’t know and they won’t be able to run the installation package again.
    <p>Both the hands-free and completely silent installation options will:
    
        - Answer prompts so Setup can continue.
    
        - Accept the license agreement.

        - Determine that Internet Explorer 11 is installed and not just downloaded.

        - Perform your specific installation type.

        - Install IE in the default location, unless it is already installed. In that case, the new version of the browser is installed in the same location as the previous version.

2.  Choose if your employee’s device will restart at the end of Setup.

    -   **Default**. Prompts your employees to restart after installing IE.

    -   **No restart**. Doesn’t restart the computer after installing IE. The employee will have to manually restart later.

    -   **Force restart**. Automatically restarts the computer after installing IE.

3.  Click **Next** to go to the [Browser User Interface](browser-ui-ieak11-wizard.md) page or **Back** to go to the [Internal Install](internal-install-ieak11-wizard.md) page.

 

 





