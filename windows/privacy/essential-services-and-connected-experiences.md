**Essential Services and Connected Experiences for Windows**

**Applies to**

-   Windows 11 and Windows 10, version 1903 and later.

Windows includes built-in apps, services, and features, that connect to the internet to provide enhanced experiences and additional capabilities. These are called “connected experiences”. For example, Microsoft Defender Antivirus is a connected experience that delivers updated protection to keep the devices in your organization secure.

When a connected experience is used, data is sent to and processed by Microsoft to provide that connected experience. This data is crucial because this information enables us to deliver these cloud-based connected experiences. We refer to this data as required service data. Required service data can include information related to the operation of the connected experience that is needed to keep the underlying service secure, up to date, and performing as expected. Required service data can also include information needed by a connected experience to perform its task, such as configuration information about Windows.

We give you the ability to choose which connected experiences you want to use in Windows, which then determines what required service data is sent to us.

Required service data is also collected and sent to Microsoft for essential services. Essential services are used to keep the product **secure, up to date, performing as expected** or are **integral** to how the product works. For example, the licensing service that confirms that you’re properly licensed to use Windows.

Although most essential services can be turned off by enterprise admins, we recommend that where applicable you consider hosting the services on-premises and carefully assess the impact of turning off remaining services. The following list describes the essential services and connected experiences that are available to you in Windows and provides links to further information about each one.

