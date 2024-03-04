---
title: What is Assigned Access?
description: Learn how to configure devices with Assigned Access.
ms.date: 05/12/2023
ms.topic: how-to
---

# What is Assigned Access?

Assigned Access is a Windows feature that you can use to configure a device as a kiosk or restricted user experience.


Multi-app kiosk mode allows an IT admin to pre-select the apps and functionality available to a user to create a tailored and immersive device experience. Ideal for shared devices, multi-app kiosk mode can create different configurations for different users, ensuring they have access to only what is needed to use the device as intended. The locked down configurations present users with the Windows desktop with which they are already familiar, while limiting their access to reduce distractions and potential for inadvertent uses.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/kiosk.png" alt-text="Icon representing a kiosk." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Kiosk experience
    :::column-end:::
:::row-end:::

A single UWP application or Microsoft Edge is executed in full screen, above the lock screen. Users can only use that application. If the kiosk app is closed, it will utomatically restart. Practical examples include:

- Public browsing
- Interactive digital signage
This experience is sometimes referred to as *single-app kiosk*.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/restricted-user-experience.png" alt-text="Icon representing a restricted user experience." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Restricted user experience
    :::column-end:::
:::row-end:::

Users can execute a defined list of applications, with a custom Start menu and Taskbar. Practical examples include:

- Frontline worker devices
- Student devices
- Lab devices

When applying an Assigned Access configuration to a device, different policy settings are enforced, creating a locked down experience to the users.

> [!NOTE]
> Assigned Access profiles only apply to non-admin accounts. When an administrator signs in, the Assigned Access restrictions don't apply.


[!INCLUDE [assigned-access](../../../includes/licensing/assigned-access.md)]

<!-->
When the multi-app kiosk configuration is applied to a device, AppLocker rules are generated to allow the apps that are listed in the configuration. Here are the predefined Assigned Access AppLocker rules

For UWP apps,

1. Default rule is to allow all users to launch the signed package apps.

2. The package app deny list is generated at runtime when the Assigned Access user signs in. Based on the installed/provisioned package apps available for the user account, Assigned Access generates the deny list. This list will exclude the default allowed inbox package apps which are critical for the system to function, and then exclude the allowed packages that enterprises defined in the Assigned Access configuration. If there are multiple apps within the same package, all these apps are excluded. This deny list is used to prevent the user from accessing the apps, which are currently available for the user but not in the allowed list.

Note:

Assigned access multi-app mode doesn't block the enterprises or the users from installing UWP apps. When a new UWP app is installed during the current Assigned Access user session, this app won't be in the deny list. When the user signs out and signs in back next time, it will be included in the deny list. If this is an enterprise-deployed line-of-business app and you want to allow it to run, update the Assigned Access configuration to include it in the allowed app list.

For desktop apps,

1. Default rule is to allow all users to launch the desktop programs signed with Microsoft Certificate in order for the system to boot and function. The rule also allows the admin user group to launch all desktop programs. 2. There's a predefined inbox desktop app deny list for the Assigned Access user account, and this deny list is adjusted based on the desktop app allow list that you defined in the multi-app configuration.

3. Enterprise-defined allowed desktop apps are added in the AppLocker allow list.
-->

<!--

# Guidelines for choosing an app for Assigned Access (kiosk experience)

Use Assigned Access to restrict users to use only one application, so that the device acts like a kiosk. Administrators can use Assigned Access to restrict a selected user account to access a single Windows app. You can choose almost any Windows app for assigned access; however, some apps may not provide a good user experience.

The following guidelines may help you choose an appropriate Windows app for your Assigned Access experience.

## General guidelines

