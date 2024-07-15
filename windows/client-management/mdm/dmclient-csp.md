---
title: DMClient CSP
description: Learn more about the DMClient CSP.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

<!-- DMClient-Begin -->
# DMClient CSP

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- DMClient-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The DMClient configuration service provider (CSP) has more enterprise-specific mobile device management (MDM) configuration settings. These settings identify the device in the enterprise domain, include security mitigation for certificate renewal, and are used for server-triggered enterprise unenrollment.

> [!NOTE]
> The DMClient CSP nodes are intended to be configured by the MDM server to manage device configuration and security features. Custom URI settings for this CSP are not supported for IT admin management scenarios due to the complexity of the settings.
<!-- DMClient-Editable-End -->

<!-- DMClient-Tree-Begin -->
The following list shows the DMClient configuration service provider nodes:

- ./Device/Vendor/MSFT/DMClient
  - [HWDevID](#devicehwdevid)
  - [Provider](#deviceprovider)
    - [{ProviderID}](#deviceproviderproviderid)
      - [AADDeviceID](#deviceproviderprovideridaaddeviceid)
      - [AADResourceID](#deviceproviderprovideridaadresourceid)
      - [AADSendDeviceToken](#deviceproviderprovideridaadsenddevicetoken)
      - [CertRenewTimeStamp](#deviceproviderprovideridcertrenewtimestamp)
      - [CommercialID](#deviceproviderprovideridcommercialid)
      - [ConfigLock](#deviceproviderprovideridconfiglock)
        - [Lock](#deviceproviderprovideridconfiglocklock)
        - [SecureCore](#deviceproviderprovideridconfiglocksecurecore)
        - [UnlockDuration](#deviceproviderprovideridconfiglockunlockduration)
      - [ConfigRefresh](#deviceproviderprovideridconfigrefresh)
        - [Cadence](#deviceproviderprovideridconfigrefreshcadence)
        - [Enabled](#deviceproviderprovideridconfigrefreshenabled)
        - [PausePeriod](#deviceproviderprovideridconfigrefreshpauseperiod)
      - [CustomEnrollmentCompletePage](#deviceproviderprovideridcustomenrollmentcompletepage)
        - [BodyText](#deviceproviderprovideridcustomenrollmentcompletepagebodytext)
        - [HyperlinkHref](#deviceproviderprovideridcustomenrollmentcompletepagehyperlinkhref)
        - [HyperlinkText](#deviceproviderprovideridcustomenrollmentcompletepagehyperlinktext)
        - [Title](#deviceproviderprovideridcustomenrollmentcompletepagetitle)
      - [EnableOmaDmKeepAliveMessage](#deviceproviderprovideridenableomadmkeepalivemessage)
      - [EnhancedAppLayerSecurity](#deviceproviderprovideridenhancedapplayersecurity)
        - [Cert0](#deviceproviderprovideridenhancedapplayersecuritycert0)
        - [Cert1](#deviceproviderprovideridenhancedapplayersecuritycert1)
        - [SecurityMode](#deviceproviderprovideridenhancedapplayersecuritysecuritymode)
        - [UseCertIfRevocationCheckOffline](#deviceproviderprovideridenhancedapplayersecurityusecertifrevocationcheckoffline)
      - [EnrollmentType](#deviceproviderprovideridenrollmenttype)
      - [EntDeviceName](#deviceproviderprovideridentdevicename)
      - [EntDMID](#deviceproviderprovideridentdmid)
      - [ExchangeID](#deviceproviderprovideridexchangeid)
      - [FirstSyncStatus](#deviceproviderprovideridfirstsyncstatus)
        - [AllowCollectLogsButton](#deviceproviderprovideridfirstsyncstatusallowcollectlogsbutton)
        - [BlockInStatusPage](#deviceproviderprovideridfirstsyncstatusblockinstatuspage)
        - [CustomErrorText](#deviceproviderprovideridfirstsyncstatuscustomerrortext)
        - [ExpectedModernAppPackages](#deviceproviderprovideridfirstsyncstatusexpectedmodernapppackages)
        - [ExpectedMSIAppPackages](#deviceproviderprovideridfirstsyncstatusexpectedmsiapppackages)
        - [ExpectedNetworkProfiles](#deviceproviderprovideridfirstsyncstatusexpectednetworkprofiles)
        - [ExpectedPFXCerts](#deviceproviderprovideridfirstsyncstatusexpectedpfxcerts)
        - [ExpectedPolicies](#deviceproviderprovideridfirstsyncstatusexpectedpolicies)
        - [ExpectedSCEPCerts](#deviceproviderprovideridfirstsyncstatusexpectedscepcerts)
        - [IsSyncDone](#deviceproviderprovideridfirstsyncstatusissyncdone)
        - [ServerHasFinishedProvisioning](#deviceproviderprovideridfirstsyncstatusserverhasfinishedprovisioning)
        - [SkipDeviceStatusPage](#deviceproviderprovideridfirstsyncstatusskipdevicestatuspage)
        - [SkipUserStatusPage](#deviceproviderprovideridfirstsyncstatusskipuserstatuspage)
        - [TimeOutUntilSyncFailure](#deviceproviderprovideridfirstsyncstatustimeoutuntilsyncfailure)
        - [WasDeviceSuccessfullyProvisioned](#deviceproviderprovideridfirstsyncstatuswasdevicesuccessfullyprovisioned)
      - [ForceAadToken](#deviceproviderprovideridforceaadtoken)
      - [HelpEmailAddress](#deviceproviderprovideridhelpemailaddress)
      - [HelpPhoneNumber](#deviceproviderprovideridhelpphonenumber)
      - [HelpWebsite](#deviceproviderprovideridhelpwebsite)
      - [HWDevID](#deviceproviderprovideridhwdevid)
      - [LinkedEnrollment](#deviceproviderprovideridlinkedenrollment)
        - [DiscoveryEndpoint](#deviceproviderprovideridlinkedenrollmentdiscoveryendpoint)
        - [Enroll](#deviceproviderprovideridlinkedenrollmentenroll)
        - [EnrollStatus](#deviceproviderprovideridlinkedenrollmentenrollstatus)
        - [LastError](#deviceproviderprovideridlinkedenrollmentlasterror)
        - [Unenroll](#deviceproviderprovideridlinkedenrollmentunenroll)
      - [ManagementServerAddressList](#deviceproviderprovideridmanagementserveraddresslist)
      - [ManagementServerToUpgradeTo](#deviceproviderprovideridmanagementservertoupgradeto)
      - [ManagementServiceAddress](#deviceproviderprovideridmanagementserviceaddress)
      - [MaxSyncApplicationVersion](#deviceproviderprovideridmaxsyncapplicationversion)
      - [MultipleSession](#deviceproviderprovideridmultiplesession)
        - [IntervalForScheduledRetriesForUserSession](#deviceproviderprovideridmultiplesessionintervalforscheduledretriesforusersession)
        - [NumAllowedConcurrentUserSessionAtUserLogonSync](#deviceproviderprovideridmultiplesessionnumallowedconcurrentusersessionatuserlogonsync)
        - [NumAllowedConcurrentUserSessionForBackgroundSync](#deviceproviderprovideridmultiplesessionnumallowedconcurrentusersessionforbackgroundsync)
        - [NumberOfScheduledRetriesForUserSession](#deviceproviderprovideridmultiplesessionnumberofscheduledretriesforusersession)
      - [NumberOfDaysAfterLostContactToUnenroll](#deviceproviderprovideridnumberofdaysafterlostcontacttounenroll)
      - [Poll](#deviceproviderprovideridpoll)
        - [AllUsersPollOnFirstLogin](#deviceproviderprovideridpollalluserspollonfirstlogin)
        - [IntervalForFirstSetOfRetries](#deviceproviderprovideridpollintervalforfirstsetofretries)
        - [IntervalForRemainingScheduledRetries](#deviceproviderprovideridpollintervalforremainingscheduledretries)
        - [IntervalForSecondSetOfRetries](#deviceproviderprovideridpollintervalforsecondsetofretries)
        - [NumberOfFirstRetries](#deviceproviderprovideridpollnumberoffirstretries)
        - [NumberOfRemainingScheduledRetries](#deviceproviderprovideridpollnumberofremainingscheduledretries)
        - [NumberOfSecondRetries](#deviceproviderprovideridpollnumberofsecondretries)
        - [PollOnLogin](#deviceproviderprovideridpollpollonlogin)
      - [PublisherDeviceID](#deviceproviderprovideridpublisherdeviceid)
      - [Push](#deviceproviderprovideridpush)
        - [ChannelURI](#deviceproviderprovideridpushchanneluri)
        - [PFN](#deviceproviderprovideridpushpfn)
        - [Status](#deviceproviderprovideridpushstatus)
      - [Recovery](#deviceproviderprovideridrecovery)
        - [AllowRecovery](#deviceproviderprovideridrecoveryallowrecovery)
        - [InitiateRecovery](#deviceproviderprovideridrecoveryinitiaterecovery)
        - [RecoveryStatus](#deviceproviderprovideridrecoveryrecoverystatus)
      - [RequireMessageSigning](#deviceproviderprovideridrequiremessagesigning)
      - [SignedEntDMID](#deviceproviderprovideridsignedentdmid)
      - [SyncApplicationVersion](#deviceproviderprovideridsyncapplicationversion)
      - [Unenroll](#deviceproviderprovideridunenroll)
      - [UPN](#deviceproviderprovideridupn)
  - [Unenroll](#deviceunenroll)
  - [UpdateManagementServiceAddress](#deviceupdatemanagementserviceaddress)
- ./User/Vendor/MSFT/DMClient
  - [Provider](#userprovider)
    - [{ProviderID}](#userproviderproviderid)
      - [FirstSyncStatus](#userproviderprovideridfirstsyncstatus)
        - [AllowCollectLogsButton](#userproviderprovideridfirstsyncstatusallowcollectlogsbutton)
        - [CustomErrorText](#userproviderprovideridfirstsyncstatuscustomerrortext)
        - [ExpectedModernAppPackages](#userproviderprovideridfirstsyncstatusexpectedmodernapppackages)
        - [ExpectedMSIAppPackages](#userproviderprovideridfirstsyncstatusexpectedmsiapppackages)
        - [ExpectedNetworkProfiles](#userproviderprovideridfirstsyncstatusexpectednetworkprofiles)
        - [ExpectedPFXCerts](#userproviderprovideridfirstsyncstatusexpectedpfxcerts)
        - [ExpectedPolicies](#userproviderprovideridfirstsyncstatusexpectedpolicies)
        - [ExpectedSCEPCerts](#userproviderprovideridfirstsyncstatusexpectedscepcerts)
        - [IsSyncDone](#userproviderprovideridfirstsyncstatusissyncdone)
        - [ServerHasFinishedProvisioning](#userproviderprovideridfirstsyncstatusserverhasfinishedprovisioning)
        - [WasDeviceSuccessfullyProvisioned](#userproviderprovideridfirstsyncstatuswasdevicesuccessfullyprovisioned)
<!-- DMClient-Tree-End -->

<!-- Device-HWDevID-Begin -->
## Device/HWDevID

<!-- Device-HWDevID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-HWDevID-Applicability-End -->

<!-- Device-HWDevID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/HWDevID
```
<!-- Device-HWDevID-OmaUri-End -->

<!-- Device-HWDevID-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the hardware device ID.
<!-- Device-HWDevID-Description-End -->

<!-- Device-HWDevID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-HWDevID-Editable-End -->

<!-- Device-HWDevID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-HWDevID-DFProperties-End -->

<!-- Device-HWDevID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-HWDevID-Examples-End -->

<!-- Device-HWDevID-End -->

<!-- Device-Provider-Begin -->
## Device/Provider

<!-- Device-Provider-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-Applicability-End -->

<!-- Device-Provider-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider
```
<!-- Device-Provider-OmaUri-End -->

<!-- Device-Provider-Description-Begin -->
<!-- Description-Source-DDF -->
The root node for all settings that belong to a single management server.
<!-- Device-Provider-Description-End -->

<!-- Device-Provider-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-Editable-End -->

<!-- Device-Provider-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Provider-DFProperties-End -->

<!-- Device-Provider-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-Examples-End -->

<!-- Device-Provider-End -->

<!-- Device-Provider-{ProviderID}-Begin -->
### Device/Provider/{ProviderID}

<!-- Device-Provider-{ProviderID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Applicability-End -->

<!-- Device-Provider-{ProviderID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}
```
<!-- Device-Provider-{ProviderID}-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains the URI-encoded value of the bootstrapped device management account's Provider ID. Scope is dynamic. This value is set and controlled by the MDM server. As a best practice, use text that doesn't require XML/URI escaping.
<!-- Device-Provider-{ProviderID}-Description-End -->

<!-- Device-Provider-{ProviderID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Editable-End -->

<!-- Device-Provider-{ProviderID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- Device-Provider-{ProviderID}-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Examples-End -->

<!-- Device-Provider-{ProviderID}-End -->

<!-- Device-Provider-{ProviderID}-AADDeviceID-Begin -->
#### Device/Provider/{ProviderID}/AADDeviceID

<!-- Device-Provider-{ProviderID}-AADDeviceID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Provider-{ProviderID}-AADDeviceID-Applicability-End -->

<!-- Device-Provider-{ProviderID}-AADDeviceID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/AADDeviceID
```
<!-- Device-Provider-{ProviderID}-AADDeviceID-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-AADDeviceID-Description-Begin -->
<!-- Description-Source-DDF -->
Device ID used for Microsoft Entra device registration.
<!-- Device-Provider-{ProviderID}-AADDeviceID-Description-End -->

<!-- Device-Provider-{ProviderID}-AADDeviceID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-AADDeviceID-Editable-End -->

<!-- Device-Provider-{ProviderID}-AADDeviceID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-AADDeviceID-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-AADDeviceID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-AADDeviceID-Examples-End -->

<!-- Device-Provider-{ProviderID}-AADDeviceID-End -->

<!-- Device-Provider-{ProviderID}-AADResourceID-Begin -->
#### Device/Provider/{ProviderID}/AADResourceID

<!-- Device-Provider-{ProviderID}-AADResourceID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-AADResourceID-Applicability-End -->

<!-- Device-Provider-{ProviderID}-AADResourceID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/AADResourceID
```
<!-- Device-Provider-{ProviderID}-AADResourceID-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-AADResourceID-Description-Begin -->
<!-- Description-Source-DDF -->
This is the ResourceID used when requesting the user token from the OMA DM session for Microsoft Entra enrollments (Microsoft Entra join or Add Accounts). The token is audience-specific, which allows for different service principals (enrollment vs. device management). It can be an application ID or the endpoint that you are trying to access.
<!-- Device-Provider-{ProviderID}-AADResourceID-Description-End -->

<!-- Device-Provider-{ProviderID}-AADResourceID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
For more information about Microsoft Entra enrollment, see [Microsoft Entra integration with MDM](../azure-active-directory-integration-with-mdm.md).
<!-- Device-Provider-{ProviderID}-AADResourceID-Editable-End -->

<!-- Device-Provider-{ProviderID}-AADResourceID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-Provider-{ProviderID}-AADResourceID-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-AADResourceID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-AADResourceID-Examples-End -->

<!-- Device-Provider-{ProviderID}-AADResourceID-End -->

<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-Begin -->
#### Device/Provider/{ProviderID}/AADSendDeviceToken

<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-Applicability-End -->

<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/AADSendDeviceToken
```
<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-Description-Begin -->
<!-- Description-Source-DDF -->
For Microsoft Entra ID backed enrollments, this will cause the client to send a Device Token if the User Token can't be obtained.
<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-Description-End -->

<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-Editable-End -->

<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Don't send Device Token if User Token can't be obtained. |
| true | Send Device Token if User Token can't be obtained. |
<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-Examples-End -->

<!-- Device-Provider-{ProviderID}-AADSendDeviceToken-End -->

<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-Begin -->
#### Device/Provider/{ProviderID}/CertRenewTimeStamp

<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-Applicability-End -->

<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/CertRenewTimeStamp
```
<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-Description-Begin -->
<!-- Description-Source-DDF -->
The time in OMA DM standard time format. This node is designed to reduce the risk of the certificate being used by another device. The device records the time that the new certificate was created.
<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-Description-End -->

<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-Editable-End -->

<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-Examples-End -->

<!-- Device-Provider-{ProviderID}-CertRenewTimeStamp-End -->

<!-- Device-Provider-{ProviderID}-CommercialID-Begin -->
#### Device/Provider/{ProviderID}/CommercialID

<!-- Device-Provider-{ProviderID}-CommercialID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Provider-{ProviderID}-CommercialID-Applicability-End -->

<!-- Device-Provider-{ProviderID}-CommercialID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/CommercialID
```
<!-- Device-Provider-{ProviderID}-CommercialID-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-CommercialID-Description-Begin -->
<!-- Description-Source-DDF -->
Configures the identifier used to uniquely associate this diagnostic data of this device as belonging to a given organization. If your organization is participating in a program that requires this device to be identified as belonging to your organization then use this setting to provide that identification. The value for this setting will be provided by Microsoft as part of the onboarding process for the program. If you disable or don't configure this policy setting, then Microsoft won't be able to use this identifier to associate this machine and its diagnostic data with your organization.
<!-- Device-Provider-{ProviderID}-CommercialID-Description-End -->

<!-- Device-Provider-{ProviderID}-CommercialID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CommercialID-Editable-End -->

<!-- Device-Provider-{ProviderID}-CommercialID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-CommercialID-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-CommercialID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CommercialID-Examples-End -->

<!-- Device-Provider-{ProviderID}-CommercialID-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-Begin -->
#### Device/Provider/{ProviderID}/ConfigLock

<!-- Device-Provider-{ProviderID}-ConfigLock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-Provider-{ProviderID}-ConfigLock-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/ConfigLock
```
<!-- Device-Provider-{ProviderID}-ConfigLock-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Provider-{ProviderID}-ConfigLock-Description-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This node enables [Config Lock](../config-lock.md) feature. If enabled, policies defined in the Config Lock document will be monitored and quickly remediated when a configuration drift is detected.

> [!NOTE]
> If the device isn't a Secured-core PC, then this feature won't work. To know more, see [Secured-core PC](/windows-hardware/design/device-experiences/oem-highly-secure).
<!-- Device-Provider-{ProviderID}-ConfigLock-Editable-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-ConfigLock-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigLock-Examples-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-Begin -->
##### Device/Provider/{ProviderID}/ConfigLock/Lock

<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/ConfigLock/Lock
```
<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-Description-Begin -->
<!-- Description-Source-DDF -->
This node specifies how the client will perform the lock mode for SecureCore PC. 0: unlock; 1: lock. The default value is 0.
<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-Description-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-Editable-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Unlock. |
| 1 | Lock. |
<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-Examples-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-Lock-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-Begin -->
##### Device/Provider/{ProviderID}/ConfigLock/SecureCore

<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/ConfigLock/SecureCore
```
<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-Description-Begin -->
<!-- Description-Source-DDF -->
The node returns the boolean value whether the device is a SecureCore PC.
<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-Description-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-Editable-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-Examples-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-SecureCore-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-Begin -->
##### Device/Provider/{ProviderID}/ConfigLock/UnlockDuration

<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/ConfigLock/UnlockDuration
```
<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-Description-Begin -->
<!-- Description-Source-DDF -->
This node, when it's set, tells the client to set how many minutes the device should be temporarily unlocked from SecureCore settings protection. The default value is 480.
<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-Description-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-Editable-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 480 |
<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-Examples-End -->

<!-- Device-Provider-{ProviderID}-ConfigLock-UnlockDuration-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Begin -->
#### Device/Provider/{ProviderID}/ConfigRefresh

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000.2836] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.3235] and later <br> ✅ Windows Insider Preview |
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/ConfigRefresh
```
<!-- Device-Provider-{ProviderID}-ConfigRefresh-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Description-Begin -->
<!-- Description-Source-DDF -->
Parent node for ConfigRefresh nodes.
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Description-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Editable-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Provider-{ProviderID}-ConfigRefresh-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Examples-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-Begin -->
##### Device/Provider/{ProviderID}/ConfigRefresh/Cadence

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000.2836] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.3235] and later <br> ✅ Windows Insider Preview |
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/ConfigRefresh/Cadence
```
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-Description-Begin -->
<!-- Description-Source-DDF -->
This node determines the number of minutes between refreshes.
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-Description-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-Editable-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[30-1440]` |
| Default Value  | 90 |
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-Examples-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Cadence-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-Begin -->
##### Device/Provider/{ProviderID}/ConfigRefresh/Enabled

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000.2836] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.3235] and later <br> ✅ Windows Insider Preview |
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/ConfigRefresh/Enabled
```
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-Description-Begin -->
<!-- Description-Source-DDF -->
This node determines whether or not a periodic settings refresh for MDM policies will occur.
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-Description-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-Editable-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| true | Enabled. |
| false (Default) | Disabled. |
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-Examples-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-Enabled-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-Begin -->
##### Device/Provider/{ProviderID}/ConfigRefresh/PausePeriod

<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000.2836] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.3235] and later <br> ✅ Windows Insider Preview |
<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/ConfigRefresh/PausePeriod
```
<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-Description-Begin -->
<!-- Description-Source-DDF -->
This node determines the number of minutes ConfigRefresh should be paused for.
<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-Description-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-Editable-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1440]` |
| Default Value  | 0 |
<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-Examples-End -->

<!-- Device-Provider-{ProviderID}-ConfigRefresh-PausePeriod-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Begin -->
#### Device/Provider/{ProviderID}/CustomEnrollmentCompletePage

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Applicability-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/CustomEnrollmentCompletePage
```
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Description-Begin -->
<!-- Description-Source-DDF -->
These nodes provision custom text for the enrollment page.
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Description-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Editable-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Examples-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-Begin -->
##### Device/Provider/{ProviderID}/CustomEnrollmentCompletePage/BodyText

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-Applicability-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/CustomEnrollmentCompletePage/BodyText
```
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the body text of the all done page that appears at the end of the MDM enrollment flow.
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-Description-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-Editable-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-Examples-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-BodyText-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-Begin -->
##### Device/Provider/{ProviderID}/CustomEnrollmentCompletePage/HyperlinkHref

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-Applicability-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/CustomEnrollmentCompletePage/HyperlinkHref
```
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the URL that's shown at the end of the MDM enrollment flow.
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-Description-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-Editable-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-Examples-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkHref-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-Begin -->
##### Device/Provider/{ProviderID}/CustomEnrollmentCompletePage/HyperlinkText

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-Applicability-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/CustomEnrollmentCompletePage/HyperlinkText
```
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the display text for the URL that's shown at the end of the MDM enrollment flow.
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-Description-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-Editable-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-Examples-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-HyperlinkText-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-Begin -->
##### Device/Provider/{ProviderID}/CustomEnrollmentCompletePage/Title

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-Applicability-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/CustomEnrollmentCompletePage/Title
```
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the title of the all done page that appears at the end of the MDM enrollment flow.
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-Description-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-Editable-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-Examples-End -->

<!-- Device-Provider-{ProviderID}-CustomEnrollmentCompletePage-Title-End -->

<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-Begin -->
#### Device/Provider/{ProviderID}/EnableOmaDmKeepAliveMessage

<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-Applicability-End -->

<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/EnableOmaDmKeepAliveMessage
```
<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-Description-Begin -->
<!-- Description-Source-DDF -->
A boolean value that specifies whether the DM client should send out a request pending alert in case the device response to a DM request is too slow. When the server sends a configuration request, sometimes it takes the client longer than the HTTP timeout to get all information together and then the session ends unexpectedly due to timeout. By default, the MDM client doesn't send an alert that a DM request is pending. To work around the timeout, you can use this setting to keep the session alive by sending a heartbeat message back to the server. This is achieved by sending a SyncML message with a specific device alert element in the body until the client is able to respond back to the server with the requested information.
<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-Description-End -->

<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-Editable-End -->

<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Enable message. |
| true | Disable message. |
<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Here's an example of DM message sent by the device when it's in pending state:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncHdr>
<VerDTD>1.2</VerDTD>
        <VerProto>DM/1.2</VerProto>
        <SessionID>10</SessionID>
        <MsgID>2</MsgID>
      <Target>
         <LocURI>https://www.contoso.com/mgmt-server</LocURI>
      </Target>
      <Source>
         <LocURI>{unique device ID}</LocURI>
      </Source>
  </SyncHdr>
  <SyncBody>
<Alert>
    <CmdID>2</CmdID>
    <Data>1224</Data>
    <Item>
        <Meta>
            <Type xmlns="syncml:metinf">Reversed-Domain-Name:com.microsoft.mdm.requestpending</Type>
        </Meta>
        <Data>1</Data>
    </Item>
</Alert>
  </SyncBody>
</SyncML>
```
<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-Examples-End -->

<!-- Device-Provider-{ProviderID}-EnableOmaDmKeepAliveMessage-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Begin -->
#### Device/Provider/{ProviderID}/EnhancedAppLayerSecurity

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Applicability-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/EnhancedAppLayerSecurity
```
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Description-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Editable-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Examples-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-Begin -->
##### Device/Provider/{ProviderID}/EnhancedAppLayerSecurity/Cert0

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-Applicability-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/EnhancedAppLayerSecurity/Cert0
```
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-Description-Begin -->
<!-- Description-Source-DDF -->
The node contains the primary certificate - the public key to use.
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-Description-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-Editable-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-Examples-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert0-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-Begin -->
##### Device/Provider/{ProviderID}/EnhancedAppLayerSecurity/Cert1

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-Applicability-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/EnhancedAppLayerSecurity/Cert1
```
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-Description-Begin -->
<!-- Description-Source-DDF -->
The node contains the secondary certificate - the public key to use.
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-Description-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-Editable-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-Examples-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-Cert1-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-Begin -->
##### Device/Provider/{ProviderID}/EnhancedAppLayerSecurity/SecurityMode

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-Applicability-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/EnhancedAppLayerSecurity/SecurityMode
```
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-Description-Begin -->
<!-- Description-Source-DDF -->
This node specifies how the client will perform the app layer signing and encryption. 0: no op; 1: sign-only; 2: encrypt only; 3: sign and encrypt. The default value is 0.
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-Description-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-Editable-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | No op. |
| 1 | Sign only. |
| 2 | Encrypt only. |
| 3 | Sign and encrypt. |
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-Examples-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-SecurityMode-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-Begin -->
##### Device/Provider/{ProviderID}/EnhancedAppLayerSecurity/UseCertIfRevocationCheckOffline

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-Applicability-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/EnhancedAppLayerSecurity/UseCertIfRevocationCheckOffline
```
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-Description-Begin -->
<!-- Description-Source-DDF -->
This node, when it's set, tells the client to use the certificate even when the client can't check the certificate's revocation status because the device is offline. The default value is set.
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-Description-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-Editable-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | False. |
| true | True. |
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-Examples-End -->

<!-- Device-Provider-{ProviderID}-EnhancedAppLayerSecurity-UseCertIfRevocationCheckOffline-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentType-Begin -->
#### Device/Provider/{ProviderID}/EnrollmentType

<!-- Device-Provider-{ProviderID}-EnrollmentType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Provider-{ProviderID}-EnrollmentType-Applicability-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/EnrollmentType
```
<!-- Device-Provider-{ProviderID}-EnrollmentType-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentType-Description-Begin -->
<!-- Description-Source-DDF -->
Type of MDM enrollment (Device or Full).
<!-- Device-Provider-{ProviderID}-EnrollmentType-Description-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnrollmentType-Editable-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-EnrollmentType-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnrollmentType-Examples-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentType-End -->

<!-- Device-Provider-{ProviderID}-EntDeviceName-Begin -->
#### Device/Provider/{ProviderID}/EntDeviceName

<!-- Device-Provider-{ProviderID}-EntDeviceName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-EntDeviceName-Applicability-End -->

<!-- Device-Provider-{ProviderID}-EntDeviceName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/EntDeviceName
```
<!-- Device-Provider-{ProviderID}-EntDeviceName-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-EntDeviceName-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that contains the user-friendly device name used by the IT admin console. The value is set during the enrollment process by way of the DMClient CSP. You can retrieve it later during an OMA DM session.
<!-- Device-Provider-{ProviderID}-EntDeviceName-Description-End -->

<!-- Device-Provider-{ProviderID}-EntDeviceName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EntDeviceName-Editable-End -->

<!-- Device-Provider-{ProviderID}-EntDeviceName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-EntDeviceName-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-EntDeviceName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EntDeviceName-Examples-End -->

<!-- Device-Provider-{ProviderID}-EntDeviceName-End -->

<!-- Device-Provider-{ProviderID}-EntDMID-Begin -->
#### Device/Provider/{ProviderID}/EntDMID

<!-- Device-Provider-{ProviderID}-EntDMID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-EntDMID-Applicability-End -->

<!-- Device-Provider-{ProviderID}-EntDMID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/EntDMID
```
<!-- Device-Provider-{ProviderID}-EntDMID-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-EntDMID-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that contains the unique enterprise device ID. The value is set by the management server during the enrollment process by way of the DMClient CSP. You can retrieve it later during an OMA DM session.
<!-- Device-Provider-{ProviderID}-EntDMID-Description-End -->

<!-- Device-Provider-{ProviderID}-EntDMID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Although hardware device IDs are guaranteed to be unique, there's a concern that this isn't ultimately enforceable during a DM session. The device ID could be changed through the w7 APPLICATION CSP's **USEHWDEVID** node by another management server. So during enterprise bootstrap and enrollment, a new device ID is specified by the enterprise server. This node is required and must be set by the server before the client certificate renewal is triggered.
<!-- Device-Provider-{ProviderID}-EntDMID-Editable-End -->

<!-- Device-Provider-{ProviderID}-EntDMID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-EntDMID-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-EntDMID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EntDMID-Examples-End -->

<!-- Device-Provider-{ProviderID}-EntDMID-End -->

<!-- Device-Provider-{ProviderID}-ExchangeID-Begin -->
#### Device/Provider/{ProviderID}/ExchangeID

<!-- Device-Provider-{ProviderID}-ExchangeID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-ExchangeID-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ExchangeID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/ExchangeID
```
<!-- Device-Provider-{ProviderID}-ExchangeID-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ExchangeID-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that contains the unique Exchange device ID used by the Outlook account of the user the session is running against. This is useful for the enterprise management server to correlate and merge records for a device that's managed by exchange and natively managed by a dedicated management server.
<!-- Device-Provider-{ProviderID}-ExchangeID-Description-End -->

<!-- Device-Provider-{ProviderID}-ExchangeID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> In some cases, this node will return "not found" until the user sets up their email.
<!-- Device-Provider-{ProviderID}-ExchangeID-Editable-End -->

<!-- Device-Provider-{ProviderID}-ExchangeID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-ExchangeID-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ExchangeID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<Get>
   <CmdID>12</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/DMClient/Provider/<ProviderID>/ExchangeID</LocURI>
      </Target>
   </Item>
</Get>
```
<!-- Device-Provider-{ProviderID}-ExchangeID-Examples-End -->

<!-- Device-Provider-{ProviderID}-ExchangeID-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-Begin -->
#### Device/Provider/{ProviderID}/FirstSyncStatus

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/AllowCollectLogsButton

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/AllowCollectLogsButton
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Description-Begin -->
<!-- Description-Source-DDF -->
This node decides whether or not the MDM progress page displays the Collect Logs button. This node only applies to the device MDM status page.
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Don't show the Collect Logs button on the progress page. |
| true | Show the Collect Logs button on the progress page. |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/BlockInStatusPage

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/BlockInStatusPage
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-Description-Begin -->
<!-- Description-Source-DDF -->
Device Only. This node determines whether or not the MDM progress page is blocking in the Microsoft Entra joined or DJ++ case, as well as which remediation options are available.
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-AllowedValues-Begin -->
**Allowed values**:

| Flag | Description |
|:--|:--|
| 0x0 | Allow the user to exit the page before provisioning completes. |
| 0x1 | Block the user on the page and show the Reset PC button on failure. |
| 0x2 | Block the user on the page and show the Try Again button on failure. |
| 0x4 | Block the user on the page and show the Continue Anyway button on failure. |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-BlockInStatusPage-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/CustomErrorText

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/CustomErrorText
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Description-Begin -->
<!-- Description-Source-DDF -->
This node allows the MDM to set custom error text, detailing what the user needs to do in case of error. This node only applies to the user MDM status page (on a per user basis).
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/ExpectedModernAppPackages

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ExpectedModernAppPackages
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains a list of LocURIs that refer to App Packages the ISV expects to provision via EnterpriseModernAppManagement CSP, delimited by the character L"\xF000". The LocURI will be followed by a semicolon and a number, representing the number of apps included in the App Package. We won't verify that number. E. G. ./Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/PackageFullName/Name;4"\xF000" ./Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/PackageFullName2/Name;2 Which will represent that App Package PackageFullName contains 4 apps, whereas PackageFullName2 contains 2 apps.
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `\xF000`) |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/ExpectedMSIAppPackages

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ExpectedMSIAppPackages
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains a list of LocURIs that refer to App Packages the ISV expects to provision via EnterpriseDesktopAppManagement CSP, delimited by the character L"\xF000". The LocURI will be followed by a semicolon and a number, representing the number of apps included in the App Package. We won't verify that number. E. G. ./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/ProductID1/Status;4"\xF000" ./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/ProductID2/Status;2 Which will represent that App Package ProductID1 contains 4 apps, whereas ProductID2 contains 2 apps.
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `\xF000`) |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/ExpectedNetworkProfiles

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ExpectedNetworkProfiles
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains a list of LocURIs that refer to Wi-Fi profiles and VPN profiles the ISV expects to provision, delimited by the character L"\xF000".
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `\xF000`) |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/ExpectedPFXCerts

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ExpectedPFXCerts
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains a list of LocURIs that refer to certs the ISV expects to provision via ClientCertificateInstall CSP, delimited by the character L"\xF000" (the CSP_LIST_DELIMITER).
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `\xF000`) |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/ExpectedPolicies

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ExpectedPolicies
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains a list of LocURIs that refer to Policies the ISV expects to provision, delimited by the character L"\xF000" (the CSP_LIST_DELIMITER).
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `\xF000`) |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/ExpectedSCEPCerts

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ExpectedSCEPCerts
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains a list of LocURIs that refer to SCEP certs the ISV expects to provision via ClientCertificateInstall CSP, delimited by the character L"\xF000" (the CSP_LIST_DELIMITER).
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `\xF000`) |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/IsSyncDone

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/IsSyncDone
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Description-Begin -->
<!-- Description-Source-DDF -->
This node, when doing a get, tells the server if the "First Syncs" are done and the device is fully provisioned. When doing a Set, this triggers the UX to override whatever state it's in and tell the user that the device is provisioned. It can't be set from True to False (it won't change its mind on whether or not the sync is done), and it can't be set from True to True (to prevent notifications from firing multiple times). This node only applies to the user MDM status page (on a per user basis).
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | The device isn't finished provisioning. |
| true | The device has finished provisioning. |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/ServerHasFinishedProvisioning

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ServerHasFinishedProvisioning
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Description-Begin -->
<!-- Description-Source-DDF -->
This node is set by the server to inform the UX that the server has finished provisioning the device. This was added so that the server can "change its mind" about what it needs to provision on the device. When this node is set, many other DM Client nodes will no longer be able to be changed. If this node isn't True, the UX will consider the provisioning a failure. Once set to true, it would reject attempts to change it back to false with CFGMGR_E_COMMANDNOTALLOWED. This node applies to the per user expected policies and resources lists.
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Server hasn't finished provisioning. |
| true | Server has finished provisioning. |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/SkipDeviceStatusPage

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/SkipDeviceStatusPage
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-Description-Begin -->
<!-- Description-Source-DDF -->
Device only. This node decides whether or not the MDM device progress page skips after Microsoft Entra joined or Microsoft Entra hybrid joined in OOBE.
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Don't skip the device progress page after Microsoft Entra joined or Microsoft Entra hybrid joined in OOBE. |
| true (Default) | Skip the device progress page after Microsoft Entra joined or Microsoft Entra hybrid joined in OOBE. |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipDeviceStatusPage-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/SkipUserStatusPage

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/SkipUserStatusPage
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-Description-Begin -->
<!-- Description-Source-DDF -->
Device only. This node decides whether or not the MDM user progress page skips after Microsoft Entra joined or DJ++ after user login.
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Don't skip the MGM user progress page after Microsoft Entra joined or Microsoft Entra hybrid joined in OOBE. |
| true (Default) | Skip the MGM user progress page after Microsoft Entra joined or Microsoft Entra hybrid joined in OOBE. |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-SkipUserStatusPage-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/TimeOutUntilSyncFailure

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/TimeOutUntilSyncFailure
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-Description-Begin -->
<!-- Description-Source-DDF -->
This node determines how long we will poll until we surface an error message to the user. The unit of measurement is minutes. Default value will be 60, while maximum value will be 1,440 (one day).
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Allowed Values | Range: `[1-1440]` |
| Default Value  | 60 |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-TimeOutUntilSyncFailure-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Begin -->
##### Device/Provider/{ProviderID}/FirstSyncStatus/WasDeviceSuccessfullyProvisioned

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Applicability-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/WasDeviceSuccessfullyProvisioned
```
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Description-Begin -->
<!-- Description-Source-DDF -->
Integer node determining if a Device was Successfully provisioned. 0 is failure, 1 is success, 2 is in progress. Once the value is changed to 0 or 1, the value can't be changed again. The client will change the value of success or failure and update the node. The server can, however, force a failure or success message to appear on the device by setting this value and then setting the IsSyncDone node to true. This node only applies to the user MDM status page (on a per user basis).
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Description-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Editable-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | The device has failed to provision the device. |
| 1 | The device has successfully provisioned the device. |
| 2 | Provisioning is in progress. |
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Examples-End -->

<!-- Device-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-End -->

<!-- Device-Provider-{ProviderID}-ForceAadToken-Begin -->
#### Device/Provider/{ProviderID}/ForceAadToken

<!-- Device-Provider-{ProviderID}-ForceAadToken-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2009 [10.0.19042.1766] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1766] and later <br> ✅ Windows 10, version 21H2 [10.0.19044.1766] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.739] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-Provider-{ProviderID}-ForceAadToken-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ForceAadToken-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/ForceAadToken
```
<!-- Device-Provider-{ProviderID}-ForceAadToken-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ForceAadToken-Description-Begin -->
<!-- Description-Source-DDF -->
Force device to send device Microsoft Entra token during check-in as a separate header.
<!-- Device-Provider-{ProviderID}-ForceAadToken-Description-End -->

<!-- Device-Provider-{ProviderID}-ForceAadToken-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ForceAadToken-Editable-End -->

<!-- Device-Provider-{ProviderID}-ForceAadToken-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-ForceAadToken-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ForceAadToken-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | ForceAadTokenNotDefined: the value isn't defined(default). |
| 1 | AlwaysSendAadDeviceTokenCheckIn: always send Microsoft Entra device token during check-in as a separate header section(not as Bearer token). |
| 2 | Reserved for future. AlwaysSendAadUserTokenCheckin: always send Microsoft Entra user token during check-in as a separate header section(not as Bearer token). |
| 4 | SendAadDeviceTokenForAuth: to replace AADSendDeviceToken, send Microsoft Entra device token for auth as Bearer token. |
| 8 | Reserved for future. ForceAadTokenMaxAllowed: max value allowed. |
<!-- Device-Provider-{ProviderID}-ForceAadToken-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-ForceAadToken-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ForceAadToken-Examples-End -->

<!-- Device-Provider-{ProviderID}-ForceAadToken-End -->

<!-- Device-Provider-{ProviderID}-HelpEmailAddress-Begin -->
#### Device/Provider/{ProviderID}/HelpEmailAddress

<!-- Device-Provider-{ProviderID}-HelpEmailAddress-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-HelpEmailAddress-Applicability-End -->

<!-- Device-Provider-{ProviderID}-HelpEmailAddress-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/HelpEmailAddress
```
<!-- Device-Provider-{ProviderID}-HelpEmailAddress-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-HelpEmailAddress-Description-Begin -->
<!-- Description-Source-DDF -->
The character string that allows the user experience to include a customized help email address that the end user will be able to view and use if they need help or support.
<!-- Device-Provider-{ProviderID}-HelpEmailAddress-Description-End -->

<!-- Device-Provider-{ProviderID}-HelpEmailAddress-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-HelpEmailAddress-Editable-End -->

<!-- Device-Provider-{ProviderID}-HelpEmailAddress-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-HelpEmailAddress-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-HelpEmailAddress-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-HelpEmailAddress-Examples-End -->

<!-- Device-Provider-{ProviderID}-HelpEmailAddress-End -->

<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-Begin -->
#### Device/Provider/{ProviderID}/HelpPhoneNumber

<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-Applicability-End -->

<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/HelpPhoneNumber
```
<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-Description-Begin -->
<!-- Description-Source-DDF -->
The character string that allows the user experience to include a customized help phone number that the end user will be able to view and use if they need help or support.
<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-Description-End -->

<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-Editable-End -->

<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-Examples-End -->

<!-- Device-Provider-{ProviderID}-HelpPhoneNumber-End -->

<!-- Device-Provider-{ProviderID}-HelpWebsite-Begin -->
#### Device/Provider/{ProviderID}/HelpWebsite

<!-- Device-Provider-{ProviderID}-HelpWebsite-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-HelpWebsite-Applicability-End -->

<!-- Device-Provider-{ProviderID}-HelpWebsite-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/HelpWebsite
```
<!-- Device-Provider-{ProviderID}-HelpWebsite-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-HelpWebsite-Description-Begin -->
<!-- Description-Source-DDF -->
The character string that allows the user experience to include a customized help website that the end user will be able to view and use if they need help or support.
<!-- Device-Provider-{ProviderID}-HelpWebsite-Description-End -->

<!-- Device-Provider-{ProviderID}-HelpWebsite-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-HelpWebsite-Editable-End -->

<!-- Device-Provider-{ProviderID}-HelpWebsite-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-HelpWebsite-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-HelpWebsite-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-HelpWebsite-Examples-End -->

<!-- Device-Provider-{ProviderID}-HelpWebsite-End -->

<!-- Device-Provider-{ProviderID}-HWDevID-Begin -->
#### Device/Provider/{ProviderID}/HWDevID

<!-- Device-Provider-{ProviderID}-HWDevID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Provider-{ProviderID}-HWDevID-Applicability-End -->

<!-- Device-Provider-{ProviderID}-HWDevID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/HWDevID
```
<!-- Device-Provider-{ProviderID}-HWDevID-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-HWDevID-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the hardware device ID.
<!-- Device-Provider-{ProviderID}-HWDevID-Description-End -->

<!-- Device-Provider-{ProviderID}-HWDevID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-HWDevID-Editable-End -->

<!-- Device-Provider-{ProviderID}-HWDevID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-HWDevID-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-HWDevID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-HWDevID-Examples-End -->

<!-- Device-Provider-{ProviderID}-HWDevID-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Begin -->
#### Device/Provider/{ProviderID}/LinkedEnrollment

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2009 [10.0.19042.2193] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.2193] and later <br> ✅ Windows 10, version 21H2 [10.0.19044.2193] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.918] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Applicability-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/LinkedEnrollment
```
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Description-Begin -->
<!-- Description-Source-DDF -->
The interior node for linked enrollment.
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Description-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Editable-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Examples-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-Begin -->
##### Device/Provider/{ProviderID}/LinkedEnrollment/DiscoveryEndpoint

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-Applicability-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/LinkedEnrollment/DiscoveryEndpoint
```
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-Description-Begin -->
<!-- Description-Source-DDF -->
Endpoint Discovery is the process where a specific URL (the "discovery endpoint") is accessed, which returns a directory of endpoints for using the system including enrollment. On Get, if the endpoint isn't set, client will return an empty string with S_OK.
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-Description-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-Editable-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-Examples-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-DiscoveryEndpoint-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-Begin -->
##### Device/Provider/{ProviderID}/LinkedEnrollment/Enroll

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2009 [10.0.19042.2193] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.2193] and later <br> ✅ Windows 10, version 21H2 [10.0.19044.2193] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.918] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-Applicability-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/LinkedEnrollment/Enroll
```
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-Description-Begin -->
<!-- Description-Source-DDF -->
This is an execution node and will trigger a silent Declared Configuration unenroll, there is no user interaction needed. On un-enrollment, all the settings/resources set by Declared Configuration will be rolled back (rollback details will be covered later).
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-Description-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is an execution node and will trigger a silent Declared Configuration enrollment, using the Microsoft Entra device token pulled from the Microsoft Entra joined device. There is no user interaction needed. When the **DiscoveryEndpoint** is not set, the Enroll node will fail with `ERROR_FILE_NOT_FOUND (0x80070002)` and there is no scheduled task created for dual enrollment.
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-Editable-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec |
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-Examples-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Enroll-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-Begin -->
##### Device/Provider/{ProviderID}/LinkedEnrollment/EnrollStatus

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2009 [10.0.19042.2193] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.2193] and later <br> ✅ Windows 10, version 21H2 [10.0.19044.2193] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.918] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-Applicability-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/LinkedEnrollment/EnrollStatus
```
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the current enrollment or un-enrollment status of the linked enrollment. Supports Get only.
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-Description-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-Editable-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Undefined. |
| 1 | Enrollment Not started. |
| 2 | Enrollment In Progress. |
| 3 | Enrollment Failed. |
| 4 | Enrollment Succeeded. |
| 5 | Unenrollment Not started. |
| 6 | UnEnrollment In Progress. |
| 7 | UnEnrollment Failed. |
| 8 | UnEnrollment Succeeded. |
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-Examples-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-EnrollStatus-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-Begin -->
##### Device/Provider/{ProviderID}/LinkedEnrollment/LastError

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2009 [10.0.19042.2193] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.2193] and later <br> ✅ Windows 10, version 21H2 [10.0.19044.2193] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.918] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-Applicability-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/LinkedEnrollment/LastError
```
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-Description-Begin -->
<!-- Description-Source-DDF -->
Supports Get Only. Returns the HRESULT for the last error when enroll/unenroll fails.
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-Description-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-Editable-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-Examples-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-LastError-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-Begin -->
##### Device/Provider/{ProviderID}/LinkedEnrollment/Unenroll

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2009 [10.0.19042.2193] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.2193] and later <br> ✅ Windows 10, version 21H2 [10.0.19044.2193] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.918] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-Applicability-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/LinkedEnrollment/Unenroll
```
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-Description-Begin -->
<!-- Description-Source-DDF -->
Trigger Unenroll for the Linked Enrollment.
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-Description-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This is an execution node and will trigger a silent Declared Configuration unenroll, without any user interaction. On un-enrollment, all the settings/resources set by Declared Configuration will be rolled back.
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-Editable-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec |
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-Examples-End -->

<!-- Device-Provider-{ProviderID}-LinkedEnrollment-Unenroll-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-Begin -->
#### Device/Provider/{ProviderID}/ManagementServerAddressList

<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/ManagementServerAddressList
```
<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-Description-Begin -->
<!-- Description-Source-DDF -->
The list of management server URLs in the format `<URL1>` `<URL2>` `<URL3>`, and so on. If there is only one, the angle brackets (<>) aren't required. The `< and >` should be escaped. If ManagementServerAddressList node is set, the device will only use the server URL configured in this node and ignore the ManagementServiceAddress value. When the server isn't responding after a specified number of retries, the device tries to use the next server URL in the list until it gets a successful connection. After the server list is updated, the client uses the updated list at the next session starting with the first on in the list.
<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-Description-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-Editable-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
   <Replace>
       <CmdID>101</CmdID>
       <Item>
           <Target>
               <LocURI>
                  ./Vendor/MSFT/DMClient/Provider/<ProviderID>/ManagementServerAddressList
               </LocURI>
           </Target>
           <Data>&lt;https://server1&gt;&lt;https:// server2&gt; </Data>
       </Item>
   </Replace>
```
<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-Examples-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerAddressList-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-Begin -->
#### Device/Provider/{ProviderID}/ManagementServerToUpgradeTo

<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/ManagementServerToUpgradeTo
```
<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-Description-Begin -->
<!-- Description-Source-DDF -->
Specify the Discovery server URL of the MDM server to upgrade to for a MAM enrolled device.
<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-Description-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-Editable-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-Examples-End -->

<!-- Device-Provider-{ProviderID}-ManagementServerToUpgradeTo-End -->

<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-Begin -->
#### Device/Provider/{ProviderID}/ManagementServiceAddress

<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/ManagementServiceAddress
```
<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-Description-Begin -->
<!-- Description-Source-DDF -->
The character string that contains the device management server address. It can be updated during an OMA DM session by the management server to allow the server to load balance to another server in situations where too many devices are connected to the server. The DMClient CSP will save the address to the same location as the w7 and DMS CSPs to ensure the management client has a single place to retrieve the current server address. The initial value for this node is the same server address value as bootstrapped via the [w7 APPLICATION](w7-application-csp.md) configuration service provider. Starting in Windows 10, version 1511, this node supports multiple server addresses in the format `<URL1>` `<URL2>` `<URL3>`. If there is only a single URL, then the <> aren't required. This is supported for both desktop and mobile devices. During a DM session, the device will use the first address on the list and then keep going down the list until a successful connection is achieved. The DM client should cache the successfully connected server URL for the next session.
<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-Description-End -->

<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> When the **ManagementServerAddressList** value is set, the device ignores the value.
<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-Editable-End -->

<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Dependency [ManageServerAddressListBlock] | Dependency Type: `Not` <br> Dependency URI: `Device/Vendor/MSFT/DMClient/Provider/[ProviderID]/ManagementServerAddressList` <br> Dependency Allowed Value Type: `None` <br>  |
<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-Examples-End -->

<!-- Device-Provider-{ProviderID}-ManagementServiceAddress-End -->

<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-Begin -->
#### Device/Provider/{ProviderID}/MaxSyncApplicationVersion

<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-Applicability-End -->

<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/MaxSyncApplicationVersion
```
<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-Description-Begin -->
<!-- Description-Source-DDF -->
Used by the client to indicate the latest DM session version that it supports.
<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-Description-End -->

<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-Editable-End -->

<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-Examples-End -->

<!-- Device-Provider-{ProviderID}-MaxSyncApplicationVersion-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-Begin -->
#### Device/Provider/{ProviderID}/MultipleSession

<!-- Device-Provider-{ProviderID}-MultipleSession-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-Provider-{ProviderID}-MultipleSession-Applicability-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/MultipleSession
```
<!-- Device-Provider-{ProviderID}-MultipleSession-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Provider-{ProviderID}-MultipleSession-Description-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Only applicable for Windows Enterprise multi-session.
<!-- Device-Provider-{ProviderID}-MultipleSession-Editable-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-MultipleSession-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-MultipleSession-Examples-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-Begin -->
##### Device/Provider/{ProviderID}/MultipleSession/IntervalForScheduledRetriesForUserSession

<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-Applicability-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/MultipleSession/IntervalForScheduledRetriesForUserSession
```
<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-Description-Begin -->
<!-- Description-Source-DDF -->
The waiting time (in minutes) for the initial set of retries as specified by the number of retries in NumberOfScheduledRetriesForUserSession. If IntervalForScheduledRetriesForUserSession isn't set, then the default value is used. Default value is 1440. If the value is 0, this schedule is disabled.
<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-Description-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Only applicable for Windows Enterprise multi-session.
<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-Editable-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-Examples-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-IntervalForScheduledRetriesForUserSession-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-Begin -->
##### Device/Provider/{ProviderID}/MultipleSession/NumAllowedConcurrentUserSessionAtUserLogonSync

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-Applicability-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/MultipleSession/NumAllowedConcurrentUserSessionAtUserLogonSync
```
<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Maximum number of concurrent user sync sessions at User Login. Default value is 25. 0 none, 1 sequential, anything else: parallel.
<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-Description-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Only applicable for Windows Enterprise multi-session.
<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-Editable-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-Examples-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionAtUserLogonSync-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-Begin -->
##### Device/Provider/{ProviderID}/MultipleSession/NumAllowedConcurrentUserSessionForBackgroundSync

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-Applicability-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/MultipleSession/NumAllowedConcurrentUserSessionForBackgroundSync
```
<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Maximum number of concurrent user sync sessions in background. Default value is 25. 0 none, 1 sequential, anything else: parallel.
<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-Description-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Only applicable for Windows Enterprise multi-session.
<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-Editable-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-Examples-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumAllowedConcurrentUserSessionForBackgroundSync-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-Begin -->
##### Device/Provider/{ProviderID}/MultipleSession/NumberOfScheduledRetriesForUserSession

<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-Applicability-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/MultipleSession/NumberOfScheduledRetriesForUserSession
```
<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-Description-Begin -->
<!-- Description-Source-DDF -->
The number of times the DM client should retry connecting to the server when the client is initially configured/enrolled to communicate with the server. Default value is 0. If the value is 0 and IntervalForScheduledRetriesForUserSession isn't 0, then the schedule will be set to repeat for an infinite number of times.
<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-Description-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Only applicable for Windows Enterprise multi-session.
<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-Editable-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-Examples-End -->

<!-- Device-Provider-{ProviderID}-MultipleSession-NumberOfScheduledRetriesForUserSession-End -->

<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-Begin -->
#### Device/Provider/{ProviderID}/NumberOfDaysAfterLostContactToUnenroll

<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-Applicability-End -->

<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/NumberOfDaysAfterLostContactToUnenroll
```
<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-Description-Begin -->
<!-- Description-Source-DDF -->
Number of days after last successful sync to unenroll.
<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-Description-End -->

<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-Editable-End -->

<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-Examples-End -->

<!-- Device-Provider-{ProviderID}-NumberOfDaysAfterLostContactToUnenroll-End -->

<!-- Device-Provider-{ProviderID}-Poll-Begin -->
#### Device/Provider/{ProviderID}/Poll

<!-- Device-Provider-{ProviderID}-Poll-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Poll-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Poll-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Poll
```
<!-- Device-Provider-{ProviderID}-Poll-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Poll-Description-Begin -->
<!-- Description-Source-DDF -->
Polling schedules must utilize the DMClient CSP. The Registry paths previously associated with polling using the Registry CSP are now deprecated. There are three schedules managed under the Poll node which enable a rich polling schedule experience to provide greater flexibility in managing the way in which devices poll the management server. There are a variety of ways in which polling schedules may be set. If an invalid polling configuration is set, the device will correct or remove the schedules in order to restore the polling schedules back to a valid configuration. If there is no infinite schedule set, then a 24-hour schedule is created and scheduled to launch in the maintenance window.
<!-- Device-Provider-{ProviderID}-Poll-Description-End -->

<!-- Device-Provider-{ProviderID}-Poll-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-Editable-End -->

<!-- Device-Provider-{ProviderID}-Poll-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Provider-{ProviderID}-Poll-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Poll-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-Examples-End -->

<!-- Device-Provider-{ProviderID}-Poll-End -->

<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-Begin -->
##### Device/Provider/{ProviderID}/Poll/AllUsersPollOnFirstLogin

<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Poll/AllUsersPollOnFirstLogin
```
<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-Description-Begin -->
<!-- Description-Source-DDF -->
Boolean value that allows the IT admin to require the device to start a management session on first user login for all NT users. A session is only kicked off the first time a user logs in to the system; subsequent logins won't trigger an MDM session. Login isn't the same as device unlock. Default value is false, where polling is disabled on first login. Supported values are true or false.
<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-Description-End -->

<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-Editable-End -->

<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Polling is disabled on first login. |
| true | Polling is enabled on first login. |
<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-Examples-End -->

<!-- Device-Provider-{ProviderID}-Poll-AllUsersPollOnFirstLogin-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-Begin -->
##### Device/Provider/{ProviderID}/Poll/IntervalForFirstSetOfRetries

<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Poll/IntervalForFirstSetOfRetries
```
<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-Description-Begin -->
<!-- Description-Source-DDF -->
The waiting time (in minutes) for the initial set of retries as specified by the number of retries in /`<ProviderID>`/Poll/NumberOfFirstRetries. If IntervalForFirstSetOfRetries isn't set, then the default value is used. The default value is 15. If the value is set to 0, this schedule is disabled.
<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-Description-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-Editable-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-Examples-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForFirstSetOfRetries-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-Begin -->
##### Device/Provider/{ProviderID}/Poll/IntervalForRemainingScheduledRetries

<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Poll/IntervalForRemainingScheduledRetries
```
<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-Description-Begin -->
<!-- Description-Source-DDF -->
The waiting time (in minutes) for the initial set of retries as specified by the number of retries in /`<ProviderID>`/Poll/NumberOfRemainingScheduledRetries. Default value is 0. If IntervalForRemainingScheduledRetries is set to 0, then this schedule is disabled.
<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-Description-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-Editable-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-Examples-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForRemainingScheduledRetries-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-Begin -->
##### Device/Provider/{ProviderID}/Poll/IntervalForSecondSetOfRetries

<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Poll/IntervalForSecondSetOfRetries
```
<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-Description-Begin -->
<!-- Description-Source-DDF -->
The waiting time (in minutes) for the second set of retries as specified by the number of retries in /`<ProviderID>`/Poll/NumberOfSecondRetries. Default value is 0. If this value is set to zero, then this schedule is disabled.
<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-Description-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-Editable-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-Examples-End -->

<!-- Device-Provider-{ProviderID}-Poll-IntervalForSecondSetOfRetries-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-Begin -->
##### Device/Provider/{ProviderID}/Poll/NumberOfFirstRetries

<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Poll/NumberOfFirstRetries
```
<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-Description-Begin -->
<!-- Description-Source-DDF -->
The number of times the DM client should retry to connect to the server when the client is initially configured or enrolled to communicate with the server. If the value is set to 0 and the IntervalForFirstSetOfRetries value isn't 0, then the schedule will be set to repeat an infinite number of times and second set and this set of schedule won't set in this case. The default value is 10. The first set of retries is intended to give the management server some buffered time to be ready to send policies and settings configuration to the device. The total time for first set of retries shouldn't be more than a few hours. The server shouldn't set NumberOfFirstRetries to be 0. RemainingScheduledRetries is used for the long run device polling schedule.
<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-Description-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-Editable-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-Examples-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfFirstRetries-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-Begin -->
##### Device/Provider/{ProviderID}/Poll/NumberOfRemainingScheduledRetries

<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Poll/NumberOfRemainingScheduledRetries
```
<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-Description-Begin -->
<!-- Description-Source-DDF -->
The number of times the DM client should retry connecting to the server when the client is initially configured/enrolled to communicate with the server. Default value is 0. If the value is set to 0 and IntervalForRemainingScheduledRetries AND the first and second set of retries aren't set as infinite retries, then the schedule will be set to repeat for an infinite number of times. However, if either or both of the first and second set of retries are set as infinite, then this schedule will be disabled. The RemainingScheduledRetries is used for the long run device polling schedule. IntervalForRemainingScheduledRetries shouldn't be set smaller than 1440 minutes (24 hours) in Windows Phone 8.1 device. Windows Phone 8.1 supports MDM server push.
<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-Description-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-Editable-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-Examples-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfRemainingScheduledRetries-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-Begin -->
##### Device/Provider/{ProviderID}/Poll/NumberOfSecondRetries

<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Poll/NumberOfSecondRetries
```
<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-Description-Begin -->
<!-- Description-Source-DDF -->
The number of times the DM client should retry a second round of connecting to the server when the client is initially configured/enrolled to communicate with the server. Default value is 0. If the value is set to 0 and IntervalForSecondSetOfRetries isn't set to 0 AND the first set of retries isn't set as infinite retries, then the schedule repeats an infinite number of times. However, if the first set of retries is set at infinite, then this schedule is disabled. The second set of retries is also optional and temporarily retries that the total duration should be last for more than a day. And the IntervalForSecondSetOfRetries should be longer than IntervalForFirstSetOfRetries. RemainingScheduledRetries is used for the long run device polling schedule.
<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-Description-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-Editable-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-Examples-End -->

<!-- Device-Provider-{ProviderID}-Poll-NumberOfSecondRetries-End -->

<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-Begin -->
##### Device/Provider/{ProviderID}/Poll/PollOnLogin

<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Poll/PollOnLogin
```
<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-Description-Begin -->
<!-- Description-Source-DDF -->
Boolean value that allows the IT admin to require the device to start a management session on any user login, regardless of if the user has preciously logged in. Login isn't the same as device unlock. Default value is false, where polling is disabled on first login. Supported values are true or false.
<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-Description-End -->

<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-Editable-End -->

<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Polling is disabled on first login. |
| true | Polling is enabled on first login. |
<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-Examples-End -->

<!-- Device-Provider-{ProviderID}-Poll-PollOnLogin-End -->

<!-- Device-Provider-{ProviderID}-PublisherDeviceID-Begin -->
#### Device/Provider/{ProviderID}/PublisherDeviceID

<!-- Device-Provider-{ProviderID}-PublisherDeviceID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-PublisherDeviceID-Applicability-End -->

<!-- Device-Provider-{ProviderID}-PublisherDeviceID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/PublisherDeviceID
```
<!-- Device-Provider-{ProviderID}-PublisherDeviceID-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-PublisherDeviceID-Description-Begin -->
<!-- Description-Source-DDF -->
The PublisherDeviceID is a device-unique ID created based on the enterprise Publisher ID. Publisher ID is created based on the enterprise application token and enterprise ID via ./Vendor/MSFT/EnterpriseAppManagement/`<enterprise id>`/EnrollmentToken. It's to ensure that for one enterprise, each device has a unique ID associated with it. For the same device, if it has multiple enterprises' applications, each enterprise is identified differently.
<!-- Device-Provider-{ProviderID}-PublisherDeviceID-Description-End -->

<!-- Device-Provider-{ProviderID}-PublisherDeviceID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-PublisherDeviceID-Editable-End -->

<!-- Device-Provider-{ProviderID}-PublisherDeviceID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-PublisherDeviceID-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-PublisherDeviceID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-PublisherDeviceID-Examples-End -->

<!-- Device-Provider-{ProviderID}-PublisherDeviceID-End -->

<!-- Device-Provider-{ProviderID}-Push-Begin -->
#### Device/Provider/{ProviderID}/Push

<!-- Device-Provider-{ProviderID}-Push-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Push-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Push-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Push
```
<!-- Device-Provider-{ProviderID}-Push-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Push-Description-Begin -->
<!-- Description-Source-DDF -->
Not configurable during WAP Provisioning XML. If removed, DM sessions triggered by Push will no longer be supported.
<!-- Device-Provider-{ProviderID}-Push-Description-End -->

<!-- Device-Provider-{ProviderID}-Push-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Push-Editable-End -->

<!-- Device-Provider-{ProviderID}-Push-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Provider-{ProviderID}-Push-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Push-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Push-Examples-End -->

<!-- Device-Provider-{ProviderID}-Push-End -->

<!-- Device-Provider-{ProviderID}-Push-ChannelURI-Begin -->
##### Device/Provider/{ProviderID}/Push/ChannelURI

<!-- Device-Provider-{ProviderID}-Push-ChannelURI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Push-ChannelURI-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Push-ChannelURI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Push/ChannelURI
```
<!-- Device-Provider-{ProviderID}-Push-ChannelURI-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Push-ChannelURI-Description-Begin -->
<!-- Description-Source-DDF -->
A string that contains the channel that the WNS client has negotiated for the OMA DM client on the device based on the PFN that was provided. If no valid PFN is currently set, ChannelURI will return null.
<!-- Device-Provider-{ProviderID}-Push-ChannelURI-Description-End -->

<!-- Device-Provider-{ProviderID}-Push-ChannelURI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Push-ChannelURI-Editable-End -->

<!-- Device-Provider-{ProviderID}-Push-ChannelURI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-Push-ChannelURI-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Push-ChannelURI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Push-ChannelURI-Examples-End -->

<!-- Device-Provider-{ProviderID}-Push-ChannelURI-End -->

<!-- Device-Provider-{ProviderID}-Push-PFN-Begin -->
##### Device/Provider/{ProviderID}/Push/PFN

<!-- Device-Provider-{ProviderID}-Push-PFN-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Push-PFN-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Push-PFN-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Push/PFN
```
<!-- Device-Provider-{ProviderID}-Push-PFN-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Push-PFN-Description-Begin -->
<!-- Description-Source-DDF -->
A string provided by the Windows 10 ecosystem for an MDM solution. Used to register a device for Push Notifications. The server must use the same PFN as the devices it's managing.
<!-- Device-Provider-{ProviderID}-Push-PFN-Description-End -->

<!-- Device-Provider-{ProviderID}-Push-PFN-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Push-PFN-Editable-End -->

<!-- Device-Provider-{ProviderID}-Push-PFN-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-Push-PFN-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Push-PFN-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Push-PFN-Examples-End -->

<!-- Device-Provider-{ProviderID}-Push-PFN-End -->

<!-- Device-Provider-{ProviderID}-Push-Status-Begin -->
##### Device/Provider/{ProviderID}/Push/Status

<!-- Device-Provider-{ProviderID}-Push-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Push-Status-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Push-Status-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Push/Status
```
<!-- Device-Provider-{ProviderID}-Push-Status-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Push-Status-Description-Begin -->
<!-- Description-Source-DDF -->
An integer that maps to a known error state or condition on the system. Valid values are: 0 - Success, 1 - Failure: invalid PFN, 2 - Failure: invalid or expired device authentication with MSA, 3 - Failure: WNS client registration failed due to an invalid or revoked PFN, 4 - Failure: no Channel URI assigned, 5 - Failure: Channel URI has expired, 6 - Failure: Channel URI failed to be revoked, 7 - Failure: push notification received, but unable to establish an OMA-DM session due to power or connectivity limitations, 8 - Unknown error.
<!-- Device-Provider-{ProviderID}-Push-Status-Description-End -->

<!-- Device-Provider-{ProviderID}-Push-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Push-Status-Editable-End -->

<!-- Device-Provider-{ProviderID}-Push-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-Push-Status-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Push-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Push-Status-Examples-End -->

<!-- Device-Provider-{ProviderID}-Push-Status-End -->

<!-- Device-Provider-{ProviderID}-Recovery-Begin -->
#### Device/Provider/{ProviderID}/Recovery

<!-- Device-Provider-{ProviderID}-Recovery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000.1165] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-Provider-{ProviderID}-Recovery-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Recovery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Recovery
```
<!-- Device-Provider-{ProviderID}-Recovery-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Recovery-Description-Begin -->
<!-- Description-Source-DDF -->
Parent node for Recovery nodes.
<!-- Device-Provider-{ProviderID}-Recovery-Description-End -->

<!-- Device-Provider-{ProviderID}-Recovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Recovery-Editable-End -->

<!-- Device-Provider-{ProviderID}-Recovery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Provider-{ProviderID}-Recovery-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Recovery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Recovery-Examples-End -->

<!-- Device-Provider-{ProviderID}-Recovery-End -->

<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-Begin -->
##### Device/Provider/{ProviderID}/Recovery/AllowRecovery

<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000.1165] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Recovery/AllowRecovery
```
<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-Description-Begin -->
<!-- Description-Source-DDF -->
This node determines whether or not the client will automatically initiate a MDM Recovery operation when it detects issues with the MDM certificate.
<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-Description-End -->

<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-Editable-End -->

<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | MDM Recovery is allowed. |
| 0 (Default) | MDM Recovery isn't allowed. |
<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-Examples-End -->

<!-- Device-Provider-{ProviderID}-Recovery-AllowRecovery-End -->

<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-Begin -->
##### Device/Provider/{ProviderID}/Recovery/InitiateRecovery

<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000.1165] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Recovery/InitiateRecovery
```
<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-Description-Begin -->
<!-- Description-Source-DDF -->
This node initiates a recovery action. The server can specify prerequisites before the action is taken.
<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-Description-End -->

<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-Editable-End -->

<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Exec |
| Default Value  | 0 |
<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Initiate MDM Recovery. |
| 1 | Initiate Recovery if Keys aren't already protected by the TPM, there is a TPM to put the keys into, Microsoft Entra ID keys are protected by TPM, and the TPM is ready for attestation. |
<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-Examples-End -->

<!-- Device-Provider-{ProviderID}-Recovery-InitiateRecovery-End -->

<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-Begin -->
##### Device/Provider/{ProviderID}/Recovery/RecoveryStatus

<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000.1165] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Recovery/RecoveryStatus
```
<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This node tracks the status of a Recovery request from the InitiateRecovery node. 0 - No Recovery request has been processed. 1 - Recovery is in Process. 2 - Recovery has finished successfully. 3 - Recovery has failed to start because TPM isn't available. 4 - Recovery has failed to start because Microsoft Entra ID keys aren't protected by the TPM. 5 - Recovery has failed to start because the MDM keys are already protected by the TPM. 6 - Recovery has failed to start because the TPM isn't ready for attestation. 7 - Recovery has failed because the client can't authenticate to the server. 8 - Recovery has failed because the server has rejected the client's request.
<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-Description-End -->

<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-Editable-End -->

<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 0 |
<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-Examples-End -->

<!-- Device-Provider-{ProviderID}-Recovery-RecoveryStatus-End -->

<!-- Device-Provider-{ProviderID}-RequireMessageSigning-Begin -->
#### Device/Provider/{ProviderID}/RequireMessageSigning

<!-- Device-Provider-{ProviderID}-RequireMessageSigning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-RequireMessageSigning-Applicability-End -->

<!-- Device-Provider-{ProviderID}-RequireMessageSigning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/RequireMessageSigning
```
<!-- Device-Provider-{ProviderID}-RequireMessageSigning-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-RequireMessageSigning-Description-Begin -->
<!-- Description-Source-DDF -->
Primarily used for SSL bridging mode where firewalls and proxies are deployed and where device client identity is required. When enabled, every SyncML message from the device will carry an additional HTTP header named MDM-Signature. This header contains BASE64-encoded Cryptographic Message Syntax using a Detached Signature of the complete SyncML message SHA-2 (inclusive of the SyncHdr and SyncBody). Signing is performed using the private key of the management session certificate that was enrolled as part of the enrollment process. The device public key and PKCS9 UTC signing time stamp are included as part of the authenticated attributes in the signature. When enabled, the MDM server should validate the signature and the timestamp using the device identify certificate enrolled as part of MS-MDE, ensure the certificate and time are valid, and verify that the signature is trusted by the MDM server.
<!-- Device-Provider-{ProviderID}-RequireMessageSigning-Description-End -->

<!-- Device-Provider-{ProviderID}-RequireMessageSigning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-RequireMessageSigning-Editable-End -->

<!-- Device-Provider-{ProviderID}-RequireMessageSigning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-Provider-{ProviderID}-RequireMessageSigning-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-RequireMessageSigning-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | The device management client doesn't include authentication information in the management session HTTP header. |
| true | The client authentication information is provided in the management session HTTP header. |
<!-- Device-Provider-{ProviderID}-RequireMessageSigning-AllowedValues-End -->

<!-- Device-Provider-{ProviderID}-RequireMessageSigning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-RequireMessageSigning-Examples-End -->

<!-- Device-Provider-{ProviderID}-RequireMessageSigning-End -->

<!-- Device-Provider-{ProviderID}-SignedEntDMID-Begin -->
#### Device/Provider/{ProviderID}/SignedEntDMID

<!-- Device-Provider-{ProviderID}-SignedEntDMID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-SignedEntDMID-Applicability-End -->

<!-- Device-Provider-{ProviderID}-SignedEntDMID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/SignedEntDMID
```
<!-- Device-Provider-{ProviderID}-SignedEntDMID-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-SignedEntDMID-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that contains the device ID. This node and the nodes CertRenewTimeStamp can be used by the MDM server to verify client identity in order to update the registration record after the device certificate is renewed. The device signs the EntDMID with the old client certificate during the certificate renewal process and saves the signature locally.
<!-- Device-Provider-{ProviderID}-SignedEntDMID-Description-End -->

<!-- Device-Provider-{ProviderID}-SignedEntDMID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-SignedEntDMID-Editable-End -->

<!-- Device-Provider-{ProviderID}-SignedEntDMID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-SignedEntDMID-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-SignedEntDMID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-SignedEntDMID-Examples-End -->

<!-- Device-Provider-{ProviderID}-SignedEntDMID-End -->

<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-Begin -->
#### Device/Provider/{ProviderID}/SyncApplicationVersion

<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-Applicability-End -->

<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/SyncApplicationVersion
```
<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-Description-Begin -->
<!-- Description-Source-DDF -->
Used by the management server to set the DM session version that the server and device should use. Default is 1.0. In Windows 10, the DM session protocol version of the client is 2.0. If the server is updated to support 2.0, then you should set this value to 2.0. In the next session, check to see if there is a client behavior change between 1.0 and 2.0.
<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-Description-End -->

<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Once you set the value to 2.0, it won't go back to 1.0.
<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-Editable-End -->

<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `^(\d\.)?(\d)$` |
| Default Value  | 1.0 |
<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-Examples-End -->

<!-- Device-Provider-{ProviderID}-SyncApplicationVersion-End -->

<!-- Device-Provider-{ProviderID}-Unenroll-Begin -->
#### Device/Provider/{ProviderID}/Unenroll

<!-- Device-Provider-{ProviderID}-Unenroll-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-Unenroll-Applicability-End -->

<!-- Device-Provider-{ProviderID}-Unenroll-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/Unenroll
```
<!-- Device-Provider-{ProviderID}-Unenroll-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Unenroll-Description-Begin -->
<!-- Description-Source-DDF -->
The node accepts unenrollment requests by way of the OMA DM Exec command and calls the enrollment client to unenroll the device from the management server whose provider ID is specified in the `<Data>` tag under the `<Item>` element.
<!-- Device-Provider-{ProviderID}-Unenroll-Description-End -->

<!-- Device-Provider-{ProviderID}-Unenroll-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> `<LocURI>./Vendor/MSFT/DMClient/Unenroll</LocURI>` is supported for backward compatibility.
<!-- Device-Provider-{ProviderID}-Unenroll-Editable-End -->

<!-- Device-Provider-{ProviderID}-Unenroll-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec, Get |
<!-- Device-Provider-{ProviderID}-Unenroll-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Unenroll-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

The following SyncML shows how to remotely unenroll the device. This command should be inserted in the general DM packages sent from the server to the device.

```xml
    <Exec>
       <CmdID>2</CmdID>
       <Item>
          <Target>
             <LocURI>./Vendor/MSFT/DMClient/Provider/<ProviderID>/Unenroll</LocURI>
          </Target>
          <Meta>
             <Format xmlns="syncml:metinf">chr</Format>
          </Meta>
          <Data>TestMDMServer</Data>
          <!-- Data Field in Threshold is now IGNORED -->
       </Item>
    </Exec>
```
<!-- Device-Provider-{ProviderID}-Unenroll-Examples-End -->

<!-- Device-Provider-{ProviderID}-Unenroll-End -->

<!-- Device-Provider-{ProviderID}-UPN-Begin -->
#### Device/Provider/{ProviderID}/UPN

<!-- Device-Provider-{ProviderID}-UPN-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Provider-{ProviderID}-UPN-Applicability-End -->

<!-- Device-Provider-{ProviderID}-UPN-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Provider/{ProviderID}/UPN
```
<!-- Device-Provider-{ProviderID}-UPN-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-UPN-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the management server to update the User Principal Name (UPN) of the enrolled user. This is useful in scenarios where the user email address changes in the identity system, or in the scenario where the user enters an invalid UPN during enrollment, and fixes the UPN during federated enrollment. The UPN will be recorded and the UX will reflect the updated UPN.
<!-- Device-Provider-{ProviderID}-UPN-Description-End -->

<!-- Device-Provider-{ProviderID}-UPN-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-UPN-Editable-End -->

<!-- Device-Provider-{ProviderID}-UPN-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-Provider-{ProviderID}-UPN-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-UPN-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-UPN-Examples-End -->

<!-- Device-Provider-{ProviderID}-UPN-End -->

<!-- Device-Unenroll-Begin -->
## Device/Unenroll

<!-- Device-Unenroll-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Unenroll-Applicability-End -->

<!-- Device-Unenroll-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/Unenroll
```
<!-- Device-Unenroll-OmaUri-End -->

<!-- Device-Unenroll-Description-Begin -->
<!-- Description-Source-DDF -->
The node accepts unenrollment requests by way of the OMA DM Exec command and calls the enrollment client to unenroll the device from the management server whose provider ID is specified in the `<Data>` tag under the `<Item>` element. Scope is permanent.
<!-- Device-Unenroll-Description-End -->

<!-- Device-Unenroll-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Unenroll-Editable-End -->

<!-- Device-Unenroll-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec, Get |
<!-- Device-Unenroll-DFProperties-End -->

<!-- Device-Unenroll-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Unenroll-Examples-End -->

<!-- Device-Unenroll-End -->

<!-- Device-UpdateManagementServiceAddress-Begin -->
## Device/UpdateManagementServiceAddress

<!-- Device-UpdateManagementServiceAddress-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-UpdateManagementServiceAddress-Applicability-End -->

<!-- Device-UpdateManagementServiceAddress-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DMClient/UpdateManagementServiceAddress
```
<!-- Device-UpdateManagementServiceAddress-OmaUri-End -->

<!-- Device-UpdateManagementServiceAddress-Description-Begin -->
<!-- Description-Source-DDF -->
For provisioning packages only. Specifies the list of servers (semicolon delimited). The first server in the semicolon-delimited list is the server that will be used to instantiate MDM sessions. The list can be a permutation or a subset of the existing server list. You can't add new servers to the list using this node.
<!-- Device-UpdateManagementServiceAddress-Description-End -->

<!-- Device-UpdateManagementServiceAddress-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UpdateManagementServiceAddress-Editable-End -->

<!-- Device-UpdateManagementServiceAddress-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- Device-UpdateManagementServiceAddress-DFProperties-End -->

<!-- Device-UpdateManagementServiceAddress-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UpdateManagementServiceAddress-Examples-End -->

<!-- Device-UpdateManagementServiceAddress-End -->

<!-- User-Provider-Begin -->
## User/Provider

<!-- User-Provider-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Provider-Applicability-End -->

<!-- User-Provider-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider
```
<!-- User-Provider-OmaUri-End -->

<!-- User-Provider-Description-Begin -->
<!-- Description-Source-DDF -->
The root node for all settings that belong to a single management server.
<!-- User-Provider-Description-End -->

<!-- User-Provider-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-Editable-End -->

<!-- User-Provider-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-Provider-DFProperties-End -->

<!-- User-Provider-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-Examples-End -->

<!-- User-Provider-End -->

<!-- User-Provider-{ProviderID}-Begin -->
### User/Provider/{ProviderID}

<!-- User-Provider-{ProviderID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Provider-{ProviderID}-Applicability-End -->

<!-- User-Provider-{ProviderID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider/{ProviderID}
```
<!-- User-Provider-{ProviderID}-OmaUri-End -->

<!-- User-Provider-{ProviderID}-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains the URI-encoded value of the bootstrapped device management account's Provider ID. Scope is dynamic. This value is set and controlled by the MDM server. As a best practice, use text that doesn't require XML/URI escaping.
<!-- User-Provider-{ProviderID}-Description-End -->

<!-- User-Provider-{ProviderID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-Editable-End -->

<!-- User-Provider-{ProviderID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- User-Provider-{ProviderID}-DFProperties-End -->

<!-- User-Provider-{ProviderID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-Examples-End -->

<!-- User-Provider-{ProviderID}-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-Begin -->
#### User/Provider/{ProviderID}/FirstSyncStatus

<!-- User-Provider-{ProviderID}-FirstSyncStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-Applicability-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus
```
<!-- User-Provider-{ProviderID}-FirstSyncStatus-OmaUri-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-Description-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-Editable-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-DFProperties-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-Examples-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Begin -->
##### User/Provider/{ProviderID}/FirstSyncStatus/AllowCollectLogsButton

<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Applicability-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/AllowCollectLogsButton
```
<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-OmaUri-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Description-Begin -->
<!-- Description-Source-DDF -->
This node decides whether or not the MDM progress page displays the Collect Logs button. This node only applies to the user MDM status page (on a per user basis).
<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Description-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Editable-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-DFProperties-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Don't show the Collect Logs button on the progress page. |
| true | Show the Collect Logs button on the progress page. |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-AllowedValues-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-Examples-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-AllowCollectLogsButton-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Begin -->
##### User/Provider/{ProviderID}/FirstSyncStatus/CustomErrorText

<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Applicability-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/CustomErrorText
```
<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-OmaUri-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Description-Begin -->
<!-- Description-Source-DDF -->
This node allows the MDM to set custom error text, detailing what the user needs to do in case of error. This node only applies to the user MDM status page (on a per user basis).
<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Description-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Editable-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-DFProperties-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-Examples-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-CustomErrorText-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Begin -->
##### User/Provider/{ProviderID}/FirstSyncStatus/ExpectedModernAppPackages

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Applicability-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ExpectedModernAppPackages
```
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-OmaUri-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains a list of LocURIs that refer to App Packages the ISV expects to provision via EnterpriseModernAppManagement CSP, delimited by the character L"\xF000". The LocURI will be followed by a semicolon and a number, representing the number of apps included in the App Package. We won't verify that number. E. G. ./Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/PackageFullName/Name;4"\xF000" ./Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/PackageFullName2/Name;2 Which will represent that App Package PackageFullName contains 4 apps, whereas PackageFullName2 contains 2 apps. This is per user.
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Description-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Editable-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `\xF000`) |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-DFProperties-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-Examples-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedModernAppPackages-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Begin -->
##### User/Provider/{ProviderID}/FirstSyncStatus/ExpectedMSIAppPackages

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Applicability-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ExpectedMSIAppPackages
```
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-OmaUri-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains a list of LocURIs that refer to App Packages the ISV expects to provision via EnterpriseDesktopAppManagement CSP, delimited by the character L"\xF000". The LocURI will be followed by a semicolon and a number, representing the number of apps included in the App Package. We won't verify that number. E. G. ./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/ProductID1/Status;4"\xF000" ./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/ProductID2/Status;2 Which will represent that App Package ProductID1 contains 4 apps, whereas ProductID2 contains 2 apps. This is per user.
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Description-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Editable-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `\xF000`) |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-DFProperties-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-Examples-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedMSIAppPackages-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Begin -->
##### User/Provider/{ProviderID}/FirstSyncStatus/ExpectedNetworkProfiles

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Applicability-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ExpectedNetworkProfiles
```
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-OmaUri-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains a list of LocURIs that refer to Wi-Fi profiles and VPN profiles the ISV expects to provision, delimited by the character L"\xF000". This is per user.
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Description-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Editable-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `\xF000`) |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-DFProperties-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-Examples-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedNetworkProfiles-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Begin -->
##### User/Provider/{ProviderID}/FirstSyncStatus/ExpectedPFXCerts

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Applicability-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ExpectedPFXCerts
```
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-OmaUri-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains a list of LocURIs that refer to certs the ISV expects to provision via ClientCertificateInstall CSP, delimited by the character L"\xF000" (the CSP_LIST_DELIMITER). This is per user.
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Description-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Editable-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `\xF000`) |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-DFProperties-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-Examples-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPFXCerts-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Begin -->
##### User/Provider/{ProviderID}/FirstSyncStatus/ExpectedPolicies

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Applicability-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ExpectedPolicies
```
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-OmaUri-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains a list of LocURIs that refer to Policies the ISV expects to provision, delimited by the character L"\xF000" (the CSP_LIST_DELIMITER). This is per user.
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Description-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Editable-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `\xF000`) |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-DFProperties-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-Examples-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedPolicies-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Begin -->
##### User/Provider/{ProviderID}/FirstSyncStatus/ExpectedSCEPCerts

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Applicability-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ExpectedSCEPCerts
```
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-OmaUri-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Description-Begin -->
<!-- Description-Source-DDF -->
This node contains a list of LocURIs that refer to SCEP certs the ISV expects to provision via ClientCertificateInstall CSP, delimited by the character L"\xF000" (the CSP_LIST_DELIMITER). This is per user.
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Description-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Editable-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `\xF000`) |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-DFProperties-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-Examples-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ExpectedSCEPCerts-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Begin -->
##### User/Provider/{ProviderID}/FirstSyncStatus/IsSyncDone

<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Applicability-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/IsSyncDone
```
<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-OmaUri-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Description-Begin -->
<!-- Description-Source-DDF -->
This node, when doing a get, tells the server if the "First Syncs" are done and the device is fully provisioned. When doing a Set, this triggers the UX to override whatever state it's in and tell the user that the device is provisioned. It can't be set from True to False (it won't change its mind on whether or not the sync is done), and it can't be set from True to True (to prevent notifications from firing multiple times). This node only applies to the user MDM status page (on a per user basis).
<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Description-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Editable-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-DFProperties-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | The user hasn't finished provisioning. |
| true | The user has finished provisioning. |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-AllowedValues-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-Examples-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-IsSyncDone-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Begin -->
##### User/Provider/{ProviderID}/FirstSyncStatus/ServerHasFinishedProvisioning

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Applicability-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/ServerHasFinishedProvisioning
```
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-OmaUri-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Description-Begin -->
<!-- Description-Source-DDF -->
This node is set by the server to inform the UX that the server has finished provisioning the device. This was added so that the server can "change its mind" about what it needs to provision on the device. When this node is set, many other DM Client nodes will no longer be able to be changed. If this node isn't True, the UX will consider the provisioning a failure. Once set to true, it would reject attempts to change it back to false with CFGMGR_E_COMMANDNOTALLOWED. This node applies to the per user expected policies and resources lists.
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Description-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Editable-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-DFProperties-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Server hasn't finished provisioning. |
| true | Server has finished provisioning. |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-AllowedValues-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-Examples-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-ServerHasFinishedProvisioning-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Begin -->
##### User/Provider/{ProviderID}/FirstSyncStatus/WasDeviceSuccessfullyProvisioned

<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Applicability-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DMClient/Provider/{ProviderID}/FirstSyncStatus/WasDeviceSuccessfullyProvisioned
```
<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-OmaUri-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Description-Begin -->
<!-- Description-Source-DDF -->
Integer node determining if a Device was Successfully provisioned. 0 is failure, 1 is success, 2 is in progress. Once the value is changed to 0 or 1, the value can't be changed again. The client will change the value of success or failure and update the node. The server can, however, force a failure or success message to appear on the device by setting this value and then setting the IsSyncDone node to true. This node only applies to the user MDM status page (on a per user basis).
<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Description-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Editable-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-DFProperties-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | The device has failed to provision the user. |
| 1 | The device has successfully provisioned the user. |
| 2 | Provisioning is in progress. |
<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-AllowedValues-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-Examples-End -->

<!-- User-Provider-{ProviderID}-FirstSyncStatus-WasDeviceSuccessfullyProvisioned-End -->

<!-- DMClient-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DMClient-CspMoreInfo-End -->

<!-- DMClient-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