Note: The information in this article describes the most common connected experiences and essential services. We will continue to update our list of connected experiences over time as Windows evolves. **Windows** **Essential Services**

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
<td><p>The authentication service is required to enable sign in to work or school accounts. It validates a user’s identity and provides access to multiple apps and system components like OneDrive and activity history. Using a work or school account to sign in to Windows enables Microsoft to provide a consistent experience across your devices. If the authentication service is turned off, many apps and components may lose functionality and users may not be able to sign in.</p>
<p>To turn it off, see <a href="https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#12-microsoft-account">Microsoft Account</a></p></td>
</tr>
<tr class="even">
<td>Certificates</td>
<td><p>Certificates are digital files, stored on client devices, used to both encrypt data and verify the identity of an individual or organization. Trusted root certificates issued by a certification authority (CA), are stored in a certificate trust list (CTL). The Automatic Root Certificates Update mechanism contacts Windows Updates to update the CTL. If a new version of the CTL is identified, the list of trusted root certificates cached on the local device will be updated. Untrusted certificates are certificates that are publicly known to be fraudulent. Untrusted certificates are also stored in a list on the local device and updated by the Automatic Root Certificates Update mechanism.<br />
If automatic updates are turned off, applications and websites may stop working because they did not receive an updated root certificate that the application uses. Additionally, the list of untrusted certificates will no longer be updated, which increases the attack vector on the device.</p>
<p>To turn it off, see <a href="https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#1-automatic-root-certificates-update">Automatic Root Certificates Update</a></p></td>
</tr>
<tr class="odd">
<td>Services Configuration</td>
<td><p>Services Configuration is used by Windows components and apps, such as the telemetry service, to dynamically update their configuration. If you turn off this service, apps using this service may stop working.</p>
<p>To turn it off, see <u>Services</u> Services Configuration.</p></td>
</tr>
<tr class="even">
<td>Licensing</td>
<td><p>Licensing services are used for the activation of Windows, and apps purchased from the Microsoft Store. If you disable the Windows License Manager Service or the Software Protection Platform Service, it may prevent activation of genuine Windows as well as store applications.</p>
<p>To turn it off, see <a href="https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fwindows%2Fprivacy%2Fmanage-connections-from-windows-operating-system-components-to-microsoft-services%239-license-manager&amp;data=04%7C01%7Csuwani%40microsoft.com%7Cc9aa0b97613144fd7c7708d8fed425cc%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637539534480159603%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=dLgSLUMjZnrPQXeF2havS8jUg8ZtfKirkWqTMg3hwh8%3D&amp;reserved=0">License Manager</a> and <a href="https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fwindows%2Fprivacy%2Fmanage-connections-from-windows-operating-system-components-to-microsoft-services%2319-software-protection-platform&amp;data=04%7C01%7Csuwani%40microsoft.com%7Cc9aa0b97613144fd7c7708d8fed425cc%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637539534480169565%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=LPlTuyhJ%2FtrAJ72iprIq9yVe4QcGWiuFwHc3t721jvo%3D&amp;reserved=0">Software Protection Platform</a>.</p></td>
</tr>
<tr class="odd">
<td>Networking</td>
<td><p>Networking in Windows provides connectivity to and from your devices to the local intranet and internet. If you turn off networking, Windows devices will lose network connectivity.</p>
<p>To turn off Network Adapters, see <a href="https://docs.microsoft.com/en-us/powershell/module/netadapter/disable-netadapter?view=windowsserver2019-ps">Disable-NetAdapter</a></p></td>
</tr>
<tr class="even">
<td>Device setup</td>
<td><p>The first time a user sets up a new device, the Windows out-of-box experience (OOBE) guides the user through the steps to accept the license agreement, connect to the internet, sign in to (or sign up for) a Microsoft account, and takes care of other important tasks. Most settings can also be changed after setup is completed.</p>
<p>To customize the initial setup experience, see <a href="https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/customize-oobe">Customize Setup</a></p></td>
</tr>
<tr class="odd">
<td>Diagnostic Data</td>
<td><p>Microsoft collects diagnostic data including error data about your device with the help of the telemetry service. Diagnostic data gives every user a voice in the operating system’s development and ongoing improvement. It helps us understand how Windows behaves in the real world, focus on user priorities, find, and fix problems, and improve services. This data allows Microsoft to improve the Windows experience. Setting diagnostic data to off means important information to help fix issues and improve quality will not be available to Microsoft.</p>
<p>To turn it off, see <a href="https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#1816-feedback--diagnostics">Telemetry Services</a>.</p></td>
</tr>
<tr class="even">
<td>Update</td>
<td><p>Windows Update ensures devices are kept up to date and secure by downloading the latest updates and security patches for Windows. This service also enables users download apps from the Microsoft Store and keep them up to date.</p>
<p>Turning off Windows Update will potentially leave your Windows devices in a vulnerable state and more prone to security threats.</p>
<p>Other services like Device metadata retrieval and Font streaming also ensure that the content on your devices is kept up to date.</p>
<p>To turn it off, see <a href="https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#29-windows-update">Windows Update</a>, Device Metadata Retrieval and Font Streaming.</p></td>
</tr>
<tr class="odd">
<td>Microsoft Store</td>
<td><p>Microsoft Store enables users to purchase and download apps, games, and digital content. The Store also enables the developers of these apps to send toast, tile, badge, and raw updates from their own cloud service. This provides a mechanism to deliver new updates to store apps in a power-efficient and dependable way. The Store can also revoke malicious apps.</p>
<p>To turn it off, see <a href="https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#26-microsoft-store">Microsoft Store.</a></p></td>
</tr>
</tbody>
</table>

**Windows Connected Experiences**

