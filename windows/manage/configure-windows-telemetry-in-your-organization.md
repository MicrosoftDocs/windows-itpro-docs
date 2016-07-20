---
description: Use this article to make informed decisions about how you can configure telemetry in your organization.
title: Configure Windows telemetry in your organization (Windows 10)
keywords: privacy
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: brianlic-msft
---

# Configure Windows telemetry in your organization

**Applies to**

-   Windows 10
-   Windows 10 Mobile
-   Windows Server 2016 Technical Preview

At Microsoft, we use Windows telemetry to inform our decisions and focus our efforts in providing the most robust, most valuable platform for your business and the people who count on Windows to enable them to be as productive as possible. Telemetry gives users a voice in the operating system’s development. This guide describes the importance of Windows telemetry and how we protect that data. Additionally, it differentiates between telemetry and functional data. It also describes the telemetry levels that Windows supports. Of course, you can choose how much telemetry is shared with Microsoft, and this guide demonstrates how.

To frame a discussion about telemetry, it is important to understand Microsoft’s privacy principles. We earn customer trust every day by focusing on six key privacy principles as described at [privacy.microsoft.com](https://privacy.microsoft.com/). These principles guided the implementation of the Windows telemetry system in the following ways:

-	**Control.** We offer customers control of the telemetry they share with us by providing easy-to-use management tools.
-	**Transparency.** We provide information about the telemetry that Windows and Windows Server collects so our customers can make informed decisions.
-	**Security.** We encrypt telemetry in transit from your device and protect that data at our secure data centers.
-	**Strong legal protections.** We respect customers’ local privacy laws and fight for legal protection of their privacy as a fundamental human right.
-	**No content-based targeting.** We take steps to avoid and minimize the collection of customer content, such as the content of files, chats, or emails, through the Windows telemetry system.  Customer content inadvertently collected is kept confidential and not used for user targeting.
-	**Benefits to you.** We collect Windows telemetry to help provide you with an up-to-date, more secure, reliable and performant product, and to improve Windows for all of our customers.

This article applies to Windows and Windows Server telemetry only. Other Microsoft or third-party apps, such as System Center Configuration Manager, System Center Endpoint Protection, or System Center Data Protection Manager, might send data to their cloud services in ways that are inconsistent with this guide. Their publishers are responsible for notifying users of their privacy policies, telemetry controls, and so on. This article describes the types of telemetry we may gather, the ways you might manage it in your organization, and some examples of how telemetry can provide you with valuable insights into your enterprise deployments. Microsoft uses the data to quickly identify and address issues affecting its customers.


Use this article to make informed decisions about how you might configure telemetry in your organization. Telemetry is a term that means different things to different people and organizations. For the purpose of this article, we discuss telemetry as system data that is uploaded by the Connected User Experience and Telemetry component. The telemetry data is used to help keep Windows devices secure by identifying malware trends and other threats and to help Microsoft improve the quality of Windows and Microsoft services.

## Overview

In previous versions of Windows and Windows Server, Microsoft used telemetry to check for updated or new Windows Defender signatures, check whether Windows Update installations were successful, gather reliability information through the Reliability Analysis Component (RAC), and gather reliability information through the Windows Customer Experience Improvement Program (CEIP) on Windows. In Windows 10 and Windows Server 2016 Technical Preview, you can control telemetry streams by using the Privacy option in Settings, Group Policy, or MDM.

For Windows 10, we invite IT pros to join the [Windows Insider Program](http://insider.windows.com) to give us feedback on what we can do to make Windows work better for your organization.

## Understanding Windows telemetry

Windows as a Service is a fundamental change in how Microsoft plans, builds, and delivers the operating system. Historically, we released a major Windows version every few years. The effort required to deploy large and infrequent Windows versions was substantial. That effort included updating the infrastructure to support the upgrade. Windows as a Service accelerates the cadence to provide rich updates more frequently, and these updates require substantially less effort to roll out than earlier versions of Windows. Since it provides more value to organizations in a shorter timeframe, delivering Windows as a Service is a top priority for us.

The release cadence of Windows may be fast, so feedback is critical to its success. We rely on telemetry at each stage of the process to inform our decisions and prioritize our efforts. 

### What is Windows telemetry?
Windows telemetry is vital technical data from Windows devices about the device and how Windows and related software are performing. It's used in the following ways:

- 	Keep Windows up to date
-	Keep Windows secure, reliable, and performant
-	Improve Windows – through the aggregate analysis of the use of Windows
-	Personalize Windows engagement surfaces

Here are some specific examples of Windows telemetry data:

-	Type of hardware being used
-	Applications installed and usage details
-	Reliability information on device drivers

### What is NOT telemetry?

Telemetry can sometimes be confused with functional data. Some Windows components and apps connect to Microsoft services directly, but the data they exchange is not telemetry. For example, exchanging a user’s location for local weather or news is not an example of telemetry—it is functional data that the app or service requires to satisfy the user’s request.

There are subtle differences between telemetry and functional data. Windows collects and sends telemetry in the background automatically. You can control how much information is gathered by setting the telemetry level. Microsoft tries to avoid collecting personal information wherever possible (for example, if a crash dump is collected and a document was in memory at the time of the crash).    On the other hand, functional data can contain personal information. However, a user action, such as requesting news or asking Cortana a question, usually triggers collection and transmission of functional data.

If you’re an IT pro that wants to manage Windows functional data sent from your organization to Microsoft, see [Manage connections from Windows operating system components to Microsoft services](https://technet.microsoft.com/en-us/itpro/windows/manage/manage-connections-from-windows-operating-system-components-to-microsoft-services).

The following are specific examples of functional data:

- Current location for weather
- Bing searches
- Wallpaper and desktop settings synced across multiple devices

### Telemetry gives users a voice

Windows and Windows Server telemetry gives every user a voice in the operating system’s development and ongoing improvement. It helps us understand how Windows 10 and Windows Server 2016 behaves in the real world, focus on user priorities, and make informed decisions that benefit them. For our enterprise customers, representation in the dataset on which we will make future design decisions is a real benefit. The following sections offer real examples of these benefits.

### Drive higher app and driver quality

Our ability to collect telemetry that drives improvements to Windows and Windows Server helps raise the bar for app and device driver quality. Telemetry helps us to quickly identify and fix critical reliability and security issues with apps and device drivers on given configurations. For example, we can identify an app that hangs on devices using a specific version of a video driver, allowing us to work with the app and device driver vendor to quickly fix the issue. The result is less downtime and reduced costs and increased productivity associated with troubleshooting these issues.

A real-world example of how Windows telemetry helps us quickly identify and fix issues is a particular version of a video driver that was crashing on some devices running Windows 10, causing the device to reboot. We detected the problem in our telemetry, and immediately contacted the third-party developer who builds the video driver. Working with the developer, we provided an updated driver to Windows Insiders within 24 hours. Based on telemetry from the Windows Insiders’ devices, we were able to validate the new version of the video driver, and rolled it out to the broad public as an update the next day. Telemetry helped us find, fix, and resolve this problem in just 48 hours, providing a better user experience and reducing costly support calls.

### Improve end-user productivity

Windows telemetry also helps Microsoft better understand how customers use (or do not use) the operating system’s features and related services. The insights we gain from this data helps us prioritize our engineering effort to directly impact our customers’ experiences. Examples are:

-	**Start menu.** How do people change the Start menu layout? Do they pin other apps to it? Are there any apps that they frequently unpin? We use this dataset to adjust the default Start menu layout to better reflect people’s expectations when they turn on their device for the first time.
-	**Cortana.** We use telemetry to monitor the scalability of our cloud service, improving search performance.
-	**Application switching.**  Research and observations from earlier Windows versions showed that people rarely used Alt+Tab to switch between applications.  After discussing this with some users, we learned they loved the feature, saying that it would be highly productive, but they did not know about it previously. Based on this, we created the Task View button in Windows 10 to make this feature more discoverable. Later telemetry showed significantly higher usage of this feature.

**These examples show how the use of telemetry data enables Microsoft to build or enhance features which can help organizations increase employee productivity while lowering help desk calls.**

<!--
### Insights into your own organization

Sharing information with Microsoft helps make Windows and other products better, but it can also help make your internal processes and user experiences better, as well.  Microsoft is in the process of developing a set of analytics customized for your internal use.  The first of these, called Windows 10 Upgrade Analytics, will be available in Summer 2016.

#### Windows 10 Upgrade Analytics

Upgrading to new operating system versions has traditionally been a challenging, complex, and slow process for many enterprises. Discovering applications and drivers and then testing them for potential compatibility issues have been among the biggest pain points. 
 
To better help customers through this difficult process, Microsoft developed Upgrade Analytics to give enterprises the tools to plan and manage the upgrade process end to end and allowing them to adopt new Windows releases more quickly and on an ongoing basis. 

With Windows telemetry enabled, Microsoft collects computer, application, and driver compatibility-related information for analysis. We then identify compatibility issues that can block your upgrade and suggest fixes when they are known to Microsoft. 

Use Upgrade Analytics to get:

- A visual workflow that guides you from pilot to production
- Detailed computer, driver, and application inventory
- Powerful computer level search and drill-downs 
- Guidance and insights into application and driver compatibility issues with suggested fixes 
- Data driven application rationalization tools
- Application usage information, allowing targeted validation; workflow to track validation progress and decisions
- Data export to commonly used software deployment tools 

The Upgrade Analytics workflow steps you through the discovery and rationalization process until you have a list of computers that are ready to be upgraded.

-->
## How is telemetry data handled by Microsoft?

### Data collection

Windows 10 and Windows Server 2016 includes the Connected User Experience and Telemetry component, which uses Event Tracing for Windows (ETW) tracelogging technology that gathers and stores telemetry events and data. The operating system and some Microsoft management solutions, such as System Center, use the same logging technology.

1. Operating system features and some management applications are instrumented to publish events and data. Examples of management applications include Virtual Machine Manager (VMM), Server Manager, and Storage Spaces.
2. Events are gathered using public operating system event logging and tracing APIs.
3. You can configure the telemetry level by using an MDM policy, Group Policy, or registry settings.
4. The Connected User Experience and Telemetry component transmits the telemetry data.

Info collected at the Enhanced and Full levels of telemetry is typically gathered at a fractional sampling rate, which can be as low as 1% of devices reporting data at those levels.

### Data transmission

All telemetry data is encrypted using SSL and uses certificate pinning during transfer from the device to the Microsoft Data Management Service. With Windows 10, data is uploaded on a schedule that is sensitive to event priority, battery use, and network cost. Real-time events, such as Windows Defender Advanced Threat Protection, are always sent immediately. Normal events are not uploaded on metered networks, unless you are on a metered server connection. On a free network, normal events can be uploaded every 4 hours if on battery, or every 15 minutes if on A/C power. Diagnostic and crash data are only uploaded on A/C power and free networks.

### Endpoints

The Microsoft Data Management Service routes data back to our secure cloud storage. Only Microsoft personnel with a valid business justification are permitted access.

The following table defines the endpoints for telemetry services:

| Service | Endpoint |
| - | - |
| Connected User Experience and Telemetry component | v10.vortex-win.data.microsoft.com<br />settings-win.data.microsoft.com |
| [Windows Error Reporting](http://msdn.microsoft.com/library/windows/desktop/bb513641.aspx) | watson.telemetry.microsoft.com |
| [Online Crash Analysis](http://msdn.microsoft.com/library/windows/desktop/ee416349.aspx) | oca.telemetry.microsoft.com |

### Data use and access

The principle of least privileged access guides access to telemetry data. Microsoft does not share personal data of our customers with third parties, except at the customer’s discretion or for the limited purposes described in the [Privacy Statement](https://privacy.microsoft.com/en-us/privacystatement). Microsoft may share business reports with OEMs and third party partners that include aggregated and anonymized telemetry information. Data-sharing decisions are made by an internal team including privacy, legal, and data management.

### Retention

Microsoft believes in and practices information minimization. We strive to gather only the info we need, and store it for as long as it’s needed to provide a service or for analysis. Much of the info about how Windows and apps are functioning is deleted within 30 days. Other info may be retained longer, such as error reporting data or Windows Store purchase history. 

## Telemetry levels


This section explains the different telemetry levels in Windows 10, Windows Server 2016 Technical Preview, and System Center. These levels are available on all desktop and mobile editions of Windows 10, with the exception of the **Security** level which is limited to Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile Enterprise, Windows 10 IoT Core (IoT Core), and Windows Server 2016 Technical Preview.

The telemetry data is categorized into four levels:

-   **Security**. Information that’s required to help keep Windows, Windows Server, and System Center secure, including data about the Connected User Experience and Telemetry component settings, the Malicious Software Removal Tool, and Windows Defender.

-   **Basic**. Basic device info, including: quality-related data, app compatibility, app usage data, and data from the **Security** level.

-   **Enhanced**. Additional insights, including: how Windows, Windows Server, System Center, and apps are used, how they perform, advanced reliability data, and data from both the **Basic** and the **Security** levels.

-   **Full**. All data necessary to identify and help to fix problems, plus data from the **Security**, **Basic**, and **Enhanced** levels.

The levels are cumulative and are illustrated in the following diagram. Also, these levels apply to all editions of Windows Server 2016 Technical Preview.

![breakdown of telemetry levels and types of administrative controls](images/priv-telemetry-levels.png)

### Security level

The Security level gathers only the telemetry info that is required to keep Windows devices, Windows Server, and guests protected with the latest security updates. This level is only available on Windows Server 2016, Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile Enterprise, and Windos IoT Core editions.

> **Note:**  If your organization relies on Windows Update for updates, you shouldn’t use the **Security** level. Because no Windows Update information is gathered at this level, important information about update failures is not sent. Microsoft uses this information to fix the causes of those failures and improve the quality of our updates.

Windows Server Update Services (WSUS) and System Center Configuration Manager functionality is not affected at this level, nor is telemetry data about Windows Server features or System Center gathered.

 

The data gathered at this level includes:

-   **Connected User Experience and Telemetry component settings**. If general telemetry data has been gathered and is queued, it is sent to Microsoft. Along with this telemetry, the Connected User Experience and Telemetry component may download a configuration settings file from Microsoft’s servers. This file is used to configure the Connected User Experience and Telemetry component itself. The data gathered by the client for this request includes OS information, device id (used to identify what specific device is requesting settings) and device class (for example, whether the device is server or desktop).

-   **Malicious Software Removal Tool (MSRT)** The MSRT infection report contains information, including device info and IP address.

    >**Note:**  You can turn off the MSRT infection report. No MSRT information is included if MSRT is not used. If Windows Update is turned off, MSRT will not be offered to users. For more info, see Microsoft KB article [891716](http://support.microsoft.com/kb/891716).

     

-   **Windows Defender/Endpoint Protection**. Windows Defender and System Center Endpoint Protection requires some information to function, including: anti-malware signatures, diagnostic information, User Account Control settings, Unified Extensible Firmware Interface (UEFI) settings, and IP address.

    **Note**  
    This reporting can be turned off and no information is included if a customer is using third party antimalware software, or if Windows Defender is turned off. For more info, see [Windows Defender](disconnect-your-organization-from-microsoft.md#windows-defender).

    Microsoft recommends that Windows Update, Windows Defender, and MSRT remain enabled unless the enterprise uses alternative solutions such as Windows Server Update Services, System Center Configuration Manager, or a third party antimalware solution. Windows Update, Windows Defender, and MSRT provide core Windows functionality such as driver and OS updates, including security updates.

     

For servers with default telemetry settings and no Internet connectivity, you should set the telemetry level to **Security**. This stops data gathering for events that would not be uploaded due to the lack of Internet connectivity.

No user content, such as user files or communications, is gathered at the **Security** telemetry level, and we take steps to avoid gathering any information that directly identifies a company or user, such as name, email address, or account ID. However, in rare circumstances, MSRT information may unintentionally contain personal information. For instance, some malware may create entries in a computer’s registry that include information such as a username, causing it to be gathered. MSRT reporting is optional and can be turned off at any time.

### Basic level

The Basic level gathers a limited set of data that’s critical for understanding the device and its configuration. This level also includes the **Security** level data. This level helps to identify problems that can occur on a particular hardware or software configuration. For example, it can help determine if crashes are more frequent on devices with a specific amount of memory or that are running a particular driver version. The Connected User Experience and Telemetry component does not gather telemetry data about System Center, but it can transmit telemetry for other non-Windows applications if they have user consent.

The data gathered at this level includes:

-   **Basic device data**. Helps provide an understanding about the types of Windows devices and the configurations and types of native and virtualized Windows Server 2016 Technical Preview in the ecosystem. Examples include:

    -   Device attributes, such as camera resolution and display type

    -   Internet Explorer version

    -   Battery attributes, such as capacity and type

    -   Networking attributes, such as number of network adapters, speed of network adapters, mobile operator network, and IMEI number

    -   Processor and memory attributes, such as number of cores, architecture, speed, memory size, and firmware

    -   Virtualization attribute, such as Second Level Address Translation (SLAT) support and guest operating system

    -   Operating system attributes, such as Windows edition and virtualization state

    -   Storage attributes, such as number of drives, type, and size

-   **Connected User Experience and Telemetry component quality metrics**. Helps provide an understanding about how the Connected User Experience and Telemetry component is functioning, including % of uploaded events, dropped events, and the last upload time.

-   **Quality-related information**. Helps Microsoft develop a basic understanding of how a device and its operating system are performing. Some examples are the device characteristics of a Connected Standby device, the number of crashes or hangs, and application state change details, such as how much processor time and memory were used, and the total uptime for an app.

-   **Compatibility data**. Helps provide an understanding about which apps are installed on a device or virtual machine and identifies potential compatibility problems.

    -   **General app data and app data for Internet Explorer add-ons**. Includes a list of apps that are installed on a native or virtualized instance of the OS and whether these apps function correctly after an upgrade. This app data includes the app name, publisher, version, and basic details about which files have been blocked from usage.

    -   **App usage data**. Includes how an app is used, including how long an app is used, when the app has focus, and when the app is started

    -   **Internet Explorer add-ons**. Includes a list of Internet Explorer add-ons that are installed on a device and whether these apps will work after an upgrade.

    -   **System data**. Helps provide an understanding about whether a device meets the minimum requirements to upgrade to the next version of the operating system. System information includes the amount of memory, as well as information about the processor and BIOS.

    -   **Accessory device data**. Includes a list of accessory devices, such as printers or external storage devices, that are connected to Windows PCs and whether these devices will function after upgrading to a new version of the operating system.

    -   **Driver data**. Includes specific driver usage that’s meant to help figure out whether apps and devices will function after upgrading to a new version of the operating system. This can help to determine blocking issues and then help Microsoft and our partners apply fixes and improvements.

-   **Windows Store**. Provides information about how the Windows Store performs, including app downloads, installations, and updates. It also includes Windows Store launches, page views, suspend and resumes, and obtaining licenses.

### Enhanced level

The Enhanced level gathers data about how Windows and apps are used and how they perform. This level also includes data from both the **Basic** and **Security** levels. This level helps to improve the user experience with the operating system and apps. Data from this level can be abstracted into patterns and trends that can help Microsoft determine future improvements.

This is the default level for Windows 10 Enterprise and Windows 10 Education editions, and the minimum level needed to quickly identify and address Windows, Windows Server, and System Center quality issues.

The data gathered at this level includes:

-   **Operating system events**. Helps to gain insights into different areas of the operating system, including networking, Hyper-V, Cortana, storage, file system, and other components.

-   **Operating system app events**. A set of events resulting from Microsoft applications and management tools that were downloaded from the Store or pre-installed with Windows or Windows Server, including Server Manager, Photos, Mail, and Microsoft Edge.

-   **Device-specific events**. Contains data about events that are specific to certain devices, such as Surface Hub and Microsoft HoloLens. For example, Microsoft HoloLens sends Holographic Processing Unit (HPU)-related events.

-   **Some crash dump types**. All crash dump types, except for heap dumps and full dumps.

If the Connected User Experience and Telemetry component detects a problem on Windows 10 that requires gathering more detailed instrumentation, the Connected User Experience and Telemetry component at the **Enhanced** telemetry level will only gather data about the events associated with the specific issue.

### Full level

The Full level gathers data necessary to identify and to help fix problems, following the approval process described below. This level also includes data from the **Basic**, **Enhanced**, and **Security** levels.

Additionally, at this level, devices opted in to the [Windows Insider Program](http://insider.windows.com) will send events, such as reliability and app responsiveness. that can show Microsoft how pre-release binaries and features are performing. These events help us make decisions on which builds are flighted. All devices in the [Windows Insider Program](http://insider.windows.com) are automatically set to this level.

If a device experiences problems that are difficult to identify or repeat using Microsoft’s internal testing, additional data becomes necessary. This data can include any user content that might have triggered the problem and is gathered from a small sample of devices that have both opted into the **Full** telemetry level and have exhibited the problem.

However, before more data is gathered, Microsoft’s privacy governance team, including privacy and other subject matter experts, must approve the diagnostics request made by a Microsoft engineer. If the request is approved, Microsoft engineers can use the following capabilities to get the information:

-   Ability to run a limited, pre-approved list of Microsoft certified diagnostic tools, such as msinfo32.exe, powercfg.exe, and dxdiag.exe.

-   Ability to get registry keys.

-   All crash dump types, including heap dumps and full dumps.

## Enterprise management

Sharing telemetry data with Microsoft provides many benefits to enterprises, so we do not recommend turning it off. For most enterprise customers, simply adjusting the telemetry level and managing specific components is the best option.

Customers can set the telemetry level in both the user interface and with existing management tools. Users can change the telemetry level in the **Diagnostic and usage data** setting. In the Settings app, it is in **Privacy\Feedback & diagnostics**. They can choose between Basic, Enhanced, and Full. The Security level is not available.

IT pros can use various methods, including Group Policy and Mobile Device Management (MDM), to choose a telemetry level.  If you’re using Windows 10 Enterprise, Windows 10 Education, or Windows Server 2016, the Security telemetry level is available when managing the policy. Setting the telemetry level through policy overrides users’ choices. The remainder of this section describes how to do that.


### Manage your telemetry settings

We do not recommend that you turn off telemetry in your organization as valuable functionality may be impacted, but we recognize that in some scenarios this may be required. Use the steps in this section to do so for Windows, Windows Server, and System Center.

>**Important:**  These telemetry levels only apply to Windows, Windows Server, and System Center components and apps that use the Connected User Experience and Telemetry component. Non-Windows components, such as Microsoft Office or other 3rd-party apps, may communicate with their cloud services outside of these telemetry levels. You should work with your app vendors to understand their telemetry policy, and how you can to opt in or opt out. For more information on how Microsoft Office uses telemetry, see [Overview of Office Telemetry](http://technet.microsoft.com/library/jj863580.aspx).

You can turn on or turn off System Center telemetry gathering. The default is on and the data gathered at this level represents what is gathered by default when System Center telemetry is turned on. However, setting the operating system telemetry level to **Basic** will turn off System Center telemetry, even if the System Center telemetry switch is turned on.

The lowest telemetry setting level supported through management policies is **Security**. The lowest telemetry setting supported through the Settings UI is **Basic**. The default telemetry setting for Windows Server 2016 Technical Preview is **Enhanced**.

### Configure the operating system telemetry level

You can configure your operating system telemetry settings using the management tools you’re already using, such as Group Policy, MDM, or Windows Provisioning. You can also manually change your settings using Registry Editor. Setting your telemetry levels through a management policy overrides any device level settings.

Use the appropriate value in the table below when you configure the management policy.

| Level    | Data gathered | Value |
| - | - | -  |
| Security | Security data only. | **0** |
| Basic | Security data, and basic system and quality data. | **1** |
| Enhanced | Security data, basic system and quality data, and enhanced insights and advanced reliability data. | **2** |
| Full | Security data, basic system and quality data, enhanced insights and advanced reliability data, and full diagnostics data. | **3** |


### Use Group Policy to set the telemetry level

Use a Group Policy object to set your organization’s telemetry level.

1.  From the Group Policy Management Console, go to **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Data Collection and Preview Builds**.

2.  Double-click **Allow Telemetry**.

3.  In the **Options** box, select the level that you want to configure, and then click **OK**.

### Use MDM to set the telemetry level

Use the [Policy Configuration Service Provider (CSP)](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) to apply the System/AllowTelemetry MDM policy.

### Use Registry Editor to set the telemetry level

Use Registry Editor to manually set the registry level on each device in your organization, or write a script to edit the registry. If a management policy already exists, such as Group Policy or MDM, it will override this registry setting.

1.  Open Registry Editor, and go to **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\DataCollection**.

2.  Right-click **DataCollection**, click New, and then click **DWORD (32-bit) Value**.

3.  Type **AllowTelemetry**, and then press ENTER.

4.  Double-click **AllowTelemetry**, set the desired value from the table above, and then click **OK.**

5.  Click **File** &gt; **Export**, and then save the file as a .reg file, such as **C:\\AllowTelemetry.reg**. You can run this file from a script on each device in your organization.

### Configure System Center 2016 telemetry

For System Center 2016 Technical Preview, you can turn off System Center telemetry by following these steps:

-   Turn off telemetry by using the System Center UI Console settings workspace.

-   For information about turning off telemetry for Service Management Automation and Service Provider Foundation, see [How to disable telemetry for Service Management Automation and Service Provider Foundation](https://support.microsoft.com/kb/3096505).

### Additional telemetry controls

There are a few more settings that you can turn off that may send telemetry information:

-   To turn off Windows Update telemetry, you have two choices. Either turn off Windows Update, or set your devices to be managed by an on premises update server, such as [Windows Server Update Services (WSUS)](http://technet.microsoft.com/library/hh852345.aspx) or [System Center Configuration Manager](http://www.microsoft.com/server-cloud/products/system-center-2012-r2-configuration-manager/).

-   Turn off **Windows Defender Cloud-based Protection** and **Automatic sample submission** in **Settings** &gt; **Update & security** &gt; **Windows Defender**.

-   Manage the Malicious Software Removal Tool in your organization. For more info, see Microsoft KB article [891716](http://support.microsoft.com/kb/891716).

-   Turn off **Linguistic Data Collection** in **Settings** &gt; **Privacy**. At telemetry levels **Enhanced** and **Full**, Microsoft uses Linguistic Data Collection info to improve language model features such as autocomplete, spellcheck, suggestions, input pattern recognition, and dictionary.

    >**Note:**  Microsoft does not intend to gather sensitive information, such as credit card numbers, usernames and passwords, email addresses, or other similarly sensitive information for Linguistic Data Collection. We guard against such events by using technologies to identify and remove sensitive information before linguistic data is sent from the user's device. If we determine that sensitive information has been inadvertently received, we delete the information.

## Additional resources

FAQs

- [Cortana, Search, and privacy](http://windows.microsoft.com/en-us/windows-10/cortana-privacy-faq)
- [Windows 10 feedback, diagnostics, and privacy](http://windows.microsoft.com/en-us/windows-10/feedback-diagnostics-privacy-faq)
- [Windows 10 camera and privacy](http://windows.microsoft.com/en-us/windows-10/camera-privacy-faq)
- [Windows 10 location service and privacy](http://windows.microsoft.com/en-us/windows-10/location-service-privacy)
- [Microsoft Edge and privacy](http://windows.microsoft.com/en-us/windows-10/edge-privacy-faq)
- [Windows 10 speech, inking, typing, and privacy](http://windows.microsoft.com/en-us/windows-10/speech-inking-typing-privacy-faq)
- [Windows Hello and privacy](http://windows.microsoft.com/en-us/windows-10/windows-hello-privacy-faq)
- [Wi-Fi Sense](http://windows.microsoft.com/en-us/windows-10/wi-fi-sense-faq)
- [Windows Update Delivery Optimization](http://windows.microsoft.com/en-us/windows-10/windows-update-delivery-optimization-faq)

Blogs

- [Privacy and Windows 10](https://blogs.windows.com/windowsexperience/2015/09/28/privacy-and-windows-10)

Privacy Statement

- [Microsoft Privacy Statement](https://privacy.microsoft.com/en-us/privacystatement)

TechNet

- [Manage connections from Windows operating system components to Microsoft services](https://technet.microsoft.com/en-us/itpro/windows/manage/manage-connections-from-windows-operating-system-components-to-microsoft-services)

Web Pages

- [Privacy at Microsoft](http://privacy.microsoft.com)
