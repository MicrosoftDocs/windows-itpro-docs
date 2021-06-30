---
title: Windows 10 & Privacy Compliance Guide
description: This article provides information to help IT and compliance professionals understand the personal data policies as related to Windows 10.
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
ms.date: 07/21/2020
---

# Windows 10 & Privacy Compliance:<br />A Guide for IT and Compliance Professionals

Applies to:

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Professional
- Windows Server 2016 and newer

## Overview

At Microsoft, we are committed to data privacy across all our products and services. With this guide, we provide administrators and compliance professionals with data privacy considerations for Windows 10.

Microsoft collects data through multiple interactions with users of Windows 10 devices. This information can contain personal data that may be used to provide, secure, and improve Windows 10 and our connected experiences. To help users and organizations control the collection of personal data, Windows 10 provides comprehensive transparency features, settings choices, controls, and support for data subject requests, all of which are detailed in this article.

This information allows administrators and compliance professionals to work together to better manage personal data privacy considerations and related regulations, such as the General Data Protection Regulation (GDPR)

## 1. Windows 10 data collection transparency

Transparency is an important part of the data collection process in Windows 10. Comprehensive information about the features and processes used to collect data is available to users and administrators directly within Windows, both during and after device set up.

### 1.1 Device set up experience and support for layered transparency

