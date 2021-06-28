---
title: Essential Services and Connected Experiences for Windows 10
description: This article provides information to help IT on the essential services and connected experiences for Windows 10.
keywords: privacy, GDPR, compliance
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: high
audience: ITPro
author: siosulli
ms.author: siosulli
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 6/28/2021
---

# Essential Services and Connected Experiences for Windows 10

Applies to:

- Windows 10, version 1903 and later

Windows includes features that connect to the internet to provide enhanced experiences and additional service based capabilities. These are called “connected experiences”. For example, Microsoft Defender Antivirus is a connected experience that delivers updated protection to keep the devices in your organization secure. Required service data is collected to enables us provide these cloud-based connected experiences and it's crucial to help keep them secure, up to date and performing properly. Windows diagnostic data is separate from required service data.For more information on Windows diagnostic data see [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md).

Connected experiences that are critical to the proper functioning of Windows are called “essential services”. For example, the Windows licensing service confirms that you are properly licensed to use Windows.

While you can control many of the connected experiences that are available to you and your organization, we recommend that you carefully assess the impact of turning off essential services.

Windows connected experiences and essential services transfer data to Microsoft network endpoints. The article [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md) provides details about the different ways to control traffic to these endpoints. Where applicable, each connected experience or essential service includes a link to the specific details on how to control that traffic.

>[!Note]
>The information in this article describes the most common connected experiences and essential services. We will continue to update our list of connected experiences over time as Windows evolves.

## Windows 10 Essential Services

<table>
<thead>
<tr class="header">
<th><strong>Essential Service</strong></th>
<th><strong>Description</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Authentication</td>
<td><p>The authentication service is required to enable sign in to work or school accounts. It validates a user’s identity and provides access to multiple apps and system components like OneDrive and activity history. Using a work or school account to sign in to Windows 10 enables Microsoft to provide a consistent experience across your devices. If the authentication service is turned off, many apps and components may lose functionality and users may not be able to sign in.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#12-microsoft-account">Microsoft Account</a></p></td>
</tr>
<tr class="even">
<td>Certificates</td>
<td><p>Certificates are digital files, stored on client devices, used to both encrypt data and verify the identity of an individual or organization. Trusted root certificates issued by a certification authority (CA), are stored in a certificate trust list (CTL). The Automatic Root Certificates Update mechanism contacts Windows Updates to update the CTL. If a new version of the CTL is identified, the list of trusted root certificates cached on the local device will be updated. Untrusted certificates are certificates that are publicly known to be fraudulent. Untrusted certificates are also stored in a list on the local device and updated by the Automatic Root Certificates Update mechanism.<br />
If automatic updates are turned off, applications and websites may stop working because they did not receive an updated root certificate that the application uses. Additionally, the list of untrusted certificates will no longer be updated, which increases the attack vector on the device.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#1-automatic-root-certificates-update">Automatic Root Certificates Update</a></p></td>
</tr>
<tr class="odd">
<td><del>Configuration Service</del> Services Configuration</td>
<td><p>Services Configuration is used by Windows components and apps, such as the telemetry service, to dynamically update their configuration. If you turn off this service, apps using this service may stop working.</p>
<p>To turn it off, see <u>Services</u> <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#1816-feedback--diagnostics">Configuration</a>.</p></td>
</tr>
<tr class="even">
<td>Date and Time</td>
<td><p>The Windows Time service is used to synchronize and maintain the most accurate date and time on your devices. It is installed by default and starts automatically on devices that are part of a domain. It can be started manually on other devices. If this service is stopped, date and time synchronization will be unavailable and any services that explicitly depend on it will fail to start.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#3-date--time"><u>Date and Time</u></a></p></td>
</tr>
<tr class="odd">
<td>Licensing</td>
<td><p>Licensing services are used for the activation of Windows, and apps purchased from the Microsoft Store. If you disable the Windows License Manager Service or the Software Protection Platform Service, it may prevent activation of genuine Windows as well as store applications.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#9-license-manager">License Manager</a> and <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#19-software-protection-platform">Software Protection Platform</a>.</p></td>
</tr>
<tr class="even">
<td>Networking</td>
<td><p>Networking in Windows provides connectivity to and from your devices to the local intranet and internet. If you turn off networking, Windows 10 devices will lose network connectivity.</p>
<p>To turn off Network Adapters, see <a href="/powershell/module/netadapter/disable-netadapter?view=windowsserver2019-ps&preserve-view=true">Disable-NetAdapter</a></p></td>
</tr
<tr class="odd">
<td><del>Setup Service</del> Device setup</td>
<td><p>The first time a user sets up a new device, the Windows out-of-box experience (OOBE) guides the user through the steps to accept the license agreement, connect to the internet, sign in to (or sign up for) a Microsoft account, and takes care of other important tasks. Most settings can also be changed after setup is completed.</p>
<p>To customize the initial setup experience, see <a href="/windows-hardware/customize/desktop/customize-oobe.md">Customize Setup</a></p></td>
</tr>
<tr class="even">
<td>Telemetry</td>
<td><p>Microsoft collects diagnostic data including error data about your device with the help of the telemetry service. Diagnostic data gives every user a voice in the operating system’s development and ongoing improvement. It helps us understand how Windows 10 behaves in the real world, focus on user priorities, find, and fix problems, and improve services. This data allows Microsoft to improve the Windows experience. Setting diagnostic data to off means important information to help fix issues and improve quality will not be available to Microsoft.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#1816-feedback--diagnostics">Telemetry Services</a>.</p></td>
</tr>
<tr class="odd">
<td>Windows Update</td>
<td><p>Windows Update ensures devices are kept up to date and secure by downloading the latest updates and security patches for Windows. This service also enables users download apps from the Microsoft Store and keep them up to date.</p>
<p>Turning off Windows Update will potentially leave your Windows devices in a vulnerable state and more prone to security threats.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#29-windows-update">Windows Update</a></p></td>
</tr>
</tbody>
</table>

