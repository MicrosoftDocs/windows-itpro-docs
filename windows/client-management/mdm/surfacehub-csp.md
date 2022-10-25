---
title: SurfaceHub CSP
description: The SurfaceHub configuration service provider (CSP) is used to configure Microsoft Surface Hub settings. This CSP was added in Windows 10, version 1511.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 07/28/2017
---

# SurfaceHub CSP

The SurfaceHub configuration service provider (CSP) is used to configure Microsoft Surface Hub settings. This CSP was added in Windows 10, version 1511, and later.

The following example shows the SurfaceHub CSP management objects in tree format.

```
./Vendor/MSFT
SurfaceHub
----DeviceAccount
--------DomainName
--------UserName
--------UserPrincipalName
--------Password
--------ValidateAndCommit
--------ExchangeServer
--------SipAddress
--------Email
--------CalendarSyncEnabled
--------ErrorContext
--------PasswordRotationEnabled
----MaintenanceHoursSimple
--------Hours
------------StartTime
------------Duration
----InBoxApps
--------SkypeForBusiness
------------DomainName
--------Welcome
------------AutoWakeScreen
------------CurrentBackgroundPath
------------MeetingInfoOption
--------Whiteboard
------------SharingDisabled
------------SigninDisabled
------------TelemeteryDisabled
--------WirelessProjection
------------PINRequired
------------Enabled
------------Channel
--------Connect
------------AutoLaunch
----Properties
--------FriendlyName
--------DefaultVolume
--------DefaultAutomaticFraming
--------ScreenTimeout
--------SessionTimeout
--------SleepTimeout
--------AllowSessionResume
--------AllowAutoProxyAuth
--------ProxyServers
--------DisableSigninSuggestions
--------DoNotShowMyMeetingsAndFiles
----Management
--------GroupName
--------GroupSid
----MOMAgent
--------WorkspaceID
--------WorkspaceKey
```

<a href="" id="--vendor-msft-surfacehub"></a>**./Vendor/MSFT/SurfaceHub**
The root node for the Surface Hub configuration service provider.

<a href="" id="deviceaccount"></a>**DeviceAccount**
Node for setting device account information. A device account is a Microsoft Exchange account that is connected with Skype for Business, which allows people to join scheduled meetings, make Skype for Business calls, and share content from the device. See the Surface Hub administrator guide for more information about setting up a device account.

To use a device account from Azure Active Directory

1. Set the UserPrincipalName (for Azure AD).
2. Set a valid Password.
3. Execute ValidateAndCommit to validate the specified username and password combination against Azure AD.
4. Get the ErrorContext in case something goes wrong during validation.

> [!NOTE]
> If the device cannot auto-discover the Exchange server and Session Initiation Protocol (SIP) address from this information, you should specify the ExchangeServer and SipAddress.


Here&#39;s a SyncML example.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Replace>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/SurfaceHub/DeviceAccount/UserPrincipalName</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>user@contoso.com</Data>
            </Item>
        </Replace>
        <Replace>
            <CmdID>2</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/SurfaceHub/DeviceAccount/Password</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>password</Data>
            </Item>
        </Replace>
        <Exec>
            <CmdID>3</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/SurfaceHub/DeviceAccount/ValidateAndCommit</LocURI>
                </Target>
            </Item>
        </Exec>
        <Get>
            <CmdID>4</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/SurfaceHub/DeviceAccount/ErrorContext</LocURI>
                </Target>
            </Item>
        </Get>
        <Final/>
    </SyncBody>
