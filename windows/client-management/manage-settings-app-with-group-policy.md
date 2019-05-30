---
title: Manage the Settings app with Group Policy (Windows 10)
description: Find out how to manage the Settings app with Group Policy.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---

**Applies to**

-   Windows 10, Windows Server 2016


# Manage the Settings app with Group Policy

You can now manage the pages that are shown in the Settings app by using Group Policy. This lets you hide specific pages from users. Before Windows 10, version 1703, you could either show everything in the Settings app or hide it completely.
To make use of the Settings App group polices on Windows server 2016, install fix [4457127](https://support.microsoft.com/help/4457127/windows-10-update-kb4457127) or a later cumulative update. 

>[!Note]
>Each server that you want to manage access to the Settings App must be patched.

To centrally manage the new policies copy the ControlPanel.admx and ControlPanel.adml file to [Central Store](https://support.microsoft.com/help/3087759/how-to-create-and-manage-the-central-store-for-group-policy-administra) if your company uses one or the PolicyDefinitions folder of the Domain Controllers used for Group Policy management.

This policy is available for both User and Computer depending on the version of the OS. Windows Server 2016 with KB 4457127 applied will have both User and Computer policy. Windows 10, version 1703, added Computer policy for the Settings app. Windows 10, version 1809, added User policy for the Settings app.

Policy paths:

**Computer Configuration** > **Administrative Templates** > **Control Panel** > **Settings Page Visibility**.

**User Configuration** > **Administrative Templates** > **Control Panel** > **Settings Page Visibility**.

![Settings page visibility policy](images/settings-page-visibility-gp.png)

## Configuring the Group Policy

The Group Policy can be configured in one of two ways: specify a list of pages that are shown or specify a list of pages to hide. To do this, add either **ShowOnly:** or **Hide:** followed by a semicolon delimited list of URIs in **Settings Page Visiblity**. For a full list of URIs, see the URI scheme reference section in [Launch the Windows Settings app](https://docs.microsoft.com/windows/uwp/launch-resume/launch-settings-app#ms-settings-uri-scheme-reference). 

>[!NOTE]  
> When you specify the URI in the Settings Page Visibility textbox, don't include **ms-settings:** in the string.

Here are some examples:

- To show only the Ethernet and Proxy pages, set the **Settings App Visibility** textbox to **ShowOnly:Network-Proxy;Network-Ethernet**.
- To hide the Ethernet and Proxy pages, set the **Settings App Visibility** textbox to **Hide:Network-Proxy;Network-Ethernet**.


