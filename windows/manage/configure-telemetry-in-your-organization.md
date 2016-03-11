---
title: Configure telemetry in your organization (Windows 10)
description: Use this article to make informed decisions about how you can configure telemetry in your organization. We discuss telemetry as system data that is uploaded by the Connected User Experience and Telemetry component.
ms.assetid: 68D9BEAD-8ACE-4771-AF10-CCCD65EC7D98
keywords: ["privacy", "telemetry"]
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---

# Configure telemetry in your organization


**Applies to**

-   Windows 10
-   Windows 10 Mobile
-   Windows Server 2016 Technical Preview

Use this article to make informed decisions about how you can configure telemetry in your organization. We discuss telemetry as system data that is uploaded by the Connected User Experience and Telemetry component.

**Note**  
This article does not apply to System Center Configuration Manager, System Center Endpoint Protection, or System Center Data Protection Manager because those products use a different telemetry service than Windows and Windows Server

 

It describes the types of telemetry we collect and the ways you can manage its telemetry. This article also lists some examples of how telemetry can provide you with valuable insights into your enterprise deployments, and how Microsoft uses the data to quickly identify and address issues affecting its customers.

We understand that the privacy and security of our customers’ information is important and we have taken a thoughtful and comprehensive approach to customer privacy and the protection of their data with Windows 10, Windows Server 2016 Technical Preview, and System Center 2016.

## Overview


*“In order to deliver the experiences our customers need for the mobile-first and cloud-first world, we will modernize our engineering processes to be customer-obsessed, data-driven, speed-oriented, and quality-focused. We will be more effective in predicting and understanding what our customers need and more nimble in adjusting to information we get from the market. We will streamline the engineering process and reduce the amount of time and energy it takes to get things done.” – Satya Nadella, July, 2014*

In previous versions of Windows and Windows Server, Microsoft used telemetry to check for updated or new Windows Defender signatures, whether Windows Update installations were successful, collect reliability information through the Reliability Analysis Component (RAC) on Windows Server, and collect reliability information through the Windows Customer Experience Improvement Program (CEIP) on Windows. In Windows 10 and Windows Server 2016 Technical Preview , you can control telemetry streams by using **Settings** &gt; **Privacy**, Group Policy, or MDM.

Microsoft is committed to improving customer experiences in a mobile-first and cloud-first world, and it all starts with our customers. Telemetry is one critical way Microsoft is using data to improve our products and services. Telemetry gives every enterprise customer a voice that helps us shape future versions of Windows, Windows Server and System Center, allowing us to respond quickly to your feedback and providing new features and improved quality to our customers.

Our goal is to leverage the data to drive changes in the product and ecosystem to improve our customer experiences. We are also partnering with enterprises to provide added value from the telemetry information shared by their devices. Some examples include identifying outdated patches and downloading the latest antimalware signatures to help keep their devices secure, identifying application compatibility issues prior to upgrades, gaining insights into driver reliability issues affecting other customers, and using usage data to tune some of their operations to reduce the total cost of ownership (TCO) and downtime.

For Windows 10, we invite IT pros to join the Windows Insider Program to give us feedback on what we can do to make Windows work better for your organization.

## How is telemetry information handled by Microsoft?


### Collection

