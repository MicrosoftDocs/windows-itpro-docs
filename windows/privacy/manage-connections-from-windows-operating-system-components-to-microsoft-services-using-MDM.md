---
title: Manage connections from Windows operating system components to Microsoft services using Microsoft Intune MDM Server
description: Use MDM CSPs to minimize connections from Windows to Microsoft services, or to configure particular privacy settings.
ms.service: windows-client
ms.subservice: itpro-privacy
ms.localizationpriority: high
author: DHB-MSFT
ms.author: danbrown
manager: laurawi
ms.date: 05/15/2019
ms.topic: reference
---

# Manage connections from Windows 10 and Windows 11 operating system components to Microsoft services using Microsoft Intune MDM Server

**Applies to**

- Windows 11
- Windows 10 Enterprise 1903 version and newer


This article describes the network connections that Windows 10 and Windows 11 components make to Microsoft and the Mobile Device Management/Configuration Service Provider (MDM/CSP) and custom Open Mobile Alliance Uniform Resource Identifier ([OMA URI](/mem/intune/configuration/custom-settings-windows-10)) policies available to IT Professionals using Microsoft Intune to help manage the data shared with Microsoft. If you want to minimize connections from Windows to Microsoft services, or configure privacy settings, there are a number of settings for consideration. For example, you can configure diagnostic data to the lowest level for your edition of Windows and evaluate other connections Windows makes to Microsoft services you want to turn off using the instructions in this article.  While it's possible to minimize network connections to Microsoft, there are many reasons why these communications are enabled by default, such as updating malware definitions and maintaining current certificate revocation lists. This data helps us deliver a secure, reliable, and up-to-date experience.

