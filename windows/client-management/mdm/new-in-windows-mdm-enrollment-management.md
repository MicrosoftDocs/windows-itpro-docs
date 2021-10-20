---
title: What's new in MDM enrollment and management
description: Discover what's new and breaking changes in Windows 10 and 11 mobile device management (MDM) enrollment and management experience across all Windows 10 devices.
MS-HAID:
- 'p\_phdevicemgmt.mdm\_enrollment\_and\_management\_overview'
- 'p\_phDeviceMgmt.new\_in\_windows\_mdm\_enrollment\_management'
ms.assetid: 9C42064F-091C-4901-BC73-9ABE79EE4224
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 10/20/2020
---

# What's new in mobile device enrollment and management

This article provides information about what's new in Windows 10 and 11 mobile device management (MDM) enrollment and management experience across all Windows 10 and 11 devices. This article also provides details about the breaking changes and known issues and frequently asked questions.

For details about Microsoft mobile device management protocols for Windows 10 and 11 see [\[MS-MDM\]: Mobile Device Management Protocol](/openspecs/windows_protocols/ms-mdm/33769a92-ac31-47ef-ae7b-dc8501f7104f) and [\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2]( https://go.microsoft.com/fwlink/p/?LinkId=619347). 


## What’s new in MDM for Windows 11, version 21H2

|New or updated article|Description|
|-----|-----|
| [Policy CSP](policy-configuration-service-provider.md) | Added the following new policies in Windows 11, version 21H2:<br>- NewsAndInterests/AllowNewsAndInterests<br>- Experiences/ConfigureChatIcon<br>- Start/ConfigureStartPins<br>- Virtualizationbasedtechnology/HypervisorEnforcedCodeIntegrity<br>- Virtualizationbasedtechnology/RequireUEFIMemoryAttributesTable |
| [DMClient CSP](dmclient-csp.md) | Updated the description of the following node:<br>- Provider/ProviderID/ConfigLock/Lock<br>- Provider/ProviderID/ConfigLock/UnlockDuration<br>- Provider/ProviderID/ConfigLock/SecuredCore |


## Breaking changes and known issues

### Get command inside an atomic command is not supported

In Windows 10 and 11, a Get command inside an atomic command is not supported. 

### Apps installed using WMI classes are not removed

Applications installed using WMI classes are not removed when the MDM account is removed from device.

### Passing CDATA in SyncML does not work

Passing CDATA in data in SyncML to ConfigManager and CSPs does not work in Windows 10 and 11. .

### SSL settings in IIS server for SCEP must be set to "Ignore"

The certificate setting under "SSL Settings" in the IIS server for SCEP must be set to "Ignore" in Windows 10 and 11. 

![ssl settings.](images/ssl-settings.png)

### MDM enrollment fails on the Windows device when traffic is going through proxy

When the Windows device is configured to use a proxy that requires authentication, the enrollment will fail. To work around this issue, the user can use a proxy that does not require authentication or remove the proxy setting from the connected network.

### Server-initiated unenrollment failure

Server-initiated unenrollment for a device enrolled by adding a work account silently fails to leave the MDM account active. MDM policies and resources are still in place and the client can continue to sync with the server.

Remote server unenrollment is disabled for mobile devices enrolled via Azure Active Directory Join. It returns an error message to the server. The only way to remove enrollment for a mobile device that is Azure AD joined is by remotely wiping the device.

### Certificates causing issues with Wi-Fi and VPN

In Windows 10 and 11, when using the ClientCertificateInstall to install certificates to the device store and the user store and both certificates are sent to the device in the same MDM payload, the certificate intended for the device store will also get installed in the user store. This may cause issues with Wi-Fi or VPN when choosing the correct certificate to establish a connection. We are working to fix this issue.

### Version information for Windows 11

The software version information from **DevDetail/Ext/Microsoft/OSPlatform** does not match the version in **Settings** under **System/About**.

### Multiple certificates might cause Wi-Fi connection instabilities in Windows 10 and 11

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

> [!NOTE]
> For PEAP or TTLS Profiles the EAP TLS XML is embedded within some PEAP or TTLS specific elements.
 
```xml
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

> [!NOTE]
> The EAP TLS XSD is located at **%systemdrive%\\Windows\\schemas\\EAPMethods\\eaptlsconnectionpropertiesv3.xsd**

Alternatively you can use the following procedure to create an EAP Configuration XML.

1.  Follow steps 1 through 7 in the [EAP configuration](eap-configuration.md) article.
2.  In the Microsoft VPN SelfHost Properties dialog box, select **Microsoft : Smart Card or other Certificate** from the drop down (this selects EAP TLS.)

    ![vpn selfhost properties window.](images/certfiltering1.png)

    > [!NOTE]
    > For PEAP or TTLS, select the appropriate method and continue following this procedure.

3.  Click the **Properties** button underneath the drop down menu.
4.  In the **Smart Card or other Certificate Properties** menu, select the **Advanced** button.

    ![smart card or other certificate properties window.](images/certfiltering2.png)
5.  In the **Configure Certificate Selection** menu, adjust the filters as needed.

    ![configure certificate selection window.](images/certfiltering3.png)
6.  Click **OK** to close the windows to get back to the main rasphone.exe dialog box.
7.  Close the rasphone dialog box.
8.  Continue following the procedure in the [EAP configuration](eap-configuration.md) article from Step 9 to get an EAP TLS profile with appropriate filtering.

> [!NOTE]
> You can also set all the other applicable EAP Properties through this UI as well. A guide to what these properties mean can be found in [Extensible Authentication Protocol (EAP) Settings for Network Access](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh945104(v=ws.11)).


### MDM client will immediately check-in with the MDM server after client renews WNS channel URI

After the MDM client automatically renews the WNS channel URI, the MDM client will immediately check-in with the MDM server. Henceforth, for every MDM client check-in, the MDM server should send a GET request for "ProviderID/Push/ChannelURI" to retrieve the latest channel URI and compare it with the existing channel URI; then update the channel URI if necessary.

### User provisioning failure in Azure Active Directory joined Windows 10 and 11 devices

In Azure AD joined Windows 10 and 11, provisioning /.User resources fails when the user is not logged in as an Azure AD user. If you attempt to join Azure AD from **Settings** &gt; **System** &gt; **About** user interface, make sure to log off and log on with Azure AD credentials to get your organizational configuration from your MDM server. This behavior is by design.

### Requirements to note for VPN certificates also used for Kerberos Authentication

If you want to use the certificate used for VPN authentication also for Kerberos authentication (required if you need access to on-premises resources using NTLM or Kerberos), the user's certificate must meet the requirements for smart card certificate, the Subject field should contain the DNS domain name in the DN or the SAN should contain a fully qualified UPN so that the DC can be located from the DNS registrations. If certificates that do not meet these requirements are used for VPN, users may fail to access resources that require Kerberos authentication. 

### Device management agent for the push-button reset is not working

The DM agent for [push-button reset](/windows-hardware/manufacture/desktop/push-button-reset-overview) keeps the registry settings for OMA DM sessions, but deletes the task schedules. The client enrollment is retained, but it never syncs with the MDM service.


## Frequently Asked Questions


### **Can there be more than one MDM server to enroll and manage devices in Windows 10 or 11?**
No. Only one MDM is allowed.

### **How do I set the maximum number of Azure Active Directory joined devices per user?**
1.  Login to the portal as tenant admin: https://manage.windowsazure.com.
2.  Click Active Directory on the left pane.
3.  Choose your tenant.
4.  Click **Configure**.
5.  Set quota to unlimited.

    ![aad maximum joined devices.](images/faq-max-devices.png)
 

### **What is dmwappushsvc?**

Entry | Description
--------------- | --------------------
What is dmwappushsvc? | It is a Windows service that ships in Windows 10 and 11 operating system as a part of the windows management platform. It is used internally by the operating system as a queue for categorizing and processing all WAP messages, which include Windows management messages, MMS, NabSync, and Service Indication/Service Loading (SI/SL). The service also initiates and orchestrates management sync sessions with the MDM server. |
What data is handled by dmwappushsvc? | It is a component handling the internal workings of the management platform and involved in processing messages that have been received by the device remotely for management. The messages in the queue are serviced by another component that is also part of the Windows management stack to process messages. The service also routes and authenticates WAP messages received by the device to internal OS components that process them further: MMS, NabSync, SI/SL. This service does not send telemetry.|
How do I turn if off? | The service can be stopped from the "Services" console on the device (Start > Run > services.msc). However, since this is a component part of the OS and  required for the proper functioning of the device, we strongly recommend not to do this. Disabling this will cause your management to fail.|



## What’s new in MDM for Windows 10, version 20H2

|New or updated article|Description|
|-----|-----|
| [Policy CSP](policy-configuration-service-provider.md) | Added the following new policies in Windows 10, version 20H2:<br>- [Experience/DisableCloudOptimizedContent](policy-csp-experience.md#experience-disablecloudoptimizedcontent)<br>- [LocalUsersAndGroups/Configure](policy-csp-localusersandgroups.md#localusersandgroups-configure)<br>- [MixedReality/AADGroupMembershipCacheValidityInDays](policy-csp-mixedreality.md#mixedreality-aadgroupmembershipcachevalidityindays)<br>- [MixedReality/BrightnessButtonDisabled](policy-csp-mixedreality.md#mixedreality-brightnessbuttondisabled)<br>- [MixedReality/FallbackDiagnostics](policy-csp-mixedreality.md#mixedreality-fallbackdiagnostics)<br>- [MixedReality/MicrophoneDisabled](policy-csp-mixedreality.md#mixedreality-microphonedisabled)<br>- [MixedReality/VolumeButtonDisabled](policy-csp-mixedreality.md#mixedreality-volumebuttondisabled)<br>- [Multitasking/BrowserAltTabBlowout](policy-csp-multitasking.md#multitasking-browseralttabblowout) |
| [SurfaceHub CSP](surfacehub-csp.md) | Added the following new node:<br>- Properties/SleepMode |
| [WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md) | Updated the description of the following node:<br>- Settings/AllowWindowsDefenderApplicationGuard |

## What’s new in MDM for Windows 10, version 2004

| New or updated article | Description |
|-----|-----|
| [Policy CSP](policy-configuration-service-provider.md) | Added the following new policies in Windows 10, version 2004: <br>- [ApplicationManagement/BlockNonAdminUserInstall](policy-csp-applicationmanagement.md#applicationmanagement-blocknonadminuserinstall)<br>- [Bluetooth/SetMinimumEncryptionKeySize](policy-csp-bluetooth.md#bluetooth-setminimumencryptionkeysize)<br>- [DeliveryOptimization/DOCacheHostSource](policy-csp-deliveryoptimization.md#deliveryoptimization-docachehostsource)<br>- [DeliveryOptimization/DOMaxBackgroundDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxbackgrounddownloadbandwidth)<br>- [DeliveryOptimization/DOMaxForegroundDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxforegrounddownloadbandwidth)<br>- [Education/AllowGraphingCalculator](policy-csp-education.md#education-allowgraphingcalculator)<br>- [TextInput/ConfigureJapaneseIMEVersion](policy-csp-textinput.md#textinput-configurejapaneseimeversion)<br>- [TextInput/ConfigureSimplifiedChineseIMEVersion](policy-csp-textinput.md#textinput-configuresimplifiedchineseimeversion)<br>- [TextInput/ConfigureTraditionalChineseIMEVersion](policy-csp-textinput.md#textinput-configuretraditionalchineseimeversion)<br><br>Updated the following policy in Windows 10, version 2004:<br>- [DeliveryOptimization/DOCacheHost](policy-csp-deliveryoptimization.md#deliveryoptimization-docachehost)<br><br>Deprecated the following policies in Windows 10, version 2004:<br>- [DeliveryOptimization/DOMaxDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxdownloadbandwidth)<br>- [DeliveryOptimization/DOMaxUploadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxuploadbandwidth)<br>- [DeliveryOptimization/DOPercentageMaxDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-dopercentagemaxdownloadbandwidth) |
| [DevDetail CSP](devdetail-csp.md) | Added the following new node:<br>- Ext/Microsoft/DNSComputerName |
| [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md) | Added the following new node:<br>- IsStub |
| [SUPL CSP](supl-csp.md) | Added the following new node:<br>- FullVersion |

## What’s new in MDM for Windows 10, version 1909

| New or updated article | Description |
|-----|-----|
| [BitLocker CSP](bitlocker-csp.md) | Added the following new nodes in Windows 10, version 1909:<br>- ConfigureRecoveryPasswordRotation<br>- RotateRecoveryPasswords<br>- RotateRecoveryPasswordsStatus<br>- RotateRecoveryPasswordsRequestID|

## What’s new in MDM for Windows 10, version 1903

| New or updated article | Description |
|-----|-----|
|[Policy CSP](policy-configuration-service-provider.md) | Added the following new policies in Windows 10, version 1903:<br>- [DeliveryOptimization/DODelayCacheServerFallbackBackground](policy-csp-deliveryoptimization.md#deliveryoptimization-dodelaycacheserverfallbackbackground)<br>- [DeliveryOptimization/DODelayCacheServerFallbackForeground](policy-csp-deliveryoptimization.md#deliveryoptimization-dodelaycacheserverfallbackforeground)<br>- [DeviceHealthMonitoring/AllowDeviceHealthMonitoring](policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-allowdevicehealthmonitoring)<br>- [DeviceHealthMonitoring/ConfigDeviceHealthMonitoringScope](policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-configdevicehealthmonitoringscope)<br>- [DeviceHealthMonitoring/ConfigDeviceHealthMonitoringUploadDestination](policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-configdevicehealthmonitoringuploaddestination)<br>- [DeviceInstallation/AllowInstallationOfMatchingDeviceInstanceIDs](policy-csp-deviceinstallation.md#deviceinstallationallowinstallationofmatchingdeviceinstanceids)<br>- [DeviceInstallation/PreventInstallationOfMatchingDeviceInstanceIDs](policy-csp-deviceinstallation.md#deviceinstallationpreventinstallationofmatchingdeviceinstanceids)<br>- [Experience/ShowLockOnUserTile](policy-csp-experience.md#experience-showlockonusertile)<br>- [InternetExplorer/AllowEnhancedSuggestionsInAddressBar](policy-csp-internetexplorer.md#internetexplorer-allowenhancedsuggestionsinaddressbar)<br>- [InternetExplorer/DisableActiveXVersionListAutoDownload](policy-csp-internetexplorer.md#internetexplorer-disableactivexversionlistautodownload)<br>- [InternetExplorer/DisableCompatView](policy-csp-internetexplorer.md#internetexplorer-disablecompatview)<br>- [InternetExplorer/DisableFeedsBackgroundSync](policy-csp-internetexplorer.md#internetexplorer-disablefeedsbackgroundsync)<br>- [InternetExplorer/DisableGeolocation](policy-csp-internetexplorer.md#internetexplorer-disablegeolocation)<br>- [InternetExplorer/DisableWebAddressAutoComplete](policy-csp-internetexplorer.md#internetexplorer-disablewebaddressautocomplete)<br>- [InternetExplorer/NewTabDefaultPage](policy-csp-internetexplorer.md#internetexplorer-newtabdefaultpage)<br>- [Power/EnergySaverBatteryThresholdOnBattery](policy-csp-power.md#power-energysaverbatterythresholdonbattery)<br>- [Power/EnergySaverBatteryThresholdPluggedIn](policy-csp-power.md#power-energysaverbatterythresholdpluggedin)<br>- [Power/SelectLidCloseActionOnBattery](policy-csp-power.md#power-selectlidcloseactiononbattery)<br>- [Power/SelectLidCloseActionPluggedIn](policy-csp-power.md#power-selectlidcloseactionpluggedin)<br>- [Power/SelectPowerButtonActionOnBattery](policy-csp-power.md#power-selectpowerbuttonactiononbattery)<br>- [Power/SelectPowerButtonActionPluggedIn](policy-csp-power.md#power-selectpowerbuttonactionpluggedin)<br>- [Power/SelectSleepButtonActionOnBattery](policy-csp-power.md#power-selectsleepbuttonactiononbattery)<br>- [Power/SelectSleepButtonActionPluggedIn](policy-csp-power.md#power-selectsleepbuttonactionpluggedin)<br>- [Power/TurnOffHybridSleepOnBattery](policy-csp-power.md#power-turnoffhybridsleeponbattery)<br>- [Power/TurnOffHybridSleepPluggedIn](policy-csp-power.md#power-turnoffhybridsleeppluggedin)<br>- [Power/UnattendedSleepTimeoutOnBattery](policy-csp-power.md#power-unattendedsleeptimeoutonbattery)<br>- [Power/UnattendedSleepTimeoutPluggedIn](policy-csp-power.md#power-unattendedsleeptimeoutpluggedin)<br>- [Privacy/LetAppsActivateWithVoice](policy-csp-privacy.md#privacy-letappsactivatewithvoice)<br>- [Privacy/LetAppsActivateWithVoiceAboveLock](policy-csp-privacy.md#privacy-letappsactivatewithvoiceabovelock)<br>- [Search/AllowFindMyFiles](policy-csp-search.md#search-allowfindmyfiles)<br>- [ServiceControlManager/SvchostProcessMitigation](policy-csp-servicecontrolmanager.md#servicecontrolmanager-svchostprocessmitigation)<br>- [System/AllowCommercialDataPipeline](policy-csp-system.md#system-allowcommercialdatapipeline)<br>- [System/TurnOffFileHistory](policy-csp-system.md#system-turnofffilehistory)<br>- [TimeLanguageSettings/ConfigureTimeZone](policy-csp-timelanguagesettings.md#timelanguagesettings-configuretimezone)<br>- [Troubleshooting/AllowRecommendations](policy-csp-troubleshooting.md#troubleshooting-allowrecommendations)<br>- [Update/AutomaticMaintenanceWakeUp](policy-csp-update.md#update-automaticmaintenancewakeup)<br>- [Update/ConfigureDeadlineForFeatureUpdates](policy-csp-update.md#update-configuredeadlineforfeatureupdates)<br>- [Update/ConfigureDeadlineForQualityUpdates](policy-csp-update.md#update-configuredeadlineforqualityupdates)<br>- [Update/ConfigureDeadlineGracePeriod](policy-csp-update.md#update-configuredeadlinegraceperiod)<br>- [WindowsLogon/AllowAutomaticRestartSignOn](policy-csp-windowslogon.md#windowslogon-allowautomaticrestartsignon)<br>- [WindowsLogon/ConfigAutomaticRestartSignOn](policy-csp-windowslogon.md#windowslogon-configautomaticrestartsignon)<br>- [WindowsLogon/EnableFirstLogonAnimation](policy-csp-windowslogon.md#windowslogon-enablefirstlogonanimation)|
| [Policy CSP - Audit](policy-csp-audit.md) | Added the new Audit policy CSP. |
| [ApplicationControl CSP](applicationcontrol-csp.md) | Added the new CSP. |
| [Defender CSP](defender-csp.md) | Added the following new nodes:<br>- Health/TamperProtectionEnabled<br>- Health/IsVirtualMachine<br>- Configuration<br>- Configuration/TamperProtection<br>- Configuration/EnableFileHashComputation |
| [DiagnosticLog CSP](diagnosticlog-csp.md) <br> [DiagnosticLog DDF](diagnosticlog-ddf.md) | Added version 1.4 of the CSP in Windows 10, version 1903. <br>Added the new 1.4 version of the DDF. <br>Added the following new nodes:<br>- Policy<br>- Policy/Channels<br>- Policy/Channels/ChannelName<br>- Policy/Channels/ChannelName/MaximumFileSize<br>- Policy/Channels/ChannelName/SDDL<br>- Policy/Channels/ChannelName/ActionWhenFull<br>- Policy/Channels/ChannelName/Enabled<br>- DiagnosticArchive<br>- DiagnosticArchive/ArchiveDefinition<br>- DiagnosticArchive/ArchiveResults |
| [EnrollmentStatusTracking CSP](enrollmentstatustracking-csp.md) | Added the new CSP. |
| [PassportForWork CSP](passportforwork-csp.md) | Added the following new nodes:<br>- SecurityKey<br>- SecurityKey/UseSecurityKeyForSignin |


## What’s new in MDM for Windows 10, version 1809

| New or updated article | Description |
|-----|-----|
|[Policy CSP](policy-configuration-service-provider.md) | Added the following new policy settings in Windows 10, version 1809:<br>- ApplicationManagement/LaunchAppAfterLogOn<br>- ApplicationManagement/ScheduleForceRestartForUpdateFailures<br>- Authentication/EnableFastFirstSignIn (Preview mode only)<br>- Authentication/EnableWebSignIn (Preview mode only)<br>- Authentication/PreferredAadTenantDomainName<br>- Browser/AllowFullScreenMode<br>- Browser/AllowPrelaunch<br>- Browser/AllowPrinting<br>- Browser/AllowSavingHistory<br>- Browser/AllowSideloadingOfExtensions<br>- Browser/AllowTabPreloading<br>- Browser/AllowWebContentOnNewTabPage<br>- Browser/ConfigureFavoritesBar<br>- Browser/ConfigureHomeButton<br>- Browser/ConfigureKioskMode<br>- Browser/ConfigureKioskResetAfterIdleTimeout<br>- Browser/ConfigureOpenMicrosoftEdgeWith<br>- Browser/ConfigureTelemetryForMicrosoft365Analytics<br>- Browser/PreventCertErrorOverrides<br>- Browser/SetHomeButtonURL<br>- Browser/SetNewTabPageURL<br>- Browser/UnlockHomeButton<br>- Defender/CheckForSignaturesBeforeRunningScan<br>- Defender/DisableCatchupFullScan<br>- Defender/DisableCatchupQuickScan<br>- Defender/EnableLowCPUPriority<br>- Defender/SignatureUpdateFallbackOrder<br>- Defender/SignatureUpdateFileSharesSources<br>- DeviceGuard/ConfigureSystemGuardLaunch<br>- DeviceInstallation/AllowInstallationOfMatchingDeviceIDs<br>- DeviceInstallation/AllowInstallationOfMatchingDeviceSetupClasses<br>- DeviceInstallation/PreventDeviceMetadataFromNetwork<br>- DeviceInstallation/PreventInstallationOfDevicesNotDescribedByOtherPolicySettings<br>- DmaGuard/DeviceEnumerationPolicy<br>- Experience/AllowClipboardHistory<br>- Experience/DoNotSyncBrowserSettings<br>- Experience/PreventUsersFromTurningOnBrowserSyncing<br>- Kerberos/UPNNameHints<br>- Privacy/AllowCrossDeviceClipboard<br>- Privacy/DisablePrivacyExperience<br>- Privacy/UploadUserActivities<br>- Security/RecoveryEnvironmentAuthentication<br>- System/AllowDeviceNameInDiagnosticData<br>- System/ConfigureMicrosoft365UploadEndpoint<br>- System/DisableDeviceDelete<br>- System/DisableDiagnosticDataViewer<br>- Storage/RemovableDiskDenyWriteAccess<br>- TaskManager/AllowEndTask<br>- Update/DisableWUfBSafeguards<br>- Update/EngagedRestartDeadlineForFeatureUpdates<br>- Update/EngagedRestartSnoozeScheduleForFeatureUpdates<br>- Update/EngagedRestartTransitionScheduleForFeatureUpdates<br>- Update/SetDisablePauseUXAccess<br>- Update/SetDisableUXWUAccess<br>- WindowsDefenderSecurityCenter/DisableClearTpmButton<br>- WindowsDefenderSecurityCenter/DisableTpmFirmwareUpdateWarning<br>- WindowsDefenderSecurityCenter/HideWindowsSecurityNotificationAreaControl<br>- WindowsLogon/DontDisplayNetworkSelectionUI |
| [BitLocker CSP](bitlocker-csp.md) | Added a new node AllowStandardUserEncryption in Windows 10, version 1809. Added support for Windows 10 Pro. |
| [Defender CSP](defender-csp.md) | Added a new node Health/ProductStatus in Windows 10, version 1809. |
| [DevDetail CSP](devdetail-csp.md) | Added a new node SMBIOSSerialNumber in Windows 10, version 1809. |
| [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md) | Added NonRemovable setting under AppManagement node in Windows 10, version 1809. |
| [Office CSP](office-csp.md) | Added FinalStatus setting in Windows 10, version 1809. |
| [PassportForWork CSP](passportforwork-csp.md) | Added new settings in Windows 10, version 1809. |
| [RemoteWipe CSP](remotewipe-csp.md) | Added new settings in Windows 10, version 1809. |
| [SUPL CSP](supl-csp.md) | Added 3 new certificate nodes in Windows 10, version 1809. |
| [TenantLockdown CSP](tenantlockdown-csp.md) | Added new CSP in Windows 10, version 1809. |
| [Wifi CSP](wifi-csp.md) | Added a new node WifiCost in Windows 10, version 1809. |
| [WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md) | Added new settings in Windows 10, version 1809. |
| [WindowsLicensing CSP](windowslicensing-csp.md) | Added S mode settings and SyncML examples in Windows 10, version 1809. |
| [Win32CompatibilityAppraiser CSP](win32compatibilityappraiser-csp.md) | Added new configuration service provider in Windows 10, version 1809. |


## Change history for MDM documentation

To know what's changed in MDM documentation, see [Change history for MDM documentation](change-history-for-mdm-documentation.md).