## Windows 10 Connected Experiences

<table>
<thead>
<tr class="header">
<th><strong>Connected Experience</strong></th>
<th><strong>Description</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Device metadata retrieval</td>
<td><p>When Windows 10 detects a new device, it queries an online service called the Windows Metadata and Internet Services (WMIS) for a metadata package for the device. If a device metadata package is available on WMIS, the Device Metadata Retrieval Client (DMRC) that runs on the local device downloads and installs the package.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#4-device-metadata-retrieval">Device Metadata Retrieval</a>.</p></td>
</tr>
<tr class="even">
<td>Delivery optimization</td>
<td><p>Delivery Optimization is a cloud-managed, peer-to-peer client and a downloader service for Windows updates, upgrades, and applications to an organization's networked devices. Delivery Optimization allows devices to download updates from alternate sources (such as other peers on the network), in addition to Microsoft servers. This helps when you have a limited or unreliable Internet connection and reduces the bandwidth needed to keep all your organization's devices up to date.</p>
<p>If you have Delivery Optimization Peer-to-Peer option turned on, devices on your network may send and receive updates and apps to other devices on your local network, if you choose, or to devices on the Internet.</p>
<p>By default, devices running Windows 10 will only use Delivery Optimization to get and receive updates for devices and apps on your local network.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#28-delivery-optimization">Delivery Optimization.</a></p></td>
</tr>
<tr class="odd">
<td>Speech Recognition</td>
<td><p>Microsoft provides a cloud-based (online) speech recognition technology that allows users to write text by speaking or interact with this system using your voice. It functions by converting speech audio into transcribed text. Turning on the online speech recognition setting enables the use of Microsoft cloud-based speech recognition in Cortana, the Mixed Reality Portal, dictation in Windows from the software keyboard, supported Microsoft Store apps, and in other parts of Windows 10.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#186-speech">Speech</a> Recognition.</p></td>
</tr>
<tr class="even">
<td>Find My Device</td>
<td><p>Find My Device is a feature that can help users locate their Windows 10 device if it's lost or stolen. This feature only works if a Microsoft account is used to logon to the device, the user is an administrator on the device and when location is turned on for the device. Users can find their device by logging in to https://account.microsoft.com/devices under the Find My Device tab.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#5-find-my-device">Find My Device.</a></p></td>
</tr>
<tr class="odd">
<td>Windows Insider Program</td>
<td><p>The Windows Insider Preview program lets you help shape the future of Windows, be part of the community, and get early access to releases of Windows 10. Once you've registered for the program, you can run Insider Preview builds on as many devices as you want, each in the channel of your choice. Learn how to join the Windows Insider program by visiting the program’s <a href="https://insider.windows.com/">website</a>.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#7-insider-preview-builds">Windows</a> Insider Program.</p></td>
</tr>
<tr class="even">
<td>Location services</td>
<td><p>The device location setting enables certain Windows features such as auto setting the time zone or Find My Device to function properly. When the device location setting is enabled, the Microsoft location service will use a combination of global positioning service (GPS), nearby wireless access points, cell towers, and IP address to determine the device’s location. Depending on the capabilities of the device, its location can be determined with varying degrees of accuracy and may in some cases be determined precisely.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#182-location">Location Services.</a></p></td>
</tr>
<tr class="odd">
<td>Microsoft Store</td>
<td><p>Microsoft Store enables users to purchase and download apps, games, and digital content. The Store also enables the developers of these apps to send toast, tile, badge, and raw updates from their own cloud service. This provides a mechanism to deliver new updates to store apps in a power-efficient and dependable way. The Store can also revoke malicious apps.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#26-microsoft-store">Microsoft Store.</a></p></td>
</tr>
<tr class="even">
<td>Microsoft Defender Antivirus</td>
<td><p>Microsoft Defender Antivirus provides cloud-delivered protection against new and emerging threats for the devices in your organization.</p>
<p>Turning off Microsoft Defender Antivirus will potentially leave your Windows devices in a vulnerable state and more prone to security threats.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#24-windows-defender">Microsoft Defender</a> Antivirus.</p></td>
</tr>
<tr class="odd">
<td>Microsoft Defender SmartScreen</td>
<td><p>Microsoft Defender SmartScreen is a feature of Windows, Internet Explorer, and Microsoft Edge. It helps protect users against phishing or malware websites and applications, and the downloading of potentially malicious files.</p>
<p>Turning off Microsoft Defender SmartScreen means you cannot block a website or warn users they may be accessing a malicious site.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#241-windows-defender-smartscreen">Microsoft Defender SmartScreen</a>.</p></td>
</tr>
<tr class="even">
<td>Windows Search</td>
<td><p>Windows Search lets users use the search box on the taskbar to find what they are looking for, whether it’s on their device, in the cloud, or on the web. Windows Search can provide results for items from the device (including apps, settings, and files), the users account(including OneDrive, SharePoint, and other Microsoft services), and the internet.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#21-cortana-and-search-group-policies">Windows Search</a>.</p></td>
</tr>
<tr class="odd">
<td>Windows Spotlight</td>
<td><p>Windows Spotlight displays new background images on the lock screen each day. Additionally, it provides feature suggestions, fun facts, and tips on the lock screen background.</p>
<p>Administrators can turn off Windows Spotlight features to prevent users from using the Windows Spotlight background.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#25-windows-spotlight">Windows Spotlight.</a></p></td>
</tr>
<tr class="even">
<td>Activity History</td>
<td><p>Activity History shows a history of activities a user has performed and can even synchronize activities across multiple devices for the same user.</p>
<p>Synchronization across devices only works when a user signs in with the same account.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-act-history">Activity History.</a></p></td>
</tr>
<tr class="odd">
<td>Settings Synchronization</td>
<td><p>With settings synchronization is turned on, a user's settings are synced across all Windows 10 devices when they sign in with the same account.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#21-sync-your-settings">Sync Your Settings</a></p></td>
</tr>
<tr class="even">
<td>Cloud Clipboard</td>
<td><p>Cloud Clipboard enables users to copy images and text across all Windows 10 devices when they sign in with the same account. Users can paste from their clipboard history and also pin items.</p>
<p>To turn it off, see <a href="/windows/client-management/mdm/policy-csp-privacy.md#privacy-allowcrossdeviceclipboard">Cloud Clipboard</a></p></td>
</tr>
<tr class="odd">
<td>OneDrive</td>
<td><p>OneDrive is a cloud storage system that allows you to save your files and photos, and access them from any device, anywhere.</p>
<p>To turn off OneDrive, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#16-onedrive">OneDrive</a>.</p></td>
</tr>
<tr class="even">
<td>Font Streaming</td>
<td><p>Font Streaming enables Windows 10 devices to download fonts that are included in Windows but that are not stored on the local device on demand.</p>
<p>To turn it off, see <a href="manage-connections-from-windows-operating-system-components-to-microsoft-services.md#6-font-streaming">Font Streaming</a>.</p></td>
</tr>
</tbody>
</table>

