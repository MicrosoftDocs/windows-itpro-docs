---
description: This article provides information to help IT and compliance professionals understand the personal data policies as related to Windows 10.
title: Windows 10 & Privacy Compliance - A Guide for IT and Compliance Professionals
keywords: privacy, GDPR, compliance
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: high
audience: ITPro
author: brianlic-msft
ms.author: brianlic
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 05/21/2019
---

# Windows 10 & Privacy Compliance:<br />A Guide for IT and Compliance Professionals

Applies to:
- Windows 10, version 1903
- Windows 10, version 1809
- Windows 10, version 1803
- Windows 10, version 1709
- Windows 10, version 1703
- Windows 10 Team Edition, version 1703 for Surface Hub
- Windows Server 2019
- Windows Server 2016
- Windows Analytics

For more information about the GDPR, see:
* [Windows and the GDPR: Information for IT Administrators and Decision Makers](gdpr-it-guidance.md)
* [Microsoft GDPR Overview](https://aka.ms/GDPROverview)
* [Microsoft Trust Center FAQs about the GDPR](https://aka.ms/gdpr-faq)
* [Microsoft Service Trust Portal (STP)](https://aka.ms/stp)
* [Get Started: Support for GDPR Accountability](https://servicetrust.microsoft.com/ViewPage/GDPRGetStarted)

## Overview

At Microsoft, we are deeply committed to data privacy across all our products and services. With this guide, we provide IT and compliance professionals with data privacy considerations for Windows 10.

Microsoft collects data through multiple interactions with users of Windows 10 devices. This information can contain personal data that may be used to provide, secure, and improve Windows 10 services. To help users and organizations control the collection of personal data, Windows 10 provides comprehensive transparency features, settings choices, controls and support for data subject requests, all of which are detailed in this guide.

This information allows IT and compliance professionals work together to better manage personal data privacy considerations and related regulations, such as the General Data Protection Regulation (GDPR).


## 1. Windows 10 data collection transparency

Transparency is an important part of the data collection process in Windows 10. Comprehensive information about the features and processes used to collect data is available to users and administrators directly within Windows, both during and after device set up.

If interested in understanding how to manage settings related to data collection skip to the next section [Windows 10 data collection management](#12-data-collection-monitoring).


### 1.1 Device set up experience and support for layered transparency

When setting up a device, a user can configure their privacy settings. Those privacy settings are key in determining the amount of personal data collected. For each privacy setting, the user is provided information about the setting along with the links to supporting information. This information explains what data is collected, how the data is used and how to manage the setting after the device setup is complete. The user can also review the privacy statement when connected to the network during this portion of setup. A brief overview of the set up experience for privacy settings are described in [this blog](https://blogs.windows.com/windowsexperience/2018/03/06/windows-insiders-get-first-look-new-privacy-screen-settings-layout-coming-windows-10/#uCC2bKYP8M5BqrDP.97).

The following table provides an overview of the Windows 10 privacy settings presented during the device setup experience that involve processing personal data and where to find additional information.

> [!NOTE]
> This table is limited to the privacy settings that are available as part of setting up a Windows 10 device (Windows 10, version 1809 and later). For the full list of settings that involve data collection, see: [Manage connections from Windows operating system components to Microsoft services](https://docs.microsoft.com/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services).

> [!div class="mx-tdBreakAll"]
> | Feature/Setting | Description | Supporting Content | Privacy Statement |
> |---|---|---|---|
> | Diagnostic Data | <p>Microsoft uses diagnostic data to: keep Windows secure and up to date, troubleshoot problems, and make product improvements as described in more detail below. Regardless of level selected, the device will be just as secure and will operate normally. This data is collected by Microsoft and stored with one or more unique identifiers that can help us recognize an individual user on an individual device, and understand the device's service issues and use patterns.</p><p>Diagnostic data is categorized into four levels:<ul><li>**Security**<br />Information that’s required to help keep Windows, Windows Server, and System Center secure, including data about the Connected User Experiences and Telemetry component settings, the Malicious Software Removal Tool, and Windows Defender.</li><li>**Basic**<br />Basic device info, including: quality-related data, app compatibility, and data from the Security level.</li><li>**Enhanced**<br />Additional insights, including: how Windows, Windows Server, System Center, and apps are used; how they perform; advanced reliability data; and data from both the Basic and the Security levels.</li><li>**Full**<br />Information about the websites you browse, how you use apps and features; plus additional information about device health, device activity, enhanced error reporting, and data from Enhanced, Basic and the Security levels.<br />At Full, Microsoft also collects the memory state of your device when a system or app crash occurs (which may unintentionally include parts of a file you were using when a problem occurred).</li></ul></p> | [Learn more](https://support.microsoft.com/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy)<br /><br />[Configure Windows diagnostic data in your organization](https://docs.microsoft.com/windows/privacy/configure-windows-diagnostic-data-in-your-organization) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#maindiagnosticsmodule) |
> | Inking and typing diagnostics | Microsoft collects inking and typing data to improve the language recognition and suggestion capabilities of apps and services running on Windows. | [Learn more](https://support.microsoft.com/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#maindiagnosticsmodule) |
> | Speech | Use your voice for dictation and to talk to Cortana and other apps that use Windows cloud-based speech recognition. Microsoft collects voice data to help improve speech services. | [Learn more](https://support.microsoft.com/help/4468250/speech-inking-typing-and-privacy-microsoft-privacy) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#mainspeechinkingtypingmodule) |
> | Location | Get location-based experiences like directions and weather. Let Windows and apps request your location and allow Microsoft to use your location data to improve location services. | [Learn more](https://support.microsoft.com/help/4468240/windows-10-location-service-and-privacy-microsoft-privacy) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#mainlocationservicesmotionsensingmodule) |
> | Find my device | Use your device’s location data to help you find your device if you lose it. | [Learn more](https://support.microsoft.com/help/11579/microsoft-account-find-and-lock-lost-windows-device) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#mainlocationservicesmotionsensingmodule) |
> | Tailored Experiences | Let Microsoft offer you tailored experiences based on the diagnostic data you have chosen (Security, Basic, Enhanced, or Full). Tailored experiences mean personalized tips, ads, and recommendations to enhance Microsoft products and services for your needs. | [Learn more](https://support.microsoft.com/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#maindiagnosticsmodule) |
> | Advertising Id | Apps can use advertising ID to provide more personalized advertising in accordance with the privacy policy of the app provider. | [Learn more](https://support.microsoft.com/help/4459081/general-privacy-settings-in-windows-10-microsoft-privacy) | [Privacy statement](https://privacy.microsoft.com/privacystatement#mainadvertisingidmodule) |
> | Activity History/Timeline – Cloud Sync | If you want timeline and other Windows features to help you continue what you were doing, even when you switch devices, send Microsoft your activity history, which includes info about websites you browse and how you use apps and services. | [Learn more](https://support.microsoft.com/help/4468227/windows-10-activity-history-and-your-privacy-microsoft-privacy) | [Privacy statement](https://privacy.microsoft.com/en-us/privacystatement#mainactivityhistorymodule) |
> | Cortana | <p>Cortana is Microsoft’s personal digital assistant, which helps busy people get things done, even while they’re at work. Cortana on Windows is available in [certain regions and languages](https://support.microsoft.com/instantanswers/557b5e0e-0eb0-44db-87d6-5e5db6f9c5b0/cortana-s-regions-and-languages). Cortana learns from certain data about the user, such as location, searches, calendar, contacts, voice input, speech patterns, email, content and communication history from text messages. In Microsoft Edge, Cortana uses browsing history. The user is in control of how much data is shared.<br /><br />Cortana has powerful configuration options, specifically optimized for a business. By signing in with an Azure Active Directory (Azure AD) account, enterprise users can give Cortana access to their enterprise/work identity, while getting all the functionality Cortana provides to them outside of work.</p> | [Learn more](https://support.microsoft.com/help/4468233/cortana-and-privacy-microsoft-privacy)<br /><br />[Cortana integration in your business or enterprise](https://docs.microsoft.com/windows/configuration/cortana-at-work/cortana-at-work-overview) | [Privacy statement](https://privacy.microsoft.com/privacystatement#maincortanamodule) |

### 1.2 Data collection monitoring

The Diagnostic Data Viewer (DDV) is a Windows app (available in Windows 10, version 1803 or later) that lets a user review the Windows diagnostic data that is being collected on their Windows 10 device and sent to Microsoft. DDV groups the information into simple categories based on how it is used by Microsoft. The [DDV Overview](https://docs.microsoft.com/windows/privacy/diagnostic-data-viewer-overview) provides information on how users can get started on using this tool.

An administrator can also use the Diagnostic Data Viewer for PowerShell module to view the diagnostic data collected from the device instead of using the Diagnostic Data Viewer UI. The [Diagnostic Data Viewer for PowerShell Overview](https://docs.microsoft.com/windows/privacy/microsoft-diagnosticdataviewer) provides further information.


## 2. Windows 10 data collection management

Windows 10 provides the ability to manage privacy settings through several different methods. Users can change their privacy settings using the Windows 10 settings (**Start** > **Settings** > **Privacy**). The organization can also manage the privacy settings using group policy or mobile device management (MDM). The following sections provide an overview on how to manage the privacy settings previously discussed in this article.

### 2.1 Privacy setting options for users

Once a Windows 10 device is set up, a user can manage data collection settings by going to **Start** > **Settings** > **Privacy**. IT administrators can control privacy settings via setting policy on the device (see Section 2.2 below). If this is the case, the user will see an alert that says ‘Some settings are hidden or managed by your organization’ when they navigate to **Start** > **Settings** > **Privacy**. Meaning the user can only change settings in accordance with the policies that the administrator has applied to the device.

### 2.2 Privacy setting controls for administrators

The IT department can configure and control privacy settings across their organization by using Group Policy, registry, or Mobile Device Management (MDM) settings.

The following table provides an overview of the privacy settings discussed earlier in this document with details on how to configure these via policy. The table also provides information on what the default value would be for each of these privacy settings if you do not manage the setting via policy and suppress the Out-of-box Experience (OOBE) during device setup. For an IT administrator interested in minimizing data, we also provide the recommended value to set.

> [!NOTE]
> This is not a complete list of settings that involve connecting to Microsoft services. To see a more detailed list, please refer to Manage connections from [Windows operating system components to Microsoft services](https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services).

> [!div class="mx-tdBreakAll"]
> | Feature/Setting | GP/MDM Documentation | Default State if the Setup experience is suppressed | State to stop/minimize data collection |
> |---|---|---|---|
> | [Speech](https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#bkmk-priv-speech) | Group Policy:<br />**Computer Configuration** > **Control Panel** > **Regional and Language Options** > **Allow users to enable online speech recognition services**<br /><br />MDM: [Privacy/AllowInputPersonalization](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-privacy#privacy-allowinputpersonalization) | Off | Off |
> | [Location](https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#bkmk-priv-location) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **App Privacy** > **Let Windows apps access location**<br /><br />MDM: [Privacy/LetAppsAccessLocation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccesslocation) | Off (Windows 10, version 1903 and later) | Off |
> | [Find my device](https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#find-my-device) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **Find My Device** > **Turn On/Off Find My Device**<br /><br />MDM: [Experience/AllFindMyDevice](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-allowfindmydevice) | Off | Off |
> | [Diagnostic Data](https://docs.microsoft.com/en-us/windows/privacy/configure-windows-diagnostic-data-in-your-organization#enterprise-management) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **Data Collection and Preview Builds** > **Allow Telemetry**<br /><br />MDM: [System/AllowTelemetry](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-system#system-allowtelemetry) | Desktop SKUs:<br />Basic (Windows 10, version 1903 and later)<br /><br />Server SKUs:<br />Enhanced | Security and block endpoints | 
> | [Inking and typing diagnostics](https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#bkmk-priv-speech) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **Text Input** > **Improve inking and typing recognition**<br /><br />MDM: [TextInput/AllowLinguisticDataCollection](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-textinput#textinput-allowlinguisticdatacollection) | Off (Windows 10, version 1809 and later) | Off | 
> | Tailored Experiences | Group Policy:<br />**User Configuration** > **Windows Components** > **Cloud Content** > **Do not use diagnostic data for tailored experiences**<br /><br />MDM: Link TBD | Off | Off | 
> | Advertising ID | Group Policy:<br />**Configuration** > **System** > **User Profile** > **Turn off the advertising Id**<br /><br />MDM: [Privacy/DisableAdvertisingId](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-privacy#privacy-disableadvertisingid) | Off | Off | 
> | Activity History/Timeline – Cloud Sync | Group Policy:<br />**Computer Configuration** > **System** > **OS Policies** > **Allow upload of User Activities**<br /><br />MDM: [Privacy/EnableActivityFeed](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-privacy#privacy-enableactivityfeed) | Off | Off | 
> | [Cortana](https://docs.microsoft.com/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#bkmk-cortana) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **Search** > **Allow Cortana**<br /><br />MDM: [Experience/AllowCortana](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-allowcortana) | Off | Off | 

### 2.3 Guidance for configuration options

This section provides general details and links to more detailed information as well as instructions for IT administrators and compliance professional. These instructions allow IT admins and compliance pros to manage the device compliance. This information includes details about setting up a device, to configuring the device’s settings after setup is completed to minimize data collected and drive privacy related user experiences.

#### 2.3.1 Managing the device setup experience

Windows deployment can be configured using several different methods, which provide an administrator with options to control: how a device is set up, what’s enabled by default, and what the user is able to change on the system after they log on.

The [Deploy and update Windows 10](https://docs.microsoft.com/windows/deployment/) section of the Windows IT Pro Center provides an overview of the different options.

#### 2.3.2 Managing connections from Windows components to Microsoft services

IT administrators can manage the data sent from their organization to Microsoft by configuring settings associated with the functionality provided by these Windows components.

See [Manage connections from Windows operating system components to Microsoft services](https://technet.microsoft.com/itpro/windows/manage/manage-connections-from-windows-operating-system-components-to-microsoft-services) for more details, including the different methods available on how to configure each setting, the impact to functionality and which versions of Windows that are applicable.

#### 2.3.3 Managing Windows 10 connections

Some Windows components, apps, and related services transfer data to Microsoft network endpoints. An administrator may want to block these endpoints as an additional measure of ensuring privacy compliance within their organization.

[Manage connection endpoints for Windows 10, version 1809](https://docs.microsoft.com/windows/privacy/manage-windows-1809-endpoints) provides a list of endpoints for the latest Windows 10 release, along with the functionality that would be impacted. Details for additional Windows versions can be found on the [Windows Privacy site](https://docs.microsoft.com/windows/privacy/) under the “Manage Windows 10 connection endpoints” section of the left-hand navigation menu.

#### 2.3.4 Limited functionality baseline

An organization may want to further minimize the amount of data shared with Microsoft or apps by managing the connections and configuring additional settings on their devices. Similar to [Security baselines](https://docs.microsoft.com/windows/security/threat-protection/windows-security-baselines), we have a limited functionality baseline-focused configuring settings to minimize the data shared, however this comes with some potential impact to functionality on the device. The [Manage connections from Windows operating system components to Microsoft services](https://docs.microsoft.com/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services) article provides details on how to apply the baseline, along with the full list of settings covered in the baseline and the functionality that would be impacted. Administrators who don’t want to apply the baseline can still find details on how to configure each setting individually to find the right balance between data sharing and impact to functionality for their organization.

#### 2.3.5 Diagnostic data: Managing notifications for change of level at logon

Windows 10, version 1803, and later provides users with a notification during sign in about changes to the diagnostic data level on the device so they are aware of any changes where additional data may be collected. For instance, if the diagnostic level on the device is set to Basic and an administrator changes it to Full, users will be notified when they next sign in. The IT administrator can disable these notifications by setting Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Data Collection and Preview Builds** > **Configure telemetry opt-in change notifications** or the MDM policy `ConfigureTelemetryOptInChangeNotification`.

#### 2.3.6 Diagnostic data: Managing end user choice for changing the setting

Windows 10, version 1803 and later, allows users to change their diagnostic data level to a lower setting than what their IT administrator has set. For instance, if the administrator has set the diagnostic data level to Enhanced or Full, a user can change the setting to Basic by going into **Settings** > **Privacy** > **Diagnostic & feedback**. The administrator can disable the user ability to change the setting via **Setting** > **Privacy** by setting the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Data Collection and Preview Builds** > **Configure telemetry opt-in setting user interface** or the MDM policy `ConfigureTelemetryOptInSettingsUx`.

#### 2.3.7 Diagnostic data: Managing device-based data delete

Windows 10, version 1809 and later, allows a user to delete diagnostic data collected from their device by going into **Settings** > **Privacy** > **Diagnostic & feedback** and clicking the **Delete** button. An IT administrator can also delete diagnostic data for a device using the [`Clear-WindowsDiagnosticData`](https://docs.microsoft.com/powershell/module/windowsdiagnosticdata/Clear-WindowsDiagnosticData?view=win10-ps) PowerShell cmdlet script.

An administrator can disable a user’s ability to delete their device’s diagnostic data by setting the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Data Collection and Preview Builds** > **Disable deleting diagnostic data** or the MDM policy `DisableDeviceDelete`.


## 3. The process for exercising data subject rights

This section discusses the different methods Microsoft provides for users and IT administrators to exercise data subject rights for data collected from a Windows 10 device.

### 3.1 Delete

Users can delete their device-based data by going to **Settings** > **Privacy** > **Diagnostic & feedback** and clicking the **Delete** button. Administrators can also use the [`Clear-WindowsDiagnosticData`](https://docs.microsoft.com/powershell/module/windowsdiagnosticdata/Clear-WindowsDiagnosticData?view=win10-ps) PowerShell cmdlet script.

### 3.2 View

The [Diagnostic Data Viewer (DDV)](https://docs.microsoft.com/en-us/windows/privacy/diagnostic-data-viewer-overview) provides a view into the diagnostic data being collected from the Windows 10 device. IT administrators can also use the [`Get-DiagnosticData`](https://docs.microsoft.com/en-us/windows/privacy/microsoft-diagnosticdataviewer#install-and-use-the-diagnostic-data-viewer-for-powershell) PowerShell cmdlet script.

### 3.3 Export

The [Diagnostic Data Viewer (DDV)](https://docs.microsoft.com/en-us/windows/privacy/diagnostic-data-viewer-overview) provides the ability to export the diagnostic data captured while the app is running, by clicking the Export data button in the top menu. IT administrators can also use the [`Get-DiagnosticData`](https://docs.microsoft.com/en-us/windows/privacy/microsoft-diagnosticdataviewer#install-and-use-the-diagnostic-data-viewer-for-powershell) PowerShell cmdlet script.

### 3.4 Devices connected to a Microsoft account

If a user signs in to a Windows experience or app on their device with their Microsoft account (MSA), they can view, delete, and export data associated with their MSA on the [Privacy dashboard](https://account.microsoft.com/privacy).


## 4. Cross-border data transfers

Microsoft complies with the EU-U.S. Privacy Shield Framework and Swiss-U.S. Privacy Shield Framework as set forth by the U.S. Department of Commerce regarding the collection, use, and retention of personal information transferred from the European Union, the United Kingdom, and Switzerland to the United States.

Microsoft’s [Privacy Statement](https://privacy.microsoft.com/privacystatement#mainwherewestoreandprocessdatamodule) provides details on how we store and process personal data.


## 5. Related Windows product considerations

The following sections provide details about how privacy data is collected and managed across related Windows products.

### 5.1 Windows Server 2016 and 2019

Windows Server follows the same mechanisms as Windows 10 for handling of personal data. There are some differences regarding [diagnostic default settings for Windows Server](https://microsoft-my.sharepoint.com/personal/v-colinm_microsoft_com/Documents/WINDOWS%20PRIVACY/Windows%20diagnostic%20data%20and%20Windows%20Server).

### 5.2 Surface Hub

Surface Hub is a shared device used within an organization. The device identifier collected as part of diagnostic data is not connected to an individual user. For removing Windows diagnostic data sent to Microsoft for a Surface Hub, Microsoft created the Surface Hub Delete Diagnostic Data tool available in the Microsoft Store.

For more details, see [Windows 10 Team Edition, Version 1703 for Surface Hub](https://docs.microsoft.com/en-us/windows/privacy/gdpr-it-guidance#windows-10-team-edition-version-1703-for-surface-hub).

### 5.3 Windows 10 Analytics

[Windows Analytics](https://docs.microsoft.com/windows/deployment/update/windows-analytics-overview) is a set of solutions for Azure Portal that provide you with extensive data about the state of devices in your deployment. There are currently three solutions which you can use singly or in any combination: Device Health, Update Compliance, and Upgrade Readiness. Windows Analytics is a separate offering from Windows 10 and is dependent on enabling a minimum set of data collection on the device to function.

For more details, see the [Windows Analytics overview page](https://docs.microsoft.com/windows/deployment/update/windows-analytics-overview).


## Additional Resources

* [Microsoft Trust Center: GDPR Overview](https://www.microsoft.com/trustcenter/privacy/gdpr/gdpr-overview)
* [Microsoft Trust Center: Privacy at Microsoft](https://www.microsoft.com/en-us/TrustCenter/Privacy/privacy-overview)
* [Windows IT Pro Docs](https://docs.microsoft.com/windows/#pivot=it-pro)

