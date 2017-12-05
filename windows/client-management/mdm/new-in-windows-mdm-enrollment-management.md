---
title: What's new in MDM enrollment and management
description: This topic provides information about what's new and breaking changes in Windows 10 mobile device management (MDM) enrollment and management experience across all Windows 10 devices.
MS-HAID:
- 'p\_phdevicemgmt.mdm\_enrollment\_and\_management\_overview'
- 'p\_phDeviceMgmt.new\_in\_windows\_mdm\_enrollment\_management'
ms.assetid: 9C42064F-091C-4901-BC73-9ABE79EE4224
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# What's new in MDM enrollment and management


This topic provides information about what's new and breaking changes in Windows 10 mobile device management (MDM) enrollment and management experience across all Windows 10 devices.

For details about Microsoft mobile device management protocols for Windows 10 see [\[MS-MDM\]: Mobile Device Management Protocol](http://go.microsoft.com/fwlink/p/?LinkId=619346) and [\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2]( http://go.microsoft.com/fwlink/p/?LinkId=619347).

## In this section

-   [What's new in Windows 10, version 1511](#whatsnew)
-   [What's new in Windows 10, version 1607](#whatsnew1607)
-   [What's new in Windows 10, version 1703](#whatsnew10)
-   [What's new in Windows 10, version 1709](#whatsnew1709)
-   [Breaking changes and known issues](#breaking-changes-and-known-issues)
    -   [Get command inside an atomic command is not supported](#getcommand)
    -   [Notification channel URI not preserved during upgrade from Windows 8.1 to Windows 10](#notification)
    -   [Apps installed using WMI classes are not removed](#appsnotremoved)
    -   [Passing CDATA in SyncML does not work](#cdata)
    -   [SSL settings in IIS server for SCEP must be set to "Ignore"](#sslsettings)
    -   [MDM enrollment fails on the mobile device when traffic is going through proxy](#enrollmentviaproxy)
    -   [Server-initiated unenroll failure](#unenrollment)
    -   [Certificates causing issues with Wi-Fi and VPN](#certissues)
    -   [Version information for mobile devices](#versioninformation)
    -   [Upgrading Windows Phone 8.1 devices with app whitelisting using ApplicationRestriction policy has issues](#whitelist)
    -   [Apps dependent on Microsoft Frameworks may get blocked](#frameworks)
    -   [Multiple certificates might cause Wi-Fi connection instabilities in Windows 10 Mobile](#wificertissue)
    -   [Remote PIN reset not supported in Azure Active Directory joined mobile devices](#remote)
    -   [MDM client will immediately check-in with the MDM server after client renews WNS channel URI](#renewwns)
    -   [User provisioning failure in Azure Active Directory joined Windows 10 PC](#userprovisioning)
    -   [Requirements to note for VPN certificates also used for Kerberos Authentication](#kerberos)
    -   [Device management agent for the push-button reset is not working](#pushbuttonreset)
-   [Change history in MDM documentation](#change-history-in-mdm-documentation)
-   [FAQ](#faq)

## <a href="" id="whatsnew"></a>What's new in Windows 10, version 1511

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>New configuration service providers added in Windows 10, version 1511</p></td>
<td style="vertical-align:top"><ul>
<li>[AllJoynManagement CSP](alljoynmanagement-csp.md)</li>
<li>[Maps CSP](maps-csp.md)</li>
<li>[Reporting CSP](reporting-csp.md)</li>
<li>[SurfaceHub CSP](surfacehub-csp.md)</li>
<li>[WindowsSecurityAuditing CSP](windowssecurityauditing-csp.md)</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>New and updated policies in Policy CSP</p></td>
<td style="vertical-align:top"><p>The following policies have been added to the [Policy CSP](policy-configuration-service-provider.md):</p>
<ul>
<li>Accounts/DomainNamesForEmailSync</li>
<li>ApplicationManagement/AllowWindowsBridgeForAndroidAppsExecution</li>
<li>Bluetooth/ServicesAllowedList</li>
<li>DataProtection/AllowAzureRMSForEDP</li>
<li>DataProtection/RevokeOnUnenroll</li>
<li>DeviceLock/DevicePasswordExpiration</li>
<li>DeviceLock/DevicePasswordHistory</li>
<li>TextInput/AllowInputPanel</li>
<li>Update/PauseDeferrals</li>
<li>Update/RequireDeferUpdate</li>
<li>Update/RequireUpdateApproval</li>
</ul>
<p>The following policies have been updated in the Policy CSP:</p>
<ul>
<li>System/AllowLocation</li>
<li>Update/RequireDeferUpgrade</li>
</ul>
<p>The following policies have been deprecated in the Policy CSP:</p>
<ul>
<li>TextInput/AllowKoreanExtendedHanja</li>
<li>WiFi/AllowWiFiHotSpotReporting</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Management tool for the Micosoft Store for Business</p></td>
<td style="vertical-align:top"><p>New topics. The Store for Business has a new web service designed for the enterprise to acquire, manage, and distribute applications in bulk. It enables several capabilities that are required for the enterprise to manage the lifecycle of applications from acquisition to updates.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Custom header for generic alert</p></td>
<td style="vertical-align:top"><p>The MDM-GenericAlert is a new custom header that hosts one or more alert information provided in the http messages sent by the device to the server during an OMA DM session. The generic alert is sent if the session is triggered by the device due to one or more critical or fatal alerts. Here is alert format:</p>
<code>MDM-GenericAlert: &lt;AlertType1&gt;&lt;AlertType2&gt;</code>
<p>If present, the MDM-GenericAlert is presented in every the outgoing MDM message in the same OMA DM session. For more information about generic alerts, see section 8.7 in the OMA Device Management Protocol, Approved Version 1.2.1 in this [OMA website](http://go.microsoft.com/fwlink/p/?LinkId=267526).</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Alert message for slow client response</p></td>
<td style="vertical-align:top"><p>When the MDM server sends a configuration request, sometimes it takes the client longer than the HTTP timeout to get all information together and then the session ends unexpectedly due to timeout. By default, the MDM client does not send an alert that a DM request is pending.</p>
<p>To work around the timeout, you can use EnableOmaDmKeepAliveMessage setting to keep the session alive by sending a heartbeat message back to the server. This is achieved by sending a SyncML message with a specific device alert element in the body until the client is able to respond back to the server with the requested information. For details, see EnableOmaDmKeepAliveMessage node in the [DMClient CSP](dmclient-csp.md).</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>New node in DMClient CSP</p></td>
<td style="vertical-align:top"><p>Added a new node EnableOmaDmKeepAliveMessage to the [DMClient CSP](dmclient-csp.md) and updated the ManagementServerAddress to indicate that it can contain a list of URLs.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>New nodes in EnterpriseModernAppManagement CSP</p></td>
<td style="vertical-align:top"><p>Added the following nodes to the [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md):</p>
<ul>
<li>AppManagement/GetInventoryQuery</li>
<li>AppManagement/GetInventoryResults</li>
<li>.../<em>PackageFamilyName</em>/AppSettingPolicy/<em>SettingValue</em></li>
<li>AppLicenses/StoreLicenses/<em>LicenseID</em>/LicenseCategory</li>
<li>AppLicenses/StoreLicenses/<em>LicenseID</em>/LicenseUsage</li>
<li>AppLicenses/StoreLicenses/<em>LicenseID</em>/RequesterID</li>
<li>AppLicenses/StoreLicenses/<em>LicenseID</em>/GetLicenseFromStore</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>New nodes in EnterpriseExt CSP</p></td>
<td style="vertical-align:top"><p>Added the following nodes to the [EnterpriseExt CSP](enterpriseext-csp.md):</p>
<ul>
<li>DeviceCustomData (CustomID, CustomeString)</li>
<li>Brightness (Default, MaxAuto)</li>
<li>LedAlertNotification (State, Intensity, Period, DutyCycle, Cyclecount)</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>New node in EnterpriseExtFileSystem CSP</p></td>
<td style="vertical-align:top"><p>Added OemProfile node to [EnterpriseExtFileSystem CSP](enterpriseextfilessystem-csp.md).</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>New nodes in PassportForWork CSP</p></td>
<td style="vertical-align:top"><p>Added the following nodes to [PassportForWork CSP](passportforwork-csp.md):</p>
<ul>
<li>TenantId/Policies/PINComplexity/History</li>
<li>TenantId/Policies/PINComplexity/Expiration</li>
<li>TenantId/Policies/Remote/UseRemotePassport (only for ./Device/Vendor/MSFT)</li>
<li>Biometrics/UseBiometrics (only for ./Device/Vendor/MSFT)</li>
<li>Biometrics/FacialFeaturesUseEnhancedAntiSpoofing (only for ./Device/Vendor/MSFT)</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Updated EnterpriseAssignedAccess CSP</p></td>
<td style="vertical-align:top"><p>Here are the changes to the [EnterpriseAssignedAccess CSP](enterpriseassignedaccess-csp.md):</p>
<ul>
<li>In AssignedAccessXML node, added new page settings and quick action settings.</li>
<li>In AssignedAccessXML node, added an example about how to pin applications in multiple app packages using the AUMID.</li>
<li>Updated the [EnterpriseAssignedAccess XSD](enterpriseassignedaccess-xsd.md) topic.</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>New nodes in the DevDetail CSP</p></td>
<td style="vertical-align:top"><p>Here are the changes to the [DevDetail CSP](devdetail-csp.md):</p>
<ul>
<li>Added TotalStore and TotalRAM settings.</li>
<li>Added support for Replace command for the DeviceName setting.</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Handling large objects</p></td>
<td style="vertical-align:top"><p>Added support for the client to handle uploading of large objects to the server.</p></td>
</tr>
</tbody>
</table>


## <a href="" id="whatsnew1607"></a>What's new in Windows 10, version 1607

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>Sideloading of apps</p></td>
<td style="vertical-align:top"><p>Starting in Windows 10, version 1607, sideloading of apps is only allowed through [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md). Product keys (5x5) will no longer be supported to enable sideloading on Windows 10, version 1607 devices.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>New value for [NodeCache CSP](nodecache-csp.md)</p></td>
<td style="vertical-align:top"><p>In [NodeCache CSP](nodecache-csp.md), the value of NodeCache root node starting in Windows 10, version 1607 is com.microsoft/1.0/MDM/NodeCache.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</td>
<td style="vertical-align:top"><p>New CSP.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Removed the following policies:</p>
<ul>
<li>DataProtection/AllowAzureRMSForEDP - moved this policy to [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</li>
<li>DataProtection/AllowUserDecryption - moved this policy to [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</li>
<li>DataProtection/EDPEnforcementLevel - moved this policy to [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</li>
<li>DataProtection/RequireProtectionUnderLockConfig - moved this policy to [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</li>
<li>DataProtection/RevokeOnUnenroll - moved this policy to [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</li>
<li>DataProtection/EnterpriseCloudResources - moved this policy to NetworkIsolation policy</li>
<li>DataProtection/EnterpriseInternalProxyServers - moved this policy to NetworkIsolation policy</li>
<li>DataProtection/EnterpriseIPRange - moved this policy to NetworkIsolation policy</li>
<li>DataProtection/EnterpriseNetworkDomainNames - moved this policy to NetworkIsolation policy</li>
<li>DataProtection/EnterpriseProxyServers - moved this policy to NetworkIsolation policy</li>
<li>Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices - this policy has been deprecated.</li>
</ul>
<p>Added the <strong>WiFi/AllowManualWiFiConfiguration</strong> and <strong>WiFi/AllowWiFi</strong> policies for Windows 10, version 1607:</p>
<ul>
<li>Windows 10 Pro</li>
<li>Windows 10 Enterprise</li>
<li>Windows 10 Education</li>
</ul>
<p>Added the following new policies:</p>
<ul>
<li>AboveLock/AllowCortanaAboveLock</li>
<li>ApplicationManagement/DisableStoreOriginatedApps</li>
<li>Authentication/AllowSecondaryAuthenticationDevice</li>
<li>Bluetooth/AllowPrepairing</li>
<li>Browser/AllowExtensions</li>
<li>Browser/PreventAccessToAboutFlagsInMicrosoftEdge</li>
<li>Browser/ShowMessageWhenOpeningSitesInInternetExplorer</li>
<li>DeliveryOptimization/DOAbsoluteMaxCacheSize</li>
<li>DeliveryOptimization/DOMaxDownloadBandwidth</li>
<li>DeliveryOptimization/DOMinBackgroundQoS</li>
<li>DeliveryOptimization/DOModifyCacheDrive</li>
<li>DeliveryOptimization/DOMonthlyUploadDataCap</li>
<li>DeliveryOptimization/DOPercentageMaxDownloadBandwidth</li>
<li>DeviceLock/EnforceLockScreenAndLogonImage</li>
<li>DeviceLock/EnforceLockScreenProvider</li>
<li>Defender/PUAProtection</li>
<li>Experience/AllowThirdPartySuggestionsInWindowsSpotlight</li>
<li>Experience/AllowWindowsSpotlight</li>
<li>Experience/ConfigureWindowsSpotlightOnLockScreen</li>
<li>Experience/DoNotShowFeedbackNotifications</li>
<li>Licensing/AllowWindowsEntitlementActivation</li>
<li>Licensing/DisallowKMSClientOnlineAVSValidation</li>
<li>LockDown/AllowEdgeSwipe</li>
<li>Maps/EnableOfflineMapsAutoUpdate</li>
<li>Maps/AllowOfflineMapsDownloadOverMeteredConnection</li>
<li>Messaging/AllowMessageSync</li>
<li>NetworkIsolation/EnterpriseCloudResources</li>
<li>NetworkIsolation/EnterpriseInternalProxyServers</li>
<li>NetworkIsolation/EnterpriseIPRange</li>
<li>NetworkIsolation/EnterpriseIPRangesAreAuthoritative</li>
<li>NetworkIsolation/EnterpriseNetworkDomainNames</li>
<li>NetworkIsolation/EnterpriseProxyServers</li>
<li>NetworkIsolation/EnterpriseProxyServersAreAuthoritative</li>
<li>NetworkIsolation/NeutralResources</li>
<li>Notifications/DisallowNotificationMirroring</li>
<li>Privacy/DisableAdvertisingId</li>
<li>Privacy/LetAppsAccessAccountInfo</li>
<li>Privacy/LetAppsAccessAccountInfo_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessAccountInfo_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessAccountInfo_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessCalendar</li>
<li>Privacy/LetAppsAccessCalendar_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessCalendar_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessCalendar_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessCallHistory</li>
<li>Privacy/LetAppsAccessCallHistory_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessCallHistory_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessCallHistory_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessCamera</li>
<li>Privacy/LetAppsAccessCamera_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessCamera_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessCamera_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessContacts</li>
<li>Privacy/LetAppsAccessContacts_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessContacts_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessContacts_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessEmail</li>
<li>Privacy/LetAppsAccessEmail_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessEmail_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessEmail_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessLocation</li>
<li>Privacy/LetAppsAccessLocation_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessLocation_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessLocation_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessMessaging</li>
<li>Privacy/LetAppsAccessMessaging_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessMessaging_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessMessaging_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessMicrophone</li>
<li>Privacy/LetAppsAccessMicrophone_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessMicrophone_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessMicrophone_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessMotion</li>
<li>Privacy/LetAppsAccessMotion_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessMotion_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessMotion_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessNotifications</li>
<li>Privacy/LetAppsAccessNotifications_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessNotifications_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessNotifications_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessPhone</li>
<li>Privacy/LetAppsAccessPhone_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessPhone_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessPhone_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessRadios</li>
<li>Privacy/LetAppsAccessRadios_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessRadios_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessRadios_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessTrustedDevices</li>
<li>Privacy/LetAppsAccessTrustedDevices_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessTrustedDevices_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessTrustedDevices_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsSyncWithDevices</li>
<li>Privacy/LetAppsSyncWithDevices_ForceAllowTheseApps</li>
<li>Privacy/LetAppsSyncWithDevices_ForceDenyTheseApps</li>
<li>Privacy/LetAppsSyncWithDevices_UserInControlOfTheseApps</li>
<li>Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices</li>
<li>Settings/AllowEditDeviceName</li>
<li>Speech/AllowSpeechModelUpdate</li>
<li>System/TelemetryProxy</li>
<li>Update/ActiveHoursStart</li>
<li>Update/ActiveHoursEnd</li>
<li>Update/AllowMUUpdateService</li>
<li>Update/BranchReadinessLevel</li>
<li>Update/DeferFeatureUpdatesPeriodInDays</li>
<li>Update/DeferQualityUpdatesPeriodInDays</li>
<li>Update/ExcludeWUDriversInQualityUpdate</li>
<li>Update/PauseFeatureUpdates</li>
<li>Update/PauseQualityUpdates</li>
<li>Update/UpdateServiceUrlAlternate (Added in the January service release of Windows 10, version 1607)</li>
<li>WindowsInkWorkspace/AllowWindowsInkWorkspace</li>
<li>WindowsInkWorkspace/AllowSuggestedAppsInWindowsInkWorkspace</li>
<li>WirelessDisplay/AllowProjectionToPC</li>
<li>WirelessDisplay/RequirePinForPairing</li>
</ul>
<p>Updated the <strong>Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts</strong> description to remove outdated information.</p>
<p>Updated DeliveryOptimization/DODownloadMode to add new values.</p>
<p>Updated Experience/AllowCortana description to clarify what each supported value does.</p>
<p>Updated Security/AntiTheftMode description to clarify what each supported value does.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[DMClient CSP](dmclient-csp.md)</td>
<td style="vertical-align:top"><p>Added the following settings:</p>
<ul>
<li>ManagementServerAddressList</li>
<li>AADDeviceID</li>
<li>EnrollmentType</li>
<li>HWDevID</li>
<li>CommercialID</li>
</ul>
<p>Removed the EnrollmentID setting.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[DeviceManageability CSP](devicemanageability-csp.md)</td>
<td style="vertical-align:top"><p>New CSP.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[DeviceStatus CSP](devicestatus-csp.md)</td>
<td style="vertical-align:top"><p>Added the following new settings:</p>
<ul>
<li>DeviceStatus/TPM/SpecificationVersion</li>
<li>DeviceStatus/OS/Edition</li>
<li>DeviceStatus/Antivirus/SignatureStatus</li>
<li>DeviceStatus/Antivirus/Status</li>
<li>DeviceStatus/Antispyware/SignatureStatus</li>
<li>DeviceStatus/Antispyware/Status</li>
<li>DeviceStatus/Firewall/Status</li>
<li>DeviceStatus/UAC/Status</li>
<li>DeviceStatus/Battery/Status</li>
<li>DeviceStatus/Battery/EstimatedChargeRemaining</li>
<li>DeviceStatus/Battery/EstimatedRuntime</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[AssignedAccess CSP](assignedaccess-csp.md)</td>
<td style="vertical-align:top"><p>Added SyncML examples.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[EnterpriseAssignedAccess CSP](enterpriseassignedaccess-csp.md)</td>
<td style="vertical-align:top"><ul>
<li>Added a new Folder table entry in the AssignedAccess/AssignedAccessXml description.</li>
<li>Updated the DDF and XSD file sections.</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[SecureAssessment CSP](secureassessment-csp.md)</td>
<td style="vertical-align:top"><p>New CSP for Windows 10, version 1607</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[DiagnosticLog CSP](diagnosticlog-csp.md)
<p>[DiagnosticLog DDF](diagnosticlog-ddf.md)</p></td>
<td style="vertical-align:top"><p>Added version 1.3 of the CSP with two new settings. Added the new 1.3 version of the DDF. Added the following new settings in Windows 10, version 1607.</p>
<ul>
<li>DeviceStateData</li>
<li>DeviceStateData/MdmConfiguration</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[Reboot CSP](reboot-csp.md)</td>
<td style="vertical-align:top"><p>New CSP for Windows 10, version 1607</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[CMPolicyEnterprise CSP](cmpolicyenterprise-csp.md)</td>
<td style="vertical-align:top"><p>New CSP for Windows 10, version 1607</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[VPNv2 CSP](vpnv2-csp.md)</td>
<td style="vertical-align:top"><p>Added the following settings for Windows 10, version 1607</p>
<ul>
<li><em>ProfileName</em>/RouteList/routeRowId/ExclusionRoute</li>
<li><em>ProfileName</em>/DomainNameInformationList/<em>dniRowId</em>/AutoTrigger</li>
<li><em>ProfileName</em>/DomainNameInformationList/dniRowId/Persistent</li>
<li><em>ProfileName</em>/ProfileXML</li>
<li><em>ProfileName</em>/DeviceCompliance/Enabled</li>
<li><em>ProfileName</em>/DeviceCompliance/Sso</li>
<li><em>ProfileName</em>/DeviceCompliance/Sso/Enabled</li>
<li><em>ProfileName</em>/DeviceCompliance/Sso/IssuerHash</li>
<li><em>ProfileName</em>/DeviceCompliance/Sso/Eku</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite/AuthenticationTransformConstants</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite/CipherTransformConstants</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite/EncryptionMethod</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite/IntegrityCheckMethod</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite/DHGroup</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite/PfsGroup</li>
<li><em>ProfileName</em>/NativeProfile/L2tpPsk</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Win32AppInventory CSP](win32appinventory-csp.md)
<p>[Win32AppInventory DDF](win32appinventory-ddf-file.md)</p></td>
<td style="vertical-align:top"><p>New CSP for Windows 10, version 1607.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[SharedPC CSP](sharedpc-csp.md)</td>
<td style="vertical-align:top"><p>New CSP for Windows 10, version 1607.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[WindowsAdvancedThreatProtection CSP](windowsadvancedthreatprotection-csp.md)</td>
<td style="vertical-align:top"><p>New CSP for Windows 10, version 1607.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[MDM Bridge WMI Provider](https://msdn.microsoft.com/library/windows/hardware/dn905224)</td>
<td style="vertical-align:top"><p>Added new classes for Windows 10, version 1607.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[MDM enrollment of Windows devices](mdm-enrollment-of-windows-devices.md)</td>
<td style="vertical-align:top"><p>Topic renamed from &quot;Enrollment UI&quot;.</p>
<p>Completely updated enrollment procedures and screenshots.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[UnifiedWriteFilter CSP](unifiedwritefilter-csp.md)
<p>[UnifiedWriteFilter DDF File](unifiedwritefilter-ddf.md)</p></td>
<td style="vertical-align:top"><p>Added the following new setting for Windows 10, version 1607:</p>
<ul>
<li>NextSession/HORMEnabled</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[CertificateStore CSP](certificatestore-csp.md)
<p>[CertificateStore DDF file](certificatestore-ddf-file.md)</p></td>
<td style="vertical-align:top"><p>Added the following new settings in Windows 10, version 1607:</p>
<ul>
<li>My/WSTEP/Renew/LastRenewalAttemptTime</li>
<li>My/WSTEP/Renew/RenewNow</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>[WindowsLicensing CSP](windowslicensing-csp.md)</p></td>
<td style="vertical-align:top"><p>Added the following new node and settings in Windows 10, version 1607, but not documented:</p>
<ul>
<li>Subscriptions</li>
<li>Subscriptions/SubscriptionId</li>
<li>Subscriptions/SubscriptionId/Status</li>
<li>Subscriptions/SubscriptionId/Name</li>
</ul>
</td>
</tr>
</tbody>
</table>

## <a href="" id="whatsnew10"></a>What's new in Windows 10, version 1703

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>[Update CSP](update-csp.md)</p></td>
<td style="vertical-align:top"><p>Added the following nodes:</p>
<ul>
<li>FailedUpdates/<em>Failed Update Guid</em>/RevisionNumber</li>
<li>InstalledUpdates/<em>Installed Update Guid</em>/RevisionNumber</li>
<li>PendingRebootUpdates/<em>Pending Reboot Update Guid</em>/RevisionNumber</li>
</ul>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[CM_CellularEntries CSP](cm-cellularentries-csp.md)</td>
<td style="vertical-align:top"><p>To PurposeGroups setting, added the following values:</p>
<ul>
<li>Purchase - 95522B2B-A6D1-4E40-960B-05E6D3F962AB </li>
<li>Administrative - 2FFD9261-C23C-4D27-8DCF-CDE4E14A3364</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><p>[CertificateStore CSP](certificatestore-csp.md)</p></td>
<td style="vertical-align:top"><p>Added the following setting:</p>
<ul>
<li>My/WSTEP/Renew/RetryAfterExpiryInterval</li>
</ul>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>[ClientCertificateInstall CSP](clientcertificateinstall-csp.md)</p></td>
<td style="vertical-align:top"><p>Added the following setting:</p>
<ul>
<li>SCEP/UniqueID/Install/AADKeyIdentifierList</li>
</ul>
</td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>[DMAcc CSP](dmacc-csp.md)</p></td>
<td style="vertical-align:top"><p>Added the following setting:</p>
<ul>
<li>AccountUID/EXT/Microsoft/InitiateSession</li>
</ul>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>[DMClient CSP](dmclient-csp.md)</p></td>
<td style="vertical-align:top"><p>Added the following nodes and settings:</p>
<ul>
<li>HWDevID</li>
<li>Provider/ProviderID/ManagementServerToUpgradeTo</li>
<li>Provider/ProviderID/CustomEnrollmentCompletePage</li>
<li>Provider/ProviderID/CustomEnrollmentCompletePage/Title</li>
<li>Provider/ProviderID/CustomEnrollmentCompletePage/BodyText</li>
<li>Provider/ProviderID/CustomEnrollmentCompletePage/HyperlinkHref</li>
<li>Provider/ProviderID/CustomEnrollmentCompletePage/HyperlinkText</li>
</ul>
</td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>[CellularSettings CSP](cellularsettings-csp.md)</p><p>[CM_CellularEntries CSP](cm-cellularentries-csp.md)</p><p>[EnterpriseAPN CSP](enterpriseapn-csp.md)</p></td>
<td style="vertical-align:top"><p>For these CSPs, support was added for Windows 10 Home, Pro, Enterprise, and Education editions.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[SecureAssessment CSP](secureassessment-csp.md)</td>
<td style="vertical-align:top"><p>Added the following settings:</p>
<ul>
<li>AllowTextSuggestions</li>
<li>RequirePrinting</li>
</ul>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[EnterpriseAPN CSP](enterpriseapn-csp.md)</td>
<td style="vertical-align:top"><p>Added the following setting:</p>
<ul>
<li>Roaming</li>
</ul>
</td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[Messaging CSP](messaging-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP. This CSP is only supported in Windows 10 Mobile and Mobile Enteprise editions.</p>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Added the following new policies: </p>
<ul>
<li>Accounts/AllowMicrosoftAccountSignInAssistant</li>
<li>ApplicationDefaults/DefaultAssociationsConfiguration</li>
<li>Browser/AllowAddressBarDropdown</li>
<li>Browser/AllowFlashClickToRun</li>
<li>Browser/AllowMicrosoftCompatibilityList</li>
<li>Browser/AllowSearchEngineCustomization</li>
<li>Browser/ClearBrowsingDataOnExit</li>
<li>Browser/ConfigureAdditionalSearchEngines</li>
<li>Browser/DisableLockdownOfStartPages</li>
<li>Browser/PreventFirstRunPage</li>
<li>Browser/PreventLiveTileDataCollection</li>
<li>Browser/SetDefaultSearchEngine</li>
<li>Browser/SyncFavoritesBetweenIEAndMicrosoftEdge</li>
<li>Connectivity/AllowConnectedDevices</li>
<li>DeliveryOptimization/DOAllowVPNPeerCaching</li>
<li>DeliveryOptimization/DOMinBatteryPercentageAllowedToUpload</li>
<li>DeliveryOptimization/DOMinDiskSizeAllowedToPeer</li>
<li>DeliveryOptimization/DOMinFileSizeToCache</li>
<li>DeliveryOptimization/DOMinRAMAllowedToPeer</li>
<li>DeviceLock/MaxInactivityTimeDeviceLockWithExternalDisplay</li>
<li>Display/TurnOffGdiDPIScalingForApps</li>
<li>Display/TurnOnGdiDPIScalingForApps</li>
<li>EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint</li>
<li>EnterpriseCloudPrint/CloudPrintOAuthAuthority</li>
<li>EnterpriseCloudPrint/CloudPrintOAuthClientId</li>
<li>EnterpriseCloudPrint/CloudPrintResourceId</li>
<li>EnterpriseCloudPrint/DiscoveryMaxPrinterLimit</li>
<li>EnterpriseCloudPrint/MopriaDiscoveryResourceId</li>
<li>Experience/AllowFindMyDevice</li>
<li>Experience/AllowTailoredExperiencesWithDiagnosticData</li>
<li>Experience/AllowWindowsSpotlightOnActionCenter</li>
<li>Experience/AllowWindowsSpotlightWindowsWelcomeExperience</li>
<li>Location/EnableLocation</li>
<li>Messaging/AllowMMS</li>
<li>Messaging/AllowRCS</li>
<li>Privacy/LetAppsAccessTasks</li>
<li>Privacy/LetAppsAccessTasks_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessTasks_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessTasks_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsGetDiagnosticInfo</li>
<li>Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps</li>
<li>Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps</li>
<li>Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsRunInBackground</li>
<li>Privacy/LetAppsRunInBackground_ForceAllowTheseApps</li>
<li>Privacy/LetAppsRunInBackground_ForceDenyTheseApps</li>
<li>Privacy/LetAppsRunInBackground_UserInControlOfTheseApps</li>
<li>Settings/ConfigureTaskbarCalendar</li>
<li>Settings/PageVisibilityList</li>
<li>SmartScreen/EnableAppInstallControl</li>
<li>SmartScreen/EnableSmartScreenInShell</li>
<li>SmartScreen/PreventOverrideForFilesInShell</li>
<li>Start/AllowPinnedFolderDocuments</li>
<li>Start/AllowPinnedFolderDownloads</li>
<li>Start/AllowPinnedFolderFileExplorer</li>
<li>Start/AllowPinnedFolderHomeGroup</li>
<li>Start/AllowPinnedFolderMusic</li>
<li>Start/AllowPinnedFolderNetwork</li>
<li>Start/AllowPinnedFolderPersonalFolder </li>
<li>Start/AllowPinnedFolderPictures</li>
<li>Start/AllowPinnedFolderSettings</li>
<li>Start/AllowPinnedFolderVideos</li>
<li>Start/HideAppList</li>
<li>Start/HideChangeAccountSettings</li>
<li>Start/HideFrequentlyUsedApps</li>
<li>Start/HideHibernate</li>
<li>Start/HideLock</li>
<li>Start/HidePowerButton</li>
<li>Start/HideRecentJumplists</li>
<li>Start/HideRecentlyAddedApps</li>
<li>Start/HideRestart</li>
<li>Start/HideShutDown</li>
<li>Start/HideSignOut</li>
<li>Start/HideSleep</li>
<li>Start/HideSwitchAccount</li>
<li>Start/HideUserTile</li>
<li>Start/ImportEdgeAssets</li>
<li>Start/NoPinningToTaskbar</li>
<li>System/AllowFontProviders</li>
<li>System/DisableOneDriveFileSync</li>
<li>TextInput/AllowKeyboardTextSuggestions</li>
<li>TimeLanguageSettings/AllowSet24HourClock</li>
<li>Update/ActiveHoursMaxRange</li>
<li>Update/AutoRestartDeadlinePeriodInDays</li>
<li>Update/AutoRestartNotificationSchedule</li>
<li>Update/AutoRestartRequiredNotificationDismissal</li>
<li>Update/DetectionFrequency</li>
<li>Update/EngagedRestartDeadline</li>
<li>Update/EngagedRestartSnoozeSchedule</li>
<li>Update/EngagedRestartTransitionSchedule</li>
<li>Update/IgnoreMOAppDownloadLimit</li>
<li>Update/IgnoreMOUpdateDownloadLimit</li>
<li>Update/PauseFeatureUpdatesStartTime</li>
<li>Update/PauseQualityUpdatesStartTime</li>
<li>Update/SetAutoRestartNotificationDisable</li>
<li>Update/SetEDURestart</li>
<li>WiFi/AllowWiFiDirect</li>
<li>WindowsLogon/HideFastUserSwitching</li>
<li>WirelessDisplay/AllowProjectionFromPC</li>
<li>WirelessDisplay/AllowProjectionFromPCOverInfrastructure</li>
<li>WirelessDisplay/AllowProjectionToPCOverInfrastructure</li>
<li>WirelessDisplay/AllowUserInputFromWirelessDisplayReceiver</li>
</ul><p>Removed TextInput/AllowLinguisticDataCollection</p>
<p>Starting in Windows 10, version 1703, Update/UpdateServiceUrl is not supported in Windows 10 Mobile Enteprise and IoT Enterprise</p>
<p>Starting in Windows 10, version 1703, the maximum value of  Update/DeferFeatureUpdatesPeriodInDays has been increased from 180 days, to 365 days.</p>
<p>Starting in Windows 10, version 1703, in Browser/HomePages you can use the "&lt;about:blank&gt;" value if you don’t want to send traffic to Microsoft.</p>
<p>Starting in Windows 10, version 1703, Start/StartLayout can now be set on a per-device basis in addition to the pre-existing per-user basis.</p>
<p>Added the ConfigOperations/ADMXInstall node and setting, which is used to ingest ADMX files.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[DevDetail CSP](devdetail-csp.md)</td>
<td style="vertical-align:top"><p>Added the following setting:</p>
<ul>
<li>DeviceHardwareData</li>
</ul>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[CleanPC CSP](cleanpc-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[DeveloperSetup CSP](developersetup-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[NetworkProxy CSP](networkproxy-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[BitLocker CSP](bitlocker-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP.</p>
<p>Added the following setting:</p>
<ul>
<li>AllowWarningForOtherDiskEncryption</li>
</ul>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</td>
<td style="vertical-align:top"><p>Starting in Windows 10, version 1703, AllowUserDecryption is no longer supported.</p><p>Added the following settings:</p>
<ul>
<li>RevokeOnMDMHandoff</li>
<li>SMBAutoEncryptedFileExtensions</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[DynamicManagement CSP](dynamicmanagement-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Implement server-side support for mobile application management on Windows](implement-server-side-mobile-application-management.md)</td>
<td style="vertical-align:top"><p>New mobile application management (MAM) support added in Windows 10, version 1703.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>[PassportForWork CSP](passportforwork-csp.md)</p></td>
<td style="vertical-align:top"><p>Added the following new node and settings:</p>
<ul>
<li><em>TenantId</em>/Policies/ExcludeSecurityDevices (only for ./Device/Vendor/MSFT)</li>
<li><em>TenantId</em>/Policies/ExcludeSecurityDevices/TPM12 (only for ./Device/Vendor/MSFT)</li>
<li><em>TenantId</em>/Policies/EnablePinRecovery</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Office CSP](office-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[Personalization CSP](personalization-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[EnterpriseAppVManagement CSP](enterpriseappvmanagement-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[HealthAttestation CSP](healthattestation-csp.md)</td>
<td style="vertical-align:top"><p>Added the following settings:</p>
<ul>
<li>HASEndpoint - added in Windows 10, version 1607, but not documented</li>
<li>TpmReadyStatus - added in the March service release of Windows 10, version 1607</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>[SurfaceHub CSP](surfacehub-csp.md)</p></td>
<td style="vertical-align:top"><p>Added the following nodes and settings:</p>
<ul>
<li>InBoxApps/SkypeForBusiness</li>
<li>InBoxApps/SkypeForBusiness/DomainName</li>
<li>InBoxApps/Connect</li>
<li>InBoxApps/Connect/AutoLaunch</li>
<li>Properties/DefaultVolume</li>
<li>Properties/ScreenTimeout</li>
<li>Properties/SessionTimeout</li>
<li>Properties/SleepTimeout</li>
<li>Properties/AllowSessionResume</li>
<li>Properties/AllowAutoProxyAuth</li>
<li>Properties/DisableSigninSuggestions</li>
<li>Properties/DoNotShowMyMeetingsAndFiles</li>
</ul>
</td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[NetworkQoSPolicy CSP](networkqospolicy-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>[WindowsLicensing CSP](windowslicensing-csp.md)</p></td>
<td style="vertical-align:top"><p>Added the following setting:</p>
<ul>
<li>ChangeProductKey</li>
</ul>
</td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[WindowsAdvancedThreatProtection CSP](windowsadvancedthreatprotection-csp.md)</td>
<td style="vertical-align:top"><p>Added the following setting:</p>
<ul>
<li>Configuration/TelemetryReportingFrequency</li>
</ul>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[DMSessionActions CSP](dmsessionactions-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[SharedPC CSP](dmsessionactions-csp.md)</td>
<td style="vertical-align:top"><p>Added new settings in Windows 10, version 1703.</p>
<ul>
<li>RestrictLocalStorage</li>
<li>KioskModeAUMID</li>
<li>KioskModeUserTileDisplayText</li>
<li>InactiveThreshold</li>
<li>MaxPageFileSizeMB</li>
</ul>
<p>The default value for SetEduPolicies changed to false. The default value for SleepTimeout changed to 300.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[RemoteLock CSP](remotelock-csp.md)</td>
<td style="vertical-align:top"><p>Added following setting:</p>
<ul>
<li>LockAndRecoverPIN</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[NodeCache CSP](nodecache-csp.md)</td>
<td style="vertical-align:top"><p>Added following settings:</p>
<ul>
<li>ChangedNodesData</li>
<li>AutoSetExpectedValue</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[Download all the DDF files for Windows 10, version 1703](http://download.microsoft.com/download/C/7/C/C7C94663-44CF-4221-ABCA-BC895F42B6C2/Windows10_1703_DDF_download.zip)</td>
<td style="vertical-align:top"><p>Added a zip file containing the DDF XML files of the CSPs. The link to the download is available in the DDF topics of various CSPs.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[RemoteWipe CSP](remotewipe-csp.md)</td>
<td style="vertical-align:top"><p>Added new setting in Windows 10, version 1703.</p>
<ul>
<li>doWipeProtected</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[MDM Bridge WMI Provider](https://msdn.microsoft.com/library/windows/hardware/dn905224)</td>
<td style="vertical-align:top"><p>Added new classes and properties.</p>
</td></tr>
<td style="vertical-align:top">[Understanding ADMX-backed policies](understanding-admx-backed-policies.md)</td>
<td style="vertical-align:top"><p>Added a section describing SyncML examples of various ADMX elements.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Win32 and Desktop Bridge app policy configuration](win32-and-centennial-app-policy-configuration.md)</td>
<td style="vertical-align:top">New topic.</td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[Deploy and configure App-V apps using MDM](appv-deploy-and-config.md)</td>
<td style="vertical-align:top"><p>Added a new topic describing how to deploy and configure App-V apps using MDM.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[EnterpriseDesktopAppManagement CSP](enterprisedesktopappmanagement-csp.md)</td>
<td style="vertical-align:top"><p>Added new setting in the March service release of Windows 10, version 1607.</p>
<ul>
<li>MSI/UpgradeCode/[Guid]</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Reporting CSP](reporting-csp.md)</td>
<td style="vertical-align:top"><p>Added new settings in Windows 10, version 1703.</p>
<ul>
<li>EnterpriseDataProtection/RetrieveByTimeRange/Type</li>
<li>EnterpriseDataProtection/RetrieveByCount/Type</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[Connecting your Windows 10-based device to work using a deep link](mdm-enrollment-of-windows-devices.md#connecting-your-windows-10-based-device-to-work-using-a-deep-link)</td>
<td style="vertical-align:top"><p>Added following deep link parameters to the table:</p>
<ul>
<li>Username</li>
<li>Servername</li>
<li>Accesstoken</li>
<li>Deviceidentifier</li>
<li>Tenantidentifier</li>
<li>Ownership</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">MDM support for Windows 10 S</td>
<td style="vertical-align:top"><p>Updated the following topics to indicate MDM support in Windows 10 S.</p>
<ul>
<li>[Configuration service provider reference](configuration-service-provider-reference.md)</li>
<li>[Policy CSP](policy-configuration-service-provider.md)</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[TPMPolicy CSP](tpmpolicy-csp.md)</td>
<td style="vertical-align:top">New CSP added in Windows 10, version 1703.</td>
</tr>
</tbody>
</table> 

## <a href="" id="whatsnew1709"></a>What's new in Windows 10, version 1709

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="even">
<td style="vertical-align:top">The [\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2](https://msdn.microsoft.com/en-us/library/mt221945.aspx)</td>
<td style="vertical-align:top"><p>The Windows 10 enrollment protocol was updated. The following elements were added to the RequestSecurityToken message:</p>
<ul>
<li>UXInitiated - boolean value that indicates whether the enrollment is user initiated from the Settings page. </li>
<li>ExternalMgmtAgentHint - a string the agent uses to give hints the enrollment server may need.</li>
<li>DomainName - fully qualified domain name if the device is domain-joined.</li>
</ul>
<p>For examples, see section 4.3.1 RequestSecurityToken of the the MS-MDE2 protocol documentation.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[Firewall CSP](firewall-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP in Windows 10, version 1709.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[eUICCs CSP](euiccs-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP in Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md)</td>
<td style="vertical-align:top">New CSP added in Windows 10, version 1709. Also added the DDF topic [WindowsDefenderApplicationGuard DDF file](windowsdefenderapplicationguard-ddf-file.md).</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[CM_ProxyEntries CSP](cm-proxyentries-csp.md) and [CMPolicy CSP](cmpolicy-csp.md)</td>
<td style="vertical-align:top">In Windows 10, version 1709, support for desktop SKUs were added to these CSPs. The table of SKU information in the [Configuration service provider reference](configuration-service-provider-reference.md) was updated.</td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md)</td>
<td style="vertical-align:top">New CSP added in Windows 10, version 1709. Also added the DDF topic [WindowsDefenderApplicationGuard DDF file](windowsdefenderapplicationguard-ddf-file.md).</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[VPNv2 CSP](vpnv2-csp.md)</td>
<td style="vertical-align:top"><p>Added DeviceTunnel and RegisterDNS settings in Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[DeviceStatus CSP](devicestatus-csp.md)</td>
<td style="vertical-align:top"><p>Added the following settings in Windows 10, version 1709:</p>
<ul>
<li>DeviceStatus/DomainName</li>
<li>DeviceStatus/DeviceGuard/VirtualizationBasedSecurityHwReq</li>
<li>DeviceStatus/DeviceGuard/VirtualizationBasedSecurityStatus</li>
<li>DeviceStatus/DeviceGuard/LsaCfgCredGuardStatus</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[AssignedAccess CSP](assignedaccess-csp.md)</td>
<td style="vertical-align:top"><p>Added the following setting in Windows 10, version 1709.</p>
<ul>
<li>Configuration</li>
</ul>
<p>Starting in Windows 10, version 1709, AssignedAccess CSP is supported in Windows 10 Pro.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[DeviceManageability CSP](devicemanageability-csp.md)</td>
<td style="vertical-align:top"><p>Added the following settings in Windows 10, version 1709:</p>
<ul>
<li>Provider/_ProviderID_/ConfigInfo</li>
<li> Provider/_ProviderID_/EnrollmentInfo</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Office CSP](office-csp.md)</td>
<td style="vertical-align:top"><p>Added the following setting in Windows 10, version 1709:</p>
<ul>
<li>Installation/CurrentStatus</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[DMClient CSP](dmclient-csp.md)</td>
<td style="vertical-align:top"><p>Added new nodes to the DMClient CSP in Windows 10, version 1709. Updated the CSP and DDF topics.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Bitlocker CSP](bitlocker-csp.md)</td>
<td style="vertical-align:top"><p>Changed the minimum personal identification number (PIN) length to 4 digits in SystemDrivesRequireStartupAuthentication and SystemDrivesMinimumPINLength in Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[ADMX-backed policies in Policy CSP](policy-configuration-service-provider.md#admx-backed-policies)</td>
<td style="vertical-align:top"><p>Added new policies.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">Microsoft Store for Business and Microsoft Store</td>
<td style="vertical-align:top"><p>Windows Store for Business name changed to Microsoft Store for Business. Windows Store name changed to Microsoft Store.</p>
</td></tr>
<td style="vertical-align:top">[MDM enrollment of Windows-based devices](mdm-enrollment-of-windows-devices.md)</td>
<td style="vertical-align:top"><p>New features in the Settings app:</p>
<ul>
<li>User sees installation progress of critical policies during MDM enrollment.</li>
<li>User knows what policies, profiles, apps MDM has configured</li>
<li>IT helpdesk can get detailed MDM diagnostic information using client tools</li>
</ul>
<p>For details, see [Managing connection](mdm-enrollment-of-windows-devices.md#managing-connections) and [Collecting diagnostic logs](mdm-enrollment-of-windows-devices.md#collecting-diagnostic-logs)</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Enroll a Windows 10 device automatically using Group Policy](enroll-a-windows-10-device-automatically-using-group-policy.md)</td>
<td style="vertical-align:top"><p>Added new topic to introduce a new Group Policy for automatic MDM enrollment.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Added the following new policies for Windows 10, version 1709:</p> 
<ul>
<li>Authentication/AllowAadPasswordReset</li>
<li>Authentication/AllowFidoDeviceSignon</li>
<li>Browser/LockdownFavorites</li>
<li>Browser/ProvisionFavorites</li>
<li>Cellular/LetAppsAccessCellularData</li>
<li>Cellular/LetAppsAccessCellularData_ForceAllowTheseApps</li>
<li>Cellular/LetAppsAccessCellularData_ForceDenyTheseApps</li>
<li>Cellular/LetAppsAccessCellularData_UserInControlOfTheseApps</li>
<li>CredentialProviders/DisableAutomaticReDeploymentCredentials</li>
<li>DeviceGuard/EnableVirtualizationBasedSecurity</li>
<li>DeviceGuard/RequirePlatformSecurityFeatures</li>
<li>DeviceGuard/LsaCfgFlags</li>
<li>ExploitGuard/ExploitProtectionSettings</li>
<li>Games/AllowAdvancedGamingServices</li>
<li>Handwriting/PanelDefaultModeDocked</li>
<li>LocalPoliciesSecurityOptions/Accounts_BlockMicrosoftAccounts</li>
<li>LocalPoliciesSecurityOptions/Accounts_EnableAdministratorAccountStatus</li>
<li>LocalPoliciesSecurityOptions/Accounts_EnableGuestAccountStatus</li>
<li>LocalPoliciesSecurityOptions/Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly</li>
<li>LocalPoliciesSecurityOptions/Accounts_RenameAdministratorAccount</li> 
<li>LocalPoliciesSecurityOptions/Accounts_RenameGuestAccount</li> 
<li>LocalPoliciesSecurityOptions/InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked</li> 
<li>LocalPoliciesSecurityOptions/Interactivelogon_DoNotDisplayLastSignedIn</li> 
<li>LocalPoliciesSecurityOptions/Interactivelogon_DoNotDisplayUsernameAtSignIn</li> 
<li>LocalPoliciesSecurityOptions/Interactivelogon_DoNotRequireCTRLALTDEL</li> 
<li>LocalPoliciesSecurityOptions/InteractiveLogon_MachineInactivityLimit</li> 
<li>LocalPoliciesSecurityOptions/InteractiveLogon_MessageTextForUsersAttemptingToLogOn</li> 
<li>LocalPoliciesSecurityOptions/InteractiveLogon_MessageTitleForUsersAttemptingToLogOn</li> 
<li>LocalPoliciesSecurityOptions/NetworkSecurity_AllowPKU2UAuthenticationRequests</li> 
<li>LocalPoliciesSecurityOptions/RecoveryConsole_AllowAutomaticAdministrativeLogon</li> 
<li>LocalPoliciesSecurityOptions/Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_AllowUIAccessApplicationsToPromptForElevation</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForAdministrators</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_RunAllAdministratorsInAdminApprovalMode</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations</li> 
<li>Power/DisplayOffTimeoutOnBattery</li>
<li>Power/DisplayOffTimeoutPluggedIn</li>
<li>Power/HibernateTimeoutOnBattery</li>
<li>Power/HibernateTimeoutPluggedIn</li>
<li>Power/StandbyTimeoutOnBattery</li>
<li>Power/StandbyTimeoutPluggedIn</li>
<li>Privacy/EnableActivityFeed</li>
<li>Privacy/PublishUserActivities</li>
<li>Defender/AttackSurfaceReductionOnlyExclusions</li>
<li>Defender/AttackSurfaceReductionRules</li>
<li>Defender/CloudBlockLevel </li>
<li>Defender/CloudExtendedTimeout</li>
<li>Defender/ControlledFolderAccessAllowedApplications</li>
<li>Defender/ControlledFolderAccessProtectedFolders</li>
<li>Defender/EnableControlledFolderAccess</li>
<li>Defender/EnableNetworkProtection</li>
<li>Education/DefaultPrinterName</li>
<li>Education/PreventAddingNewPrinters</li>
<li>Education/PrinterNames</li>
<li>Search/AllowCloudSearch</li>
<li>Security/ClearTPMIfNotReady</li>
<li>Start/HidePeopleBar</li>
<li>Storage/AllowDiskHealthModelUpdates</li>
<li>System/LimitEnhancedDiagnosticDataWindowsAnalytics</li>
<li>Update/AllowAutoWindowsUpdateDownloadOverMeteredNetwork</li>
<li>Update/DisableDualScan</li>
<li>Update/ManagePreviewBuilds</li>
<li>Update/ScheduledInstallEveryWeek</li>
<li>Update/ScheduledInstallFirstWeek</li>
<li>Update/ScheduledInstallFourthWeek</li>
<li>Update/ScheduledInstallSecondWeek</li>
<li>Update/ScheduledInstallThirdWeek</li>
<li>WindowsDefenderSecurityCenter/CompanyName</li>
<li>WindowsDefenderSecurityCenter/DisableAppBrowserUI</li>
<li>WindowsDefenderSecurityCenter/DisableEnhancedNotifications</li>
<li>WindowsDefenderSecurityCenter/DisableFamilyUI</li>
<li>WindowsDefenderSecurityCenter/DisableHealthUI</li>
<li>WindowsDefenderSecurityCenter/DisableNetworkUI</li>
<li>WindowsDefenderSecurityCenter/DisableNotifications</li>
<li>WindowsDefenderSecurityCenter/DisableVirusUI</li>
<li>WindowsDefenderSecurityCenter/DisallowExploitProtectionOverride</li>
<li>WindowsDefenderSecurityCenter/Email</li>
<li>WindowsDefenderSecurityCenter/EnableCustomizedToasts</li>
<li>WindowsDefenderSecurityCenter/EnableInAppCustomization</li>
<li>WindowsDefenderSecurityCenter/Phone</li>
<li>WindowsDefenderSecurityCenter/URL</li>
<li>WirelessDisplay/AllowMdnsAdvertisement</li>
<li>WirelessDisplay/AllowMdnsDiscovery</li>
</ul>
</td></tr>
</tbody>
</table>

## Breaking changes and known issues

### <a href="" id="getcommand"></a>Get command inside an atomic command is not supported

In Windows 10, a Get command inside an atomic command is not supported. This was allowed in Windows Phone 8 and Windows Phone 8.1.

### <a href="" id="notification"></a>Notification channel URI not preserved during upgrade from Windows 8.1 to Windows 10

During an upgrade from Windows 8.1 to Windows 10, the notification channel URI information is not preserved. In addition, the MDM client loses the PFN, AppID, and client secret.

After upgrading to Windows 10, you should call MDM\_WNSConfiguration class to recreate the notification channel URI.

### <a href="" id="appsnotremoved"></a>Apps installed using WMI classes are not removed

Applications installed using WMI classes are not removed when the MDM account is removed from device.

### <a href="" id="cdata"></a>Passing CDATA in SyncML does not work

Passing CDATA in data in SyncML to ConfigManager and CSPs does not work in Windows 10. It worked in Windows Phone 8.

### <a href="" id="sslsettings"></a>SSL settings in IIS server for SCEP must be set to "Ignore"

The certificate setting under "SSL Settings" in the IIS server for SCEP must be set to "Ignore" in Windows 10. In Windows Phone 8.1, when you set the client certificate to "Accept," it works fine.

![ssl settings](images/ssl-settings.png)

### <a href="" id="enrollmentviaproxy"></a>MDM enrollment fails on the mobile device when traffic is going through proxy

When the mobile device is configured to use a proxy that requires authentication, the enrollment will fail. To work around this issue, the user can use a proxy that does not require authentication or remove the proxy setting from the connected network.

### <a href="" id="unenrollment"></a>Server-initiated unenrollment failure

Server-initiated unenrollment for a device enrolled by adding a work account silently fails leaving the MDM account active. MDM policies and resources are still in place and the client can continue to sync with the server.

Remote server unenrollment is disabled for mobile devices enrolled via Azure Active Directory Join. It returns an error message to the server. The only way to remove enrollment for a mobile device that is Azure AD joined is by remotely wiping the device.

### <a href="" id="certissues"></a>Certificates causing issues with Wi-Fi and VPN

Currently in Windows 10, version 1511, when using the ClientCertificateInstall to install certificates to the device store and the user store and both certificates are sent to the device in the same MDM payload, the certificate intended for the device store will also get installed in the user store. This may cause issues with Wi-Fi or VPN when choosing the correct certificate to establish a connection. We are working to fix this issue.

### <a href="" id="versioninformation"></a>Version information for mobile devices

The software version information from **DevDetail/SwV** does not match the version in **Settings** under **System/About**.

### <a href="" id="whitelist"></a>Upgrading Windows Phone 8.1 devices with app whitelisting using ApplicationRestriction policy has issues

-   When you upgrade Windows Phone 8.1 devices to Windows 10 Mobile using ApplicationRestrictions with a list of allowed apps, some Windows inbox apps get blocked causing unexpected behavior. To work around this issue, you must include the [inbox apps](applocker-csp.md#inboxappsandcomponents) that you need to your list of allowed apps.

    Here's additional guidance for the upgrade process:

    -   Use Windows 10 product IDs for the apps listed in [inbox apps](applocker-csp.md#inboxappsandcomponents).
    -   Use the new Microsoft publisher name (PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US") and Publisher="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" if you are using the publisher policy. Do not remove the Windows Phone 8.1 publisher rule if you are using it.
    -   In the SyncML, you must use lowercase product ID.
    -   Do not duplicate a product ID. Messaging and Skype Video use the same product ID. Duplicates cause an error.


-   Silverlight xaps may not install even if publisher policy is specified using Windows Phone 8.1 publisher rule. For example, Silverlight app "Level" will not install even if you specify &lt;Publisher PublisherName=”Microsoft Corporation” /&gt;.

    To workaround this issue, remove the Windows Phone 8.1 publisher rule and add the specific product ID for each Silverlight app you want to allow to the allowed app list.

-   Some apps (specifically those that are published in Microsoft Store as AppX Bundles) are blocked from installing even when they are included in the app list.

    No workaround is available at this time. An OS update to fix this issue is coming soon.

### <a href="" id="frameworks"></a>Apps dependent on Microsoft Frameworks may get blocked in phones prior to build 10586.218

Applies only to phone prior to build 10586.218: When ApplicationManagement/ApplicationRestrictions policy is deployed to Windows 10 Mobile, installation and update of apps dependent on Microsoft Frameworks may get blocked with error 0x80073CF9. To work around this issue, you must include the Microsoft Framework Id to your list of allowed apps.

``` syntax
<App ProductId="{00000000-0000-0000-0000-000000000000}" PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"/>
```

### <a href="" id="wificertissue"></a>Multiple certificates might cause Wi-Fi connection instabilities in Windows 10 Mobile

In your deployment, if you have multiple certificates provisioned on the device and the Wi-Fi profile provisioned does not have a strict filtering criteria, you may see connection failures when connecting to Wi-Fi. The solution is to ensure that the Wi-Fi profile provisioned has strict filtering criteria such that it matches only one certificate.

Enterprises deploying certificate based EAP authentication for VPN/Wi-Fi can face a situation where there are multiple certificates that meet the default criteria for authentication. This can lead to issues such as:

-   The user may be prompted to select the certificate.
-   The wrong certificate may get auto selected and cause an authentication failure.

A production ready deployment must have the appropriate certificate details as part of the profile being deployed. The following information explains how to create or update an EAP Configuration XML such that the extraneous certificates are filtered out and the appropriate certificate can be used for the authentication.

EAP XML must be updated with relevant information for your environment This can be done either manually by editing the XML sample below, or by using the step by step UI guide. After the EAP XML is updated, refer to instructions from your MDM to deploy the updated configuration as follows:

-   For Wi-Fi, look for the &lt;EAPConfig&gt; section of your current WLAN Profile XML (This is what you specify for the WLanXml node in the Wi-Fi CSP). Within these tags you will find the complete EAP configuration. Replace the section under &lt;EAPConfig&gt; with your updated XML and update your Wi-Fi profile. You might need to refer to your MDM’s guidance on how to deploy a new Wi-Fi profile.
-   For VPN, EAP Configuration is a separate field in the MDM Configuration. Work with your MDM provider to identify and update the appropriate Field.

For information about EAP Settings, see <https://technet.microsoft.com/library/hh945104.aspx#BKMK_Cfg_cert_Selct>

For information about generating an EAP XML, see [EAP configuration](eap-configuration.md)

For more information about extended key usage, see <http://tools.ietf.org/html/rfc5280#section-4.2.1.12>

For information about adding extended key usage (EKU) to a certificate, see <https://technet.microsoft.com/library/cc731792.aspx>

The following list describes the prerequisites for a certificate to be used with EAP:

-   The certificate must have at least one of the following EKU (Extended Key Usage) properties:

    -   Client Authentication
    -   As defined by RFC 5280, this is a well-defined OID with Value 1.3.6.1.5.5.7.3.2
    -   Any Purpose
    -   An EKU Defined and published by Microsoft, is a well-defined OID with value 1.3.6.1.4.1.311.10.12.1. The inclusion of this OID implies that the certificate can be used for any purpose. The advantage of this EKU over the All Purpose EKU is that additional non-critical or custom EKUs can still be added to the certificate for effective filtering.
    -   All Purpose
    -   As defined by RFC 5280, If a CA includes extended key usages to satisfy some application needs, but does not want to restrict usage of the key, the CA can add an Extended Key Usage Value of 0. A certificate with such an EKU can be used for all purposes.
-   The user or the computer certificate on the client chains to a trusted root CA
-   The user or the computer certificate does not fail any one of the checks that are performed by the CryptoAPI certificate store, and the certificate passes requirements in the remote access policy.
-   The user or the computer certificate does not fail any one of the certificate object identifier checks that are specified in the Internet Authentication Service (IAS)/Radius Server.
-   The Subject Alternative Name (SubjectAltName) extension in the certificate contains the user principal name (UPN) of the user.

The following XML sample explains the properties for the EAP TLS XML including certificate filtering.

> **Note**  For PEAP or TTLS Profiles the EAP TLS XML is embedded within some PEAP or TTLS specific elements.

 
``` syntax
<EapHostConfig xmlns="http://www.microsoft.com/provisioning/EapHostConfig">
 <EapMethod>
  <Type xmlns="http://www.microsoft.com/provisioning/EapCommon">13</Type>
  <!--The above property defines the Method type for EAP, 13 means EAP TLS -->

  <VendorId xmlns="http://www.microsoft.com/provisioning/EapCommon">0</VendorId>
  <VendorType xmlns="http://www.microsoft.com/provisioning/EapCommon">0</VendorType>
  <AuthorId xmlns="http://www.microsoft.com/provisioning/EapCommon">0</AuthorId>
  <!--The 3 properties above define the method publishers, this is seen primarily in 3rd party Vendor methods.-->
  <!-- For Microsoft EAP TLS the value of the above fields will always be 0 --> 
 </EapMethod>
 <!-- Now that the EAP Method is Defined we will go into the Configuration --> 
 <Config xmlns="http://www.microsoft.com/provisioning/EapHostConfig">
  <Eap xmlns="http://www.microsoft.com/provisioning/BaseEapConnectionPropertiesV1">
   <Type>13</Type>
   <EapType xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV1">
    <CredentialsSource>
     <!-- Credential Source can be either CertificateStore or SmartCard --> 
     <CertificateStore>
      <SimpleCertSelection>true</SimpleCertSelection>
      <!--SimpleCertSelection automatically selects a cert if there are mutiple identical (Same UPN, Issuer, etc.) certs.-->
      <!--It uses a combination of rules to select the right cert-->
     </CertificateStore>
    </CredentialsSource>
    <ServerValidation>
     <!-- ServerValidation fields allow for checks on whether the server being connected to and the server cert being used are trusted -->
     <DisableUserPromptForServerValidation>false</DisableUserPromptForServerValidation>
     <ServerNames/>
    </ServerValidation>
    <DifferentUsername>false</DifferentUsername>
    <PerformServerValidation xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">false</PerformServerValidation>
    <AcceptServerName xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">false</AcceptServerName>
    <TLSExtensions xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">
     <!-- For filtering the relevant information is below -->
     <FilteringInfo xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV3">
      <CAHashList Enabled="true">
       <!-- The above implies that you want to filter by Issuer Hash -->
       <IssuerHash>ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
        <!-- Issuing certs thumbprint goes here-->
       </IssuerHash>
       <!-- You can add multiple entries and it will find the list of certs that have at least one of these certs in its chain--> 
      </CAHashList>
      <EKUMapping>
       <!-- This section defines Custom EKUs that you may be adding-->
       <!-- You do not need this section if you do not have custom EKUs -->
       <!-- You can have multiple EKUs defined here and then referenced below as shown -->
       <EKUMap>
        <EKUName>
         <!--Add a friendly Name for an EKU here for example -->ContostoITEKU</EKUName> 
        <EKUOID>
         <!--Add the OID Value your CA adds to the certificate here, for example -->1.3.6.1.4.1.311.42.1.15</EKUOID> 
       </EKUMap>
        <!-- All the EKU Names referenced in the example below must first be defined here
       <EKUMap>
        <EKUName>Example1</EKUName>
        <EKUOID>2.23.133.8.3</EKUOID>
      
       </EKUMap>
       <EKUMap>
        <EKUName>Example2</EKUName>
        <EKUOID>1.3.6.1.4.1.311.20.2.1</EKUOID>
       </EKUMap>
       -->
      </EKUMapping>
      <ClientAuthEKUList Enabled="true">
       <!-- The above implies that you want certs with Client Authentication EKU to be used for authentication -->
       <EKUMapInList>
        <!-- This section implies that the certificate should have the following custom EKUs in addition to the Client Authentication EKU -->
        <EKUName>
         <!--Use the name from the EKUMap Field above-->ContostoITEKU</EKUName> 
       </EKUMapInList>
       <!-- You can have multiple Custom EKUs mapped here, Each additional EKU will be processed with an AND operand -->
       <!-- For example, Client Auth EKU AND ContosoITEKU AND Example1 etc. -->
       <EKUMapInList>
        <EKUName>Example1</EKUName>
       </EKUMapInList>
      </ClientAuthEKUList>
      <AllPurposeEnabled>true</AllPurposeEnabled>
      <!-- Implies that a certificate with the EKU field = 0 will be selected --> 
      <AnyPurposeEKUList Enabled="true"/>
      <!-- Implies that a certificate with the EKU oid Value of 1.3.6.1.4.1.311.10.12.1 will be selected --> 
      <!-- Like for Client Auth you can also add Custom EKU properties with AnyPurposeEKUList (but not with AllPurposeEnabled) -->
      <!-- So here is what the above policy implies. 
      The certificate selected will have
      Issuer Thumbprint = ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
      AND
      ((Client Authentication EKU AND ContosoITEKU) OR (AnyPurposeEKU) OR AllPurpose Certificate)
      
      Any certificate(s) that match these criteria will be utilised for authentication
      -->
     </FilteringInfo>
    </TLSExtensions>
   </EapType>
  </Eap>
 </Config>
</EapHostConfig>
```

> **Note**  The EAP TLS XSD is located at **%systemdrive%\\Windows\\schemas\\EAPMethods\\eaptlsconnectionpropertiesv3.xsd**

 

Alternatively you can use the following procedure to create an EAP Configuration XML.

1.  Follow steps 1 through 7 in the [EAP configuration](eap-configuration.md) topic.
2.  In the Microsoft VPN SelfHost Properties dialog box, select **Microsoft : Smart Card or other Certificate** from the drop down (this selects EAP TLS.)

    ![vpn selfhost properties window](images/certfiltering1.png)

    > **Note**  For PEAP or TTLS, select the appropriate method and continue following this procedure.

3.  Click the **Properties** button underneath the drop down menu.
4.  In the **Smart Card or other Certificate Properties** menu, select the **Advanced** button.

    ![smart card or other certificate properties window](images/certfiltering2.png)
5.  In the **Configure Certificate Selection** menu, adjust the filters as needed.

    ![configure certificate selection window](images/certfiltering3.png)
6.  Click **OK** to close the windows to get back to the main rasphone.exe dialog box.
7.  Close the rasphone dialog box.
8.  Continue following the procedure in the [EAP configuration](eap-configuration.md) topic from Step 9 to get an EAP TLS profile with appropriate filtering.

> **Note**  You can also set all the other applicable EAP Properties through this UI as well. A guide for what these properties mean can be found in the [Extensible Authentication Protocol (EAP) Settings for Network Access](https://technet.microsoft.com/library/hh945104.aspx) topic.


### <a href="" id="remote"></a>Remote PIN reset not supported in Azure Active Directory joined mobile devices

In Windows 10 Mobile, remote PIN reset in Azure AD joined devices are not supported. Devices are wiped when you issue a remote PIN reset command using the RemoteLock CSP.

### <a href="" id="renewwns"></a>MDM client will immediately check-in with the MDM server after client renews WNS channel URI

Starting in Windows 10, after the MDM client automatically renews the WNS channel URI, the MDM client will immediately check-in with the MDM server. Henceforth, for every MDM client check-in, the MDM server should send a GET request for "ProviderID/Push/ChannelURI" to retrieve the latest channel URI and compare it with the existing channel URI; then update the channel URI if necessary.

### <a href="" id="userprovisioning"></a>User provisioning failure in Azure Active Directory joined Windows 10 PC

In Azure AD joined Windows 10 PC, provisioning /.User resources fails when the user is not logged in as an Azure AD user. If you attempt to join Azure AD from **Settings** &gt; **System** &gt; **About** user interface, make sure to log off and log on with Azure AD credentials to get your organizational configuration from your MDM server. This behavior is by design.

### <a href="" id="kerberos"></a>Requirements to note for VPN certificates also used for Kerberos Authentication

If you want to use the certificate used for VPN authentication also for Kerberos authentication (required if you need access to on-premise resources using NTLM or Kerberos), the user's certificate must meet the requirements for smart card certificate, the Subject field should contain the DNS domain name in the DN or the SAN should contain a fully qualified UPN so that the DC can be located from the DNS registrations. If certificates that do not meet these requirements are used for VPN, users may fail to access resources that require Kerberos authentication. This issue primarily impacts Windows Phone.

### <a href="" id="pushbuttonreset"></a>Device management agent for the push-button reset is not working

The DM agent for [push-button reset](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/push-button-reset-overview) keeps the registry settings for OMA DM sessions, but deletes the task schedules. The client enrollment is retained, but it never syncs with the MDM service.


## Change history in MDM documentation

### November 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Added the following policies for Windows 10, version 1709:</p>
<ul>
<li>Authentication/AllowFidoDeviceSignon</li>
<li>Cellular/LetAppsAccessCellularData</li>
<li>Cellular/LetAppsAccessCellularData_ForceAllowTheseApps</li>
<li>Cellular/LetAppsAccessCellularData_ForceDenyTheseApps</li>
<li>Cellular/LetAppsAccessCellularData_UserInControlOfTheseApps</li>
<li>Start/HidePeopleBar</li>
<li>Storage/EnhancedStorageDevices</li>
<li>Update/ManagePreviewBuilds</li>
<li>WirelessDisplay/AllowMdnsAdvertisement</li>
<li>WirelessDisplay/AllowMdnsDiscovery</li>
</ul>
<p>Added missing policies from previous releases:</p>
<ul>
<li>Connectivity/DisallowNetworkConnectivityActiveTest</li>
<li>Search/AllowWindowsIndexer</li>
</ul>
</td></tr>
</tbody>
</table>

### October 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Policy DDF file](policy-ddf-file.md)</td>
<td style="vertical-align:top"><p>Updated the DDF content for Windows 10 version 1709. Added a link to the download of Policy DDF for Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Updated the following policies:</p>
<ul>
<li>Defender/ControlledFolderAccessAllowedApplications - string separator is |.</li>
<li>Defender/ControlledFolderAccessProtectedFolders - string separator is |.</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[eUICCs CSP](euiccs-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP in Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[AssignedAccess CSP](assignedaccess-csp.md)</td>
<td style="vertical-align:top"><p>Added SyncML examples for the new Configuration node.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[DMClient CSP](dmclient-csp.md)</td>
<td style="vertical-align:top"><p>Added new nodes to the DMClient CSP in Windows 10, version 1709. Updated the CSP and DDF topics.</p>
</td></tr>
</tbody>
</table>


### September 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Added the following new policies for Windows 10, version 1709:</p>
<ul>
<li>Authentication/AllowAadPasswordReset</li>
<li>Handwriting/PanelDefaultModeDocked</li>
<li>Search/AllowCloudSearch</li>
<li>System/LimitEnhancedDiagnosticDataWindowsAnalytics</li>
</ul>
<p>Added new settings to Update/BranchReadinessLevel policy in Windows 10 version 1709.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[AssignedAccess CSP](assignedaccess-csp.md)</td>
<td style="vertical-align:top"><p>Starting in Windows 10, version 1709, AssignedAccess CSP is also supported in Windows 10 Pro.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">Microsoft Store for Business and Microsoft Store</td>
<td style="vertical-align:top"><p>Windows Store for Business name changed to Microsoft Store for Business. Windows Store name changed to Microsoft Store.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">The [\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2](https://msdn.microsoft.com/en-us/library/mt221945.aspx)</td>
<td style="vertical-align:top"><p>The Windows 10 enrollment protocol was updated. The following elements were added to the RequestSecurityToken message:</p>
<ul>
<li>UXInitiated - boolean value that indicates whether the enrollment is user initiated from the Settings page. </li>
<li>ExternalMgmtAgentHint - a string the agent uses to give hints the enrollment server may need.</li>
<li>DomainName - fully qualified domain name if the device is domain-joined.</li>
</ul>
<p>For examples, see section 4.3.1 RequestSecurityToken of the the MS-MDE2 protocol documentation.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[EntepriseAPN CSP](enterpriseapn-csp.md)</td>
<td style="vertical-align:top"><p>Added a SyncML example.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[VPNv2 CSP](vpnv2-csp.md)</td>
<td style="vertical-align:top"><p>Added RegisterDNS setting in Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Enroll a Windows 10 device automatically using Group Policy](enroll-a-windows-10-device-automatically-using-group-policy.md)</td>
<td style="vertical-align:top"><p>Added new topic to introduce a new Group Policy for automatic MDM enrollment.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[MDM enrollment of Windows-based devices](mdm-enrollment-of-windows-devices.md)</td>
<td style="vertical-align:top"><p>New features in the Settings app:</p>
<ul>
<li>User sees installation progress of critical policies during MDM enrollment.</li>
<li>User knows what policies, profiles, apps MDM has configured</li>
<li>IT helpdesk can get detailed MDM diagnostic information using client tools</li>
</ul>
<p>For details, see [Managing connections](mdm-enrollment-of-windows-devices.md#managing-connections) and [Collecting diagnostic logs](mdm-enrollment-of-windows-devices.md#collecting-diagnostic-logs)</p>
</td></tr>
</tbody>
</table>

### August 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md)</td>
<td style="vertical-align:top"><p>Added new step-by-step guide to enable ADMX-backed policies.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Mobile device enrollment](mobile-device-enrollment.md)</td>
<td style="vertical-align:top"><p>Added the following statement:</p>
<ul>
<li>Devices that are joined to an on-premise Active Directory can enroll into MDM via the Work access page in <strong>Settings</strong>. However, the enrollment can only target the user enrolled with user-specific policies. Device targeted policies will continue to impact all users of the device.</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[CM\_CellularEntries CSP](cm-cellularentries-csp.md)</td>
<td style="vertical-align:top"><p>Updated the description of the PuposeGroups node to add the GUID for applications. This node is required instead of optional.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</td>
<td style="vertical-align:top"><p>Updated the Settings/EDPEnforcementLevel values to the following:</p>
<ul>
<li> 0 (default) – Off / No protection (decrypts previously protected data).</li>
<li>  1 – Silent mode (encrypt and audit only).</li>
<li>  2 – Allow override mode (encrypt, prompt and allow overrides, and audit).</li>
<li>  3 – Hides overrides (encrypt, prompt but hide overrides, and audit).</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[AppLocker CSP](applocker-csp.md)</td>
<td style="vertical-align:top"><p>Added two new SyncML examples (to disable the calendar app and to block usage of the map app) in [Whitelist examples](applocker-csp.md#whitelist-examples).</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[DeviceManageability CSP](devicemanageability-csp.md)</td>
<td style="vertical-align:top"><p>Added the following settings in Windows 10, version 1709:</p>
<ul>
<li>Provider/_ProviderID_/ConfigInfo</li>
<li> Provider/_ProviderID_/EnrollmentInfo</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Office CSP](office-csp.md)</td>
<td style="vertical-align:top"><p>Added the following setting in Windows 10, version 1709:</p>
<ul>
<li>Installation/CurrentStatus</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[BitLocker CSP](bitlocker-csp.md)</td>
<td style="vertical-align:top">Added information to the ADMX-backed policies. Changed the minimum personal identification number (PIN) length to 4 digits in SystemDrivesRequireStartupAuthentication and SystemDrivesMinimumPINLength in Windows 10, version 1709.
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Firewall CSP](firewall-csp.md)</td>
<td style="vertical-align:top">Updated the CSP and DDF topics. Here are the changes:
<ul>
<li>Removed the two settings - FirewallRules/FirewallRuleName/FriendlyName and FirewallRules/FirewallRuleName/IcmpTypesAndCodes.</li>
<li>Changed some data types from integer to bool.</li>
<li>Updated the list of supported operations for some settings.</li>
<li>Added default values.</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Policy DDF file](policy-ddf-file.md)</td>
<td style="vertical-align:top">Added another Policy DDF file [download](http://download.microsoft.com/download/6/1/C/61C022FD-6F5D-4F73-9047-17F630899DC4/PolicyDDF_all_version1607_8C.xml) for the 8C release of Windows 10, version 1607, which added the following policies:
<ul>
<li>Browser/AllowMicrosoftCompatibilityList</li>
<li>Update/DisableDualScan</li>
<li>Update/FillEmptyContentUrls</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Added the following new policies for Windows 10, version 1709:</p>
<ul>
<li>Browser/ProvisionFavorites</li>
<li>Browser/LockdownFavorites</li>
<li>ExploitGuard/ExploitProtectionSettings</li>
<li>Games/AllowAdvancedGamingServices</li>
<li>LocalPoliciesSecurityOptions/Accounts_BlockMicrosoftAccounts</li>
<li>LocalPoliciesSecurityOptions/Accounts_EnableAdministratorAccountStatus</li>
<li>LocalPoliciesSecurityOptions/Accounts_EnableGuestAccountStatus</li>
<li>LocalPoliciesSecurityOptions/Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly</li>
<li>LocalPoliciesSecurityOptions/Accounts_RenameAdministratorAccount</li> 
<li>LocalPoliciesSecurityOptions/Accounts_RenameGuestAccount</li> 
<li>LocalPoliciesSecurityOptions/InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked</li> 
<li>LocalPoliciesSecurityOptions/Interactivelogon_DoNotDisplayLastSignedIn</li> 
<li>LocalPoliciesSecurityOptions/Interactivelogon_DoNotDisplayUsernameAtSignIn</li> 
<li>LocalPoliciesSecurityOptions/Interactivelogon_DoNotRequireCTRLALTDEL</li> 
<li>LocalPoliciesSecurityOptions/InteractiveLogon_MachineInactivityLimit</li> 
<li>LocalPoliciesSecurityOptions/InteractiveLogon_MessageTextForUsersAttemptingToLogOn</li> 
<li>LocalPoliciesSecurityOptions/InteractiveLogon_MessageTitleForUsersAttemptingToLogOn</li> 
<li>LocalPoliciesSecurityOptions/NetworkSecurity_AllowPKU2UAuthenticationRequests</li> 
<li>LocalPoliciesSecurityOptions/RecoveryConsole_AllowAutomaticAdministrativeLogon</li> 
<li>LocalPoliciesSecurityOptions/Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_AllowUIAccessApplicationsToPromptForElevation</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForAdministrators</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_RunAllAdministratorsInAdminApprovalMode</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation</li> 
<li>LocalPoliciesSecurityOptions/UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations</li>
<li>Privacy/EnableActivityFeed</li>
<li>Privacy/PublishUserActivities</li>
<li>Update/DisableDualScan</li>
<li>Update/AllowAutoWindowsUpdateDownloadOverMeteredNetwork</li>
</ul>
<p>Changed the name of new policy to CredentialProviders/DisableAutomaticReDeploymentCredentials from CredentialProviders/EnableWindowsAutoPilotResetCredentials.</p>
<p>Changed the names of the following policies:</p>
<ul>
<li>Defender/GuardedFoldersAllowedApplications to Defender/ControlledFolderAccessAllowedApplications</li>
<li>Defender/GuardedFoldersList to Defender/ControlledFolderAccessProtectedFolders</li>
<li>Defender/EnableGuardMyFolders to Defender/EnableControlledFolderAccess</li>
</ul>
<p>Added links to the additional [ADMX-backed BitLocker policies](policy-csp-bitlocker.md).</p>
<p>There were issues reported with the previous release of the following policies. These issues were fixed in Window 10, version 1709:</p>
<ul>
<li>Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts</li>
<li>Start/HideAppList</li>
</ul>
</td></tr>
</tbody>
</table>

### July 2017

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[VPNv2 CSP](vpnv2-csp.md)</td>
<td style="vertical-align:top"><p>Added DeviceTunnel profile in Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[BitLocker CSP](bitlocker-csp.md)</td>
<td style="vertical-align:top">Added the following statements:.
<ul>
<li>When you enable EncryptionMethodByDriveType, you must specify values for all three drives (operating system, fixed data, and removable data), otherwise it will fail (500 return status). For example, if you only set the encrytion method for the OS and removable drives, you will get a 500 return status.</li>
<li>When you enable SystemDrivesRecoveryMessage, you must specify values for all three settings (pre-boot recovery screen, recovery message, and recovery URL), otherwise it will fail (500 return status). For example, if you only specify values for message and URL, you will get a 500 return status.</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top">
<p>Added the following new policies for Windows 10, version 1709:</p>
<ul>
<li>Education/DefaultPrinterName</li>
<li>Education/PreventAddingNewPrinters</li>
<li>Education/PrinterNames</li> 
<li>Security/ClearTPMIfNotReady</li>
<li>WindowsDefenderSecurityCenter/CompanyName</li>
<li>WindowsDefenderSecurityCenter/DisableAppBrowserUI</li>
<li>WindowsDefenderSecurityCenter/DisableEnhancedNotifications</li>
<li>WindowsDefenderSecurityCenter/DisableFamilyUI</li>
<li>WindowsDefenderSecurityCenter/DisableHealthUI</li>
<li>WindowsDefenderSecurityCenter/DisableNetworkUI</li>
<li>WindowsDefenderSecurityCenter/DisableNotifications</li>
<li>WindowsDefenderSecurityCenter/DisableVirusUI</li>
<li>WindowsDefenderSecurityCenter/DisallowExploitProtectionOverride</li>
<li>WindowsDefenderSecurityCenter/Email</li>
<li>WindowsDefenderSecurityCenter/EnableCustomizedToasts</li>
<li>WindowsDefenderSecurityCenter/EnableInAppCustomization</li>
<li>WindowsDefenderSecurityCenter/Phone</li>
<li>WindowsDefenderSecurityCenter/URL</li>
</ul>
<p>Experience/AllowFindMyDevice - updated the description to include active digitizers.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[EnterpriseDesktopAppManagement CSP](enterprisedesktopappmanagement-csp.md)</td>
<td style="vertical-align:top">Added the following statement to [MSI/ProductID/DownloadInstall](enterprisedesktopappmanagement-csp.md#msi-productid-downloadinstall):
<ul>
<li>In Windows 10, version 1703 service release, a new tag "DownloadFromAad" was added to the "Enforcement" section of the XML. The default value is 0 (do not send token). This tag is optional and needs to be set to 1 in case the server wants the download URL to get the AADUserToken.</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[EnterpriseAssignedAccess CSP](enterpriseassignedaccess-csp.md)</td>
<td style="vertical-align:top">Added the following information about the settings pages in AssigneAccessXML:
<ul>
<li>Starting in Windows 10, version 1703, you can specify the settings pages using the settings URI. For example, in place of SettingPageDisplay, you would use ms-settings:display. See [ms-settings: URI scheme reference](https://docs.microsoft.com/en-us/windows/uwp/launch-resume/launch-settings-app#ms-settings-uri-scheme-reference) to find the URI for each settings page.</li>
<li>In Windows 10, version 1703, Quick action settings no longer require any dependencies from related group or page.</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[DeviceStatus CSP](devicestatus-csp.md)</td>
<td style="vertical-align:top"><p>Added the following settings in Windows 10, version 1709:</p>
<ul>
<li>DeviceStatus/DomainName</li>
<li>DeviceStatus/DeviceGuard/VirtualizationBasedSecurityHwReq</li>
<li>DeviceStatus/DeviceGuard/VirtualizationBasedSecurityStatus</li>
<li>DeviceStatus/DeviceGuard/LsaCfgCredGuardStatus</li>
<ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[AssignedAccess CSP](assignedaccess-csp.md)</td>
<td style="vertical-align:top"><p>Here are the changes in Windows 10, version 1709.</p>
<ul>
<li>Added Configuration node</li>
</ul>
<p>Starting in Windows 10, version 1709, AssignedAccess CSP is supported in Windows 10 Pro.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[SurfaceHub CSP](surfacehub-csp.md)</td>
<td style="vertical-align:top"><p>Changed PasswordRotationPeriod to PasswordRotationEnabled.</p>
</td></tr>
</tbody>
</table>

### June 2017

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Win32 and Desktop Bridge app policy configuration](win32-and-centennial-app-policy-configuration.md)</td>
<td style="vertical-align:top">Added a list of registry locations that ingested policies are allowed to write to.</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Firewall CSP](firewall-csp.md)</td>
<td style="vertical-align:top">Added the following nodes:
<ul>
<li>Profiles</li>
<li>Direction</li>
<li>InterfaceTypes</li>
<li>EdgeTraversal</li>
<li>Status</li>
</ul>
Also Added [Firewall DDF file](firewall-ddf-file.md).</td></tr>
<tr class="odd">
<td style="vertical-align:top">[TPMPolicy CSP](tpmpolicy-csp.md)</td>
<td style="vertical-align:top">New CSP added in Windows 10, version 1703.</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top">
<p>Added the following new policies for Windows 10, version 1703:</p> 
<ul>
<li>Start/AllowPinnedFolderDocuments</li>
<li>Start/AllowPinnedFolderDownloads</li>
<li>Start/AllowPinnedFolderFileExplorer</li>
<li>Start/AllowPinnedFolderHomeGroup</li>
<li>Start/AllowPinnedFolderMusic</li>
<li>Start/AllowPinnedFolderNetwork</li>
<li>Start/AllowPinnedFolderPersonalFolder </li>
<li>Start/AllowPinnedFolderPictures</li>
<li>Start/AllowPinnedFolderSettings</li>
<li>Start/AllowPinnedFolderVideos</li>
<li>Update/AutoRestartDeadlinePeriodInDays</li>
</ul>
<p>Added the following new policies for Windows 10, version 1709:</p> 
<ul>
<li>CredentialProviders/EnableWindowsAutoPilotResetCredentials</li>
<li>DeviceGuard/EnableVirtualizationBasedSecurity</li>
<li>DeviceGuard/RequirePlatformSecurityFeatures</li>
<li>DeviceGuard/LsaCfgFlags</li>
<li>Power/DisplayOffTimeoutOnBattery</li>
<li>Power/DisplayOffTimeoutPluggedIn</li>
<li>Power/HibernateTimeoutOnBattery</li>
<li>Power/HibernateTimeoutPluggedIn</li>
<li>Power/StandbyTimeoutOnBattery</li>
<li>Power/StandbyTimeoutPluggedIn</li>
<li>Defender/AttackSurfaceReductionOnlyExclusions</li>
<li>Defender/AttackSurfaceReductionRules</li>
<li>Defender/CloudBlockLevel </li>
<li>Defender/CloudExtendedTimeout</li>
<li>Defender/EnableGuardMyFolders</li>
<li>Defender/EnableNetworkProtection</li>
<li>Defender/GuardedFoldersAllowedApplications</li>
<li>Defender/GuardedFoldersList</li>
<li>Update/ScheduledInstallEveryWeek</li>
<li>Update/ScheduledInstallFirstWeek</li>
<li>Update/ScheduledInstallFourthWeek</li>
<li>Update/ScheduledInstallSecondWeek</li>
<li>Update/ScheduledInstallThirdWeek</li>
</ul>
<p>EnterpriseCloudPrint/DiscoveryMaxPrinterLimit is only supported in Windows 10 Mobile and Mobile Enterprise.</p> 
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[WindowsAdvancedThreatProtection CSP](windowsadvancedthreatprotection-csp.md)</td>
<td style="vertical-align:top">Updated the CSP in Windows 10, version 1709. Added the following settings:
<ul>
<li>DeviceTagging/Group</li>
<li>DeviceTagging/Criticality</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md)</td>
<td style="vertical-align:top">New CSP added in Windows 10, version 1709. Also added the DDF topic [WindowsDefenderApplicationGuard DDF file](windowsdefenderapplicationguard-ddf-file.md).</td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[DynamicManagement CSP](dynamicmanagement-csp.md)</td>
<td style="vertical-align:top">The DynamicManagement CSP is not supported in Windows 10 Mobile and Mobile Enterprise. The table of SKU information in the [Configuration service provider reference](configuration-service-provider-reference.md) was updated.</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[CM_ProxyEntries CSP](cm-proxyentries-csp.md) and [CMPolicy CSP](cmpolicy-csp.md)</td>
<td style="vertical-align:top">In Windows 10, version 1709, support for desktop SKUs were added to these CSPs. The table of SKU information in the [Configuration service provider reference](configuration-service-provider-reference.md) was updated.</td>
</tr>
</tbody>
</table>

### May 2017

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top">
<p>Added the following new policies for Windows 10, version 1703:</p> 
<ul>
<li>Browser/AllowFlashClickToRun</li>
<li>Experience/AllowFindMyDevice</li>
<li>Privacy/LetAppsAccessTasks</li>
<li>Privacy/LetAppsAccessTasks_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessTasks_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessTasks_UserInControlOfTheseApps</li>
</ul>
<p>Starting in Windows 10, version 1703, the maximum value of  Update/DeferFeatureUpdatesPeriodInDays has been increased from 180 days, to 365 days.</p>
<p>Added a statment that the following policies must target ./User.</p>
<ul>
<li>EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint </li>
<li>EnterpriseCloudPrint/CloudPrintOAuthAuthority </li>
<li>EnterpriseCloudPrint/CloudPrintOAuthClientId </li>
<li>EnterpriseCloudPrint/CloudPrintResourceId </li>
<li>EnterpriseCloudPrint/DiscoveryMaxPrinterLimit </li>
<li>EnterpriseCloudPrint/MopriaDiscoveryResourceId</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[Understanding ADMX-backed policies](understanding-admx-backed-policies.md)</td>
<td style="vertical-align:top"><p>Added a section describing SyncML examples of various ADMX elements.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[BitLocker CSP](bitlocker-csp.md)</td>
<td style="vertical-align:top">
<p>Added the following setting:</p>
<ul>
<li>AllowWarningForOtherDiskEncryption</li>
</ul>
<p>Note that SystemDrivesMinimumPINLength is 6 digits instead of 4.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[Reporting CSP](reporting-csp.md)</td>
<td style="vertical-align:top"><p>Added new settings in Windows 10, version 1703.</p>
<ul>
<li>EnterpriseDataProtection/RetrieveByTimeRange/Type</li>
<li>EnterpriseDataProtection/RetrieveByCount/Type</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Connecting your Windows 10-based device to work using a deep link](mdm-enrollment-of-windows-devices.md#connecting-your-windows-10-based-device-to-work-using-a-deep-link)</td>
<td style="vertical-align:top"><p>Added following deep link parameters to the table:</p>
<ul>
<li>Username</li>
<li>Servername</li>
<li>Accesstoken</li>
<li>Deviceidentifier</li>
<li>Tenantidentifier</li>
<li>Ownership</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[Firewall CSP](firewall-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP in Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">MDM support for Windows 10 S</td>
<td style="vertical-align:top"><p>Updated the following topics to indicate MDM support in Windows 10 S.</p>
<ul>
<li>[Configuration service provider reference](configuration-service-provider-reference.md)</li>
<li>[Policy CSP](policy-configuration-service-provider.md)</li>
</ul>
</td></tr>
</tbody>
</table>

### April 2017

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Added the following new policies for Windows 10, version 1703:</p> 
<ul>
<li>DeviceLock/MaxInactivityTimeDeviceLockWithExternalDisplay</li>
<li>Start/ImportEdgeAssets</li>
<li>Update/DetectionFrequency</li>
<li>Update/PauseFeatureUpdatesStartTime</li>
<li>Update/PauseQualityUpdatesStartTime</li>
<li>Update/SetEDURestart</li>
<li>WiFi/AllowWiFiDirect</li>
<li>WirelessDisplay/AllowProjectionFromPC</li>
<li>WirelessDisplay/AllowProjectionFromPCOverInfrastructure</li>
<li>WirelessDisplay/AllowProjectionToPCOverInfrastructure</li>
<li>WirelessDisplay/AllowUserInputFromWirelessDisplayReceiver</li>
</ul>
<p>DeviceLock/EnforceLockScreenAndLogonImage is not supported in Windows 10 Pro edition.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[DMSessionActions CSP](sharedpc-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP for Windows 10, version 1703.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><p>[CertificateStore CSP](certificatestore-csp.md)</p></td>
<td style="vertical-align:top"><p>Updated in Windows 10, version 1703. Added the following setting:</p>
<ul>
<li>My/WSTEP/Renew/RetryAfterExpiryInterval</li>
</ul>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>[ClientCertificateInstall CSP](clientcertificateinstall-csp.md)</p></td>
<td style="vertical-align:top"><p>Updated in Windows 10, version 1703. Added the following setting:</p>
<ul>
<li>SCEP/UniqueID/Install/AADKeyIdentifierList</li>
</ul>
</td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>[DMAcc CSP](dmacc-csp.md)</p></td>
<td style="vertical-align:top"><p>Updated in Windows 10, version 1703. Added the following setting:</p>
<ul>
<li>AccountUID/EXT/Microsoft/InitiateSession</li>
</ul>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>[DMClient CSP](dmclient-csp.md)</p></td>
<td style="vertical-align:top"><p>Updated in Windows 10, version 1703. Added the following nodes and settings:</p>
<ul>
<li>HWDevID</li>
<li>Provider/ProviderID/ManagementServerToUpgradeTo</li>
<li>Provider/ProviderID/CustomEnrollmentCompletePage</li>
<li>Provider/ProviderID/CustomEnrollmentCompletePage/Title</li>
<li>Provider/ProviderID/CustomEnrollmentCompletePage/BodyText</li>
<li>Provider/ProviderID/CustomEnrollmentCompletePage/HyperlinkHref</li>
<li>Provider/ProviderID/CustomEnrollmentCompletePage/HyperlinkText</li>
</ul>
</td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[SharedPC CSP](dmsessionactions-csp.md)</td>
<td style="vertical-align:top"><p>Added new settings in Windows 10, version 1703.</p>
<ul>
<li>RestrictLocalStorage</li>
<li>KioskModeAUMID</li>
<li>KioskModeUserTileDisplayText</li>
<li>InactiveThreshold</li>
<li>MaxPageFileSizeMB</li>
</ul>
<p>The default value for SetEduPolicies changed to false. The default value for SleepTimeout changed to 300.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[RemoteLock CSP](remotelock-csp.md)</td>
<td style="vertical-align:top"><p>Added following setting:</p>
<ul>
<li>LockAndRecoverPIN</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[NodeCache CSP](nodecache-csp.md)</td>
<td style="vertical-align:top"><p>Added following settings:</p>
<ul>
<li>ChangedNodesData</li>
<li>AutoSetExpectedValue</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[Download all the DDF files for Windows 10, version 1703](http://download.microsoft.com/download/C/7/C/C7C94663-44CF-4221-ABCA-BC895F42B6C2/Windows10_1703_DDF_download.zip)</td>
<td style="vertical-align:top"><p>Added a zip file containing the DDF XML files of the CSPs. The link to the download is available in the DDF topics of various CSPs.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[RemoteWipe CSP](remotewipe-csp.md)</td>
<td style="vertical-align:top"><p>Added new setting in Windows 10, version 1703.</p>
<ul>
<li>doWipeProtected</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[EnterpriseDesktopAppManagement CSP](enterprisedesktopappmanagement-csp.md)</td>
<td style="vertical-align:top"><p>Added new setting in the March service release of Windows 10, version 1607.</p>
<ul>
<li>MSI/UpgradeCode/[Guid]</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[MDM Bridge WMI Provider](https://msdnstage.redmond.corp.microsoft.com/en-us/library/windows/desktop/dn905224(v=vs.85).aspx)</td>
<td style="vertical-align:top"><p>Updated for Windows 10, version 1703. Added new classes and properties.</p>
</td></tr>
<td style="vertical-align:top">[Deploy and configure App-V apps using MDM](appv-deploy-and-config.md)</td>
<td style="vertical-align:top"><p>Added a new topic describing how to deploy and configure App-V apps using MDM.</p>
</td></tr>
</tbody>
</table>

### March 2017

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Added the following new policies for Windows 10, version 1703:</p> 
<ul>
<li>Accounts/AllowMicrosoftAccountSignInAssistant</li>
<li>Connectivity/AllowConnectedDevices</li>
<li>Display/TurnOffGdiDPIScalingForApps</li>
<li>Display/TurnOnGdiDPIScalingForApps</li>
<li>Location/EnableLocation</li>
<li>SmartScreen/EnableAppInstallControl</li>
<li>SmartScreen/EnableSmartScreenInShell</li>
<li>SmartScreen/PreventOverrideForFilesInShell</li>
<li>Update/IgnoreMOAppDownloadLimit</li>
<li>Update/IgnoreMOUpdateDownloadLimit</li>
</ul>
<p>For Windows 10, version 1703, added the ConfigOperations/ADMXInstall node and setting, which is used to ingest ADMX files.</p>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[DeviceLock/DevicePasswordEnabled](policy-configuration-service-provider.md#devicelock-devicepasswordenabled) in Policy CSP</td>
<td style="vertical-align:top"><p>Added the following note:</p>
<p>**DevicePasswordEnabled** should not be set to Enabled (0) when WMI is used to set the EAS DeviceLock policies given that it is Enabled by default in Policy CSP for back compat with Windows 8.x. If **DevicePasswordEnabled** is set to Enabled(0) then Policy CSP will return an error stating that **DevicePasswordEnabled** already exists. Windows 8.x did not support DevicePassword policy. When disabling **DevicePasswordEnabled** (1) then this should be the only policy set from the DeviceLock group of policies listed below:</p>
<ul>
<li>DevicePasswordEnabled is the parent policy of the following:
<ul><li>AllowSimpleDevicePassword</li>
<li>MinDevicePasswordLength</li>
<li>AlphanumericDevicePasswordRequired
<ul><li>MinDevicePasswordComplexCharacters</li></ul></li> 
<li> MaxDevicePasswordFailedAttempts</li>
<li>MaxInactivityTimeDeviceLock</td></li></ul></ul>
</tr>
<tr class="even">
<td style="vertical-align:top">[Personalization CSP](personalization-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP for Windows 10, version 1703.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[EnterpriseAppVManagement CSP](enterpriseappvmanagement-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP for Windows 10, version 1703.</p></td>
</tr>
<tr>
<td style="vertical-align:top">[HealthAttestation CSP](healthattestation-csp.md)</td>
<td style="vertical-align:top"><p>Added the following settings:.</p>
<ul>
<li>HASEndpoint - added in Windows 10, version 1607, but not documented</li>
<li>TpmReadyStatus - added in the March service release of Windows 10, version 1607</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>[SurfaceHub CSP](surfacehub-csp.md)</p></td>
<td style="vertical-align:top"><p>Updated in Windows 10, version 1703. Added the following nodes and settings:</p>
<ul>
<li>InBoxApps/SkypeForBusiness</li>
<li>InBoxApps/SkypeForBusiness/DomainName</li>
<li>InBoxApps/Connect</li>
<li>InBoxApps/Connect/AutoLaunch</li>
<li>Properties/DefaultVolume</li>
<li>Properties/ScreenTimeout</li>
<li>Properties/SessionTimeout</li>
<li>Properties/SleepTimeout</li>
<li>Properties/AllowSessionResume</li>
<li>Properties/AllowAutoProxyAuth</li>
<li>Properties/DisableSigninSuggestions</li>
<li>Properties/DoNotShowMyMeetingsAndFiles</li>
</ul>
</td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[NetworkQoSPolicy CSP](networkqospolicy-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP for Windows 10, version 1703.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[EnterpriseAPN CSP](enterpriseapn-csp.md)</td>
<td style="vertical-align:top"><p>Added the following setting:</p>
<ul>
<li>Roaming</li>
</ul>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>[WindowsLicensing CSP](windowslicensing-csp.md)</p></td>
<td style="vertical-align:top"><p>Added the following setting for Windows 10, version 1703:</p>
<ul>
<li>ChangeProductKey</li>
</ul>
<p>Added the following new node and settings in Windows 10, version 1607, but not previously documented:</p>
<ul>
<li>Subscriptions</li>
<li>Subscriptions/SubscriptionId</li>
<li>Subscriptions/SubscriptionId/Status</li>
<li>Subscriptions/SubscriptionId/Name</li>
</ul>
</td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</td>
<td style="vertical-align:top"><p>Added the following settings:</p>
<ul>
<li>RevokeOnMDMHandoff</li>
<li>SMBAutoEncryptedFileExtensions</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[WindowsAdvancedThreatProtection CSP](windowsadvancedthreatprotection-csp.md)</td>
<td style="vertical-align:top"><p>Updated in Windows 10, version 1703. Added the following setting:</p>
<ul>
<li>Configuration/TelemetryReportingFrequency</li>
</ul>
</td>
</tr>
</tbody>
</table>

### February 2017

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[SecureAssessment CSP](secureassessment-csp.md)</td>
<td style="vertical-align:top"><p>Updated the following setting names:</p>
<ul>
<li>AllowScreenMonitoring - previously ScreenCaptureCapability</li>
<li>RequirePrinting - previously PrintingCapability</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</td>
<td style="vertical-align:top"><p>Added the following statement to [Settings/EDPShowIcons](enterprisedataprotection-csp.md#settings-edpshowicons):</p><ul>
<li>Starting in Windows 10, version 1703 this setting also configures the visibility of the WIP icon in the title bar of a WIP-protected app.</li></tr>
<tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Added the following new policies for Windows 10, version 1703:</p> 
<ul>
<li>ApplicationDefaults/DefaultAssociationsConfiguration</li>
<li>Browser/AllowAddressBarDropdown</li>
<li>Browser/AllowMicrosoftCompatibilityList</li>
<li>Browser/AllowSearchEngineCustomization</li>
<li>Browser/ClearBrowsingDataOnExit</li>
<li>Browser/ConfigureAdditionalSearchEngines</li>
<li>Browser/DisableLockdownOfStartPages</li>
<li>Browser/PreventFirstRunPage</li>
<li>Browser/PreventLiveTileDataCollection</li>
<li>Browser/SetDefaultSearchEngine</li>
<li>Browser/SyncFavoritesBetweenIEAndMicrosoftEdge</li>
<li>Connectivity/AllowConnectedDevices</li>
<li>DeliveryOptimization/DOMinBatteryPercentageAllowedToUpload</li>
<li>Experience/AllowTailoredExperiencesWithDiagnosticData</li>
<li>Experience/AllowWindowsSpotlightOnActionCenter</li>
<li>Experience/AllowWindowsSpotlightWindowsWelcomeExperience</li>
<li>Settings/ConfigureTaskbarCalendar</li>
<li>Settings/PageVisibilityList</li>
<li>Start/HideAppList</li>
<li>Start/HideChangeAccountSettings</li>
<li>Start/HideFrequentlyUsedApps</li>
<li>Start/HideHibernate</li>
<li>Start/HideLock</li>
<li>Start/HidePowerButton</li>
<li>Start/HideRecentJumplists</li>
<li>Start/HideRecentlyAddedApps</li>
<li>Start/HideRestart</li>
<li>Start/HideShutDown</li>
<li>Start/HideSignOut</li>
<li>Start/HideSleep</li>
<li>Start/HideSwitchAccount</li>
<li>Start/HideUserTile</li>
<li>Start/NoPinningToTaskbar</li>
<li>System/AllowFontProviders</li>
<li>System/DisableOneDriveFileSync</li>
<li>TextInput/AllowKeyboardTextSuggestions</li>
<li>TimeLanguageSettings/AllowSet24HourClock</li>
<li>Update/ActiveHoursMaxRange</li>
<li>Update/AutoRestartNotificationSchedule</li>
<li>Update/AutoRestartRequiredNotificationDismissal</li>
<li>Update/EngagedRestartDeadline</li>
<li>Update/EngagedRestartSnoozeSchedule</li>
<li>Update/EngagedRestartTransitionSchedule</li>
<li>Update/SetAutoRestartNotificationDisable</li>
<li>WindowsLogon/HideFastUserSwitching</li>
</ul>
<p>Starting in Windows 10, version 1703, Update/UpdateServiceUrl is not supported in Windows 10 Mobile Enteprise and IoT Enterprise</p>
<p>Starting in Windows 10, version 1703, in Browser/HomePages you can use the "&lt;about:blank&gt;" value if you don’t want to send traffic to Microsoft.</p>
<p>Starting in Windows 10, version 1703, Start/StartLayout can now be set on a per-device basis in addition to the pre-existing per-user basis.</p>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[NetworkProxy CSP](networkproxy-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP for Windows 10, version 1703.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[BitLocker CSP](bitlocker-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP for Windows 10, version 1703.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</td>
<td style="vertical-align:top"><p>Starting in Windows 10, version 1703, AllowUserDecryption is no longer supported.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[DynamicManagement CSP](dynamicmanagement-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP for Windows 10, version 1703.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Implement server-side support for mobile application management on Windows](implement-server-side-mobile-application-management.md)</td>
<td style="vertical-align:top"><p>New mobile application management (MAM) support added in Windows 10, version 1703.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>[PassportForWork CSP](passportforwork-csp.md)</p></td>
<td style="vertical-align:top"><p>Updated in Windows 10, version 1703. Added the following new node and settings:</p>
<ul>
<li><em>TenantId</em>/Policies/ExcludeSecurityDevices (only for ./Device/Vendor/MSFT)</li>
<li><em>TenantId</em>/Policies/ExcludeSecurityDevices/TPM12 (only for ./Device/Vendor/MSFT)</li>
<li><em>TenantId</em>/Policies/EnablePinRecovery</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[Office CSP](office-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP for Windows 10, version 1703.</p></td>
</tr>
</tbody>
</table>

### January 2017

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Reboot CSP](reboot-csp.md)</td>
<td style="vertical-align:top"><p>RebootNow triggers a reboot within 5 minutes to allow the user to wrap up any active work. Also updated the Note in RebootNow.</p>
</td>
</tr><tr class="even">
<td style="vertical-align:top">[Device update management](device-update-management.md)</td>
<td style="vertical-align:top"><p>Updated the following section:</p>
<ul>
<li>[Recommended Flow for Using the Server-Server Sync Protocol](device-update-management.md#recommendedflow)</li>
</ul></td>
</tr><tr class="odd">
<td style="vertical-align:top">[SecureAssessment CSP](secureassessment-csp.md)</td>
<td style="vertical-align:top"><p>Updated in Windows 10, version 1703. Added the following settings</p>
<ul>
<li>AllowTextSuggestions</li>
<li>PrintingCapability</li>
<li>ScreenCaptureCapability</li>
</ul>
</td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[DevDetail CSP](devdetail-csp.md)</td>
<td style="vertical-align:top"><p>Updated in Windows 10, version 1703. Added the following setting: DeviceHardwareData</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[Messaging CSP](messaging-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP for Windows 10, version 1703. This CSP is only supported in Windows 10 Mobile and Mobile Enteprise editions.</p>
</td>
<tr class="even">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Added the following new policies for Windows 10, version 1703:</p> 
<ul>
<li>DeliveryOptimization/DOAllowVPNPeerCaching</li>
<li>DeliveryOptimization/DOMinDiskSizeAllowedToPeer</li>
<li>DeliveryOptimization/DOMinFileSizeToCache</li>
<li>DeliveryOptimization/DOMinRAMAllowedToPeer</li>
<li>EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint</li>
<li>EnterpriseCloudPrint/CloudPrintOAuthAuthority</li>
<li>EnterpriseCloudPrint/CloudPrintOAuthClientId</li>
<li>EnterpriseCloudPrint/CloudPrintResourceId</li>
<li>EnterpriseCloudPrint/DiscoveryMaxPrinterLimit</li>
<li>EnterpriseCloudPrint/MopriaDiscoveryResourceId</li>
<li>Messaging/AllowMMS</li>
<li>Messaging/AllowRCS</li>
<li>Privacy/LetAppsGetDiagnosticInfo</li>
<li>Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps</li>
<li>Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps</li>
<li>Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsRunInBackground</li>
<li>Privacy/LetAppsRunInBackground_ForceAllowTheseApps</li>
<li>Privacy/LetAppsRunInBackground_ForceDenyTheseApps</li>
<li>Privacy/LetAppsRunInBackground_UserInControlOfTheseApps</li>
</ul>
<p>Added the following new policy for the January service release of Windows 10, version 1607: Update/UpdateServiceUrlAlternate</p>
<p>Removed TextInput/AllowLinguisticDataCollection from Policy CSP in Windows 10 version 1703.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[CleanPC CSP](cleanpc-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP for Windows 10, version 1703.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[DeveloperSetup CSP](developersetup-csp.md)</td>
<td style="vertical-align:top"><p>Added new CSP for Windows 10, version 1703.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">Added a download of Windows 10 version 1607 DDF files</td>
<td style="vertical-align:top"><p>You can download the Windows 10 version 1607 DDF files from [here](http://download.microsoft.com/download/2/3/E/23E27D6B-6E23-4833-B143-915EDA3BDD44/Windows10_1607_DDF.zip).</p>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[DeviceStatus CSP](devicestatus-csp.md)</td>
<td style="vertical-align:top"><p>Added the following values for DeviceStatus/NetworkIdentifiers/MacAddress/Type setting:</p>
<ul>
<li>2 - WLAN (or other Wirless interface)</li>
<li>1 - LAN (or other Wired interface)</li>
<li>0 - Unknown</li>
</ul></td>
</tr>
</tbody>
</table>

### December, 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Update CSP](update-csp.md)</td>
<td style="vertical-align:top"><p>Added the following nodes:</p>
<ul>
<li>FailedUpdates/<em>Failed Update Guid</em>/RevisionNumber</li>
<li>InstalledUpdates/<em>Installed Update Guid</em>/RevisionNumber</li>
<li>PendingRebootUpdates/<em>Pending Reboot Update Guid</em>/RevisionNumber</li>
</ul>
</td>
</tr><tr class="even">
<td style="vertical-align:top">[AppLocker CSP](applocker-csp.md)</td>
<td style="vertical-align:top"><p>Added information about exempt applications list to the EnterpriseDataProtection setting.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</td>
<td style="vertical-align:top"><p>To Settings/RequireProtectionUnderLockConfig, added supported values.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[CM_CellularEntries CSP](cm-cellularentries-csp.md)</td>
<td style="vertical-align:top"><p>To PurposeGroups setting, added the following values Windows 10, version 1709:</p>
<ul>
<li>Purchase - 95522B2B-A6D1-4E40-960B-05E6D3F962AB </li>
<li>Administrative - 2FFD9261-C23C-4D27-8DCF-CDE4E14A3364</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[CellularSettings CSP](cellularsettings-csp.md)<p>[CM_CellularEntries CSP](cm-cellularentries-csp.md)</p><p>[EnterpriseAPN CSP](enterpriseapn-csp.md)</p></td>
<td style="vertical-align:top"><p>In the Windows 10, version 1709, support was added for Windows 10 Home, Pro, Enterprise, and Education editions.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">Updated the DDF topics.</td>
<td style="vertical-align:top">The following DDF topics were updated:
<ul>
<li>[DeviceManageability DDF file](devicemanageability-ddf.md)</li>
<li>[ClientCertificateInstall DDF file](clientcertificateinstall-ddf-file.md)</li>
<li>[DevDetail DDF file](devdetail-ddf-file.md)</li>
<li>[DeviceStatus DDF file](devicestatus-ddf.md)</li>
<li>[DevInfo DDF file](DevInfo-ddf-file.md)</li>
<li>[RootCATrustedCertificates DDF file](rootcacertificates-ddf-file.md)</li>
<li>[PassportForWork DDF](passportforwork-ddf.md)</li>
<li>[EnterpriseExt DDF](enterpriseext-ddf.md)</li>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">[Reporting CSP](reporting-csp.md)</td>
<td style="vertical-align:top"><p>Reporting/SecurityAuditing setting is not supported in Windows 10, version 1607 in the desktop editions.</p>
</td></tr>
</tbody>
</table>

### November 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[EnterpriseAPN CSP](enterpriseapn-csp.md)</td>
<td style="vertical-align:top"><p>The EnterpriseAPN configuration service provider (CSP) is not supported in Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), versions 1511 and 1607.</p>
</td>
</tr><tr class="even">
<td style="vertical-align:top">[Defender CSP](defender-csp.md)</td>
<td style="vertical-align:top"><p>Added the following values for Defender/Scan setting:</p>
<ul>
<li>1 - quick scan</li>
<li>2 - full scan</li>
</ul>
</td>
</tr><tr class="odd">
<td style="vertical-align:top">[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</td>
<td style="vertical-align:top"><p>Added data recovery agent (DRA) information to Settings/DataRecoveryCertificate.</p>
</td>
</tr><tr class="even">
<td style="vertical-align:top">[Disconnecting from the management infrastructure (unenrollment)](disconnecting-from-mdm-unenrollment.md)</td>
<td style="vertical-align:top"><p>Added information about unenrollment from Azure Active Directory Join.</p>
</td>
</tr><tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Updated the description of the following policies.<ul>
<li>[Browser/Homepages](policy-configuration-service-provider.md#browser-homepages)</li>
<li>[DeviceLock/MaxInactivityTimeDeviceLock](policy-configuration-service-provider.md#devicelock-maxinactivitytimedevicelock)</li>
<li>[Experience/ConfigureWindowsSpotlightOnLockScreen](policy-configuration-service-provider.md#experience-configurewindowsspotlightonlockscreen)</li>
</ul></p>
</td>
</tr>
</tbody>
</table>

### October 27, 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[CM_ProxyEntries CSP](cm-proxyentries-csp.md)</td>
<td style="vertical-align:top"><p>Support for OMA DM was added in Windows 10, version 1607</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">[AppLocker CSP](applocker-csp.md)</td>
<td style="vertical-align:top"><p> [Recommended deny list for Windows Information Protection](applocker-csp.md#recommended-deny-list-for-windows-information-protection) - example for Windows 10, version 1607 that denies known unenlightened Microsoft apps from accessing enterprise data as an allowed app. This ensures an administrator does not accidentally make these apps Windows Information Protection allowed, and avoid known compatibility issues related to automatic file encryption with these applications. 
</p>
</td>
</tr>
</tbody>
</table>

### October 21, 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Updated the most restricted values for the following policies:</p>
<ul>
<li>Browser/AllowDoNotTrack</li>
<li>Browser/AllowPasswordManager</li>
<li>Browser/AllowPopups</li>
<li>Browser/AllowSmartScreen</li>
</ul></td>
</tr>
</tbody>
</table>

 

### October 6, 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>WindowsTeam CSP</p></td>
<td style="vertical-align:top"><p>Deleted the WindowsTeam CSP topic. You should use [SurfaceHub](surfacehub-csp.md) instead.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Added the following policies:</p>
<ul>
<li>Search/DisableBackoff</li>
<li>Search/DisableRemovableDriveIndexing</li>
<li>Search/PreventIndexingLowDiskSpaceMB</li>
<li>Search/PreventRemoteQueries</li>
</ul></td>
</tr>
</tbody>
</table>

 

### September 29, 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Updated the following policy:</p>
<ul>
<li>System/AllowBuildPreview - supported in Windows 10 Mobile and Windows 10 Mobile Enterprise</li>
<li>Experience/AllowThirdPartySuggestionsInWindowsSpotlight - supported in Windows 10 Pro.</li>
</ul></td>
</tr>
</tbody>
</table>

 

### September 22, 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[AppLocker CSP](applocker-csp.md)</td>
<td style="vertical-align:top"><p>Added the following note the the list of [Inbox apps and components](applocker-csp.md#inboxappsandcomponents):</p>
<div class="alert">
<strong>Note</strong> This list identifies system apps that ship as part of Windows that you can add to your AppLocker policy to ensure proper functioning of the operating system. If you decide to block some of these apps, we recommend a thorough testing before deploying to your production environment. Failure to do so may result in unexpected failures and can significantly degrade the user experience.
</div>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>[ComputerName](https://msdn.microsoft.com/library/windows/hardware/mt188590) in Windows Provisioning settings reference</p></td>
<td style="vertical-align:top"><p>ComputerName does not support asterisk (*) and does not support empty string.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Updated the supported values for [Update/BranchReadinessLevel](policy-configuration-service-provider.md#update-branchreadinesslevel)</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Device update management](device-update-management.md)</td>
<td style="vertical-align:top"><p>Updated the following section:</p>
<ul>
<li>[Getting update metadata using the Server-Server sync protocol](device-update-management.md#gettingupdatemetadata)</li>
</ul></td>
</tr>
</tbody>
</table>

 

### September 12, 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Added the following statement to Update/DeferUpdatePeriod policy:</p>
<p>In Windows 10 Mobile Enterprise version 1511 devices set to automatic updates, for DeferUpdatePeriod to work, you must set the following:</p>
<ul>
<li>Update/RequireDeferUpgrade must be set to 1</li>
<li>System/AllowTelemetry must be set to 1 or higher</li>
</ul>
<p>Added new policy Experience/AllowThirdPartySuggestionsInWindowsSpotlight in Windows 10, version 1607.</p></td>
</tr>
</tbody>
</table>

 

### September 8, 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md)</td>
<td style="vertical-align:top"><p>Updated the names for the following settings:</p>
<ul>
<li>AppInventoryQuery</li>
<li>AppInventoryResults</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)</td>
<td style="vertical-align:top"><p>Updated the following policy description:</p>
<p></p>
<dl>
<dt><strong>System/AllowTelemetry</strong></dt>
<dd><p>Allow the device to send diagnostic and usage telemetry data, such as Watson.</p>
<p>The following lists describe the supported values:</p>
<p><strong>Windows 8.1 values</strong></p>
<ul>
<li>0 – Not allowed</li>
<li>1 – Allowed, except for Secondary Data Requests.</li>
<li>2 (default) – Allowed.</li>
</ul>
<p><strong>Windows 10 values</strong></p>
<ul>
<li>0 – Security. Information that is required to help keep Windows more secure, including data about the Connected User Experience and Telemetry component settings, the Malicious Software Removal Tool, and Windows Defender.
<div class="alert">
<strong>Note</strong>  This value is only applicable to Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile Enterprise, Windows 10 IoT Core (IoT Core), and Windows Server 2016. Using this setting on other devices is equivalent to setting the value of 1.
</div>
</li>
<li>1 – Basic. Basic device info, including: quality-related data, app compatibility, app usage data, and data from the Security level.</li>
<li>2 – Enhanced. Additional insights, including: how Windows, Windows Server, System Center, and apps are used, how they perform, advanced reliability data, and data from both the Basic and the Security levels.</li>
<li>3 – Full. All data necessary to identify and help to fix problems, plus data from the Security, Basic, and Enhanced levels.</li>
</ul>
<div class="alert">
<strong>Important</strong>  If you are using Windows 8.1 MDM server and set a value of 0 using the legacy AllowTelemetry policy on a Windows 10 Mobile device, then the value is not respected and the telemetry level is silently set to level 1.
</div>
<p>Most restricted value is 0.</p>
</dd>
</dl></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[OMA DM protocol support](oma-dm-protocol-support.md)</td>
<td style="vertical-align:top"><p>Updated the following description:</p>
<ul>
<li>LocURI - Specifies the address of the target or source location. If the address contains a non-alphanumeric character, it must be properly escaped according to the URL encoding standard.</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[VPNv2 CSP](vpnv2-csp.md)</td>
<td style="vertical-align:top"><p>Updated the following description:</p>
<ul>
<li><p>VPNv2/ProfileName - Unique alpha numeric identifier for the profile. The profile name must not include a forward slash (/).</p>
<p>Supported operations include Get, Add, and Delete.</p>
<div class="alert">
<strong>Note</strong>  If the profile name has a space or other non-alphanumeric character, it must be properly escaped according to the URL encoding standard.
</div>
</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[MDM Bridge WMI Provider](https://msdn.microsoft.com/library/windows/hardware/dn905224)</td>
<td style="vertical-align:top"><p>Replaced the descriptions for each class member with links to the corresponding node in the CSP topic. The CSP topics contain the most up-to-date information.</p></td>
</tr>
</tbody>
</table>

 

### September 2, 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)
<p>[PolicyManager CSP](policymanager-csp.md)</p></td>
<td style="vertical-align:top"><p>Added the following note:</p>
<ul>
<li>You cannot disable or enable <strong>Contact Support</strong> and <strong>Windows Feedback</strong> apps using ApplicationManagement/ApplicationRestrictions policy, although these are listed in the [inbox apps](applocker-csp.md#inboxappsandcomponents).</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[PassportForWork CSP](passportforwork-csp.md)</td>
<td style="vertical-align:top"><p>Added the following note:</p>
<div class="alert">
<strong>Important</strong>  Starting with Windows 10, version 1607 all devices only have one PIN associated with Windows Hello for Business. This means that any PIN on a device will be subject to the policies specified in the PassportForWork CSP. The values specified take precedence over any complexity rules set via Exchange ActiveSync (EAS) or the DeviceLock CSP.
</div>
</td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[ProfileXML XSD](vpnv2-profile-xsd.md)</td>
<td style="vertical-align:top"><p>Updated the [Native profile example](vpnv2-profile-xsd.md#native-profile-example) example.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Policy CSP](policy-configuration-service-provider.md)
<p>[Device update management](device-update-management.md)</p></td>
<td style="vertical-align:top"><p>The following policies are not supported in Windows 10 Mobile Enterprise:</p>
<ul>
<li>DeferUpgradePeriod</li>
<li>DeferFeatureUpdatesPeriodInDays</li>
<li>PauseFeatureUpdates</li>
<li>ExcludeWUDrivers</li>
</ul>
<div class="alert">
<strong>Note</strong>  Since these policies are not blocked, you will not get a failure message when you use them to configure a Windows 10 Mobile Enterprise device. However, the policies will not take effect.
</div>
<p>Added additional information about update policies supported for Windows Update for Business in [Changes in Windows 10, version 1607 for update management](device-update-management.md#windows10version1607forupdatemanagement).</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[DevDetail CSP](devdetail-csp.md)</td>
<td style="vertical-align:top"><p>In Ext/Microsoft/DeviceName node, the Replace operation is only supported in Windows 10 Mobile, and not supported in the desktop.</p></td>
</tr>
</tbody>
</table>

 

### August 25, 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Policy DDF file](policy-ddf-file.md)</td>
<td style="vertical-align:top"><p>Updated version for Windows 10, version 1607</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[MDM enrollment of Windows devices](mdm-enrollment-of-windows-devices.md)</td>
<td style="vertical-align:top"><p>Updated the section about enrolling in MDM on a desktop. Added a new section for enrolling in MDM on a phone.</p></td>
</tr>
</tbody>
</table>

 

### August 18, 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[CertificateStore CSP](certificatestore-csp.md)
<p>[CertificateStore DDF file](certificatestore-ddf-file.md)</p></td>
<td style="vertical-align:top"><p>Added the following new settings in Windows 10, version 1607:</p>
<ul>
<li>My/WSTEP/Renew/LastRenewalAttemptTime</li>
<li>My/WSTEP/Renew/RenewNow</li>
</ul></td>
</tr>
</tbody>
</table>

 

### August 11, 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[Bulk enrollment](bulk-enrollment-using-windows-provisioning-tool.md)</td>
<td style="vertical-align:top"><p>Added new section:</p>
<ul>
<li>[Retry logic in case of a failure](bulk-enrollment-using-windows-provisioning-tool.md#retry-logic-in-case-of-a-failure)</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Azure Active Directory integration with MDM](azure-active-directory-integration-with-mdm.md)</td>
<td style="vertical-align:top"><p>Added a link to MDM enrollment templates and CSS files:</p>
<ul>
<li>[Download the Windows 10 templates and CSS files](http://download.microsoft.com/download/3/E/5/3E535D52-6432-47F6-B460-4E685C5D543A/MDM-ISV_1.1.3.zip)</li>
</ul></td>
</tr>
</tbody>
</table>

 

### August 2, 2016

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">[OMA DM protocol support](oma-dm-protocol-support.md)</td>
<td style="vertical-align:top"><p>Added a table of common SyncML response codes that occur during OMA DM sessions.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Mobile device enrollment](mobile-device-enrollment.md)</td>
<td style="vertical-align:top"><p>Updated the following section:</p>
<ul>
<li>[Enrollment error messages](mobile-device-enrollment.md#enrollment-error-messages)</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[SUPL CSP](supl-csp.md)</td>
<td style="vertical-align:top"><p>LocMasterSwitchDependencyNII setting is not deprecated. Removed the note that it's deprecated in Windows 10.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Push notification support for device management](push-notification-windows-mdm.md)</td>
<td style="vertical-align:top"><p>Added the following section:</p>
<ul>
<li>[Get WNS credentials and PFN for MDM push notification](push-notification-windows-mdm.md#get-wns-credentials-and-pfn-for-mdm-push-notification)</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">[RemoteWipe CSP](remotewipe-csp.md)</td>
<td style="vertical-align:top"><p>Updated [The Remote Wipe Process](remotewipe-csp.md#the-remote-wipe-process) section. Added the following note:</p>
<div class="alert">
<strong>Note</strong>  On the desktop, the remote wipe effectively performs a factory reset and the PC does not retain any information about the command once the wipe completes. Any response from the device about the actual status or result of the command may be inconsistent and unreliable because the MDM information has been removed.
</div>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top">[Bulk enrollment](bulk-enrollment-using-windows-provisioning-tool.md)</td>
<td style="vertical-align:top"><p>Added new step-by-step guide for creating and applying provisioning packages.</p></td>
</tr>
</tbody>
</table>

 

## FAQ


<a href="" id="can-there-be-more-than-1-mdm-server-to-enroll-and-manage-devices-in--"></a>**Can there be more than 1 MDM server to enroll and manage devices in Windows 10?**  
No. Only one MDM is allowed.

<a href="" id="how-do-i-set-the-maximum-number-of-azure-active-directory-joined-devices-per-user-"></a>**How do I set the maximum number of Azure Active Directory joined devices per user?**  
1.  Login to the portal as tenant admin: https://manage.windowsazure.com.
2.  Click Active Directory on the left pane.
3.  Choose your tenant.
4.  Click **Configure**.
5.  Set quota to unlimited.

    ![aad maximum joined devices](images/faq-max-devices.png)
 

<a href="" id="dwmapppushsvc "></a>**What is dmwappushsvc?**  

Entry | Description   
--------------- | --------------------  
What is dmwappushsvc? | It is a Windows service that ships in Windows 10 operating system as a part of the windows management platform. It is used internally by the operating system as a queue for categorizing and processing all WAP messages, which include Windows management messages, MMS, NabSync, and Service Indication/Service Loading (SI/SL). The service also initiates and orchestrates management sync sessions with the MDM server. |
What data is handled by dmwappushsvc? | It is a component handling the internal workings of the management platform and involved in processing messages that have been received by the device remotely for management. The messages in the queue are serviced by another component that is also part of the Windows management stack to process messages. The service also routes and authenticates WAP messages received by the device to internal OS components that process them further: MMS, NabSync, SI/SL. |
How do I turn if off? | The service can be stopped from the "Services" console on the device (Start > Run > services.msc). However, since this is a component part of the OS and  required for the proper functioning of the device, we strongly recommend not to do this. |






