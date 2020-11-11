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
author: dansimp
ms.author: dansimp
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 10/13/2020
---

# Configure Windows diagnostic data in your organization

**Applies to**

- Windows 10 Enterprise
- Windows 10 Education
- Windows Server 2016 and newer

This article applies to Windows 10, Windows Server, Surface Hub, and HoloLens diagnostic data only. It describes the types of diagnostic data that’s sent back to Microsoft and the ways you can manage it within your organization. Microsoft uses the data to quickly identify and address issues affecting its customers.

>[!IMPORTANT]
>Microsoft is [increasing transparency](https://blogs.microsoft.com/on-the-issues/2019/04/30/increasing-transparency-and-customer-control-over-data/) by categorizing the data we collect as required or optional. Windows 10 is in the process of updating devices to reflect this new categorization, and during this transition Basic diagnostic data will be recategorized as Required diagnostic data and Full diagnostic data will be recategorized as Optional diagnostic data. For more information, see [Changes to Windows diagnostic data](changes-to-windows-diagnostic-data-collection.md).

## Overview 

Microsoft collects Windows diagnostic data to solve problems and to keep Windows up to date, secure, and operating properly. It also helps us improve Windows and related Microsoft products and services and, for customers who have turned on the **Tailored experiences** setting, to provide more relevant tips and recommendations to enhance Microsoft and third-party products and services for the customer’s needs.

For more information about how Windows diagnostic data is used, see [Diagnostics, feedback, and privacy in Windows 10](https://support.microsoft.com/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy).

### Diagnostic data gives users a voice

Diagnostic data gives every user a voice in the operating system’s development and ongoing improvement. It helps us understand how Windows 10 and Windows Server behaves in the real world, focus on user priorities, and make informed decisions that benefit both consumer and enterprise customers. The following sections offer real examples of these benefits.

### _Improve app and driver quality_

Our ability to collect diagnostic data that drives improvements to Windows and Windows Server helps raise the bar for app and device driver quality. Diagnostic data helps us to quickly identify and fix critical reliability and security issues with apps and device drivers used on Windows. For example, we can identify an app that hangs on devices using a specific version of a video driver, allowing us to work with the app and device driver vendor to quickly fix the issue. The result is less downtime and reduced costs and increased productivity associated with troubleshooting these issues.

For example, in an earlier version of Windows 10 there was a version of a video driver that was crashing on some devices, causing the device to restart. We detected the problem in our diagnostic data, and immediately contacted the third-party developer who builds the video driver. Working with the developer, we provided an updated driver to Windows Insiders within 24 hours. Based on diagnostic data from the Windows Insiders’ devices, we were able to validate the new version of the video driver and rolled it out to the broad public as an update the next day. Diagnostic data helped us find, fix, and resolve this problem in just 48 hours, providing a better user experience and reducing costly support calls.

### _Improve end-user productivity_

Windows diagnostic data also helps Microsoft better understand how customers use (or do not use) the operating system’s features and related services. The insights we gain from this data helps us prioritize our engineering effort to directly impact our customers’ experiences. These examples show how the use of diagnostic data enables Microsoft to build or enhance features which can help organizations increase employee productivity while lowering help desk calls.

- **Start menu.** How do people change the Start menu layout? Do they pin other apps to it? Are there any apps that they frequently unpin? We use this dataset to adjust the default Start menu layout to better reflect people’s expectations when they turn on their device for the first time.

- **Cortana.** We use diagnostic data to monitor the scalability of our cloud service, improving search performance.

- **Application switching.** Research and observations from earlier Windows versions showed that people rarely used Alt+Tab to switch between apps. After discussing this with some users, we learned they loved the feature, saying that it would be highly productive, but they did not know about it previously. Based on this, we created the Task View button in Windows 10 to make this feature more discoverable. Later diagnostic data showed significantly higher usage of this feature.

## How Microsoft handles diagnostic data

Use the following sections to learn more about how Microsoft handles diagnostic data.

### Data collection

Depending on the diagnostic data settings on the device, diagnostic data can be collected via the following methods:

 - Small payloads of structured information referred to as diagnostic data events, managed by the Connected User Experiences and Telemetry component.
 
 - Diagnostic logs for additional troubleshooting, also managed by the Connected User Experience and Telemetry component. 
 
 - Crash reporting and crash dumps, managed by [Windows Error Reporting](https://docs.microsoft.com/windows/win32/wer/windows-error-reporting).

Later in this document we provide further details about how to control what’s collected and what data can be included in these different types of diagnostic data.

### Data transmission

All diagnostic data is encrypted using TLS and uses certificate pinning during transfer from the device to the Microsoft data management services.

### Endpoints

The following table lists the endpoints related to how you can manage the collection and control of diagnostic data. For more information around the endpoints that are used to send data back to Microsoft, see [Manage connection endpoints for Windows 10 Enterprise, version 1903](manage-windows-1903-endpoints.md).

| Windows service | Endpoint |
| - | - |
|Connected User Experiences and Telemetry | v10.events.data.microsoft.com <br></br> v10c.events.data.microsoft.com <br></br> v10.vortex-win.data.microsoft.com |
| [Windows Error Reporting](https://docs.microsoft.com/windows/win32/wer/windows-error-reporting) | watson.telemetry.microsoft.com <br></br> watson.microsoft.com <br></br> umwatsonc.telemetry.microsoft.com <br></br> umwatsonc.events.data.microsoft.com <br></br> *-umwatsonc.events.data.microsoft.com <br></br> ceuswatcab01.blob.core.windows.net <br></br> ceuswatcab02.blob.core.windows.net <br></br> eaus2watcab01.blob.core.windows.net <br></br> eaus2watcab02.blob.core.windows.net <br></br> weus2watcab01.blob.core.windows.net <br></br> weus2watcab02.blob.core.windows.net |
|Authentication | login.live.com <br></br> <br></br> IMPORTANT: This endpoint is used for device authentication. We do not recommend disabling this endpoint.|
| [Online Crash Analysis](https://docs.microsoft.com/windows/win32/dxtecharts/crash-dump-analysis) | oca.telemetry.microsoft.com <br></br> oca.microsoft.com <br></br> kmwatsonc.telemetry.microsoft.com <br></br> *-kmwatsonc.telemetry.microsoft.com |
|Settings | settings-win.data.microsoft.com <br></br> <br></br> IMPORTANT: This endpoint is used to remotely configure diagnostics-related settings and data collection. For example, we use the settings endpoint to remotely block an event from being sent back to Microsoft. We do not recommend disabling this endpoint. This endpoint does not upload Windows diagnostic data |

### Data access

The principle of least privileged access guides access to Windows diagnostic data. Microsoft does not share personal data of our customers with third parties, except at the customer’s discretion or for the limited purposes described in the [Privacy Statement](https://privacy.microsoft.com/en-US/privacystatement). Microsoft may share business reports with hardware manufacturers and third-party partners that include aggregated and deidentified diagnostic data information. Data-sharing decisions are made by an internal team including privacy, legal, and data management. 

### Retention

Microsoft believes in and practices data minimization. We strive to gather only the info we need and to store it only for as long as it’s needed to provide a service or for analysis. For more information on how long data is retained, see the section named **Our retention of personal data** in the [Microsoft Privacy Statement](https://privacy.microsoft.com/en-US/privacystatement).

## Diagnostic data settings

There are four diagnostic data collection settings. Each setting is described in more detail in the sections that follow.

- Diagnostic data off (Security)
- Required diagnostic data (Basic)
- Enhanced
- Optional diagnostic data (Full)

Here’s a summary of the types of data that is included with each setting:

| | Diagnostic data off (Security) | Required (Basic) | Enhanced | Optional (Full) |
| --- | --- | --- | --- | --- |
| **Diagnostic data events** | No Windows diagnostic data sent. | Minimum data required to keep the device secure, up to date, and performing as expected. | Additional data about the websites you browse, how Windows and apps are used and how they perform, and device activity. The additional data helps Microsoft to fix and improve products and services for all users. | Additional data about the websites you browse, how Windows and apps are used and how they perform. This data also includes data about device activity, and enhanced error reporting that helps Microsoft to fix and improve products and services for all users.|
| **Crash Metadata** | N/A | Yes | Yes | Yes |
| **Crash Dumps** | N/A | No | Triage dumps only <br></br>For more information about crash dumps, see [Windows Error Reporting](https://docs.microsoft.com/windows/win32/wer/windows-error-reporting). | Full memory dumps <br></br>For more information about crash dumps, see [Windows Error Reporting](https://docs.microsoft.com/windows/win32/wer/windows-error-reporting).  |
| **Diagnostic logs** | N/A | No | No | Yes |
| **Data collection** | N/A | 100% | Sampling applies | Sampling applies |


### Diagnostic data off

This setting was previously labeled as **Security**. When you configure this setting, no Windows diagnostic data is sent from your device. This is only available on Windows Server, Windows 10 Enterprise, and Windows 10 Education. If you choose this setting, devices in your organization will still be secure.

>[!NOTE] 
> If your organization relies on Windows Update, the minimum recommended setting is **Required diagnostic data**. Because no Windows Update information is collected when diagnostic data is off, important information about update failures is not sent. Microsoft uses this information to fix the causes of those failures and improve the quality of our updates.

### Required diagnostic data

Required diagnostic data, previously labeled as **Basic**, gathers a limited set of data that’s critical for understanding the device and its configuration. This data helps to identify problems that can occur on a specific hardware or software configuration. For example, it can help determine if crashes are more frequent on devices with a specific amount of memory or that are running a specific driver version.

This is the default setting for Windows 10 Education editions, as well as all desktop editions starting with Windows 10, version 1903.

Required diagnostic data includes:

- Basic device data that helps provide an understanding about the types of Windows devices and the configurations and types of native and virtualized Windows Servers in the ecosystem. Examples include:

   - Device attributes, such as camera resolution and display type
   - Battery attributes, such as capacity and type
   - Networking attributes, such as number of network adapters, speed of network adapters, mobile operator network, and IMEI number
   - Processor and memory attributes, such as number of cores, architecture, speed, memory size, and firmware
   - Virtualization attribute, such as Second Level Address Translation (SLAT) support and guest operating system
   - Operating system attributes, such as Windows edition and virtualization state
   - Storage attributes, such as number of drives, type, and size

- Quality metrics that helps provide an understanding about how the Connected User Experiences and diagnostic data component is functioning, including % of uploaded events, dropped events, blocked events, and the last upload time.

- Quality-related information that helps Microsoft develop a basic understanding of how a device and its operating system are performing. Some examples are the device characteristics of a Connected Standby device, the number of crashes or hangs, and app state change details, such as how much processor time and memory were used, and the total uptime for an app.

- Compatibility data that helps provide an understanding about which apps are installed on a device or virtual machine and identifies potential compatibility problems.

- System data that helps provide an understanding about whether a device meets the minimum requirements to upgrade to the next version of the operating system. System information includes the amount of memory, as well as information about the processor and BIOS.

- A list of accessory device data, such as printers or external storage devices, that are connected to Windows devices and whether these devices will function after upgrading to a new version of the operating system.

- Driver data that includes specific driver activity that’s meant to help figure out whether apps and devices will function after upgrading to a new version of the operating system. This can help to determine blocking issues and then help Microsoft and our partners apply fixes and improvements.

- Information about how the Microsoft Store performs, including app downloads, installations, and updates. It also includes Microsoft Store launches, page views, suspend and resumes, and obtaining licenses.

### Enhanced diagnostic data

>[!NOTE] 
>We’re simplifying your diagnostic data controls by moving from four diagnostic data controls to three: **Diagnostic data off**, **Required**, and **Optional**. making changes to the enhanced diagnostic data level. For more info about this change, see [Changes to Windows diagnostic data](changes-to-windows-diagnostic-data-collection.md).

Enhanced diagnostic data includes data about the websites you browse, how Windows and apps are used and how they perform, and device activity. The additional data helps Microsoft to fix and improve products and services for all users. When you choose to send enhanced diagnostic data, required diagnostic data will always be included, and we collect the following additional information:

 - Operating system events that help to gain insights into different areas of the operating system, including networking, Hyper-V, Cortana, storage, file system, and other components.
 
 - Operating system app events resulting from Microsoft apps and management tools that were downloaded from the Microsoft Store or pre-installed with Windows or Windows Server, including Server Manager, Photos, Mail, and Microsoft Edge.
 
 - Device-specific events that are specific to certain devices, such as Surface Hub and Microsoft HoloLens. For example, Microsoft HoloLens sends Holographic Processing Unit (HPU)-related events.
 
 - All crash dump types, except for heap dumps and full dumps. For more information about crash dumps, see [Windows Error Reporting](https://docs.microsoft.com/windows/win32/wer/windows-error-reporting).

 ### Optional diagnostic data

Optional diagnostic data, previously labeled as **Full**, includes more detailed information about your device and its settings, capabilities, and device health. Optional diagnostic data also includes data about the websites you browse, device activity, and enhanced error reporting that helps Microsoft to fix and improve products and services for all users. When you choose to send optional diagnostic data, required diagnostic data will always be included, and we collect the following additional information:

 - Additional data about the device, connectivity, and configuration, beyond that collected under required diagnostic data.
 
 - Status and logging information about the health of operating system and other system components beyond what is collected under required diagnostic data.
 
 - App activity, such as which programs are launched on a device, how long they run, and how quickly they respond to input.
 
 - Browser activity, including browsing history and search terms, in Microsoft browsers (Microsoft Edge or Internet Explorer).
 
 - Enhanced error reporting, including the memory state of the device when a system or app crash occurs (which may unintentionally contain user content, such as parts of a file you were using when the problem occurred). Crash data is never used for Tailored experiences.

>[!Note]
>Crash dumps collected in optional diagnostic data may unintentionally contain personal data, such as portions of memory from a document and a web page. For more information about crash dumps, see [Windows Error Reporting](https://docs.microsoft.com/windows/win32/wer/windows-error-reporting).

## Manage enterprise diagnostic data

Use the steps in this section to configure the diagnostic data settings for Windows and Windows Server in your organization.

>[!IMPORTANT] 
>These diagnostic data settings only apply to components, features, and apps that are considered a part of the Windows operating system. Third-party apps and other Microsoft apps, such as Microsoft Office, that customers install may also collect and send diagnostic data using their own controls. You should work with your app vendors to understand their diagnostic data policy, and how you can opt in or opt out. For more information on how Microsoft Office uses diagnostic data, see [Overview of privacy controls for Microsoft 365 Apps for enterprise](https://docs.microsoft.com/deployoffice/privacy/overview-privacy-controls). If you would like to control Windows data collection that is not Windows diagnostic data, see [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md).

You can configure your device's diagnostic data settings using the management tools you’re already using, such as Group Policy or MDM.

Use the appropriate value in the table below when you configure the management policy.

| Category | Value |
| - | - |
|Diagnostic data off (Security) | 0 | 
| Required (Basic) | 1 | 
| Enhanced | 2 | 
|Optional (Full) | 3 |

>[!Note]
>When both the Computer Configuration policy and User Configuration policies are set, the more restrictive policy is used.

### Use Group Policy to manage diagnostic data collection

You can use Group Policy to set your organization’s diagnostic data setting:

1. From the Group Policy Management Console, go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Data Collection and Preview Builds**.

2.  Double-click **Allow Telemetry**.

    > [!NOTE]
    > If devices in your organization are running Windows 10, 1803 and newer, the user can still use Settings to set the diagnostic data setting to a more restrictive value, unless the **Configure diagnostic data opt-in settings user interface** policy is set.

3. In the **Options** box, choose the setting that you want to configure, and then click **OK**.

### Use MDM to manage diagnostic data collection

Use [Policy Configuration Service Provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider) to apply the System/AllowTelemetry MDM policy.

## Limit optional diagnostic data for Desktop Analytics

For more information about how to limit the diagnostic data to the minimum required by Desktop Analytics, see [Enable data sharing for Desktop Analytics](https://docs.microsoft.com/mem/configmgr/desktop-analytics/enable-data-sharing).

## Change privacy settings on a single server

You can also change the privacy settings on a server running either the Azure Stack HCI operating system or Windows Server. For more information, see [Change privacy settings on individual servers](https://docs.microsoft.com/azure-stack/hci/manage/change-privacy-settings).

To manage privacy settings in your enterprise as a whole, see [Manage enterprise diagnostic data](#manage-enterprise-diagnostic-data).
