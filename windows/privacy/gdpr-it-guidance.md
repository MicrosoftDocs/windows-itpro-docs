---
title: Windows and the GDPR-Information for IT Administrators and Decision Makers
description: Use this topic to understand the relationship between users in your organization and Microsoft in the context of the GDPR (General Data Protection Regulation).
keywords: privacy, GDPR, windows, IT
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
ms.date: 05/11/2018
---
# Windows and the GDPR: Information for IT Administrators and Decision Makers

Applies to:
- Windows 10, version 1809
- Windows 10, version 1803
- Windows 10, version 1709
- Windows 10, version 1703
- Windows 10 Team Edition, version 1703 for Surface Hub
- Windows Server 2019
- Windows Server 2016
- Windows Analytics

This topic provides IT Decision Makers with a basic understanding of the relationship between users in an organization and Microsoft in the context of the GDPR (General Data Protection Regulation). You will also learn what role an IT organization plays for that relationship.

For more information about the GDPR, see:
* [Microsoft GDPR Overview](https://aka.ms/GDPROverview)
* [Microsoft Trust Center FAQs about the GDPR](https://aka.ms/gdpr-faq)
* [Microsoft Service Trust Portal (STP)](https://aka.ms/stp)
* [Get Started: Support for GDPR Accountability](https://servicetrust.microsoft.com/ViewPage/GDPRGetStarted)

## GDPR fundamentals

Here are some GDPR fundamentals:

* On May 25, 2018, this EU data privacy law is implemented. It sets a new global bar for data privacy rights, security, and compliance.
* The GDPR is fundamentally about protecting and enabling the privacy rights of individuals – both customers and employees.
* The European law establishes strict global data privacy requirements governing how organizations manage and protect personal data while respecting individual choice – no matter where data is sent, processed, or stored.
* A request by an individual to an organization to take an action on their personal data is referred to here as a *data subject request*, or *DSR*.

Microsoft believes data privacy is a fundamental right, and that the GDPR is an important step forward for clarifying and enabling individual privacy rights. We also recognize that the GDPR required significant changes by organizations all over the world with regard to the discovery, management, protection, and reporting of personal data that is collected, processed, and stored within an organization.

### What is personal data under the GDPR?

Article 4 (1) of [the GDPR](http://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32016R0679&from=en) defines personal data as any information relating to an identified or identifiable person. There is no distinction between a person’s private, public, or work roles. As defined by the GDPR, personal data includes, but is not limited to:
* Name
* Email address
* Credit card numbers
* IP addresses
* Social media posts
* Location information
* Handwriting patterns
* Voice input to cloud-based speech services

### Controller and processor under the GDPR: Who does what

#### Definition

The GDPR describes specific requirements for allocating responsibility for controller and processor activities related to personal data. Thus, every organization that processes personal data must determine whether it is acting as a controller or processor for a specific scenario.

* **Controller**: GDPR Article 4 (7) defines the ‘controller’ as the natural or legal person, public authority, agency or other body which, alone or jointly with others, determines the purposes and means of the processing of personal data.
* **Processor**: According to the GDPR Article 4 (8) ‘processor’ means a natural or legal person, public authority, agency or other body which processes personal data on behalf of the controller.

#### Controller scenario

For example, when an organization is using Microsoft Windows Defender Advanced Threat Protection (ATP) to detect, investigate, and respond to advanced threats on their networks as part of their IT operations, that organization is collecting data from the user’s device – data, that might include personal data. In this scenario, the organization is the *controller* of the respective personal data, since the organization controls the purpose and means of the processing for data being collected from the devices that have Windows Defender ATP enabled.

#### Processor scenario

In the controller scenario described above, Microsoft is a *processor* because Microsoft provides data processing services to that controller (in the given example, an organization that subscribed to Windows Defender ATP and enabled it for the user’s device). As processor, Microsoft only processes data on behalf of the enterprise customer and does not have the right to process data beyond their instructions as specified in a written contract, such as the [Microsoft Product Terms and the Microsoft Online Services Terms (OST)](https://www.microsoft.com/en-us/licensing/product-licensing/products.aspx).

## GDPR relationship between a Windows 10 user and Microsoft

For Windows 10 services, Microsoft usually is the controller (with exceptions, such as Windows Defender ATP). The following sections describe what that means for the related data.

### Types of data exchanged with Microsoft

Microsoft collects data from or generates data through interactions with users of Windows 10 devices. This information can contain personal data, as defined in [Article 4 (1) of the GDPR](http://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=OJ:L:2016:119:FULL&from=EN), that may be used to provide, support, and improve Windows 10 services.

Microsoft discloses data collection and privacy practices in detail, for example:
* As part of the Windows 10 installation;
* In the Windows 10 privacy settings;
* Via the web-based [Microsoft Privacy dashboard](https://account.microsoft.com/privacy); and
* In the [Microsoft Privacy Statement](https://privacy.microsoft.com/en-us/privacystatement).

It is important to differentiate between two distinct types of data Windows services are dealing with.

#### Windows functional data

A user action, such as performing a Skype call, usually triggers the collection and transmission of Windows *functional data*. Some Windows components and applications connecting to Microsoft services also exchange Windows functional data to provide user functionality.

Some other examples of Windows functional data:
* The Weather app which can use the device’s location to retrieve local weather or community news.
* Wallpaper and desktop settings that are synchronized across multiple devices.

For more info on how IT Professionals can manage Windows functional data sent from an organization to Microsoft, see [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md).

#### Windows diagnostic data

Windows diagnostic data is used to keep the operating system secure and up-to-date, troubleshoot problems, and make product improvements. The data is encrypted before being sent back to Microsoft.

Some examples of diagnostic data include:
* The type of hardware being used, information about installed apps and usage details, and reliability data on drivers running on the device.
* For users who have turned on “Tailored experiences”, it can be used to offer personalized tips, ads, and recommendations to enhance Microsoft products and services for the needs of the user.

Diagnostic data is categorized into the levels "Security", "Basic", "Enhanced", and "Full". For a detailed discussion about these diagnostic data levels please see [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md). To find more about what information is collected and how it is handled, see [Understanding Windows diagnostic data](configure-windows-diagnostic-data-in-your-organization.md#understanding-windows-diagnostic-data).

>[!IMPORTANT]
>Other Microsoft services as well as 3rd party applications and drivers running on Windows devices may implement their own functionality, independently from Windows, to transport their diagnostic data. Please contact the publisher for further guidance on how to control the diagnostic data collection level and transmission of these applications and services.

### Windows services where Microsoft is the processor under the GDPR

Most Windows 10 services are controller services in terms of the GDPR – for both Windows functional data and Windows diagnostic data. But there are a few Windows services where Microsoft is a processor for functional data under the GDPR, such as [Windows Analytics](https://www.microsoft.com/windowsforbusiness/windows-analytics) and [Windows Defender Advanced Threat Protection (ATP)](https://www.microsoft.com/windowsforbusiness/windows-atp).

>[!NOTE]
>Both Windows Analytics and Windows Defender ATP are subscription services for organizations. Some functionality requires a certain license (please see [Compare Windows 10 editions](https://www.microsoft.com/en-us/windowsforbusiness/compare)).

#### Windows Analytics

[Windows Analytics](https://www.microsoft.com/en-us/windowsforbusiness/windows-analytics) is a service that provides rich, actionable information for helping organizations to gain deep insights into the operational efficiency and health of the Windows devices in their environment. It uses Windows diagnostic data from devices enrolled by the IT organization of an enterprise into the Windows Analytics service.

Windows [transmits Windows diagnostic data](enhanced-diagnostic-data-windows-analytics-events-and-fields.md) to Microsoft datacenters, where that data is analyzed and stored. With Windows Analytics, the IT organization can then view the analyzed data to detect and fix issues or to improve their processes for upgrading to Windows 10.

As a result, in terms of the GDPR, the organization that has subscribed to Windows Analytics is acting as the controller, while Microsoft is the processor for Windows Analytics.
>[!NOTE]
>The IT organization must explicitly enable Windows Analytics for a device after the organization subscribes.

>[!IMPORTANT]
>Windows Analytics does not collect Windows Diagnostic data by itself. Instead, Windows Analytics only uses a subset of Windows Diagnostic data that is collected by Windows for an enrolled device. The Windows Diagnostic data collection is controlled by the IT department of an organization or the user of a device.

#### Windows Defender ATP

[Windows Defender ATP](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp) is cloud-based service that collects and analyzes usage data from an organization’s devices to detect security threats. Some of the data can contain personal data as defined by the GDPR. Enrolled devices transmit usage data to Microsoft datacenters, where that data is analyzed, processed, and stored. The security operations center (SOC) of the organization can view the analyzed data using the [Windows Defender ATP portal](https://securitycenter.windows.com/).

As a result, in terms of the GDPR, the organization that has subscribed to Windows Defender ATP is acting as the controller, while Microsoft is the processor for Windows Defender ATP.

>[!NOTE]
>The IT organization must explicitly enable Windows Defender ATP for a device after the organization subscribes.

#### At a glance – Windows 10 services GDPR mode of operations

The following table lists in what GDPR mode – controller or processor – Windows 10 services are operating.

| Service | Microsoft GDPR mode of operation |
| --- | --- |
| Windows Functional data | Controller or Processor* |
| Windows Diagnostic data | Controller |
| Windows Analytics | Processor |
| Windows Defender Advanced Threat Detection (ATP) | Processor |

*Table 1: Windows 10 GDPR modes of operations for different Windows 10 services*

*/*Depending on which application/feature this is referring to.*

##  Windows diagnostic data and Windows 10


### Recommended Windows 10 settings

Windows diagnostic data collection level for Windows 10 can be set by a user in Windows (*Start > Settings > Privacy > Diagnostics & feedback*) or by the IT department of an organization, using Group Policy or Mobile Device Management (MDM) techniques.

* For Windows 10, version 1803 and version 1809, Microsoft recommends setting the Windows diagnostic level to “Enhanced”. This enables organizations to get the full functionality of [Windows Analytics](#windows-analytics).

>[!NOTE]
>For more information on the Enhanced level, see [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md).

* For Windows 10, version 1709, and Windows 10, version 1703, the recommended Windows diagnostic level configuration for EEA and Switzerland commercial users is “Basic”.

>[!NOTE]
>For Windows 7, Microsoft recommends [configuring enterprise devices for Windows Analytics](/windows/deployment/update/windows-analytics-get-started) to facilitate upgrade planning to Windows 10.

### Additional information for Windows Analytics

Some Windows Analytics solutions and functionality, such as Update Compliance, works with “Basic” as minimum Windows diagnostic level. Other solutions and functionality of Windows Analytics, such as Device Health, require “Enhanced”.

Those organizations who wish to share the smallest set of events for Windows Analytics and have set the Windows diagnostic level to “Enhanced” can use the “Limit Enhanced diagnostic data to the minimum required by Windows Analytics” setting. This filtering mechanism was that Microsoft introduced in Windows 10, version 1709. When enabled, this feature limits the operating system diagnostic data events included in the Enhanced level to the smallest set of data required by Windows Analytics.

>[!NOTE]
>Additional information can be found at [Windows Analytics and privacy](/windows/deployment/update/windows-analytics-privacy
).

## Controlling Windows 10 data collection and notification about it

Windows 10 sends diagnostic data to Microsoft services, and some of that data can contain personal data. Both the user and the IT organization have the ability to control the transmission of that data to Microsoft.

### Adjusting privacy settings by the user

A user has the ability to adjust additional privacy settings in Windows by navigating to *Start > Settings > Privacy*. For example, a user can control if location is enabled or disabled, whether or not to transmit feedback on inking and typing input to Microsoft for improving the personal accuracy of these services, or if Windows collects activities for syncing it with other devices.

For a standard user in an organization, some privacy settings might be controlled by their IT department. This is done using Group Policies or Mobile Device Management (MDM) settings. If this is the case, the user will see an alert that says ‘Some settings are hidden or managed by your organization’ when they navigate to *Start > Settings > Privacy*. As such, the user can only change some settings, but not all.

### Users can lower the diagnostic level

Starting with Windows 10, version 1803, a user can change the Windows diagnostics data level for their device below to what was set by their IT department. Organizations can allow or disallow this feature by configuring the Group Policy **Computer Configuration\Administrative Templates\Windows Components\Data Collection and Preview Builds\Configure telemetry opt-in setting user interface** or the MDM policy **ConfigureTelemetryOptInSettingsUx**.

If an IT organization has not disabled this policy, users within the organization can change their own Windows diagnostic data collection level in *Start > Settings > Privacy > Diagnostics & feedback*. For example, if the IT organization enabled this policy and set the level to “Full”, a user can modify the Windows diagnostics data level setting to “Basic”.

### Notification at logon

Windows 10, version 1803, and later can provide users with a notification during their logon. If the IT organization has not disabled the Group Policy **Computer Configuration\Administrative Templates\Windows Components\Data Collection and Preview Builds\Configure telemetry opt-in change notifications** or the MDM policy **ConfigureTelemetryOptInChangeNotification**, Windows diagnostic data notifications can appear at logon so that the users of a device are aware of the data collection.

This notification can also be shown when the diagnostic level for the device was changed. For instance, if the diagnostic level on the device is set to “Basic” and the IT organization changes it to “Full”, users will be notified on their next logon.

### Diagnostic Data Viewer (DDV)

In Windows 10, version 1803 and later, users can invoke the [Diagnostic Data Viewer (DDV)](diagnostic-data-viewer-overview.md) to see what Windows diagnostic data is collected on their local device. This app lets a user review the diagnostic data collected on his device that is being sent to Microsoft. The DDV groups the information into simple categories based on how it is used by Microsoft.

A user can turn on Windows diagnostic data viewing by going to go to *Start > Settings > Privacy > Diagnostics & feedback*. Under the ‘Diagnostic data viewer’ section, the user has to enable the ‘If data viewing is enabled, you can see your diagnostics data’ option. After DDV is installed on the device, the user can start it by clicking the ‘Diagnostic Data Viewer’ in the ‘Diagnostic data viewer’ section of *Start > Settings > Privacy > Diagnostics & feedback*.

Also, the user can delete all Windows diagnostic data collected from the device. This is done by clicking the ‘Delete’ button in the ‘Delete diagnostic data’ section of *Start > Settings > Privacy > Diagnostics & feedback*.

### Windows 10 personal data services configuration

Microsoft assembled a list of Windows 10 services configuration settings that are useful for personal data privacy protection and related regulations, such as the General Data Protection Regulation (GDPR). There is one section with settings for service data that is managed at Microsoft and a section for local data that is managed by an IT organization.

IT Professionals that are interested in this configuration, see [Windows 10 personal data services configuration](windows-personal-data-services-configuration.md).

### Windows 10 connections to Microsoft

To find out more about the network connections that Windows components make to Microsoft as well as the privacy settings that affect data shared with either Microsoft or apps, see [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md) and [Manage Windows 10 connection endpoints](manage-windows-endpoints.md). These articles describe how these settings can be managed by an IT Professional.

### At-a-glance: the relationship between an IT organization and the GDPR

Because Microsoft is a controller for data collected by Windows 10, the user can work with Microsoft to satisfy GDPR requirements. While this relationship between Microsoft and a user is evident in a consumer scenario, an IT organization can influence that relationship in an enterprise scenario. For example, the IT organization has the ability to centrally configure the Windows diagnostic data level by using Group Policy or MDM settings.

## Windows Server

Windows Server follows the same mechanisms as Windows 10 for handling of personal data – for example, when collecting Windows diagnostic data.

More detailed information about Windows Server and the GDPR is available at Beginning your General Data Protection Regulation (GDPR) journey for Windows Server.

### Windows diagnostic data and Windows Server

The lowest diagnostic data setting level supported on Windows Server 2016 and Windows Server 2019 through management policies is “Security”. The lowest diagnostic data setting supported through the Settings UI is “Basic”. The default diagnostic data level for all Windows Server 2016 and Windows Server 2019 editions is “Enhanced”.

IT administrators can configure the Windows Server diagnostic data settings using familiar management tools, such as Group Policy, MDM, or Windows Provisioning. IT administrators can also manually change settings using Registry Editor. Setting the Windows Server diagnostic data levels through a management policy overrides any device-level settings.

There are two options for deleting Windows diagnostic data from a Windows Server machine:

- If the “Desktop Experience” option was chosen during the installation of Windows Server 2019, then there are the same options available for an IT administrator that end users have with Windows 10, version 1803 and version 1809, to submit a request for deleting that device’s diagnostic data. This is done by clicking the **Delete** button in the **Delete diagnostic data** section of **Start > Settings > Privacy > Diagnostics & feedback**.
- Microsoft has provided a [PowerShell cmdlet](https://docs.microsoft.com/powershell/module/windowsdiagnosticdata) that IT administrators can use to delete Windows diagnostic data via the command line on a machine running Windows Server 2016 or Windows Server 2019. This cmdlet provides the same functionality for deleting Windows diagnostic data as with Desktop Experience on Windows Server 2019. For more information, see [the PowerShell Gallery](https://www.powershellgallery.com/packages/WindowsDiagnosticData).

### Backups and Windows Server

Backups, including live backups and backups that are stored locally within an organization or in the cloud, can contain personal data.

- Backups an organizations creates, for example by using Windows Server Backup (WSB), are under its control. For example, for exporting personal data contained in a backup, the organization needs to restore the appropriate backup sets to facilitate the respective data subject request (DSR).
- The GDPR also applies when storing backups in the cloud. For example, an organization can use Microsoft Azure Backup to backup files and folders from physical or virtual Windows Server machines (located on-premises or in Azure) to the cloud. The organization that is subscribed to this backup service also has the obligation to restore the data in order to exercise the respective DSR.

## Windows 10 Team Edition, Version 1703 for Surface Hub

Surface Hub is a shared device used within an organization. The device identifier collected as part of diagnostic data is not connected to a user. For removing Windows diagnostic data sent to Microsoft for a Surface Hub, Microsoft created the Surface Hub Delete Diagnostic Data tool available in the Microsoft Store.

>[!NOTE]
>Additional apps running on the device, that are not delivered as part of the in-box experience of Surface Hub, may implement their own diagnostic data collection and transmission functionality independently to collect and process personal data. Please contact the app publisher for further guidance on how to control this.

An IT administrator can configure privacy- related settings, such as setting the Windows diagnostic data level to Basic. Surface Hub does not support group policy for centralized management; however, IT administrators can use MDM to apply these settings to Surface Hub. For more information about Surface Hub and MDM, please see [Manage settings with an MDM provider](https://docs.microsoft.com/surface-hub/manage-settings-with-mdm-for-surface-hub).

## Further reading

### Optional settings / features that further improve the protection of personal data

Personal data protection is one of the goals of the GDPR. One way of improving personal data protection is to use the modern and advanced security features of Windows 10. An IT organization can learn more at [Mitigate threats by using Windows 10 security features](/windows/security/threat-protection/overview-of-threat-mitigations-in-windows-10) and [Standards for a highly secure Windows 10 device](https://docs.microsoft.com/windows-hardware/design/device-experiences/oem-highly-secure).

>[!NOTE]
>Some of these features might require a particular Windows hardware, such as a computer with a Trusted Platform Module (TPM) chip, and can depend on a particular Windows product (such as Windows 10 E5).

### Windows Security Baselines

Microsoft has created Windows Security Baselines to efficiently configure Windows 10 and Windows Server. For more information, please visit [Windows Security Baselines](/windows/security/threat-protection/windows-security-baselines).

### Windows Restricted Traffic Limited Functionality Baseline

To make it easier to deploy settings that restrict connections from Windows 10 and Windows Server to Microsoft, IT Professionals can apply the Windows Restricted Traffic Limited Functionality Baseline, available [here](https://go.microsoft.com/fwlink/?linkid=828887).

>[!IMPORTANT]
>Some of the settings of the Windows Restricted Traffic Limited Functionality Baseline will reduce the functionality and security configuration of a device in the organization and are therefore not recommended.

### Microsoft Trust Center and Service Trust Portal

Please visit our [GDPR section of the Microsoft Trust Center](https://www.microsoft.com/en-us/trustcenter/privacy/gdpr) to obtain additional resources and to learn more about how Microsoft can help you fulfill specific GDPR requirements. There you can find lots of useful information about the GDPR, including how Microsoft is helping customers to successfully master the GDPR, a FAQ list, and a list of [resources for GDPR compliance](https://www.microsoft.com/en-us/TrustCenter/Privacy/gdpr/resources). Also, please check out the [Compliance Manager](https://aka.ms/compliancemanager) of the Microsoft [Service Trust Portal (STP)](https://aka.ms/stp) and [Get Started: Support for GDPR Accountability](https://servicetrust.microsoft.com/ViewPage/GDPRGetStarted).

### Additional resources

#### FAQs

* [Windows 10 feedback, diagnostics, and privacy](https://privacy.microsoft.com/windows-10-feedback-diagnostics-and-privacy)
* [Microsoft Edge and privacy](https://privacy.microsoft.com/windows-10-microsoft-edge-and-privacy)
* [Windows Hello and privacy](https://privacy.microsoft.com/windows-10-windows-hello-and-privacy)
* [Wi-Fi Sense](https://privacy.microsoft.com/windows-10-about-wifi-sense)

#### Blogs

* [Privacy and Windows 10](https://blogs.windows.com/windowsexperience/2015/09/28/privacy-and-windows-10)

#### Privacy Statement

* [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement)

#### Other resources

* [Privacy at Microsoft](https://privacy.microsoft.com/)
