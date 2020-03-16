---
title: "Manage Surface Hub 2S with Intune"
description: "Learn how to update and manage Surface Hub 2S using Intune."
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: greg-lindsay
ms.author: greglin
manager: laurawi
audience: Admin
ms.topic: article
ms.date: 02/28/2020
ms.localizationpriority: Medium
---

# Manage Surface Hub 2S with Intune

## Register Surface Hub 2S with Intune

Surface Hub 2S allows IT administrators to manage settings and policies using a mobile device management (MDM) provider. Surface Hub 2S has a built-in management component to communicate with the management server, so there is no need to install additional clients on the device.

### Manual registration

1. Sign in as a local administrator on Surface Hub 2S and open the **Settings** app. Select **Surface Hub** > **Device management** and then select **+** to add.
2. After authenticating, the device will automatically register with Intune.

   ![Register Surface Hub 2S with Intune](images/sh2-set-intune1.png)<br>

### Auto registration — Azure Active Directory Affiliated

During the initial setup process, when affiliating a Surface Hub with an Azure AD tenant that has Intune auto enrollment enabled, the device will automatically enroll with Intune. For more information, refer to [Intune enrollment methods for Windows devices](https://docs.microsoft.com/intune/enrollment/windows-enrollment-methods). Azure AD affiliation and Intune auto enrollment is required for the Surface Hub to be a "compliant device" in Intune. 

## Windows 10 Team Edition settings

Select Windows 10 Team for preset device restriction settings for Surface Hub and Surface Hub 2S.

 ![Set device restrictions for Surface Hub 2S.](images/sh2-set-intune3.png) <br>

These settings include user experience and app behavior, Azure Log Analytics registration, Maintenance windows configuration, Session settings, and Miracast settings. For a complete list of available Windows 10 Team settings, see [SurfaceHub CSP](https://docs.microsoft.com/windows/client-management/mdm/surfacehub-csp).

## Additional supported configuration service providers (CSPs)

For additional supported CSPs, see [Surface Hub CSPs in Windows 10](https://docs.microsoft.com/windows/client-management/mdm/configuration-service-provider-reference#surfacehubcspsupport).

## Quality of Service (QoS) settings

To ensure optimal video and audio quality on Surface Hub 2S, add the following QoS settings to the device. 

### Microsoft Teams QoS settings 

|**Name**|**Description**|**OMA-URI**|**Type**|**Value**|
|:------ |:------------- |:--------- |:------ |:------- |
|**Audio Ports**| Audio Port range | ./Device/Vendor/MSFT/NetworkQoSPolicy/TeamsAudio/DestinationPortMatchCondition | String  | 3478-3479 |
|**Audio DSCP**| Audio ports marking | ./Device/Vendor/MSFT/NetworkQoSPolicy/TeamsAudio/DSCPAction | Integer | 46 |
|**Video Port**| Video Port range | ./Device/Vendor/MSFT/NetworkQoSPolicy/TeamsVideo/DestinationPortMatchCondition | String  | 3480 |
|**Video DSCP**| Video ports marking | ./Device/Vendor/MSFT/NetworkQoSPolicy/TeamsVideo/DSCPAction | Integer | 34 |
|**P2P Audio Ports**| Audio Port range | ./Device/Vendor/MSFT/NetworkQoSPolicy/TeamsP2PAudio/DestinationPortMatchCondition | String  | 50000-50019 |
|**P2P Audio DSCP**| Audio ports marking | ./Device/Vendor/MSFT/NetworkQoSPolicy/TeamsP2PAudio/DSCPAction | Integer | 46 |
|**P2P Video Ports**| Video Port range | ./Device/Vendor/MSFT/NetworkQoSPolicy/TeamsP2PVideo/DestinationPortMatchCondition | String  | 50020-50039 |
|**P2P Video DSCP**| Video ports marking | ./Device/Vendor/MSFT/NetworkQoSPolicy/TeamsP2PVideo/DSCPAction | Integer | 34 |


### Skype for Business QoS settings

| Name               | Description         | OMA-URI                                                                  | Type    | Value                          |
| ------------------ | ------------------- | ------------------------------------------------------------------------ | ------- | ------------------------------ |
| Audio Ports        | Audio Port range    | ./Device/Vendor/MSFT/NetworkQoSPolicy/SfBAudio/SourcePortMatchCondition  | String  | 50000-50019                    |
| Audio DSCP         | Audio ports marking | ./Device/Vendor/MSFT/NetworkQoSPolicy/SfBAudio/DSCPAction                | Integer | 46                             |
| Audio Media Source | Skype App name      | ./Device/Vendor/MSFT/NetworkQoSPolicy/SfBAudio/AppPathNameMatchCondition | String  | Microsoft.PPISkype.Windows.exe |
| Video Ports        | Video Port range    | ./Device/Vendor/MSFT/NetworkQoSPolicy/SfBVideo/SourcePortMatchCondition  | String  | 50020-50039                    |
| Video DSCP         | Video ports marking | ./Device/Vendor/MSFT/NetworkQoSPolicy/SfBVideo/DSCPAction                | Integer | 34                             |
| Video Media Source | Skype App name      | ./Device/Vendor/MSFT/NetworkQoSPolicy/SfBVideo/AppPathNameMatchCondition | String  | Microsoft.PPISkype.Windows.exe |

> [!NOTE]
> Both tables show default port ranges. Administrators may change the port ranges in the Skype for Business and Teams control panel.

## Microsoft Teams Mode settings

You can set the Microsoft Teams app mode using Intune. Surface Hub 2S comes installed with Microsoft Teams in mode 0, which supports both Microsoft Teams and Skype for Business. You can adjust the modes as shown below.

### Modes:

- Mode 0 — Skype for Business with Microsoft Teams functionality for scheduled meetings.
- Mode 1 — Microsoft Teams with Skype for Business functionality for scheduled meetings.
- Mode 2 — Microsoft Teams only.

To set modes, add the following settings to a custom Device Configuration Profile.

|**Name**|**Description**|**OMA-URI**|**Type**|**Value**|
|:--- |:--- |:--- |:--- |:--- |
|**Teams App ID**|App name|./Vendor/MSFT/SurfaceHub/Properties/VtcAppPackageId|String| Microsoft.MicrosoftTeamsforSurfaceHub_8wekyb3d8bbwe!Teams|
|**Teams App Mode**|Teams mode|./Vendor/MSFT/SurfaceHub/Properties/SurfaceHubMeetingMode|Integer| 0 or 1 or 2|
