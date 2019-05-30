---
title: KioskBrowser (Windows 10)
description: This section describes the KioskBrowser settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 10/02/2018
ms.reviewer: 
manager: dansimp
---

# KioskBrowser (Windows Configuration Designer reference)

Use KioskBrowser settings to configure Internet sharing.

## Applies to

| Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings |  |    |  |  | X |

>[!NOTE]
>To configure Kiosk Browser settings for desktop editions, go to [Policies > KioskBrowser](wcd-policies.md#kioskbrowser).

Kiosk Browser settings | Use this setting to
--- | ---
Blocked URL Exceptions | Specify URLs that people can navigate to, even though the URL is in your blocked URL list. You can use wildcards. <br><br>For example, if you want people to be limited to `contoso.com` only, you would add `contoso.com` to blocked URL exception list and then block all other URLs.
Blocked URLs | Specify URLs that people can't navigate to. You can use wildcards. <br><br>If you want to limit people to a specific site, add `https://*` to the blocked URL list, and then specify the site to be allowed in the blocked URL exceptions list.
Default URL | Specify the URL that Kiosk Browser will open with. **Tip!** Make sure your blocked URLs don't include your default URL.
Enable Home Button | Show a Home button in Kiosk Browser. Home will return the browser to the default URL.
Enable Navigation Buttons | Show forward and back buttons in Kiosk Browser.
Restart on Idle Time | Specify when Kiosk Browser should restart in a fresh state after an amount of idle time since the last user interaction.

>[!IMPORTANT]
>To configure multiple URLs for **Blocked URL Exceptions** or **Blocked URLs** in Windows Configuration Designer:
>
> 1. Create the provisioning package. When ready to export, close the project in Windows Configuration Designer.
>2.	Open the customizations.xml file in the project folder (e.g C:\Users\name\Documents\Windows Imaging and Configuration Designer (WICD)\Project_18). 
>3.	Insert the null character string in between each URL (e.g www.bing.com`&#xF000;`www.contoso.com). 
>4.	Save the XML file.
>5.	Open the project again in Windows Configuration Designer.
>6.	Export the package. Ensure you do not revisit the created policies under Kiosk Browser or else the null character will be removed.
