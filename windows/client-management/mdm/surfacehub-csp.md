---
title: SurfaceHub CSP
description: Learn more about the SurfaceHub CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- SurfaceHub-Begin -->
# SurfaceHub CSP

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- SurfaceHub-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The SurfaceHub configuration service provider (CSP) is used to configure Microsoft Surface Hub settings.
<!-- SurfaceHub-Editable-End -->

<!-- SurfaceHub-Tree-Begin -->
The following list shows the SurfaceHub configuration service provider nodes:

- ./Vendor/MSFT/SurfaceHub
  - [DeviceAccount](#deviceaccount)
    - [CalendarSyncEnabled](#deviceaccountcalendarsyncenabled)
    - [DomainName](#deviceaccountdomainname)
    - [Email](#deviceaccountemail)
    - [ErrorContext](#deviceaccounterrorcontext)
    - [ExchangeModernAuthEnabled](#deviceaccountexchangemodernauthenabled)
    - [ExchangeServer](#deviceaccountexchangeserver)
    - [Password](#deviceaccountpassword)
    - [PasswordRotationEnabled](#deviceaccountpasswordrotationenabled)
    - [SipAddress](#deviceaccountsipaddress)
    - [UserName](#deviceaccountusername)
    - [UserPrincipalName](#deviceaccountuserprincipalname)
    - [ValidateAndCommit](#deviceaccountvalidateandcommit)
  - [Dot3](#dot3)
    - [EapUserData](#dot3eapuserdata)
    - [LanProfile](#dot3lanprofile)
  - [InBoxApps](#inboxapps)
    - [Connect](#inboxappsconnect)
      - [AutoLaunch](#inboxappsconnectautolaunch)
    - [SkypeForBusiness](#inboxappsskypeforbusiness)
      - [DomainName](#inboxappsskypeforbusinessdomainname)
    - [Teams](#inboxappsteams)
      - [Configurations](#inboxappsteamsconfigurations)
    - [Welcome](#inboxappswelcome)
      - [AutoWakeScreen](#inboxappswelcomeautowakescreen)
      - [CurrentBackgroundPath](#inboxappswelcomecurrentbackgroundpath)
      - [MeetingInfoOption](#inboxappswelcomemeetinginfooption)
    - [Whiteboard](#inboxappswhiteboard)
      - [SharingDisabled](#inboxappswhiteboardsharingdisabled)
      - [SignInDisabled](#inboxappswhiteboardsignindisabled)
      - [TelemetryDisabled](#inboxappswhiteboardtelemetrydisabled)
    - [WirelessProjection](#inboxappswirelessprojection)
      - [Channel](#inboxappswirelessprojectionchannel)
      - [Enabled](#inboxappswirelessprojectionenabled)
      - [PINRequired](#inboxappswirelessprojectionpinrequired)
  - [MaintenanceHoursSimple](#maintenancehourssimple)
    - [Hours](#maintenancehourssimplehours)
      - [Duration](#maintenancehourssimplehoursduration)
      - [StartTime](#maintenancehourssimplehoursstarttime)
  - [Management](#management)
    - [GroupName](#managementgroupname)
    - [GroupSid](#managementgroupsid)
  - [MOMAgent](#momagent)
    - [WorkspaceID](#momagentworkspaceid)
    - [WorkspaceKey](#momagentworkspacekey)
  - [MOMAgentGovtCloud](#momagentgovtcloud)
    - [AzureCloudIndexGovtCloud](#momagentgovtcloudazurecloudindexgovtcloud)
    - [WorkspaceIDGovtCloud](#momagentgovtcloudworkspaceidgovtcloud)
    - [WorkspaceKeyGovtCloud](#momagentgovtcloudworkspacekeygovtcloud)
  - [Properties](#properties)
    - [AllowAutoProxyAuth](#propertiesallowautoproxyauth)
    - [AllowSessionResume](#propertiesallowsessionresume)
    - [DefaultAutomaticFraming](#propertiesdefaultautomaticframing)
    - [DefaultVolume](#propertiesdefaultvolume)
    - [DisableSigninSuggestions](#propertiesdisablesigninsuggestions)
    - [DoNotShowMyMeetingsAndFiles](#propertiesdonotshowmymeetingsandfiles)
    - [FriendlyName](#propertiesfriendlyname)
    - [ProxyServers](#propertiesproxyservers)
    - [ScreenTimeout](#propertiesscreentimeout)
    - [SessionTimeout](#propertiessessiontimeout)
    - [SleepMode](#propertiessleepmode)
    - [SleepTimeout](#propertiessleeptimeout)
    - [SurfaceHubMeetingMode](#propertiessurfacehubmeetingmode)
    - [VtcAppPackageId](#propertiesvtcapppackageid)
<!-- SurfaceHub-Tree-End -->

<!-- Device-DeviceAccount-Begin -->
## DeviceAccount

<!-- Device-DeviceAccount-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DeviceAccount-Applicability-End -->

<!-- Device-DeviceAccount-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/DeviceAccount
```
<!-- Device-DeviceAccount-OmaUri-End -->

<!-- Device-DeviceAccount-Description-Begin -->
<!-- Description-Source-DDF -->
Node for setting device account information. A device account is a Microsoft Exchange account that's connected with Skype for Business, which allows people to join scheduled meetings, make Skype for Business calls, and share content from the device. See the [Surface Hub administrator guide](/surface-hub/) for more information about setting up a device account. To use a device account from Microsoft Entra ID: 1. Set the UserPrincipalName (for Microsoft Entra ID). 2. Set a valid Password. 3. Execute ValidateAndCommit to validate the specified username and password combination against Microsoft Entra ID. 4. Get the ErrorContext in case something goes wrong during validation.
<!-- Device-DeviceAccount-Description-End -->

<!-- Device-DeviceAccount-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> If the device cannot auto-discover the Exchange server and Session Initiation Protocol (SIP) address from this information, you should specify the ExchangeServer and SipAddress.
<!-- Device-DeviceAccount-Editable-End -->

<!-- Device-DeviceAccount-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Case Sensitive | True |
<!-- Device-DeviceAccount-DFProperties-End -->

<!-- Device-DeviceAccount-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

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
<!-- Device-DeviceAccount-Examples-End -->

<!-- Device-DeviceAccount-End -->

<!-- Device-DeviceAccount-CalendarSyncEnabled-Begin -->
### DeviceAccount/CalendarSyncEnabled

<!-- Device-DeviceAccount-CalendarSyncEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DeviceAccount-CalendarSyncEnabled-Applicability-End -->

<!-- Device-DeviceAccount-CalendarSyncEnabled-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/DeviceAccount/CalendarSyncEnabled
```
<!-- Device-DeviceAccount-CalendarSyncEnabled-OmaUri-End -->

<!-- Device-DeviceAccount-CalendarSyncEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether calendar sync and other Exchange server services is enabled.
<!-- Device-DeviceAccount-CalendarSyncEnabled-Description-End -->

<!-- Device-DeviceAccount-CalendarSyncEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceAccount-CalendarSyncEnabled-Editable-End -->

<!-- Device-DeviceAccount-CalendarSyncEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- Device-DeviceAccount-CalendarSyncEnabled-DFProperties-End -->

<!-- Device-DeviceAccount-CalendarSyncEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true | Enabled. |
<!-- Device-DeviceAccount-CalendarSyncEnabled-AllowedValues-End -->

<!-- Device-DeviceAccount-CalendarSyncEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceAccount-CalendarSyncEnabled-Examples-End -->

<!-- Device-DeviceAccount-CalendarSyncEnabled-End -->

<!-- Device-DeviceAccount-DomainName-Begin -->
### DeviceAccount/DomainName

<!-- Device-DeviceAccount-DomainName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DeviceAccount-DomainName-Applicability-End -->

<!-- Device-DeviceAccount-DomainName-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/DeviceAccount/DomainName
```
<!-- Device-DeviceAccount-DomainName-OmaUri-End -->

<!-- Device-DeviceAccount-DomainName-Description-Begin -->
<!-- Description-Source-DDF -->
Domain of the device account when you are using Active Directory. To use a device account from Active Directory, you should specify both DomainName and UserName for the device account.
<!-- Device-DeviceAccount-DomainName-Description-End -->

<!-- Device-DeviceAccount-DomainName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceAccount-DomainName-Editable-End -->

<!-- Device-DeviceAccount-DomainName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-DeviceAccount-DomainName-DFProperties-End -->

<!-- Device-DeviceAccount-DomainName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceAccount-DomainName-Examples-End -->

<!-- Device-DeviceAccount-DomainName-End -->

<!-- Device-DeviceAccount-Email-Begin -->
### DeviceAccount/Email

<!-- Device-DeviceAccount-Email-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DeviceAccount-Email-Applicability-End -->

<!-- Device-DeviceAccount-Email-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/DeviceAccount/Email
```
<!-- Device-DeviceAccount-Email-OmaUri-End -->

<!-- Device-DeviceAccount-Email-Description-Begin -->
<!-- Description-Source-DDF -->
Email address of the device account.
<!-- Device-DeviceAccount-Email-Description-End -->

<!-- Device-DeviceAccount-Email-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceAccount-Email-Editable-End -->

<!-- Device-DeviceAccount-Email-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-DeviceAccount-Email-DFProperties-End -->

<!-- Device-DeviceAccount-Email-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceAccount-Email-Examples-End -->

<!-- Device-DeviceAccount-Email-End -->

<!-- Device-DeviceAccount-ErrorContext-Begin -->
### DeviceAccount/ErrorContext

<!-- Device-DeviceAccount-ErrorContext-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DeviceAccount-ErrorContext-Applicability-End -->

<!-- Device-DeviceAccount-ErrorContext-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/DeviceAccount/ErrorContext
```
<!-- Device-DeviceAccount-ErrorContext-OmaUri-End -->

<!-- Device-DeviceAccount-ErrorContext-Description-Begin -->
<!-- Description-Source-DDF -->
If there is an error calling ValidateAndCommit, there will be additional context for that error in this node.
<!-- Device-DeviceAccount-ErrorContext-Description-End -->

<!-- Device-DeviceAccount-ErrorContext-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Possible error values:

| **ErrorContext value** | **Stage where error occurred** | **Description and suggestions** |
| --- | --- | --- |
| 1 | Unknown | |
| 2 | Populating account | Unable to retrieve account details using the username and password you provided.<br/><br/> For Microsoft Entra accounts, ensure that UserPrincipalName and Password are valid.<br/> For AD accounts, ensure that DomainName, UserName, and Password are valid.<br/> Ensure that the specified account has an Exchange server mailbox. |
| 3 | Populating Exchange server address | Unable to auto-discover your Exchange server address. Try to manually specify the Exchange server address using the ExchangeServer field. |
| 4 | Validating Exchange server address | Unable to validate the Exchange server address. Ensure the ExchangeServer field is valid. |
| 5 | Saving account information | Unable to save account details to the system. |
| 6 | Validating EAS policies | The device account uses an unsupported EAS policy. Ensure the EAS policy is configured correctly according to the admin guide. |
<!-- Device-DeviceAccount-ErrorContext-Editable-End -->

<!-- Device-DeviceAccount-ErrorContext-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-DeviceAccount-ErrorContext-DFProperties-End -->

<!-- Device-DeviceAccount-ErrorContext-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceAccount-ErrorContext-Examples-End -->

<!-- Device-DeviceAccount-ErrorContext-End -->

<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-Begin -->
### DeviceAccount/ExchangeModernAuthEnabled

<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB4598291](https://support.microsoft.com/help/4598291) [10.0.19041.789] and later <br> ✅ Windows 10, version 20H2 with [KB4598291](https://support.microsoft.com/help/4598291) [10.0.19042.789] and later <br> ✅ Windows Insider Preview |
<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-Applicability-End -->

<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/DeviceAccount/ExchangeModernAuthEnabled
```
<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-OmaUri-End -->

<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether Device Account calendar sync will attempt to use token-based Modern Authentication to connect to the Exchange Server.
<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-Description-End -->

<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-Editable-End -->

<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | True |
<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-DFProperties-End -->

<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| False | Disabled. |
| True (Default) | Enabled. |
<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-AllowedValues-End -->

<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-Examples-End -->

<!-- Device-DeviceAccount-ExchangeModernAuthEnabled-End -->

<!-- Device-DeviceAccount-ExchangeServer-Begin -->
### DeviceAccount/ExchangeServer

<!-- Device-DeviceAccount-ExchangeServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DeviceAccount-ExchangeServer-Applicability-End -->

<!-- Device-DeviceAccount-ExchangeServer-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/DeviceAccount/ExchangeServer
```
<!-- Device-DeviceAccount-ExchangeServer-OmaUri-End -->

<!-- Device-DeviceAccount-ExchangeServer-Description-Begin -->
<!-- Description-Source-DDF -->
Exchange server of the device account. Normally, the device will try to auto-discover the Exchange server. This field is only required if auto-discovery fails.
<!-- Device-DeviceAccount-ExchangeServer-Description-End -->

<!-- Device-DeviceAccount-ExchangeServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceAccount-ExchangeServer-Editable-End -->

<!-- Device-DeviceAccount-ExchangeServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-DeviceAccount-ExchangeServer-DFProperties-End -->

<!-- Device-DeviceAccount-ExchangeServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceAccount-ExchangeServer-Examples-End -->

<!-- Device-DeviceAccount-ExchangeServer-End -->

<!-- Device-DeviceAccount-Password-Begin -->
### DeviceAccount/Password

<!-- Device-DeviceAccount-Password-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DeviceAccount-Password-Applicability-End -->

<!-- Device-DeviceAccount-Password-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/DeviceAccount/Password
```
<!-- Device-DeviceAccount-Password-OmaUri-End -->

<!-- Device-DeviceAccount-Password-Description-Begin -->
<!-- Description-Source-DDF -->
Password for the device account. Get is allowed here, but will always return a blank.
<!-- Device-DeviceAccount-Password-Description-End -->

<!-- Device-DeviceAccount-Password-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceAccount-Password-Editable-End -->

<!-- Device-DeviceAccount-Password-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-DeviceAccount-Password-DFProperties-End -->

<!-- Device-DeviceAccount-Password-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceAccount-Password-Examples-End -->

<!-- Device-DeviceAccount-Password-End -->

<!-- Device-DeviceAccount-PasswordRotationEnabled-Begin -->
### DeviceAccount/PasswordRotationEnabled

<!-- Device-DeviceAccount-PasswordRotationEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DeviceAccount-PasswordRotationEnabled-Applicability-End -->

<!-- Device-DeviceAccount-PasswordRotationEnabled-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/DeviceAccount/PasswordRotationEnabled
```
<!-- Device-DeviceAccount-PasswordRotationEnabled-OmaUri-End -->

<!-- Device-DeviceAccount-PasswordRotationEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether automatic password rotation is enabled. If you enforce a password expiration policy on the device account, use this setting to allow the device to manage its own password by changing it frequently, without requiring you to manually update the account information when the password expires. You can reset the password at any time using Active Directory (or Microsoft Entra ID).
<!-- Device-DeviceAccount-PasswordRotationEnabled-Description-End -->

<!-- Device-DeviceAccount-PasswordRotationEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceAccount-PasswordRotationEnabled-Editable-End -->

<!-- Device-DeviceAccount-PasswordRotationEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
<!-- Device-DeviceAccount-PasswordRotationEnabled-DFProperties-End -->

<!-- Device-DeviceAccount-PasswordRotationEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Password rotation enabled. |
| 1 | Disabled. |
<!-- Device-DeviceAccount-PasswordRotationEnabled-AllowedValues-End -->

<!-- Device-DeviceAccount-PasswordRotationEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceAccount-PasswordRotationEnabled-Examples-End -->

<!-- Device-DeviceAccount-PasswordRotationEnabled-End -->

<!-- Device-DeviceAccount-SipAddress-Begin -->
### DeviceAccount/SipAddress

<!-- Device-DeviceAccount-SipAddress-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DeviceAccount-SipAddress-Applicability-End -->

<!-- Device-DeviceAccount-SipAddress-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/DeviceAccount/SipAddress
```
<!-- Device-DeviceAccount-SipAddress-OmaUri-End -->

<!-- Device-DeviceAccount-SipAddress-Description-Begin -->
<!-- Description-Source-DDF -->
Session Initiation Protocol (SIP) address of the device account. Normally, the device will try to auto-discover the SIP. This field is only required if auto-discovery fails.
<!-- Device-DeviceAccount-SipAddress-Description-End -->

<!-- Device-DeviceAccount-SipAddress-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceAccount-SipAddress-Editable-End -->

<!-- Device-DeviceAccount-SipAddress-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-DeviceAccount-SipAddress-DFProperties-End -->

<!-- Device-DeviceAccount-SipAddress-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceAccount-SipAddress-Examples-End -->

<!-- Device-DeviceAccount-SipAddress-End -->

<!-- Device-DeviceAccount-UserName-Begin -->
### DeviceAccount/UserName

<!-- Device-DeviceAccount-UserName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DeviceAccount-UserName-Applicability-End -->

<!-- Device-DeviceAccount-UserName-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/DeviceAccount/UserName
```
<!-- Device-DeviceAccount-UserName-OmaUri-End -->

<!-- Device-DeviceAccount-UserName-Description-Begin -->
<!-- Description-Source-DDF -->
Username of the device account when you are using Active Directory. To use a device account from Active Directory, you should specify both DomainName and UserName for the device account.
<!-- Device-DeviceAccount-UserName-Description-End -->

<!-- Device-DeviceAccount-UserName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceAccount-UserName-Editable-End -->

<!-- Device-DeviceAccount-UserName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-DeviceAccount-UserName-DFProperties-End -->

<!-- Device-DeviceAccount-UserName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceAccount-UserName-Examples-End -->

<!-- Device-DeviceAccount-UserName-End -->

<!-- Device-DeviceAccount-UserPrincipalName-Begin -->
### DeviceAccount/UserPrincipalName

<!-- Device-DeviceAccount-UserPrincipalName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DeviceAccount-UserPrincipalName-Applicability-End -->

<!-- Device-DeviceAccount-UserPrincipalName-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/DeviceAccount/UserPrincipalName
```
<!-- Device-DeviceAccount-UserPrincipalName-OmaUri-End -->

<!-- Device-DeviceAccount-UserPrincipalName-Description-Begin -->
<!-- Description-Source-DDF -->
User principal name (UPN) of the device account. To use a device account from Microsoft Entra ID or a hybrid deployment, you should specify the UPN of the device account.
<!-- Device-DeviceAccount-UserPrincipalName-Description-End -->

<!-- Device-DeviceAccount-UserPrincipalName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceAccount-UserPrincipalName-Editable-End -->

<!-- Device-DeviceAccount-UserPrincipalName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-DeviceAccount-UserPrincipalName-DFProperties-End -->

<!-- Device-DeviceAccount-UserPrincipalName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceAccount-UserPrincipalName-Examples-End -->

<!-- Device-DeviceAccount-UserPrincipalName-End -->

<!-- Device-DeviceAccount-ValidateAndCommit-Begin -->
### DeviceAccount/ValidateAndCommit

<!-- Device-DeviceAccount-ValidateAndCommit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DeviceAccount-ValidateAndCommit-Applicability-End -->

<!-- Device-DeviceAccount-ValidateAndCommit-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/DeviceAccount/ValidateAndCommit
```
<!-- Device-DeviceAccount-ValidateAndCommit-OmaUri-End -->

<!-- Device-DeviceAccount-ValidateAndCommit-Description-Begin -->
<!-- Description-Source-DDF -->
This method validates the data provided and then commits the changes.
<!-- Device-DeviceAccount-ValidateAndCommit-Description-End -->

<!-- Device-DeviceAccount-ValidateAndCommit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceAccount-ValidateAndCommit-Editable-End -->

<!-- Device-DeviceAccount-ValidateAndCommit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
<!-- Device-DeviceAccount-ValidateAndCommit-DFProperties-End -->

<!-- Device-DeviceAccount-ValidateAndCommit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceAccount-ValidateAndCommit-Examples-End -->

<!-- Device-DeviceAccount-ValidateAndCommit-End -->

<!-- Device-Dot3-Begin -->
## Dot3

<!-- Device-Dot3-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 with [KB4048955](https://support.microsoft.com/help/4048955) [10.0.16299.64] and later <br> ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Dot3-Applicability-End -->

<!-- Device-Dot3-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Dot3
```
<!-- Device-Dot3-OmaUri-End -->

<!-- Device-Dot3-Description-Begin -->
<!-- Description-Source-DDF -->
Parent node.
<!-- Device-Dot3-Description-End -->

<!-- Device-Dot3-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Dot3-Editable-End -->

<!-- Device-Dot3-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Dot3-DFProperties-End -->

<!-- Device-Dot3-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Dot3-Examples-End -->

<!-- Device-Dot3-End -->

<!-- Device-Dot3-EapUserData-Begin -->
### Dot3/EapUserData

<!-- Device-Dot3-EapUserData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 with [KB4048955](https://support.microsoft.com/help/4048955) [10.0.16299.64] and later <br> ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Dot3-EapUserData-Applicability-End -->

<!-- Device-Dot3-EapUserData-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Dot3/EapUserData
```
<!-- Device-Dot3-EapUserData-OmaUri-End -->

<!-- Device-Dot3-EapUserData-Description-Begin -->
<!-- Description-Source-DDF -->
Used to specify credentials to authenticate device to the network.
<!-- Device-Dot3-EapUserData-Description-End -->

<!-- Device-Dot3-EapUserData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Dot3-EapUserData-Editable-End -->

<!-- Device-Dot3-EapUserData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-Dot3-EapUserData-DFProperties-End -->

<!-- Device-Dot3-EapUserData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Dot3-EapUserData-Examples-End -->

<!-- Device-Dot3-EapUserData-End -->

<!-- Device-Dot3-LanProfile-Begin -->
### Dot3/LanProfile

<!-- Device-Dot3-LanProfile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 with [KB4048955](https://support.microsoft.com/help/4048955) [10.0.16299.64] and later <br> ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Dot3-LanProfile-Applicability-End -->

<!-- Device-Dot3-LanProfile-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Dot3/LanProfile
```
<!-- Device-Dot3-LanProfile-OmaUri-End -->

<!-- Device-Dot3-LanProfile-Description-Begin -->
<!-- Description-Source-DDF -->
Used to specify credentials to authenticate device to the network.
<!-- Device-Dot3-LanProfile-Description-End -->

<!-- Device-Dot3-LanProfile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Dot3-LanProfile-Editable-End -->

<!-- Device-Dot3-LanProfile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-Dot3-LanProfile-DFProperties-End -->

<!-- Device-Dot3-LanProfile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Dot3-LanProfile-Examples-End -->

<!-- Device-Dot3-LanProfile-End -->

<!-- Device-InBoxApps-Begin -->
## InBoxApps

<!-- Device-InBoxApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-InBoxApps-Applicability-End -->

<!-- Device-InBoxApps-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps
```
<!-- Device-InBoxApps-OmaUri-End -->

<!-- Device-InBoxApps-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the in-box app settings.
<!-- Device-InBoxApps-Description-End -->

<!-- Device-InBoxApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-Editable-End -->

<!-- Device-InBoxApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-InBoxApps-DFProperties-End -->

<!-- Device-InBoxApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-Examples-End -->

<!-- Device-InBoxApps-End -->

<!-- Device-InBoxApps-Connect-Begin -->
### InBoxApps/Connect

<!-- Device-InBoxApps-Connect-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-InBoxApps-Connect-Applicability-End -->

<!-- Device-InBoxApps-Connect-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/Connect
```
<!-- Device-InBoxApps-Connect-OmaUri-End -->

<!-- Device-InBoxApps-Connect-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the Connect app.
<!-- Device-InBoxApps-Connect-Description-End -->

<!-- Device-InBoxApps-Connect-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-Connect-Editable-End -->

<!-- Device-InBoxApps-Connect-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-InBoxApps-Connect-DFProperties-End -->

<!-- Device-InBoxApps-Connect-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-Connect-Examples-End -->

<!-- Device-InBoxApps-Connect-End -->

<!-- Device-InBoxApps-Connect-AutoLaunch-Begin -->
#### InBoxApps/Connect/AutoLaunch

<!-- Device-InBoxApps-Connect-AutoLaunch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-InBoxApps-Connect-AutoLaunch-Applicability-End -->

<!-- Device-InBoxApps-Connect-AutoLaunch-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/Connect/AutoLaunch
```
<!-- Device-InBoxApps-Connect-AutoLaunch-OmaUri-End -->

<!-- Device-InBoxApps-Connect-AutoLaunch-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to automatically launch the Connect app whenever a projection is initiated. If this setting is true, the Connect app will be automatically launched. If false, the user will need to launch the Connect app manually from the Hub's settings.
<!-- Device-InBoxApps-Connect-AutoLaunch-Description-End -->

<!-- Device-InBoxApps-Connect-AutoLaunch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-Connect-AutoLaunch-Editable-End -->

<!-- Device-InBoxApps-Connect-AutoLaunch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- Device-InBoxApps-Connect-AutoLaunch-DFProperties-End -->

<!-- Device-InBoxApps-Connect-AutoLaunch-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true | Enabled. |
<!-- Device-InBoxApps-Connect-AutoLaunch-AllowedValues-End -->

<!-- Device-InBoxApps-Connect-AutoLaunch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-Connect-AutoLaunch-Examples-End -->

<!-- Device-InBoxApps-Connect-AutoLaunch-End -->

<!-- Device-InBoxApps-SkypeForBusiness-Begin -->
### InBoxApps/SkypeForBusiness

<!-- Device-InBoxApps-SkypeForBusiness-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-InBoxApps-SkypeForBusiness-Applicability-End -->

<!-- Device-InBoxApps-SkypeForBusiness-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/SkypeForBusiness
```
<!-- Device-InBoxApps-SkypeForBusiness-OmaUri-End -->

<!-- Device-InBoxApps-SkypeForBusiness-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the Skype for Business settings.
<!-- Device-InBoxApps-SkypeForBusiness-Description-End -->

<!-- Device-InBoxApps-SkypeForBusiness-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-SkypeForBusiness-Editable-End -->

<!-- Device-InBoxApps-SkypeForBusiness-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-InBoxApps-SkypeForBusiness-DFProperties-End -->

<!-- Device-InBoxApps-SkypeForBusiness-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-SkypeForBusiness-Examples-End -->

<!-- Device-InBoxApps-SkypeForBusiness-End -->

<!-- Device-InBoxApps-SkypeForBusiness-DomainName-Begin -->
#### InBoxApps/SkypeForBusiness/DomainName

<!-- Device-InBoxApps-SkypeForBusiness-DomainName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-InBoxApps-SkypeForBusiness-DomainName-Applicability-End -->

<!-- Device-InBoxApps-SkypeForBusiness-DomainName-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/SkypeForBusiness/DomainName
```
<!-- Device-InBoxApps-SkypeForBusiness-DomainName-OmaUri-End -->

<!-- Device-InBoxApps-SkypeForBusiness-DomainName-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the domain of the Skype for Business account when you are using Active Directory. For more information, see [Set up your domain and users](/skypeforbusiness/set-up-skype-for-business-online/set-up-skype-for-business-online#3-set-up-your-domain-and-users).
<!-- Device-InBoxApps-SkypeForBusiness-DomainName-Description-End -->

<!-- Device-InBoxApps-SkypeForBusiness-DomainName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-SkypeForBusiness-DomainName-Editable-End -->

<!-- Device-InBoxApps-SkypeForBusiness-DomainName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-InBoxApps-SkypeForBusiness-DomainName-DFProperties-End -->

<!-- Device-InBoxApps-SkypeForBusiness-DomainName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-SkypeForBusiness-DomainName-Examples-End -->

<!-- Device-InBoxApps-SkypeForBusiness-DomainName-End -->

<!-- Device-InBoxApps-Teams-Begin -->
### InBoxApps/Teams

<!-- Device-InBoxApps-Teams-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB4566782](https://support.microsoft.com/help/4566782) [10.0.19041.450] and later <br> ✅ Windows 10, version 20H2 [10.0.19042] and later |
<!-- Device-InBoxApps-Teams-Applicability-End -->

<!-- Device-InBoxApps-Teams-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/Teams
```
<!-- Device-InBoxApps-Teams-OmaUri-End -->

<!-- Device-InBoxApps-Teams-Description-Begin -->
<!-- Description-Source-DDF -->
This node controls policies specific to the Teams App on Surface Hub.
<!-- Device-InBoxApps-Teams-Description-End -->

<!-- Device-InBoxApps-Teams-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-Teams-Editable-End -->

<!-- Device-InBoxApps-Teams-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-InBoxApps-Teams-DFProperties-End -->

<!-- Device-InBoxApps-Teams-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-Teams-Examples-End -->

<!-- Device-InBoxApps-Teams-End -->

<!-- Device-InBoxApps-Teams-Configurations-Begin -->
#### InBoxApps/Teams/Configurations

<!-- Device-InBoxApps-Teams-Configurations-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB4566782](https://support.microsoft.com/help/4566782) [10.0.19041.450] and later <br> ✅ Windows 10, version 20H2 [10.0.19042] and later |
<!-- Device-InBoxApps-Teams-Configurations-Applicability-End -->

<!-- Device-InBoxApps-Teams-Configurations-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/Teams/Configurations
```
<!-- Device-InBoxApps-Teams-Configurations-OmaUri-End -->

<!-- Device-InBoxApps-Teams-Configurations-Description-Begin -->
<!-- Description-Source-DDF -->
String to contain Teams policy configs.
<!-- Device-InBoxApps-Teams-Configurations-Description-End -->

<!-- Device-InBoxApps-Teams-Configurations-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-Teams-Configurations-Editable-End -->

<!-- Device-InBoxApps-Teams-Configurations-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-InBoxApps-Teams-Configurations-DFProperties-End -->

<!-- Device-InBoxApps-Teams-Configurations-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-Teams-Configurations-Examples-End -->

<!-- Device-InBoxApps-Teams-Configurations-End -->

<!-- Device-InBoxApps-Welcome-Begin -->
### InBoxApps/Welcome

<!-- Device-InBoxApps-Welcome-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-InBoxApps-Welcome-Applicability-End -->

<!-- Device-InBoxApps-Welcome-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/Welcome
```
<!-- Device-InBoxApps-Welcome-OmaUri-End -->

<!-- Device-InBoxApps-Welcome-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the welcome screen.
<!-- Device-InBoxApps-Welcome-Description-End -->

<!-- Device-InBoxApps-Welcome-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-Welcome-Editable-End -->

<!-- Device-InBoxApps-Welcome-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-InBoxApps-Welcome-DFProperties-End -->

<!-- Device-InBoxApps-Welcome-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-Welcome-Examples-End -->

<!-- Device-InBoxApps-Welcome-End -->

<!-- Device-InBoxApps-Welcome-AutoWakeScreen-Begin -->
#### InBoxApps/Welcome/AutoWakeScreen

<!-- Device-InBoxApps-Welcome-AutoWakeScreen-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-InBoxApps-Welcome-AutoWakeScreen-Applicability-End -->

<!-- Device-InBoxApps-Welcome-AutoWakeScreen-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/Welcome/AutoWakeScreen
```
<!-- Device-InBoxApps-Welcome-AutoWakeScreen-OmaUri-End -->

<!-- Device-InBoxApps-Welcome-AutoWakeScreen-Description-Begin -->
<!-- Description-Source-DDF -->
Setting for the screen to wake up and stay on with sensor activity.
<!-- Device-InBoxApps-Welcome-AutoWakeScreen-Description-End -->

<!-- Device-InBoxApps-Welcome-AutoWakeScreen-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-Welcome-AutoWakeScreen-Editable-End -->

<!-- Device-InBoxApps-Welcome-AutoWakeScreen-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- Device-InBoxApps-Welcome-AutoWakeScreen-DFProperties-End -->

<!-- Device-InBoxApps-Welcome-AutoWakeScreen-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| False | Disabled. |
| True | Enabled. |
<!-- Device-InBoxApps-Welcome-AutoWakeScreen-AllowedValues-End -->

<!-- Device-InBoxApps-Welcome-AutoWakeScreen-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-Welcome-AutoWakeScreen-Examples-End -->

<!-- Device-InBoxApps-Welcome-AutoWakeScreen-End -->

<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-Begin -->
#### InBoxApps/Welcome/CurrentBackgroundPath

<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-Applicability-End -->

<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/Welcome/CurrentBackgroundPath
```
<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-OmaUri-End -->

<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-Description-Begin -->
<!-- Description-Source-DDF -->
Background image for the welcome screen. To set this, specify an https URL to a PNG file (only PNGs are supported for security reasons). If any certificate authorities need to be trusted in order to access the URL, please ensure they're valid and installed on the Hub, otherwise it may not be able to load the image.
<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-Description-End -->

<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-Editable-End -->

<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-DFProperties-End -->

<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-Examples-End -->

<!-- Device-InBoxApps-Welcome-CurrentBackgroundPath-End -->

<!-- Device-InBoxApps-Welcome-MeetingInfoOption-Begin -->
#### InBoxApps/Welcome/MeetingInfoOption

<!-- Device-InBoxApps-Welcome-MeetingInfoOption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-InBoxApps-Welcome-MeetingInfoOption-Applicability-End -->

<!-- Device-InBoxApps-Welcome-MeetingInfoOption-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/Welcome/MeetingInfoOption
```
<!-- Device-InBoxApps-Welcome-MeetingInfoOption-OmaUri-End -->

<!-- Device-InBoxApps-Welcome-MeetingInfoOption-Description-Begin -->
<!-- Description-Source-DDF -->
Meeting information displayed on the welcome screen.
<!-- Device-InBoxApps-Welcome-MeetingInfoOption-Description-End -->

<!-- Device-InBoxApps-Welcome-MeetingInfoOption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-Welcome-MeetingInfoOption-Editable-End -->

<!-- Device-InBoxApps-Welcome-MeetingInfoOption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
<!-- Device-InBoxApps-Welcome-MeetingInfoOption-DFProperties-End -->

<!-- Device-InBoxApps-Welcome-MeetingInfoOption-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Organizer and time only. |
| 1 | Organizer, time, and subject. Subject is hidden in private meetings. |
<!-- Device-InBoxApps-Welcome-MeetingInfoOption-AllowedValues-End -->

<!-- Device-InBoxApps-Welcome-MeetingInfoOption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-Welcome-MeetingInfoOption-Examples-End -->

<!-- Device-InBoxApps-Welcome-MeetingInfoOption-End -->

<!-- Device-InBoxApps-Whiteboard-Begin -->
### InBoxApps/Whiteboard

<!-- Device-InBoxApps-Whiteboard-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 with [KB4522355](https://support.microsoft.com/help/4522355) [10.0.18362.449] and later <br> ✅ Windows 10, version 1909 [10.0.18363] and later |
<!-- Device-InBoxApps-Whiteboard-Applicability-End -->

<!-- Device-InBoxApps-Whiteboard-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/Whiteboard
```
<!-- Device-InBoxApps-Whiteboard-OmaUri-End -->

<!-- Device-InBoxApps-Whiteboard-Description-Begin -->
<!-- Description-Source-DDF -->
This node controls policies specific to the Whiteboard App on Surface Hub.
<!-- Device-InBoxApps-Whiteboard-Description-End -->

<!-- Device-InBoxApps-Whiteboard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-Whiteboard-Editable-End -->

<!-- Device-InBoxApps-Whiteboard-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-InBoxApps-Whiteboard-DFProperties-End -->

<!-- Device-InBoxApps-Whiteboard-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-Whiteboard-Examples-End -->

<!-- Device-InBoxApps-Whiteboard-End -->

<!-- Device-InBoxApps-Whiteboard-SharingDisabled-Begin -->
#### InBoxApps/Whiteboard/SharingDisabled

<!-- Device-InBoxApps-Whiteboard-SharingDisabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 with [KB4522355](https://support.microsoft.com/help/4522355) [10.0.18362.449] and later <br> ✅ Windows 10, version 1909 [10.0.18363] and later |
<!-- Device-InBoxApps-Whiteboard-SharingDisabled-Applicability-End -->

<!-- Device-InBoxApps-Whiteboard-SharingDisabled-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/Whiteboard/SharingDisabled
```
<!-- Device-InBoxApps-Whiteboard-SharingDisabled-OmaUri-End -->

<!-- Device-InBoxApps-Whiteboard-SharingDisabled-Description-Begin -->
<!-- Description-Source-DDF -->
When enabled, prevents a user from initiating a collaborative session on the device.
<!-- Device-InBoxApps-Whiteboard-SharingDisabled-Description-End -->

<!-- Device-InBoxApps-Whiteboard-SharingDisabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-Whiteboard-SharingDisabled-Editable-End -->

<!-- Device-InBoxApps-Whiteboard-SharingDisabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- Device-InBoxApps-Whiteboard-SharingDisabled-DFProperties-End -->

<!-- Device-InBoxApps-Whiteboard-SharingDisabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| False | Sharing enabled. |
| True | Sharing disabled. |
<!-- Device-InBoxApps-Whiteboard-SharingDisabled-AllowedValues-End -->

<!-- Device-InBoxApps-Whiteboard-SharingDisabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-Whiteboard-SharingDisabled-Examples-End -->

<!-- Device-InBoxApps-Whiteboard-SharingDisabled-End -->

<!-- Device-InBoxApps-Whiteboard-SignInDisabled-Begin -->
#### InBoxApps/Whiteboard/SignInDisabled

<!-- Device-InBoxApps-Whiteboard-SignInDisabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 with [KB4522355](https://support.microsoft.com/help/4522355) [10.0.18362.449] and later <br> ✅ Windows 10, version 1909 [10.0.18363] and later |
<!-- Device-InBoxApps-Whiteboard-SignInDisabled-Applicability-End -->

<!-- Device-InBoxApps-Whiteboard-SignInDisabled-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/Whiteboard/SignInDisabled
```
<!-- Device-InBoxApps-Whiteboard-SignInDisabled-OmaUri-End -->

<!-- Device-InBoxApps-Whiteboard-SignInDisabled-Description-Begin -->
<!-- Description-Source-DDF -->
When enabled, prevents a user from Signing into Whiteboard on the device.
<!-- Device-InBoxApps-Whiteboard-SignInDisabled-Description-End -->

<!-- Device-InBoxApps-Whiteboard-SignInDisabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-Whiteboard-SignInDisabled-Editable-End -->

<!-- Device-InBoxApps-Whiteboard-SignInDisabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | False |
<!-- Device-InBoxApps-Whiteboard-SignInDisabled-DFProperties-End -->

<!-- Device-InBoxApps-Whiteboard-SignInDisabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| False (Default) | Sign in enabled. |
| True | Sign in disabled. |
<!-- Device-InBoxApps-Whiteboard-SignInDisabled-AllowedValues-End -->

<!-- Device-InBoxApps-Whiteboard-SignInDisabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-Whiteboard-SignInDisabled-Examples-End -->

<!-- Device-InBoxApps-Whiteboard-SignInDisabled-End -->

<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-Begin -->
#### InBoxApps/Whiteboard/TelemetryDisabled

<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 with [KB4522355](https://support.microsoft.com/help/4522355) [10.0.18362.449] and later <br> ✅ Windows 10, version 1909 [10.0.18363] and later |
<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-Applicability-End -->

<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/Whiteboard/TelemetryDisabled
```
<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-OmaUri-End -->

<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-Description-Begin -->
<!-- Description-Source-DDF -->
When enabled, prevents Whiteboard from sending telemetry from the device.
<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-Description-End -->

<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-Editable-End -->

<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | False |
<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-DFProperties-End -->

<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| False (Default) | Telemetry enabled. |
| True | Telemetry disabled. |
<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-AllowedValues-End -->

<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-Examples-End -->

<!-- Device-InBoxApps-Whiteboard-TelemetryDisabled-End -->

<!-- Device-InBoxApps-WirelessProjection-Begin -->
### InBoxApps/WirelessProjection

<!-- Device-InBoxApps-WirelessProjection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-InBoxApps-WirelessProjection-Applicability-End -->

<!-- Device-InBoxApps-WirelessProjection-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/WirelessProjection
```
<!-- Device-InBoxApps-WirelessProjection-OmaUri-End -->

<!-- Device-InBoxApps-WirelessProjection-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the wireless projector app settings.
<!-- Device-InBoxApps-WirelessProjection-Description-End -->

<!-- Device-InBoxApps-WirelessProjection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-WirelessProjection-Editable-End -->

<!-- Device-InBoxApps-WirelessProjection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-InBoxApps-WirelessProjection-DFProperties-End -->

<!-- Device-InBoxApps-WirelessProjection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-WirelessProjection-Examples-End -->

<!-- Device-InBoxApps-WirelessProjection-End -->

<!-- Device-InBoxApps-WirelessProjection-Channel-Begin -->
#### InBoxApps/WirelessProjection/Channel

<!-- Device-InBoxApps-WirelessProjection-Channel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-InBoxApps-WirelessProjection-Channel-Applicability-End -->

<!-- Device-InBoxApps-WirelessProjection-Channel-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/WirelessProjection/Channel
```
<!-- Device-InBoxApps-WirelessProjection-Channel-OmaUri-End -->

<!-- Device-InBoxApps-WirelessProjection-Channel-Description-Begin -->
<!-- Description-Source-DDF -->
Wireless channel to use for Miracast operation. The supported channels are defined by the Wi-Fi Alliance Wi-Fi Direct specification.
<!-- Device-InBoxApps-WirelessProjection-Channel-Description-End -->

<!-- Device-InBoxApps-WirelessProjection-Channel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
|**Compatibility**|**Values**|
|--- |--- |
|Works with all Miracast senders in all regions|1, 3, 4, 5, 6, 7, 8, 9, 10, 11|
|Works with all 5ghz band Miracast senders in all regions|36, 40, 44, 48|
|Works with all 5ghz band Miracast senders in all regions except Japan|149, 153, 157, 161, 165|

Outside of regulatory concerns, if the channel is configured incorrectly, the driver will either not boot or will broadcast on the wrong channel (which senders won't be looking for).
<!-- Device-InBoxApps-WirelessProjection-Channel-Editable-End -->

<!-- Device-InBoxApps-WirelessProjection-Channel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 255 |
<!-- Device-InBoxApps-WirelessProjection-Channel-DFProperties-End -->

<!-- Device-InBoxApps-WirelessProjection-Channel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-WirelessProjection-Channel-Examples-End -->

<!-- Device-InBoxApps-WirelessProjection-Channel-End -->

<!-- Device-InBoxApps-WirelessProjection-Enabled-Begin -->
#### InBoxApps/WirelessProjection/Enabled

<!-- Device-InBoxApps-WirelessProjection-Enabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-InBoxApps-WirelessProjection-Enabled-Applicability-End -->

<!-- Device-InBoxApps-WirelessProjection-Enabled-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/WirelessProjection/Enabled
```
<!-- Device-InBoxApps-WirelessProjection-Enabled-OmaUri-End -->

<!-- Device-InBoxApps-WirelessProjection-Enabled-Description-Begin -->
<!-- Description-Source-DDF -->
Enables wireless projection to the device.
<!-- Device-InBoxApps-WirelessProjection-Enabled-Description-End -->

<!-- Device-InBoxApps-WirelessProjection-Enabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-WirelessProjection-Enabled-Editable-End -->

<!-- Device-InBoxApps-WirelessProjection-Enabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- Device-InBoxApps-WirelessProjection-Enabled-DFProperties-End -->

<!-- Device-InBoxApps-WirelessProjection-Enabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true | Enabled. |
<!-- Device-InBoxApps-WirelessProjection-Enabled-AllowedValues-End -->

<!-- Device-InBoxApps-WirelessProjection-Enabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-WirelessProjection-Enabled-Examples-End -->

<!-- Device-InBoxApps-WirelessProjection-Enabled-End -->

<!-- Device-InBoxApps-WirelessProjection-PINRequired-Begin -->
#### InBoxApps/WirelessProjection/PINRequired

<!-- Device-InBoxApps-WirelessProjection-PINRequired-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-InBoxApps-WirelessProjection-PINRequired-Applicability-End -->

<!-- Device-InBoxApps-WirelessProjection-PINRequired-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/InBoxApps/WirelessProjection/PINRequired
```
<!-- Device-InBoxApps-WirelessProjection-PINRequired-OmaUri-End -->

<!-- Device-InBoxApps-WirelessProjection-PINRequired-Description-Begin -->
<!-- Description-Source-DDF -->
Users must enter a PIN to wirelessly project to the device.
<!-- Device-InBoxApps-WirelessProjection-PINRequired-Description-End -->

<!-- Device-InBoxApps-WirelessProjection-PINRequired-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InBoxApps-WirelessProjection-PINRequired-Editable-End -->

<!-- Device-InBoxApps-WirelessProjection-PINRequired-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- Device-InBoxApps-WirelessProjection-PINRequired-DFProperties-End -->

<!-- Device-InBoxApps-WirelessProjection-PINRequired-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Pin not required. |
| true | Pin required. |
<!-- Device-InBoxApps-WirelessProjection-PINRequired-AllowedValues-End -->

<!-- Device-InBoxApps-WirelessProjection-PINRequired-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InBoxApps-WirelessProjection-PINRequired-Examples-End -->

<!-- Device-InBoxApps-WirelessProjection-PINRequired-End -->

<!-- Device-MaintenanceHoursSimple-Begin -->
## MaintenanceHoursSimple

<!-- Device-MaintenanceHoursSimple-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MaintenanceHoursSimple-Applicability-End -->

<!-- Device-MaintenanceHoursSimple-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/MaintenanceHoursSimple
```
<!-- Device-MaintenanceHoursSimple-OmaUri-End -->

<!-- Device-MaintenanceHoursSimple-Description-Begin -->
<!-- Description-Source-DDF -->
Node for maintenance schedule.
<!-- Device-MaintenanceHoursSimple-Description-End -->

<!-- Device-MaintenanceHoursSimple-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MaintenanceHoursSimple-Editable-End -->

<!-- Device-MaintenanceHoursSimple-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MaintenanceHoursSimple-DFProperties-End -->

<!-- Device-MaintenanceHoursSimple-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MaintenanceHoursSimple-Examples-End -->

<!-- Device-MaintenanceHoursSimple-End -->

<!-- Device-MaintenanceHoursSimple-Hours-Begin -->
### MaintenanceHoursSimple/Hours

<!-- Device-MaintenanceHoursSimple-Hours-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MaintenanceHoursSimple-Hours-Applicability-End -->

<!-- Device-MaintenanceHoursSimple-Hours-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/MaintenanceHoursSimple/Hours
```
<!-- Device-MaintenanceHoursSimple-Hours-OmaUri-End -->

<!-- Device-MaintenanceHoursSimple-Hours-Description-Begin -->
<!-- Description-Source-DDF -->
Node for maintenance schedule.
<!-- Device-MaintenanceHoursSimple-Hours-Description-End -->

<!-- Device-MaintenanceHoursSimple-Hours-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MaintenanceHoursSimple-Hours-Editable-End -->

<!-- Device-MaintenanceHoursSimple-Hours-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MaintenanceHoursSimple-Hours-DFProperties-End -->

<!-- Device-MaintenanceHoursSimple-Hours-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MaintenanceHoursSimple-Hours-Examples-End -->

<!-- Device-MaintenanceHoursSimple-Hours-End -->

<!-- Device-MaintenanceHoursSimple-Hours-Duration-Begin -->
#### MaintenanceHoursSimple/Hours/Duration

<!-- Device-MaintenanceHoursSimple-Hours-Duration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MaintenanceHoursSimple-Hours-Duration-Applicability-End -->

<!-- Device-MaintenanceHoursSimple-Hours-Duration-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/MaintenanceHoursSimple/Hours/Duration
```
<!-- Device-MaintenanceHoursSimple-Hours-Duration-OmaUri-End -->

<!-- Device-MaintenanceHoursSimple-Hours-Duration-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the duration of maintenance window in minutes. For example, to set a 3-hour duration, set this value to 180.
<!-- Device-MaintenanceHoursSimple-Hours-Duration-Description-End -->

<!-- Device-MaintenanceHoursSimple-Hours-Duration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MaintenanceHoursSimple-Hours-Duration-Editable-End -->

<!-- Device-MaintenanceHoursSimple-Hours-Duration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Allowed Values | Range: `[0-1439]` |
<!-- Device-MaintenanceHoursSimple-Hours-Duration-DFProperties-End -->

<!-- Device-MaintenanceHoursSimple-Hours-Duration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MaintenanceHoursSimple-Hours-Duration-Examples-End -->

<!-- Device-MaintenanceHoursSimple-Hours-Duration-End -->

<!-- Device-MaintenanceHoursSimple-Hours-StartTime-Begin -->
#### MaintenanceHoursSimple/Hours/StartTime

<!-- Device-MaintenanceHoursSimple-Hours-StartTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MaintenanceHoursSimple-Hours-StartTime-Applicability-End -->

<!-- Device-MaintenanceHoursSimple-Hours-StartTime-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/MaintenanceHoursSimple/Hours/StartTime
```
<!-- Device-MaintenanceHoursSimple-Hours-StartTime-OmaUri-End -->

<!-- Device-MaintenanceHoursSimple-Hours-StartTime-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the start time for maintenance hours in minutes from midnight. For example, to set a 2:00 am start time, set this value to 120.
<!-- Device-MaintenanceHoursSimple-Hours-StartTime-Description-End -->

<!-- Device-MaintenanceHoursSimple-Hours-StartTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MaintenanceHoursSimple-Hours-StartTime-Editable-End -->

<!-- Device-MaintenanceHoursSimple-Hours-StartTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Allowed Values | Range: `[0-1439]` |
<!-- Device-MaintenanceHoursSimple-Hours-StartTime-DFProperties-End -->

<!-- Device-MaintenanceHoursSimple-Hours-StartTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MaintenanceHoursSimple-Hours-StartTime-Examples-End -->

<!-- Device-MaintenanceHoursSimple-Hours-StartTime-End -->

<!-- Device-Management-Begin -->
## Management

<!-- Device-Management-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 with [KB4015438](https://support.microsoft.com/help/4015438) [10.0.14393.969] and later <br> ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Management-Applicability-End -->

<!-- Device-Management-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Management
```
<!-- Device-Management-OmaUri-End -->

<!-- Device-Management-Description-Begin -->
<!-- Description-Source-DDF -->
Not a supported scenario.
<!-- Device-Management-Description-End -->

<!-- Device-Management-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Management-Editable-End -->

<!-- Device-Management-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Management-DFProperties-End -->

<!-- Device-Management-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Management-Examples-End -->

<!-- Device-Management-End -->

<!-- Device-Management-GroupName-Begin -->
### Management/GroupName

<!-- Device-Management-GroupName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 with [KB4015438](https://support.microsoft.com/help/4015438) [10.0.14393.969] and later <br> ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Management-GroupName-Applicability-End -->

<!-- Device-Management-GroupName-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Management/GroupName
```
<!-- Device-Management-GroupName-OmaUri-End -->

<!-- Device-Management-GroupName-Description-Begin -->
<!-- Description-Source-DDF -->
The name of the domain admin group to add to the administrators group on the device.
<!-- Device-Management-GroupName-Description-End -->

<!-- Device-Management-GroupName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Management-GroupName-Editable-End -->

<!-- Device-Management-GroupName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-Management-GroupName-DFProperties-End -->

<!-- Device-Management-GroupName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Management-GroupName-Examples-End -->

<!-- Device-Management-GroupName-End -->

<!-- Device-Management-GroupSid-Begin -->
### Management/GroupSid

<!-- Device-Management-GroupSid-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 with [KB4015438](https://support.microsoft.com/help/4015438) [10.0.14393.969] and later <br> ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Management-GroupSid-Applicability-End -->

<!-- Device-Management-GroupSid-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Management/GroupSid
```
<!-- Device-Management-GroupSid-OmaUri-End -->

<!-- Device-Management-GroupSid-Description-Begin -->
<!-- Description-Source-DDF -->
The SID of the domain admin group to add to the administrators group on the device.
<!-- Device-Management-GroupSid-Description-End -->

<!-- Device-Management-GroupSid-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Management-GroupSid-Editable-End -->

<!-- Device-Management-GroupSid-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-Management-GroupSid-DFProperties-End -->

<!-- Device-Management-GroupSid-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Management-GroupSid-Examples-End -->

<!-- Device-Management-GroupSid-End -->

<!-- Device-MOMAgent-Begin -->
## MOMAgent

<!-- Device-MOMAgent-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MOMAgent-Applicability-End -->

<!-- Device-MOMAgent-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/MOMAgent
```
<!-- Device-MOMAgent-OmaUri-End -->

<!-- Device-MOMAgent-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the Microsoft Operations Management Suite.
<!-- Device-MOMAgent-Description-End -->

<!-- Device-MOMAgent-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MOMAgent-Editable-End -->

<!-- Device-MOMAgent-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MOMAgent-DFProperties-End -->

<!-- Device-MOMAgent-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MOMAgent-Examples-End -->

<!-- Device-MOMAgent-End -->

<!-- Device-MOMAgent-WorkspaceID-Begin -->
### MOMAgent/WorkspaceID

<!-- Device-MOMAgent-WorkspaceID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MOMAgent-WorkspaceID-Applicability-End -->

<!-- Device-MOMAgent-WorkspaceID-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/MOMAgent/WorkspaceID
```
<!-- Device-MOMAgent-WorkspaceID-OmaUri-End -->

<!-- Device-MOMAgent-WorkspaceID-Description-Begin -->
<!-- Description-Source-DDF -->
GUID identifying the Microsoft Operations Management Suite workspace ID to collect the data. Set this to an empty string to disable the MOM agent.
<!-- Device-MOMAgent-WorkspaceID-Description-End -->

<!-- Device-MOMAgent-WorkspaceID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MOMAgent-WorkspaceID-Editable-End -->

<!-- Device-MOMAgent-WorkspaceID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-MOMAgent-WorkspaceID-DFProperties-End -->

<!-- Device-MOMAgent-WorkspaceID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MOMAgent-WorkspaceID-Examples-End -->

<!-- Device-MOMAgent-WorkspaceID-End -->

<!-- Device-MOMAgent-WorkspaceKey-Begin -->
### MOMAgent/WorkspaceKey

<!-- Device-MOMAgent-WorkspaceKey-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MOMAgent-WorkspaceKey-Applicability-End -->

<!-- Device-MOMAgent-WorkspaceKey-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/MOMAgent/WorkspaceKey
```
<!-- Device-MOMAgent-WorkspaceKey-OmaUri-End -->

<!-- Device-MOMAgent-WorkspaceKey-Description-Begin -->
<!-- Description-Source-DDF -->
Primary key for authenticating with workspace. Will always return an empty string.
<!-- Device-MOMAgent-WorkspaceKey-Description-End -->

<!-- Device-MOMAgent-WorkspaceKey-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MOMAgent-WorkspaceKey-Editable-End -->

<!-- Device-MOMAgent-WorkspaceKey-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-MOMAgent-WorkspaceKey-DFProperties-End -->

<!-- Device-MOMAgent-WorkspaceKey-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MOMAgent-WorkspaceKey-Examples-End -->

<!-- Device-MOMAgent-WorkspaceKey-End -->

<!-- Device-MOMAgentGovtCloud-Begin -->
## MOMAgentGovtCloud

<!-- Device-MOMAgentGovtCloud-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 22H2 with [KB5036979](https://support.microsoft.com/help/5036979) [10.0.19045.4355] and later |
<!-- Device-MOMAgentGovtCloud-Applicability-End -->

<!-- Device-MOMAgentGovtCloud-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/MOMAgentGovtCloud
```
<!-- Device-MOMAgentGovtCloud-OmaUri-End -->

<!-- Device-MOMAgentGovtCloud-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-MOMAgentGovtCloud-Description-End -->

<!-- Device-MOMAgentGovtCloud-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MOMAgentGovtCloud-Editable-End -->

<!-- Device-MOMAgentGovtCloud-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MOMAgentGovtCloud-DFProperties-End -->

<!-- Device-MOMAgentGovtCloud-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MOMAgentGovtCloud-Examples-End -->

<!-- Device-MOMAgentGovtCloud-End -->

<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-Begin -->
### MOMAgentGovtCloud/AzureCloudIndexGovtCloud

<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 22H2 with [KB5036979](https://support.microsoft.com/help/5036979) [10.0.19045.4355] and later |
<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-Applicability-End -->

<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/MOMAgentGovtCloud/AzureCloudIndexGovtCloud
```
<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-OmaUri-End -->

<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-Description-Begin -->
<!-- Description-Source-DDF -->
Enum value for Azure Clouds supported for OMS tracking in SurfaceHub.
<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-Description-End -->

<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-Editable-End -->

<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-DFProperties-End -->

<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-Examples-End -->

<!-- Device-MOMAgentGovtCloud-AzureCloudIndexGovtCloud-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-Begin -->
### MOMAgentGovtCloud/WorkspaceIDGovtCloud

<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 22H2 with [KB5036979](https://support.microsoft.com/help/5036979) [10.0.19045.4355] and later |
<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-Applicability-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/MOMAgentGovtCloud/WorkspaceIDGovtCloud
```
<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-OmaUri-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-Description-Begin -->
<!-- Description-Source-DDF -->
GUID identifying the Microsoft Operations Management Suite workspace ID to collect the data for Govt Clouds. Set this to an empty string to disable the MOM agent.
<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-Description-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-Editable-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-DFProperties-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-Examples-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceIDGovtCloud-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-Begin -->
### MOMAgentGovtCloud/WorkspaceKeyGovtCloud

<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 22H2 with [KB5036979](https://support.microsoft.com/help/5036979) [10.0.19045.4355] and later |
<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-Applicability-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/MOMAgentGovtCloud/WorkspaceKeyGovtCloud
```
<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-OmaUri-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-Description-Begin -->
<!-- Description-Source-DDF -->
Primary key for authenticating with workspace for Govt Clouds. Will always return an empty string.
<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-Description-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-Editable-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-DFProperties-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-Examples-End -->

<!-- Device-MOMAgentGovtCloud-WorkspaceKeyGovtCloud-End -->

<!-- Device-Properties-Begin -->
## Properties

<!-- Device-Properties-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Properties-Applicability-End -->

<!-- Device-Properties-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties
```
<!-- Device-Properties-OmaUri-End -->

<!-- Device-Properties-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the device properties.
<!-- Device-Properties-Description-End -->

<!-- Device-Properties-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-Editable-End -->

<!-- Device-Properties-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Properties-DFProperties-End -->

<!-- Device-Properties-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-Examples-End -->

<!-- Device-Properties-End -->

<!-- Device-Properties-AllowAutoProxyAuth-Begin -->
### Properties/AllowAutoProxyAuth

<!-- Device-Properties-AllowAutoProxyAuth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Properties-AllowAutoProxyAuth-Applicability-End -->

<!-- Device-Properties-AllowAutoProxyAuth-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/AllowAutoProxyAuth
```
<!-- Device-Properties-AllowAutoProxyAuth-OmaUri-End -->

<!-- Device-Properties-AllowAutoProxyAuth-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to use the device account for proxy authentication. If this setting is true, the device account will be used for proxy authentication. If false, a separate account will be used.
<!-- Device-Properties-AllowAutoProxyAuth-Description-End -->

<!-- Device-Properties-AllowAutoProxyAuth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-AllowAutoProxyAuth-Editable-End -->

<!-- Device-Properties-AllowAutoProxyAuth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
<!-- Device-Properties-AllowAutoProxyAuth-DFProperties-End -->

<!-- Device-Properties-AllowAutoProxyAuth-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true (Default) | Enabled. |
<!-- Device-Properties-AllowAutoProxyAuth-AllowedValues-End -->

<!-- Device-Properties-AllowAutoProxyAuth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-AllowAutoProxyAuth-Examples-End -->

<!-- Device-Properties-AllowAutoProxyAuth-End -->

<!-- Device-Properties-AllowSessionResume-Begin -->
### Properties/AllowSessionResume

<!-- Device-Properties-AllowSessionResume-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Properties-AllowSessionResume-Applicability-End -->

<!-- Device-Properties-AllowSessionResume-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/AllowSessionResume
```
<!-- Device-Properties-AllowSessionResume-OmaUri-End -->

<!-- Device-Properties-AllowSessionResume-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to allow the ability to resume a session when the session times out. If this setting is true, the "Resume Session" feature will be available on the welcome screen when the screen is idle. If false, once the screen idles, the session will be automatically cleaned up as if the "End Session" feature was initiated.
<!-- Device-Properties-AllowSessionResume-Description-End -->

<!-- Device-Properties-AllowSessionResume-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-AllowSessionResume-Editable-End -->

<!-- Device-Properties-AllowSessionResume-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
<!-- Device-Properties-AllowSessionResume-DFProperties-End -->

<!-- Device-Properties-AllowSessionResume-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true (Default) | Enabled. |
<!-- Device-Properties-AllowSessionResume-AllowedValues-End -->

<!-- Device-Properties-AllowSessionResume-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-AllowSessionResume-Examples-End -->

<!-- Device-Properties-AllowSessionResume-End -->

<!-- Device-Properties-DefaultAutomaticFraming-Begin -->
### Properties/DefaultAutomaticFraming

<!-- Device-Properties-DefaultAutomaticFraming-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 [10.0.19042] and later |
<!-- Device-Properties-DefaultAutomaticFraming-Applicability-End -->

<!-- Device-Properties-DefaultAutomaticFraming-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/DefaultAutomaticFraming
```
<!-- Device-Properties-DefaultAutomaticFraming-OmaUri-End -->

<!-- Device-Properties-DefaultAutomaticFraming-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the Surface Hub 2 Smart Camera feature to automatically zoom and keep users centered in the video is enabled.
<!-- Device-Properties-DefaultAutomaticFraming-Description-End -->

<!-- Device-Properties-DefaultAutomaticFraming-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-DefaultAutomaticFraming-Editable-End -->

<!-- Device-Properties-DefaultAutomaticFraming-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
<!-- Device-Properties-DefaultAutomaticFraming-DFProperties-End -->

<!-- Device-Properties-DefaultAutomaticFraming-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true (Default) | Enabled. |
<!-- Device-Properties-DefaultAutomaticFraming-AllowedValues-End -->

<!-- Device-Properties-DefaultAutomaticFraming-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-DefaultAutomaticFraming-Examples-End -->

<!-- Device-Properties-DefaultAutomaticFraming-End -->

<!-- Device-Properties-DefaultVolume-Begin -->
### Properties/DefaultVolume

<!-- Device-Properties-DefaultVolume-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Properties-DefaultVolume-Applicability-End -->

<!-- Device-Properties-DefaultVolume-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/DefaultVolume
```
<!-- Device-Properties-DefaultVolume-OmaUri-End -->

<!-- Device-Properties-DefaultVolume-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the default volume value for a new session.
<!-- Device-Properties-DefaultVolume-Description-End -->

<!-- Device-Properties-DefaultVolume-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-DefaultVolume-Editable-End -->

<!-- Device-Properties-DefaultVolume-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Allowed Values | Range: `[0-100]` |
| Default Value  | 45 |
<!-- Device-Properties-DefaultVolume-DFProperties-End -->

<!-- Device-Properties-DefaultVolume-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-DefaultVolume-Examples-End -->

<!-- Device-Properties-DefaultVolume-End -->

<!-- Device-Properties-DisableSigninSuggestions-Begin -->
### Properties/DisableSigninSuggestions

<!-- Device-Properties-DisableSigninSuggestions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Properties-DisableSigninSuggestions-Applicability-End -->

<!-- Device-Properties-DisableSigninSuggestions-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/DisableSigninSuggestions
```
<!-- Device-Properties-DisableSigninSuggestions-OmaUri-End -->

<!-- Device-Properties-DisableSigninSuggestions-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to disable auto-populating of the sign-in dialog with invitees from scheduled meetings. If this setting is true, the sign-in dialog won't be populated. If false, the dialog will auto-populate.
<!-- Device-Properties-DisableSigninSuggestions-Description-End -->

<!-- Device-Properties-DisableSigninSuggestions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-DisableSigninSuggestions-Editable-End -->

<!-- Device-Properties-DisableSigninSuggestions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
<!-- Device-Properties-DisableSigninSuggestions-DFProperties-End -->

<!-- Device-Properties-DisableSigninSuggestions-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Dialog will auto-populate. |
| true | Sign-in dialog won't be populated. |
<!-- Device-Properties-DisableSigninSuggestions-AllowedValues-End -->

<!-- Device-Properties-DisableSigninSuggestions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-DisableSigninSuggestions-Examples-End -->

<!-- Device-Properties-DisableSigninSuggestions-End -->

<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-Begin -->
### Properties/DoNotShowMyMeetingsAndFiles

<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-Applicability-End -->

<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/DoNotShowMyMeetingsAndFiles
```
<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-OmaUri-End -->

<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to disable the "My meetings and files" feature in the Start menu, which shows the signed-in user's meetings and files from Office 365. If this setting is true, the "My meetings and files" feature won't be shown. When false, the "My meetings and files" feature will be shown.
<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-Description-End -->

<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-Editable-End -->

<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-DFProperties-End -->

<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| true | "My meetings and files" feature won't be shown. |
| false (Default) | The "My meetings and files" feature will be shown. |
<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-AllowedValues-End -->

<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-Examples-End -->

<!-- Device-Properties-DoNotShowMyMeetingsAndFiles-End -->

<!-- Device-Properties-FriendlyName-Begin -->
### Properties/FriendlyName

<!-- Device-Properties-FriendlyName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Properties-FriendlyName-Applicability-End -->

<!-- Device-Properties-FriendlyName-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/FriendlyName
```
<!-- Device-Properties-FriendlyName-OmaUri-End -->

<!-- Device-Properties-FriendlyName-Description-Begin -->
<!-- Description-Source-DDF -->
Friendly name of the device. Specifies the name that users see when they want to wirelessly project to the device.
<!-- Device-Properties-FriendlyName-Description-End -->

<!-- Device-Properties-FriendlyName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-FriendlyName-Editable-End -->

<!-- Device-Properties-FriendlyName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-Properties-FriendlyName-DFProperties-End -->

<!-- Device-Properties-FriendlyName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-FriendlyName-Examples-End -->

<!-- Device-Properties-FriendlyName-End -->

<!-- Device-Properties-ProxyServers-Begin -->
### Properties/ProxyServers

<!-- Device-Properties-ProxyServers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Properties-ProxyServers-Applicability-End -->

<!-- Device-Properties-ProxyServers-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/ProxyServers
```
<!-- Device-Properties-ProxyServers-OmaUri-End -->

<!-- Device-Properties-ProxyServers-Description-Begin -->
<!-- Description-Source-DDF -->
The list of known proxy servers to provide.
<!-- Device-Properties-ProxyServers-Description-End -->

<!-- Device-Properties-ProxyServers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Specifies hostnames of proxy servers to automatically provide device account credentials to before any user interaction (if AllowAutoProxyAuth is enabled). This is a semi-colon separated list of server names (FQDN), without any extra prefixes (for example, `https://`).
<!-- Device-Properties-ProxyServers-Editable-End -->

<!-- Device-Properties-ProxyServers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Delete, Get, Replace |
<!-- Device-Properties-ProxyServers-DFProperties-End -->

<!-- Device-Properties-ProxyServers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-ProxyServers-Examples-End -->

<!-- Device-Properties-ProxyServers-End -->

<!-- Device-Properties-ScreenTimeout-Begin -->
### Properties/ScreenTimeout

<!-- Device-Properties-ScreenTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Properties-ScreenTimeout-Applicability-End -->

<!-- Device-Properties-ScreenTimeout-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/ScreenTimeout
```
<!-- Device-Properties-ScreenTimeout-OmaUri-End -->

<!-- Device-Properties-ScreenTimeout-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the number of minutes until the Hub screen turns off.
<!-- Device-Properties-ScreenTimeout-Description-End -->

<!-- Device-Properties-ScreenTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-ScreenTimeout-Editable-End -->

<!-- Device-Properties-ScreenTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 5 |
<!-- Device-Properties-ScreenTimeout-DFProperties-End -->

<!-- Device-Properties-ScreenTimeout-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Never time out. |
| 1 | 1 minute. |
| 2 | 2 minutes. |
| 3 | 3 minutes. |
| 5 (Default) | 5 minutes. |
| 10 | 10 minutes. |
| 15 | 15 minutes. |
| 30 | 30 minutes. |
| 60 | 1 hour. |
| 120 | 2 hours. |
| 240 | 4 hours. |
<!-- Device-Properties-ScreenTimeout-AllowedValues-End -->

<!-- Device-Properties-ScreenTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-ScreenTimeout-Examples-End -->

<!-- Device-Properties-ScreenTimeout-End -->

<!-- Device-Properties-SessionTimeout-Begin -->
### Properties/SessionTimeout

<!-- Device-Properties-SessionTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Properties-SessionTimeout-Applicability-End -->

<!-- Device-Properties-SessionTimeout-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/SessionTimeout
```
<!-- Device-Properties-SessionTimeout-OmaUri-End -->

<!-- Device-Properties-SessionTimeout-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the number of minutes until the session times out.
<!-- Device-Properties-SessionTimeout-Description-End -->

<!-- Device-Properties-SessionTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-SessionTimeout-Editable-End -->

<!-- Device-Properties-SessionTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 1 |
<!-- Device-Properties-SessionTimeout-DFProperties-End -->

<!-- Device-Properties-SessionTimeout-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Never time out. |
| 1 (Default) | 1 minute. |
| 2 | 2 minutes. |
| 3 | 3 minutes. |
| 5 | 5 minutes. |
| 10 | 10 minutes. |
| 15 | 15 minutes. |
| 30 | 30 minutes. |
| 60 | 1 hour. |
| 120 | 2 hours. |
| 240 | 4 hours. |
<!-- Device-Properties-SessionTimeout-AllowedValues-End -->

<!-- Device-Properties-SessionTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-SessionTimeout-Examples-End -->

<!-- Device-Properties-SessionTimeout-End -->

<!-- Device-Properties-SleepMode-Begin -->
### Properties/SleepMode

<!-- Device-Properties-SleepMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Properties-SleepMode-Applicability-End -->

<!-- Device-Properties-SleepMode-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/SleepMode
```
<!-- Device-Properties-SleepMode-OmaUri-End -->

<!-- Device-Properties-SleepMode-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the type of sleep mode for the Surface Hub.
<!-- Device-Properties-SleepMode-Description-End -->

<!-- Device-Properties-SleepMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-SleepMode-Editable-End -->

<!-- Device-Properties-SleepMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
<!-- Device-Properties-SleepMode-DFProperties-End -->

<!-- Device-Properties-SleepMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Connected Standby. |
| 1 | Hibernate. |
<!-- Device-Properties-SleepMode-AllowedValues-End -->

<!-- Device-Properties-SleepMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-SleepMode-Examples-End -->

<!-- Device-Properties-SleepMode-End -->

<!-- Device-Properties-SleepTimeout-Begin -->
### Properties/SleepTimeout

<!-- Device-Properties-SleepTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Properties-SleepTimeout-Applicability-End -->

<!-- Device-Properties-SleepTimeout-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/SleepTimeout
```
<!-- Device-Properties-SleepTimeout-OmaUri-End -->

<!-- Device-Properties-SleepTimeout-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the number of minutes until the Hub enters sleep mode.
<!-- Device-Properties-SleepTimeout-Description-End -->

<!-- Device-Properties-SleepTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-SleepTimeout-Editable-End -->

<!-- Device-Properties-SleepTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 5 |
<!-- Device-Properties-SleepTimeout-DFProperties-End -->

<!-- Device-Properties-SleepTimeout-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Never time out. |
| 1 | 1 minute. |
| 2 | 2 minutes. |
| 3 | 3 minutes. |
| 5 (Default) | 5 minutes. |
| 10 | 10 minutes. |
| 15 | 15 minutes. |
| 30 | 30 minutes. |
| 60 | 1 hour. |
| 120 | 2 hours. |
| 240 | 4 hours. |
<!-- Device-Properties-SleepTimeout-AllowedValues-End -->

<!-- Device-Properties-SleepTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-SleepTimeout-Examples-End -->

<!-- Device-Properties-SleepTimeout-End -->

<!-- Device-Properties-SurfaceHubMeetingMode-Begin -->
### Properties/SurfaceHubMeetingMode

<!-- Device-Properties-SurfaceHubMeetingMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 with [KB4015438](https://support.microsoft.com/help/4015438) [10.0.14393.969] and later <br> ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Properties-SurfaceHubMeetingMode-Applicability-End -->

<!-- Device-Properties-SurfaceHubMeetingMode-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/SurfaceHubMeetingMode
```
<!-- Device-Properties-SurfaceHubMeetingMode-OmaUri-End -->

<!-- Device-Properties-SurfaceHubMeetingMode-Description-Begin -->
<!-- Description-Source-DDF -->
Teams mode.
<!-- Device-Properties-SurfaceHubMeetingMode-Description-End -->

<!-- Device-Properties-SurfaceHubMeetingMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-SurfaceHubMeetingMode-Editable-End -->

<!-- Device-Properties-SurfaceHubMeetingMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Delete, Get, Replace |
| Allowed Values | Range: `[0-2]` |
| Default Value  | 0 |
<!-- Device-Properties-SurfaceHubMeetingMode-DFProperties-End -->

<!-- Device-Properties-SurfaceHubMeetingMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-SurfaceHubMeetingMode-Examples-End -->

<!-- Device-Properties-SurfaceHubMeetingMode-End -->

<!-- Device-Properties-VtcAppPackageId-Begin -->
### Properties/VtcAppPackageId

<!-- Device-Properties-VtcAppPackageId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 with [KB4015438](https://support.microsoft.com/help/4015438) [10.0.14393.969] and later <br> ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Properties-VtcAppPackageId-Applicability-End -->

<!-- Device-Properties-VtcAppPackageId-OmaUri-Begin -->
```Device
./Vendor/MSFT/SurfaceHub/Properties/VtcAppPackageId
```
<!-- Device-Properties-VtcAppPackageId-OmaUri-End -->

<!-- Device-Properties-VtcAppPackageId-Description-Begin -->
<!-- Description-Source-DDF -->
App name.
<!-- Device-Properties-VtcAppPackageId-Description-End -->

<!-- Device-Properties-VtcAppPackageId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Properties-VtcAppPackageId-Editable-End -->

<!-- Device-Properties-VtcAppPackageId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Delete, Get, Replace |
<!-- Device-Properties-VtcAppPackageId-DFProperties-End -->

<!-- Device-Properties-VtcAppPackageId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Properties-VtcAppPackageId-Examples-End -->

<!-- Device-Properties-VtcAppPackageId-End -->

<!-- SurfaceHub-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- SurfaceHub-CspMoreInfo-End -->

<!-- SurfaceHub-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
