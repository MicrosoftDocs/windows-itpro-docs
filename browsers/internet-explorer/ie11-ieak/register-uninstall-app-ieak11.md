---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Learn how to register an uninstall app for your custom components, using IEAK 11.
author: lomayor
ms.prod: ie11
ms.assetid: 4da1d408-af4a-4c89-a491-d6f005fd5005
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Register an uninstall app for custom components using IEAK 11 (Internet Explorer Administration Kit 11 for IT Pros)
ms.date: 07/27/2017
---


# Register an uninstall app for custom components using IEAK 11
Register the uninstall apps for any custom components you’ve included in your Internet Explorer 11 package. Registering these apps lets your employees remove the components later, using **Uninstall or change a program** in the Control Panel.

## Register your uninstallation program
While you’re running your custom component setup process, your app can add information to the subkeys in the `HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\ApplicationName` registry key, registering your uninstallation program.

**Note**<br>IE11 also uses this registry key to verify that the component installed successfully during setup.

|Subkey |Data type |Value      |
|-------|----------|-----------|
|DisplayName |*string* |Friendly name for your uninstall app. This name must match your **Uninstall Key** in the **Add a Custom Component** page of the Internet Explorer Customization Wizard 11. For more info, see the [Custom Components](custom-components-ieak11-wizard.md) page.  |
|UninstallString |*string* |Full command-line text, including the path, to uninstall your component. You must not use a batch file or a sub-process. |

