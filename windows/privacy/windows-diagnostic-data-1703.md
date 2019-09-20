---
title: Windows 10 diagnostic data for the Full diagnostic data level (Windows 10)
description: Use this article to learn about the types of data that is collected the Full diagnostic data level.
keywords: privacy,Windows 10
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: high
audience: ITPro
author: dansimp
ms.author: dansimp
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 11/28/2017
ms.reviewer: 
---

# Windows 10 diagnostic data for the Full diagnostic data level

**Applies to:**
- Windows 10, version 1703

Microsoft collects Windows diagnostic data to keep Windows up-to-date, secure, and operating properly. It also helps us improve Windows and, for users who have turned on “tailored experiences”, can be used to provide more relevant tips and recommendations to tailor Microsoft products to the user’s needs.   This article describes all types diagnostic data collected by Windows at the Full diagnostic data level (inclusive of data collected at Basic), with comprehensive examples of data we collect per each type. For additional, detailed technical descriptions of Basic data items, see [Windows 10, version 1709 Basic level diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields.md) and [Windows 10, version 1703 Basic level diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1703.md).

The data covered in this article is grouped into the following categories:

-   Common Data (diagnostic header information)
-   Device, Connectivity, and Configuration data
-   Product and Service Usage data
-   Product and Service Performance data
-   Software Setup and Inventory data
-   Browsing History data
-   Inking, Typing, and Speech Utterance data

> [!NOTE]
> The majority of diagnostic data falls into the first four categories.

## Common data

Most diagnostic events contain a header of common data:

