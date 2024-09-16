---
description: Use this article to make informed decisions about how you can configure Windows diagnostic data in your organization.
title: Configure Windows diagnostic data in your organization (Windows 10 and Windows 11)
ms.service: windows-client
ms.subservice: itpro-privacy
ms.localizationpriority: high
author: DHB-MSFT
ms.author: danbrown
manager: laurawi
ms.date: 03/11/2016
ms.collection: highpri
ms.topic: conceptual
---

# Configure Windows diagnostic data in your organization

**Applies to**

- Windows 11 Enterprise
- Windows 11 Education
- Windows 11 Professional
- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Professional
- Windows Server 2016 and later
- Surface Hub
- Hololens

This article describes the types of Windows diagnostic data sent back to Microsoft and the ways you can manage it within your organization. Microsoft uses the data to quickly identify and address issues affecting its customers.

## Overview

Microsoft collects Windows diagnostic data to solve problems and to keep Windows up to date, secure, and operating properly. It also helps us improve Windows and related Microsoft products and services and, for customers who have turned on the **Tailored experiences** setting, to provide more relevant tips and recommendations to enhance Microsoft and third-party products and services for each customer’s needs.

For more information about how Windows diagnostic data is used, see [Diagnostics, feedback, and privacy in Windows](https://support.microsoft.com/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy).

### Diagnostic data gives users a voice

Diagnostic data gives every user a voice in the operating system’s development and ongoing improvement. It helps us understand how Windows behave in the real world, focus on user priorities, and make informed decisions that benefit both consumer and enterprise customers. The following sections offer real examples of these benefits.

### _Improve app and driver quality_

Our ability to collect diagnostic data that drives improvements to Windows and Windows Server helps raise the bar for app and device driver quality. Diagnostic data helps us to quickly identify and fix critical reliability and security issues with apps and device drivers used on Windows. For example, we can identify an app that hangs on devices using a specific version of a video driver, allowing us to work with the app and device driver vendor to quickly fix the issue. The result is less downtime and reduced costs and increased productivity associated with troubleshooting these issues.

For example, in an earlier version of Windows there was a version of a video driver that was crashing on some devices, causing the device to restart. We detected the problem in our diagnostic data, and immediately contacted the third-party developer who builds the video driver. Working with the developer, we provided an updated driver to Windows Insiders within 24 hours. Based on diagnostic data from the Windows Insiders’ devices, we were able to validate the new version of the video driver and rolled it out to the broad public as an update the next day. Diagnostic data helped us find, fix, and resolve this problem in just 48 hours, providing a better user experience and reducing costly support calls.

### _Improve end-user productivity_

Windows diagnostic data also helps Microsoft better understand how customers use (or do not use) the operating system’s features and related services. The insights we gain from this data helps us prioritize our engineering effort to directly impact our customers’ experiences. These examples show how the use of diagnostic data enables Microsoft to build or enhance features which can help organizations increase employee productivity while lowering help desk calls.

- **Start menu.** How do people change the Start menu layout? Do they pin other apps to it? Are there any apps that they frequently unpin? We use this dataset to adjust the default Start menu layout to better reflect people’s expectations when they turn on their device for the first time.

- **Cortana.** We use diagnostic data to monitor the scalability of our cloud service, improving search performance.

- **Application switching.** Research and observations from earlier Windows versions showed that people rarely used Alt+Tab to switch between apps. After discussing this with some users, we learned they loved the feature, saying that it would be highly productive, but they did not know about it previously. Based on this, we created the Task View button in Windows to make this feature more discoverable. Later diagnostic data showed significantly higher usage of this feature.

## How Microsoft handles diagnostic data

Use the following sections to learn more about how Microsoft handles diagnostic data.

### Data collection

Depending on the diagnostic data settings on the device, diagnostic data can be collected via the following methods:

 - Small payloads of structured information referred to as diagnostic data events, managed by the Connected User Experiences and Telemetry component.
 
 - Diagnostic logs for additional troubleshooting, also managed by the Connected User Experiences and Telemetry component.
 
 - Crash reporting and crash dumps, managed by [Windows Error Reporting](/windows/win32/wer/windows-error-reporting).

Later in this document we provide further details about how to control what’s collected and what data can be included in these different types of diagnostic data.

As of March 6, 2024, Microsoft Edge diagnostic data is collected separately from Windows diagnostic data on Windows 10 (version 22H2 and newer) and Windows 11 (version 23H2 and newer) devices in the European Economic Area. The collection of Microsoft Edge diagnostic data is subject to its own settings. For more information related to this change, see [Microsoft Edge, browsing data, and privacy](https://support.microsoft.com/windows/bb8174ba-9d73-dcf2-9b4a-c582b4e640dd).

### Data transmission

All diagnostic data is encrypted using Transport Layer Security (TLS) and uses certificate pinning during transfer from the device to the Microsoft data management services.

### Endpoints

The following table lists the endpoints related to how you can manage the collection and control of diagnostic data. For more information around the endpoints that are used to send data back to Microsoft, see the **Manage connection endpoints** section of the left-hand navigation menu.

| Windows service | Endpoint |
| - | - |
|Connected User Experiences and Telemetry | v10.events.data.microsoft.com <br></br> v10c.events.data.microsoft.com <br></br> v10.vortex-win.data.microsoft.com |
| [Windows Error Reporting](/windows/win32/wer/windows-error-reporting) | watson.telemetry.microsoft.com <br></br> umwatsonc.events.data.microsoft.com <br></br> *-umwatsonc.events.data.microsoft.com <br></br> ceuswatcab01.blob.core.windows.net <br></br> ceuswatcab02.blob.core.windows.net <br></br> eaus2watcab01.blob.core.windows.net <br></br> eaus2watcab02.blob.core.windows.net <br></br> weus2watcab01.blob.core.windows.net <br></br> weus2watcab02.blob.core.windows.net |
|Authentication | login.live.com <br></br> <br></br> IMPORTANT: This endpoint is used for device authentication. We do not recommend disabling this endpoint.|
| [Online Crash Analysis](/windows/win32/dxtecharts/crash-dump-analysis) | oca.telemetry.microsoft.com <br></br> oca.microsoft.com <br></br> kmwatsonc.events.data.microsoft.com <br></br> *-kmwatsonc.events.data.microsoft.com |
|Settings | settings-win.data.microsoft.com <br></br> <br></br> IMPORTANT: This endpoint is required to remotely configure diagnostics-related settings and data collection. For example, we use the settings endpoint to remotely block an event from being sent back to Microsoft, or to enroll a device in the Windows diagnostic data processor configuration. Do not block access to this endpoint. This endpoint does not upload Windows diagnostic data. |

### Proxy server authentication

If your organization uses proxy server authentication for internet access, make sure that it doesn't block the diagnostic data because of authentication. 

#### Bypass (recommended)

Configure your proxy servers to not require proxy authentication for traffic to the diagnostic data endpoints. This option is the most comprehensive solution. It works for all versions of Windows 10 and Windows 11.  

#### User proxy authentication

Configure devices to use the signed-in user's context for proxy authentication. This method requires the following configurations:

- Devices have the current quality update for a supported version of Windows

- Configure user-level proxy (WinINET proxy) in **Proxy settings** in the Network & Internet group of Windows Settings. You can also use the legacy Internet Options control panel.

- Make sure that the users have proxy permission to reach the diagnostic data endpoints. This option requires that the devices have console users with proxy permissions, so you can't use this method with headless devices.

> [!IMPORTANT]
> The user proxy authentication approach is incompatible with the use of Microsoft Defender for Endpoint. This behavior is because this authentication relies on the **DisableEnterpriseAuthProxy** registry key set to `0`, while Microsoft Defender for Endpoint requires it to be set to `1`. For more information, see [Configure machine proxy and internet connectivity settings in Microsoft Defender for Endpoint](/windows/security/threat-protection/windows-defender-atp/configure-proxy-internet-windows-defender-advanced-threat-protection).

#### Device proxy authentication

This approach supports the following scenarios:

- Headless devices, where no user signs in, or users of the device don't have internet access

- Authenticated proxies that don't use Windows Integrated Authentication

- If you also use Microsoft Defender for Endpoint

This approach is the most complex because it requires the following configurations:

- Make sure devices can reach the proxy server through WinHTTP in local system context. Use one of the following options to configure this behavior:

  - The command line `netsh winhttp set proxy`

  - Web proxy autodiscovery (WPAD) protocol

  - Transparent proxy

  - Configure device-wide WinINET proxy using the following group policy setting: **Make proxy settings per-machine (rather than per-user)** (ProxySettingsPerUser = `1`)

  - Routed connection, or that uses network address translation (NAT)

- Configure proxy servers to allow the computer accounts in Active Directory to access the diagnostic data endpoints. This configuration requires proxy servers to support Windows Integrated Authentication.

### Data access

The principle of least privileged access guides access to Windows diagnostic data. Microsoft does not share personal data of our customers with third parties, except at the customer’s discretion or for the limited purposes described in the [Privacy Statement](https://privacy.microsoft.com/en-US/privacystatement). Microsoft may share business reports with hardware manufacturers and third-party partners that include aggregated and deidentified diagnostic data information. Data-sharing decisions are made by an internal team including privacy, legal, and data management. 

### Retention

Microsoft believes in and practices data minimization. We strive to gather only the info we need and to store it only for as long as it’s needed to provide a service or for analysis. For more information on how long data is retained, see the section named **Our retention of personal data** in the [Microsoft Privacy Statement](https://privacy.microsoft.com/en-US/privacystatement).

## Diagnostic data settings

There are four diagnostic data collection settings. Each setting is described in more detail in the sections that follow.

- Diagnostic data off (Security)
- Required diagnostic data (Basic)
- Enhanced (This setting is only available on devices running Windows 10, Windows Server 2016, and Windows Server 2019.)
- Optional diagnostic data (Full)

Here’s a summary of the types of data that is included with each setting:

| | Diagnostic data off (Security) | Required (Basic) | Enhanced | Optional (Full) |
| --- | --- | --- | --- | --- |
| **Diagnostic data events** | No Windows diagnostic data sent. | Minimum data required to keep the device secure, up to date, and performing as expected. | Additional data about the websites you browse, how Windows and apps are used and how they perform, and device activity. The additional data helps Microsoft to fix and improve products and services for all users. | Additional data about the websites you browse, how Windows and apps are used and how they perform. This data also includes data about device activity, and enhanced error reporting that helps Microsoft to fix and improve products and services for all users.|
| **Crash Metadata** | N/A | Yes | Yes | Yes |
| **Crash Dumps** | N/A | No | Triage dumps only <br></br>For more information about crash dumps, see [Windows Error Reporting](/windows/win32/wer/windows-error-reporting). | Full and triage memory dumps <br></br>For more information about crash dumps, see [Windows Error Reporting](/windows/win32/wer/windows-error-reporting). |
| **Diagnostic logs** | N/A | No | No | Yes |
| **Data collection** | N/A | 100% | Sampling applies | Sampling applies |


### Diagnostic data off

This setting was previously labeled as **Security**. When you configure this setting, no Windows diagnostic data is sent from your device. This is only available on Windows Server, Windows Enterprise, and Windows Education editions. If you choose this setting, devices in your organization will still be secure.

This was the default setting for Windows Server 2022 Datacenter: Azure Edition prior to December 13, 2022.

>[!NOTE]
> If your organization relies on Windows Update, the minimum recommended setting is **Required diagnostic data**. Because no Windows Update information is collected when diagnostic data is off, important information about update failures is not sent. Microsoft uses this information to fix the causes of those failures and improve the quality of our updates.

### Required diagnostic data

Required diagnostic data, previously labeled as **Basic**, gathers a limited set of data that’s critical for understanding the device and its configuration. This data helps to identify problems that can occur on a specific hardware or software configuration. For example, it can help determine if crashes are more frequent on devices with a specific amount of memory or that are running a specific driver version.

This is the default setting for current releases of Windows, Windows 10, version 1903. Beginning December 13, 2022, it is also the default setting for Windows Server 2022 Datacenter: Azure Edition.

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

In Windows 10 and Windows Server 2019, enhanced diagnostic data includes data about the websites you browse, how Windows and apps are used and how they perform, and device activity. The additional data helps Microsoft to fix and improve products and services for all users.

>[!Important]
>This diagnostic data setting is not available on Windows 11 and Windows Server 2022 and has been replaced with policies that can control the amount of optional diagnostic data that is sent. More information on these settings are available in the **Manage diagnostic data using Group Policy and MDM** section of this topic.

When you choose to send enhanced diagnostic data, required diagnostic data will always be included, and we collect the following additional information:

 - Operating system events that help to gain insights into different areas of the operating system, including networking, Hyper-V, Cortana, storage, file system, and other components.

 - Operating system app events resulting from Microsoft apps and management tools that were downloaded from the Microsoft Store or pre-installed with Windows or Windows Server, including Server Manager, Photos, Mail, and Microsoft Edge.

 - Device-specific events that are specific to certain devices, such as Surface Hub and Microsoft HoloLens. For example, Microsoft HoloLens sends Holographic Processing Unit (HPU)-related events.

 - All crash dump types, except for heap dumps and full dumps. For more information about crash dumps, see [Windows Error Reporting](/windows/win32/wer/windows-error-reporting).

### Optional diagnostic data

Optional diagnostic data, previously labeled as **Full**, includes more detailed information about your device and its settings, capabilities, and device health. Optional diagnostic data also includes data about the websites you browse, device activity, and enhanced error reporting that helps Microsoft to fix and improve products and services for all users. When you choose to send optional diagnostic data, required diagnostic data will always be included, and we collect the following additional information:

 - Additional data about the device, connectivity, and configuration, beyond that collected under required diagnostic data.

 - Status and logging information about the health of operating system and other system components beyond what is collected under required diagnostic data.

 - App activity, such as which programs are launched on a device, how long they run, and how quickly they respond to input.

 - Browser activity, including browsing history and search terms, in Microsoft browsers (Microsoft Edge or Internet Explorer).

 - Enhanced error reporting, including the memory state of the device when a system or app crash occurs (which may unintentionally contain user content, such as parts of a file you were using when the problem occurred). Crash data is never used for Tailored experiences.

>[!Note]
>Crash dumps collected in optional diagnostic data may unintentionally contain personal data, such as portions of memory from a document and a web page. For more information about crash dumps, see [Windows Error Reporting](/windows/win32/wer/windows-error-reporting).

## Manage diagnostic data using Group Policy and MDM

Use the steps in this section to configure the diagnostic data settings for Windows and Windows Server in your organization.

>[!IMPORTANT]
>These diagnostic data settings only apply to components, features, and apps that are considered a part of the Windows operating system. Third-party apps and other Microsoft apps, such as Microsoft Office, that customers install may also collect and send diagnostic data using their own controls. You should work with your app vendors to understand their diagnostic data policy, and how you can opt in or opt out. For more information on how Microsoft Office uses diagnostic data, see [Overview of privacy controls for Microsoft 365 Apps for enterprise](/deployoffice/privacy/overview-privacy-controls). If you would like to control Windows data collection that is not Windows diagnostic data, see [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md).

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

2.  Double-click **Allow Telemetry** (or **Allow diagnostic data** on Windows 11 and Windows Server 2022).

    > [!NOTE]
    > If devices in your organization are running Windows 10, 1803 and later, the user can still use Settings to set the diagnostic data setting to a more restrictive value, unless the **Configure diagnostic data opt-in settings user interface** policy is set.

3. In the **Options** box, choose the setting that you want to configure, and then click **OK**.


### Use Group Policy to manage optional diagnostic data collection

The following policy lets you limit the types of [crash dumps](/windows/win32/dxtecharts/crash-dump-analysis) that can be sent back to Microsoft. If this policy is enabled, Windows Error Reporting will send only kernel mini dumps and user mode triage dumps.

1. From the Group Policy Management Console, go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Data Collection and Preview Builds**.

2.  Double-click **Limit dump collection**.

3. In the **Options** box, choose the setting that you want to configure, and then click **OK**.

You can also limit the number of diagnostic logs that are sent back to Microsoft. If this policy is enabled, diagnostic logs are not sent back to Microsoft.

1. From the Group Policy Management Console, go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Data Collection and Preview Builds**.

2.  Double-click **Limit diagnostic log collection**.

3. In the **Options** box, choose the setting that you want to configure, and then click **OK**.

### Use MDM to manage diagnostic data collection

Use [Policy Configuration Service Provider (CSP)](/windows/client-management/mdm/policy-configuration-service-provider) to apply the following MDM policies:

  - System/AllowTelemetry
  - System/LimitDumpCollection
  - System/LimitDiagnosticLogCollection

> [!NOTE]
> The last two policies are only available on Windows 11 and Windows Server 2022.

## Enable Windows diagnostic data processor configuration

The Windows diagnostic data processor configuration enables you to be the controller, as defined by the European Union General Data Protection Regulation (GDPR), for the Windows diagnostic data collected from your Windows devices that meet the configuration requirements.

### Prerequisites

- Use a supported version of Windows 10 or Windows 11
- The following editions are supported:
  - Enterprise
  - Professional
  - Education
- The device must be joined to Azure Active Directory (can be a hybrid Azure AD join).

> [!NOTE]
> In all cases, enrollment in the Windows diagnostic data processor configuration requires a device to be joined to an Azure AD tenant. If a device isn't properly enrolled, Microsoft will act as the controller for Windows diagnostic data in accordance with the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement) and the [Data Protection Addendum](https://www.microsoft.com/licensing/docs/view/Microsoft-Products-and-Services-Data-Protection-Addendum-DPA) terms won't apply.

For the best experience, use the most current build of any operating system specified above. Configuration functionality and availability may vary on older systems. For release information, see [Windows 10 Enterprise and Education](/lifecycle/products/windows-10-enterprise-and-education) and [Windows 11 Enterprise and Education](/lifecycle/products/windows-11-enterprise-and-education) on the Microsoft Lifecycle Policy site.

The diagnostic data setting on the device should be set to Required diagnostic data or higher, and the following endpoints need to be reachable:

- us-v10c.events.data.microsoft.com (eu-v10c.events.data.microsoft.com for tenants with billing address in the [EU Data Boundary](/privacy/eudb/eu-data-boundary-learn#eu-data-boundary-countries-and-datacenter-locations))
- watsonc.events.data.microsoft.com (eu-watsonc.events.data.microsoft.com for tenants with billing address in the [EU Data Boundary](/privacy/eudb/eu-data-boundary-learn#eu-data-boundary-countries-and-datacenter-locations))
- settings-win.data.microsoft.com
- *.blob.core.windows.net

Tenants with billing addresses in countries or regions in the Middle East and Africa, as well as European countries or regions not in the EU, also use the eu-v10c.events.data.microsoft.com and eu-watsonc.events.data.microsoft.com endpoints. Their diagnostic data is processed initially in Europe, but those tenants aren't considered part of the [EU Data Boundary](/privacy/eudb/eu-data-boundary-learn).

>[!Note]
> - Windows diagnostic data collected from a device before it was enabled with Windows diagnostic data processor configuration will be deleted when this configuration is enabled.
> - When you enable devices with the Windows diagnostic data processor configuration, users may continue to submit feedback through various channels such as Windows feedback hub or Edge feedback. However, the feedback data is not subject to the terms of the Windows diagnostic data processor configuration. If this is not desired, we recommend that you disable feedback using the available policies or application management solutions.

### Enabling Windows diagnostic data processor configuration

> [!NOTE]
> The information in this section applies to the following versions of Windows:
> - Windows 10, versions 20H2, 21H2, 22H2, and newer
> - Windows 11, versions 21H2, 22H2, 23H2, and newer

Starting with the January 2023 preview cumulative update, how you enable the processor configuration option depends on the billing address of the Azure AD tenant to which your devices are joined.

#### Devices in Azure AD tenants with a billing address in the European Union (EU) or European Free Trade Association (EFTA)

For Windows devices with diagnostic data turned on and that are joined to an [Azure AD tenant with billing address](/azure/cost-management-billing/manage/change-azure-account-profile) in the EU or EFTA, the Windows diagnostic data for that device will be automatically configured for the processor option. The Windows diagnostic data for those devices will be processed in Europe.

From a compliance standpoint, this change means that Microsoft will be the processor and the organization will be the controller of the Windows diagnostic data. IT admins for those organizations will become responsible for responding to their users’ [data subject requests](/compliance/regulatory/gdpr-dsr-windows).

#### Devices in Azure AD tenants with a billing address outside of the EU and EFTA

For Windows devices with diagnostic data turned on and that are joined to an [Azure AD tenant with billing address](/azure/cost-management-billing/manage/change-azure-account-profile) outside of the EU and EFTA, to enable the processor configuration option, the organization must sign up for any of the following enterprise services, which rely on diagnostic data:

- [Windows Update for Business reports](/windows/deployment/update/wufb-reports-overview)
- [Windows Autopatch](/windows/deployment/windows-autopatch/overview/windows-autopatch-overview)
- [Windows updates reports (in Microsoft Intune)](/mem/intune/protect/data-enable-windows-data#windows-data)

*(Additional licensing requirements may apply to use these services.)*

If you don’t sign up for any of these enterprise services, Microsoft will act as controller for the diagnostic data.

### Enabling Windows diagnostic data processor configuration on older versions of Windows

> [!NOTE]
> The information in this section applies to the following versions of Windows:
> - Windows 10, versions 1809, 1903, 1909, and 2004.
> - Newer versions of Windows 10 and Windows 11 that have not updated yet to at least the January 2023 preview cumulative update.

To enable Windows diagnostic data processor configuration, you can use Group Policy or a custom setting in an MDM solution, such as Microsoft Intune.

- For Group Policy, you can use the “Allow commercial data pipeline” policy, which is also available in the Intune [settings catalog](/mem/intune/configuration/settings-catalog).
- For an MDM solution, you can use the AllowCommercialDataPipeline setting in the System Policy configuration service provider (CSP).

For more information about AllowCommercialDataPipeline and the “Allow commercial data pipeline” policy, [review this information](/windows/client-management/mdm/policy-csp-system#allowcommercialdatapipeline).

## Change privacy settings on a single server

You can also change the privacy settings on a server running either the Azure Stack HCI operating system or Windows Server. For more information, see [Change privacy settings on individual servers](/azure-stack/hci/manage/change-privacy-settings).
