---
title: WindowsTeamSettings (Windows 10)
description: This section describes the WindowsTeamSettings settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.reviewer: 
manager: dansimp
---

# WindowsTeamSettings (reference)


Use WindowsTeamSettings settings to configure Surface Hub.


## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings |  |  | X |  |   |

## Connect

| Setting | Value | Description |
| --- | --- | --- |
| AutoLaunch  | True or false  | Open the Connect app automatically when someone projects.  |
| Channel | - 1, 3, 4, 5, 6, 7, 8, 9, 10, 11 (works with all Miracast senders in all regions)</br>- 36, 40, 44, 48 (works with all 5ghz band Miracast senders in all regions)</br>- 149, 153, 157, 161, 165 (works with all 5ghz band Miracast senders in all regions except Japan) | Wireless channel to use for Miracast operation. The supported channels are defined by the Wi-Fi Alliance Wi-Fi Direct specification. Integer specifying the channel. The default value is 255. Outside of regulatory concerns, if the channel is configured incorrectly the driver will either not boot, or will broadcast on the wrong channel (which senders won't be looking for). |
| Enabled | True or false  | Enables wireless projection to the device. |
| PINRequired | True or false | Requires presenters to enter a PIN to connect wirelessly to the device. |

## DeviceAccount

A device account is a Microsoft Exchange account that is connected with Skype for Business, which allows people to join scheduled meetings, make Skype for Business calls, and share content from the device. 

| Setting | Value | Description |
| --- | --- | --- |
| CalendarSyncEnabled  | True or false  | Specifies whether calendar sync and other Exchange Server services are enabled.  |
| DomainName  | Domain of the device account when you are using Active Directory  | To use a device account from Active Directory, you should specify both **DomainName** and **UserName** for the device account.  |
| Email  | Email address  | Email address of the device account.  |
| ExchangeServer  | Exchange Server  | Normally, the device will try to automatically discover the Exchange server. This field is only required if automatic discovery fails.  |
| Password  | Password  | Password for the device account.  |
| PasswordRotationEnabled  | 0 = enabled</br>1 = disabled  | Specifies whether automatic password rotation is enabled. If you enforce a password expiration policy on the device account, use this setting to allow the device to manage its own password by changing it frequently, without requiring you to manually update the account information when the password expires. You can reset the password at any time using Active Directory or Azure AD.  |
| SipAddress  | Session Initiation Protocol (SIP) address   | Normally, the device will try to automatically discover the SIP. This field is only required if automatic discovery fails.  |
| UserName  | User name  | Username of the device account when you are using Active Directory.  |
| UserPrincipalName  | User principal name (UPN)  | To use a device account from Azure Active Directory or a hybrid deployment, you should specify the UPN of the device account.  |
| ValidateAndCommit  | Any text | Validates the data provided and then commits the changes. This process occurs automatically after the other DeviceAccount settings are applied. The text you enter for the ValidateAndCommit setting doesn't matter. |

## Dot3

Use these settings to configure 802.1x wired authentication. For details, see [Enable 802.1x wired authentication](https://docs.microsoft.com/surface-hub/enable-8021x-wired-authentication).



## FriendlyName

Enter the name that users will see when they want to project wirelessly to the device.

## MaintenanceHours

Maintenance hours are the period of time during which automatic maintenance tasks are performed.

| Setting | Value | Description |
| --- | --- | --- |
| Duration  | Duration in minutes. For example, to set a 3-hour duration, set this value to 180.  | The amount of time the device will be in maintenance, when the device will continue to download or install updates.  |
| StartTime  | Start time in minutes from midnight. For example, to set a 2:00 am start time, set this value to 120  | Start time for when device is allowed to start downloading and installing updates.  |

## OMSAgent

Configures the Operations Management Suite workspace. 

| Setting | Value | Description |
| --- | --- | --- |
| WorkspaceID  | GUID  | GUID identifying the Operations Management Suite workspace ID to collect the data. Set this to an empty string to disable the MOM agent.  |
| WorkspaceKey  | Key  | Primary key for authenticating with the workspace.  |

## Properties

| Setting | Value | Description |
| --- | --- | --- |
| AllowAutoProxyAuth  | True or false  | Specifies if the Surface Hub can use the device account to authenticate into proxy servers requiring authentication.   |
| AllowSessionResume  | True or false  | Specifies if users are allowed to resume their session after session timeout.   |
| DefaultVolume  | Numeric value between 0 and 100  | Default speaker volume. Speaker volume will be set to this value at every session startup.  |
| DisableSigninSuggestions  | True or false  | Specifies if the Surface Hub will not show suggestions when users try to sign in to see their meetings and files.   |
| DoNotShowMyMeetingsAndFiles  | True or false  | Specifies if users can sign in and have full access to personal meetings and most recently used documents.  |
| ScreenTimeout  | Select minutes from dropdown menu  | The time (in minutes) of inactivity after which the Surface Hub will turn off its screen.  |
| SessionTimeout  | Select minutes from dropdown menu  | The time (in minutes) of inactivity after which the Surface Hub will time out the current session and return to the welcome screen.  |
| SleepTimeout  | Select minutes from dropdown menu  | The time (in minutes) of inactivity after which the Surface Hub will go into a sleep state.  |

## SkypeForBusiness

| Setting | Value | Description |
| --- | --- | --- |
| DomainName  | Domain name  | Specifies the domain name of the target server when the Skype for Business server is in a domain that's different from the device account.  |

## Welcome

| Setting | Value | Description |
| --- | --- | --- |
| AutoWakeScreen  | True or false  |  Specifies whether to automatically turn on the screen using motion sensors. |
| CurrentBackgroundPath  | Https URL to a PNG file  | Background image for the welcome screen.   |
| MeetingInfoOption  | 0 = organizer and time only</br>1 = organizer, time, and subject (subject is hidden for private meetings)  | Specifies whether meeting information is displayed on the welcome screen.   |

## Related topics

- [SurfaceHub configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/surfacehub-csp)
