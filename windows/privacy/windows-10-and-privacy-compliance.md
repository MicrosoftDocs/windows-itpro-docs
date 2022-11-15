---
title: Windows Privacy Compliance Guide
description: This article provides information to help IT and compliance professionals understand the personal data policies as related to Windows.
ms.prod: windows-client
ms.technology: itpro-privacy
ms.localizationpriority: high
author: DHB-MSFT
ms.author: danbrown
manager: dougeby
ms.topic: conceptual
---

# Windows Privacy Compliance:<br />A Guide for IT and Compliance Professionals

Applies to:

- Windows 10 and 11 Enterprise
- Windows 10 and 11 Education
- Windows 10 and 11 Professional
- Windows Server 2016 and later

## Overview

At Microsoft, we are committed to data privacy across all our products and services. With this guide, we provide administrators and compliance professionals with data privacy considerations for Windows.

Microsoft collects data through multiple interactions with users of Windows devices. This information can contain personal data that may be used to provide, secure and improve Windows, and to provide connected experiences. To help users and organizations control the collection of personal data, Windows provides comprehensive transparency features, settings choices, controls, and support for data subject requests, all of which are detailed in this article.

This information allows administrators and compliance professionals to work together to better manage personal data privacy considerations and related regulations, such as the General Data Protection Regulation (GDPR).

## 1. Windows data collection transparency

Transparency is an important part of the data collection process in Windows. Comprehensive information about the features and processes used to collect data is available to users and administrators directly within Windows, both during and after device setup.

### 1.1 Device set up experience and support for layered transparency