<table>
<thead>
<tr class="header">
<th><strong>Connected Experience</strong></th>
<th><strong>Description</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Activity History</td>
<td><p>Activity History shows a history of activities a user has performed and can even synchronize activities across multiple devices for the same user.</p>
<p>Synchronization across devices only works when a user signs in with the same account.</p>
<p>To turn it off, see Activity History.</p></td>
</tr>
<tr class="even">
<td>Cloud Clipboard</td>
<td><p>Cloud Clipboard enables users to copy images and text across all Windows devices when they sign in with the same account. Users can paste from their clipboard history and also pin items.</p>
<p>To turn it off, see Cloud Clipboard</p></td>
</tr>
<tr class="odd">
<td>Date and Time</td>
<td><p>The Windows Time service is used to synchronize and maintain the most accurate date and time on your devices. It is installed by default and starts automatically on devices that are part of a domain. It can be started manually on other devices. If this service is stopped, date and time synchronization will be unavailable and any services that explicitly depend on it will fail to start.</p>
<p>To turn it off, see <a href="https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#3-date--time"><u>Date and Time</u></a></p></td>
</tr>
<tr class="even">
<td>Delivery optimization</td>
<td><p>Delivery Optimization is a cloud-managed, peer-to-peer client and a downloader service for Windows updates, upgrades, and applications to an organization's networked devices. Delivery Optimization allows devices to download updates from alternate sources (such as other peers on the network), in addition to Microsoft servers. This helps when you have a limited or unreliable Internet connection and reduces the bandwidth needed to keep all your organization's devices up to date.</p>
<p>If you have Delivery Optimization Peer-to-Peer option turned on, devices on your network may send and receive updates and apps to other devices on your local network, if you choose, or to devices on the Internet.</p>
<p>By default, devices running Windows will only use Delivery Optimization to get and receive updates for devices and apps on your local network.</p>
<p>To turn it off, see <a href="https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#28-delivery-optimization">Delivery Optimization.</a></p></td>
</tr>
<tr class="odd">
<td>Emojis and more</td>
<td><p>The Emoji and more menu allows users to insert a variety of content like emoji, kaomoji, GIFs,  symbols, and clipboard history. This connected experience is new in Windows 11</p>
<p>Placeholder – there needs to be a GP link here</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Find My Device</td>
<td><p>Find My Device is a feature that can help users locate their Windows device if it's lost or stolen. This feature only works if a Microsoft account is used to logon to the device, the user is an administrator on the device and when location is turned on for the device. Users can find their device by logging in to https://account.microsoft.com/devices under the Find My Device tab.</p>
<p>To turn it off, see <a href="https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#5-find-my-device">Find My Device.</a></p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Location services</td>
<td><p>The device location setting enables certain Windows features such as auto setting the time zone or Find My Device to function properly. When the device location setting is enabled, the Microsoft location service will use a combination of global positioning service (GPS), nearby wireless access points, cell towers, and IP address to determine the device’s location. Depending on the capabilities of the device, its location can be determined with varying degrees of accuracy and may in some cases be determined precisely.</p>
<p>To turn it off, see <a href="https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#182-location">Location Services.</a></p></td>
</tr>
<tr class="even">
<td>Microsoft Defender Antivirus</td>
<td><p>Microsoft Defender Antivirus provides cloud-delivered protection against new and emerging threats for the devices in your organization.</p>
<p>Turning off Microsoft Defender Antivirus will potentially leave your Windows devices in a vulnerable state and more prone to security threats.</p>
<p>To turn it off, see <a href="https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#24-windows-defender">Microsoft Defender</a> Antivirus.</p></td>
</tr>
<tr class="odd">
<td>Microsoft Defender SmartScreen</td>
<td><p>Microsoft Defender SmartScreen is a feature of Windows, Internet Explorer, and Microsoft Edge. It helps protect users against phishing or malware websites and applications, and the downloading of potentially malicious files.</p>
<p>Turning off Microsoft Defender SmartScreen means you cannot block a website or warn users they may be accessing a malicious site.</p>
<p>To turn it off, see <a href="https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#241-windows-defender-smartscreen">Microsoft Defender SmartScreen</a>.</p></td>
</tr>
<tr class="even">
<td>OneDrive</td>
<td><p>OneDrive is a cloud storage system that allows you to save your files and photos, and access them from any device, anywhere.</p>
<p>To turn off OneDrive, see OneDrive.</p></td>
</tr>
<tr class="odd">
<td>Troubleshooting Service</td>
<td><p>Windows troubleshooting service will automatically fix critical issues like corrupt settings that keep critical services from running, make adjustments to work with your hardware, or make other specific changes required for Windows to operate with the hardware, apps, and settings you’ve selected. In addition, it will recommend troubleshooting for other problems that aren’t critical to normal Windows operation but might impact your experience.</p>
<p>To turn it off, see Troubleshooting service</p></td>
</tr>
<tr class="even">
<td>Voice Typing</td>
<td>Voice typing (also referred to as Windows dictation in earlier versions of Windows) allows you to write text by speaking by using Microsoft’s online speech recognition technology. To turn it off, see Speech Recognition.</td>
</tr>
<tr class="odd">
<td>Windows backup</td>
<td><p>With settings synchronization is turned on, a user's settings are synced across all Windows devices when they sign in with the same account.</p>
<p>To turn it off, see Sync Your Settings</p></td>
</tr>
<tr class="even">
<td>Windows Dashboard Widgets</td>
<td><p>Windows Dashboard widget is a dynamic view that shows you personalized content like news, weather, a glimpse at your calendar and to-do list and your recent photos. It provides a glanceable view which allows users to be productive without needing to go to multiple apps or websites. This connected experience is new in Windows 11</p>
<p>Placeholder – there needs to be a GP link</p></td>
</tr>
<tr class="odd">
<td>Windows Insider Program</td>
<td><p>The Windows Insider Preview program lets you help shape the future of Windows, be part of the community, and get early access to builds of Windows. Once you've registered for the program, you can run Insider Preview builds on as many devices as you want, each in the channel of your choice. Learn how to join the Windows Insider program by visiting the program’s website.</p>
<p>To turn it off, see Windows Insider Program.</p></td>
</tr>
<tr class="even">
<td>Windows Search</td>
<td><p>Windows Search lets users use the search box on the taskbar to find what they are looking for, whether it’s on their device, in the cloud, or on the web. Windows Search can provide results for items from the device (including apps, settings, and files), the users account (including OneDrive, SharePoint, and other Microsoft services), and the internet.</p>
<p>To turn it off, see <a href="https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#21-cortana-and-search-group-policies">Windows Search</a>.</p></td>
</tr>
<tr class="odd">
<td>Windows Spotlight</td>
<td><p>Windows Spotlight displays new background images on the lock screen each day. Additionally, it provides feature suggestions, fun facts, and tips on the lock screen background.</p>
<p>Administrators can turn off Windows Spotlight features to prevent users from using the Windows Spotlight background.</p>
<p>To turn it off, see <a href="https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#25-windows-spotlight">Windows Spotlight.</a></p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
</tr>
</tbody>
</table>

