---
description: Use this article to make informed decisions about how you can configure diagnostic data in your organization.
title: Configure Windows diagnostic data in your organization (Windows 10)
keywords: privacy
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: high
audience: ITPro
author: danihalfin
ms.author: daniha
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 04/29/2019
---

# Configure Windows diagnostic data in your organization

**Applies to**

-   Windows 10 Enterprise
-   Windows 10 Mobile
-   Windows Server

This article applies to Windows and Windows Server diagnostic data only. It describes the types of diagnostic data we may gather, the ways you might manage it in your organization, and some examples of how diagnostic data can provide you with valuable insights into your enterprise deployments. Microsoft uses the data to quickly identify and address issues affecting its customers.

Use this article to make informed decisions about how you might configure diagnostic data in your organization. Diagnostic data is a term that means different things to different people and organizations. For this article, we discuss diagnostic data as system data that is uploaded by the Connected User Experiences and Telemetry component. Microsoft uses diagnostic data to keep Windows secure and up to date, troubleshoot problems, and make product improvements.

We are always striving to improve our documentation and welcome your feedback. You can provide feedback by contacting telmhelp@microsoft.com.

## Overview of Windows diagnostic data

At Microsoft, we use Windows diagnostic data to inform our decisions and focus our efforts in providing the most robust, most valuable platform for your business and the people who count on Windows to enable them to be as productive as possible. Diagnostic data gives users a voice in the operating system’s development. This guide describes the importance of Windows diagnostic data and how we protect that data. Additionally, it differentiates between diagnostic data and functional data. It also describes the diagnostic data levels that Windows supports. Of course, you can choose how much diagnostic data is shared with Microsoft, and this guide demonstrates how.

