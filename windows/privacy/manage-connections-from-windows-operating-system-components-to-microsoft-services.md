--- 
title: Manage connections from Windows operating system components to Microsoft services (Windows 10)
description: If you want to minimize connections from Windows to Microsoft services, or configure particular privacy settings, this article covers the settings that you could consider.
ms.assetid: ACCEB0DD-BC6F-41B1-B359-140B242183D9
keywords: privacy, manage connections to Microsoft, Windows 10, Windows Server 2016
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
audience: ITPro
author: danihalfin
ms.author: daniha
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 06/05/2018
---

# Manage connections from Windows operating system components to Microsoft services

**Applies to** 

- Windows 10 Enterprise, version 1607 and newer
- Windows Server 2016
- Windows Server 2019

If you're looking for content on what each diagnostic data level means and how to configure it in your organization, see [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md).

Learn about the network connections that Windows components make to Microsoft and also the privacy settings that affect data that is shared with either Microsoft or apps and how they can be managed by an IT Pro.

If you want to minimize connections from Windows to Microsoft services, or configure particular privacy settings, this article covers the settings that you could consider. You can configure diagnostic data at the lowest level for your edition of Windows, and also evaluate which other connections Windows makes to Microsoft services you want to turn off in your environment from the list in this article.

You can configure diagnostic data at the Security/Basic level, turn off Windows Defender diagnostic data and MSRT reporting, and turn off all other connections to Microsoft network endpoints as described in this article to help prevent Windows from sending any data to Microsoft. There are many reasons why these communications are enabled by default, such as updating malware definitions and maintain current certificate revocation lists, which is why we strongly recommend against this. This data helps us deliver a secure, reliable, and more delightful personalized experience.

