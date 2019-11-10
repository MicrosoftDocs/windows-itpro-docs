---
title: Guidelines for choosing an app for assigned access (Windows 10)
description: The following guidelines may help you choose an appropriate Windows app for your assigned access experience.
keywords: ["kiosk", "lockdown", "assigned access"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 10/02/2018
ms.reviewer: 
manager: dansimp
---

# Guidelines for choosing an app for assigned access (kiosk mode)


**Applies to**

-   Windows 10


You can use assigned access to restrict customers at your business to using only one Windows app so your device acts like a kiosk.  Administrators can use assigned access to restrict a selected user account to access a single Windows app. You can choose almost any Windows app for assigned access; however, some apps may not provide a good user experience.

The following guidelines may help you choose an appropriate Windows app for your assigned access experience.

## General guidelines

- Windows apps must be provisioned or installed for the assigned access account before they can be selected as the assigned access app. [Learn how to provision and install apps](https://msdn.microsoft.com/library/windows/hardware/mt228170.aspx#install_your_apps). 

- Updating a Windows app can sometimes change the Application User Model ID (AUMID) of the app. If this happens, you must update the assigned access settings to launch the updated app, because assigned access uses the AUMID to determine which app to launch. 

- Apps that are generated using the [Desktop App Converter (Desktop Bridge)](https://docs.microsoft.com/windows/uwp/porting/desktop-to-uwp-run-desktop-app-converter) cannot be used as kiosk apps.




## Guidelines for Windows apps that launch other apps

Some Windows apps can launch other apps. Assigned access prevents Windows apps from launching other apps. 

Avoid selecting Windows apps that are designed to launch other apps as part of their core functionality.  

## Guidelines for web browsers

In Windows 10, version 1809, Microsoft Edge includes support for kiosk mode. [Learn how to deploy Microsoft Edge kiosk mode.](https://docs.microsoft.com/microsoft-edge/deploy/microsoft-edge-kiosk-mode-deploy)

In Windows 10, version 1803 and later, you can install the **Kiosk Browser** app from Microsoft to use as your kiosk app. For digital signage scenarios, you can configure **Kiosk Browser** to navigate to a URL and show only that content -- no navigation buttons, no address bar, etc. For kiosk scenarios, you can configure additional settings, such as allowed and blocked URLs, navigation buttons, and end session buttons. For example, you could configure your kiosk to show the online catalog for your store, where customers can navigate between departments and items, but aren’t allowed to go to a competitor's website. 

>[!NOTE]
>Kiosk Browser supports a single tab. If a website has links that open a new tab, those links will not work with Kiosk Browser. Kiosk Browser does not support .pdfs.
>
>Kiosk Browser cannot access intranet websites.


**Kiosk Browser** must be downloaded for offline licensing using Microsoft Store For Business. You can deploy **Kiosk Browser** to devices running Windows 10, version 1803 (Pro, Business, Enterprise, and Education).

1. [Get **Kiosk Browser** in Microsoft Store for Business with offline license type.](https://docs.microsoft.com/microsoft-store/acquire-apps-microsoft-store-for-business#acquire-apps)
2. [Deploy **Kiosk Browser** to kiosk devices.](https://docs.microsoft.com/microsoft-store/distribute-offline-apps)
3. Configure policies using settings from the Policy Configuration Service Provider (CSP) for [KioskBrowser](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-kioskbrowser). These settings can be configured using your MDM service provider, or [in a provisioning package](provisioning-packages/provisioning-create-package.md). In Windows Configuration Designer, the settings are located in **Policies > KioskBrowser** when you select advanced provisioning for Windows desktop editions.

>[!NOTE]
>If you configure the kiosk using a provisioning package, you must apply the provisioning package after the device completes the out-of-box experience (OOBE).

### Kiosk Browser settings

Kiosk Browser settings | Use this setting to
--- | ---
Blocked URL Exceptions | Specify URLs that people can navigate to, even though the URL is in your blocked URL list. You can use wildcards. <br><br>For example, if you want people to be limited to `http://contoso.com` only, you would add `.contoso.com` to blocked URL exception list and then block all other URLs.
Blocked URLs | Specify URLs that people can't navigate to. You can use wildcards. <br><br>If you want to limit people to a specific site, add `https://*` to the blocked URL list, and then specify the site to be allowed in the blocked URL exceptions list.
Default URL | Specify the URL that Kiosk Browser will open with. **Tip!** Make sure your blocked URLs don't include your default URL.
Enable End Session Button | Show a button in Kiosk Browser that people can use to reset the browser. End Session will clear all browsing data and navigate back to the default URL.
Enable Home Button | Show a Home button in Kiosk Browser. Home will return the browser to the default URL.
Enable Navigation Buttons | Show forward and back buttons in Kiosk Browser.
Restart on Idle Time | Specify when Kiosk Browser should restart in a fresh state after an amount of idle time since the last user interaction.

> [!IMPORTANT]
> To configure multiple URLs for **Blocked URL Exceptions** or **Blocked URLs** in Windows Configuration Designer:
> 
> 1. Create the provisioning package. When ready to export, close the project in Windows Configuration Designer.
> 2. Open the customizations.xml file in the project folder (e.g C:\Users\name\Documents\Windows Imaging and Configuration Designer (WICD)\Project_18). 
> 3. Insert the null character string in between each URL (e.g www.bing.com`&#xF000;`www.contoso.com). 
> 4. Save the XML file.
> 5. Open the project again in Windows Configuration Designer.
> 6. Export the package. Ensure you do not revisit the created policies under Kiosk Browser or else the null character will be removed.
> 
> 
> [!TIP]
> To enable the **End Session** button for Kiosk Browser in Intune, you must [create a custom OMA-URI policy](https://docs.microsoft.com/intune/custom-settings-windows-10) with the following information:
> - OMA-URI: ./Vendor/MSFT/Policy/Config/KioskBrowser/EnableEndSessionButton
> - Data type: Integer
> - Value: 1


#### Rules for URLs in Kiosk Browser settings

Kiosk Browser filtering rules are based on the [Chromium Project](https://www.chromium.org/Home).

URLs can include:
- A valid port value from 1 to 65,535.
- The path to the resource.
- Query parameters.

Additional guidelines for URLs:

- If a period precedes the host, the policy filters exact host matches only.
- You cannot use user:pass fields.
- When both blocked URL and blocked URL exceptions apply with the same path length, the exception takes precedence.
- The policy searches wildcards (*) last.
- The optional query is a set of key-value and key-only tokens delimited by '&'.
- Key-value tokens are separated by '='.
- A query token can optionally end with a '*' to indicate prefix match. Token order is ignored during matching.

### Examples of blocked URLs and exceptions

The following table describes the results for different combinations of blocked URLs and blocked URL exceptions.

Blocked URL rule |  Block URL exception rule | Result
--- | --- | ---
`*` | `contoso.com`<br>`fabrikam.com` | All requests are blocked unless it is to contoso.com, fabrikam.com, or any of their subdomains.
`contoso.com` | `mail.contoso.com`<br>`.contoso.com`<br>`.www.contoso.com` | Block all requests to contoso.com, except for the main page and its mail subdomain.
`youtube.com` | `youtube.com/watch?v=v1`<br>`youtube.com/watch?v=v2` | Blocks all access to youtube.com except for the specified videos (v1 and v2).

The following table gives examples for blocked URLs. 


|          Entry           |                                    Result                                     |
|--------------------------|-------------------------------------------------------------------------------|
|      `contoso.com`       | Blocks all requests to contoso.com, www.contoso.com, and sub.www.contoso.com  |
|       `https://*`        |                   Blocks all HTTPS requests to any domain.                    |
|    `mail.contoso.com`    | Blocks requests to mail.contoso.com but not to www.contoso.com or contoso.com |
|      `.contoso.com`      |    Blocks contoso.com but not its subdomains, like subdomain.contoso.com.     |
|    `.www.contoso.com`    |                Blocks www.contoso.com but not its subdomains.                 |
|           `*`            |    Blocks all requests except for URLs in the Blocked URL Exceptions list.    |
|         `*:8080`         |                       Blocks all requests to port 8080.                       |
|   `contoso.com/stuff`    |         Blocks all requests to contoso.com/stuff and its subdomains.          |
|      `192.168.1.2`       |                        Blocks requests to 192.168.1.2.                        |
| `youtube.com/watch?v=V1` |                       Blocks youtube video with id V1.                        |

### Other browsers



You can create your own web browser Windows app by using the WebView class. Learn more about developing your own web browser app:
- [Creating your own browser with HTML and JavaScript](https://blogs.windows.com/msedgedev/2015/08/27/creating-your-own-browser-with-html-and-javascript/) 
- [WebView class](https://msdn.microsoft.com/library/windows/apps/windows.ui.xaml.controls.webview.aspx)
- [A web browser built with JavaScript as a Windows app](https://github.com/MicrosoftEdge/JSBrowser/tree/v1.0)



## Secure your information

Avoid selecting Windows apps that may expose the information you don’t want to show in your kiosk, since kiosk usually means anonymous access and locates in a public setting like a shopping mall. For example, an app that has a file picker allows the user to gain access to files and folders on the user's system, avoid selecting these types of apps if they provide unnecessary data access.

## App configuration

Some apps may require additional configurations before they can be used appropriately in assigned access. For example, Microsoft OneNote requires you to set up a Microsoft account for the assigned access user account before OneNote will open in assigned access. 

Check the guidelines published by your selected app and set up accordingly. 

## Develop your kiosk app

Assigned access in Windows 10 leverages the new lock framework. When an assigned access user signs in, the selected kiosk app is launched above the lock screen. The kiosk app is running as an above lock screen app. 

Follow the [best practices guidance for developing a kiosk app for assigned access](https://msdn.microsoft.com/library/windows/hardware/mt633799%28v=vs.85%29.aspx). 

## Test your assigned access experience

The above guidelines may help you select or develop an appropriate Windows app for your assigned access experience. Once you have selected your app, we recommend that you thoroughly test the assigned access experience to ensure that your device provides a good customer experience.