## Edge Essential Services and Connected Experiences

Windows ships with Microsoft Edge and Internet Explorer on Windows 10 devices. Microsoft Edge is the default browser and is recommended for the best web browsing experience.

You can find details on all of Edge's connected experiences and essential services [here](/microsoft-edge/privacy-whitepaper/).

To turn off specific Edge feature, see [Microsoft Edge](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#13-microsoft-edge).

## IE Essential Services and Connected Experiences

Internet Explorer shares many of the Windows essential services listed above. The following table provides more details on the essential services and connected experiences specific to Internet Explorer.

Note: Apart from ActiveX Filtering, which is an essential service, all other features listed below are connected experiences. To turn off specific connected experiences, see [Internet Explorer](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#8-internet-explorer).

<table>
<thead>
<tr class="header">
<th><strong>Connected Experiences</strong></th>
<th><strong>Description</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>ActiveX Filtering</td>
<td><p>ActiveX controls are small apps that allow websites to provide content such as videos and games, and let users interact with controls like toolbars and stock tickers. However, these apps can sometimes malfunction, and in some cases, they might be used to collect information from user devices, install software without a user's agreement, or be used to control a device remotely without user's permission.</p>
<p>ActiveX Filtering in Internet Explorer prevents sites from installing and using these apps. This can help keep users safer as they browse, but it can also affect the user experience of certain sites as interactive content might not work when ActiveX Filtering is on.</p>
<p>To further enhance security, Internet Explorer also allows you to block out-of-date ActiveX controls.</p></td>
</tr>
<tr class="even">
<td>Suggested Sites</td>
<td>Suggested Sites is an online experience that recommends websites, images, or videos a user might be interested in. When Suggested Sites is turned on, a user’s web browsing history is periodically sent to Microsoft.</td>
</tr>
<tr class="odd">
<td>Address Bar and Search suggestions</td>
<td>With search suggestions enabled, users will be offered suggested search terms as they type in the Address Bar. As users type information it will be sent to the default search provider.</td>
</tr>
<tr class="even">
<td>Auto-complete feature for web addresses</td>
<td>The auto-complete feature suggests possible matches when users are typing web addresses in the browser address bar.</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Compatibility logging</td>
<td>This feature is designed for use by developers and IT professionals to determine the compatibility of their websites with Internet Explorer. It is disabled by default and needs to be enabled to start logging Internet Explorer events in the Windows Event Viewer. These events describe failures that might have happened on the site and can include information about specific controls and webpages that failed.</td>
</tr>
<tr class="odd">
<td>Compatibility View</td>
<td>Compatibility View helps make websites designed for older browsers look better when viewed in Internet Explorer. The compatibility view setting allows you to choose whether an employee can fix website display problems they encounter while browsing.</td>
</tr>
<tr class="even">
<td>Flip ahead</td>
<td>Flip ahead enables your users to flip through web content quickly by swiping across the page or by clicking forward. When flip ahead is turned on, web browsing history is periodically sent to Microsoft. If you turn off this setting your users will no longer be able swipe across a screen or click forward to go to the next pre-loaded page of a website.</td>
</tr>
<tr class="odd">
<td>Web Slices</td>
<td>A Web Slice enables users to subscribe to and automatically receive updates to content directly within a Web page. Disabling the RSS Feeds setting will turn off background synchronization for feeds and Web Slices.</td>
</tr>
<tr class="even">
<td>Accelerators</td>
<td><p>Accelerators are menu options in Internet Explorer that help automate common browser-related tasks. In Internet Explorer, when you right-click selected text, Accelerators appear in the list of available options.</p>
<p>For example, if you select a word, you can use the "Translate with Bing" Accelerator to obtain a translation of that word.</p></td>
</tr>
<tr class="odd">
<td>Pinning websites to Start</td>
<td>When a user pins a website to the Start menu, it displays as a tile similar to the way apps are displayed. Like Microsoft Store apps, website tiles might display updates if the website has been designed to do so. For example, an online email website might send updates to the tile indicating how many new messages a user has.</td>
</tr>
</tbody>
</table>

## Related links

- [Manage connections from Windows 10 operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md)

- [Connected Experiences in Office.](/deployoffice/privacy/connected-experiences.md)

- [Essential Services in Office.](/deployoffice/privacy/essential-services.md)

## Other Windows 10 editions

To view endpoints for Windows 10 Enterprise, see:

- [Manage connection endpoints for Windows 10, version 20H2](manage-windows-20h2-endpoints.md)
- [Manage connection endpoints for Windows 10, version 2004](manage-windows-2004-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1909](manage-windows-1909-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1903](manage-windows-1903-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1809](manage-windows-1809-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1803](manage-windows-1803-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1709](manage-windows-1709-endpoints.md)

To view endpoints for non-Enterprise Windows 10 editions, see:

- [Windows 10, version 20H2, connection endpoints for non-Enterprise editions](manage-windows-20h2-endpoints.md)
- [Windows 10, version 2004, connection endpoints for non-Enterprise editions](windows-endpoints-2004-non-enterprise-editions.md)
- [Windows 10, version 1909, connection endpoints for non-Enterprise editions](windows-endpoints-1909-non-enterprise-editions.md)
- [Windows 10, version 1903, connection endpoints for non-Enterprise editions](windows-endpoints-1903-non-enterprise-editions.md)
- [Windows 10, version 1809, connection endpoints for non-Enterprise editions](windows-endpoints-1809-non-enterprise-editions.md)
- [Windows 10, version 1803, connection endpoints for non-Enterprise editions](windows-endpoints-1803-non-enterprise-editions.md)
- [Windows 10, version 1709, connection endpoints for non-Enterprise editions](windows-endpoints-1709-non-enterprise-editions.md)