When setting up a device, a user can configure their privacy settings. Those privacy settings are key in determining the amount of personal data collected. For each privacy setting, the user is provided information about the setting along with the links to supporting information. This information explains what data is collected, how the data is used, and how to manage the setting after the device setup is complete. When connected to the network during this portion of setup, the user can also review the privacy statement. A brief overview of the set up experience for privacy settings is described in [Windows Insiders get first look at new privacy screen settings layout coming to Windows 10](https://blogs.windows.com/windowsexperience/2018/03/06/windows-insiders-get-first-look-new-privacy-screen-settings-layout-coming-windows-10/#uCC2bKYP8M5BqrDP.97), a blog entry on Windows Blogs.

The following table provides an overview of the Windows 10 and Windows 11 privacy settings presented during the device setup experience that involve processing personal data and where to find additional information.

> [!NOTE]
> This table is limited to the privacy settings that are most commonly available when setting up a current version of Windows 10 or newer. For the full list of settings that involve data collection, see [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md).

| Feature/Setting | Description | Supporting content | Privacy statement |
| --- | --- | --- | --- |
| Diagnostic Data | <p>Microsoft uses diagnostic data to keep Windows secure, up to date, troubleshoot problems, and make product improvements. Regardless of what choices you make for diagnostic data collection, the device will be just as secure and will operate normally. This data is collected by Microsoft to quickly identify and address issues affecting its customers.</p><p>Diagnostic data is categorized into the following:<ul><li>**Required diagnostic data**<br />Required diagnostic data includes information about your device, its settings, capabilities, and whether it is performing properly, whether a device is ready for an update, and whether there are factors that may impede the ability to receive updates, such as low battery, limited disk space, or connectivity through a paid network. You can find out what is collected with required diagnostic data [here](./required-windows-diagnostic-data-events-and-fields-2004.md).</li><li>**Optional diagnostic data**<br />Optional diagnostic data includes more detailed information about your device and its settings, capabilities, and device health. When you choose to send optional diagnostic data, required diagnostic data will always be included. You can find out the types of optional diagnostic data collected [here](./windows-diagnostic-data.md).</li></ul></p> | [Learn more](https://support.microsoft.com/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy)<br /><br />[Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#maindiagnosticsmodule) |
| Inking & typing | Microsoft collects optional inking and typing diagnostic data to improve the language recognition and suggestion capabilities of apps and services running on Windows. | [Learn more](https://support.microsoft.com/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#maindiagnosticsmodule) |
| Location | Get location-based experiences like directions and weather. Let Windows and apps request your location and allow Microsoft to use your location data to improve location services. | [Learn more](https://support.microsoft.com/help/4468240/windows-10-location-service-and-privacy) |[Privacy Statement](https://privacy.microsoft.com/privacystatement#mainlocationservicesmotionsensingmodule) |
| Find my device | Use your device’s location data to help you find your device if you lose it. | [Learn more](https://support.microsoft.com/help/11579/microsoft-account-find-and-lock-lost-windows-device) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#mainlocationservicesmotionsensingmodule) |
| Tailored Experiences | Let Microsoft offer you tailored experiences based on the diagnostic data you choose to send. Tailored experiences include personalized tips, ads, and recommendations to enhance Microsoft products and services for your needs. | [Learn more](https://support.microsoft.com/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy) | [Privacy Statement](https://privacy.microsoft.com/privacystatement#maindiagnosticsmodule) |
| Advertising Id | Apps can use advertising ID to provide more personalized advertising in accordance with the privacy policy of the app provider. | [Learn more](https://support.microsoft.com/help/4459081/windows-10-general-privacy-settings) | [Privacy statement](https://support.microsoft.com/help/4459081/windows-10-general-privacy-settings) |


### 1.2 Data collection monitoring

[Diagnostic Data Viewer (DDV)](diagnostic-data-viewer-overview.md) is a Microsoft Store app (available in Windows 10, version 1803 and later and Windows 11) that lets a user review the Windows diagnostic data that is being collected on their Windows device and sent to Microsoft in real-time. DDV groups the information into simple categories that describe the data that’s being collected.

An administrator can also use the Diagnostic Data Viewer for PowerShell module to view the diagnostic data collected from the device instead of using the Diagnostic Data Viewer UI. The [Diagnostic Data Viewer for PowerShell Overview](microsoft-diagnosticdataviewer.md) provides further information.

> [!Note]
> If the Windows diagnostic data processor configuration is enabled, IT administrators should use the admin portal to fulfill data subject requests to access or export Windows diagnostic data associated with a particular user’s device usage. See [The process for exercising data subject rights](#3-the-process-for-exercising-data-subject-rights).

## 2. Windows data collection management

Windows provides the ability to manage privacy settings through several different methods. Users can change their privacy settings by opening the Settings app in Windows, or the organization can also manage the privacy settings using Group Policy or Mobile Device Management (MDM). The following sections provide an overview on how to manage the privacy settings previously discussed in this article.

### 2.1 Privacy setting options for users

Once a Windows device is set up, a user can manage data collection settings by opening the Settings app in Windows. Administrators can control privacy settings via setting policy on the device (see Section 2.2 below). If this is the case, the user will see an alert that says **Some settings are hidden or managed by your organization** when they navigate to the settings page. In this case, the user can only change settings in accordance with the policies that the administrator has applied to the device.

### 2.2 Privacy setting controls for administrators

Administrators can configure and control privacy settings across their organization by using Group Policy, Mobile Device Management (MDM), or Windows registry settings.

The following table provides an overview of the privacy settings discussed earlier in this document with details on how to configure these policies. The table also provides information on what the default value would be for each of these privacy settings if you do not manage the setting by using policy and suppress the Out-of-box Experience (OOBE) during device setup. If you’re interested in minimizing data collection, we also provide the recommended value to set.

> [!NOTE]
> This is not a complete list of settings that involve managing data collection or connecting to connected experiences in Windows. For a more detailed list, see [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md).

| Connected experience /setting | GP/MDM documentation | Default state if the setup experience is suppressed | State to stop/minimize data collection |
|---|---|---|---|
| [Speech](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-speech) | Group Policy:<br />**Computer Configuration** > **Control Panel** > **Regional and Language Options** > **Allow users to enable online speech recognition services**<br /><br />MDM: [Privacy/AllowInputPersonalization](/windows/client-management/mdm/policy-csp-privacy#privacy-allowinputpersonalization) | Off | Off |
| [Location](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-location) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **App Privacy** > **Let Windows apps access location**<br /><br />MDM: [Privacy/LetAppsAccessLocation](/windows/client-management/mdm/policy-csp-privacy#privacy-allowinputpersonalization) | Off (Windows 10, version 1903 and later and Windows 11) | Off |
| [Find my device](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#find-my-device) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **Find My Device** > **Turn On/Off Find My Device**<br /><br />MDM: [Experience/AllFindMyDevice](/windows/client-management/mdm/policy-csp-experience#experience-allowfindmydevice) | Off | Off |
| [Diagnostic Data](configure-windows-diagnostic-data-in-your-organization.md) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **Data Collection and Preview Builds** > **Allow Telemetry** (or **Allow diagnostic data** in Windows 11 or Windows Server 2022)<br /><br />MDM: [System/AllowTelemetry](/windows/client-management/mdm/policy-csp-system#system-allowtelemetry)<br /><br />**Note**: If you are planning to configure devices, using the Windows diagnostic data processor configuration option, the state to minimize data collection is not recommended. For more information, see [Enabling the Windows diagnostic data processor configuration](#237-diagnostic-data-enabling-the-windows-diagnostic-data-processor-configuration). | Required diagnostic data (Windows 10, version 1903 and later and Windows 11)<br /><br />Server editions:<br />Enhanced diagnostic data | Security (Off) and block endpoints |
| [Inking and typing diagnostics](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-ink) | Group Policy:<br />**Computer Configuration** > **Windows Components** > **Text Input** > **Improve inking and typing recognition**<br /><br />MDM: [TextInput/AllowLinguisticDataCollection](/windows/client-management/mdm/policy-csp-textinput#textinput-allowlinguisticdatacollection) | Off (Windows 10, version 1809 and later and Windows 11) | Off |
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

You can use the following articles to learn more about Autopilot and how to use Autopilot to deploy Windows:

- [Overview of Windows Autopilot](/windows/deployment/windows-Autopilot/windows-Autopilot)
- [Windows Autopilot deployment process](/windows/deployment/windows-Autopilot/deployment-process)

#### _2.3.2 Managing Windows connected experiences and essential services_

Windows includes features that connect to the internet to provide enhanced experiences and additional service-based capabilities. These features are called connected experiences. For example, Microsoft Defender Antivirus is a connected experience that delivers updated protection to keep the devices in your organization secure.

Essential services are services in the product that connect to Microsoft to keep the product secure, up to date and performing as expected, or are integral to how the product works. For example, the licensing service that confirms that you’re properly licensed to use Windows.

[Windows essential services and connected experiences](essential-services-and-connected-experiences.md) provides a list of the most common Windows essential services and connected experiences.

When a connected experience is used, data is sent to and processed by Microsoft to provide that connected experience. Administrators can manage the data sent from their organization to Microsoft by configuring settings that are associated with the functionality provided by Windows connected experiences and essential services. For more information, see [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md). This article includes the different methods available to configure each setting, the impact to functionality, and the versions of Windows that are applicable.

The article [Manage connection endpoints for Windows 11 Enterprise](manage-windows-11-endpoints.md) provides a list of endpoints to which data is transferred by Windows connected experiences for the latest Windows release, along with descriptions of any functionality that would be impacted by restricting data collection.

#### _2.3.3 Limited functionality baseline_

An organization may want to minimize the amount of data sent back to Microsoft or shared with Microsoft apps by managing the connections and configuring additional settings on their devices. Similar to [Windows security baselines](/windows/security/threat-protection/windows-security-baselines), Microsoft has released a limited functionality baseline focused on configuring settings to minimize the data sent back to Microsoft. However, the functionality of the device could be impacted by applying these settings. The [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md) article provides details on how to apply the baseline, along with the full list of settings covered in the baseline and the functionality that would be impacted. Administrators that don’t want to apply the baseline can still find details on how to configure each setting individually to find the right balance between data sharing and impact to functionality for their organization.

>[!IMPORTANT]
> - We recommend that you fully test any modifications to these settings before deploying them in your organization.
> - We also recommend that if you plan to enable the Windows diagnostic data processor configuration, adjust the limited configuration baseline before deploying it to ensure the Windows diagnostic setting is not turned off.

#### _2.3.4 Diagnostic data: Managing notifications for change of level at logon_

Starting with Windows 10, version 1803 and Windows 11, if an administrator modifies the diagnostic data collection setting, users are notified of this change during the initial device sign in. For example, if you configure the device to send optional diagnostic data, users will be notified the next time they sign into the device. You can disable these notifications by using the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Data Collection and Preview Builds** > **Configure telemetry opt-in change notifications** or the MDM policy `ConfigureTelemetryOptInChangeNotification`.

#### _2.3.5 Diagnostic data: Managing end user choice for changing the setting_

Windows 10, version 1803 and later and Windows 11 allows users to change their diagnostic data level to a lower setting than what their administrator has set. For example, if you have configured the device to send optional diagnostic data, a user can change the setting so that only required diagnostic data is sent by opening the Settings app in Windows and navigating to **Diagnostic & feedback**. Administrators can restrict a user’s ability to change the setting by enabling the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Data Collection and Preview Builds** > **Configure telemetry opt-in setting user interface** or the MDM policy `ConfigureTelemetryOptInSettingsUx`.

#### _2.3.6 Diagnostic data: Managing device-based data delete_

Windows 10, version 1809 and later and Windows 11 allow a user to delete diagnostic data collected from their device by opening the Settings app in Windows and navigating to **Diagnostic & feedback** and clicking the **Delete** button under the **Delete diagnostic data** heading. An administrator can also delete diagnostic data for a device using the [Clear-WindowsDiagnosticData](/powershell/module/windowsdiagnosticdata/Clear-WindowsDiagnosticData) PowerShell cmdlet.

An administrator can disable a user’s ability to delete their device’s diagnostic data by setting the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Data Collection and Preview Builds** > **Disable deleting diagnostic data** or the MDM policy `DisableDeviceDelete`.

>[!Note]
>If the Windows diagnostic data processor configuration is enabled, the Delete diagnostic data button will be disabled and the powershell cmdlet will not delete data collected under this configuration. IT administrators can instead delete diagnostic data collected by invoking a delete request from the admin portal.

#### _2.3.7 Diagnostic data: Enabling the Windows diagnostic data processor configuration_

> [!IMPORTANT]
> There are some significant changes planned for the Windows diagnostic data processor configuration.  To learn more, [review this information](changes-to-windows-diagnostic-data-collection.md#significant-changes-coming-to-the-windows-diagnostic-data-processor-configuration).

**Applies to:**

- Windows 11 Enterprise, Professional, and Education editions
- Windows 10 Enterprise, Professional, and Education, version 1809 with July 2021 update and newer

The Windows diagnostic data processor configuration enables IT administrators to be the controller, as defined by the European Union General Data Protection Regulation (GDPR), for the Windows diagnostic data collected from Windows devices that are Azure Active Directory (AAD)-joined and meet the configuration requirements. For more information, see [Enable Windows diagnostic data processor configuration](configure-windows-diagnostic-data-in-your-organization.md#enable-windows-diagnostic-data-processor-configuration) in [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md). Windows diagnostic data does not include data processed by Microsoft in connection with providing service-based capabilities.

The Windows diagnostic data collected from devices enabled with the Windows diagnostic data processor configuration may be associated with a specific Azure Active Directory User ID or device ID. The Windows diagnostic data processor configuration provides you with controls that help respond to data subject requests (DSRs) to delete diagnostic data, at user account closure, for a specific Azure AD User ID. Additionally, you’re able to execute an export DSR for diagnostic data related to a specific Azure AD User ID. For more information, see [The process for exercising data subject rights](#3-the-process-for-exercising-data-subject-rights). Microsoft also will accommodate a tenant account closure, either because you decide to close your Azure or Azure AD tenant account, or because you decide you no longer wish to be the data controller for Windows diagnostic data, but still wish to remain an Azure customer.

We recommend that IT administrators who have enabled the Windows diagnostic data processor configuration consider the following:

- Restrict user’s ability to sign-in with a Microsoft Account (MSA) using [Block Microsoft account group policy](/windows/security/threat-protection/security-policy-settings/accounts-block-microsoft-accounts).
- Restrict user’s ability to submit feedback, as any feedback or additional logs submitted by the user are not managed by the Windows diagnostic data processor configuration option. The Feedback hub app can be removed using [PowerShell](/powershell/module/appx/remove-appxpackage) and you can block the ability to submit feedback in Microsoft Edge using [Feedback group policy](/deployedge/microsoft-edge-policies#userfeedbackallowed).

>[!Note]
>Tenant account closure will lead to the deletion of all data associated with that tenant.

Specific services that depend on Windows diagnostic data will also result in the enterprise becoming controllers of their Windows diagnostic data. These services include Update Compliance, Desktop Analytics, Windows Update for Business, and Microsoft Managed Desktop. For more information, see [Related Windows product considerations](#5-related-windows-product-considerations).

For more information on how Microsoft can help you honor rights and fulfill obligations under the GDPR when using Windows diagnostic data processor configurations, see [General Data Protection Regulation Summary](/compliance/regulatory/gdpr).

## 3. The process for exercising data subject rights

This section discusses the different methods Microsoft provides for users and administrators to exercise data subject rights for data collected from a Windows device.

For IT administrators who have devices using the Windows diagnostic data processor configuration, refer to the [Data Subject Requests for the GDPR and CCPA](/compliance/regulatory/gdpr-dsr-windows). Otherwise proceed to the sections below.

### 3.1 Delete

Users can delete their device-based data by opening the Windows settings app and navigating to **Diagnostic & feedback** and clicking the **Delete** button under the **Delete diagnostic data** heading. Administrators can also use the [Clear-WindowsDiagnosticData](/powershell/module/windowsdiagnosticdata/Clear-WindowsDiagnosticData) PowerShell cmdlet.

>[!Note]
>If the Windows diagnostic data processor configuration is being used, the Delete diagnostic data functionality will be disabled. IT administrators can delete diagnostic data associated with a user from the admin portal.

### 3.2 View

The [Diagnostic Data Viewer (DDV)](diagnostic-data-viewer-overview.md) provides a view into the diagnostic data being collected from a Windows device. Administrators can also use the [Get-DiagnosticData](microsoft-diagnosticdataviewer.md#install-and-use-the-diagnostic-data-viewer-for-powershell) PowerShell cmdlet.

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

Windows Server follows the same mechanisms as Windows 10 (and newer versions) for handling of personal data.

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

[Desktop Analytics](/mem/configmgr/desktop-analytics/overview) is a set of solutions for Azure portal that provide you with extensive data about the state of devices in your deployment. Desktop Analytics is a separate offering from Windows and is dependent on enabling a minimum set of data collection on the device to function.

### 5.4 Microsoft Managed Desktop

[Microsoft Managed Desktop (MMD)](/microsoft-365/managed-desktop/service-description/) is a service that provides your users with a secure modern experience and always keeps devices up to date with the latest versions of Windows Enterprise edition, Office 365 ProPlus, and Microsoft security services.

### 5.5 Update Compliance

[Update Compliance](/windows/deployment/update/update-compliance-monitor) is a service that enables organizations to monitor security, quality and feature updates for Windows Professional, Education, and Enterprise editions, and view a report of device and update issues related to compliance that need attention. Update Compliance uses Windows diagnostic data for all its reporting.

## Additional Resources

* [Microsoft Trust Center: GDPR Overview](https://www.microsoft.com/trust-center/privacy/gdpr-overview)
* [Microsoft Trust Center: Privacy at Microsoft](https://www.microsoft.com/trust-center/privacy)
* [Windows IT Pro Docs](/windows/#pivot=it-pro)
* [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement)
* [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md) 
* [Privacy at Microsoft](https://privacy.microsoft.com/privacy-report)
* [Changes to Windows diagnostic data](changes-to-windows-diagnostic-data-collection.md)
* [Microsoft Service Trust Portal](https://servicetrust.microsoft.com/)