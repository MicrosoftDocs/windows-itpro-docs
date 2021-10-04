---
title: Essential services and connected experiences for Windows
description: Explains what the essential services and connected experiences are for Windows
keywords: privacy, manage connections to Microsoft
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: high
audience: ITPro
author: siosulli
ms.author: dansimp
manager: dansimp
ms.date: 12/1/2020
---

# Essential services and connected experiences for Windows

**Applies to**

- Windows 11
- Windows 10, version 1903 and later

Windows includes built-in apps, services, and features, that connect to the internet to provide enhanced experiences and additional capabilities. These are called “connected experiences”. For example, Microsoft Defender Antivirus is a connected experience that delivers updated protection to keep the devices in your organization secure.

When a connected experience is used, data is sent to and processed by Microsoft to provide that connected experience. This data is crucial because this information enables us to deliver these cloud-based connected experiences. We refer to this data as required service data. Required service data can include information related to the operation of the connected experience that is needed to keep the underlying service secure, up to date, and performing as expected. Required service data can also include information needed by a connected experience to perform its task, such as configuration information about Windows.

We give you the ability to choose which connected experiences you want to use in Windows, which then determines what required service data is sent to us.

Required service data is also collected and sent to Microsoft for essential services. Essential services are used to keep the product **secure, up to date, performing as expected** or are **integral** to how the product works. For example, the licensing service that confirms that you’re properly licensed to use Windows.

Although most essential services can be turned off by enterprise admins, we recommend that where applicable you consider hosting the services on-premises and carefully assess the impact of turning off remaining services. The following list describes the essential services and connected experiences that are available to you in Windows and provides links to further information about each one.

> [!NOTE]
> The information in this article describes the most common connected experiences and essential services. We will continue to update our list of connected experiences over time as Windows evolves.

## Windows essential services

| **Essential service** | **Description** |
| --- | --- |
|Authentication|The authentication service is required to enable sign in to work or school accounts. It validates a user’s identity and provides access to multiple apps and system components like OneDrive and activity history. Using a work or school account to sign in to Windows enables Microsoft to provide a consistent experience across your devices. If the authentication service is turned off, many apps and components may lose functionality and users may not be able to sign in.</br>To turn it off, see [Microsoft Account](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#12-microsoft-account)
|Certificates|Certificates are digital files, stored on client devices, used to both encrypt data and verify the identity of an individual or organization. Trusted root certificates issued by a certification authority (CA), are stored in a certificate trust list (CTL). The Automatic Root Certificates Update mechanism contacts Windows Updates to update the CTL. If a new version of the CTL is identified, the list of trusted root certificates cached on the local device will be updated. Untrusted certificates are certificates that are publicly known to be fraudulent. Untrusted certificates are also stored in a list on the local device and updated by the Automatic Root Certificates Update mechanism.</br> If automatic updates are turned off, applications and websites may stop working because they did not receive an updated root certificate that the application uses. Additionally, the list of untrusted certificates will no longer be updated, which increases the attack vector on the device.</br>To turn it off, see [Automatic Root Certificates Update](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#automatic-root-certificates-update)

## Windows connected experiences

| **Connected experience* | **Description** |
| --- | --- |
|Activity History|Activity History shows a history of activities a user has performed and can even synchronize activities across multiple devices for the same user. Synchronization across devices only works when a user signs in with the same account.</br>To turn it off, see [Activity History](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#1822-activity-history)
|Cloud Clipboard|Cloud Clipboard enables users to copy images and text across all Windows 10 devices when they sign in with the same account.  Users can paste from their clipboard history and also pin items.</br>To turn it off, see [Cloud Clipboard](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#30-cloud-clipboard)

## Edge essential services and connected experiences

Windows ships with Microsoft Edge and Internet Explorer on Windows 10 devices. Microsoft Edge is the default browser and is recommended for the best web browsing experience.</br> You can find details on all of Edge's connected experiences and essential services [here](/microsoft-edge/privacy-whitepaper).</br> To turn off specific Edge feature, see [Microsoft Edge](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#13-microsoft-edge).

## IE essential services and connected experiences

Internet Explorer shares many of the Windows essential services listed above. The following table provides more details on the essential services and connected experiences specific to Internet Explorer.

> [!NOTE]
> Apart from ActiveX Filtering, which is an essential service, all other features listed below are connected experiences.</br> To turn off specific connected experiences, see [Internet Explorer](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#8-internet-explorer).

| **Connected experience* | **Description** |
| --- | --- |
|ActiveX Filtering|ActiveX controls are small apps that allow websites to provide content such as videos and games, and let users interact with controls like toolbars and stock tickers. However, these apps can sometimes malfunction, and in some cases, they might be used to collect information from user devices, install software without a user's agreement, or be used to control a device remotely without user's permission.</br> ActiveX Filtering in Internet Explorer prevents sites from installing and using these apps. This can help keep users safer as they browse, but it can also affect the user experience of certain sites as interactive content might not work when ActiveX Filtering is on.</br> To further enhance security, Internet Explorer also allows you to block out-of-date ActiveX controls.
|Suggested Sites|Suggested Sites is an online experience that recommends websites, images, or videos a user might be interested in. When Suggested Sites is turned on, a user’s web browsing history is periodically sent to Microsoft.|

## Related links

- [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md)
- [Connected Experiences in Office](/deployoffice/privacy/connected-experiences.md)
- [Essential Services in Office](/deployoffice/privacy/essential-services.md)

To view endpoints for Windows 10 Enterprise, see:

- [Manage connection endpoints for Windows 10, version 20H2](manage-windows-20h2-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1909](manage-windows-1909-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1903](manage-windows-1903-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1809](manage-windows-1809-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1803](manage-windows-1803-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1709](manage-windows-1709-endpoints.md)

To view endpoints for non-Enterprise Windows 10 editions, see:

- [Windows 10, version 20H2, connection endpoints for non-Enterprise editions](windows-endpoints-20H2-non-enterprise-editions.md)
- [Windows 10, version 1909, connection endpoints for non-Enterprise editions](windows-endpoints-1909-non-enterprise-editions.md)
- [Windows 10, version 1903, connection endpoints for non-Enterprise editions](windows-endpoints-1903-non-enterprise-editions.md)
- [Windows 10, version 1809, connection endpoints for non-Enterprise editions](windows-endpoints-1809-non-enterprise-editions.md)
- [Windows 10, version 1803, connection endpoints for non-Enterprise editions](windows-endpoints-1803-non-enterprise-editions.md)
- [Windows 10, version 1709, connection endpoints for non-Enterprise editions](windows-endpoints-1709-non-enterprise-editions.md)