**Edge Essential Services and Connected Experiences**

Windows ships with Microsoft Edge and Internet Explorer on Windows devices. Microsoft Edge is the default browser and is recommended for the best web browsing experience.

You can find details on all of Edge's connected experiences and essential services [here](https://docs.microsoft.com/en-us/microsoft-edge/privacy-whitepaper/).

To turn off specific Edge feature, see [Microsoft Edge](https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#13-microsoft-edge).

**IE Essential Services and Connected Experiences**

Internet Explorer shares many of the Windows essential services listed above. The following table provides more details on the essential services and connected experiences specific to Internet Explorer.

Note: Apart from ActiveX Filtering, which is an essential service, all other features listed below are connected experiences. To turn off specific connected experiences, see [Internet Explorer](https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#8-internet-explorer).

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
<td>Compatibility logging</td>
<td>This feature is designed for use by developers and IT professionals to determine the compatibility of their websites with Internet Explorer. It is disabled by default and needs to be enabled to start logging Internet Explorer events in the Windows Event Viewer. These events describe failures that might have happened on the site and can include information about specific controls and webpages that failed.</td>
</tr>
<tr class="even">
<td>Compatibility View</td>
<td>Compatibility View helps make websites designed for older browsers look better when viewed in Internet Explorer. The compatibility view setting allows you to choose whether an employee can fix website display problems they encounter while browsing.</td>
</tr>
<tr class="odd">
<td>Flip ahead</td>
<td>Flip ahead enables your users to flip through web content quickly by swiping across the page or by clicking forward. When flip ahead is turned on, web browsing history is periodically sent to Microsoft. If you turn off this setting your users will no longer be able swipe across a screen or click forward to go to the next pre-loaded page of a website.</td>
</tr>
<tr class="even">
<td>Web Slices</td>
<td>A Web Slice enables users to subscribe to and automatically receive updates to content directly within a Web page. Disabling the RSS Feeds setting will turn off background synchronization for feeds and Web Slices.</td>
</tr>
<tr class="odd">
<td>Accelerators</td>
<td><p>Accelerators are menu options in Internet Explorer that help automate common browser-related tasks. In Internet Explorer, when you right-click selected text, Accelerators appear in the list of available options.</p>
<p>For example, if you select a word, you can use the "Translate with Bing" Accelerator to obtain a translation of that word.</p></td>
</tr>
<tr class="even">
<td>Pinning websites to Start</td>
<td>When a user pins a website to the Start menu, it displays as a tile similar to the way apps are displayed. Like Microsoft Store apps, website tiles might display updates if the website has been designed to do so. For example, an online email website might send updates to the tile indicating how many new messages a user has.</td>
</tr>
</tbody>
</table>

**Related links**

[Manage connections from Windows operating system components to Microsoft services](https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services)

[Connected Experiences in Office.](https://docs.microsoft.com/en-us/deployoffice/privacy/connected-experiences)

[Essential Services in Office.](https://docs.microsoft.com/en-us/deployoffice/privacy/essential-services)

To view endpoints for Windows 10 Enterprise, see:

-   

-   [Manage connection endpoints for Windows 10, version 20H2](https://docs.microsoft.com/en-us/windows/privacy/manage-windows-20h2-endpoints)[Manage connection endpoints for Windows 10, version 1909](https://docs.microsoft.com/en-us/windows/privacy/manage-windows-1909-endpoints)

-   [Manage connection endpoints for Windows 10, version 1903](https://docs.microsoft.com/en-us/windows/privacy/manage-windows-1903-endpoints)

-   [Manage connection endpoints for Windows 10, version 1809](https://docs.microsoft.com/en-us/windows/privacy/manage-windows-1809-endpoints)

-   [Manage connection endpoints for Windows 10, version 1803](https://docs.microsoft.com/en-us/windows/privacy/manage-windows-1803-endpoints)

-   [Manage connection endpoints for Windows 10, version 1709](https://docs.microsoft.com/en-us/windows/privacy/manage-windows-1709-endpoints)

To view endpoints for non-Enterprise Windows 10 editions, see:

-   Windows 10, version 20H2, connection endpoints for non-Enterprise editions

-   [Windows 10, version 1909, connection endpoints for non-Enterprise editions](https://docs.microsoft.com/en-us/windows/privacy/windows-endpoints-1909-non-enterprise-editions)

-   [Windows 10, version 1903, connection endpoints for non-Enterprise editions](https://docs.microsoft.com/en-us/windows/privacy/windows-endpoints-1903-non-enterprise-editions)

-   [Windows 10, version 1809, connection endpoints for non-Enterprise editions](https://docs.microsoft.com/en-us/windows/privacy/windows-endpoints-1809-non-enterprise-editions)

-   [Windows 10, version 1803, connection endpoints for non-Enterprise editions](https://docs.microsoft.com/en-us/windows/privacy/windows-endpoints-1803-non-enterprise-editions)

-   [Windows 10, version 1709, connection endpoints for non-Enterprise editions](https://docs.microsoft.com/en-us/windows/privacy/windows-endpoints-1709-non-enterprise-editions)