- Windows apps must be provisioned or installed for the Assigned Access account before they can be selected as the Assigned Access app. [Learn how to provision and install apps](/windows/client-management/mdm/enterprise-app-management#install_your_apps).
- Updating a Windows app can sometimes change the Application User Model ID (AUMID) of the app. If this change happens, you must update the Assigned Access settings to launch the updated app, because Assigned Access uses the AUMID to determine which app to launch.
- Apps that are generated using the [Desktop App Converter (Desktop Bridge)](/windows/uwp/porting/desktop-to-uwp-run-desktop-app-converter) can't be used as kiosk apps.

## Guidelines for Windows apps that launch other apps

Some apps can launch other apps. Assigned access prevents Windows apps from launching other apps.

Avoid selecting Windows apps that are designed to launch other apps as part of their core functionality.

## Guidelines for web browsers

Microsoft Edge includes support for kiosk mode. [Learn how to deploy Microsoft Edge kiosk mode.](/microsoft-edge/deploy/microsoft-edge-kiosk-mode-deploy)

In Windows client, you can install the **Kiosk Browser** app from Microsoft to use as your kiosk app. For digital signage scenarios, you can configure **Kiosk Browser** to navigate to a URL and show only that content -- no navigation buttons, no address bar, etc. For kiosk scenarios, you can configure more settings, such as allowed and blocked URLs, navigation buttons, and end session buttons. For example, you could configure your kiosk to show the online catalog for your store, where customers can navigate between departments and items, but aren't allowed to go to a competitor's website.

>[!NOTE]
>Kiosk Browser supports a single tab. If a website has links that open a new tab, those links will not work with Kiosk Browser. Kiosk Browser does not support .pdfs.
>
>Kiosk Browser can't access intranet websites.

**Kiosk Browser** must be downloaded for offline licensing using Microsoft Store For Business. You can deploy **Kiosk Browser** to devices running Windows 10, version 1803 (Pro, Business, Enterprise, and Education) and Windows 11.

1. [Get **Kiosk Browser** in Microsoft Store for Business with offline license type.](/microsoft-store/acquire-apps-microsoft-store-for-business#acquire-apps)
1. [Deploy **Kiosk Browser** to kiosk devices.](/microsoft-store/distribute-offline-apps)
1. Configure policies using settings from the Policy Configuration Service Provider (CSP) for [KioskBrowser](/windows/client-management/mdm/policy-csp-kioskbrowser). These settings can be configured using your MDM service provider, or [in a provisioning package](../provisioning-packages/provisioning-create-package.md). In Windows Configuration Designer, the settings are located in **Policies > KioskBrowser** when you select advanced provisioning for Windows desktop editions.

>[!NOTE]
>If you configure the kiosk using a provisioning package, you must apply the provisioning package after the device completes the out-of-box experience (OOBE).

### Kiosk Browser settings

| Kiosk Browser settings | Use this setting to |
|--|--|
| Blocked URL Exceptions | Specify URLs that people can navigate to, even though the URL is in your blocked URL list. You can use wildcards. <br><br>For example, if you want people to be limited to `http://contoso.com` only, you would add `.contoso.com` to blocked URL exception list and then block all other URLs. |
| Blocked URLs | Specify URLs that people can't navigate to. You can use wildcards. <br><br>If you want to limit people to a specific site, add `https://*` to the blocked URL list, and then specify the site to be allowed in the blocked URL exceptions list. |
| Default URL | Specify the URL that Kiosk Browser will open with. **Tip!** Make sure your blocked URLs don't include your default URL. |
| Enable End Session Button | Show a button in Kiosk Browser that people can use to reset the browser. End Session will clear all browsing data and navigate back to the default URL. |
| Enable Home Button | Show a Home button in Kiosk Browser. Home will return the browser to the default URL. |
| Enable Navigation Buttons | Show forward and back buttons in Kiosk Browser. |
| Restart on Idle Time | Specify when Kiosk Browser should restart in a fresh state after an amount of idle time since the last user interaction. |

To configure multiple URLs for **Blocked URL Exceptions** or **Blocked URLs** in Windows Configuration Designer:

1. Create the provisioning package. When ready to export, close the project in Windows Configuration Designer
1. Open the customizations.xml file in the project folder (e.g C:\Users\name\Documents\Windows Imaging and Configuration Designer (WICD)\Project_18)
1. Insert the null character string in between each URL (e.g www.bing.com`&#xF000;`www.contoso.com)
1. Save the XML file
1. Open the project again in Windows Configuration Designer
1. Export the package. Ensure you do not revisit the created policies under Kiosk Browser or else the null character will be removed

> [!TIP]
>
> To enable the **End Session** button for Kiosk Browser in Intune, you must [create a custom OMA-URI policy](/intune/custom-settings-windows-10) with the following information:
>
> - OMA-URI: ./Vendor/MSFT/Policy/Config/KioskBrowser/EnableEndSessionButton
> - Data type: Integer
> - Value: 1

#### Rules for URLs in Kiosk Browser settings

Kiosk Browser filtering rules are based on the [Chromium Project](https://www.chromium.org/Home).

URLs can include:

- A valid port value from 1 to 65,535.
- The path to the resource.
- Query parameters.

More guidelines for URLs:

- If a period precedes the host, the policy filters exact host matches only
- You can't use user:pass fields
- When both blocked URL and blocked URL exceptions apply with the same path length, the exception takes precedence
- The policy searches wildcards (*) last
- The optional query is a set of key-value and key-only tokens delimited by '&'
- Key-value tokens are separated by '='
- A query token can optionally end with a '*' to indicate prefix match. Token order is ignored during matching

### Examples of blocked URLs and exceptions

The following table describes the results for different combinations of blocked URLs and blocked URL exceptions.

| Blocked URL rule | Block URL exception rule | Result |
|--|--|--|
| `*` | `contoso.com`<br>`fabrikam.com` | All requests are blocked unless it's to contoso.com, fabrikam.com, or any of their subdomains. |
| `contoso.com` | `mail.contoso.com`<br>`.contoso.com`<br>`.www.contoso.com` | Block all requests to contoso.com, except for the main page and its mail subdomain. |
| `youtube.com` | `youtube.com/watch?v=v1`<br>`youtube.com/watch?v=v2` | Blocks all access to youtube.com except for the specified videos (v1 and v2). |

The following table gives examples for blocked URLs.

| Entry | Result |
|--|--|
| `contoso.com` | Blocks all requests to contoso.com, www.contoso.com, and sub.www.contoso.com |
| `https://*` | Blocks all HTTPS requests to any domain. |
| `mail.contoso.com` | Blocks requests to mail.contoso.com but not to www.contoso.com or contoso.com |
| `.contoso.com` | Blocks contoso.com but not its subdomains, like subdomain.contoso.com. |
| `.www.contoso.com` | Blocks www.contoso.com but not its subdomains. |
| `*` | Blocks all requests except for URLs in the Blocked URL Exceptions list. |
| `*:8080` | Blocks all requests to port 8080. |
| `contoso.com/stuff` | Blocks all requests to contoso.com/stuff and its subdomains. |
| `192.168.1.2` | Blocks requests to 192.168.1.1. |
| `youtube.com/watch?v=V1` | Blocks YouTube video with id V1. |

### Other browsers

You can create your own web browser Windows app by using the WebView class. Learn more about developing your own web browser app:

- [Creating your own browser with HTML and JavaScript](https://blogs.windows.com/msedgedev/2015/08/27/creating-your-own-browser-with-html-and-javascript/)
- [WebView class](/uwp/api/Windows.UI.Xaml.Controls.WebView)
- [A web browser built with JavaScript as a Windows app](https://github.com/MicrosoftEdge/JSBrowser/tree/v1.0)

## Secure your information

Avoid selecting Windows apps that may expose the information you don't want to show in your kiosk, since kiosk usually means anonymous access and locates in a public setting like a shopping mall. For example, an app that has a file picker allows the user to gain access to files and folders on the user's system, avoid selecting these types of apps if they provide unnecessary data access.

## App configuration

Some apps may require more configurations before they can be used appropriately in assigned access. For example, Microsoft OneNote requires you to set up a Microsoft account for the Assigned Access user account before OneNote will open in assigned access.

Check the guidelines published by your selected app and set up accordingly.

## Develop your kiosk app

Assigned access in Windows client uses the new lock framework. When an Assigned Access user signs in, the selected kiosk app is launched above the lock screen. The kiosk app is running as an above lock screen app.

Follow the [best practices guidance for developing a kiosk app for assigned access](/windows-hardware/drivers/partnerapps/create-a-kiosk-app-for-assigned-access).

## Test your Assigned Access experience

The above guidelines may help you select or develop an appropriate Windows app for your Assigned Access experience. Once you've selected your app, we recommend that you thoroughly test the Assigned Access experience to ensure that your device provides a good customer experience.

> [!NOTE]
> Deleting the multi-app configuration will remove the assigned access lockdown profiles associated with the users, but it can't revert all the enforced policies (for example, Start Layout).

> [!IMPORTANT]
> The kiosk profile is designed for public-facing kiosk devices. We recommend that you use a local, non-administrator account. If the device is connected to your company network, using a domain or Microsoft Entra account could potentially compromise confidential information.