When setting up a device, a user can configure their privacy settings. Those privacy settings are key in determining the amount of personal data collected. For each privacy setting, the user is provided information about the setting along with the links to supporting information. This information explains what data is collected, how the data is used, and how to manage the setting after the device setup is complete. When connected to the network during this portion of setup, the user can also review the privacy statement. A brief overview of the set up experience for privacy settings is described in [Windows Insiders get first look at new privacy screen settings layout coming to Windows 10](https://blogs.windows.com/windowsexperience/2018/03/06/windows-insiders-get-first-look-new-privacy-screen-settings-layout-coming-windows-10/#uCC2bKYP8M5BqrDP.97), a blog entry on Windows Blogs.

The following table provides an overview of the Windows 10 privacy settings presented during the device setup experience that involve processing personal data and where to find additional information.

> [!NOTE]
> This table is limited to the privacy settings that are available as part of setting up a Windows 10 device (Windows 10, version 1809 and newer). For the full list of settings that involve data collection, see [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md).

| Feature/Setting | Description | Supporting Content | Privacy Statement |
| --- | --- | --- | --- |
| Diagnostic Data | <p>Microsoft uses diagnostic data to keep Windows secure, up to date, troubleshoot problems, and make product improvements. Regardless of what choices you make for diagnostic data collection, the device will be just as secure and will operate normally. This data is collected by Microsoft and stored with one or more unique identifiers that can help us recognize an individual user on an individual device and understand the device's service issues and use patterns.</p><p>Diagnostic data is categorized into the following:<ul><li>**Required diagnostic data**<br />Required diagnostic data includes information about your device, its settings, capabilities, and whether it is performing properly, whether a device is ready for an update, and whether there are factors that may impede the ability to receive updates, such as low battery, limited disk space, or connectivity through a paid network. You can find out what is collected with required diagnostic data [here](./required-windows-diagnostic-data-events-and-fields-2004.md).</li><li>**Optional diagnostic data**<br />Optional diagnostic data includes more detailed information about your device and its settings, capabilities, and device health. When you choose to send optional diagnostic data, required diagnostic data will always be included. You can find out the types of optional diagnostic data collected [here](./windows-diagnostic-data.md).</li></ul></p> | [Learn more](https://support.microsoft.com/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy)<br /><br />[Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#maindiagnosticsmodule) |
| Inking and typing diagnostics | Microsoft collects optional inking and typing diagnostic data to improve the language recognition and suggestion capabilities of apps and services running on Windows. | [Learn more](https://support.microsoft.com/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#maindiagnosticsmodule) |
| Speech | Use your voice for dictation and to talk to Cortana and other apps that use Windows cloud-based speech recognition. Microsoft collects voice data to help improve speech services. | [Learn more](https://support.microsoft.com/help/4468250/windows-10-speech-voice-activation-inking-typing-privacy) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#mainspeechinkingtypingmodule) |
| Location | Get location-based experiences like directions and weather. Let Windows and apps request your location and allow Microsoft to use your location data to improve location services. | [Learn more](https://support.microsoft.com/help/4468240/windows-10-location-service-and-privacy) |[Privacy Statement](https://privacy.microsoft.com/privacystatement#mainlocationservicesmotionsensingmodule) |
| Find my device | Use your device’s location data to help you find your device if you lose it. | [Learn more](https://support.microsoft.com/help/11579/microsoft-account-find-and-lock-lost-windows-device) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#mainlocationservicesmotionsensingmodule) |
| Tailored Experiences | Let Microsoft offer you tailored experiences based on the diagnostic data you choose to send. Tailored experiences include personalized tips, ads, and recommendations to enhance Microsoft products and services for your needs. | [Learn more](https://support.microsoft.com/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#maindiagnosticsmodule) |
| Advertising Id | Apps can use advertising ID to provide more personalized advertising in accordance with the privacy policy of the app provider. | [Learn more](https://support.microsoft.com/help/4459081/windows-10-general-privacy-settings) | [Privacy statement](https://support.microsoft.com/help/4459081/windows-10-general-privacy-settings) |
| Activity History/Timeline – Cloud Sync | If you want Windows Timeline and other Windows features to help you continue what you were doing, even when you switch devices, send Microsoft your activity history, which includes info about websites you browse and how you use apps and services. | [Learn more](https://support.microsoft.com/help/4468227/windows-10-activity-history-and-your-privacy-microsoft-privacy) | [Privacy statement](https://privacy.microsoft.com/privacystatement#mainactivityhistorymodule) |
| Cortana | <p>Cortana is Microsoft’s personal digital assistant, which helps busy people get things done, even while they’re at work. Cortana on Windows is available in [certain regions and languages](https://support.microsoft.com/help/4026948/cortanas-regions-and-languages). Cortana learns from certain data about the user, such as location, searches, calendar, contacts, voice input, speech patterns, email, content, and communication history from text messages. In Microsoft Edge, Cortana uses browsing history. The user is in control of how much data is shared.<br /><br />Cortana has powerful configuration options, specifically optimized for a business. By signing in with an Azure Active Directory (Azure AD) account, enterprise users can give Cortana access to their enterprise/work identity, while getting all the functionality Cortana provides to them outside of work.</p> | [Learn more](https://support.microsoft.com/help/4468233/cortana-and-privacy-microsoft-privacy)<br /><br />[Cortana integration in your business or enterprise](/windows/configuration/cortana-at-work/cortana-at-work-overview) | [Privacy statement](https://privacy.microsoft.com/privacystatement#maincortanamodule) |

### 1.2 Data collection monitoring

[Diagnostic Data Viewer (DDV)](diagnostic-data-viewer-overview.md) is a Microsoft Store app (available in Windows 10, version 1803 and newer) that lets a user review the Windows diagnostic data that is being collected on their Windows 10 device and sent to Microsoft in real-time. DDV groups the information into simple categories that describe the data that’s being collected.

An administrator can also use the Diagnostic Data Viewer for PowerShell module to view the diagnostic data collected from the device instead of using the Diagnostic Data Viewer UI. The [Diagnostic Data Viewer for PowerShell Overview](microsoft-diagnosticdataviewer.md) provides further information.

> [!Note]
> If the Windows diagnostic data processor configuration is enabled, IT administrators should use the admin portal to fulfill data subject requests to access or export Windows diagnostic data associated with a particular user’s device usage. See [The process for exercising data subject rights](#3-the-process-for-exercising-data-subject-rights).

## 2. Windows 10 data collection management

Windows 10 provides the ability to manage privacy settings through several different methods. Users can change their privacy settings using the Windows 10 settings (**Start > Settings > Privacy**). The organization can also manage the privacy settings using Group Policy or Mobile Device Management (MDM). The following sections provide an overview on how to manage the privacy settings previously discussed in this article.

### 2.1 Privacy setting options for users

Once a Windows 10 device is set up, a user can manage data collection settings by navigating to **Start > Settings > Privacy**. Administrators can control privacy settings via setting policy on the device (see Section 2.2 below). If this is the case, the user will see an alert that says **Some settings are hidden or managed by your organization** when they navigate to **Start > Settings > Privacy**. In this case, the user can only change settings in accordance with the policies that the administrator has applied to the device.

### 2.2 Privacy setting controls for administrators

Administrators can configure and control privacy settings across their organization by using Group Policy, Mobile Device Management (MDM), or Windows registry settings.

The following table provides an overview of the privacy settings discussed earlier in this document with details on how to configure these policies. The table also provides information on what the default value would be for each of these privacy settings if you do not manage the setting by using policy and suppress the Out-of-box Experience (OOBE) during device setup. If you’re interested in minimizing data collection, we also provide the recommended value to set.

> [!NOTE]
> This is not a complete list of settings that involve connecting to Microsoft connected experiences. For a more detailed list, see [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md).

| Feature/Setting | GP/MDM Documentation | Default State if the Setup experience is suppressed | State to stop/minimize data collection |
|---|---|---|---|
| [Speech](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-speech) | Group Policy:<br />**Computer Configuration** > **Control Panel** > **Regional and Language Options** > **Allow users to enable online speech recognition services**<br /><br />MDM: [Privacy/AllowInputPersonalization](/windows/client-management/mdm/policy-csp-privacy#privacy-allowinputpersonalization) | Off | Off |
| [Location](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-location) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **App Privacy** > **Let Windows apps access location**<br /><br />MDM: [Privacy/LetAppsAccessLocation](/windows/client-management/mdm/policy-csp-privacy#privacy-allowinputpersonalization) | Off (Windows 10, version 1903 and later) | Off |
| [Find my device](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#find-my-device) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **Find My Device** > **Turn On/Off Find My Device**<br /><br />MDM: [Experience/AllFindMyDevice](/windows/client-management/mdm/policy-csp-experience#experience-allowfindmydevice) | Off | Off |
| [Diagnostic Data](configure-windows-diagnostic-data-in-your-organization.md#manage-enterprise-diagnostic-data) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **Data Collection and Preview Builds** > **Allow Telemetry**<br /><br />MDM: [System/AllowTelemetry](/windows/client-management/mdm/policy-csp-system#system-allowtelemetry)<br /><br />**Note**: If you are planning to configure devices, using the Windows diagnostic data processor configuration option, the state to minimize data collection is not recommended. See [Enabling the Windows diagnostic data processor configuration](#238-diagnostic-data-enabling-the-windows-diagnostic-data-processor-configuration) below for more information. | Required diagnostic data (Windows 10, version 1903 and later)<br /><br />Server editions:<br />Enhanced diagnostic data | Security (Off) and block endpoints |
| [Inking and typing diagnostics](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-ink) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **Text Input** > **Improve inking and typing recognition**<br /><br />MDM: [TextInput/AllowLinguisticDataCollection](/windows/client-management/mdm/policy-csp-textinput#textinput-allowlinguisticdatacollection) | Off (Windows 10, version 1809 and later) | Off | 
| Tailored Experiences | Group Policy:<br />**User Configuration** > **Windows Components** > **Cloud Content** > **Do not use diagnostic data for tailored experiences**<br /><br />MDM: [Experience/AllowTailoredExperiencesWithDiagnosticData](/windows/client-management/mdm/policy-csp-experience#experience-allowtailoredexperienceswithdiagnosticdata) | Off | Off | 
| Advertising ID | Group Policy:<br />**Computer Configuration** > **System** > **User Profile** > **Turn off the advertising Id**<br /><br />MDM: [Privacy/DisableAdvertisingId](/windows/client-management/mdm/policy-csp-privacy#privacy-disableadvertisingid) | Off | Off | 
| Activity History/Timeline – Cloud Sync | Group Policy:<br />**Computer Configuration** > **System** > **OS Policies** > **Allow upload of User Activities**<br /><br />MDM: [Privacy/EnableActivityFeed](/windows/client-management/mdm/policy-csp-privacy#privacy-enableactivityfeed) | Off | Off | 
| [Cortana](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#2-cortana-and-search) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **Search** > **Allow Cortana**<br /><br />MDM: [Experience/AllowCortana](/windows/client-management/mdm/policy-csp-experience#experience-allowcortana) | Off | Off | 

### 2.3 Guidance for configuration options

This section provides general details and links to more detailed information, as well as instructions for administrators and compliance professionals. These instructions allow you to manage device settings to manage the compliance objectives of your organization. This information includes details about setting up a device, configuring the device’s settings after setup is complete to minimize data collection, and driving privacy-related user experiences.

#### _2.3.1 Managing the device setup experience_

Windows deployment can be configured using several different methods that provide an administrator with options for control, including how a device is set up, which options are enabled by default, and what the user is able to change on the device after they log on.

If you want the ability to fully control and apply restrictions on data being sent back to Microsoft, you can use [Configuration Manager](/mem/configmgr/) as a deployment solution. Configuration Manager can be used to deploy a customized boot image using a variety of [deployment methods](/mem/configmgr/osd/get-started/prepare-for-operating-system-deployment). You can further restrict any Configuration Manager-specific diagnostic data from being sent back to Microsoft by turning off this setting as outlined in the instructions [here](/mem/configmgr/core/plan-design/diagnostics/frequently-asked-questions).

Alternatively, your administrators can also choose to use Windows Autopilot. Autopilot lessens the overall burden of deployment while allowing administrators to fully customize the out-of-box experience. However, since Windows Autopilot is a cloud-based solution, administrators should be aware that a minimal set of device identifiers are sent back to Microsoft during initial device boot up. This device-specific information is used to identify the device so that it can receive the administrator-configured Autopilot profile and policies.

You can use the following articles to learn more about Autopilot and how to use Autopilot to deploy Windows 10:

- [Overview of Windows Autopilot](/windows/deployment/windows-Autopilot/windows-Autopilot)
- [Windows Autopilot deployment process](/windows/deployment/windows-Autopilot/deployment-process)

#### _2.3.2 Windows 10 connected experiences and essential services_

Windows includes features that connect to the internet to provide enhanced experiences and additional service based capabilities. These are called “connected experiences”. For example, Microsoft Defender Antivirus is a connected experience that delivers updated protection to keep the devices in your organization secure.

Connected experiences that are critical to the proper functioning of Windows are called “essential services”. For example, the Windows licensing service confirms that you are properly licensed to use Windows.

Windows connected experiences and essential services transfer data to Microsoft network endpoints, and while an administrator may want to block these endpoints for their organization to meet specific compliance objectives, we recommend that you carefully assess the impact of turning off essential services.

The article [Manage connection endpoints for Windows 10, version 20H2](/windows/privacy/manage-windows-20h2-endpoints) provides a list of endpoints for the latest Windows 10 release, along with descriptions of any functionality that would be impacted by restricting data collection. Details for additional Windows versions can be found under the **Manage Windows 10 connection endpoints** section of the left-hand navigation menu.

#### _2.3.3 Managing connections from Windows connected experiences to Microsoft services_

Administrators can manage the data sent from their organization to Microsoft by configuring settings associated with the functionality provided by Windows connected experiences and essential services.

For more information, see [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md). This topic includes the different methods available on how to configure each setting, the impact to functionality, and which versions of Windows that are applicable.

#### _2.3.4 Limited functionality baseline_

An organization may want to minimize the amount of data sent back to Microsoft or shared with Microsoft apps by managing the connections and configuring additional settings on their devices. Similar to [Windows security baselines](/windows/security/threat-protection/windows-security-baselines), Microsoft has released a limited functionality baseline focused on configuring settings to minimize the data sent back to Microsoft. However, the functionality of the device could be impacted by applying these settings. The [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md) article provides details on how to apply the baseline, along with the full list of settings covered in the baseline and the functionality that would be impacted. Administrators that don’t want to apply the baseline can still find details on how to configure each setting individually to find the right balance between data sharing and impact to functionality for their organization.

>[!IMPORTANT]
> - We recommend that you fully test any modifications to these settings before deploying them in your organization.
> - We also recommend that if you plan to enable the Windows diagnostic data processor configuration, adjust the limited configuration baseline before deploying to ensure the Windows diagnostic setting is not turned off.

#### _2.3.5 Diagnostic data: Managing notifications for change of level at logon_

Starting with Windows 10, version 1803, if an administrator modifies the diagnostic data collection setting, users are notified of this change during the initial device sign in. For example, if you configure the device to send optional diagnostic data, users will be notified the next time they sign into the device. You can disable these notifications by using the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Data Collection and Preview Builds** > **Configure telemetry opt-in change notifications** or the MDM policy `ConfigureTelemetryOptInChangeNotification`.

#### _2.3.6 Diagnostic data: Managing end user choice for changing the setting_

Windows 10, version 1803 and newer allows users to change their diagnostic data level to a lower setting than what their administrator has set. For example, if you have configured the device to send optional diagnostic data, a user can change the setting so that only required diagnostic data is sent by going into **Settings** > **Privacy** > **Diagnostics & feedback**. Administrators can restrict a user’s ability to change the setting using **Setting** > **Privacy** by setting the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Data Collection and Preview Builds** > **Configure telemetry opt-in setting user interface** or the MDM policy `ConfigureTelemetryOptInSettingsUx`.

#### _2.3.7 Diagnostic data: Managing device-based data delete_

Windows 10, version 1809 and newer allows a user to delete diagnostic data collected from their device by using **Settings** > **Privacy** > **Diagnostic & feedback** and clicking the **Delete** button under the **Delete diagnostic data** heading. An administrator can also delete diagnostic data for a device using the [Clear-WindowsDiagnosticData](/powershell/module/windowsdiagnosticdata/Clear-WindowsDiagnosticData) PowerShell cmdlet.

An administrator can disable a user’s ability to delete their device’s diagnostic data by setting the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Data Collection and Preview Builds** > **Disable deleting diagnostic data** or the MDM policy `DisableDeviceDelete`.

>[!Note]
>If the Windows diagnostic data processor configuration is enabled, the Delete diagnostic data button will be disabled and the powershell cmdlet will not delete data collected under this configuration. IT administrators can instead delete diagnostic data collected by invoking a delete request from the admin portal.

#### _2.3.8 Diagnostic data: Enabling the Windows diagnostic data processor configuration_

**Applies to:**

- Windows 10 Enterprise, Pro, Education editions, version 1809 with July 2021 update and newer

The Windows diagnostic data processor configuration enables IT administrators to be the controller, under the definition of the European Union General Data Protection Regulation (GDPR), for the Windows diagnostic data collected from Windows 10 devices that are Azure Active Directory (AAD) joined and meet the configuration requirements. For more information, see [Enable Windows diagnostic data processor configuration](configure-windows-diagnostic-data-in-your-organization.md#enable-windows-diagnostic-data-processor-configuration) in [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md). Windows diagnostic data does not include data processed by Microsoft in connection with providing the service based capabilities of essential services and connected experiences.

The Windows diagnostic data collected from devices enabled with the Windows diagnostic data processor configuration may be associated with a specific AAD User ID or device ID. The Windows diagnostic data processor configuration provides you with controls that help respond to data subject requests (DSRs) to delete diagnostic data, at user account closure, for a specific AAD User ID. Additionally, you’re able to execute an export DSR for diagnostic data related to a specific AAD User ID. For more information, see [The process for exercising data subject rights](#3-the-process-for-exercising-data-subject-rights). Microsoft also will accommodate a tenant account closure, either because you decide to close your Azure or Azure AD tenant account, or because you decide you no longer wish to be the data controller for Windows diagnostic data, but still wish to remain an Azure customer.

We recommend that IT administrators who have enabled the Windows diagnostic data processor configuration consider the following:

- Restrict user’s ability to sign-in with a Microsoft Account (MSA) using [Block Microsoft account group policy](/windows/security/threat-protection/security-policy-settings/accounts-block-microsoft-accounts).
- Restrict user’s ability to submit feedback, as any feedback or additional logs submitted by the user are not managed by the Windows diagnostic data processor configuration option. The Feedback hub app can be removed using [PowerShell](/powershell/module/appx/remove-appxpackage) and you can block the ability to submit feedback in Microsoft Edge using [Feedback group policy](/deployedge/microsoft-edge-policies#userfeedbackallowed).

>[!Note]
>Tenant account closure will lead to the deletion of all data associated with that tenant.

Specific services that depend on Windows diagnostic data will also result in the enterprise becoming controllers of their Windows diagnostic data. These services include Update Compliance, Desktop Analytics, Windows Update for Business, and Microsoft Managed Desktop. For more information, see [Related Windows product considerations](#5-related-windows-product-considerations).

For more information on how Microsoft can help you honor rights and fulfill obligations under the GDPR when using Windows diagnostic data processor configurations, see [General Data Protection Regulation Summary](/compliance/regulatory/gdpr).

## 3. The process for exercising data subject rights

This section discusses the different methods Microsoft provides for users and administrators to exercise data subject rights for data collected from a Windows 10 device.

For IT administrators who have devices using the Windows diagnostic data processor configuration, refer to the [Data Subject Requests for the GDPR and CCPA](/compliance/regulatory/gdpr-dsr-windows). Otherwise proceed to the sections below.

### 3.1 Delete

Users can delete their device-based data by going to **Settings** > **Privacy** > **Diagnostic & feedback** and clicking the **Delete** button under the **Delete diagnostic data** heading. Administrators can also use the [Clear-WindowsDiagnosticData](/powershell/module/windowsdiagnosticdata/Clear-WindowsDiagnosticData) PowerShell cmdlet.

>[!Note]
>If the Windows diagnostic data processor configuration is being used, the Delete diagnostic data functionality will be disabled. IT administrators can delete diagnostic data associated with a user from the admin portal.

### 3.2 View

The [Diagnostic Data Viewer (DDV)](diagnostic-data-viewer-overview.md) provides a view into the diagnostic data being collected from a Windows 10 device. Administrators can also use the [Get-DiagnosticData](microsoft-diagnosticdataviewer.md#install-and-use-the-diagnostic-data-viewer-for-powershell) PowerShell cmdlet.

>[!Note]
>If the Windows diagnostic data processor configuration is enabled, IT administrators can view the diagnostic data that is associated with a user from the admin portal.

### 3.3 Export

The [Diagnostic Data Viewer (DDV)](diagnostic-data-viewer-overview.md) provides the ability to export the diagnostic data captured while the app is running, by clicking the **Export** data button in the top menu. Administrators can also use the [Get-DiagnosticData](microsoft-diagnosticdataviewer.md#install-and-use-the-diagnostic-data-viewer-for-powershell) PowerShell cmdlet script.

>[!Note]
>If the Windows diagnostic data processor configuration is enabled, IT administrators can also export the diagnostic data that is associated with a user from the admin portal.

### 3.4 Devices connected to a Microsoft account

If a user signs in to a Windows experience or app on their device with their Microsoft account, they can view, delete, and export data associated with their Microsoft account on the [Privacy dashboard](https://account.microsoft.com/privacy).


## 4. Cross-border data transfers

Microsoft complies with applicable law regarding the collection, use, and retention of personal information, including its transfer across borders.

Microsoft’s [Privacy Statement](https://privacy.microsoft.com/privacystatement#mainwherewestoreandprocessdatamodule) provides details on how we store and process personal data.

## 5. Related Windows product considerations

The following sections provide details about how privacy data is collected and managed across related Windows products.

### 5.1 Windows Server 2016 and newer

Windows Server follows the same mechanisms as Windows 10 for handling of personal data.

>[!Note]
>The Windows diagnostic data processor configuration is not available for Windows Server.

### 5.2 Surface Hub

[Surface Hub](/surface-hub/) is a shared device used within an organization. The device identifier collected as part of diagnostic data is not connected to a user. To delete the Windows diagnostic data sent to Microsoft for Surface Hub, you can use the Surface Hub Delete Diagnostic Data tool available in the Microsoft Store.

>[!IMPORTANT]
>Apps and services that run on Windows but are not considered part of Windows will manage data collection using their own controls. Please contact the publisher for further guidance on how to control the data collection and transmission of these apps and services.

An administrator can configure privacy-related settings, such as choosing to only send required diagnostic data. Surface Hub does not support Group Policy for centralized management. However, administrators can use MDM to apply these settings to Surface Hub. For more information about Surface Hub and MDM, see [Manage settings with an MDM provider (Surface Hub)](/surface-hub/manage-settings-with-mdm-for-surface-hub).

>[!Note]
>The Windows diagnostic data processor configuration is not available for Surface Hub.

### 5.3 Desktop Analytics

[Desktop Analytics](/mem/configmgr/desktop-analytics/overview) is a set of solutions for Azure portal that provide you with extensive data about the state of devices in your deployment. Desktop Analytics is a separate offering from Windows 10 and is dependent on enabling a minimum set of data collection on the device to function.

### 5.4 Microsoft Managed Desktop

[Microsoft Managed Desktop (MMD)](/microsoft-365/managed-desktop/service-description/) is a service that provides your users with a secure modern experience and always keeps devices up to date with the latest versions of Windows 10 Enterprise edition, Office 365 ProPlus, and Microsoft security services.

### 5.5 Update Compliance

[Update Compliance](/windows/deployment/update/update-compliance-monitor) is a service that enables organizations to monitor security, quality and feature updates for Windows 10 Professional, Education, and Enterprise editions, and view a report of device and update issues related to compliance that need attention. Update Compliance uses Windows 10 diagnostic data for all its reporting.

## Additional Resources

* [Microsoft Trust Center: GDPR Overview](https://www.microsoft.com/trust-center/privacy/gdpr-overview)
* [Microsoft Trust Center: Privacy at Microsoft](https://www.microsoft.com/trust-center/privacy)
* [Windows IT Pro Docs](/windows/#pivot=it-pro)
* [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement)
* [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md) 
* [Privacy at Microsoft](https://privacy.microsoft.com/privacy-report)
* [Changes to Windows diagnostic data](changes-to-windows-diagnostic-data-collection.md)
* [Microsoft Service Trust Portal](https://servicetrust.microsoft.com/)