To frame a discussion about diagnostic data, it is important to understand Microsoft’s privacy principles. We earn customer trust every day by focusing on six key privacy principles as described at [privacy.microsoft.com](https://privacy.microsoft.com/). These principles guided the implementation of the Windows diagnostic data system in the following ways:

-	**Control.** We offer customers control of the diagnostic data they share with us by providing easy-to-use management tools.
-	**Transparency.** We provide information about the diagnostic data that Windows and Windows Server collects so our customers can make informed decisions.
-	**Security.** We encrypt diagnostic data in transit from your device via TLS 1.2, and additionally use certificate pinning to secure the connection.
-	**Strong legal protections.** We respect customers’ local privacy laws and fight for legal protection of their privacy as a fundamental human right.
-	**No content-based targeting.** We take steps to avoid and minimize the collection of customer content, such as the content of files, chats, or emails, through the Windows diagnostic data system.  Customer content inadvertently collected is kept confidential and not used for user targeting.
-	**Benefits to you.** We collect Windows diagnostic data to help provide you with an up-to-date, more secure, reliable and performant product, and to improve Windows for all our customers.

In previous versions of Windows and Windows Server, Microsoft used diagnostic data to check for updated or new Windows Defender signatures, check whether Windows Update installations were successful, gather reliability information through the Reliability Analysis Component (RAC), and gather reliability information through the Windows Customer Experience Improvement Program (CEIP) on Windows. In Windows 10 and Windows Server, you can control diagnostic data streams by using the Privacy option in Settings, Group Policy, or MDM.

For Windows 10, we invite IT pros to join the [Windows Insider Program](http://insider.windows.com) to give us feedback on what we can do to make Windows work better for your organization.

## Understanding Windows diagnostic data

Windows as a Service is a fundamental change in how Microsoft plans, builds, and delivers the operating system. Historically, we released a major Windows version every few years. The effort required to deploy large and infrequent Windows versions was substantial. That effort included updating the infrastructure to support the upgrade. Windows as a Service accelerates the cadence to provide rich updates more frequently, and these updates require substantially less effort to roll out than earlier versions of Windows. Since it provides more value to organizations in a shorter timeframe, delivering Windows as a Service is a top priority for us.

The release cadence of Windows may be fast, so feedback is critical to its success. We rely on diagnostic data at each stage of the process to inform our decisions and prioritize our efforts.

### What is Windows diagnostic data?
Windows diagnostic data is vital technical data from Windows devices about the device and how Windows and related software are performing. It's used in the following ways:

- 	Keep Windows up to date
-	Keep Windows secure, reliable, and performant
-	Improve Windows – through the aggregate analysis of the use of Windows
-	Personalize Windows engagement surfaces

Here are some specific examples of Windows diagnostic data:

-	Type of hardware being used
-	Applications installed and usage details
-	Reliability information on device drivers

### What is NOT diagnostic data?

Diagnostic data can sometimes be confused with functional data. Some Windows components and apps connect to Microsoft services directly, but the data they exchange is not diagnostic data. For example, exchanging a user’s location for local weather or news is not an example of diagnostic data—it is functional data that the app or service requires to satisfy the user’s request.

There are subtle differences between diagnostic data and functional data. Windows collects and sends diagnostic data in the background automatically. You can control how much information is gathered by setting the diagnostic data level. Microsoft tries to avoid collecting personal information wherever possible (for example, if a crash dump is collected and a document was in memory at the time of the crash).    On the other hand, functional data can contain personal information. However, a user action, such as requesting news or asking Cortana a question, usually triggers collection and transmission of functional data.

If you’re an IT pro that wants to manage Windows functional data sent from your organization to Microsoft, see [Manage connections from Windows operating system components to Microsoft services](https://technet.microsoft.com/itpro/windows/manage/manage-connections-from-windows-operating-system-components-to-microsoft-services).

The following are specific examples of functional data:

- Current location for weather
- Bing searches
- Wallpaper and desktop settings synced across multiple devices

### Diagnostic data gives users a voice

Windows and Windows Server diagnostic data gives every user a voice in the operating system’s development and ongoing improvement. It helps us understand how Windows 10 and Windows Server behaves in the real world, focus on user priorities, and make informed decisions that benefit them. For our enterprise customers, representation in the dataset on which we will make future design decisions is a real benefit. The following sections offer real examples of these benefits.

### Improve app and driver quality

Our ability to collect diagnostic data that drives improvements to Windows and Windows Server helps raise the bar for app and device driver quality. Diagnostic data helps us to quickly identify and fix critical reliability and security issues with apps and device drivers on given configurations. For example, we can identify an app that hangs on devices using a specific version of a video driver, allowing us to work with the app and device driver vendor to quickly fix the issue. The result is less downtime and reduced costs and increased productivity associated with troubleshooting these issues.

#### Real-world example of how Windows diagnostic data helps
There was a version of a video driver that was crashing on some devices running Windows 10, causing the device to reboot. We detected the problem in our diagnostic data, and immediately contacted the third-party developer who builds the video driver. Working with the developer, we provided an updated driver to Windows Insiders within 24 hours. Based on diagnostic data from the Windows Insiders’ devices, we were able to validate the new version of the video driver, and rolled it out to the broad public as an update the next day. Diagnostic data helped us find, fix, and resolve this problem in just 48 hours, providing a better user experience and reducing costly support calls.

### Improve end-user productivity

Windows diagnostic data also helps Microsoft better understand how customers use (or do not use) the operating system’s features and related services. The insights we gain from this data helps us prioritize our engineering effort to directly impact our customers’ experiences. Examples are:

-	**Start menu.** How do people change the Start menu layout? Do they pin other apps to it? Are there any apps that they frequently unpin? We use this dataset to adjust the default Start menu layout to better reflect people’s expectations when they turn on their device for the first time.
-	**Cortana.** We use diagnostic data to monitor the scalability of our cloud service, improving search performance.
-	**Application switching.**  Research and observations from earlier Windows versions showed that people rarely used Alt+Tab to switch between applications.  After discussing this with some users, we learned they loved the feature, saying that it would be highly productive, but they did not know about it previously. Based on this, we created the Task View button in Windows 10 to make this feature more discoverable. Later diagnostic data showed significantly higher usage of this feature.

**These examples show how the use of diagnostic data enables Microsoft to build or enhance features which can help organizations increase employee productivity while lowering help desk calls.**


### Insights into your own organization

Sharing information with Microsoft helps make Windows and other products better, but it can also help make your internal processes and user experiences better, as well.  Microsoft is in the process of developing a set of analytics customized for your internal use.  The first of these, called [Upgrade Readiness](/windows/deployment/upgrade/manage-windows-upgrades-with-upgrade-readiness).

#### Upgrade Readiness

Upgrading to new operating system versions has traditionally been a challenging, complex, and slow process for many enterprises. Discovering applications and drivers and then testing them for potential compatibility issues have been among the biggest pain points.

To better help customers through this difficult process, Microsoft developed Upgrade Readiness to give enterprises the tools to plan and manage the upgrade process end to end and allowing them to adopt new Windows releases more quickly and on an ongoing basis.

With Windows diagnostic data enabled, Microsoft collects computer, application, and driver compatibility-related information for analysis. We then identify compatibility issues that can block your upgrade and suggest fixes when they are known to Microsoft.

Use Upgrade Readiness to get:

- A visual workflow that guides you from pilot to production
- Detailed computer, driver, and application inventory
- Powerful computer level search and drill-downs
- Guidance and insights into application and driver compatibility issues with suggested fixes
- Data driven application rationalization tools
- Application usage information, allowing targeted validation; workflow to track validation progress and decisions
- Data export to commonly used software deployment tools

The Upgrade Readiness workflow steps you through the discovery and rationalization process until you have a list of computers that are ready to be upgraded.

## How Microsoft handles diagnostic data

### Data collection

Windows 10 and Windows Server includes the Connected User Experiences and Telemetry component, which uses Event Tracing for Windows (ETW) tracelogging technology that gathers and stores diagnostic data events and data. The operating system and some Microsoft management solutions, such as System Center, use the same logging technology.

1. Operating system features and some management applications are instrumented to publish events and data. Examples of management applications include Virtual Machine Manager (VMM), Server Manager, and Storage Spaces.
2. Events are gathered using public operating system event logging and tracing APIs.
3. You can configure the diagnostic data level by using MDM policy, Group Policy, or registry settings.
4. The Connected User Experiences and Telemetry component transmits the diagnostic data.

Info collected at the Enhanced and Full levels of diagnostic data is typically gathered at a fractional sampling rate, which can be as low as 1% of devices reporting data at those levels.

### Data transmission

All diagnostic data is encrypted using SSL and uses certificate pinning during transfer from the device to the Microsoft Data Management Service. With Windows 10, data is uploaded on a schedule that is sensitive to event priority, battery use, and network cost. Real-time events, such as Windows Defender Advanced Threat Protection, are always sent immediately. Normal events are not uploaded on metered networks, unless you are on a metered server connection. On a free network, normal events can be uploaded every 4 hours if on battery, or every 15 minutes if on A/C power. Diagnostic and crash data are only uploaded on A/C power and free networks.

The data transmitted at the Basic and Enhanced data diagnostic levels is quite small; typically less than 1 MB per device per day,  but occasionally up to 2 MB per device per day).


### Endpoints

The Microsoft Data Management Service routes data back to our secure cloud storage. Only Microsoft personnel with a valid business justification are permitted access.

The following table defines the endpoints for Connected User Experiences and Telemetry component:

Windows release | Endpoint
--- | ---
Windows 10, versions 1703 and 1709 | Diagnostics data: v10.vortex-win.data.microsoft.com/collect/v1</br></br>Functional: v20.vortex-win.data.microsoft.com/collect/v1</br>Windows Advanced Threat Protection is country specific and the prefix changes by country for example: **de**.vortex-win.data.microsoft.com/collect/v1</br>settings-win.data.microsoft.com
Windows 10, version 1607 | v10.vortex-win.data.microsoft.com</br></br>settings-win.data.microsoft.com

The following table defines the endpoints for other diagnostic data services:

| Service | Endpoint |
| - | - |
| [Windows Error Reporting](https://msdn.microsoft.com/library/windows/desktop/bb513641.aspx) | watson.telemetry.microsoft.com | 
| | ceuswatcab01.blob.core.windows.net |
| | ceuswatcab02.blob.core.windows.net |
| | eaus2watcab01.blob.core.windows.net |
| | eaus2watcab02.blob.core.windows.net |
| | weus2watcab01.blob.core.windows.net |
| | weus2watcab02.blob.core.windows.net |
| [Online Crash Analysis](https://msdn.microsoft.com/library/windows/desktop/ee416349.aspx) | oca.telemetry.microsoft.com |
| OneDrive app for Windows 10 | vortex.data.microsoft.com/collect/v1 |

### Data use and access

The principle of least privileged access guides access to diagnostic data. Microsoft does not share personal data of our customers with third parties, except at the customer’s discretion or for the limited purposes described in the [Privacy Statement](https://privacy.microsoft.com/privacystatement). Microsoft may share business reports with OEMs and third-party partners that include aggregated and anonymized diagnostic data information. Data-sharing decisions are made by an internal team including privacy, legal, and data management.

### Retention

Microsoft believes in and practices information minimization. We strive to gather only the info we need and to store it only for as long as it’s needed to provide a service or for analysis. Much of the info about how Windows and apps are functioning is deleted within 30 days. Other info may be retained longer, such as error reporting data or Microsoft Store purchase history.

## Manage enterprise diagnostic data level

### Enterprise management

Sharing diagnostic data with Microsoft provides many benefits to enterprises, so we do not recommend turning it off. For most enterprise customers, simply adjusting the diagnostic data level and managing specific components is the best option.

Customers can set the diagnostic data level in both the user interface and with existing management tools. Users can change the diagnostic data level in the **Diagnostic data** setting. In the **Settings** app, it is in **Privacy\Feedback & diagnostics**. They can choose between Basic and Full. The Enhanced level will only be displayed as an option when Group Policy or Mobile Device Management (MDM) are invoked with this level. The Security level is not available.

IT pros can use various methods, including Group Policy and Mobile Device Management (MDM), to choose a diagnostic data level.  If you’re using Windows 10 Enterprise, Windows 10 Education, or Windows Server, the Security diagnostic data level is available when managing the policy. Setting the diagnostic data level through policy sets the upper boundary for the users’ choices. To disable user choice after setting the level with the policy, you will need to use the "Configure telemetry opt-in setting user interface" group policy. The remainder of this article describes how to use group policy to configure levels and settings interface.


#### Manage your diagnostic data settings

Use the steps in this article to set and/or adjust the diagnostic data settings for Windows and Windows Server in your organization.

> [!IMPORTANT]
> These diagnostic data levels only apply to Windows and Windows Server components and apps that use the Connected User Experiences and Telemetry component. Non-Windows components, such as Microsoft Office or other 3rd-party apps, may communicate with their cloud services outside of these diagnostic data levels. You should work with your app vendors to understand their diagnostic data policy, and how you can to opt in or opt out. For more information on how Microsoft Office uses diagnostic data, see [Overview of Office Telemetry](https://technet.microsoft.com/library/jj863580.aspx).

The lowest diagnostic data setting level supported through management policies is **Security**. The lowest diagnostic data setting supported through the Settings UI is **Basic**. The default diagnostic data setting for Windows Server is **Enhanced**.

### Configure the operating system diagnostic data level

You can configure your operating system diagnostic data settings using the management tools you’re already using, such as Group Policy, MDM, or Windows Provisioning. You can also manually change your settings using Registry Editor. Setting your diagnostic data levels through a management policy sets the upper level for diagnostic data on the device.

Use the appropriate value in the table below when you configure the management policy.

| Level    | Data gathered | Value |
| - | - | -  |
| Security | Security data only. | **0** |
| Basic | Security data, and basic system and quality data. | **1** |
| Enhanced | Security data, basic system and quality data, and enhanced insights and advanced reliability data. | **2** |
| Full | Security data, basic system and quality data, enhanced insights and advanced reliability data, and full diagnostics data. | **3** |

   > [!NOTE]
   > When both the Computer Configuration policy and User Configuration policy are set, the more restrictive policy is used.

### Use Group Policy to set the diagnostic data level

Use a Group Policy object to set your organization’s diagnostic data level.

1.  From the Group Policy Management Console, go to **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Data Collection and Preview Builds**.

2.  Double-click **Allow Telemetry**.

3.  In the **Options** box, select the level that you want to configure, and then click **OK**.

### Use MDM to set the diagnostic data level

Use the [Policy Configuration Service Provider (CSP)](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) to apply the System/AllowTelemetry MDM policy.

### Use Registry Editor to set the diagnostic data level

Use Registry Editor to manually set the registry level on each device in your organization or you can write a script to edit the registry. If a management policy already exists, such as Group Policy or MDM, it will override this registry setting.

1.  Open Registry Editor, and go to **HKEY\_LOCAL\_MACHINE\\Software\\Policies\\Microsoft\\Windows\\DataCollection**.

2.  Right-click **DataCollection**, click New, and then click **DWORD (32-bit) Value**.

3.  Type **AllowTelemetry**, and then press ENTER.

4.  Double-click **AllowTelemetry**, set the desired value from the table above, and then click **OK.**

5.  Click **File** &gt; **Export**, and then save the file as a .reg file, such as **C:\\AllowTelemetry.reg**. You can run this file from a script on each device in your organization.

### Additional diagnostic data controls

There are a few more settings that you can turn off that may send diagnostic data information:

-   To turn off Windows Update diagnostic data, you have two choices. Either turn off Windows Update, or set your devices to be managed by an on premises update server, such as [Windows Server Update Services (WSUS)](https://technet.microsoft.com/library/hh852345.aspx) or [System Center Configuration Manager](https://www.microsoft.com/server-cloud/products/system-center-2012-r2-configuration-manager/).

-   Turn off **Windows Defender Cloud-based Protection** and **Automatic sample submission** in **Settings** &gt; **Update & security** &gt; **Windows Defender**.

-   Manage the Malicious Software Removal Tool in your organization. For more info, see Microsoft KB article [891716](https://support.microsoft.com/kb/891716).

-   Turn off **Improve inking and typing** in **Settings** &gt; **Privacy**. At diagnostic data levels **Enhanced** and **Full**, Microsoft uses Linguistic Data Collection info to improve language model features such as autocomplete, spellcheck, suggestions, input pattern recognition, and dictionary.

    > [!NOTE]
    > Microsoft does not intend to gather sensitive information, such as credit card numbers, usernames and passwords, email addresses, or other similarly sensitive information for Linguistic Data Collection. We guard against such events by using technologies to identify and remove sensitive information before linguistic data is sent from the user's device. If we determine that sensitive information has been inadvertently received, we delete the information.

## Diagnostic data levels
This article explains the different diagnostic data levels in Windows 10, Windows Server. These levels are available on all desktop and mobile editions of Windows 10, except for the **Security** level, which is limited to Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile Enterprise, Windows 10 IoT Core (IoT Core), and Windows Server 2016.

The diagnostic data is categorized into four levels:

-   **Security**. Information that’s required to help keep Windows and Windows Server secure, including data about the Connected User Experiences and Telemetry component settings, the Malicious Software Removal Tool, and Windows Defender.

-   **Basic**. Basic device info, including: quality-related data, app compatibility, and data from the **Security** level.

-   **Enhanced**. Additional insights, including: how Windows, Windows Server, and apps are used, how they perform, advanced reliability data, and data from both the **Basic** and the **Security** levels.

-   **Full**. All data necessary to identify and help to fix problems, plus data from the **Security**, **Basic**, and **Enhanced** levels.

The levels are cumulative and are illustrated in the following diagram. Also, these levels apply to all editions of Windows Server 2016.

![breakdown of diagnostic data levels and types of administrative controls](images/priv-telemetry-levels.png)

### Security level

The Security level gathers only the diagnostic data info that is required to keep Windows devices, Windows Server, and guests protected with the latest security updates. This level is only available on Windows Server 2016, Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile Enterprise, and Windows IoT Core editions.

> [!NOTE]
> If your organization relies on Windows Update for updates, you shouldn’t use the **Security** level. Because no Windows Update information is gathered at this level, important information about update failures is not sent. Microsoft uses this information to fix the causes of those failures and improve the quality of our updates.

Windows Server Update Services (WSUS) and System Center Configuration Manager functionality is not affected at this level, nor is diagnostic data about Windows Server features or System Center gathered.

The data gathered at this level includes:

-   **Connected User Experiences and Telemetry component settings**. If general diagnostic data has been gathered and is queued, it is sent to Microsoft. Along with this diagnostic data, the Connected User Experiences and Telemetry component may download a configuration settings file from Microsoft’s servers. This file is used to configure the Connected User Experiences and Telemetry component itself. The data gathered by the client for this request includes OS information, device id (used to identify what specific device is requesting settings) and device class (for example, whether the device is server or desktop).

-   **Malicious Software Removal Tool (MSRT)** The MSRT infection report contains information, including device info and IP address.

    > [!NOTE]
    > You can turn off the MSRT infection report. No MSRT information is included if MSRT is not used. If Windows Update is turned off, MSRT will not be offered to users. For more info, see Microsoft KB article [891716](https://support.microsoft.com/kb/891716).

-   **Windows Defender/Endpoint Protection**. Windows Defender and System Center Endpoint Protection requires some information to function, including: anti-malware signatures, diagnostic information, User Account Control settings, Unified Extensible Firmware Interface (UEFI) settings, and IP address.

    > [!NOTE]
    > This reporting can be turned off and no information is included if a customer is using third-party antimalware software, or if Windows Defender is turned off. For more info, see [Windows Defender](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-defender).

    Microsoft recommends that Windows Update, Windows Defender, and MSRT remain enabled unless the enterprise uses alternative solutions such as Windows Server Update Services, System Center Configuration Manager, or a third-party antimalware solution. Windows Update, Windows Defender, and MSRT provide core Windows functionality such as driver and OS updates, including security updates.

For servers with default diagnostic data settings and no Internet connectivity, you should set the diagnostic data level to **Security**. This stops data gathering for events that would not be uploaded due to the lack of Internet connectivity.

No user content, such as user files or communications, is gathered at the **Security** diagnostic data level, and we take steps to avoid gathering any information that directly identifies a company or user, such as name, email address, or account ID. However, in rare circumstances, MSRT information may unintentionally contain personal information. For instance, some malware may create entries in a computer’s registry that include information such as a username, causing it to be gathered. MSRT reporting is optional and can be turned off at any time.

### Basic level

The Basic level gathers a limited set of data that’s critical for understanding the device and its configuration. This level also includes the **Security** level data. This level helps to identify problems that can occur on a specific hardware or software configuration. For example, it can help determine if crashes are more frequent on devices with a specific amount of memory or that are running a specific driver version. The Connected User Experiences and Telemetry component does not gather diagnostic data about System Center, but it can transmit diagnostic data for other non-Windows applications if they have user consent.

The normal upload range for the Basic diagnostic data level is between 109 KB - 159 KB per day, per device.

The data gathered at this level includes:

-   **Basic device data**. Helps provide an understanding about the types of Windows devices and the configurations and types of native and virtualized Windows Servers in the ecosystem. Examples include:

    -   Device attributes, such as camera resolution and display type

    -   Internet Explorer version

    -   Battery attributes, such as capacity and type

    -   Networking attributes, such as number of network adapters, speed of network adapters, mobile operator network, and IMEI number

    -   Processor and memory attributes, such as number of cores, architecture, speed, memory size, and firmware

    -   Virtualization attribute, such as Second Level Address Translation (SLAT) support and guest operating system

    -   Operating system attributes, such as Windows edition and virtualization state

    -   Storage attributes, such as number of drives, type, and size

-   **Connected User Experiences and Telemetry component quality metrics**. Helps provide an understanding about how the Connected User Experiences and Telemetry component is functioning, including % of uploaded events, dropped events, and the last upload time.

-   **Quality-related information**. Helps Microsoft develop a basic understanding of how a device and its operating system are performing. Some examples are the device characteristics of a Connected Standby device, the number of crashes or hangs, and application state change details, such as how much processor time and memory were used, and the total uptime for an app.

-   **Compatibility data**. Helps provide an understanding about which apps are installed on a device or virtual machine and identifies potential compatibility problems.

    -   **General app data and app data for Internet Explorer add-ons**. Includes a list of apps that are installed on a native or virtualized instance of the OS and whether these apps function correctly after an upgrade. This app data includes the app name, publisher, version, and basic details about which files have been blocked from usage.

    -   **Internet Explorer add-ons**. Includes a list of Internet Explorer add-ons that are installed on a device and whether these apps will work after an upgrade.

    -   **System data**. Helps provide an understanding about whether a device meets the minimum requirements to upgrade to the next version of the operating system. System information includes the amount of memory, as well as information about the processor and BIOS.

    -   **Accessory device data**. Includes a list of accessory devices, such as printers or external storage devices, that are connected to Windows PCs and whether these devices will function after upgrading to a new version of the operating system.

    -   **Driver data**. Includes specific driver usage that’s meant to help figure out whether apps and devices will function after upgrading to a new version of the operating system. This can help to determine blocking issues and then help Microsoft and our partners apply fixes and improvements.

-   **Microsoft Store**. Provides information about how the Microsoft Store performs, including app downloads, installations, and updates. It also includes Microsoft Store launches, page views, suspend and resumes, and obtaining licenses.


### Enhanced level

The Enhanced level gathers data about how Windows and apps are used and how they perform. This level also includes data from both the **Basic** and **Security** levels. This level helps to improve the user experience with the operating system and apps. Data from this level can be abstracted into patterns and trends that can help Microsoft determine future improvements.

This is the default level for Windows 10 Enterprise and Windows 10 Education editions, and the minimum level needed to quickly identify and address Windows and Windows Server quality issues.

The normal upload range for the Enhanced diagnostic data level is between 239 KB - 348 KB per day, per device.

The data gathered at this level includes:

-   **Operating system events**. Helps to gain insights into different areas of the operating system, including networking, Hyper-V, Cortana, storage, file system, and other components.

-   **Operating system app events**. A set of events resulting from Microsoft applications and management tools that were downloaded from the Store or pre-installed with Windows or Windows Server, including Server Manager, Photos, Mail, and Microsoft Edge.

-   **Device-specific events**. Contains data about events that are specific to certain devices, such as Surface Hub and Microsoft HoloLens. For example, Microsoft HoloLens sends Holographic Processing Unit (HPU)-related events.

-   **Some crash dump types**. All crash dump types, except for heap dumps and full dumps.

If the Connected User Experiences and Telemetry component detects a problem on Windows 10 that requires gathering more detailed instrumentation, the Connected User Experiences and Telemetry component at the **Enhanced** diagnostic data level will only gather data about the events associated with the specific issue.

#### Limit Enhanced diagnostic data to the minimum required by Windows Analytics
Windows Analytics Device Health reports are powered by diagnostic data not included in the **Basic** level, such as crash reports and certain operating system events. In the past, organizations sending **Enhanced** or **Full** level diagnostic data were able to participate in Device Health. However, organizations that required detailed event and field level documentation were unable to move from **Basic** to **Enhanced**.

In Windows 10, version 1709, we introduce the **Limit Enhanced diagnostic data to the minimum required by Windows Analytics** feature. When enabled, this feature lets you send only the following subset of **Enhanced** level diagnostic data. For more info about Device Health, see the [Monitor the health of devices with Device Health](https://docs.microsoft.com/windows/deployment/update/device-health-monitor) topic.

- **Operating system events.** Limited to a small set required for analytics reports and documented in the [Windows 10, version 1709 enhanced diagnostic data events and fields used by Windows Analytics](enhanced-diagnostic-data-windows-analytics-events-and-fields.md) topic.

- **Some crash dump types.** All crash dump types, except for heap and full dumps.

**To turn on this behavior for devices**

1.	Set the diagnostic data level to **Enhanced**, using either Group Policy or MDM.

    a. Using Group Policy, set the **Computer Configuration/Administrative Templates/Windows Components/Data Collection and Preview Builds/Allow telemetry** setting to **2**.

    -OR-

    b. Using MDM, use the Policy CSP to set the **System/AllowTelemetry** value to **2**.

    -AND-

2.	Enable the **LimitEnhancedDiagnosticDataWindowsAnalytics** setting, using either Group Policy or MDM.

    a.	Using Group Policy, set the **Computer Configuration/Administrative Templates/Windows Components/Data collection and Preview builds/Limit Enhanced diagnostic data to the minimum required by Windows Analytics** setting to **Enabled**.

    -OR-

    b. Using MDM, use the Policy CSP to set the **System/LimitEnhancedDiagnosticDataWindowsAnalytics** value to **1**.

### Full level

The **Full** level gathers data necessary to identify and to help fix problems, following the approval process described below. This level also includes data from the **Basic**, **Enhanced**, and **Security** levels. This is the default level for Windows 10 Pro.

Additionally, at this level, devices opted in to the [Windows Insider Program](http://insider.windows.com) will send events, such as reliability and app responsiveness. that can show Microsoft how pre-release binaries and features are performing. These events help us make decisions on which builds are flighted. All devices in the [Windows Insider Program](http://insider.windows.com) are automatically set to this level.

If a device experiences problems that are difficult to identify or repeat using Microsoft’s internal testing, additional data becomes necessary. This data can include any user content that might have triggered the problem and is gathered from a small sample of devices that have both opted into the **Full** diagnostic data level and have exhibited the problem.

However, before more data is gathered, Microsoft’s privacy governance team, including privacy and other subject matter experts, must approve the diagnostics request made by a Microsoft engineer. If the request is approved, Microsoft engineers can use the following capabilities to get the information:

-   Ability to run a limited, pre-approved list of Microsoft certified diagnostic tools, such as msinfo32.exe, powercfg.exe, and dxdiag.exe.

-   Ability to get registry keys.

-   All crash dump types, including heap dumps and full dumps.


## Additional resources

FAQs

- [Cortana, Search, and privacy](https://privacy.microsoft.com/windows-10-cortana-and-privacy)
- [Windows 10 feedback, diagnostics, and privacy](https://privacy.microsoft.com/windows-10-feedback-diagnostics-and-privacy)
- [Windows 10 camera and privacy](https://privacy.microsoft.com/windows-10-camera-and-privacy)
- [Windows 10 location service and privacy](https://privacy.microsoft.com/windows-10-location-and-privacy)
- [Microsoft Edge and privacy](https://privacy.microsoft.com/windows-10-microsoft-edge-and-privacy)
- [Windows 10 speech, inking, typing, and privacy](https://privacy.microsoft.com/windows-10-speech-inking-typing-and-privacy-faq)
- [Windows Hello and privacy](https://privacy.microsoft.com/windows-10-windows-hello-and-privacy)
- [Wi-Fi Sense](https://privacy.microsoft.com/windows-10-about-wifi-sense)
- [Windows Update Delivery Optimization](https://privacy.microsoft.com/windows-10-windows-update-delivery-optimization)

Blogs

- [Privacy and Windows 10](https://blogs.windows.com/windowsexperience/2015/09/28/privacy-and-windows-10)

Privacy Statement

- [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement)

TechNet

- [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md)

Web Pages

- [Privacy at Microsoft](https://privacy.microsoft.com)