</SyncML>
```

To use a device account from Active Directory:

1. Set the DomainName.
2. Set the UserName.
3. Set a valid Password.
4. Execute the ValidateAndCommit node.

<a href="" id="deviceaccount-domainname"></a>**DeviceAccount/DomainName**

Domain of the device account when you're using Active Directory. To use a device account from Active Directory, you should specify both DomainName and UserName for the device account.

- The data type is string.
- Supported operation is Get and Replace.

<a href="" id="deviceaccount-username"></a>**DeviceAccount/UserName**

Username of the device account when you're using Active Directory. To use a device account from Active Directory, you should specify both DomainName and UserName for the device account.

- The data type is string.
- Supported operation is Get and Replace.

<a href="" id="deviceaccount-userprincipalname"></a>**DeviceAccount/UserPrincipalName**

User principal name (UPN) of the device account. To use a device account from Azure Active Directory or a hybrid deployment, you should specify the UPN of the device account.

- The data type is string.
- Supported operation is Get and Replace.

<a href="" id="deviceaccount-sipaddress"></a>**DeviceAccount/SipAddress**

Session Initiation Protocol (SIP) address of the device account. Normally, the device will try to auto-discover the SIP. This field is only required if auto-discovery fails.

- The data type is string.
- Supported operation is Get and Replace.

<a href="" id="deviceaccount-password"></a>**DeviceAccount/Password**

Password for the device account.

- The data type is string.
- Supported operation is Get and Replace. The operation Get is allowed, but it will always return a blank.

<a href="" id="deviceaccount-validateandcommit"></a>**DeviceAccount/ValidateAndCommit**

This method validates the data provided and then commits the changes.

- The data type is string.
- Supported operation is Execute.

<a href="" id="deviceaccount-email"></a>**DeviceAccount/Email**

Email address of the device account. The data type is string.

<a href="" id="deviceaccount-passwordrotationenabled"></a>**DeviceAccount/
PasswordRotationEnabled**

Specifies whether automatic password rotation is enabled. If you enforce a password expiration policy on the device account, use this setting to allow the device to manage its own password by changing it frequently, without requiring you to manually update the account information when the password expires. You can reset the password at any time using Active Directory (or Azure AD).

Valid values:

- 0 - password rotation enabled
- 1 - disabled

It performs the following:
- The data type is integer.
- Supported operation is Get and Replace.

<a href="" id="deviceaccount-exchangeserver"></a>**DeviceAccount/ExchangeServer**

Exchange server of the device account. Normally, the device will try to auto-discover the Exchange server. This field is only required if auto-discovery fails.

- The data type is string.
- Supported operation is Get and Replace.

<a href="" id="deviceaccount-exchangemodernauthenabled"></a>**DeviceAccount/ExchangeModernAuthEnabled**

Added in <a href="https://support.microsoft.com/help/4598291" data-raw-source="[KB4598291](https://support.microsoft.com/help/4598291)">KB4598291</a> for Windows 10, version 20H2. Specifies, whether Device Account calendar sync will attempt to use token-based Modern Authentication to connect to the Exchange Server. Default value is True.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="deviceaccount-calendarsyncenabled"></a>**DeviceAccount/CalendarSyncEnabled**

Specifies, whether calendar sync and other Exchange server services is enabled.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="deviceaccount-errorcontext"></a>**DeviceAccount/ErrorContext**

If there's an error calling ValidateAndCommit, there's another context for that error in this node. Here are the possible error values:

| **ErrorContext value** | **Stage where error occurred** | **Description and suggestions** |
| --- | --- | --- |
| 1 | Unknown | |
| 2 | Populating account | Unable to retrieve account details using the username and password you provided.<br/><br/> For Azure AD accounts, ensure that UserPrincipalName and Password are valid.<br/> For AD accounts, ensure that DomainName, UserName, and Password are valid.<br/> Ensure that the specified account has an Exchange server mailbox. |
| 3 | Populating Exchange server address | Unable to auto-discover your Exchange server address. Try to manually specify the Exchange server address using the ExchangeServer field. |
| 4 | Validating Exchange server address | Unable to validate the Exchange server address. Ensure the ExchangeServer field is valid. |
| 5 | Saving account information | Unable to save account details to the system. |
| 6 | Validating EAS policies | The device account uses an unsupported EAS policy. Ensure the EAS policy is configured correctly according to the admin guide. |

It performs the following:
- The data type is integer.
- Supported operation is Get.

<a href="" id="maintenancehourssimple-hours"></a>**MaintenanceHoursSimple/Hours**
Node for maintenance schedule.

<a href="" id="maintenancehourssimple-hours-starttime"></a>**MaintenanceHoursSimple/Hours/StartTime**

Specifies the start time for maintenance hours in minutes from midnight. For example, to set a 2:00 am start time, set this value to 120.

- The data type is integer.
- Supported operation is Get and Replace.

<a href="" id="maintenancehourssimple-hours-duration"></a>**MaintenanceHoursSimple/Hours/Duration**

Specifies the duration of maintenance window in minutes. For example, to set a 3-hour duration, set this value to 180.

- The data type is integer.
- Supported operation is Get and Replace.

<a href="" id="inboxapps"></a>**InBoxApps**

Node for the in-box app settings.

<a href="" id="inboxapps-skypeforbusiness"></a>**InBoxApps/SkypeForBusiness**

Added in Windows 10, version 1703. Node for the Skype for Business settings.

<a href="" id="inboxapps-skypeforbusiness-domainname"></a>**InBoxApps/SkypeForBusiness/DomainName**

Added in Windows 10, version 1703. Specifies the domain of the Skype for Business account when you're using Active Directory. For more information, see <a href="/SkypeForBusiness/set-up-skype-for-business-online" data-raw-source="[Set up Skype for Business Online](/SkypeForBusiness/set-up-skype-for-business-online)">Set up Skype for Business Online</a>.

- The data type is string.
- Supported operation is Get and Replace.

<a href="" id="inboxapps-welcome"></a>**InBoxApps/Welcome**
Node for the welcome screen.

<a href="" id="inboxapps-welcome-autowakescreen"></a>**InBoxApps/Welcome/AutoWakeScreen**

Automatically turn on the screen using motion sensors.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="inboxapps-welcome-currentbackgroundpath"></a>**InBoxApps/Welcome/CurrentBackgroundPath**

Download location for image, to be used as the background during user sessions and on the welcome screen. To set this location, specify an https URL to a 32-bit PNG file (only PNGs are supported for security reasons). If any certificate authorities need to be trusted in order to access the URL, ensure they're valid and installed on the Hub. Otherwise, it may not be able to load the image.

- The data type is string.
- Supported operation is Get and Replace.

<a href="" id="inboxapps-welcome-meetinginfooption"></a>**InBoxApps/Welcome/MeetingInfoOption**

Meeting information displayed on the welcome screen.

Valid values:

- 0 - Organizer and time only
- 1 - Organizer, time, and subject. Subject is hidden in private meetings.

It performs the following:
- The data type is integer.
- Supported operation is Get and Replace.

<a href="" id="inboxapps-whiteboard"></a>**InBoxApps/Whiteboard**

Node for the Whiteboard app settings.

<a href="" id="inboxapps-whiteboard-sharingdisabled"></a>**InBoxApps/Whiteboard/SharingDisabled**

Invitations to collaborate from the Whiteboard app aren't allowed.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="inboxapps-whiteboard-signindisabled"></a>**InBoxApps/Whiteboard/SigninDisabled**

Sign-ins from the Whiteboard app aren't allowed.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="inboxapps-whiteboard-telemetrydisabled"></a>**InBoxApps/Whiteboard/TelemeteryDisabled**

Telemetry collection from the Whiteboard app isn't allowed.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="inboxapps-wirelessprojection"></a>**InBoxApps/WirelessProjection**

Node for the wireless projector app settings.

<a href="" id="inboxapps-wirelessprojection-pinrequired"></a>**InBoxApps/WirelessProjection/PINRequired**

Users must enter a PIN to wireless project to the device.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="inboxapps-wirelessprojection-enabled"></a>**InBoxApps/WirelessProjection/Enabled**

Enables wireless projection to the device.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="inboxapps-wirelessprojection-channel"></a>**InBoxApps/WirelessProjection/Channel**

Wireless channel to use for Miracast operation. The supported channels are defined by the Wi-Fi Alliance Wi-Fi Direct specification.

|**Compatibility**|**Values**|
|--- |--- |
|Works with all Miracast senders in all regions|1, 3, 4, 5, 6, 7, 8, 9, 10, 11|
|Works with all 5ghz band Miracast senders in all regions|36, 40, 44, 48|
|Works with all 5ghz band Miracast senders in all regions except Japan|149, 153, 157, 161, 165|

The default value is 255. Outside of regulatory concerns, if the channel is configured incorrectly, the driver will either not boot or will broadcast on the wrong channel (which senders won&#39;t be looking for).

- The data type is integer.
- Supported operation is Get and Replace.

<a href="" id="inboxapps-connect"></a>**InBoxApps/Connect**

Added in Windows 10, version 1703. Node for the Connect app.

<a href="" id="inboxapps-welcome-autowakescreen"></a>**InBoxApps/Connect/AutoLaunch**

Added in Windows 10, version 1703. Specifies, whether to automatically launch the Connect app whenever a projection is initiated.

If this setting is true, the Connect app will be automatically launched. If false, the user will need to launch the Connect app manually from the Hub’s settings.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="properties"></a>**Properties**

Node for the device properties.

<a href="" id="properties-friendlyname"></a>**Properties/FriendlyName**

Friendly name of the device. Specifies the name that users see when they want wireless project to the device.

- The data type is string.
- Supported operation is Get and Replace.

<a href="" id="properties-defaultvolume"></a>**Properties/DefaultVolume**

Added in Windows 10, version 1703. Specifies the default volume value for a new session. Permitted values are 0-100. The default is 45.

- The data type is integer.
- Supported operation is Get and Replace.

<a href="" id="properties-defaultautomaticframing"></a>**Properties/DefaultAutomaticFraming**

Added in <a href="https://support.microsoft.com/help/5010415" data-raw-source="[KB5010415](https://support.microsoft.com/help/5010415)">KB5010415</a> for Windows 10, version 20H2. Specifies whether the Surface Hub 2 Smart Camera feature to automatically zoom and keep users centered in the video is enabled. Default value is True.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="properties-screentimeout"></a>**Properties/ScreenTimeout**

Added in Windows 10, version 1703. Specifies the number of minutes until the Hub screen turns off.

The following table shows the permitted values.

|**Value**|**Description**|
|--- |--- |
|0|Never time out|
|1|1 minute|
|2|2 minutes|
|3|3 minutes|
|5|5 minutes (default)|
|10|10 minutes|
|15|15 minutes|
|30|30 minutes|
|60|1 hour|
|120|2 hours|
|240|4 hours|

It performs the following:
- The data type is integer.
- Supported operation is Get and Replace.

<a href="" id="properties-sessiontimeout"></a>**Properties/SessionTimeout**

Added in Windows 10, version 1703. Specifies the number of minutes until the session times out.

The following table shows the permitted values.

|**Value**|**Description**|
|--- |--- |
|0|Never time out|
|1|1 minute (default)|
|2|2 minutes|
|3|3 minutes|
|5|5 minutes|
|10|10 minutes|
|15|15 minutes|
|30|30 minutes|
|60|1 hour|
|120|2 hours|
|240|4 hours|

It performs the following:
- The data type is integer.
- Supported operation is Get and Replace.

<a href="" id="properties-sleeptimeout"></a>**Properties/SleepTimeout**

Added in Windows 10, version 1703. Specifies the number of minutes until the Hub enters sleep mode.

The following table shows the permitted values.

|**Value**|**Description**|
|--- |--- |
|0|Never time out|
|1|1 minute|
|2|2 minutes|
|3|3 minutes|
|5|5 minutes (default)|
|10|10 minutes|
|15|15 minutes|
|30|30 minutes|
|60|1 hour|
|120|2 hours|
|240|4 hours|

It performs the following:
- The data type is integer.
- Supported operation is Get and Replace.

<a href="" id="properties-sleepmode"></a>**Properties/SleepMode**

Added in Windows 10, version 20H2. Specifies the type of sleep mode for the Surface Hub.

Valid values:

- 0 - Connected Standby (default)
- 1 - Hibernate

It performs the following:
- The data type is integer.
- Supported operation is Get and Replace.

<a href="" id="properties-allowsessionresume"></a>**Properties/AllowSessionResume**

Added in Windows 10, version 1703. Specifies whether to allow the ability to resume a session when the session times out.

If this setting is true, the &quot;Resume Session&quot; feature will be available on the welcome screen when the screen is idle. If false, once the screen idles, the session will be automatically cleaned up as if the “End Session&quot; feature was initiated.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="properties-allowautoproxyauth"></a>**Properties/AllowAutoProxyAuth**

Added in Windows 10, version 1703. Specifies whether to use the device account for proxy authentication.

If this setting is true, the device account will be used for proxy authentication. If false, a separate account will be used.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="properties-proxyservers"></a>**Properties/ProxyServers**

Added in <a href="https://support.microsoft.com/help/4499162" data-raw-source="[KB4499162](https://support.microsoft.com/help/4499162)">KB4499162</a> for Windows 10, version 1703. Specifies hostnames of proxy servers to automatically provide device account credentials to before any user interaction (if AllowAutoProxyAuth is enabled). This is a semi-colon separated list of server names (FQDN), without any extra prefixes (for example, https://).

- The data type is string.
- Supported operation is Get and Replace.

<a href="" id="properties-disablesigninsuggestions"></a>**Properties/DisableSigninSuggestions**

Added in Windows 10, version 1703. Specifies whether to disable auto-populating of the sign-in dialog with invitees from scheduled meetings.

If this setting is true, the sign-in dialog won't be populated. If false, the dialog will auto-populate.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="properties-donotshowmymeetingsandfiles"></a>**Properties/DoNotShowMyMeetingsAndFiles**

Added in Windows 10, version 1703. Specifies whether to disable the &quot;My meetings and files&quot; feature in the Start menu, which shows the signed-in user&#39;s meetings and files from Office 365.

If this setting is true, the “My meetings and files” feature won't be shown. When false, the “My meetings and files” feature will be shown.

- The data type is boolean.
- Supported operation is Get and Replace.

<a href="" id="momagent"></a>**MOMAgent**

Node for the Microsoft Operations Management Suite.

<a href="" id="momagent-workspaceid"></a>**MOMAgent/WorkspaceID**

GUID identifying the Microsoft Operations Management Suite workspace ID to collect the data. Set this GUID to an empty string to disable the MOM agent.

- The data type is string.
- Supported operation is Get and Replace.

<a href="" id="momagent-workspacekey"></a>**MOMAgent/WorkspaceKey**

Primary key for authenticating with the workspace.

- The data type is string.
- Supported operation is Get and Replace. The Get operation is allowed, but it will always return an empty string.

## Related topics

[Configuration service provider reference](index.yml)
