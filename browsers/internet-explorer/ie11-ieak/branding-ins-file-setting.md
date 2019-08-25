---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Use the \[Branding\] .INS file setting to set up your custom branding and setup info in your browser install package.
author: lomayor
ms.prod: ie11
ms.assetid: cde600c6-29cf-4bd3-afd1-21563d2642df
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Use the Branding .INS file to create custom branding and setup info (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Use the Branding .INS file to create custom branding and setup info
Info about the custom branding and setup information in your browser package.

|Name       |Value                           | Description                                                  |
|-----------|--------------------------------|--------------------------------------------------------------|
|Add on URL | `<addon_url>` |The add-on URL for the product updates command in the browser.|
|BrowserDefault|<ul><li>**0.** Locks down Internet Explorer as the default browser.</li><li>**1.** Preserves the existing default browser.</li><li>**2.** Lets the employee decide the default browser.</li></ul> | Determines the default browser behavior. |
|CMBitmapName | `<file_name>` | The file name for the Connection Manager custom bitmap. |
|CMBitmapPath | `<file_path>` | The full file path to the Connection Manager custom bitmap file. |
|CMProfileName| `<file_name>` | The name of the Connection Manager profile. |
|CMProfilePath| `<file_path>` | The full file path to the Connection Manager profile. |
|CMUseCustom | <ul><li>**0.** Don’t use a custom Connection Manager profile.</li><li>**1.** Use a custom Connection Manager profile.</li></ul> | Determines whether to use a custom Connection Manager profile. |
|CompanyName |`<company_name>` |The name of the company with a valid IEAK 11 license, building this .ins file. |
|EncodeFavs |<ul><li>**0.** Don’t encode the section.</li><li>**1.** Encode the section.</li></ul> |Determines whether to encode the **[Favorites]** section for versions of IE earlier than 5.0. |
|FavoritesDelete |*hexadecimal:* `0x89` |Lets you remove all existing Favorites and Quick Links. |
|FavoritesOnTop |<ul><li>**0.** Don’t put the new item at the top of the **Favorites** menu.</li><li>**1.** Put the new item at the top of the **Favorites** menu.</li></ul> |Determines whether to put new favorite items at the top of the menu. |
|IE4 Welcome Msg |<ul><li>**0.** Don’t go to a **Welcome** page the first time the browser is opened.</li><li>**1.** Go to a **Welcome** page the first time the browser is opened.</li></ul> |Determines whether a **Welcome** page appears. |
|Language ID |`<language_value>` |Code value for the language used. |
|Language Locale |`<ie_version_locale>` |The locale of the version of IE being customized, as denoted by a four-letter string — for example, EN-us for English. |
|NoIELite |<ul><li>**0.** Don’t optimize the Active Setup Wizard.</li><li>**1.** Optimize the Active Setup Wizard for download, using existing files, as possible.</li></ul> |Determines whether to optimize the Active Setup Wizard for download. |
|SilentInstall |<ul><li>**0.** Run Windows Update Setup interactively.</li><li>**1.** Run Windows Update Setup non-interactively, but show progress and error messages to the employee.</li></ul> |Determines whether Windows Update Setup runs interactively on the employee’s computer.<p>**Note**<br>This only appears for the **Internal** version of the IEAK 11. |
|StealthInstall |<ul><li>**0.** Run Windows Update Setup showing progress and error messages to the employee.</li><li>**1.** Run Windows Update Setup without showing error messages to the employee.</li></ul> |Determines whether Windows Update Setup shows error messages and dialog boxes.<p>**Note**<br>This only appears for the **Internal** version of the IEAK 11. |
|Toolbar Bitmap |`<file_path_and_name>` |Full path to the icon bitmap that appears on the browser toolbar. |
|Type |<ul><li>**1.** Internal version. For use on a corporate intranet or network.</li><li>**2.** External version. For use by ISPs, ICPs, or Developers.</li></ul> |The version of IEAK 11 being used. |
|User Agent |`<string>` |String to be appended to the default User Agent string. |
|Version |`<string>` |Version number of the browser. For example, `6,0,0,1`. |
|WebIntegrated |<ul><li>**0.** Don’t include the 4.x integrated shell in your custom package.</li><li>**1.** Include the 4.x integrated shell in your custom package.</li></ul> |Determines whether the IE 4.x integrated shell is included in this package. |
|Win32DownloadSite |`<url_location>` |URL from where your employees will download the IEsetup.exe file. |
|Window_Title |`<string>` |Customized window title for IE. |
|Window_Title_CN |`<company_name>` |Company name to be appended to the window title. |
|WizardVersion |`<string>` |Version of the IEAK that created the .ins file. For example, `6.00.0707.2800`. |

 