Information gathered by the Connected User Experience and Telemetry component complies with Microsoft’s [security and privacy policies](https://privacy.microsoft.com/privacystatement/), as well as international laws and regulations. The principle of least privilege guides access to telemetry data. Only those who can demonstrate a valid business need can access the telemetry info.

### Data transfer

All telemetry info is encrypted during transfer from the device to the Microsoft Data Management Service. Data is uploaded on a schedule that is sensitive to event priority, battery use, and network cost. Real-time events, such as gaming achievements, are always sent immediately. Normal events are not uploaded on metered networks, unless you are on a metered server connection. On a free network, normal events can be uploaded every 4 hours if on battery, or every 15 minutes if on A/C power. Diagnostic and crash data are only uploaded on A/C power and free networks.

### Microsoft Data Management Service

The Microsoft Data Management Service routes information to internal cloud storage. Only people with a valid business justification are permitted access. The Connected User Experiences and Telemetry component connects to the Microsoft Data Management service at v10.vortex-win.data.microsoft.com. The Connected User Experience and Telemetry component also connects to settings-win.data.microsoft.com to download configuration information.

### Data usage

Microsoft does not share personal data of our customers with third parties, except at the customer’s direction or for the limited purposes described in the Privacy Statement. We do share business reports with OEMs and third party partners that includes aggregated, anonymized telemetry information. Data-sharing decisions are made by an internal team including privacy, legal, and data management.

### Retention

Microsoft believes in and practices information minimization, so we only gather the info we need, and we only store it for as long as it’s needed to provide a service or for analysis. Much of the info about how Windows 10, Windows Server 2016 Technical Preview, and System Center are functioning is deleted within 30 days. Other info may be retained longer, particularly if there is a regulatory requirement to do so. Info is typically gathered at a fractional sampling rate, which for some client services, can be as low as 1%.

## How is the data gathered?


Windows 10 and Windows 10 includes the Connected User Experience and Telemetry component, which uses Event Tracing for Windows (ETW) [tracelogging](http://msdn.microsoft.com/library/dn904632.aspx) technology to gather and store telemetry events and data. The operating system and some Microsoft management solutions, such as System Center, use the same logging technology.

1.  Operating system features and some management applications are instrumented to publish events and data. Examples of management applications include Virtual Machine Manager (VMM), Server Manager, and Storage Spaces.

2.  Events are collected using public operating system event logging and tracing APIs.

3.  You can configure the telemetry level by using an MDM policy, Group Policy, or registry settings.

4.  The Connected User Experience and Telemetry component transmits telemetry data over HTTPS to Microsoft. It uses certificate pinning to protect against man-in-the-middle attacks and moresecurely deliver the data.

## Telemetry levels


This section explains the different telemetry levels in Windows 10, Windows Server 2016 Technical Preview, and System Center. These levels are available on all desktop and mobile editions of Windows 10, with the exception of the Security level which is limited to Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile Enterprise, Windows 10 IoT Core (IoT Core), and Windows Server 2016 Technical Preview.

The telemetry data is categorized into four levels:

-   **Security**. Information that’s required to help keep Windows, Windows Server, and System Center secure, including info about the Connected User Experience and Telemetry component settings, the Malicious Software Removal Tool, and Windows Defender.

-   **Basic**. Basic device info, including: quality-related info, app compat, and info from the Security level.

-   **Enhanced**. Additional insights, including: how Windows, Windows Server, System Center, and apps are used, how they perform, advanced reliability info, and info from both the Basic and the Security levels.

-   **Full**. All info necessary to identify and help to fix problems, plus info from the Security, Basic, and Enhanced levels.

The levels are cumulative and are illustrated into the following diagram:

![breakdown of telemetry levels and types of administrative controls](images/priv-telemetry-levels.png)

### Security level

The security level gathers only the telemetry info that is required to keep Windows devices, Windows Server, and guests secure with the latest security updates.

**Note**  
If your organization relies on Windows Update for updates, you shouldn’t use the Security level. Because no Windows Update information is gathered at this level, Microsoft can’t tell whether an update successfully installed.

Windows Server Update Services (WSUS) and System Center Configuration Manager functionality is not affected at this level, nor is telemetry data about Windows Server features or System Center collected.

 

Security level info includes:

-   **Connected User Experience and Telemetry component settings**. If data has been gathered and is queued to be sent, the Connected User Experience and Telemetry component downloads its settings file from Microsoft’s servers. The data collected by the client for this request includes OS information, device id (used to identify what specific device is requesting settings) and device class (for example, whether the device is server or desktop).

-   **Malicious Software Removal Tool (MSRT)** The MSRT infection report contains information, including device info and IP address.

    **Note**  
    You can turn off the MSRT infection report. No MSRT information is included if MSRT is not used. If Windows Update is turned off, MSRT will not be offered to users.

     

-   **Windows Defender**. Windows Defender requires some information to function, including: anti-malware signatures, diagnostic information, User Account Control settings, Unified Extensible Firmware Interface (UEFI) settings, and IP address.

    **Note**  
    This reporting can be turned off and no information is included if a customer is using third party antimalware software, or if Windows Defender is turned off.

    Microsoft recommends that Windows Update, Windows Defender, and MSRT remain enabled unless the enterprise uses alternative solutions such as Windows Server Update Services, System Center Configuration Manager, or a third party antimalware solution. Windows Update, Windows Defender, and MSRT provide core Windows functionality such as driver and OS updates, including security updates.

     

For servers with default telemetry settings and no Internet connectivity, you should set the telemetry level to Security. This stops data collection for events that would not be uploaded due to the lack of Internet connectivity.

No user content, such as user files or communications, is collected at the Security telemetry level, and we take steps to avoid gathering any information that directly identifies a company or user, such as name, email address, or account ID. However, in rare circumstances, MSRT information may unintentionally contain personal information. For instance, some malware may create entries in a computer’s registry that include information such as a username, causing it to be gathered. MSRT reporting is optional and can be turned off at any time.

### Basic level

The Basic level gathers a limited set of info that’s critical for understanding the device and its configuration. This level also includes the Security level info. This level helps to identify problems that can occur on a particular device hardware or software configuration. For example, it can help determine if crashes are more frequent on devices with a specific amount of memory or that are running a particular driver version. The Connected User Experience and Telemetry component does not gather telemetry data about System Center, but it can transmit telemetry for other non-Windows applications if they gained user consent.

The data collected at this level includes:

-   **Basic device info**. Helps provide an understanding about the types of Windows devices and the configurations and types of native and virtualized Windows Server 2016 Technical Previewinstances in the ecosystem, including:

    -   Device attributes, such as camera resolution and display type

    -   Internet Explorer version

    -   Battery attributes, such as capacity and type

    -   Networking attributes, such as number of network adapters, speed of network adapters, mobile operator network, and IMEI number

    -   Processor and memory attributes, such as number of cores, arhcitecture, speed, memory size, and firmware

    -   o Virtualization attribute, such as SLAT support and guest operating system

    -   Operating system attributes, such as Windows edition and virtualization state

    -   Storage attributes, such as number of drives, type, and size

-   **Connected User Experience and Telemetry component quality metrics**. Helps provide an understanding about how the Connected User Experience and Telemetry component is functioning, including uploaded events, dropped events, and the last upload time.

-   **Quality-related information**. Helps Microsoft develop a basic understanding of how a device and its operating system are performing. Some examples are the amount of time a connected standby device was able to fullsleep, the number of crashes or hangs, and application state change details, such as how much processor time and memory were used, and the total uptime for an app.

-   **App compat info**. Helps provide an understanding about which apps are installed on a device and to help identify potential compatibility problems.

    -   **General app info and app info for Internet Explorer add-ons**. Includes a list of apps that are installed on a native or virtualized instance of the OS and whether these apps function correctly after an upgrade.This app info includes the app name, publisher, version, and basic details about which files have been blocked from usage.

    -   **Internet Explorer add-on info**. Includes a list of Internet Explorer add-ons that are installed on a device and whether these apps will work after an upgrade.

    -   **System info**. Helps provide an understanding about whether a device meets the minimum requirements to upgrade to the next version of the operating system. System information includes the amount of memory, as well as info about the processor and BIOS.

    -   **Accessory device info**. Includes a list of accessory devices, such as printers or external storage devices, that are connected to Windows PCs and whether these devices will function after upgrading to a new version of the operating system.

    -   **Driver info**. Includes specific driver usage that’s meant to help figure out whether apps and devices will function after upgrading to a new version of the operating system. This info can help to determine blocking issues and then help Microsoft and our partners apply fixes and improvements.

-   **Store**. Provides info about how the Windows Store performs, including app downloads, installations, and updates. It also includes Windows Store launches, page views, suspend and resumes, and obtaining licenses.

Data collected at the Basic level helps to identify whether a problem occurs on a particular device hardware or software configuration. For example, it can help determine if a crash happens most frequently on devices with a certain memory type or a particular network driver version.

### Enhanced level

The Enhanced level collects info about how Windows and apps are used and how they perform. This level also includes info from both the Basic and Security levels. This level helps to improve experiences by analyzing user interaction with the operating system and apps. Info from this level can be abstracted into patterns and trends that can help Microsoft determine future improvements.

This is the default level, and the minimum level needed to quickly identify and address Windows, Windows Server, and System Center quality issues. For example, in Windows Server 2016 Technical Preview 4, if the operating system or an application crashes or hangs, the memory contents of the faulting process at the time of the crash or hang is gathered in a heap dump. This data provides Microsoft with valuable information needed to analyze and fix the issues.

The data collected at this level includes:

-   **Operating system events**. Helps to gain insights into different areas of the operating system, including networking, Hyper-V, Cortana, storage, file system, and other components.

-   **Operating system app events**. A set of events resulting from Microsoft applications and management tools that were downloaded from the Store or pre-installed with Windows or Windows Server, including Server Manager, Photos, Mail, and Microsoft Edge.

-   **Device-specific events**. Contains info about events that are specific to certain devices, such as Surface Hub and Microsoft HoloLens. For example, Microsoft HoloLens sends Holographic Processing Unit (HPU)-related events.

You can turn on or turn off System Center telemetry collection. The default is on and the data gathered at this level represents what is collected by default when System Center telemetry is turned on. However, setting the operating system telemetry level to Basic will turn off System Center telemetry, even if the System Center telemetry switch is turned on.

If the Connected User Experience and Telemetry component detects a problem on Windows 10 that requires collecting more detailed instrumentation, the Connected User Experience and Telemetry component will only collect info about the events associated with the specific issue. Also, if the operating system or an app crashes or hangs, Microsoft will collect the memory contents of the faulting process only at the time of the crash or hang.

### Full level

The Full level collect data necessary to identify and to help fix problems, following the approval process described below. This level also includes info from the Basic, Enhanced, and Security levels.

Additionally, at this level, devices opted in to the Windows Insider Program will send events that can show Microsoft how pre-release binaries and features are performing. All devices in the Windows Insider Program are automatically set to this level.

If a device experiences problems that are difficult to identify or repeat using Microsoft’s internal testing, additional info becomes necessary. This info can include any user content that might have triggered the problem and is gathered from a small sample of devices that have both opted into the Full telemetry level and have exhibited the problem.

However, before more info is gathered, Microsoft’s privacy governance team, including privacy and other subject matter experts, must approve the diagnostics request made by a Microsoft engineer. If the request is approved, Microsoft engineers can use the following capabilities to get the information:

-   Ability to run a limited, pre-approved list of Microsoft certified diagnostic tools, such as msinfo32.exe, powercfg.exe, and dxdiag.exe.

-   Ability to get registry keys.

-   Ability to gather user content, such as documents, if they might have been the trigger for the issue.

### Manage your telemetry settings

We do not recommend that you turn off telemetry in your organization, but we recognize that in some scenarios this may be required. Use the steps in this section to do so for Windows, Windows Server, and System Center.

**Important**  
These telemetry levels only apply to Windows, Windows Server, and System Center components and apps that use the Connected User Experience and Telemetry component. Non-Windows components, such as Microsoft Office or other 3rd-party apps, may communicate with their cloud services outside of these telemetry levels. App publishers must let people know about how they use their telemetry, ways to opt in or opt out, and they must separately document their privacy policies.

 

The lowest telemetry setting level supported through management policies is Security. The lowest telemetry setting supported through the Settings UI is Basic. The default telemetry setting for Windows Server 2016 Technical Preview is Enhanced.

### Configure the operating system telemetry level

You can configure your operating system telemetry settings using the management tools you’re already using, such as Group Policy, MDM, or Windows Provisioning. You can also manually change your settings using Registry Editor. Setting your telemetry levels through a management policy overrides any device-level settings.

Use the appropriate value in the table below when you configure the management policy.

| Value | Level    | Data collected                                                                                                            |
|-------|----------|---------------------------------------------------------------------------------------------------------------------------|
| **0** | Security | Security data only.                                                                                                       |
| **1** | Basic    | Security data, and basic system and quality data.                                                                         |
| **2** | Enhanced | Security data, basic system and quality data, and enhanced insights and advanced reliability data.                        |
| **3** | Full     | Security data, basic system and quality data, enhanced insights and advanced reliability data, and full diagnostics data. |

 

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

4.  Double-click **AllowTelemetry**, set the desired value, and then click **OK.**

5.  Click **File** &gt; **Export**, and then save the file as a .reg file, such as **C:\\AllowTelemetry.reg**. You can run this file from a script on each device in your organization.

### Configure System Center 2016 telemetry

For System Center 2016 Technical Preview, you can turn off System Center telemetry by following these steps:

-   Turn off telemetry by using the System Center UI Console settings workspace.

-   For information about turning off telemetry for Service Management Automation and Service Provider Foundation, see [How to disable telemetry for Service Management Automation and Service Provider Foundation](https://support.microsoft.com/kb/3096505).

### Additional telemetry controls

There are a few more settings that you can turn off that may send telemetry information:

-   To turn off Windows Update telemetry, you have two choices. Either turn off Windows Update, or set your devices to be managed by an on premises update server, such as [Windows Server Update Services (WSUS)](http://technet.microsoft.com/library/hh852345.aspx) or [System Center Configuration Manager](http://www.microsoft.com/server-cloud/products/system-center-2012-r2-configuration-manager/).

-   Turn off **Windows Defender Cloud-based Protection** and **Automatic sample submission** in **Settings** &gt; **Update & securit**y &gt; **Windows Defender**.

-   Manage the Malicious Software Removal Tool in your organization. For more info, see Microsoft KB article [891716.](http://support.microsoft.com/kb/891716)

-   Turn off **Linguistic Data Collection** in **Settings** &gt; **Privacy**. At telemetry levels Enhanced and Full, Microsoft uses Linguistic Data Collection info to improve language model features such as autocomplete, spellcheck, suggestions, input pattern recognition, and dictionary.

    **Note**  
    Microsoft doesn't intentionally gather sensitive information, such as credit card numbers, usernames and passwords, email addresses, or other similarly sensitive information for Linguistic Data Collection. We guard against such events by using technologies to identify and remove sensitive information before linguistic data is sent from the user's device. If we determine that sensitive information has been inadvertently received, we delete the information.

     

## Examples of how Microsoft uses the telemetry data


### Drive higher apps and driver quality in the ecosystem

Telemetry plays an important role in quickly identifying and fixing critical reliability and security issues in our customers’ deployments and configurations. Insights into the telemetry data we collect help us to quickly identify crashes or hangs associated with a certain application or driver on a given configuration, like a particular storage type (for example, SCSI) or a memory size. For System Center, job usages and statuses can also help us enhance the job workload and the communication between System Center and its managed products. Microsoft’s ability to get this data from customers and drive improvements into the ecosystem helps raise the bar for the quality of System Center, Windows Server applications, Windows apps, and drivers. Real-time data about Windows installations reduces downtime and the cost associated with troubleshooting unreliable drivers or unstable applications

### Reduce your total cost of ownership and downtime

Telemetry provides a view of which features and services customers use most. For example, the telemetry info provides us with a heat map of the most commonly deployed Windows Server roles, most used Windows features, and which ones are used the least. This helps us make informed decisions on where we should invest our engineering resources to build a leaner operating system. For System Center, understanding the customer environment for management and monitoring will help drive the support compatibilities matrix, such as host and guest OS. This can help you use existing hardware to meet your business needs and reduce your total cost of ownership, as well as reducing downtime associated with security updates.

### <a href="" id="build-features-that-address-our-customers--needs"></a>Build features that address our customers’ needs

Telemetry also helps us better understand how customers deploy components, use features, and use services to achieve their business goals. Getting insights from that information helps us prioritize our engineering investments in areas that can directly affect our customers’ experiences and workloads. Some examples include customer usage patterns of containers, storage, and networking configurations associated with Windows Server roles like Clustering and Web. Another example could be to find out when is CPU hyper-threading turned off and the resulting impact. We use the insights to drive improvements and intelligence into some of our management and monitoring solutions, to help customers diagnose quality issues, and save money by making fewer help calls to Microsoft.

 

 