To help make it easier to deploy settings to restrict connections from Windows 10 to Microsoft, you can apply the [Windows Restricted Traffic Limited Functionality Baseline](https://go.microsoft.com/fwlink/?linkid=828887).
This baseline was created in the same way as the [Windows security baselines](/windows/device-security/windows-security-baselines) that are often used to efficiently configure Windows to a known secure state.
Running the Windows Restricted Traffic Limited Functionality Baseline on devices in your organization will allow you to quickly configure all of the settings covered in this document.
However, some of the settings reduce the functionality and security configuration of your device and are therefore not recommended.
Make sure you've chosen the right settings configuration for your environment before applying.
You should not extract this package to the windows\\system32 folder because it will not apply correctly.

>[!IMPORTANT]
> As part of the [Windows Restricted Traffic Limited Functionality Baseline](https://go.microsoft.com/fwlink/?linkid=828887), MDM functionallity is disabled. If you manage devices through MDM, make sure [cloud notifications are enabled](#bkmk-priv-notifications).

Applying the Windows Restricted Traffic Limited Functionality Baseline is the same as applying each setting covered in this article.
It is recommended that you restart a device after making configuration changes to it.
Note that **Get Help** and **Give us Feedback** links no longer work after the Windows Restricted Traffic Limited Functionality Baseline is applied.

We are always striving to improve our documentation and welcome your feedback. You can provide feedback by contacting telmhelp@microsoft.com.

## What's new in Windows 10, version 1809 Enterprise edition

Here's a list of changes that were made to this article for Windows 10, version 1809:

- Added a policy to disable Windows Defender SmartScreen

## What's new in Windows 10, version 1803 Enterprise edition

Here's a list of changes that were made to this article for Windows 10, version 1803:

- Added a policy to turn off notifications network usage
- Added a policy for Microsoft Edge to turn off configuration updates for the Books Library
- Added a policy for Microsoft Edge to turn off Address Bar drop-down list suggestions

## What's new in Windows 10, version 1709 Enterprise edition

Here's a list of changes that were made to this article for Windows 10, version 1709:

- Added the Phone calls section
- Added the Storage Health section
- Added discussion of apps for websites in the Microsoft Store section

## What's new in Windows 10, version 1703 Enterprise edition

Here's a list of changes that were made to this article for Windows 10, version 1703:

- Added an MDM policy for Font streaming
- Added an MDM policy for Network Connection Status Indicator
- Added an MDM policy for the Micosoft Account Sign-In Assistant
- Added instructions for removing the Sticky Notes app
- Added registry paths for some Group Policies
- Added the Find My Device section
- Added the Tasks section
- Added the App Diagnostics section

- Added the following Group Policies:

  - Prevent managing SmartScreen Filter
  - Turn off Compatibility View
  - Turn off Automatic Download and Install of updates
  - Do not connect to any Windows Update locations
  - Turn off access to all Windows Update features
  - Specify Intranet Microsoft update service location
  - Enable Windows NTP client
  - Turn off Automatic download of the ActiveX VersionList
  - Allow Automatic Update of Speech Data
  - Accounts: Block Microsoft Accounts
  - Do not use diagnostic data for tailored experiences

## <a href="" id="bkmk-othersettings"></a>Management options for each setting

The following sections list the components that make network connections to Microsoft services by default. You can configure these settings to control the data that is sent to Microsoft. To prevent Windows from sending any data to Microsoft, configure diagnostic data at the Security level, turn off Windows Defender diagnostic data and MSRT reporting, and turn off all of these connections.

### Settings for Windows 10 Enterprise edition

The following table lists management options for each setting, beginning with Windows 10 Enterprise version 1607.

>[!NOTE]
>For some settings, MDM policies only partly cover capabilities available through Group Policy. See each setting’s section for more details.

| Setting | UI | Group Policy | MDM policy | Registry | Command line |
| - | :-: | :-: | :-: | :-: | :-: |
| [1. Automatic Root Certificates Update](#automatic-root-certificates-update) | | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [2. Cortana and Search](#bkmk-cortana) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [3. Date & Time](#bkmk-datetime) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [4. Device metadata retrieval](#bkmk-devinst) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [5. Find My Device](#find-my-device) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [6. Font streaming](#font-streaming) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [7. Insider Preview builds](#bkmk-previewbuilds) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) |  |
| [8. Internet Explorer](#bkmk-ie) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [9. License Manager](#bkmk-licmgr) | | | | ![Check mark](images/checkmark.png) | |
| [10. Live Tiles](#live-tiles) | | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [11. Mail synchronization](#bkmk-mailsync) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [12. Microsoft Account](#bkmk-microsoft-account) | | ![Check mark](images/checkmark.png) |  ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [13. Microsoft Edge](#bkmk-edge) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) |  |
| [14. Network Connection Status Indicator](#bkmk-ncsi) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [15. Offline maps](#bkmk-offlinemaps) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [16. OneDrive](#bkmk-onedrive) | | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [17. Preinstalled apps](#bkmk-preinstalledapps) | ![Check mark](images/checkmark.png) | | | | ![Check mark](images/checkmark.png) |
| [18. Settings > Privacy](#bkmk-settingssection) | | | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.1 General](#bkmk-general) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.2 Location](#bkmk-priv-location) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.3 Camera](#bkmk-priv-camera) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.4 Microphone](#bkmk-priv-microphone) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.5 Notifications](#bkmk-priv-notifications) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png)| ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.6 Speech](#bkmk-priv-speech) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.7 Account info](#bkmk-priv-accounts) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.8 Contacts](#bkmk-priv-contacts) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.9 Calendar](#bkmk-priv-calendar) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.10 Call history](#bkmk-priv-callhistory) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.11 Email](#bkmk-priv-email) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.12 Messaging](#bkmk-priv-messaging) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.13 Phone calls](#bkmk-priv-phone-calls) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.14 Radios](#bkmk-priv-radios) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.15 Other devices](#bkmk-priv-other-devices) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.16 Feedback & diagnostics](#bkmk-priv-feedback) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.17 Background apps](#bkmk-priv-background) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.18 Motion](#bkmk-priv-motion) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.19 Tasks](#bkmk-priv-tasks) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) |  ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.20 App Diagnostics](#bkmk-priv-diag) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) |  ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.21 Inking & Typing](#bkmk-priv-ink) | ![Check mark](images/checkmark.png) | |  ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [19. Software Protection Platform](#bkmk-spp) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [20. Storage Health](#bkmk-storage-health) | | ![Check mark](images/checkmark.png) |  |  | |
| [21. Sync your settings](#bkmk-syncsettings) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [22. Teredo](#bkmk-teredo) | | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) |
| [23. Wi-Fi Sense](#bkmk-wifisense) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [24. Windows Defender](#bkmk-defender) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[24.1 Windows Defender Smartscreen](#bkmk-defender-smartscreen) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [25. Windows Spotlight](#bkmk-spotlight) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [26. Microsoft Store](#bkmk-windowsstore) | | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[26.1 Apps for websites](#bkmk-apps-for-websites) | | ![Check mark](images/checkmark.png) |  | |
| [27. Windows Update Delivery Optimization](#bkmk-updates) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [28. Windows Update](#bkmk-wu) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | |


### Settings for Windows Server 2016 with Desktop Experience

See the following table for a summary of the management settings for Windows Server 2016 with Desktop Experience.

| Setting | UI | Group Policy | Registry | Command line |
| - | :-: | :-: | :-: | :-: |
| [1. Automatic Root Certificates Update](#automatic-root-certificates-update) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [2. Cortana and Search](#bkmk-cortana) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [3. Date & Time](#bkmk-datetime) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [4. Device metadata retrieval](#bkmk-devinst) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [6. Font streaming](#font-streaming) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [7. Insider Preview builds](#bkmk-previewbuilds) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [8. Internet Explorer](#bkmk-ie) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [10. Live Tiles](#live-tiles) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [12. Microsoft Account](#bkmk-microsoft-account) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [14. Network Connection Status Indicator](#bkmk-ncsi) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [16. OneDrive](#bkmk-onedrive) | | ![Check mark](images/checkmark.png) | | |
| [18. Settings > Privacy](#bkmk-settingssection) | | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.1 General](#bkmk-general) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [19. Software Protection Platform](#bkmk-spp) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [20. Teredo](#bkmk-teredo) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) |
| [24. Windows Defender](#bkmk-defender) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [26. Microsoft Store](#bkmk-windowsstore) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[26.1 Apps for websites](#bkmk-apps-for-websites) | | ![Check mark](images/checkmark.png) |  | |
| [28. Windows Update](#bkmk-wu) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |

### Settings for Windows Server 2016 Server Core

See the following table for a summary of the management settings for Windows Server 2016 Server Core.

| Setting | Group Policy | Registry | Command line |
| - | :-: | :-: | :-: |
| [1. Automatic Root Certificates Update](#automatic-root-certificates-update) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [3. Date & Time](#bkmk-datetime) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [6. Font streaming](#font-streaming) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [14. Network Connection Status Indicator](#bkmk-ncsi) | ![Check mark](images/checkmark.png) | | |
| [19. Software Protection Platform](#bkmk-spp) | ![Check mark](images/checkmark.png) | | |
| [22. Teredo](#bkmk-teredo) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) |
| [24. Windows Defender](#bkmk-defender) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [28. Windows Update](#bkmk-wu) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |

### Settings for Windows Server 2016 Nano Server

See the following table for a summary of the management settings for Windows Server 2016 Nano Server.

| Setting | Registry | Command line |
| - | :-: | :-: | 
| [1. Automatic Root Certificates Update](#automatic-root-certificates-update) | ![Check mark](images/checkmark.png) | |
| [3. Date & Time](#bkmk-datetime) | ![Check mark](images/checkmark.png) | |
| [22. Teredo](#bkmk-teredo) | | ![Check mark](images/checkmark.png) |
| [28. Windows Update](#bkmk-wu) | ![Check mark](images/checkmark.png) | |

### Settings for Windows Server 2019

See the following table for a summary of the management settings for Windows Server 2019.

| Setting | UI | Group Policy | MDM policy | Registry | Command line |
| - | :-: | :-: | :-: | :-: | :-: |
| [1. Automatic Root Certificates Update](#automatic-root-certificates-update) | | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [2. Cortana and Search](#bkmk-cortana) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [3. Date & Time](#bkmk-datetime) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [4. Device metadata retrieval](#bkmk-devinst) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [5. Find My Device](#find-my-device) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [6. Font streaming](#font-streaming) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [7. Insider Preview builds](#bkmk-previewbuilds) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) |  |
| [8. Internet Explorer](#bkmk-ie) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [10. Live Tiles](#live-tiles) | | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [11. Mail synchronization](#bkmk-mailsync) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [12. Microsoft Account](#bkmk-microsoft-account) | | ![Check mark](images/checkmark.png) |  ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [13. Microsoft Edge](#bkmk-edge) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) |  |
| [14. Network Connection Status Indicator](#bkmk-ncsi) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [15. Offline maps](#bkmk-offlinemaps) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [16. OneDrive](#bkmk-onedrive) | | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [17. Preinstalled apps](#bkmk-preinstalledapps) | ![Check mark](images/checkmark.png) | | | | ![Check mark](images/checkmark.png) |
| [18. Settings > Privacy](#bkmk-settingssection) | | | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.1 General](#bkmk-general) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.2 Location](#bkmk-priv-location) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.3 Camera](#bkmk-priv-camera) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.4 Microphone](#bkmk-priv-microphone) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.5 Notifications](#bkmk-priv-notifications) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png)| ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.6 Speech](#bkmk-priv-speech) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.7 Account info](#bkmk-priv-accounts) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.8 Contacts](#bkmk-priv-contacts) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.9 Calendar](#bkmk-priv-calendar) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.10 Call history](#bkmk-priv-callhistory) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.11 Email](#bkmk-priv-email) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.12 Messaging](#bkmk-priv-messaging) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.13 Phone calls](#bkmk-priv-phone-calls) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.14 Radios](#bkmk-priv-radios) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.15 Other devices](#bkmk-priv-other-devices) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.16 Feedback & diagnostics](#bkmk-priv-feedback) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.17 Background apps](#bkmk-priv-background) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.18 Motion](#bkmk-priv-motion) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.19 Tasks](#bkmk-priv-tasks) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) |  ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.20 App Diagnostics](#bkmk-priv-diag) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) |  ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[18.21 Inking & Typing](#bkmk-priv-ink) | | |  ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [19. Software Protection Platform](#bkmk-spp) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [20. Storage Health](#bkmk-storage-health) | | ![Check mark](images/checkmark.png) |  |  | |
| [21. Sync your settings](#bkmk-syncsettings) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [22. Teredo](#bkmk-teredo) | | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) |
| [23. Wi-Fi Sense](#bkmk-wifisense) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [24. Windows Defender](#bkmk-defender) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[24.1 Windows Defender Smartscreen](#bkmk-defender-smartscreen) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [25. Windows Spotlight](#bkmk-spotlight) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [26. Microsoft Store](#bkmk-windowsstore) | | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[26.1 Apps for websites](#bkmk-apps-for-websites) | | ![Check mark](images/checkmark.png) |  | |
| [27. Windows Update Delivery Optimization](#bkmk-updates) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [28. Windows Update](#bkmk-wu) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | |

## How to configure each setting

Use the following sections for more information about how to configure each setting.

### <a href="" id="automatic-root-certificates-update"></a>1. Automatic Root Certificates Update

The Automatic Root Certificates Update component is designed to automatically check the list of trusted authorities on Windows Update to see if an update is available.
For more information, see [Automatic Root Certificates Update Configuration](https://technet.microsoft.com/library/cc733922.aspx).
Although not recommended, you can turn off Automatic Root Certificates Update, which also prevents updates to the disallowed certificate list and the pin rules list.

> [!CAUTION]
> By not automatically downloading the root certificates, the device might have not be able to connect to some websites.

For Windows 10, Windows Server 2016 with Desktop Experience, and Windows Server 2016 Server Core:

- Enable the Group Policy: **Computer Configuration** > **Administrative Templates** > **System** > **Internet Communication Management** > **Internet Communication Settings** > **Turn off Automatic Root Certificates Update**

  -and-

1. Navigate to **Computer Configuration** > **Windows Settings** > **Security Settings** > **Public Key Policies**.
2. Double-click **Certificate Path Validation Settings**.
3. On the **Network Retrieval** tab, select the **Define these policy settings** check box.
4. Clear the **Automatically update certificates in the Microsoft Root Certificate Program (recommended)** check box, and then click **OK**.

  -or-

- Create the registry path **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\AuthRoot** and then add a REG_DWORD registry setting, named **DisableRootAutoUpdate**, with a value of 1.

  -and-

1. Navigate to **Computer Configuration** > **Windows Settings** > **Security Settings** > **Public Key Policies**.
2. Double-click **Certificate Path Validation Settings**.
3. On the **Network Retrieval** tab, select the **Define these policy settings** check box.
4. Clear the **Automatically update certificates in the Microsoft Root Certificate Program (recommended)** check box, and then click **OK**.


On Windows Server 2016 Nano Server:

- Create the registry path **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\AuthRoot** and then add a REG_DWORD registry setting, named **DisableRootAutoUpdate**, with a value of 1.

>[!NOTE]
>CRL and OCSP network traffic is currently whitelisted and will still show up in network traces.  CRL and OCSP checks are made to the issuing certificate authorities. Microsoft is one of them, but there are many others, such as DigiCert, Thawte, Google, Symantec, and VeriSign.

### <a href="" id="bkmk-cortana"></a>2. Cortana and Search

Use either Group Policy or MDM policies to manage settings for Cortana. For more info, see [Cortana, Search, and privacy: FAQ](https://go.microsoft.com/fwlink/p/?LinkId=730683).

### <a href="" id="bkmk-cortana-gp"></a>2.1 Cortana and Search Group Policies

Find the Cortana Group Policy objects under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Search**.

| Policy                                               | Description                                                                           |
|------------------------------------------------------|---------------------------------------------------------------------------------------|
| Allow Cortana                                        | Choose whether to let Cortana install and run on the device.<br/><br/>**Disable** this policy to turn off Cortana. |
| Allow search and Cortana to use location             | Choose whether Cortana and Search can provide location-aware search results.<br/><br/>**Disable** this policy to block access to location information for Cortana. |
| Do not allow web search                              | Choose whether to search the web from Windows Desktop Search.<br/><br/>**Enable** this policy to remove the option to search the Internet from Cortana. |
| Don't search the web or display web results in Search| Choose whether to search the web from Cortana.<br/><br/>**Enable** this policy to stop web queries and results from showing in Search. |
| Set what information is shared in Search             | Control what information is shared with Bing in Search.<br/><br/>If you **enable** this policy and set it to **Anonymous info**, usage information will be shared but not search history, Microsoft Account information, or specific location. |

You can also apply the Group Policies using the following registry keys:

| Policy                                               | Registry Path                                                                           |
|------------------------------------------------------|---------------------------------------------------------------------------------------|
| Allow Cortana                                        | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\Windows Search<br/>REG_DWORD: AllowCortana <br/>Value: 0|
| Allow search and Cortana to use location             | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\Windows Search<br/>REG_DWORD: AllowSearchToUseLocation <br/>Value: 0 |
| Do not allow web search                              | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\Windows Search<br/>REG_DWORD: DisableWebSearch <br/>Value: 1 |
| Don't search the web or display web results in Search| HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\Windows Search<br/>REG_DWORD: ConnectedSearchUseWeb <br/>Value: 0 |
| Set what information is shared in Search             | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\Windows Search<br/>REG_DWORD: ConnectedSearchPrivacy <br/>Value: 3 |

>[!IMPORTANT]
> Using the Group Policy editor these steps are required for all supported versions of Windows 10, however they are not required for devices running Windows 10, version 1607 or Windows Server 2016.

1.  Expand **Computer Configuration** &gt; **Windows Settings** &gt; **Security Settings** &gt; **Windows Defender Firewall with Advanced Security** &gt; **Windows Defender Firewall with Advanced Security - &lt;LDAP name&gt;**, and then click **Outbound Rules**.

2.  Right-click **Outbound Rules**, and then click **New Rule**. The **New Outbound Rule Wizard** starts.

3.  On the **Rule Type** page, click **Program**, and then click **Next**.

4.  On the **Program** page, click **This program path**, type **%windir%\\systemapps\\Microsoft.Windows.Cortana\_cw5n1h2txyewy\\SearchUI.exe**, and then click **Next**.

5.  On the **Action** page, click **Block the connection**, and then click **Next**.

6.  On the **Profile** page, ensure that the **Domain**, **Private**, and **Public** check boxes are selected, and then click **Next**.

7.  On the **Name** page, type a name for the rule, such as **Cortana firewall configuration**, and then click **Finish.**

8.  Right-click the new rule, click **Properties**, and then click **Protocols and Ports**.

9.  Configure the **Protocols and Ports** page with the following info, and then click **OK**.

    - For **Protocol type**, choose **TCP**.

    - For **Local port**, choose **All Ports**.

    - For **Remote port**, choose **All ports**.

-or-

-  Create a new REG_SZ registry setting named **{0DE40C8E-C126-4A27-9371-A27DAB1039F7}** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\WindowsFirewall\\FirewallRules** and set it to a value of **v2.25|Action=Block|Active=TRUE|Dir=Out|Protocol=6|App=%windir%\\SystemApps\\Microsoft.Windows.Cortana_cw5n1h2txyewy\\searchUI.exe|Name=Block outbound Cortana|**

If your organization tests network traffic, do not use a network proxy as Windows Firewall does not block proxy traffic. Instead, use a network traffic analyzer. Based on your needs, there are many network traffic analyzers available at no cost.

### <a href="" id="bkmk-cortana-mdm"></a>2.2 Cortana and Search MDM policies

For Windows 10 only, the following Cortana MDM policies are available in the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx).

| Policy                                               | Description                                                                                         |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Experience/AllowCortana                              | Choose whether to let Cortana install and run on the device.                                        |
| Search/AllowSearchToUseLocation                      | Choose whether Cortana and Search can provide location-aware search results. <br /> Default: Allowed|

### <a href="" id="bkmk-datetime"></a>3. Date & Time

You can prevent Windows from setting the time automatically.

- To turn off the feature in the UI: **Settings** &gt; **Time & language** &gt; **Date & time** &gt; **Set time automatically**

  -or-

- Create a REG_SZ registry setting in **HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\W32Time\\Parameters\\Type** with a value of **NoSync**.

After that, configure the following:

- **Disable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **Windows Time Service** &gt; **Time Providers** &gt; **Enable Windows NTP Client**

  -or-

-  Create a new REG_DWORD registry setting named **Enabled** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\W32time\\TimeProviders\\NtpClient** and set it to **0 (zero)**.


### <a href="" id="bkmk-devinst"></a>4. Device metadata retrieval

To prevent Windows from retrieving device metadata from the Internet:

- **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **Device Installation** &gt; **Prevent device metadata retrieval from the Internet**.

  -or -

- Create a new REG_DWORD registry setting named **PreventDeviceMetadataFromNetwork** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\Device Metadata** and set it to 1 (one).

  -or -

- Apply the DeviceInstallation/PreventDeviceMetadataFromNetwork MDM policy from the [Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation#deviceinstallation-preventdevicemetadatafromnetwork).

### <a href="" id="find-my-device"></a>5. Find My Device

To turn off Find My Device:

- Turn **Off** the feature in the UI by going to **Settings -> Update & Security -> Find My Device**, click the Change button, and set the value to **Off**

  -or-

- **Disable** the Group Policy: **Computer Configuration** > **Administrative Template** > **Windows Components** > **Find My Device** > **Turn On/Off Find My Device**

  -or-

- You can also create a new REG_DWORD registry setting **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\FindMyDevice\\AllowFindMyDevice** to **0 (zero)**.

### <a href="" id="font-streaming"></a>6. Font streaming

Fonts that are included in Windows but that are not stored on the local device can be downloaded on demand.

If you're running Windows 10, version 1607, Windows Server 2016, or later:

- **Disable** the Group Policy: **Computer Configuration** >   **Administrative Templates** > **Network** > **Fonts** > **Enable Font Providers**.

  -or-

- Create a new REG_DWORD registry setting **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\System\\EnableFontProviders** to **0 (zero)**.

  -or-

- In Windows 10, version 1703, you can apply the System/AllowFontProviders MDM policy from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) where:

  - **False**. Font streaming is Disabled.

  - **True**. Font streaming is Enabled.

> [!NOTE]
> After you apply this policy, you must restart the device for it to take effect.


### <a href="" id="bkmk-previewbuilds"></a>7. Insider Preview builds

The Windows Insider Preview program lets you help shape the future of Windows, be part of the community, and get early access to releases of Windows 10. This setting stops communication with the Windows Insider Preview service that checks for new builds.
Windows Insider Preview builds only apply to Windows 10 and are not available for Windows Server 2016.


> [!NOTE]
> If you upgrade a device that is configured to minimize connections from Windows to Microsoft services (that is, a device configured for zero exhaust) to a Windows Insider Preview build, the Feedback & Diagnostic setting will automatically be set to **Full**. Although the diagnostic data level may initially appear as **Basic**, a few hours after the UI is refreshed or the machine is rebooted, the setting will become **Full**.

To turn off Insider Preview builds for a released version of Windows 10:

- **Disable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Data Collection and Preview Builds** &gt; **Toggle user control over Insider builds**.

To turn off Insider Preview builds for Windows 10:

> [!NOTE]
> If you're running a preview version of Windows 10, you must roll back to a released version before you can turn off Insider Preview builds.

- Turn off the feature in the UI: **Settings** > **Update & security** > **Windows Insider Program** > **Stop Insider Preview builds**.

  -or-

- **Enable** the Group Policy **Toggle user control over Insider builds** under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Data Collection and Preview Builds**

  -or-

- Create a new REG_DWORD registry setting named **AllowBuildPreview** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\PreviewBuilds** with a **value of 0 (zero)**

  -or-

- Apply the System/AllowBuildPreview MDM policy from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) where:

  - **0**. Users cannot make their devices available for downloading and installing preview software.

  - **1**. Users can make their devices available for downloading and installing preview software.

  - **2**. (default) Not configured. Users can make their devices available for download and installing preview software.


### <a href="" id="bkmk-ie"></a>8. Internet Explorer
> [!NOTE]
> The following Group Policies and Registry Keys are for user interactive scenarios rather then the typical idle traffic scenario. Find the Internet Explorer Group Policy objects under **Computer Configuration > Administrative Templates > Windows Components > Internet Explorer** and make these settings: 

| Policy                                               | Description                                                                                         |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Turn on Suggested Sites| Choose whether an employee can configure Suggested Sites. <br /> **Set Value to: Disabled** <br /> You can also turn this off in the UI by clearing the **Internet Options** &gt; **Advanced** &gt; **Enable Suggested Sites** check box.|
| Allow Microsoft services to provide enhanced suggestions as the user types in the Address Bar | Choose whether an employee can configure enhanced suggestions, which are presented to the employee as they type in the Address Bar. <br /> **Set Value to: Disabled**|
| Turn off the auto-complete feature for web addresses | Choose whether auto-complete suggests possible matches when employees are typing web address in the Address Bar. <br /> **Set Value to: Enabled** </br> You can also turn this off in the UI by clearing the <strong>Internet Options</strong> &gt; **Advanced** &gt; **Use inline AutoComplete in the Internet Explorer Address Bar and Open Dialog** check box.|
| Turn off browser geolocation | Choose whether websites can request location data from Internet Explorer. <br /> **Set Value to: Enabled**|
| Prevent managing SmartScreen filter | Choose whether employees can manage the SmartScreen Filter in Internet Explorer. <br /> **Set Value to: Enabled** and then set **Select SmartScreen filtering mode** to **Off**.|


| Registry Key                                         | Registry path                                                                                       |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Turn on Suggested Sites| HKLM\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Suggested Sites<br/>REG_DWORD: Enabled <br />**Set Value to: 0**|
| Allow Microsoft services to provide enhanced suggestions as the user types in the Address Bar | HKLM\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer<br />REG_DWORD: AllowServicePoweredQSA <br />**Set Value to: 0**|
| Turn off the auto-complete feature for web addresses |HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows\CurrentVersion\\Explorer\\AutoComplete<br/>REG_SZ: AutoSuggest <br />Set Value to: **no** |
| Turn off browser geolocation | HKLM\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Geolocation<br/>REG_DWORD: PolicyDisableGeolocation <br />**Set Value to: 1** |
| Prevent managing SmartScreen filter | HKLM\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\PhishingFilter<br/>REG_DWORD: EnabledV9 <br />**Set Value to: 0** |

There are more Group Policy objects that are used by Internet Explorer:

| Path | Policy | Description |
| - | - | - |
| **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Internet Explorer** > **Compatibility View** > **Turn off Compatibility View** | Choose whether employees can configure Compatibility View. | Choose whether an employee can fix website display problems that he or she may encounter while browsing. <br /> **Set to: Enabled** |
| **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Internet Explorer** > **Internet Control Panel** > **Advanced Page**  | Turn off the flip ahead with page prediction feature | Choose whether an employee can swipe across a screen or click forward to go to the next pre-loaded page of a website. <br /> **Set to: Enabled** |
| **Computer Configuration** > **Administrative Templates** > **Windows Components** > **RSS Feeds** | Turn off background synchronization for feeds and Web Slices | Choose whether to have background synchronization for feeds and Web Slices. <br /> **Set to: Enabled** |
| **Computer Configuration** > **Administrative Templates** > **Control Panel** > **Allow Online Tips** | Allow Online Tips | Enables or disables the retrieval of online tips and help for the Settings app. <br /> **Set to: Disabled** |

You can also use Registry keys to set these policies.

| Registry Key                                         | Registry path                                                                                       |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Choose whether employees can configure Compatibility View. | HKLM\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\BrowserEmulation<br/>REG_DWORD: DisableSiteListEditing <br /> **Set Value to 1**|
| Turn off the flip ahead with page prediction feature | HKLM\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\FlipAhead<br/>REG_DWORD: Enabled <br /> **Set Value to 0**|
| Turn off background synchronization for feeds and Web Slices | HKLM\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Feeds<br/>REG_DWORD: BackgroundSyncStatus <br/> **Set Value to 0**|
| Allow Online Tips | HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer<br/>REG_DWORD: AllowOnlineTips <br/> **Set Value to 0**|

To turn off the home page, **Enable** the Group Policy: **User Configuration** > **Administrative Templates** > **Windows Components** > **Internet Explorer** > **Disable changing home page settings**, and set it to **about:blank**.

  -or -

- Create a new REG_SZ registry setting named **Start Page** in **HKEY_Current_User\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main** with a **about:blank**

  -and -

- Create a new REG_DWORD registry setting named **HomePage** in **HKEY_Current_User\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Control Panel** with a **1 (one)**


To configure the First Run Wizard, **Enable** the Group Policy: **User Configuration** > **Administrative Templates** > **Windows Components** > **Internet Explorer** > **Prevent running First Run wizard**, and set it to **Go directly to home page**.

  -or -

- Create a new REG_DWORD registry setting named **DisableFirstRunCustomize** in **HKEY_Current_User\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main** with a **1 (one)**


To configure the behavior for a new tab, **Enable** the Group Policy: **User Configuration** > **Administrative Templates** > **Windows Components** > **Internet Explorer** > **Specify default behavior for a new tab**, and set it to **about:blank**.

  -or -

- Create a new REG_DWORD registry setting named **NewTabPageShow** in **HKEY_Current_User\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\TabbedBrowsing** with a **0 (zero)**


### <a href="" id="bkmk-ie-activex"></a>8.1 ActiveX control blocking

ActiveX control blocking periodically downloads a new list of out-of-date ActiveX controls that should be blocked.

You can turn this off by:

-  **Enable** the Group Policy: **User Configuration** > **Administrative Templates** > **Windows Components** > **Internet Explorer** > **Security Features** > **Add-on Management** > **Turn off Automatic download of the ActiveX VersionList**

  -or -

-  Changing the REG_DWORD registry setting **HKEY_CURRENT_USER\\Software\\Microsoft\\Internet Explorer\\VersionManager\\DownloadVersionList** to **0 (zero)**.

For more info, see [Out-of-date ActiveX control blocking](https://technet.microsoft.com/library/dn761713.aspx).

### <a href="" id="bkmk-licmgr"></a>9. License Manager

You can turn off License Manager related traffic by setting the following registry entry:

-   Add a REG_DWORD value named **Start** to **HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\LicenseManager** and set the **value to 4**

-   The value 4 is to disable the service. Here are the available options to set the registry:

    -   **0x00000000** = Boot

    -   **0x00000001** = System

    -   **0x00000002** = Automatic

    -   **0x00000003** = Manual

    -   **0x00000004** = Disabled

### <a href="" id="live-tiles"></a>10. Live Tiles

To turn off Live Tiles:

- **Enable** the Group Policy: **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Notifications** > **Turn Off notifications network usage**

  -or-

- Create a REG_DWORD registry setting named **NoCloudApplicationNotification** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\PushNotifications** with a **value of 1 (one)** 

In Windows 10 Mobile, you must also unpin all tiles that are pinned to Start.

### <a href="" id="bkmk-mailsync"></a>11. Mail synchronization

To turn off mail synchronization for Microsoft Accounts that are configured on a device:

- In **Settings** &gt; **Accounts** &gt; **Your email and accounts**, remove any connected Microsoft Accounts.

  -or-

- Remove any Microsoft Accounts from the Mail app.

  -or-

- Apply the Accounts/AllowMicrosoftAccountConnection MDM policy from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) where 0 is not allowed and 1 is allowed. This does not apply to Microsoft Accounts that have already been configured on the device.

To turn off the Windows Mail app:

- Create a REG_DWORD registry setting named **ManualLaunchAllowed** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows Mail** with a **value of 0 (zero)**.

### <a href="" id="bkmk-microsoft-account"></a>12. Microsoft Account

To prevent communication to the Microsoft Account cloud authentication service. Many apps and system components that depend on Microsoft Account authentication may lose functionality. Some of them could be in unexpected ways. For example, Windows Update will no longer offer feature updates to devices running Windows 10 1709 or higher. See [Feature updates are not being offered while other updates are](https://docs.microsoft.com/windows/deployment/update/windows-update-troubleshooting#feature-updates-are-not-being-offered-while-other-updates-are).

- **Enable** the Group Policy: **Computer Configuration** &gt; **Windows Settings** &gt; **Security Settings** &gt; **Local Policies** &gt; **Security Options** &gt; **Accounts: Block Microsoft Accounts** and set it to **Users can't add Microsoft accounts**.

  -or-

- Create a REG_DWORD registry setting named **NoConnectedUser** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System** with a **value of 3**.


To disable the Microsoft Account Sign-In Assistant:

- Apply the Accounts/AllowMicrosoftAccountSignInAssistant MDM policy from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) where 0 is turned off and 1 is turned on.

  -or-

- Change the **Start** REG_DWORD registry setting in **HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\wlidsvc** to a value of **4**.


### <a href="" id="bkmk-edge"></a>13. Microsoft Edge

Use either Group Policy or MDM policies to manage settings for Microsoft Edge. For more info, see [Microsoft Edge and privacy: FAQ](https://go.microsoft.com/fwlink/p/?LinkId=730682).

### <a href="" id="bkmk-edgegp"></a>13.1 Microsoft Edge Group Policies

Find the Microsoft Edge Group Policy objects under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Microsoft Edge**.

| Policy                                               | Description                                                                                         |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Allow Address bar drop-down list suggestions            |  Choose whether to show the address bar drop-down list <br /> **Set to Disabled**       |
| Allow configuration updates for the Books Library            | Choose whether configuration updates are done for the Books Library. <br /> **Set to Disabled**       |
| Configure Autofill                                    | Choose whether employees can use autofill on websites. <br /> **Set to Disabled**                      |
| Configure Do Not Track         | Choose whether employees can send Do Not Track headers.<br /> **Set to Enabled**                     |
| Configure Password Manager                            | Choose whether employees can save passwords locally on their devices. <br /> **Set to Disabled**       |
| Configure search suggestions in Address Bar              | Choose whether the Address Bar shows search suggestions. <br /> **Set to Disabled**                    |
| Configure Windows Defender SmartScreen (Windows 10, version 1703)               | Choose whether Windows Defender SmartScreen is turned on or off.  <br /> **Set to Disabled**                            |
| Allow web content on New Tab page                     | Choose whether a new tab page appears.  <br /> **Set to Disabled**                                     |
| Configure Start pages                       | Choose the Start page for domain-joined devices. <br /> **Enabled** and **Set this to <<about:blank>>**         |
| Prevent the First Run webpage from opening on Microsoft Edge                       | Choose whether employees see the First Run webpage. <br /> **Set to: Enable**        |
| Allow Microsoft Compatibility List                       | Choose whether to use the Microsoft Compatibility List in Microsoft Edge. <br /> **Set to: Disabled**        |

Alternatively, you can configure the these Registry keys as described:

| Registry Key | Registry path |
| - | - |
| Allow Address Bar drop-down list suggestions  | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\MicrosoftEdge\\ServiceUI<br/>REG_DWORD name: ShowOneBox<br/> Set to **0**|
| Allow configuration updates for the Books Library  | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\MicrosoftEdge\\BooksLibrary<br/>REG_DWORD name: AllowConfigurationUpdateForBooksLibrary<br/> Set to **0**|
| Configure Autofill  | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\MicrosoftEdge\\Main<br/>REG_SZ name: Use FormSuggest<br/>Value : **No** |
| Configure Do Not Track   | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\MicrosoftEdge\\Main<br/>REG_DWORD name: DoNotTrack<br/> REG_DWORD: **1** |
| Configure Password Manager | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\MicrosoftEdge\\Main<br/>REG_SZ name: FormSuggest Passwords<br /> REG_SZ: **No** |
| Configure search suggestions in Address Bar | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\MicrosoftEdge\\SearchScopes<br/>REG_DWORD name: ShowSearchSuggestionsGlobal <br />Value: **0**|
| Configure Windows Defender SmartScreen Filter (Windows 10, version 1703) | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\MicrosoftEdge\\PhishingFilter<br/>REG_DWORD name: EnabledV9 <br/>Value: **0** |
| Allow web content on New Tab page  | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\MicrosoftEdge\\ServiceUI<br/>REG_DWORD name: AllowWebContentOnNewTabPage <br/>Value: **0** |
| Configure corporate Home pages | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\MicrosoftEdge\\Internet Settings<br/>REG_SZ name: ProvisionedHomePages <br/>Value: **<<about:blank>>**|
| Prevent the First Run webpage from opening on Microsoft Edge | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\MicrosoftEdge\\Main <br>REG_DWORD name: PreventFirstRunPage <br/>Value: **1**|
| Choose whether employees can configure Compatibility View. | HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\MicrosoftEdge\\BrowserEmulation<br/>REG_DWORD: MSCompatibilityMode <br />Value: **0**|


### <a href="" id="bkmk-edge-mdm"></a>13.2 Microsoft Edge MDM policies

The following Microsoft Edge MDM policies are available in the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx).

| Policy                                               | Description                                                                                         |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Browser/AllowAutoFill                                | Choose whether employees can use autofill on websites. <br /> **Set to: Not Allowed**                      |
| Browser/AllowDoNotTrack                              | Choose whether employees can send Do Not Track headers.<br /> **Set to: Allowed**                  |
| Browser/AllowMicrosoftCompatbilityList               | Specify the Microsoft compatibility list in Microsoft Edge. <br /> **Set to: Not Allowed**                 |
| Browser/AllowPasswordManager                         | Choose whether employees can save passwords locally on their devices. <br /> **Set to: Not Allowed**       |
| Browser/AllowSearchSuggestionsinAddressBar           | Choose whether the Address Bar shows search suggestions.. <br /> **Set to: Not Allowed**                   |
| Browser/AllowSmartScreen                             | Choose whether SmartScreen is turned on or off.  <br /> **Set to: Not Allowed**                            |
| Browser/FirstRunURL                                  | Choose the home page for Microsoft Edge on Windows Mobile 10. <br /> **Set to:** blank                 |


For a complete list of the Microsoft Edge policies, see [Available policies for Microsoft Edge](https://docs.microsoft.com/microsoft-edge/deploy/available-policies).

### <a href="" id="bkmk-ncsi"></a>14. Network Connection Status Indicator

Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to http://www.msftconnecttest.com/connecttest.txt to determine if the device can communicate with the Internet. For more info about NCSI, see [The Network Connection Status Icon](http://blogs.technet.com/b/networking/archive/2012/12/20/the-network-connection-status-icon.aspx).

In versions of Windows 10 prior to Windows 10, version 1607 and Windows Server 2016, the URL was [http://www.msftncsi.com]().

You can turn off NCSI by doing one of the following:

- **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **Internet Communication Management** &gt; **Internet Communication Settings** &gt; **Turn off Windows Network Connectivity Status Indicator active tests**

- In Windows 10, version 1703 and later, apply the Connectivity/DisallowNetworkConnectivityActiveTests MDM policy from the [Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-connectivity#connectivity-disallownetworkconnectivityactivetests) with a value of 1.

> [!NOTE]
> After you apply this policy, you must restart the device for the policy setting to take effect.

-or-

- Create a REG_DWORD registry setting named **NoActiveProbe** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\NetworkConnectivityStatusIndicator** with a value of 1 (one).

### <a href="" id="bkmk-offlinemaps"></a>15. Offline maps

You can turn off the ability to download and update offline maps.

- **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Maps** &gt; **Turn off Automatic Download and Update of Map Data**

  -or-

- Create a REG_DWORD registry setting named **AutoDownloadAndUpdateMapData** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\Maps** with a **value of 0 (zero)**.

  -or-

- In Windows 10, version 1607 and later, apply the Maps/EnableOfflineMapsAutoUpdate MDM policy from the [Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-maps#maps-enableofflinemapsautoupdate) with a **value of 0**.

  -and-

- In Windows 10, version 1607 and later, **Enable** the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Maps** > **Turn off unsolicited network traffic on the Offline Maps settings page**

  -or-

- Create a REG_DWORD registry setting named **AllowUntriggeredNetworkTrafficOnSettingsPage** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\Maps** with a value of 0 (zero).

### <a href="" id="bkmk-onedrive"></a>16. OneDrive

To turn off OneDrive in your organization:

- **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **OneDrive** &gt; **Prevent the usage of OneDrive for file storage**

  -or-

- Create a REG_DWORD registry setting named **DisableFileSyncNGSC** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\OneDrive** with a value of 1 (one).

  -and-

-   **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **OneDrive** &gt; **Prevent OneDrive from generating network traffic until the user signs in to OneDrive (Enable)**

    -or-

- Create a REG_DWORD registry setting named **PreventNetworkTrafficPreUserSignIn** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\OneDrive** with a **value of 1 (one)** 

-or-

-   Set the System/DisableOneDriveFileSync MDM policy from the [Policy CSP](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-system#system-disableonedrivefilesync) to True (value 1) to disable OneDrive File Sync. 


### <a href="" id="bkmk-preinstalledapps"></a>17. Preinstalled apps

Some preinstalled apps get content before they are opened to ensure a great experience. You can remove these using the steps in this section.

To remove the News app:

- Right-click the app in Start, and then click **Uninstall**.

  -or-
>[!IMPORTANT]
> If you have any issues with these commands, restart the system and try the scripts again.
>
- Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.BingNews"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

  -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.BingNews | Remove-AppxPackage**

To remove the Weather app:

- Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.BingWeather"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

  -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.BingWeather | Remove-AppxPackage**

To remove the Money app:

- Right-click the app in Start, and then click **Uninstall**.

  -or-

- Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.BingFinance"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

  -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.BingFinance | Remove-AppxPackage**

To remove the Sports app:

- Right-click the app in Start, and then click **Uninstall**.

  -or-

- Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.BingSports"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

  -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.BingSports | Remove-AppxPackage**

To remove the Twitter app:

- Right-click the app in Start, and then click **Uninstall**.

  -or-

- Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "\*.Twitter"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

  -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage \*.Twitter | Remove-AppxPackage**

To remove the XBOX app:

- Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.XboxApp"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

  -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.XboxApp | Remove-AppxPackage**

To remove the Sway app:

- Right-click the app in Start, and then click **Uninstall**.

  -or-

- Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.Office.Sway"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

  -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.Office.Sway | Remove-AppxPackage**

To remove the OneNote app:

- Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.Office.OneNote"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

  -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.Office.OneNote | Remove-AppxPackage**

To remove the Get Office app:

- Right-click the app in Start, and then click **Uninstall**.

  -or-

- Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.MicrosoftOfficeHub"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

  -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.MicrosoftOfficeHub | Remove-AppxPackage**

To remove the Get Skype app:

- Right-click the Sports app in Start, and then click **Uninstall**.

  -or-

- Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.SkypeApp"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

  -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.SkypeApp | Remove-AppxPackage**

To remove the Sticky notes app:

- Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.MicrosoftStickyNotes"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

  -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.MicrosoftStickyNotes | Remove-AppxPackage**

### <a href="" id="bkmk-settingssection"></a>18. Settings &gt; Privacy

Use Settings &gt; Privacy to configure some settings that may be important to your organization. Except for the Feedback & Diagnostics page, these settings must be configured for every user account that signs into the PC.

- [18.1 General](#bkmk-general)

- [18.2 Location](#bkmk-priv-location)

- [18.3 Camera](#bkmk-priv-camera)

- [18.4 Microphone](#bkmk-priv-microphone)

- [18.5 Notifications](#bkmk-priv-notifications)

- [18.6 Speech](#bkmk-priv-speech)

- [18.7 Account info](#bkmk-priv-accounts)

- [18.8 Contacts](#bkmk-priv-contacts)

- [18.9 Calendar](#bkmk-priv-calendar)

- [18.10 Call history](#bkmk-priv-callhistory)

- [18.11 Email](#bkmk-priv-email)

- [18.12 Messaging](#bkmk-priv-messaging)

- [18.13 Phone Calls](#bkmk-priv-phone-calls)

- [18.14 Radios](#bkmk-priv-radios)

- [18.15 Other devices](#bkmk-priv-other-devices)

- [18.16 Feedback & diagnostics](#bkmk-priv-feedback)

- [18.17 Background apps](#bkmk-priv-background)

- [18.18 Motion](#bkmk-priv-motion)

- [18.19 Tasks](#bkmk-priv-tasks)

- [18.20 App Diagnostics](#bkmk-priv-diag)

- [18.21 Inking & Typing](#bkmk-priv-ink)

### <a href="" id="bkmk-general"></a>18.1 General

**General** includes options that don't fall into other areas.

#### Windows 10, version 1703 options

To turn off **Let apps use advertising ID to make ads more interesting to you based on your app usage (turning this off will reset your ID)**:

> [!NOTE]
> When you turn this feature off in the UI, it turns off the advertising ID, not just resets it.

- Turn off the feature in the UI.

  -or-

- **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **User Profiles** &gt; **Turn off the advertising ID**.

  -or-

- Create a REG_DWORD registry setting named **Enabled** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\AdvertisingInfo** with a value of 0 (zero).

  -and-

- Create a REG_DWORD registry setting named **DisabledByGroupPolicy** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\AdvertisingInfo** with a value of 1 (one).

To turn off **Let websites provide locally relevant content by accessing my language list**:

- Turn off the feature in the UI.

  -or-

- Create a new REG_DWORD registry setting named **HttpAcceptLanguageOptOut** in **HKEY_CURRENT_USER\\Control Panel\\International\\User Profile** with a value of 1.

To turn off **Let Windows track app launches to improve Start and search results**:

- Turn off the feature in the UI.

  -or-

- Create a REG_DWORD registry setting named **Start_TrackProgs** in **HKEY_CURRENT_USER\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced** with value of 0 (zero).

#### Windows Server 2016 and Windows 10, version 1607 and earlier options

To turn off **Let apps use my advertising ID for experiences across apps (turning this off will reset your ID)**:

> [!NOTE]
> When you turn this feature off in the UI, it turns off the advertising ID, not just resets it.

- Turn off the feature in the UI.

  -or-

- **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **User Profiles** &gt; **Turn off the advertising ID**.

 -or-

- Create a REG_DWORD registry setting named **Enabled** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\AdvertisingInfo** with a value of 0 (zero).

  -or-

- Create a REG_DWORD registry setting named **DisabledByGroupPolicy** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\AdvertisingInfo** with a value of 1 (one).

To turn off **Turn on SmartScreen Filter to check web content (URLs) that Microsoft Store apps use**:

- Turn off the feature in the UI.

  -or-

- Create a REG_DWORD registry setting named **EnableWebContentEvaluation** in **HKEY_CURRENT_USER\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\AppHost** with a value of 0 (zero).

To turn off **Send Microsoft info about how I write to help us improve typing and writing in the future**:

> [!NOTE]
> If the diagnostic data level is set to either **Basic** or **Security**, this is turned off automatically.

- Turn off the feature in the UI.

  -or-

- Apply the TextInput/AllowLinguisticDataCollection MDM policy from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) where:

    - **0**. Not allowed

    - **1**. Allowed (default)

To turn off **Let websites provide locally relevant content by accessing my language list**:

- Turn off the feature in the UI.

  -or-

- Create a new REG_DWORD registry setting named **HttpAcceptLanguageOptOut** in **HKEY_CURRENT_USER\\Control Panel\\International\\User Profile** with a value of 1.

To turn off **Let apps on my other devices open apps and continue experiences on this devices**:

- Turn off the feature in the UI.

  -or-

- Disable the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **Group Policy** &gt; **Continue experiences on this device**.

  -or-

- Create a REG_DWORD registry setting named **EnableCdp** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\System** with a value of 0 (zero).

To turn off **Let apps on my other devices use Bluetooth to open apps and continue experiences on this device**:

- Turn off the feature in the UI.

### <a href="" id="bkmk-priv-location"></a>18.2 Location

In the **Location** area, you choose whether devices have access to location-specific sensors and which apps have access to the device's location.

To turn off **Location for this device**:

- Click the **Change** button in the UI.

  -or-

- **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Location and Sensors** &gt; **Turn off location**.

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessLocation** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a **value of 2 (two)**.

  -or-

- Apply the System/AllowLocation MDM policy from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx), where:

    - **0**. Turned off and the employee can't turn it back on.

    - **1**. Turned on, but lets the employee choose whether to use it. (default)

    - **2**. Turned on and the employee can't turn it off.

    > [!NOTE]
    > You can also set this MDM policy in System Center Configuration Manager using the [WMI Bridge Provider](https://msdn.microsoft.com/library/dn905224.aspx).

To turn off **Location**:

- Turn off the feature in the UI.
  
  -or-
  
- **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access location**

  - Set the **Select a setting** box to **Force Deny**.

  -or-

- Create a REG_DWORD registry setting named **DisableLocation** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\LocationAndSensors** with a value of 1 (one).


To turn off **Location history**:

- Erase the history using the **Clear** button in the UI.

To turn off **Choose apps that can use your location**:

- Turn off each app using the UI.

### <a href="" id="bkmk-priv-camera"></a>18.3 Camera

In the **Camera** area, you can choose which apps can access a device's camera.

To turn off **Let apps use my camera**:

- Turn off the feature in the UI.

  -or-

- Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access the camera**

  - Set the **Select a setting** box to **Force Deny**.

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessCamera** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a value of 2 (two).

  -or-

- Apply the Camera/AllowCamera MDM policy from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx), where:

    - **0**. Apps can't use the camera.

    - **1**. Apps can use the camera.

    > [!NOTE]
    > You can also set this MDM policy in System Center Configuration Manager using the [WMI Bridge Provider](https://msdn.microsoft.com/library/dn905224.aspx).


To turn off **Choose apps that can use your camera**:

- Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-microphone"></a>18.4 Microphone

In the **Microphone** area, you can choose which apps can access a device's microphone.

To turn off **Let apps use my microphone**:

- Turn off the feature in the UI.

  -or-

- Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access the microphone**

  - Set the **Select a setting** box to **Force Deny**.

  -or-

-  Apply the Privacy/LetAppsAccessMicrophone MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappsaccessmicrophone), where:

    - **0**. User in control
    - **1**. Force allow
    - **2**. Force deny

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessMicrophone** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a value of 2 (two)

To turn off **Choose apps that can use your microphone**:

- Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-notifications"></a>18.5 Notifications

>[!IMPORTANT]
>Disabling notifications will also disable the ability to manage the device through MDM. If you are using an MDM solution, make sure cloud notifications are enabled through one of the options below.

To turn off notifications network usage:

- Apply the Group Policy: **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Notifications** > **Turn off Notifications network usage**

  - Set to **Enabled**.

  -or-

- Create a REG_DWORD registry setting named **NoCloudApplicationNotification** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\PushNotifications** with a value of 1 (one)

  -or-


- Apply the Notifications/DisallowCloudNotification MDM policy from the [Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-notifications#notifications-disallowcloudnotification), where:

    - **0**. WNS notifications allowed
    - **1**. No WNS notifications allowed

In the **Notifications** area, you can also choose which apps have access to notifications.

To turn off **Let apps access my notifications**:

- Turn off the feature in the UI.

  -or-

- Apply the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **App Privacy** > **Let Windows apps access notifications**

  - Set the **Select a setting** box to **Force Deny**.

  -or-

-  Apply the Privacy/LetAppsAccessNotifications MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappsaccessnotifications), where:

     - **0**. User in control
     - **1**. Force allow
     - **2**. Force deny

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessNotifications** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a value of 2 (two)

### <a href="" id="bkmk-priv-speech"></a>18.6 Speech

In the **Speech** area, you can configure the functionality as such: 

To turn off streaming audio to Microsoft Speech services,

- Toggle the Settings -> Privacy -> Speech -> **Online speech recognition** switch to **Off** 

  -or-

- **Disable** the Group Policy: **Computer Configuration > Administrative Templates > Control Panel > Regional and Language Options > Allow users to enable online speech recognition services** 

  -or-

- Set the Privacy\AllowInputPersonalization MDM Policy from the Policy CSP to **0 - Not allowed**

  -or-

- Create a REG_DWORD registry setting named **HasAccepted** in **HKEY_CURRENT_USER\\Software\\Microsoft\\Speech_OneCore\\Settings\\OnlineSpeechPrivacy** with a **value of 0 (zero)**

### <a href="" id="bkmk-priv-accounts"></a>18.7 Account info

In the **Account Info** area, you can choose which apps can access your name, picture, and other account info.

To turn off **Let apps access my name, picture, and other account info**:

- Turn off the feature in the UI.

  -or-

- Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access account information**

  - Set the **Select a setting** box to **Force Deny**.

  -or-

-  Apply the Privacy/LetAppsAccessAccountInfo MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappsaccessaccountinfo), where:

     - **0**. User in control
     - **1**. Force allow
     - **2**. Force deny

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessAccountInfo** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\AppPrivacy** with a value of 2 (two).



To turn off **Choose the apps that can access your account info**:

- Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-contacts"></a>18.8 Contacts

In the **Contacts** area, you can choose which apps can access an employee's contacts list.

To turn off **Choose apps that can access contacts**:

- Turn off the feature in the UI for each app.

  -or-

- Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access contacts**

  - Set the **Select a setting** box to **Force Deny**.

  -or-

-  Apply the Privacy/LetAppsAccessContacts MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappsaccesscontacts), where:

     - **0**. User in control
     - **1**. Force allow
     - **2**. Force deny

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessContacts** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\AppPrivacy** with a value of 2 (two).

### <a href="" id="bkmk-priv-calendar"></a>18.9 Calendar

In the **Calendar** area, you can choose which apps have access to an employee's calendar.

To turn off **Let apps access my calendar**:

- Turn off the feature in the UI.

  -or-

- Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access the calendar**

  - Set the **Select a setting** box to **Force Deny**.

  -or-

-  Apply the Privacy/LetAppsAccessCalendar MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappsaccesscalendar), where:

    - **0**. User in control
    - **1**. Force allow
    - **2**. Force deny

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessCalendar** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\AppPrivacy** with a value of 2 (two).

To turn off **Choose apps that can access calendar**:

- Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-callhistory"></a>18.10 Call history

In the **Call history** area, you can choose which apps have access to an employee's call history.

To turn off **Let apps access my call history**:

- Turn off the feature in the UI.

  -or-

- Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access call history**

  - Set the **Select a setting** box to **Force Deny**.

  -or-

  -  Apply the Privacy/LetAppsAccessCallHistory MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappsaccesscallhistory), where:

    - **0**. User in control
    - **1**. Force allow
    - **2**. Force deny

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessCallHistory** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a value of 2 (two).

### <a href="" id="bkmk-priv-email"></a>18.11 Email

In the **Email** area, you can choose which apps have can access and send email.

To turn off **Let apps access and send email**:

- Turn off the feature in the UI.

  -or-

- Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access email**

  - Set the **Select a setting** box to **Force Deny**.

  -or-

  -  Apply the Privacy/LetAppsAccessEmail MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappsaccessemail), where:

     - **0**. User in control
     - **1**. Force allow
     - **2**. Force deny

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessEmail** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a value of 2 (two).

### <a href="" id="bkmk-priv-messaging"></a>18.12 Messaging

In the **Messaging** area, you can choose which apps can read or send messages.

To turn off **Let apps read or send messages (text or MMS)**:

- Turn off the feature in the UI.

  -or-

- Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access messaging**

  - Set the **Select a setting** box to **Force Deny**.

  -or-

-  Apply the Privacy/LetAppsAccessMessaging MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappsaccessmessaging), where:

      - **0**. User in control
      - **1**. Force allow
      - **2**. Force deny

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessMessaging** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a value of 2 (two).

To turn off **Choose apps that can read or send messages**:

- Turn off the feature in the UI for each app.

**To turn off Message Sync** 

-   Create a REG_DWORD registry setting named **AllowMessageSync** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\Messaging** and set the **value to 0 (zero)**.
   
    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Messaging**

    -   Set the **Allow Message Service Cloud Sync** to **Disable**.

### <a href="" id="bkmk-priv-phone-calls"></a>18.13 Phone calls

In the **Phone calls** area, you can choose which apps can make phone calls.

To turn off **Let apps make phone calls**:

- Turn off the feature in the UI.

  -or-

- Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps make phone calls**

  - Set the **Select a setting** box to **Force Deny**.

  -or-

-  Apply the Privacy/LetAppsAccessPhone MDM policy from the [Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccessphone), where:

      - **0**. User in control
      - **1**. Force allow
      - **2**. Force deny

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessPhone** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a value of 2 (two).


To turn off **Choose apps that can make phone calls**:

- Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-radios"></a>18.14 Radios

In the **Radios** area, you can choose which apps can turn a device's radio on or off.

To turn off **Let apps control radios**:

- Turn off the feature in the UI.

  -or-

- Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps control radios**

  - Set the **Select a setting** box to **Force Deny**.

  -or-

-  Apply the Privacy/LetAppsAccessRadios MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappsaccessradios), where:

  - **0**. User in control
  - **1**. Force allow
  - **2**. Force deny

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessRadios** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a value of 2 (two).


To turn off **Choose apps that can control radios**:

- Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-other-devices"></a>18.15 Other devices

In the **Other Devices** area, you can choose whether devices that aren't paired to PCs, such as an Xbox One, can share and sync info.

To turn off **Let apps automatically share and sync info with wireless devices that don't explicitly pair with your PC, tablet, or phone**:

- Turn off the feature in the UI by going to Settings > Privacy > Other devices >  "Communicate with unpaired devices.    Let apps automatically share and sync info with wireless devices that don't explicitly pair with your PC, tablet, or phone" and **Turn it OFF**. 

  -or-

- **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps communicate with unpaired devices** and set the **Select a setting** box to **Force Deny**.

  -or-

- Set the Privacy/LetAppsSyncWithDevices MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappssyncwithdevices) to **2**. Force deny

  -or-

- Create a REG_DWORD registry setting named **LetAppsSyncWithDevices** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a **value of 2 (two)**.

To turn off **Let your apps use your trusted devices (hardware you've already connected, or comes with your PC, tablet, or phone)**:

- Turn off the feature in the UI.

  -or-

- **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access trusted devices** and set the **Select a setting** box to **Force Deny**.

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessTrustedDevices** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a **value of 2 (two)**.

  -or-

- Apply the **Privacy/LetAppsAccessTrustedDevices** MDM policy from the [Policy CSP](/windows/client-management/mdm/policy-csp-privacy.md#privacy-letappsaccesstrusteddevices
), where:

     - **0**. User in control
     - **1**. Force allow
     - **2**. Force deny

### <a href="" id="bkmk-priv-feedback"></a>18.16 Feedback & diagnostics

In the **Feedback & Diagnostics** area, you can choose how often you're asked for feedback and how much diagnostic and usage information is sent to Microsoft.

To change how frequently **Windows should ask for my feedback**:

> [!NOTE]
> Feedback frequency only applies to user-generated feedback, not diagnostic and usage data sent from the device.


- To change from **Automatically (Recommended)**, use the drop-down list in the UI.

  -or-

- **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Data Collection and Preview Builds** &gt; **Do not show feedback notifications**

  -or-

- Create a REG_DWORD registry setting named **DoNotShowFeedbackNotifications** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\DataCollection** with a value of 1 (one).

  -or-

- Create the registry keys (REG_DWORD type):

  - HKEY_CURRENT_USER\\Software\\Microsoft\\Siuf\\Rules\\PeriodInNanoSeconds

  - HKEY_CURRENT_USER\\Software\\Microsoft\\Siuf\\Rules\\NumberOfSIUFInPeriod

    Based on these settings:

    | Setting       | PeriodInNanoSeconds         | NumberOfSIUFInPeriod        |
    |---------------|-----------------------------|-----------------------------|
    | Automatically | Delete the registry setting | Delete the registry setting |
    | Never         | 0                           | 0                           |
    | Always        | 100000000                   | Delete the registry setting |
    | Once a day    | 864000000000                | 1                           |
    | Once a week   | 6048000000000               | 1                           |


To change the level of diagnostic and usage data sent when you **Send your device data to Microsoft**:

- Click either the **Basic** or **Full** options.

  -or-

- **Enable** the Group Policy: **Computer Configuration\\Administrative Templates\\Windows Components\\Data Collection And Preview Builds\\Allow Telemetry** and **set it to a value of 0**.

  -or-

- Create a REG_DWORD registry setting in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\DataCollection\\AllowTelemetry** with a **value of 0**.

> [!NOTE]
> If the **Security** option is configured by using Group Policy or the Registry, the value will not be reflected in the UI. The **Security** option is only available in Windows 10 Enterprise edition.

  -or-

- Apply the System/AllowTelemetry MDM policy from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx), where:

    - **0**. Maps to the **Security** level.

    - **1**. Maps to the **Basic** level.

    - **2**. Maps to the **Enhanced** level.

    - **3**. Maps to the **Full** level.
    

To turn off tailored experiences with relevant tips and recommendations by using your diagnostics data:

- Turn off the feature in the UI.

  -or-

- **Enable** the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Cloud Content** > **Turn off Microsoft consumer experiences**

  -or-

- Create a REG_DWORD registry setting named **DisableWindowsConsumerFeatures** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\CloudContent** with a value of **1**

  -and-

- **Enable** the Group Policy: **User Configuration** > **Administrative Templates** > **Windows Components** > **Cloud Content** > **Do not use diagnostic data for tailored experiences**

  -or-

- Create a REG_DWORD registry setting named **DisableTailoredExperiencesWithDiagnosticData** in **HKEY_Current_User\\SOFTWARE\\Policies\\Microsoft\\Windows\\CloudContent** with a value of **1**


### <a href="" id="bkmk-priv-background"></a>18.17 Background apps

In the **Background Apps** area, you can choose which apps can run in the background.

To turn off **Let apps run in the background**:

- In the **Background apps** settings page, set **Let apps run in the background** to **Off**.

  -or-

- In the **Background apps** settings page, turn off the feature for each app.

 -or-

- **Enable** the Group Policy (only applicable for Windows 10 version 1703 and above): **Computer Configuration** > **Administrative Templates** > **Windows Components** > **App Privacy** > **Let Windows apps run in the background** and set the **Select a setting** box to **Force Deny**.

  -or-

- Create a REG_DWORD registry setting named **LetAppsRunInBackground** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a **value of 2 (two)**

  -or-

-  Set the Privacy/LetAppsRunInBackground MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappsaccessruninbackground) to **2 Force Deny**.

> [!NOTE]
> Some apps, including Cortana and Search, might not function as expected if you set **Let apps run in the background** to **Force Deny**.

### <a href="" id="bkmk-priv-motion"></a>18.18 Motion

In the **Motion** area, you can choose which apps have access to your motion data.

To turn off **Let Windows and your apps use your motion data and collect motion history**:

- Turn off the feature in the UI.

  -or-

- **Enable** the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **App Privacy** > **Let Windows apps access motion** and set the **Default for all apps** to **Force Deny**

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessMotion** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a **value of 2 (two)**.

  -or-

-  Apply the Privacy/LetAppsAccessMotion MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappsaccessmotion), where:

    - **0**. User in control
    - **1**. Force allow
    - **2**. Force deny


### <a href="" id="bkmk-priv-tasks"></a>18.19 Tasks

In the **Tasks** area, you can choose which apps have access to your tasks.

To turn this off:

- Turn off the feature in the UI.

  -or-

- Apply the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **App Privacy** > **Let Windows apps access Tasks**.  Set the **Select a setting** box to **Force Deny**.

  -or-

- Create a REG_DWORD registry setting named **LetAppsAccessTasks** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a **value of 2 (two)**.

  -or-

-  Apply the Privacy/LetAppsAccessTasks MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappsaccesstasks), where:

    - **0**. User in control
    - **1**. Force allow
    - **2**. Force deny

### <a href="" id="bkmk-priv-diag"></a>18.20 App Diagnostics

In the **App diagnostics** area, you can choose which apps have access to your diagnostic information.

To turn this off:

- Turn off the feature in the UI.

  -or-

- **Enable** the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **App Privacy** > **Let Windows apps access dignostic information about other apps**

  -or-

- Create a REG_DWORD registry setting named **LetAppsGetDiagnosticInfo** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppPrivacy** with a **value of 2 (two)**.

  -or-

-  Set the Privacy/LetAppsGetDiagnosticInfo MDM policy from the [Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-letappsgetdiagnosticinfo) to **2**. Force deny


### <a href="" id="bkmk-priv-ink"></a>18.21 Inking & Typing

In the **Inking & Typing** area you can configure the functionality as such: 

To turn off Inking & Typing data collection (note: there is no Group Policy for this setting):

 - In the UI go to **Settings -> Privacy -> Diagnostics & Feedback -> Inking and typing** and turn **Improve inking & typing** to **Off** 

  -or-

 - Set **RestrictImplicitTextCollection** registry REG_DWORD setting in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\InputPersonalization** to a **value of 1 (one)**

  -or-

 - Set the Privacy\AllowInputPersonalization MDM Policy from the Policy CSP. 
  [TextInput/AllowLinguisticDataCollection](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-textinput#textinput-allowlinguisticdatacollection) to **0** (not allowed). This policy setting controls the ability to send inking and typing data to Microsoft to improve the language recognition and suggestion capabilities of apps and services running on Windows. 


If you're running at least Windows 10, version 1703, you can turn off updates to the speech recognition and speech synthesis models:

  **Disable** the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Speech** > **Allow automatic update of Speech Data**

  -or-

 - Create a REG_DWORD registry setting named **AllowSpeechModelUpdate** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Speech** with a **value of 0 (zero)** 

  -or-

 - Set the Speech/AllowSpeechModelUpdate MDM policy from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962(v=vs.85).aspx#Speech_AllowSpeechModelUpdate) to **0**


> [!NOTE]
> Releases 1803 and earlier support **Speech, Inking, & Typing** as a combined settings area.  For customizing those setting please follow the below instructions.  For 1809 and above **Speech** and **Inking & Typing** are separate settings pages, please see the specific section (18.6 Speech or 18.21 Inking and Typing) above for those areas.

In the **Speech, Inking, & Typing** area, you can let Windows and Cortana better understand your employee's voice and written input by sampling their voice and writing, and by comparing verbal and written input to contact names and calendar entrees.

  For more info on how to disable Cortana in your enterprise, see [Cortana](#bkmk-cortana) in this article.

  To turn off the functionality:

  - Click the **Stop getting to know me** button, and then click **Turn off**.

      -or-

  - Enable the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Control Panel** &gt; **Regional and Language Options** &gt; **Handwriting personalization** &gt; **Turn off automatic learning**

      -or-

  - Create a REG_DWORD registry setting named **RestrictImplicitInkCollection** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\InputPersonalization** with a value of 1 (one).

      -or-

  - Create a REG_DWORD registry setting named **AcceptedPrivacyPolicy** in **HKEY_CURRENT_USER\\Software\\Microsoft\\Personalization\\Settings** with a value of 0 (zero).

      -and-

  -  Create a REG_DWORD registry setting named **HarvestContacts** in **HKEY_CURRENT_USER\\Software\\Microsoft\\InputPersonalization\\TrainedDataStore** with a value of **0 (zero)**.

### <a href="" id="bkmk-spp"></a>19. Software Protection Platform

  Enterprise customers can manage their Windows activation status with volume licensing using an on-premises Key Management Server. You can opt out of sending KMS client activation data to Microsoft automatically by doing one of the following:

  **For Windows 10:**

  - **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Software Protection Platform** &gt; **Turn off KMS Client Online AVS Validation**

  -or-

  - Apply the Licensing/DisallowKMSClientOnlineAVSValidation MDM policy from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) and **set the value to 1 (Enabled)**.

  -or-

  - Create a REG_DWORD registry setting named **NoGenTicket** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows NT\\CurrentVersion\\Software Protection Platform** with a **value of 1 (one)**.

**For Windows Server 2019 or later:**

  - **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Software Protection Platform** &gt; **Turn off KMS Client Online AVS Validation**

  -or-

  - Create a REG_DWORD registry setting named **NoGenTicket** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows NT\\CurrentVersion\\Software Protection Platform** with a value of 1 (one).

**For Windows Server 2016:**

  - Create a REG_DWORD registry setting named **NoAcquireGT** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows NT\\CurrentVersion\\Software Protection Platform** with a value of 1 (one).

  >[!NOTE]
  >Due to a known issue the **Turn off KMS Client Online AVS Validation** group policy does not work as intended on Windows Server 2016, the **NoAcquireGT** value needs to be set instead.
  >The Windows activation status will be valid for a rolling period of 180 days with weekly activation status checks to the KMS.

### <a href="" id="bkmk-storage-health"></a>20. Storage health

Enterprise customers can manage updates to the Disk Failure Prediction Model.

For Windows 10:
- **Disable** this Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **Storage Health** &gt; **Allow downloading updates to the Disk Failure Prediction Model**

  -or-

- Create a REG_DWORD registry setting named **AllowDiskHealthModelUpdates** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\StorageHealth** with a value of 0.

### <a href="" id="bkmk-syncsettings"></a>21. Sync your settings

You can control if your settings are synchronized:

- In the UI: **Settings** &gt; **Accounts** &gt; **Sync your settings**

  -or-

- **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Sync your settings** &gt; **Do not sync**. Leave the "Allow users to turn syncing on" checkbox **unchecked**. 

  -or-

- Create a REG_DWORD registry setting named **DisableSettingSync** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\SettingSync** with a value of 2 (two) and another named **DisableSettingSyncUserOverride** in **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\SettingSync** with a value of 1 (one).

  -or-

- Apply the Experience/AllowSyncMySettings MDM policy from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) and **set the value to 0 (not allowed)**.


To turn off Messaging cloud sync:

-   Note: There is no Group Policy corresponding to this registry key.

  -or-

-   Create a REG_DWORD registry setting named **CloudServiceSyncEnabled** in **HKEY_CURRENT_USER\\SOFTWARE\\Microsoft\\Messaging** and set to a **value of 0 (zero)**.

### <a href="" id="bkmk-teredo"></a>22. Teredo

You can disable Teredo by using Group Policy or by using the netsh.exe command. For more info on Teredo, see [Internet Protocol Version 6, Teredo, and Related Technologies](https://technet.microsoft.com/library/cc722030.aspx).

>[!NOTE]
>If you disable Teredo, some XBOX gaming features and Windows Update Delivery Optimization will not work.

- **Enable** the Group Policy: **Computer Configuration** > **Administrative Templates** > **Network** &gt; **TCPIP Settings** &gt; **IPv6 Transition Technologies** &gt; **Set Teredo State** and set it to **Disabled State**.

  -or-

- Create a new REG_SZ registry setting named **Teredo_State** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\TCPIP\\v6Transition** with a value of **Disabled**.


### <a href="" id="bkmk-wifisense"></a>23. Wi-Fi Sense

>[!IMPORTANT]
>Beginning with Windows 10, version 1803, Wi-Fi Sense is no longer available. The following section only applies to Windows 10, version 1709 and prior. Please see [Connecting to open Wi-Fi hotspots in Windows 10](https://privacy.microsoft.com/en-us/windows-10-open-wi-fi-hotspots) for more details.

Wi-Fi Sense automatically connects devices to known hotspots and to the wireless networks the person’s contacts have shared with them.

To turn off **Connect to suggested open hotspots** and **Connect to networks shared by my contacts**:

- Turn off the feature in the UI in Settings  > Network & Internet  > Wi-Fi 

  -or-

- **Disable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Network** &gt; **WLAN Service** &gt; **WLAN Settings** &gt; **Allow Windows to automatically connect to suggested open hotspots, to networks shared by contacts, and to hotspots offering paid services**.

  -or-

- Create a new REG_DWORD registry setting named **AutoConnectAllowedOEM** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\WcmSvc\\wifinetworkmanager\\config** with a **value of 0 (zero)**.


When turned off, the Wi-Fi Sense settings still appear on the Wi-Fi Settings screen, but they’re non-functional and they can’t be controlled by the employee.

### <a href="" id="bkmk-defender"></a>24. Windows Defender

You can disconnect from the Microsoft Antimalware Protection Service.

- **Enable** the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Defender Antivirus** &gt; **MAPS** &gt; **Join Microsoft MAPS** and then select **Disabled** from the drop down box named **Join Microsoft MAPS**

-OR-

- Use the registry to set the REG_DWORD value **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows Defender\\Spynet\\SpyNetReporting** to **0 (zero)**.

-OR-

- For Windows 10 only, apply the Defender/AllowClouldProtection MDM policy from the [Defender CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx).


You can stop sending file samples back to Microsoft.

- **Enable** the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Defender Antivirus** &gt; **MAPS** &gt; **Send file samples when further analysis is required** to **Never Send**.

  -or-

- For Windows 10 only, apply the Defender/SubmitSamplesConsent MDM policy from the [Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-defender) to **2 (two) for Never Send**.

  -or-

- Use the registry to set the REG_DWORD value **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows Defender\\Spynet\\SubmitSamplesConsent** to **2 (two) for Never Send**.


You can stop downloading **Definition Updates**:

- **Enable** the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Defender Antivirus** &gt; **Signature Updates** &gt; **Define the order of sources for downloading definition updates** and set it to **FileShares**.

  -and-

- **Disable** the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Defender Antivirus** &gt; **Signature Updates** &gt; **Define file shares for downloading definition updates** and set it to **Nothing**.

  -or-

- Create a new REG_SZ registry setting named **FallbackOrder** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Signature Updates** with a value of **FileShares**.

  -and-

- **Remove** the **DefinitionUpdateFileSharesSources** reg value if it exists under **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Signature Updates** 


You can turn off **Malicious Software Reporting Tool diagnostic data**:

- Set the REG_DWORD value **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\MRT\\DontReportInfectionInformation** to **1**.

**Note:** There is no Group Policy to turn off the Malicious Software Reporting Tool diagnostic data. 


You can turn off **Enhanced Notifications** as follows:

- Set in the UI: Settings -> Update & Security -> Windows Security -> Virus & Threat Protection ->  Virus & Threat Protection Manage Settings -> scroll to bottom for Notifications, click Change Notifications Settings -> Notifications -> click Manage Notifications ->  Turn off General Notifications

  -or-

- **Enable** the Group Policy **Turn off enhanced notifications** under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Defender Antivirus** &gt; **Reporting**.  

  -or-

- Create a new REG_SZ registry setting named **DisableEnhancedNotifications** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\Reporting** to a value of **1**.


### <a href="" id="bkmk-defender-smartscreen"></a>24.1 Windows Defender SmartScreen

To disable Windows Defender Smartscreen:

- In Group Policy, configure - **Computer Configuration > Administrative Templates > Windows Components > Windows Defender SmartScreen > Explorer > Configure Windows Defender SmartScreen** to be **Disabled**

   -and-

- **Computer Configuration > Administrative Templates > Windows Components > File Explorer > Configure Windows Defender SmartScreen** : **Disable**

   -and-

- **Computer Configuration > Administrative Templates > Windows Components > Windows Defender SmartScreen > Explorer > Configure app install control** : **Enable**, and select **Turn off app recommendations**

-OR-

- Create a REG_DWORD registry setting named **EnableSmartScreen** in **HKEY_LOCAL_MACHINE\\Sofware\\Policies\\Microsoft\\Windows\\System** with a **value of 0 (zero)**.

   -and-

- Create a REG_DWORD registry setting named **ConfigureAppInstallControlEnabled** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\SmartScreen** with a **value of 1**.

   -and-

- Create a SZ registry setting named **ConfigureAppInstallControl** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\SmartScreen** with a value of **Anywhere**.

-OR-

- Set the Browser/AllowSmartScreen MDM policy from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) to **0 (turned Off)**.


### <a href="" id="bkmk-spotlight"></a>25. Windows Spotlight

Windows Spotlight provides features such as different background images and text on the lock screen, suggested apps, Microsoft account notifications, and Windows tips. You can control it by using the user interface, MDM policy, or through Group Policy.

If you're running Windows 10, version 1607 or later, you need to: 

- **Enable** the following Group Policy **User Configuration** > **Administrative Templates** > **Windows Components** > **Cloud Content** > **Turn off all Windows spotlight features**

    > [!NOTE]
    > This must be done within 15 minutes after Windows 10 is installed. Alternatively, you can create an image with this setting.

   -or-

- For Windows 10 only, apply the Experience/AllowWindowsSpotlight MDM policy from the [Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience), with a value of 0 (zero).

   -or-

- Create a new REG_DWORD registry setting named **DisableWindowsSpotlightFeatures** in **HKEY_CURRENT_USER\\SOFTWARE\\Policies\\Microsoft\\Windows\\CloudContent** with a value of 1 (one).


-AND-


- Enable the following Group Policy **Computer Configuration** > **Administrative Templates** > **Control Panel** > **Personalization** > **Do not display the Lock Screen**

   -or-

- Create a new REG_DWORD registry setting named **NoLockScreen** in **HKEY_Local_Machine\\SOFTWARE\\Policies\\Microsoft\\Windows\\Personalization** with a **value of 1 (one)**


-AND-


- Configure the following in **Settings** UI:

  - **Personalization** > **Lock screen** > **Background** > **Windows spotlight**, select a different background, and turn off **Get fun facts, tips, tricks and more on your lock screen**

  - **Personalization** &gt; **Start** &gt; **Occasionally show suggestions in Start**

  - **System** &gt; **Notifications & actions** &gt; **Show me tips about Windows**

   -or-

- Apply the Group Policies:

  - **Enable** the **Computer Configuration** &gt; **Administrative Templates** &gt; **Control Panel** &gt; **Personalization** &gt; **Force a specific default lock screen image and logon image** Group Policy. 
     - Add **C:\\windows\\web\\screen\\lockscreen.jpg** as the location in the **Path to local lock screen image** box.

     - Check the **Turn off fun facts, tips, tricks, and more on lock screen** check box.

       > [!NOTE]
       > This will only take effect if the policy is applied before the first logon. 
       > If you cannot apply the **Force a specific default lock screen image** policy before the first logon to the device, 
       > you can **Enable** the **Do not display the lock screen** policy under **Computer Configuration** &gt; **Administrative Templates** &gt; **Control Panel** &gt; **Personalization** 

       > Alternatively, you can create a new REG_SZ registry setting named **LockScreenImage** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\Personalization** 
       > with a value of **C:\\windows\\web\\screen\\lockscreen.jpg** and create a new REG_DWORD registry setting named **LockScreenOverlaysDisabled** in 
       > **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\Personalization** with a value of **1 (one)**.

       > The Group Policy for the **LockScreenOverlaysDisabled** regkey is **Force a specific default lock screen and logon image** that is under **Control Panel** **Personalization**. 


-AND-


  - Set the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Cloud Content** &gt; **Do not show Windows tips** to **Enabled** 

    -or-

  - Create a new REG_DWORD registry setting named **DisableSoftLanding** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\CloudContent** with a **value of 1 (one)**


-AND-


  - Set the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Cloud Content** &gt; **Turn off Microsoft consumer experiences** to **Enabled**

    -or-

  - Create a new REG_DWORD registry setting named **DisableWindowsConsumerFeatures** in **HKEY_LOCAL_MACHINE\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\CloudContent** with a **value of 1 (one)**
   
 
This policy setting controls whether the lock screen appears for users.  The Do not display the lock screen Group Policy should be set to Enable to prevent the lock screen from being displayed. The Group Computer Configuration\Administrative templates\Control Panel\Personalization!Do not display the lock screen.

If you enable this policy setting, users that are not required to press CTRL + ALT + DEL before signing in will see their selected tile after locking their PC.

If you disable or do not configure this policy setting, users that are not required to press CTRL + ALT + DEL before signing in will see a lock screen after locking their PC. They must dismiss the lock screen using touch, the keyboard, or by dragging it with the mouse.


For more info, see [Windows Spotlight on the lock screen](/windows/configuration/windows-spotlight).

### <a href="" id="bkmk-windowsstore"></a>26. Microsoft Store

You can turn off the ability to launch apps from the Microsoft Store that were preinstalled or downloaded.
This will also turn off automatic app updates, and the Microsoft Store will be disabled.
In addition, new email accounts cannot be created by clicking **Settings** > **Accounts** > **Email & app accounts** > **Add an account**.
On Windows Server 2016, this will block Microsoft Store calls from Universal Windows Apps.

- **Disable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Store** &gt; **Disable all apps from Microsoft Store**.

  -or-

- Create a new REG_DWORD registry setting named **DisableStoreApps** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\WindowsStore** with a value of 1 (one).

-AND-

- **Enable** the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Store** &gt; **Turn off Automatic Download and Install of updates**.

  -or-

- Create a new REG_DWORD registry setting named **AutoDownload** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\WindowsStore** with a value of 2 (two).

### <a href="" id="bkmk-apps-for-websites"></a>26.1 Apps for websites

You can turn off apps for websites, preventing customers who visit websites that are registered with their associated app from directly launching the app.

- **Disable** the Group Policy: **Computer Configuration** > **Administrative Templates** > **System** > **Group Policy** > **Configure web-to-app linking with URI handlers**

  -or-

- Create a new REG_DWORD registry setting named **EnableAppUriHandlers** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\System** with a **value of 0 (zero)**.

### <a href="" id="bkmk-updates"></a>27. Windows Update Delivery Optimization

Windows Update Delivery Optimization lets you get Windows updates and Microsoft Store apps from sources in addition to Microsoft, which not only helps when you have a limited or unreliable Internet connection, but can also help you reduce the amount of bandwidth needed to keep all of your organization's PCs up-to-date. If you have Delivery Optimization turned on, PCs on your network may send and receive updates and apps to other PCs on your local network, if you choose, or to PCs on the Internet.

By default, PCs running Windows 10 Enterprise and Windows 10 Education will only use Delivery Optimization to get and receive updates for PCs and apps on your local network.

Use the UI, Group Policy, MDM policies, or Windows Provisioning to set up Delivery Optimization.

In Windows 10 version 1607 and above you can stop network traffic related to Windows Update Delivery Optimization by setting **Download Mode** to  **Bypass** (100), as described below.

### <a href="" id="bkmk-wudo-ui"></a>27.1 Settings &gt; Update & security

You can set up Delivery Optimization from the **Settings** UI.

- Go to **Settings** &gt; **Update & security** &gt; **Windows Update** &gt; **Advanced options** &gt; **Choose how updates are delivered**.

### <a href="" id="bkmk-wudo-gp"></a>27.2 Delivery Optimization Group Policies

You can find the Delivery Optimization Group Policy objects under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Delivery Optimization**.

| Policy                    | Description                                                                                         |
|---------------------------|-----------------------------------------------------------------------------------------------------|
| Download Mode             | Lets you choose where Delivery Optimization gets or sends updates and apps, including <ul><li><p><strong>None</strong>. Turns off Delivery Optimization.</p></li><li><p><strong>Group</strong>. Gets or sends updates and apps to PCs on the same local network domain.</p></li><li><p><strong>Internet</strong>. Gets or sends updates and apps to PCs on the Internet.</p></li><li><p><strong>LAN</strong>. Gets or sends updates and apps to PCs on the same NAT only.</p></li><li><p><strong>Simple</strong>. Simple download mode with no peering.</p></li><li><p><strong>Bypass</strong>. Use BITS instead of Windows Update Delivery Optimization. **Set to Bypass** to restrict traffic.</p></li></ul>|
| Group ID                  | Lets you provide a Group ID that limits which PCs can share apps and updates. <br /> **Note:** This ID must be a GUID.|
| Max Cache Age             | Lets you specify the maximum time (in seconds) that a file is held in the Delivery Optimization cache. <br /> The default value is 259200 seconds (3 days).|
| Max Cache Size            | Lets you specify the maximum cache size as a percentage of disk size. <br /> The default value is 20, which represents 20% of the disk.|
| Max Upload Bandwidth      | Lets you specify the maximum upload bandwidth (in KB/second) that a device uses across all concurrent upload activity. <br /> The default value is 0, which means unlimited possible bandwidth.|

### <a href="" id="bkmk-wudo-mdm"></a>27.3 Delivery Optimization

- **Enable** the **Download Mode** Group Policy under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Delivery Optimization** and set the **Download Mode** to **"Bypass"** to prevent traffic.

-or-

- Create a new REG_DWORD registry setting named **DODownloadMode** in **HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\DeliveryOptimization** to a value of **100 (one hundred)**. 

### <a href="" id="bkmk-wudo-mdm"></a>27.4 Delivery Optimization MDM policies

The following Delivery Optimization MDM policies are available in the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx).

| MDM Policy                | Description                                                                                         |
|---------------------------|-----------------------------------------------------------------------------------------------------|
| DeliveryOptimization/DODownloadMode            | Lets you choose where Delivery Optimization gets or sends updates and apps, including <ul><li><p><strong>0</strong>. Turns off Delivery Optimization.</p></li><li><p><strong>1</strong>. Gets or sends updates and apps to PCs on the same NAT only.</p></li><li><p><strong>2</strong>. Gets or sends updates and apps to PCs on the same local network domain.</p></li><li><p><strong>3</strong>. Gets or sends updates and apps to PCs on the Internet.</p></li><li><p><strong>99</strong>. Simple download mode with no peering.</p></li><li><p><strong>100</strong>. Use BITS instead of Windows Update Delivery Optimization.</p></li></ul>|
| DeliveryOptimization/DOGroupID                 | Lets you provide a Group ID that limits which PCs can share apps and updates. <br /> **Note** This ID must be a GUID.|
| DeliveryOptimization/DOMaxCacheAge             | Lets you specify the maximum time (in seconds) that a file is held in the Delivery Optimization cache. <br /> The default value is 259200 seconds (3 days).|
| DeliveryOptimization/DOMaxCacheSize            | Lets you specify the maximum cache size as a percentage of disk size. <br /> The default value is 20, which represents 20% of the disk.|
| DeliveryOptimization/DOMaxUploadBandwidth      | Lets you specify the maximum upload bandwidth (in KB/second) that a device uses across all concurrent upload activity. <br /> The default value is 0, which means unlimited possible bandwidth.|


For more info about Delivery Optimization in general, see [Windows Update Delivery Optimization: FAQ](https://go.microsoft.com/fwlink/p/?LinkId=730684).

### <a href="" id="bkmk-wu"></a>28. Windows Update

You can turn off Windows Update by setting the following registry entries:

- Add a REG_DWORD value named **DoNotConnectToWindowsUpdateInternetLocations** to **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WindowsUpdate** and set the value to 1.

  -and-

- Add a REG_DWORD value named **DisableWindowsUpdateAccess** to **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WindowsUpdate** and set the value to 1.

  -and-

- Add a REG_SZ value named **WUServer** to **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WindowsUpdate** and ensure it is blank with a space character **" "**. 

  -and-

- Add a REG_SZ value named **WUStatusServer** to **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WindowsUpdate** and ensure it is blank with a space character **" "**. 

  -and-

- Add a REG_SZ value named **UpdateServiceUrlAlternate** to **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WindowsUpdate** and ensure it is blank with a space character **" "**. 

  -and-

- Add a REG_DWORD value named **UseWUServer** to **HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\WindowsUpdate\\AU** and set the value to 1.

-OR-

- Set the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Update** &gt; **Do not connect to any Windows Update Internet locations** to **Enabled** 

  -and-

- Set the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **Internet Communication Management** &gt; **Internet Communication Settings** &gt; **Turn off access to all Windows Update features** to **Enabled**

  -and-

- Set the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Update** &gt; **Specify intranet Microsoft update service location** to **Enabled** and ensure all Option settings (Intranet Update Service, Intranet Statistics Server, Alternate Download Server) are set to **" "** 

  -and-

- Set the Group Policy **User Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Update** &gt; **Remove access to use all Windows Update features** to **Enabled** and then set **Computer Configurations** to **0 (zero)**.  


You can turn off automatic updates by doing one of the following. This is not recommended.

- Add a REG_DWORD value named **AutoDownload** to **HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\WindowsStore\\WindowsUpdate** and set the value to 5.

  -or-

- For Windows 10 only, apply the Update/AllowAutoUpdate MDM policy from the [Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update), where:

  - **0**. Notify the user before downloading the update.

  - **1**. Auto install the update and then notify the user to schedule a device restart.

  - **2** (default). Auto install and restart.

  - **3**. Auto install and restart at a specified time.

  - **4**. Auto install and restart without end-user control.

  - **5**. Turn off automatic updates.

For China releases of Windows 10 there is one additional Regkey to be set to prevent traffic:

- Add a REG_DWORD value named **HapDownloadEnabled** to **HKEY_LOCAL_MACHINE\\Software\\Microsoft\\LexiconUpdate\\loc_0804** and set the value to 0.




To learn more, see [Device update management](https://msdn.microsoft.com/library/windows/hardware/dn957432.aspx) and [Configure Automatic Updates by using Group Policy](https://technet.microsoft.com/library/cc720539.aspx).

