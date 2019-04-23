---
title: Windows 10, version 1709 and newer diagnostic data for the Full level (Windows 10)
description: Use this article to learn about the types of diagnostic data that is collected at the Full level.
keywords: privacy,Windows 10
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: high
audience: ITPro
author: danihalfin
ms.author: daniha
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 04/15/2019
---

# Windows 10, version 1709 and newer diagnostic data for the Full level

Applies to:
- Windows 10, version 1903
- Windows 10, version 1809
- Windows 10, version 1803
- Windows 10, version 1709

Microsoft uses Windows diagnostic data to keep Windows secure and up-to-date, troubleshoot problems, and make product improvements. For users who have turned on "Tailored experiences", it can also be used to offer you personalized tips, ads, and recommendations to enhance Microsoft products and services for your needs. This article describes all types of diagnostic data collected by Windows at the Full level (inclusive of data collected at Basic), with comprehensive examples of data we collect per each type. For additional, detailed technical descriptions of Basic data items, see [Windows 10, version 1903 Basic level diagnostic events and fields](https://docs.microsoft.com/windows/configuration/basic-level-windows-diagnostic-events-and-fields).

In addition, this article provides references to equivalent definitions for the data types and examples from [ISO/IEC 19944:2017 Information technology -- Cloud computing -- Cloud services and devices: Data flow, data categories and data use](https://www.iso.org/standard/66674.html). Each data type also has a Data Use statement, for diagnostics and for Tailored experiences on the device, using the terms as defined by the standard. These Data Use statements define the purposes for which Microsoft processes each type of Windows diagnostic data, using a uniform set of definitions referenced at the end of this document and based on the ISO standard. Reference to the ISO standard provides additional clarity about the information collected, and allows easy comparison with other services or guidance that also references the standard.

The data covered in this article is grouped into the following types:

- Common data extensions (diagnostic header information)
- Device, Connectivity, and Configuration data
- Product and Service Usage data
- Product and Service Performance data
- Software Setup and Inventory data
- Browsing History data
- Inking, Typing, and Speech Utterance data

## Common data extensions
Most diagnostic events contain a header of common data. In each example, the info in parentheses provides the equivalent definition for ISO/IEC 19944:2017.

**Data Use for Common data extensions**
Header data supports the use of data associated with all diagnostic events. Therefore, Common data is used to [provide](#provide) Windows 10, and may be used to [improve](#improve), [personalize](#personalize), [recommend](#recommend), [offer](#offer), or [promote](#promote) Microsoft and third-party products and services, depending on the uses described in the **Data Use** statements for each data category.

### Data Description for Common data extensions type

#### Common data extensions type

Information that is added to most diagnostic events, if relevant and available:

- Diagnostic level -- Basic or Full, Sample level -- for sampled data, what sample level is this device opted into (8.2.3.2.4 Observed Usage of the Service Capability)
- Operating system name, version, build, and locale (8.2.3.2.2 Telemetry data)
- Event collection time (8.2.3.2.2 Telemetry data)
- User ID -- a unique identifier associated with the user's Microsoft Account (if one is used) or local account. The user's Microsoft Account identifier is not collected from devices configured to send Basic - diagnostic data (8.2.5 Account data)
- Xbox UserID (8.2.5 Account data)
- Device ID -- This is not the user provided device name, but an ID that is unique for that device. (8.2.3.2.3 Connectivity data)
- Device class -- Desktop, Server, or Mobile (8.2.3.2.3 Connectivity data)
- Environment from which the event was logged -- Application ID of app or component that logged the event, Session GUID. Used to track events over a given period of time, such as the amount of time an app is running or between boots of the operating system (8.2.4 Cloud service provider data)
- Diagnostic event name, Event ID, ETW opcode, version, schema signature, keywords, and flags (8.2.4 Cloud service provider data)
- HTTP header information, including the IP address. This IP address is the source address that’s provided by the network packet header and received by the diagnostics ingestion service (8.2.4 Cloud service provider data)
- Various IDs that are used to correlate and sequence related events together (8.2.4 Cloud service provider data)


## Device, Connectivity, and Configuration data
This type of data includes details about the device, its configuration and connectivity capabilities, and status. Device, Connectivity, and Configuration Data is equivalent to ISO/IEC 19944:2017, 8.2.3.2.3 Connectivity data.

### Data Use for Device, Connectivity, and Configuration data 

**For Diagnostics:**<br>
[Pseudonymized](#pseudo) Device, Connectivity, and Configuration data from Windows 10 is used by Microsoft to [provide](#provide) and [improve](#improve) Windows 10 and related Microsoft products and services. For example:

- Device, Connectivity, and Configuration data is used to understand the unique device characteristics that can contribute to an error experienced on the device, to identify patterns, and to more quickly resolve problems that impact devices with unique hardware, capabilities, or settings. For example:

    - Data about the use of cellular modems and their configuration on your devices is used to troubleshoot cellular modem issues.
    - Data about the use of USB hubs use and their configuration on your devices is used to troubleshoot USB hub issues.
    - Data about the use of connected Bluetooth devices is used to troubleshoot compatibility issues with Bluetooth devices.

- Data about device properties, such as the operating system version and available memory, is used to determine whether the device is due to, and able to, receive a Windows update.
- Data about device peripherals is used to determine whether a device has installed drivers that might be negatively impacted by a Windows update.
- Data about which devices, peripherals, and settings are most-used by customers, is used to prioritize Windows 10 improvements to determine the greatest positive impact to the most Windows 10 users.  

**With (optional) Tailored experiences:**<br>
If a user has enabled Tailored experiences on the device, [Pseudonymized](#pseudo) Device, Connectivity, and Configuration data from Windows 10 is used by Microsoft to [personalize](#personalize), [recommend](#recommend), and [offer](#offer) Microsoft products and services to Windows 10 users. Also, if a user has enabled Tailored experiences on the device, [Pseudonymized](#pseudo) Device, Connectivity, and Configuration data from Windows 10 is used by Microsoft to [promote](#promote) third-party Windows apps, services, hardware, and peripherals to Windows 10 users. For example:

- Data about device properties and capabilities is used to provide tips about how to use or configure the device to get the best performance and user experience.

- Data about device capabilities, such as whether the device is pen-enabled, is used to recommend (Microsoft and third-party) apps that are appropriate for the device. These may be free or paid apps.  
  
### Data Description for Device, Connectivity, and Configuration data type

**Device properties sub-type:** Information about the operating system and device hardware

- Operating system - version name, edition
- Installation type, subscription status, and genuine operating system status
- Processor architecture, speed, number of cores, manufacturer, and model
- OEM details --manufacturer, model, and serial number
- Device identifier and Xbox serial number
- Firmware/BIOS operating system -- type, manufacturer, model, and version
- Memory -- total memory, video memory, speed, and how much memory is available after the device has reserved memory
- Storage -- total capacity and disk type
- Battery -- charge capacity and InstantOn support
- Hardware chassis type, color, and form factor
- Is this a virtual machine?

**Device capabilities sub-type:** Information about the capabilities of the device

- Camera -- whether the device has a front facing camera, a rear facing camera, or both.
- Touch screen -- Whether the device has a touch screen? If yes, how many hardware touch points are supported?
- Processor capabilities -- CompareExchange128, LahfSahf, NX, PrefetchW, and SSE2
- Trusted Platform Module (TPM) -- whether a TPM exists and if yes, what version
- Virtualization hardware -- whether an IOMMU exists, whether it includes SLAT support, and whether virtualization is enabled in the firmware
- Voice -- whether voice interaction is supported and the number of active microphones
- Number of displays, resolutions, and DPI
- Wireless capabilities
- OEM or platform face detection
- OEM or platform video stabilization and quality-level set
- Advanced Camera Capture mode (HDR versus Low Light), OEM versus platform implementation, HDR probability, and Low Light probability

**Device preferences and settings sub-type:** Information about the device settings and user preferences

- User Settings -- System, Device, Network & Internet, Personalization, Cortana, Apps, Accounts, Time & Language, Gaming, Ease of Access, Privacy, Update & Security
- User-provided device name
- Whether device is domain-joined, or cloud-domain joined (for example, part of a company-managed network)
- Hashed representation of the domain name
- MDM (mobile device management) enrollment settings and status
- BitLocker, Secure Boot, encryption settings, and status
- Windows Update settings and status
- Developer Unlock settings and status
- Default app choices
- Default browser choice
- Default language settings for app, input, keyboard, speech, and display
- App store update settings
- Enterprise OrganizationID, Commercial ID

**Device peripherals sub-type:** Information about the peripherals of the device

- Peripheral name, device model, class, manufacturer, and description
- Peripheral device state, install state, and checksum
- Driver name, package name, version, and manufacturer
- HWID - A hardware vendor-defined ID to match a device to a driver [INF file](https://docs.microsoft.com/windows-hardware/drivers/install/hardware-ids)
- Driver state, problem code, and checksum
- Whether driver is kernel mode, signed, and image size

**Device network info sub-type:** Information about the device network configuration

- Network system capabilities
- Local or Internet connectivity status
- Proxy, gateway, DHCP, DNS details, and addresses
- Whether it's a paid or free network
- Whether the wireless driver is emulated
- Whether it's access point mode-capable
- Access point manufacturer, model, and MAC address
- WDI Version
- Name of networking driver service
- Wi-Fi Direct details
- Wi-Fi device hardware ID and manufacturer
- Wi-Fi scan attempt and item counts
- Whether MAC randomization is supported and enabled
- Number of supported spatial streams and channel frequencies
- Whether Manual or Auto-connect is enabled
- Time and result of each connection attempt
- Airplane mode status and attempts
- Interface description provided by the manufacturer
- Data transfer rates
- Cipher algorithm
- Mobile Equipment ID (IMEI) and Mobile Country Code (MCCO)
- Mobile operator and service provider name
- Available SSIDs and BSSIDs
- IP Address type -- IPv4 or IPv6
- Signal Quality percentage and changes
- Hotspot presence detection and success rate
- TCP connection performance
- Miracast device names
- Hashed IP address

## Product and Service Usage data
This type of data includes details about the usage of the device, operating system, applications and services. Product and Service Usage data is equivalent to ISO/IEC 19944:2017, 8.2.3.2.4 Observed Usage of the Service Capability.

### Data Use for Product and Service Usage data

**For Diagnostics:**<br>
[Pseudonymized](#pseudo) Product and Service Usage data from Windows 10 is used by Microsoft to [provide](#provide) and [improve](#improve) Windows 10 and related Microsoft product and services. For example:

- Data about the specific apps that are in-use when an error occurs is used to troubleshoot and repair issues with Windows features and Microsoft apps. 
- Data about the specific apps that are most-used by customers, is used to prioritize Windows 10 improvements to determine the greatest positive impact to the most Windows 10 users.
- Data about whether devices have Suggestions turned off from the **Settings Phone** screen is to improve the Suggestions feature.
- Data about whether a user canceled the authentication process in their browser is used to help troubleshoot issues with and improve the authentication process.
- Data about when and what feature invoked Cortana is used to prioritize efforts for improvement and innovation in Cortana.
- Data about when a context menu in the photo app is closed is used to troubleshoot and improve the photo app.

**With (optional) Tailored experiences:**<br>
If a user has enabled Tailored experiences on the device, [pseudonymized](#pseudo) Product and Service Usage data from Windows 10 is used by Microsoft to [personalize](#personalize), [recommend](#recommend), and [offer](#offer) Microsoft products and services to Windows 10 users. Also, if a user has enabled Tailored experiences on the device, [pseudonymized](#pseudo) Product and Service Usage data from Windows 10 is used by Microsoft to [promote](#promote) third-party Windows apps, services, hardware, and peripherals to Windows 10 users. For example:

- If data shows that a user has not used a particular feature of Windows, we may recommend that the user try that feature.
- Data about which apps are most-used on a device is used to provide recommendations for similar or complementary (Microsoft or third-party) apps. These may be free or paid apps.


### Data Description for Product and Service Usage data type

**App usage sub-type:** Information about Windows and application usage

- Operating system component and app feature usage
- User navigation and interaction with app and Windows features. This could potentially include user input, such as name of a new alarm set, user menu choices, or user favorites
- Time of and count of app and component launches, duration of use, session GUID, and process ID
- App time in various states –- running in the foreground or background, sleeping, or receiving active user interaction
- User interaction method and duration –- whether the user used a keyboard, mouse, pen, touch, speech, or game controller, and for how long
- Cortana launch entry point and reason
- Notification delivery requests and status
- Apps used to edit images and videos
- SMS, MMS, VCard, and broadcast message usage statistics on primary or secondary lines
- Incoming and outgoing calls and voicemail usage statistics on primary or secondary lines
- Emergency alerts are received or displayed statistics
- Content searches within an app
- Reading activity -- bookmarked, printed, or had the layout changed

**App or product state sub-type:** Information about Windows and application state

- Start Menu and Taskbar pins
- Online and offline status
- App launch state –- with deep-links, such as Groove launching with an audio track to play or MMS launching to share a picture
- Personalization impressions delivered
- Whether the user clicked on, or hovered over, UI controls or hotspots
- User provided feedback, such as Like, Dislike or a rating
- Caret location or position within documents and media files -- how much has been read in a book in a single session, or how much of a song has been listened to.

**Purchasing sub-type:** Information about purchases made on the device

- Product ID, edition ID and product URI
- Offer details -- price
- Date and time an order was requested
- Microsoft Store client type -- web or native client
- Purchase quantity and price
- Payment type -- credit card type and PayPal

**Login properties sub-type:** Information about logins on the device

- Login success or failure
- Login sessions and state

## Product and Service Performance data
This type of data includes details about the health of the device, operating system, apps, and drivers. Product and Service Performance data is equivalent to ISO/IEC 19944:2017 8.2.3.2.2 EUII Telemetry data.

### Data Use for Product and Service Performance data

**For Diagnostics:**<br>
[Pseudonymized](#pseudo) Product and Service Performance data from Windows 10 is used by Microsoft to [provide](#provide) and [improve](#improve) Windows 10 and related Microsoft product and services. For example:

- Data about the reliability of content that appears in the [Windows Spotlight](https://docs.microsoft.com/windows/configuration/windows-spotlight) (rotating lock screen images) is used for Windows Spotlight reliability investigations.
- Timing data about how quickly Cortana responds to voice commands is used to improve Cortana listening peformance.
- Timing data about how quickly the facial recognition feature starts up and finishes is used to improve facial recognition performance.
- Data about when an Application Window fails to appear is used to investigate issues with Application Window reliability and performance.

**With (optional) Tailored experiences:**<br>
If a user has enabled Tailored experiences on the device, [pseudonymized](#pseudo) Product and Service Performance data from Windows 10 is used by Microsoft to [personalize](#personalize), [recommend](#recommend), and [offer](#offer) Microsoft products and services to Windows 10 users. Also, if a user has enabled Tailored experiences on the device, [pseudonymized](#pseudo) Product and Service Performance data from Windows 10 is used by Microsoft to [promote](#promote) third-party Windows apps, services, hardware, and peripherals to Windows 10 users.

- Data about battery performance on a device may be used to recommend settings changes that can improve battery performance.
- If data shows a device is running low on file storage, we may recommend Windows-compatible cloud storage solutions to free up space.
- If data shows the device is experiencing performance issues, we may provide recommendations for Windows apps that can help diagnose or resolve these issues. These may be free or paid apps.

**Microsoft doesn't use crash and hang dump data to [personalize](#personalize), [recommend](#recommend), [offer](#offer), or [promote](#promote) any product or service.**

### Data Description for Product and Service Performance data type

**Device health and crash data sub-type:** Information about the device and software health

- Error codes and error messages, name and ID of the app, and process reporting the error
- DLL library predicted to be the source of the error -- for example, xyz.dll
- System generated files -- app or product logs and trace files to help diagnose a crash or hang
- System settings, such as registry keys
- User generated files -- files that are indicated as a potential cause for a crash or hang. For example, .doc, .ppt, .csv files
- Details and counts of abnormal shutdowns, hangs, and crashes
- Crash failure data -- operating system, operating system component, driver, device, and 1st and 3rd-party app data
- Crash and hang dumps, including:
    - The recorded state of the working memory at the point of the crash
    - Memory in-use by the kernel at the point of the crash.
    - Memory in-use by the application at the point of the crash
    - All the physical memory used by Windows at the point of the crash
    - Class and function name within the module that failed.

**Device performance and reliability data sub-type:** Information about the device and software performance

- User interface interaction durations -- Start menu display times, browser tab switch times, app launch and switch times, and Cortana and Search performance and reliability
- Device on and off performance -- Device boot, shutdown, power on and off, lock and unlock times, and user authentication times (fingerprint and face recognition durations)
- In-app responsiveness -- time to set alarm, time to fully render in-app navigation menus, time to sync reading list, time to start GPS navigation, time to attach picture MMS, and time to complete a Microsoft Store transaction
- User input responsiveness -- onscreen keyboard invocation times for different languages, time to show auto-complete words, pen or touch latencies, latency for handwriting recognition to words, Narrator screen reader responsiveness, and CPU score
- UI and media performance and glitches versus smoothness -- video playback frame rate, audio glitches, animation glitches (stutter when bringing up Start), graphics score, time to first frame, play/pause/stop/seek responsiveness, time to render PDF, dynamic streaming of video from OneDrive performance
- Disk footprint -- Free disk space, out of memory conditions, and disk score
- Excessive resource utilization -- components impacting performance or battery life through high CPU usage during different screen and power states
- Background task performance -- download times, Windows Update scan duration, Windows Defender Antivirus scan times, disk defrag times, mail fetch times, service startup and state transition times, and time to index on-device files for search results
- Peripheral and devices -- USB device connection times, time to connect to a wireless display, printing times, network availability and connection times (time to connect to Wi-Fi, time to get an IP address from DHCP etc.), smart card authentication times, automatic brightness, and environmental response times
- Device setup -- first setup experience times (time to install updates, install apps, connect to network, and so on), time to recognize connected devices (printer and monitor), and time to set up a Microsoft Account
- Power and Battery life -- power draw by component (Process/CPU/GPU/Display), hours of time the screen is off, sleep state transition details, temperature and thermal throttling, battery drain in a power state (screen off or screen on), processes and components requesting power use while the screen is off, auto-brightness details, time device is plugged into AC versus battery, and battery state transitions
- Service responsiveness -- Service URI, operation, latency, service success and error codes, and protocol
- Diagnostic heartbeat -- regular signal used to validate the health of the diagnostics system

**Movies sub-type:** Information about movie consumption functionality on the device

> [!NOTE]
> This isn't intended to capture user viewing, listening, or habits.
 
- Video Width, height, color palette, encoding (compression) type, and encryption type
- Instructions about how to stream content for the user -- the smooth streaming manifest of content file chunks that must be pieced together to stream the content based on screen resolution and bandwidth
- URL for a specific two-second chunk of content if there is an error
- Full-screen viewing mode details

**Music & TV sub-type:** Information about music and TV consumption on the device

> [!NOTE]
> This isn't intended to capture user viewing, listening, or habits.

- Service URL for song being downloaded from the music service -- collected when an error occurs to facilitate restoration of service
- Content type (video, audio, or surround audio)
- Local media library collection statistics -- number of purchased tracks and number of playlists
- Region mismatch -- User's operating system region and Xbox Live region

**Reading sub-type:** Information about reading consumption functionality on the device

> [!NOTE]
> This isn't intended to capture user viewing, listening, or habits.

- App accessing content and status and options used to open a Microsoft Store book
- Language of the book
- Time spent reading content
- Content type and size details

**Photos app sub-type:** Information about photos usage on the device

> [!NOTE]
> This isn't intended to capture user viewing, listening, or habits.

- File source data -- local, SD card, network device, and OneDrive
- Image and video resolution, video length, file sizes types, and encoding
- Collection view or full screen viewer use and duration of view

**On-device file query sub-type:** Information about local search activity on the device

- Kind of query issued and index type (ConstraintIndex or SystemIndex)
- Number of items requested and retrieved
- File extension of search result with which the user interacted
- Launched item type, file extension, index of origin, and the App ID of the opening app
- Name of process calling the indexer and the amount of time to service the query
- A hash of the search scope (file, Outlook, OneNote, or IE history). The state of the indices (fully optimized, partially optimized, or being built)

**Entitlements sub-type:** Information about entitlements on the device

- Service subscription status and errors
- DRM and license rights details -- Groove subscription or operating system volume license
- Entitlement ID, lease ID, and package ID of the install package
- Entitlement revocation
- License type (trial, offline versus online) and duration
- License usage session

## Software Setup and Inventory data
This type of data includes software installation and update information on the device. Software Setup and Inventory Data is a sub-type of ISO/IEC 19944:2017 8.2.3.2.4 Observed Usage of the Service Capability.

### Data Use for Software Setup and Inventory data

**For Diagnostics:**<br>
[Pseudonymized](#pseudo) Software Setup and Inventory data from Windows 10 is used by Microsoft to [provide](#provide) and [improve](#improve) Windows 10 and related Microsoft product and services. For example:

- Data about the specific drivers that are installed on a device is used to understand whether there are any hardware or driver compatibility issues which should block or delay a Windows update.
- Data about when a download starts and finishes on a device is used to understand and address download problems.
- Data about the specific Microsoft Store apps that are installed on a device is used to determine which app updates to provide to the device.
- Data about the antimalware installed on a device is used to understand malware transmissions vectors.

**With (optional) Tailored experiences:**<br>
If a user has enabled Tailored experiences on the device, [pseudonymized](#pseudo) Software Setup and Inventory data from Windows 10 is used by Microsoft to [personalize](#personalize), [recommend](#recommend), and [offer](#offer) Microsoft products and services to Windows 10 users. Also, if a user has enabled Tailored experiences on the device, [pseudonymized](#pseudo) Software Setup and Inventory data from Windows 10 is used by Microsoft to [promote](#promote) third-party Windows apps, services, hardware, and peripherals to Windows 10 users. For example:

- Data about the specific apps that are installed on a device is used to provide recommendations for similar or complementary apps in the Microsoft Store.

### Data Description for Software Setup and Inventory data type

**Installed applications and install history sub-type:** Information about apps, drivers, update packages, or operating system components installed on the device

- App, driver, update package, or component’s Name, ID, or Package Family Name
- Product, SKU, availability, catalog, content, and Bundle IDs
- Operating system component, app or driver publisher, language, version and type (Win32 or UWP)
- Install date, method, install directory, and count of install attempts
- MSI package and product code
- Original operating system version at install time
- User, administrator, or mandatory installation or update
- Installation type -- clean install, repair, restore, OEM, retail, upgrade, or update

**Device update information sub-type:** Information about apps, drivers, update packages, or operating system components installed on the device

- Update Readiness analysis of device hardware, operating system components, apps, and drivers (progress, status, and results)
- Number of applicable updates, importance, and type
- Update download size and source -- CDN or LAN peers
- Delay upgrade status and configuration
- Operating system uninstall and rollback status and count
- Windows Update server and service URL
- Windows Update machine ID
- Windows Insider build details

## Browsing History data
This type of data includes details about web browsing in the Microsoft browsers. Browsing History data is equivalent to ISO/IEC 19944:2017 8.2.3.2.8 Client side browsing history.

### Data Use for Browsing History data

**For Diagnostics:**<br>
[Pseudonymized](#pseudo) Browsing History data from Windows 10 is used by Microsoft to [provide](#provide) and [improve](#improve) Windows 10 and related Microsoft product and services. For example:

- Data about when the **Block Content** dialog box has been shown is used for investigations of blocked content.
- Data about potentially abusive or malicious domains is used to make updates to Microsoft Edge and Windows Defender SmartScreen to warn users about the domain.
- Data about when the **Address** bar is used for navigation purposes is used to improve the Suggested Sites feature and to understand and address problems arising from navigation.
- Data about when a Web Notes session starts is used to measure popular domains and URLs for the Web Notes feature.
- Data about when a default **Home** page is changed by a user is used to measure which default **Home** pages are the most popular and how often users change the default **Home** page.

**With (optional) Tailored experiences:**<br> 
If a user has enabled Tailored experiences on the device, [pseudonymized](#pseudo) Browsing History data from Windows 10 is used by Microsoft to [personalize](#personalize), [recommend](#recommend), and [offer](#offer) Microsoft products and services to Windows 10 users. Also, if a user has enabled Tailored experiences on the device, [pseudonymized](#pseudo) Browsing History data from Windows 10 is used by Microsoft to [promote](#promote) third-party Windows apps, services, hardware, and peripherals to Windows 10 users. For example:

- We may recommend that a user download a compatible app from the Microsoft Store if they have browsed to the related website. For example, if a user uses the Facebook website, we may recommend the Facebook app.

### Data Description for Browsing History data type

**Microsoft browser data sub-type:** Information about **Address** bar and **Search** box performance on the device

- Text typed in **Address** bar and **Search** box
- Text selected for an Ask Cortana search
- Service response time
- Auto-completed text, if there was an auto-complete
- Navigation suggestions provided based on local history and favorites
- Browser ID
- URLs (may include search terms)
- Page title

## Inking Typing and Speech Utterance data
This type of data gathers details about the voice, inking, and typing input features on the device. Inking, Typing and Speech Utterance data is a sub-type of ISO/IEC 19944:2017 8.2.3.2.1 End User Identifiable information.

### Data Use for Inking, Typing, and Speech Utterance data

**For Diagnostics:**<br>
[Anonymized](#anon) Inking, Typing, and Speech Utterance data from Windows 10 is used by Microsoft to [improve](#improve) natural language capabilities in Microsoft products and services. For example:

- Data about words marked as spelling mistakes and replaced with another word from the context menu is used to improve the spelling feature.
- Data about alternate words shown and selected by the user after right-clicking is used to improve the word recommendation feature.
- Data about auto-corrected words that were restored back to the original word by the user is used to improve the auto-correct feature.
- Data about whether Narrator detected and recognized a touch gesture is used to improve touch gesture recognition.
- Data about handwriting samples sent from the Handwriting Panel is used to help Microsoft improve handwriting recognition. 

**With (optional) Tailored experiences:**

**Microsoft doesn't use Windows Inking, Typing, and Speech Utterance data for Tailored experiences.**

### Data Description for Inking, Typing, and Speech Utterance data type

**Voice, inking, and typing sub-type:** Information about voice, inking and typing features

- Type of pen used (highlighter, ball point, or pencil), pen color, stroke height and width, and how long it is used
- Pen gestures (click, double click, pan, zoom, or rotate)
- Palm Touch x,y coordinates
- Input latency, missed pen signals, number of frames, strokes, first frame commit time, and sample rate
- Ink strokes written, text before and after the ink insertion point, recognized text entered, input language -- processed to remove identifiers, sequencing information, and other data (such as email addresses and - numeric values), which could be used to reconstruct the original content or associate the input to the user
- Text input from Windows 10 Mobile on-screen keyboards, except from password fields and private sessions -- processed to remove identifiers, sequencing information, and other data (such as email addresses and numeric values), which could be used to reconstruct the original content or associate the input to the user
- Text of speech recognition results -- result codes and recognized text
- Language and model of the recognizer and the System Speech language
- App ID using speech features
- Whether user is known to be a child
- Confidence and success or failure of speech recognition

## ISO/IEC 19944:2017-specific terminology

This section provides the ISO/IEC 19944:2017-specific definitions for use and de-identification qualifiers used in this article.

### Provide

ISO/IEC 19944:2017 Reference: **9.3.2 Provide**

Use of a specified data category by a Microsoft product or service to protect and provide the described service, including, (i) troubleshoot and fix issues with the product or service or (ii) provide product or service updates.

### Improve

ISO/IEC 19944:2017 Reference: **9.3.3 Improve**

Use of a specified data category to improve or increase the quality of a Microsoft product or service. Those improvements may be available to end users.

### Personalize

ISO/IEC 19944:2017 Reference: **9.3.4 Personalize**

Use of the specified data categories to create a customized experience for the end user in any Microsoft product or service.

### Recommend

ISO/IEC 19944:2017 Reference: **9.3.4 Personalize**

“Recommend” means use of the specified data categories to Personalize (9.3.4) the end user’s experience by recommending Microsoft products or services that can be accessed without the need to make a purchase or pay money.

Use of the specified data categories give recommendations about Microsoft products or services the end user may act on where the recommendation is (i) contextually relevant to the product or service in which it appears, (ii) that can be accessed without the need to make a purchase or pay money, and (iii) Microsoft receives no compensation for the placement.

### Offer

ISO/IEC 19944:2017 Reference: **9.3.5 Offer upgrades or upsell**

Implies the source of the data is Microsoft products and services, and the upgrades offered come from Microsoft products and services that are relevant to the context of the current capability. The target audience for the offer is Microsoft customers.

Specifically, use of the specified data categories to make an offer or upsell new capability or capacity of a Microsoft product or service which is (i) contextually relevant to the product or service in which it appears; (ii) likely to result in additional future revenue for Microsoft from end user; and (iii) Microsoft receives no consideration for placement.

### Promote

ISO/IEC 19944:2017 Reference: **9.3.6 Market/advertise/promote**

Use of the specified data categories to promote a product or service in or on a first-party Microsoft product or service.

### Data identification qualifiers

Here are the list of data identification qualifiers and the ISO/IEC 19944:2017 reference:

- **<a name="pseudo">Pseudonymized Data</a>** 8.3.3 Pseudonymized data. Microsoft usage notes are as defined.
- **<a name="anon">Anonymized Data</a>** 8.3.5 Anonymized data. Microsoft usage notes are as defined.
- **<a name="aggregate">Aggregated Data</a>** 8.3.6 Aggregated data. Microsoft usage notes are as defined.