>[!IMPORTANT]
>- The Allowed Traffic endpoints for an MDM configuration are here: [Allowed Traffic](#bkmk-mdm-allowedtraffic)
>   - CRL (Certificate Revocation List) and OCSP (Online Certificate Status Protocol) network traffic cannot be disabled and will still show up in network traces. CRL and OCSP checks are made to the issuing certificate authorities. Microsoft is one of these authorities. There are many others such as DigiCert, Thawte, Google, Symantec, and VeriSign.
>   - There is some traffic which is specifically required for the Microsoft Intune based management of Windows 10 and Windows 11 devices. This traffic includes Windows Notifications Service (WNS), Automatic Root Certificates Update (ARCU), and some Windows Update related traffic. The aforementioned traffic comprises the Allowed Traffic for Microsoft Intune MDM Server to manage Windows 10 and Windows 11 devices.
>- For security reasons, it is important to take care in deciding which settings to configure as some of them may result in a less secure device. Examples of settings that can lead to a less secure device configuration include: disabling Windows Update, disabling Automatic Root Certificates Update, and disabling Windows Defender. Accordingly, we do not recommend disabling any of these features.
>- To ensure CSPs take priority over Group Policies in case of conflicts, use the [ControlPolicyConflict](/windows/client-management/mdm/policy-csp-controlpolicyconflict) policy.
>- The **Get Help** and **Give us Feedback** links in Windows may no longer work after applying some or all of the MDM/CSP settings.

>[!Warning]
>If a user executes the "Reset this PC" command (Settings -> Update & Security -> Recovery) with the "Remove Everything" option the >Windows Restricted Traffic Limited Functionality settings will need to be re-applied in order re-restrict the device's egress traffic. >To do this the client must be re-enrolled to the Microsoft Intune service. Egress traffic may occur during the period prior to the re->application of the Restricted Traffic Limited Functionality settings.  If the user executes a "Reset this PC" with the "Keep my files" >option the Restricted Traffic Limited Functionality settings are retained on the device, and therefore the client will remain in a >Restricted Traffic configuration during and after the "Keep my files" reset, and no re-enrollment is required.

For more information on Microsoft Intune, see [Transform IT service delivery for your modern workplace](https://www.microsoft.com/en-us/enterprise-mobility-security/microsoft-intune?rtc=1) and [Microsoft Intune documentation](/mem/intune/).

For detailed information about managing network connections to Microsoft services using Windows Settings, Group Policies and Registry settings see [Manage connections from Windows operating system components to Microsoft services](./manage-connections-from-windows-operating-system-components-to-microsoft-services.md).

We're always striving to improve our documentation and welcome your feedback. You can provide feedback by sending email to **telmhelp**@**microsoft.com**.


## Settings for Windows 10 Enterprise edition 1903 and later and Windows 11

The following table lists management options for each setting.

For Windows 10 and Windows 11, the following MDM policies are available in the [Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider).

1. **Automatic Root Certificates Update**
   1. MDM Policy: There's intentionally no MDM available for Automatic Root Certificate Update. This MDM doesn't exist since it would prevent the operation and management of MDM management of devices.

1. **Cortana and Search**
   1. MDM Policy: [Experience/AllowCortana](/windows/client-management/mdm/policy-csp-experience#experience-allowcortana). Choose whether to let Cortana install and run on the device. **Set to 0 (zero)**
   1. MDM Policy: [Search/AllowSearchToUseLocation](/windows/client-management/mdm/policy-csp-search#search-allowsearchtouselocation). Choose whether Cortana and Search can provide location-aware search results. **Set to 0 (zero)**

1. **Date & Time**
   1. MDM Policy: [Settings/AllowDateTime](/windows/client-management/mdm/policy-csp-settings#settings-allowdatetime). Allows the user to change date and time settings.  **Set to 0 (zero)**

1. **Device metadata retrieval**
   1. MDM Policy: [DeviceInstallation/PreventDeviceMetadataFromNetwork](/windows/client-management/mdm/policy-csp-deviceinstallation#deviceinstallation-preventdevicemetadatafromnetwork). Choose whether to prevent Windows from retrieving device metadata from the Internet.  **Set to Enabled**

1. **Find My Device**
   1. MDM Policy: [Experience/AllowFindMyDevice](/windows/client-management/mdm/policy-csp-experience#experience-allowfindmydevice). This policy turns on Find My Device.  **Set to 0  (zero)**

1. **Font streaming**
   1. MDM Policy: [System/AllowFontProviders](/windows/client-management/mdm/policy-csp-system#system-allowfontproviders).  Setting that determines whether Windows is allowed to download fonts and font catalog data from an online font provider. **Set to 0  (zero)**
1. **Insider Preview builds**
   1. MDM Policy: [System/AllowBuildPreview](/windows/client-management/mdm/policy-csp-system#system-allowbuildpreview). This policy setting determines whether users can access the Insider build controls in the Advanced Options for Windows Update. **Set to 0  (zero)**

1. **Internet Explorer** The following Microsoft Internet Explorer MDM policies are available in the [Internet Explorer CSP](/windows/client-management/mdm/policy-csp-internetexplorer)
   1. MDM Policy: [InternetExplorer/AllowSuggestedSites](/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-allowsuggestedsites). Recommends websites based on the user’s browsing activity. **Set to Disabled**
   1. MDM Policy: [InternetExplorer/PreventManagingSmartScreenFilter](/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-preventmanagingsmartscreenfilter). Prevents the user from managing Windows Defender SmartScreen, which warns the user if the website being visited is known for fraudulent attempts to gather personal information through "phishing," or is known to host malware. **Set to String** with Value:
      1. **\<enabled/>\<data id=”IE9SafetyFilterOptions” value=”1”/>**
   1. MDM Policy: [InternetExplorer/DisableFlipAheadFeature](/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-disableflipaheadfeature). Determines whether a user can swipe across a screen or click Forward to go to the next pre-loaded page of a website. **Set to Enabled**
   1. MDM Policy: [InternetExplorer/DisableHomePageChange](/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-disablehomepagechange). Determines whether users can change the default Home Page or not. **Set to String** with Value:
      1. **\<enabled/>\<data id=”EnterHomePagePrompt” value=”Start Page”/>**
   1. MDM Policy: [InternetExplorer/DisableFirstRunWizard](/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-disablefirstrunwizard). Prevents Internet Explorer from running the First Run wizard the first time a user starts the browser after installing Internet Explorer or Windows. **Set to String** with Value:
      1. **\<enabled/>\<data id=”FirstRunOptions” value=”1”/>**

1. **Live Tiles**
   1. MDM Policy: [Notifications/DisallowTileNotification](/windows/client-management/mdm/policy-csp-notifications). This policy setting turns off tile notifications. If you enable this policy setting applications and system features won't be able to update their tiles and tile badges in the Start screen.  **Integer value 1**

1. **Mail synchronization**
   1. MDM Policy: [Accounts/AllowMicrosoftAccountConnection](/windows/client-management/mdm/policy-csp-accounts#accounts-allowmicrosoftaccountconnection). Specifies whether the user is allowed to use a Microsoft account for non-email related connection authentication and services. **Set to 0 (zero)**

1. **Microsoft Account**
   1. MDM Policy: [Accounts/AllowMicrosoftAccountSignInAssistant](/windows/client-management/mdm/policy-csp-accounts#accounts-allowmicrosoftaccountsigninassistant). Disable the Microsoft Account Sign-In Assistant. **Set to 0 (zero)**

1. **Microsoft Edge** The following Microsoft Edge MDM policies are available in the [Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider). For a complete list of the Microsoft Edge policies, see [Available policies for Microsoft Edge](/microsoft-edge/deploy/available-policies).
   1. MDM Policy: [Browser/AllowAutoFill](/windows/client-management/mdm/policy-csp-browser#browser-allowautofill). Choose whether employees can use autofill on websites. **Set to 0 (zero)**
   1. MDM Policy: [Browser/AllowDoNotTrack](/windows/client-management/mdm/policy-csp-browser#browser-allowdonottrack). Choose whether employees can send Do Not Track headers. **Set to 0 (zero)**
   1. MDM Policy: [Browser/AllowMicrosoftCompatbilityList](/windows/client-management/mdm/policy-csp-browser#browser-allowmicrosoftcompatibilitylist). Specify the Microsoft compatibility list in Microsoft Edge. **Set to 0 (zero)**
   1. MDM Policy: [Browser/AllowPasswordManager](/windows/client-management/mdm/policy-csp-browser#browser-allowpasswordmanager). Choose whether employees can save passwords locally on their devices. **Set to 0 (zero)**
   1. MDM Policy: [Browser/AllowSearchSuggestionsinAddressBar](/windows/client-management/mdm/policy-csp-browser#browser-allowsearchsuggestionsinaddressbar). Choose whether the Address Bar shows search suggestions. **Set to 0  (zero)**
   1. MDM Policy: [Browser/AllowSmartScreen](/windows/client-management/mdm/policy-csp-browser#browser-allowsmartscreen). Choose whether Windows Defender SmartScreen is turned on or off.  **Set to 0  (zero)**

1. **Network Connection Status Indicator**
   1. [Connectivity/DisallowNetworkConnectivityActiveTests](/windows/client-management/mdm/policy-csp-connectivity#connectivity-disallownetworkconnectivityactivetests).  Note: After you apply this policy, you must restart the device for the policy setting to take effect. **Set to 1 (one)**

1. **Offline maps**
   1. MDM Policy: [AllowOfflineMapsDownloadOverMeteredConnection](/windows/client-management/mdm/policy-csp-maps). Allows the download and update of map data over metered connections. <br /> **Set to 0 (zero)**
   1. MDM Policy: [EnableOfflineMapsAutoUpdate](/windows/client-management/mdm/policy-csp-maps#maps-enableofflinemapsautoupdate). Disables the automatic download and update of map data. **Set to 0  (zero)**

1. **OneDrive**
   1. MDM Policy: [DisableOneDriveFileSync](/windows/client-management/mdm/policy-csp-system#system-disableonedrivefilesync). Allows IT Admins to prevent apps and features from working with files on OneDrive. **Set to 1 (one)**
   1. Ingest the ADMX - To get the latest OneDrive ADMX file you need an up-to-date Windows 10 or Windows 11 client. The ADMX files are located under the following path: %LocalAppData%\Microsoft\OneDrive\ there's a folder with the current OneDrive build (for example "18.162.0812.0001"). There's a folder named "adm" which contains the admx and adml policy definition files.
   1. MDM Policy: Prevent Network Traffic before User SignIn. **PreventNetworkTrafficPreUserSignIn**. The OMA-URI value is:  **./Device/Vendor/MSFT/Policy/Config/OneDriveNGSC\~Policy\~OneDriveNGSC/PreventNetworkTrafficPreUserSignIn**, Data type: **String**, Value: **\<enabled/>**


1. **Privacy settings** Except for the Feedback & Diagnostics page, these settings must be configured for every user account that signs into the PC.
   1. General - [TextInput/AllowLinguisticDataCollection](/windows/client-management/mdm/policy-csp-textinput#textinput-allowlinguisticdatacollection). This policy setting controls the ability to send inking and typing data to Microsoft. **Set to 0 (zero)**
   1. Location - [System/AllowLocation](/windows/client-management/mdm/policy-csp-system#system-allowlocation). Specifies whether to allow app access to the Location service. **Set to 0  (zero)**
   1. Camera - [Camera/AllowCamera](/windows/client-management/mdm/policy-csp-camera#camera-allowcamera). Disables or enables the camera. **Set to 0  (zero)**
   1. Microphone - [Privacy/LetAppsAccessMicrophone](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccessmicrophone). Specifies whether Windows apps can access the microphone. **Set to 2 (two)**
   1. Notifications - [Privacy/LetAppsAccessNotifications](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccessnotifications). Specifies whether Windows apps can access notifications. **Set to 2 (two)**
   1. Notifications - [Settings/AllowOnlineTips](/windows/client-management/mdm/policy-csp-settings#settings-allowonlinetips). Enables or disables the retrieval of online tips and help for the Settings app. **Integer value 0**
   1. Speech, Inking, & Typing - [Privacy/AllowInputPersonalization](/windows/client-management/mdm/policy-csp-privacy#privacy-allowinputpersonalization). This policy specifies whether users on the device have the option to enable online speech recognition. **Set to 0 (zero)**
   1. Speech, Inking, & Typing - [TextInput/AllowLinguisticDataCollection](/windows/client-management/mdm/policy-csp-textinput#textinput-allowlinguisticdatacollection). This policy setting controls the ability to send inking and typing data to Microsoft  **Set to 0 (zero)**
   1. Account info - [Privacy/LetAppsAccessAccountInfo](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccessaccountinfo). Specifies whether Windows apps can access account information. **Set to 2 (two)**
   1. Contacts - [Privacy/LetAppsAccessContacts](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccesscontacts). Specifies whether Windows apps can access contacts. **Set to 2 (two)**
   1. Calendar - [Privacy/LetAppsAccessCalendar](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccesscalendar). Specifies whether Windows apps can access the calendar. **Set to 2 (two)**
   1. Call history - [Privacy/LetAppsAccessCallHistory](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccesscallhistory). Specifies whether Windows apps can access account information. **Set to 2 (two)**
   1. Email - [Privacy/LetAppsAccessEmail](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccessemail). Specifies whether Windows apps can access email. **Set to 2 (two)**
   1. Messaging - [Privacy/LetAppsAccessMessaging](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccessmessaging). Specifies whether Windows apps can read or send messages (text or MMS). **Set to 2 (two)**
   1. Phone calls - [Privacy/LetAppsAccessPhone](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccessphone). Specifies whether Windows apps can make phone calls. **Set to 2 (two)**
   1. Radios - [Privacy/LetAppsAccessRadios](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccessradios). Specifies whether Windows apps have access to control radios. **Set to 2 (two)**
   1. Other devices - [Privacy/LetAppsSyncWithDevices](/windows/client-management/mdm/policy-csp-privacy#privacy-letappssyncwithdevices). Specifies whether Windows apps can sync with devices. **Set to 2 (two)**
   1. Other devices - [Privacy/LetAppsAccessTrustedDevices](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccesstrusteddevices). Specifies whether Windows apps can access trusted devices. **Set to 2 (two)**
   1. Feedback & diagnostics - [System/AllowTelemetry](/windows/client-management/mdm/policy-csp-system#system-allowtelemetry). Allow the device to send diagnostic and usage telemetry data, such as Watson. **Set to 0 (zero)**
   1. Feedback & diagnostics - [Experience/DoNotShowFeedbackNotifications](/windows/client-management/mdm/policy-csp-experience#experience-donotshowfeedbacknotifications). Prevents devices from showing feedback questions from Microsoft.  **Set to 1 (one)**
   1. Background apps - [Privacy/LetAppsRunInBackground](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsruninbackground). Specifies whether Windows apps can run in the background. **Set to 2 (two)**
   1. Motion - [Privacy/LetAppsAccessMotion](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccessmotion). Specifies whether Windows apps can access motion data. **Set to 2 (two)**
   1. Tasks - [Privacy/LetAppsAccessTasks](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccesstasks). Turn off the ability to choose which apps have access to tasks. **Set to 2 (two)**
   1. App Diagnostics - [Privacy/LetAppsGetDiagnosticInfo](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsgetdiagnosticinfo). Force allow, force deny or give user control of apps that can get diagnostic information about other running apps. **Set to 2 (two)**
1. **Software Protection Platform** - [Licensing/DisallowKMSClientOnlineAVSValidation](/windows/client-management/mdm/policy-csp-licensing#licensing-disallowkmsclientonlineavsvalidation). Opt out of sending KMS client activation data to Microsoft automatically. **Set to 1 (one)**
1. **Storage Health** - [Storage/AllowDiskHealthModelUpdates](/windows/client-management/mdm/policy-csp-storage#storage-allowdiskhealthmodelupdates). Allows disk health model updates. **Set to 0 (zero)**
1. **Sync your settings** - [Experience/AllowSyncMySettings](/windows/client-management/mdm/policy-csp-experience#experience-allowsyncmysettings). Control whether your settings are synchronized. **Set to 0 (zero)**
1. **Teredo** - No MDM needed. Teredo is **Off by default**. Delivery Optimization (DO) can turn on Teredo, but DO itself is turned Off via MDM.
1. **Wi-Fi Sense** - No MDM needed. Wi-Fi Sense is no longer available from Windows 10 version 1803 and later or Windows 11.
1. **Windows Defender**
   1. [Defender/AllowCloudProtection](/windows/client-management/mdm/policy-csp-defender#defender-allowcloudprotection). Disconnect from the Microsoft Antimalware Protection Service. **Set to 0 (zero)**
   1. [Defender/SubmitSamplesConsent](/windows/client-management/mdm/policy-csp-defender#defender-submitsamplesconsent). Stop sending file samples back to Microsoft. **Set to 2 (two)**
   1. [Defender/EnableSmartScreenInShell](/windows/security/threat-protection/windows-defender-smartscreen/windows-defender-smartscreen-available-settings#mdm-settings). Turns off SmartScreen in Windows for app and file execution. **Set to 0 (zero)**
   1. Windows Defender SmartScreen - [Browser/AllowSmartScreen](/windows/client-management/mdm/policy-csp-browser#browser-allowsmartscreen). Disable Windows Defender SmartScreen. **Set to 0 (zero)**
   1. Windows Defender SmartScreen EnableAppInstallControl - [SmartScreen/EnableAppInstallControl](/windows/client-management/mdm/policy-csp-smartscreen#smartscreen-enableappinstallcontrol). Controls whether users are allowed to install apps from places other than the Microsoft Store. **Set to 0 (zero)**
   1. Windows Defender Potentially Unwanted Applications(PUA) Protection - [Defender/PUAProtection](/windows/client-management/mdm/policy-csp-defender#defender-puaprotection). Specifies the level of detection for potentially unwanted applications (PUAs). **Set to 1 (one)**
   1. [Defender/SignatureUpdateFallbackOrder](). Allows you to define the order in which different definition update sources should be contacted. The OMA-URI for this is: **./Vendor/MSFT/Policy/Config/Defender/SignatureUpdateFallbackOrder**, Data type: **String**, Value: **FileShares**
1. **Windows Spotlight** - [Experience/AllowWindowsSpotlight](/windows/client-management/mdm/policy-csp-experience#experience-allowwindowsspotlight). Disable Windows Spotlight. **Set to 0 (zero)**
1. **Microsoft Store**
   1. [ApplicationManagement/DisableStoreOriginatedApps](/windows/client-management/mdm/policy-csp-applicationmanagement#applicationmanagement-disablestoreoriginatedapps). Boolean value that disables the launch of all apps from Microsoft Store that came pre-installed or were downloaded.  **Set to 1 (one)**
   1. [ApplicationManagement/AllowAppStoreAutoUpdate](/windows/client-management/mdm/policy-csp-applicationmanagement#applicationmanagement-allowappstoreautoupdate). Specifies whether automatic update of apps from Microsoft Store are allowed. **Set to 0 (zero)**
1. **Apps for websites** - [ApplicationDefaults/EnableAppUriHandlers](/windows/client-management/mdm/policy-csp-applicationdefaults#applicationdefaults-enableappurihandlers). This policy setting determines whether Windows supports web-to-app linking with app URI handlers. **Set to 0 (zero)**
1. **Windows Update Delivery Optimization** - The following Delivery Optimization MDM policies are available in the [Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider).
   1. [DeliveryOptimization/DODownloadMode](/windows/client-management/mdm/policy-csp-deliveryoptimization#deliveryoptimization-dodownloadmode). Let’s you choose where Delivery Optimization gets or sends updates and apps. **Set to 99 (ninety-nine)**
1. **Windows Update**
   1. [Update/AllowAutoUpdate](/windows/client-management/mdm/policy-csp-update#update-allowautoupdate). Control automatic updates. **Set to 5 (five)**
   1. Windows Update Allow Update Service - [Update/AllowUpdateService](/windows/client-management/mdm/policy-csp-update#update-allowupdateservice). Specifies whether the device could use Microsoft Update, Windows Server Update Services (WSUS), or Microsoft Store. **Set to 0 (zero)**
   1. Windows Update Service URL - [Update/UpdateServiceUrl](/windows/client-management/mdm/policy-csp-update#update-updateserviceurl). Allows the device to check for updates from a WSUS server instead of Microsoft Update. **Set to String** with the Value:
      1. **\<Replace>\<CmdID>$CmdID$</CmdID>\<Item>\<Meta>\<Format>chr</Format>\<Type>text/plain</Type>\</Meta>\<Target> \<LocURI>./Vendor/MSFT/Policy/Config/Update/UpdateServiceUrl</LocURI>\</Target>\<Data>http://abcd-srv:8530</Data>\</Item>\</Replace>**
28. **Recommendations** </br>
   a. [HideRecentJumplists](/windows/client-management/mdm/policy-csp-start#hiderecentjumplists) setting in the Start Policy configuration service provider (CSP). To hide a list of recommended apps and files in the Recommended section on the Start menu.

### <a href="" id="bkmk-mdm-allowedtraffic"></a> Allowed traffic for Microsoft Intune / MDM configurations

|**Allowed traffic endpoints**
| --- |
|activation-v2.sls.microsoft.com/*|
|cdn.onenote.net|
|client.wns.windows.com|
|crl.microsoft.com/pki/crl/*|
|ctldl.windowsupdate.com|
|*displaycatalog.mp.microsoft.com|
|dm3p.wns.windows.com|
|\*microsoft.com/pkiops/\*|
|ocsp.digicert.com/*|
|r.manage.microsoft.com|
|tile-service.weather.microsoft.com|
|settings-win.data.microsoft.com|
|msedge.api.cdp.microsoft.com|
|\*.dl.delivery.mp.microsoft.com|
|edge.microsoft.com|