| Category Name | Examples |
| - | - |
| Common Data | Information that is added to most diagnostic events, if relevant and available:<br><ul><li>OS name, version, build, and [locale](https://msdn.microsoft.com/library/windows/desktop/dd318716.aspx)</li><li>User ID -- a unique identifier associated with the user's Microsoft Account (if one is used) or local account. The user's Microsoft Account identifier is not collected from devices configured to send Basic diagnostic data</li><li>Xbox UserID</li><li>Environment from which the event was logged -- Application ID of app or component that logged the event, Session GUID. Used to track events over a given period of time such the period an app is running or between boots of the OS.</li><li>The diagnostic event name, Event ID, [ETW](https://msdn.microsoft.com/library/windows/desktop/bb968803.aspx) opcode, version, schema signature, keywords, and flags</li><li>HTTP header information, including the IP address. This IP address is the source address that’s provided by the network packet header and received by the diagnostics ingestion service.</li><li>Various IDs that are used to correlate and sequence related events together.</li><li>Device ID. This is not the user provided device name, but an ID that is unique for that device.</li><li>Device class -- Desktop, Server, or Mobile</li><li>Event collection time</li><li>Diagnostic level --  Basic or Full, Sample level -- for sampled data, what sample level is this device opted into</li></ul> |

## ​Device, Connectivity, and Configuration data

This type of data includes details about the device, its configuration and connectivity capabilities, and status.

| Category Name |  Examples |
| - | - |
| Device properties | Information about the OS and device hardware, such as:<br><ul><li> OS - version name, Edition</li><li>Installation type, subscription status, and genuine OS status</li><li>Processor architecture, speed, number of cores, manufacturer, and model</li><li>OEM details --manufacturer, model, and serial number<li>Device identifier and Xbox serial number</li><li>Firmware/BIOS -- type, manufacturer, model, and version</li><li>Memory -- total memory, video memory, speed, and how much memory is available after the device has reserved memory</li><li>Storage -- total capacity and disk type</li><li>Battery -- charge capacity and InstantOn support</li><li>Hardware chassis type, color, and form factor</li><li>Is this a virtual machine?</li></ul> |
| Device capabilities | Information about the specific device capabilities such as:<br/><ul><li>Camera -- whether the device has a front facing, a rear facing camera, or both.</li><li>Touch screen -- does the device include a touch screen? If so, how many hardware touch points are supported?</li><li>Processor capabilities -- CompareExchange128, LahfSahf, NX, PrefetchW, and SSE2</li><li>Trusted Platform Module (TPM) – whether present and what version</li><li>Virtualization hardware -- whether an IOMMU is present, SLAT support, is virtualization enabled in the firmware</li><li>Voice – whether voice interaction is supported and the number of active microphones</li><li>Number of displays, resolutions, DPI</li><li>Wireless capabilities</li><li>OEM or platform face detection</li><li>OEM or platform video stabilization and quality level set</li><li>Advanced Camera Capture mode (HDR vs. LowLight), OEM vs. platform implementation, HDR probability, and Low Light probability</li></ul> |
| Device preferences and settings | Information about the device settings and user preferences such as:<br><ul><li>User Settings – System, Device, Network &amp; Internet, Personalization, Cortana, Apps, Accounts, Time &amp; Language, Gaming, Ease of Access, Privacy, Update &amp; Security</li><li>User-provided device name</li><li>Whether device is domain-joined, or cloud-domain joined (i.e. part of a company-managed network)</li><li>Hashed representation of the domain name</li><li>MDM (mobile device management) enrollment settings and status</li><li>BitLocker, Secure Boot, encryption settings, and status</li><li>Windows Update settings and status</li><li>Developer Unlock settings and status</li><li>Default app choices</li><li>Default browser choice</li><li>Default language settings for app, input, keyboard, speech, and display</li><li>App store update settings</li><li>Enterprise OrganizationID, Commercial ID</li></ul> |
| Device peripherals | Information about the device peripherals such as:<br><ul><li>Peripheral name, device model, class, manufacturer and description</li><li>Peripheral device state, install state, and checksum</li><li>Driver name, package name, version, and manufacturer</li><li>HWID - A hardware vendor defined ID to match a device to a driver [INF file](https://msdn.microsoft.com/windows/hardware/drivers/install/hardware-ids)</li><li>Driver state, problem code, and checksum</li><li>Whether driver is kernel mode, signed, and image size</li></ul> |
| Device network info | Information about the device network configuration such as:<br><ul><li>Network system capabilities</li><li>Local or Internet connectivity status</li><li>Proxy, gateway, DHCP, DNS details and addresses</li><li>Paid or free network</li><li>Wireless driver is emulated or not</li><li>Access point mode capable</li><li>Access point manufacturer, model, and MAC address</li><li>WDI Version</li><li>Name of networking driver service</li><li>Wi-Fi Direct details</li><li>Wi-Fi device hardware ID and manufacturer</li><li>Wi-Fi scan attempt counts and item counts</li><li>Mac randomization is supported/enabled or not</li><li>Number of spatial streams and channel frequencies supported</li><li>Manual or Auto Connect enabled</li><li>Time and result of each connection attempt</li><li>Airplane mode status and attempts</li><li>Interface description provided by the manufacturer</li><li>Data transfer rates</li><li>Cipher algorithm</li><li>Mobile Equipment ID (IMEI) and Mobile Country Code (MCCO)</li><li>Mobile operator and service provider name</li><li>Available SSIDs and BSSIDs</li><li>IP Address type -- IPv4 or IPv6</li><li>Signal Quality percentage and changes</li><li>Hotspot presence detection and success rate</li><li>TCP connection performance</li><li>Miracast device names</li><li>Hashed IP address</li></ul>

## Product and Service Usage data

This type of data includes details about the usage of the device, operating system, applications and services. 

| Category Name | Examples |
| - | - |
| App usage | Information about Windows and application usage such as:<ul><li>OS component and app feature usage</li><li>User navigation and interaction with app and Windows features. This could potentially include user input, such as name of a new alarm set, user menu choices, or user favorites.</li><li>Time of and count of app/component launches, duration of use, session GUID, and process ID</li><li>App time in various states – running foreground or background, sleeping, or receiving active user interaction</li><li>User interaction method and duration – whether and length of time user used the keyboard, mouse, pen, touch, speech, or game controller</li><li>Cortana launch entry point/reason</li><li>Notification delivery requests and status</li><li>Apps used to edit images and videos</li><li>SMS, MMS, VCard, and broadcast message usage statistics on primary or secondary line</li><li>Incoming and Outgoing calls and Voicemail usage statistics on primary or secondary line</li><li>Emergency alerts are received or displayed statistics</li><li>Content searches within an app</li><li>Reading activity -- bookmarking used, print used, layout changed</li></ul>|
| App or product state | Information about Windows and application state such as:<ul><li>Start Menu and Taskbar pins</li><li>Online/Offline status</li><li>App launch state –- with deep-link such as Groove launched with an audio track to play, or share contract such as MMS launched to share a picture.</li><li>Personalization impressions delivered</li><li>Whether the user clicked or hovered on UI controls or hotspots</li><li>User feedback Like or Dislike or rating was provided</li><li>Caret location or position within documents and media files -- how much of a book has been read in a single session or how much of a song has been listened to.</li></ul>|
| Login properties | <ul><li>Login success or failure</li><li>Login sessions and state</li></ul>|


## Product and Service Performance data

This type of data includes details about the health of the device, operating system, apps and drivers.

| Category Name | Description and Examples |
| - | - |
|Device health and crash data | Information about the device and software health such as:<br><ul><li>Error codes and error messages, name and ID of the app, and process reporting the error</li><li>DLL library predicted to be the source of the error -- xyz.dll</li><li>System generated files -- app or product logs and trace files to help diagnose a crash or hang</li><li>System settings such as registry keys</li><li>User generated files – .doc, .ppt, .csv files where they are indicated as a potential cause for a crash or hang</li><li>Details and counts of abnormal shutdowns, hangs, and crashes</li><li>Crash failure data – OS, OS component, driver, device, 1st and 3rd party app data</li><li>Crash and Hang dumps<ul><li>The recorded state of the working memory at the point of the crash.</li><li>Memory in use by the kernel at the point of the crash.</li><li>Memory in use by the application at the point of the crash.</li><li>All the physical memory used by Windows at the point of the crash.</li><li>Class and function name within the module that failed.</li></li></ul> |
|Device performance and reliability data | Information about the device and software performance such as:<br><ul><li>User Interface interaction durations -- Start Menu display times, browser tab switch times, app launch and switch times, and Cortana and search performance and reliability.</li><li>Device on/off performance -- Device boot, shutdown, power on/off, lock/unlock times, and user authentication times (fingerprint and face recognition durations).</li><li>In-app responsiveness -- time to set alarm, time to fully render in-app navigation menus, time to sync reading list, time to start GPS navigation, time to attach picture MMS, and time to complete a Microsoft Store transaction.</li><li>User input responsiveness – onscreen keyboard invocation times for different languages, time to show auto-complete words, pen or touch latencies, latency for handwriting recognition to words, Narrator screen reader responsiveness, and CPU score.</li><li>UI and media performance and glitches/smoothness -- video playback frame rate, audio glitches, animation glitches (stutter when bringing up Start), graphics score, time to first frame, play/pause/stop/seek responsiveness, time to render PDF, dynamic streaming of video from OneDrive performance</li><li>Disk footprint -- Free disk space, out of memory conditions, and disk score.</li><li>Excessive resource utilization – components impacting performance or battery life through high CPU usage during different screen and power states</li><li>Background task performance -- download times, Windows Update scan duration, Windows Defender Antivirus scan times, disk defrag times, mail fetch times, service startup and state transition times, and time to index on-device files for search results</li><li>Peripheral and devices -- USB device connection times, time to connect to a wireless display, printing times, network availability and connection times (time to connect to Wi-Fi, time to get an IP address from DHCP etc.), smart card authentication times, automatic brightness environmental response times</li><li>Device setup -- first setup experience times (time to install updates, install apps, connect to network etc.), time to recognize connected devices (printer and monitor), and time to setup Microsoft Account.</li><li>Power and Battery life – power draw by component (Process/CPU/GPU/Display), hours of screen off time, sleep state transition details, temperature and thermal throttling, battery drain in a power state (screen off or screen on), processes and components requesting power use during screen off, auto-brightness details, time device is plugged into AC vs. battery, battery state transitions</li><li>Service responsiveness - Service URI, operation, latency, service success/error codes, and protocol.</li><li>Diagnostic heartbeat – regular signal to validate the health of the diagnostics system</li></ul>|
|Movies|Information about movie consumption functionality on the device. This isn't intended to capture user viewing, listening or habits.<br><ul><li>Video Width, height, color pallet, encoding (compression) type, and encryption type</li><li>Instructions for how to stream content for the user -- the smooth streaming manifest of chunks of content files that must be pieced together to stream the content based on screen resolution and bandwidth</li><li>URL for a specific two second chunk of content if there is an error</li><li>Full screen viewing mode details|
|Music & TV|Information about music and TV consumption on the device. This isn't intended to capture user viewing, listening or habits.<br><ul><li>Service URL for song being downloaded from the music service – collected when an error occurs to facilitate restoration of service</li><li>Content type (video, audio, surround audio)</li><li>Local media library collection statistics -- number of purchased tracks, number of playlists</li><li>Region mismatch -- User OS Region, and Xbox Live region</li></ul>|
|Reading|Information about reading consumption functionality on the device. This isn't intended to capture user viewing, listening or habits.<br><ul><li>App accessing content and status and options used to open a Microsoft Store book</li><li>Language of the book</li><li>Time spent reading content</li><li>Content type and size details</li></ul>|
|Photos App|Information about photos usage on the device. This isn't intended to capture user viewing, listening or habits.<br><ul><li>File source data -- local, SD card, network device, and OneDrive</li><li>Image &amp; video resolution, video length, file sizes types and encoding</li><li>Collection view or full screen viewer use and duration of view</li></ul></ul>|
|On-device file query | Information about local search activity on the device such as: <ul><li>Kind of query issued and index type (ConstraintIndex, SystemIndex)</li><li>Number of items requested and retrieved</li><li>File extension of search result user interacted with</li><li>Launched item kind, file extension, index of origin, and the App ID of the opening app.</li><li>Name of process calling the indexer and time to service the query.</li><li>A hash of the search scope (file, Outlook, OneNote, IE history) </li><li>The state of the indices (fully optimized, partially optimized, being built)</li></ul> |
|Purchasing| Information about purchases made on the device such as:<br><ul><li>Product ID, edition ID and product URI</li><li>Offer details -- price</li><li>Order requested date/time</li><li>Store client type -- web or native client</li><li>Purchase quantity and price</li><li>Payment type -- credit card type and PayPal</li></ul> |
|Entitlements | Information about entitlements on the device such as:<br><ul><li>Service subscription status and errors</li><li>DRM and license rights details -- Groove subscription or OS volume license</li><li>Entitlement ID, lease ID, and package ID of the install package</li><li>Entitlement revocation</li><li>License type (trial, offline vs online) and duration</li><li>License usage session</li></ul> |

## Software Setup and Inventory data

This type of data includes software installation and update information on the device.

| Category Name | Data Examples |
| - | - |
| Installed Applications and Install History | Information about apps, drivers, update packages, or OS components installed on the device such as:<br><ul><li>App, driver, update package, or component’s Name, ID, or Package Family Name</li><li>Product, SKU, availability, catalog, content, and Bundle IDs</li><li>OS component, app or driver publisher, language, version and type (Win32 or UWP)</li><li>Install date, method, and install directory, count of install attempts</li><li>MSI package code and product code</li><li>Original OS version at install time</li><li>User or administrator or mandatory installation/update</li><li>Installation type – clean install, repair, restore, OEM, retail, upgrade, and update</li></ul> |
| Device update information | Information about Windows Update such as:<br><ul><li>Update Readiness analysis of device hardware, OS components, apps, and drivers (progress, status, and results)</li><li>Number of applicable updates, importance, type</li><li>Update download size and source -- CDN or LAN peers</li><li>Delay upgrade status and configuration</li><li>OS uninstall and rollback status and count</li><li>Windows Update server and service URL</li><li>Windows Update machine ID</li><li>Windows Insider build details</li></ul>

## Browsing History data

This type of data includes details about web browsing in the Microsoft browsers.

| Category Name | Description and Examples |
| - | - |
| Microsoft browser data | Information about Address bar and search box performance on the device such as:<ul><li>Text typed in address bar and search box</li><li>Text selected for Ask Cortana search</li><li>Service response time </li><li>Auto-completed text if there was an auto-complete</li><li>Navigation suggestions provided based on local history and favorites</li><li>Browser ID</li><li>URLs (which may include search terms)</li><li>Page title</li></ul>|


## Inking Typing and Speech Utterance data

This type of data gathers details about the voice, inking, and typing input features on the device.

| Category Name | Description and Examples |
| - | - |
| Voice, inking, and typing | Information about voice, inking and typing features such as:<br><ul><li>Type of pen used (highlighter, ball point, pencil), pen color, stroke height and width, and how long it is used</li><li>Pen gestures (click, double click, pan, zoom, rotate)</li><li>Palm Touch x,y coordinates</li><li>Input latency, missed pen signals, number of frames, strokes, first frame commit time, sample rate</li><li>Ink strokes written, text before and after the ink insertion point, recognized text entered, Input language - processed to remove identifiers, sequencing information, and other data (such as email addresses and numeric values) which could be used to reconstruct the original content or associate the input to the user.</li><li>Text input from Windows Mobile on-screen keyboards except from password fields and private sessions - processed to remove identifiers, sequencing information, and other data (such as email addresses, and numeric values) which could be used to reconstruct the original content or associate the input to the user.</li><li>Text of speech recognition results -- result codes and recognized text</li><li>Language and model of the recognizer, System Speech language</li><li>App ID using speech features</li><li>Whether user is known to be a child</li><li>Confidence and Success/Failure of speech recognition</li></ul> |
