---
ms.localizationpriority: low
ms.mktglfcycl: deploy
ms.pagetype: security
description: Administrative templates and Internet Explorer 11
author: eavena
ms.prod: ie11
ms.assetid: 2b390786-f786-41cc-bddc-c55c8a4c5af3
ms.reviewer: 
manager: dansimp
ms.author: eravena
title: Administrative templates and Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Administrative templates and Internet Explorer 11

Administrative Templates are made up of a hierarchy of policy categories and subcategories that define how your policy settings appear in the Local Group Policy Editor, including:

-   What registry locations correspond to each setting.

-   What value options or restrictions are associated with each setting.

-   The default value for many settings.

-   Text explanations about each setting and the supported version of Internet Explorer.

For a conceptual overview of Administrative Templates, see [Managing Group Policy ADMX Files Step-by-Step Guide](https://go.microsoft.com/fwlink/p/?LinkId=214519).

## What are Administrative Templates?
Administrative Templates are XML-based, multi-language files that define the registry-based Group Policy settings in the Local Group Policy Editor. There are two types of Administrative Templates:

-   **ADMX.** A language-neutral setup file that states the number and type of policy setting, and the location by category, as it shows up in the Local Group Policy Editor.

-   **ADML.** A language-specific setup file that provides language-related information to the ADMX file. This file lets the policy setting show up in the right language in the Local Group Policy Editor. You can add new languages by adding new ADML files in the required language.

## How do I store Administrative Templates?
As an admin, you can create a central store folder on your SYSVOL directory, named **PolicyDefinitions**. For example, %*SystemRoot*%\\PolicyDefinitions. This folder provides a single, centralized storage location for your Administrative Templates (both ADMX and ADML) files, so they can be used by your domain-based Group Policy Objects (GPOs).
<p>**Important**<br>Your Group Policy tools use the ADMX files in your store, ignoring any local copies. For more information about creating a central store, see [Scenario 1: Editing the Local GPO Using ADMX Files](https://go.microsoft.com/fwlink/p/?LinkId=276810).

## Administrative Templates-related Group Policy settings
When you install Internet Explorer 11, it updates the local administrative files, Inetres.admx and Inetres.adml, both located in the **PolicyDefinitions** folder.
<p>**Note**<br>You won't see the new policy settings if you try to view or edit your policy settings on a computer that isn't running IE11. To fix this, you can either install IE11, or you can copy the updated Inetres.admx and Inetres.adml files from another computer to the **PolicyDefinitions** folder on this computer.

IE11 provides these new policy settings, which are editable in the Local Group Policy Editor, and appear in the following policy paths:

-   Computer Configuration\\Administrative Templates\\Windows Components\\

-   User Configuration\\Administrative Templates\\Windows Components\\


|Catalog                                           |Description                                  |
| ------------------------------------------------ | --------------------------------------------|
|IE                                                |Turns standard IE configuration on and off.  |
|Internet Explorer\Accelerators                    |Sets up and manages Accelerators.            |
|Internet Explorer\Administrator Approved Controls |Turns ActiveX controls on and off.           |
|Internet Explorer\Application Compatibility       |Turns the **Cut**, **Copy**, or **Paste** operations on or off. This setting also requires that `URLACTION_SCRIPT_PASTE` is set to **Prompt**.   |
|Internet Explorer\Browser Menus                   |Shows or hides the IE menus and menu options.|
|Internet Explorer\Corporate Settings              |Turns off whether you specify the code download path for each computer.  |
|Internet Explorer\Delete Browsing History         |Turns the **Delete Browsing History** settings on and off.   |
|Internet Explorer\Internet Control Panel          |Turns pages on and off in the **Internet Options** dialog box. Also turns on and off the subcategories that manage settings on the **Content**, **General**, **Security** and **Advanced** pages.      |
|Internet Explorer\Internet Settings               |Sets up and manages the **Advanced settings**, **AutoComplete**, **Display Settings**, and **URL Encoding** options.                 |
|Internet Explorer\Persistence Behavior            |Sets up and manages the file size limits for Internet security zones.    |
|Internet Explorer\Privacy                         |Turns various privacy-related features on and off.         |
|Internet Explorer\Security Features               |Turns various security-related features on and off in the browser, Windows Explorer, and other applications.                       |
|Internet Explorer\Toolbars                        |Turns on and off the ability for users to edit toolbars in the browser. You can also set the default toolbar buttons here.               |
|RSS Feeds                                         |Sets up and manages RSS feeds in the browser.              |


## Editing Group Policy settings
Regardless which tool you're using to edit your Group Policy settings, you'll need to follow one of these guides for step-by-step editing instructions:

-   **If you're using the Group Policy Management Console (GPMC) or the Local Group Policy Editor.** See [Edit Administrative Template Policy Settings](https://go.microsoft.com/fwlink/p/?LinkId=214521) for step-by-step instructions about editing your Administrative Templates.

-   **If you're using GPMC with Advanced Group Policy Management (AGPM).** See [Checklist: Create, Edit, and Deploy a GPO](https://go.microsoft.com/fwlink/p/?LinkId=214522) for step-by-step instructions about how to check out a GPO from the AGPM archive, edit it, and request deployment.

## Related topics
- [Administrative templates (.admx) for Windows 10 download](https://go.microsoft.com/fwlink/p/?LinkId=746579)
- [Administrative Templates (.admx) for Windows 8.1 and Windows Server 2012 R2](https://go.microsoft.com/fwlink/p/?LinkId=746580)

