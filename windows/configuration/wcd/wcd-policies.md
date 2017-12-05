---
title: Policies (Windows 10)
description: This section describes the Policies settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.date: 10/17/2017
---

# Policies (Windows Configuration Designer reference)

This section describes the **Policies** settings that you can configure in [provisioning packages](../provisioning-packages/provisioning-packages.md) for Windows 10 using Windows Configuration Designer. Each setting below links to its supported values, as documented in the [Policy configuration service provider (CSP)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider).  

## AboveLock

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowActionCenterNotifications](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#abovelock-allowactioncenternotifications)  | Allow Action Center notifications above the device lock screen. |  | X |  |  |  |
| [AllowToasts](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#abovelock-allowtoasts)  | Allow toast notifications above the device lock screen.  | X  | X |   |   |  |

## Accounts

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAddingNonMicrosoftAccountManually](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#accounts-allowaddingnonmicrosoftaccountsmanually) | Whether users can add non-Microsoft email accounts  | X | X |  |  |  |
| [AllowMicrosoftAccountConnection](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#accounts-allowmicrosoftaccountconnection) | Whether users can use a Microsoft account for non-email-related connection authentication and services  | X | X |  |  |  |
| [AllowMicrosoftAccountSigninAssistant](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#accounts-allowmicrosoftaccountsigninassistant) | Disable the **Microsoft Account Sign-In Assistant** (wlidsvc) NT service | X | X |  |  |  |
| [DomainNamesForEmailSync](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#accounts-domainnamesforemailsync) | List of domains that are allowed to sync email on the devices | X | X |  |  |  |


## ApplicationDefaults

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [DefaultAssociationsConfiguration](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationdefaults-defaultassociationsconfiguration) | Set default file type and protocol associations  | X |  |  |  |  |


##ApplicationManagement


| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAllTrustedApps](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationmanagement-allowalltrustedapps) | Whether non-Microsoft Store apps are allowed | X | X |  |  |  |
| [AllowAppStoreAutoUpdate](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationmanagement-allowappstoreautoupdate)  | Whether automatic update of apps from Microsoft Store is allowed  | X  | X |   |   |  |
| [AllowDeveloperUnlock](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationmanagement-allowdeveloperunlock)  | Whether developer unlock of device is allowed  | X  | X | X  | X  | X |
| [AllowGameDVR](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationmanagement-allowgamedvr)  |Whether DVR and broadcasting is allowed   | X  |  |   |   |  |
| [AllowSharedUserAppData](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationmanagement-allowshareduserappdata)  | Whether multiple users of the same app can share data  | X  | X |   |   |  |
| [AllowStore](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationmanagement-allowstore)  | Whether app store is allowed at device (?)  |   | X |   |   |  |
| [ApplicationRestrictions](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationmanagement-applicationrestrictions)  | An XML blob that specifies app restrictions, such as an allow list, disallow list, etc.  |   | x |   |   |  |
| [RestrictAppDataToSystemVolume](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationmanagement-restrictappdatatosystemvolume)  | Whether app data is restricted to the system drive  | X  | X |   |   |  |
| [RestrictAppToSystemVolume](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationmanagement-restrictapptosystemvolume)  | Whether the installation of apps is restricted to the system drive   | X  | X |   |   |  |




## Authentication

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowFastReconnect](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#authentication-allowfastreconnect) | Allows EAP Fast Reconnect from being attempted for EAP Method TLS. | X | X | X | X | X |


## BitLocker

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [EncryptionMethod](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#bitlocker-encryptionmethod)  | Specify BitLocker drive encryption method and cipher strength | X | X |  |  |  |


## Bluetooth

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAdvertising](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#bluetooth-allowadvertising)  | Whether the device can send out Bluetooth advertisements | X | X | X | X | X |
| [AllowDiscoverableMode](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#bluetooth-allowdiscoverablemode)  | Whether other Bluetooth-enabled devices can discover the device  | X  | X |  X | X | X |
| [AllowPrepairing](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#bluetooth-allowprepairing)  | Whether to allow specific bundled Bluetooth peripherals to automatically pair with the host device  | X  | X | X |  | X |
| [LocalDeviceName](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#bluetooth-localdevicename)  | Set the local Bluetooth device name  | X  | X | X |  | X |
| [ServicesAllowedList](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#bluetooth-servicesallowedlist)  | Set a list of allowable services and profiles  | X  | X |   | X  |  |

## Browser

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAddressBarDropdown](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowaddressbardropdown) | Specify whether to allow the address bar drop-down functionality in Microsoft Edge. If you want to minimize network connections from Microsoft Edge to Microsoft services, we recommend disabling this functionality.  | X |  |  |  |  |
| [AllowAutofill](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowautofill)  | Specify whether autofill on websites is allowed.  | X  | X | X  |   |  |
| [AllowBrowser](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowbrowser) | Specify whether the browser is allowed on the device. |  | X |  |  |  |
| [AllowCookies](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowcookies)  | Specify whether cookies are allowed.  | X  | X | X  |   |  |
| [AllowDeveloperTools](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowdevelopertools) | Specify whether employees can use F12 Developer Tools on Microsoft Edge. | X |  |  |  |  |
| [AllowDoNotTrack](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowdonottrack)  | Specify whether Do Not Track headers are allowed.  | X  | X | X  |   |  |
| [AllowExtensions](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowextensions) | Specify whether Microsoft Edge extensions are allowed. | X |  |  |  |  |
| [AllowFlash](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowflash)  | Specify whether Adobe Flash can run in Microsoft Edge.  |  X |  |   |   |  |
| [AllowFlashClickToRun](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowflashclicktorun) | Specify whether users must take an action, such as clicking the content or a Click-to-Run button, before seeing content in Adobe Flash. | X |  |  |  |  |
| [AllowInPrivate](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowinprivate)  | Specify whether InPrivate browsing is allowed on corporate networks.  | X  | X | X  |   |  |
| [AllowMicrosoftCompatibilityList](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowmicrosoftcompatibilitylist) | Specify whether to use the Microsoft compatibility list in Microsoft Edge. | X | X | X |  |  |
| [AllowPasswordManager](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowpasswordmanager)  | Specify whether saving and managing passwords locally on the device is allowed.  | X  | X | X  |   |  |
| [AllowPopups](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowpopups) | Specify whether pop-up blocker is allowed or enabled. | X |  |  |  |  |
| [AllowSearchEngineCustomization](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowsearchenginecustomization)  | Allow search engine customization for MDM-enrolled devices.  | X  |  |   |   |  |
| [AllowSearchSuggestionsinAddressBar](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowsearchsuggestionsinaddressbar) | Specify whether search suggestions are allowed in the address bar. | X | X | X |  |  |
| [AllowSmartScreen](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-allowsmartscreen)  | Specify whether Windows Defender SmartScreen is allowed.  | X  | X | X  |   |  |
| [ClearBrowsingDataOnExit](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-clearbrowsingdataonexit) | Specify whether to clear browsing data when exiting Microsoft Edge. | X |  |  |  |  |
| [ConfigureAdditionalSearchEngines](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-configureadditionalsearchengines)  | Allows you to add up to 5 addtional search engines for MDM-enrolled devices.  | X  | X | X  |   |  |
| [DisableLockdownOfStartPages](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-disablelockdownofstartpages) | Specify whether the lockdown on the Start pages is disabled. | X |  |  |  |  |
| [EnterpriseModeSiteList](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-enterprisemodesitelist)  | Allow the user to specify a URL of an enterprise site list.  | X  |  |   |   |  |
| [EnterpriseSiteListServiceUrl](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-enterprisesitelistserviceurl) | This policy (introduced in Windows 10, version 1507) was deprecated in Windows 10, version 1511 by [Browser/EnterpriseModeSiteList](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-enterprisemodesitelist). | X |  |  |  |  |
| [FirstRunURL](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-firstrunurl)  | Specify the URL that Microsoft Edge will use when it is opened for the first time.  |   | X |   |   |  |
| [HomePages](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-homepages) | Specify your Start pages for MDM-enrolled devices. | X |  |  |  |  |
| [PreventAccessToAboutFlagsInMicrosoftEdge](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-preventaccesstoaboutflagsinmicrosoftedge)  | Specify whether users can access the **about:flags** page, which is used to change developer settings and to enable experimental features.  | X  | X | X  |   |  |
| [PreventFirstRunPage](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-preventfirstrunpage) | Specify whether to enable or disable the First Run webpage. | X |  |  |  |  |
| [PreventLiveTileDataCollection](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-preventlivetiledatacollection)  | Specify whether Microsoft can collect information to create a Live Tile when pinning a site to Start from Microsoft Edge.  | X  | X | X  |   |  |
| [PreventSmartScreenPromptOverride](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-preventsmartscreenpromptoverride)  | Specify whether users can override the Windows Defender SmartScreen Filter warnings about potentially malicious websites.  | X  | X | X  |   |  |
| [PreventSmartScreenPromptOverrideForFiles](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-preventsmartscreenpromptoverrideforfiles) | Specify whether users can override the Windows Defender SmartScreen Filter warnings about downloading unverified files. | X | X | X |  |  |
| [PreventUsingLocalHostIPAddressForWebRTC](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-preventusinglocalhostipaddressforwebrtc)  | Specify whether a user's localhost IP address is displayed while making phone calls using the WebRTC protocol.  | X  | X | X  |   |  |
| [SendIntranetTraffictoInternetExplorer ](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-sendintranettraffictointernetexplorer) | Specify whether to send intranet traffic to Internet Explorer. | X |  |  |  |  |
| [SetDefaultSearchEngine](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-setdefaultsearchengine) | Configure the default search engine for your employees.  | X  | X | X  |   |  |
| [howMessageWhenOpeningSitesInInternetExplorer](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-showmessagewhenopeningsitesininternetexplorer) | Specify whether users should see a full interstitial page in Microsoft Edge when opening sites that are configured to open in Internet Explorer using the Enterprise Site list. | X |  |  |  |  |
| [SyncFavoritesBetweenIEAndMicrosoftEdge](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#browser-syncfavoritesbetweenieandmicrosoftedge)  | Specify whether favorites are kept in sync between Internet Explorer and Microsoft Edge.  | X  |  |   |   |  |


## Camera

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowCamera](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#camera-allowcamera) | Disable or enable the camera. | X | X | X |  |  |


## Connectivity

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowBluetooth](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#connectivity-allowbluetooth) | Allow the user to enable Bluetooth or restrict access. | X | X | X | X |  |
| [AllowCellularData](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#connectivity-allowcellulardata) | Allow the cellular data channel on the device. | X | X | X |  |  |
| [AllowCellularDataRoaming](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#connectivity-allowcellulardataroaming) | Allow or disallow cellular data roaming on the device. | X | X | X |  |  |
| [AllowConnectedDevices](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#connectivity-allowconnecteddevices) | Allows IT admins the ability to disable the Connected Devices Platform component. | X | X | X |  |  |
| [AllowNFC](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#connectivity-allownfc) | Allow or disallow near field communication (NFC) on the device. |  | X |  |  |  |
| [AllowUSBConnection](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#connectivity-allowusbconnection) | Enable USB connection between the device and a computer to sync files with the device or to use developer tools or to deploy or debug applications. |  | X |  |  |  |
| [AllowVPNOverCellular](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#connectivity-allowvpnovercellular) | Specify what type of underlyinng connections VPN is allowed to use. |X | X | X |  |  |
| [AllowVPNRoamingOverCellular](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#connectivity-allowvpnroamingovercellular) | Prevent the device from connecting to VPN when the device roams over cellular networks. | X | X | X |  |  |
| HideCellularConnectionMode | Hide the checkbox that lets the user change the connection mode. | X | X | X |  |  |
| HideCellularRoamingOption | Hide the dropdown menu that lets the user change the roaming preferences.  | X | X | X |  |  |

## CredentialProviders

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
[DisableAutomaticReDeploymentCredentials](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-credentialproviders) | This setting disables the visibility of the credential provider that triggers the PC refresh on a device. This policy does not actually trigger the refresh. The admin user is required to authenticate to trigger the refresh on the target device. The Windows 10 Automatic ReDeployment feature allows admin to reset devices to a known good managed state while preserving the management enrollment. After the automatic redeployment is triggered the devices are for ready for use by information workers or students. | X |  |  |  |  |

## Cryptography

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowFipsAlgorithmPolicy](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#cryptography-allowfipsalgorithmpolicy) | Allow or disallow the Federal Information Processing Standard (FIPS) policy. | X | X |  |  |  |
| [TLSCiperSuites](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#cryptography-tlsciphersuites)  | List the Cryptographic Cipher Algorithms allowed for SSL connections. Format is a semicolon delimited list. Last write win.  | X  | X |   |   |  |

## Defender

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowArchiveScanning](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-allowarchivescanning) | Allow or disallow scanning of archives. | X |  |  |  |  |
| [AllowBehaviorMonitoring](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-allowbehaviormonitoring)  | Allow or disallow Windows Defender Behavior Monitoring functionality.  |  X |  |   |   |  |
| [AllowCloudProtection](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-allowcloudprotection) | To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions. | X |  |  |  |  |
| [AllowEmailScanning](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-allowemailscanning)  | Allow or disallow scanning of email.  |  X |  |   |   |  |
| [AllowFullScanOnMappedNetworkDrives](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-allowfullscanonmappednetworkdrives) | Allow or disallow a full scan of mapped network drives. | X |  |  |  |  |
| [AllowFullScanRemovableDriveScanning](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-allowfullscanremovabledrivescanning)  | Allow or disallow a full scan of removable drives.  |  X |  |   |   |  |
| [AllowIntrusionPreventionSystem](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-allowintrusionpreventionsystem) | Allow or disallow Windows Defender Intrusion Prevention functionality. | X |  |  |  |  |
| [AllowIOAVProtection](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-allowioavprotection)  | Allow or disallow Windows Defender IOAVP Protection functionality.  |  X |  |   |   |  |
| [AllowOnAccessProtection](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-allowonaccessprotection) | Allow or disallow Windows Defender On Access Protection functionality. | X |  |  |  |  |
| [AllowRealtimeMonitoring](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-allowrealtimemonitoring)  | Allow or disallow Windows Defender Realtime Monitoring functionality.  |  X |  |   |   |  |
| [AllowScanningNetworkFiles](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-allowscanningnetworkfiles) | Allow or disallow scanning of network files.  | X |  |  |  |  |
| [AllowScriptScanning](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-allowscriptscanning) | Allow or disallow Windows Defender Script Scanning functionality. | X |  |  |  |  |
| [AllowUserUIAccess](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-allowuseruiaccess)  | Allow or disallow user access to the Windows Defender UI.  |  X |  |   |   |  |
| [AvgCPULoadFactor](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-avgcpuloadfactor) | Represents the average CPU load factor for the Windows Defeder scan (in percent). | X |  |  |  |  |
| [DaysToRetainCleanedMalware](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-daystoretaincleanedmalware)  | Specify time period (in days) that quarantine items will be stored on the system.  |  X |  |   |   |  |
| [ExcludedExtensions](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-excludedextensions) | Specify a list of file type extensions to ignore durinng a scan. Separate each file type in the list by using \|. | X |  |  |  |  |
| [ExcludedPaths](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-excludedpaths)  | Specify a list of directory paths to ignore during a scan. Separate each path in the list by using \|.  |  X |  |   |   |  |
| [ExcludedProcesses](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-excludedprocesses) | Specify a list of files opened by processes to ignore durinng a scan. Separate each file type in the list by using \|. The process itself is not excluded from the scan, but can be excluded by using the [Defender/ExcludedPaths](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-excludedpaths) policy to exclude its path. | X |  |  |  |  |
| [RealTimeScanDirection](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-realtimescandirection)  | Control which sets of files should be monitored.  |  X |  |   |   |  |
| [ScanParameter](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-scanparameter) | Select whether to perform a quick scan or full scan. | X |  |  |  |  |
| [ScheduleQuickScanTime](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-schedulequickscantime)  | Specify the time of day that Windows Defender quick scan should run.  |  X |  |   |   |  |
| [ScheduleScanDay](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-schedulescanday) | Select the day that Windows Defender scan should run. | X |  |  |  |  |
| [ScheduleScanTime](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-schedulescantime)  | Select the time of day that the Windows Defender scan should run.  |  X |  |   |   |  |
| [SignatureUpdateInterval](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-signatureupdateinterval) | Specify the interval (in hours) that will be used to check for signatures, so instead of using the ScheduleDay and ScheduleTime the check for new signatures will be set according to the interval. | X |  |  |  |  |
| [SubmitSamplesConsent](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-submitsamplesconsent) | Checks for the user consent level in Windows Defender to send data. | X |  |  |  |  |
| [ThreatSeverityDefaultAction](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#defender-threatseveritydefaultaction)  | Specify any valid threat severity levels and the corresponding default action ID to take.  |  X |  |   |   |  |

## DeliveryOptimization

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [DOAbsoluteMaxCacheSize](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-doabsolutemaxcachesize) | Specify the maximum size in GB of Delivery Optimization cache. | X |  |  |  |  |
| [DOAllowVPNPeerCaching](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-doallowvpnpeercaching) | Specify whether the device is allowed to participate in Peer Caching while connected via VPN to the domain network. | X |  |  |  |  |
| [DODownloadMode](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-dodownloadmode) | Specify the download method that Delivery Optimization can use in downloads of Windows Updates, apps, and app updates. | X |  |  |  |  |
| [DOGroupId](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-dogroupid) | Specify an arbitrary group ID that the device belongs to. | X |  |  |  |  |
| [DOMaxCacheAge](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-domaxcacheage) | Specify the maximum time in seconds that each file is held in the Delivery Optimization cache after downloading successfully. | X |  |  |  |  |
| [DOMaxCacheSize](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-domaxcachesize) | Specify the maximum cache size that Delivery Optimization can utilize, as a percentage of disk size (1-100). | X |  |  |  |  |
| [DOMaxDownloadBandwidth](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-domaxdownloadbandwidth) | Specify the maximum download bandwidth in kilobytes/second that the device can use across all concurrent download activities using Delivery Optimization. | X |  |  |  |  |
| [DOMaxUploadBandwidth](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-domaxuploadbandwidth) | Specify the maximum upload bandwidth in kilobytes/second that a device will use across all concurrent upload activity usinng Delivery Optimization.  | X |  |  |  |  |
| [DOMinBackgroundQos](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-dominbackgroundqos) | Specify the minimum download QoS (Quality of Service or speed) i kilobytes/second for background downloads. | X |  |  |  |  |
| [DOMinBatteryPercentageAllowedToUpload](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-dominbatterypercentageallowedtoupload) | Specify any value between 1 and 100 (in percentage) to allow the device to upload data to LAN and group peers while on battery power. | X |  |  |  |  |
| [DOMinDiskSizeAllowedToPeer](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-domindisksizeallowedtopeer) | Specify the required minimum disk size (capabity in GB) for the device to use Peer Caching. | X |  |  |  |  |
| [DOMinFileSizeToCache](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-dominfilesizetocache) | Specify the minimum content file size in MB enabled to use Peer Caching. | X |  |  |  |  |
| [DOMinRAMAllowedToPeer](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-dominramallowedtopeer) | Specify the minimum RAM size in GB requried to use Peer Caching. | X |  |  |  |  |
| [DOModifyCacheDrive](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-domodifycachedrive) | Specify the drive that Delivery Optimization should use for its cache. | X |  |  |  |  |
| [DOMonthlyUploadDataCap](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-domonthlyuploaddatacap) | Specify the maximum total bytes in GB that Delivery Optimization is allowed to upload to Internet peers in each calendar month. | X |  |  |  |  |
| [DOPercentageMaxDownloadBandwidth](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#deliveryoptimization-dopercentagemaxdownloadbandwidth) | Specify the maximum download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth. | X |  |  |  |  |

## DeviceGuard

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
[EnableVirtualizationBasedSecurity](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceguard) | Turns on virtualization based security(VBS) at the next reboot. virtualization based security uses the Windows Hypervisor to provide support for security services.  | X |  |  |  |  |

## DeviceLock

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowIdleReturnWithoutPassword](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#devicelock-allowidlereturnwithoutpassword) | Specify whether the user must input a PIN or password when the device resumes from an idle state. |  | X |  |  |  |
| [AllowScreenTimeoutWhileLockedUserConfig](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#devicelock-allowscreentimeoutwhilelockeduserconfig) | Specify whether to show a user-configurable setting to control the screen timeout while on the lock screen. |  | X |  |  |  |
| [AllowSimpleDevicePassword](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#devicelock-allowsimpledevicepassword) | Specify whether PINs or passwords such as "1111" or "1234" are allowed. For the desktop, it also controls the use of picture passwords. | X | X |  |  |  |
|[AlphanumericDevicePasswordRequired](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#devicelock-alphanumericdevicepasswordrequired)  | Select the type of PIN or password required.  | X | X |  |  |  |
| [DevicePasswordEnabled](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#devicelock-devicepasswordenabled) | Specify whether device password is enabled. | X | X |  |  |  |
| [DevicePasswordExpiration](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#devicelock-devicepasswordexpiration) | Specify when the password expires (in days). | X | X |  |  |  |
| [DevicePasswordHistory](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#devicelock-devicepasswordhistory) | Specify how many passwords can be stored in the history that can't be reused. | X | X |  |  |  |
| [MaxDevicePasswordFailedAttempts](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#devicelock-maxdevicepasswordfailedattempts) | Specify the number of authentication failures allowed before the device will be wiped. | X | X |  |  |  |
| [MaxInactivityTimeDeviceLock](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#devicelock-maxinactivitytimedevicelock) |Specify the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked.  | X | X |  |  |  |
| [MinDevicePasswordComplexCharacters](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#devicelock-mindevicepasswordcomplexcharacters) | Specify the number of complex element types (uppercase and lowercase letters, numbers, and punctuation) required for a strong PIN or password. | X | X |  |  |  |
| [MinDevicePasswordLength](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#devicelock-mindevicepasswordlength) | Specify the minimum number or characters required in the PIN or password. | X | X |  |  |  |
| [ScreenTimeoutWhileLocked](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#devicelock-screentimeoutwhilelocked) | Specify the duration in seconds for the screen timeout while on the lock screen. |  | X |  |  |  |


## DeviceManagement

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| DisableMDMEnrollment | Use this setting to prevent the device from enrolling in MDM. | X |  |  |  |  |



## Experience

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowCopyPaste](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowcopypaste) | Specify whether copy and paste is allowed. |  | X |  |  |  |
| [AllowCortana](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowcortana) | Specify whether Cortana is allowed on the device. | X | X |  |  |  |
| [AllowDeviceDiscovery](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowdevicediscovery) | Allow users to turn device discovery on or off in the UI.  | X | X |  |  |  |
| [AllowFindMyDevice](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowfindmydevice) | Turn on **Find my device** feature. | X | X |  |  |  |
| [AllowManualMDMUnenrollment](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowmanualmdmunenrollment) | Specify whether the user is allowed to delete the workplace account.  | X | X |  |  |  |
| [AllowScreenCapture](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowscreencapture) | Specify whether screen capture is allowed. |  | X |  |  |  |
| [AllowSIMErrorDialogPromptWhenNoSIM](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowsimerrordialogpromptwhennosim) | Specify whether to display a dialog prompt when no SIM card is detected. |  | X |  |  |  |
| [AllowSyncMySettings](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowsyncmysettings) | Allow or disallow all Windows sync settings on the device. | X | X |  |  |  |
| [AllowTailoredExperiencesWithDiagnosticData](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowtailoredexperienceswithdiagnosticdata) | Prevent Windows from using diagnostic data to provide customized experiences to the user. | X |  |  |  |  |
| [AllowTaskSwitcher](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowtaskswitcher) | Allow or disallow task switching on the device. |  | X |  |  |  |
| [AllowThirdPartySuggestionsInWindowsSpotlight](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowthirdpartysuggestionsinwindowsspotlight) | Specify whether to allow app and content suggestions from third-party software publishers in Windows Spotlight. | X |  |  |  |  |
| [AllowVoiceRecording](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowvoicerecording) | Specify whether voice recording is allowed for apps. |  | X |  |  |  |
| [AllowWindowsConsumerFeatures](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-allowwindowsconsumerfeatures) | Turn on experiences that are typically for consumers only, such as Start suggetions, membership notifications, post-OOBE app install, and redirect tiles. | X |  |  |  |  |
| [AllowWindowsSpotlight](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowwindowsspotlight) |Specify whether to turn off all Windows Spotlight features at once.  | X |  |  |  |  |
| [AllowWindowsSpotlightOnActionCenter](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowwindowsspotlightonactioncenter) | Prevent Windows Spotlight notifications from being displayed in the Action Center. | X |  |  |  |  |
| [AllowWindowsSpotlightWindowsWelcomeExperience](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowwindowsspotlightwindowswelcomeexperience) | Turn off the Windows Spotlight Windows welcome experience feature. | X |  |  |  |  |
| [AllowWindowsTips](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowwindowstips) | Enable or disable Windows Tips. | X |  |  |  |  |
| [ConfigureWindowsSpotlightOnLockScreen](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-configurewindowsspotlightonlockscreen) | Specify whether Spotlight should be used on the user's lock screen. | X |  |  |  |  |

## ExploitGuard

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [ExploitProtectionSettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-exploitguard) | See the [explanation of ExploitProtectionSettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-exploitguard) in the Policy CSP for instructions. In the **ExploitProtectionSettings** field, you can enter a path (local, UNC, or URI) to the mitigation options config, or you can enter the XML for the config. | X | X |  |  |  |


## Games

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAdvancedGamingServices](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#games-allowadvancedgamingservices) | Currently not supported. | X |  |  |  |  |


## Location

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [EnableLocation](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#location-enablelocation) | Configure whether the the Location Service's Device Switch is enabled or disabled for the device. | X | X |  |  |  |


## Privacy

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAutoAcceptPairingAndPrivacyConsentPrompts](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-allowautoacceptpairingandprivacyconsentprompts) | Allow or disallow the automatic acceptance of the pairing and privacy user consent dialog boxes when launching apps. |  | X |  |  |  |
| [AllowInputPersonalization](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#privacy-allowinputpersonalization) | Allow the use of cloud-based speech services for Cortana, dictation, or Store apps. | X | X |  |  |  |


## Search

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowIndexingEncryptedStoresOrItems](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#search-allowindexingencryptedstoresoritems) | Allow or disallow the indexing of items. | X | X |  |  |  |
| [AllowSearchToUseLocation](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#search-allowsearchtouselocation) | Specify whether search can use location information. | X | X |  |  |  |
| [AllowUsingDiacritics](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#search-allowusingdiacritics) | Allow the use of diacritics. | X | X |  |  |  |
| AllowWindowsIndexer | The indexer provides fast file, email, and web history search for apps and system components including Cortana, Outlook, file explorer, and Edge. To do this, it requires access to the file system and app data stores such as Outlook OST files.</br></br>- **Off** setting disables Windows indexer</br>- **EnterpriseSecure** setting stops the indexer from indexing encrypted files or stores, and is recommended for enterprises using Windows Information Protection (WIP)</br>- **Enterprise** setting reduces potential network loads for enterprises</br>- **Standard** setting is appropriate for consuemrs | X | X |  |  |  |
| [AlwaysUseAutoLangDetection](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#search-alwaysuseautolangdetection) | Specify whether to always use automatic language detection when indexing content and properties. | X | X |  |  |  |
| [DisableBackoff](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#search-disablebackoff) | If enabled, the search indexer backoff feature will be disabled. | X | X |  |  |  |
| [DisableRemovableDriveIndexing](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#search-disableremovabledriveindexing) | Configure whether locations on removable drives can be added to libraries. | X | X |  |  |  |
| [PreventIndexingLowDiskSpaceMB](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#search-preventindexinglowdiskspacemb) | Prevent indexing from continuing after less than the specified amount of hard drive space is left on the same drive as the index location. | X | X |  |  |  |
| [PreventRemoteQueries](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#search-preventremotequeries) | If enabled, clients will be unable to query this device's index remotely. | X | X |  |  |  |
| [SafeSearchPermissions](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#search-safesearchpermissions) | Specify the level of safe search (filtering adult content) required. |  | X |  |  |  |



## Security

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAddProvisioningPackage](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#security-allowaddprovisioningpackage) | Specify whether to allow installation of provisioning packages. | X | X | X | X | X |
| [AllowManualRootCertificateInstallation](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#security-allowmanualrootcertificateinstallation) | Specify whether the user is allowed to manually install root and intermediate CA certificates. |  | X |  |  |  |
| [AllowRemoveProvisioningPackage](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#security-allowremoveprovisioningpackage) | Specify whether removal of provisioning packages is allowed. | X | X | X | X | X |
| [AntiTheftMode](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#security-antitheftmode) | Allow or disallow Anti Theft Mode on the device. |  | X |  |  |  |
| [RequireDeviceEncryption](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#security-requiredeviceencryption) | Specify whether encryption is required. | X | X | X | X | X |
| [RequireProvisioningPackageSignature](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#security-requireprovisioningpackagesignature) | Specify whether provisioning packages must have a certificate signed by a device-trusted authority. | X | X | X | X | X |
| [RequireRetrieveHealthCertificateOnBoot](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#security-requireretrievehealthcertificateonboot) | Specify whether to retrieve and post TCG Boot logs, and get or cache an encrypted or signed Health Attestation Report from the Microsoft Health Attestation Service when a device boots or reboots. | X | X |  |  |  |

## Settings

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAutoPlay](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#settings-allowautoplay) | Allow the user to change AutoPlay settings. |  | X |  |  |  |
| [AllowDataSense](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#settings-allowdatasense) | Allow the user to change Data Sense settings. |  | X |  |  |  |
| [AllowVPN](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#settings-allowvpn) | Allow the user to change VPN settings. |  | X |  |  |  |
| [ConfigureTaskbarCalendar](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#settings-configuretaskbarcalendar) | Configure the default setting for showing additional calendars (besides the default calendar for the locale) in the taskbar clock and calendar flyout. | X |  |  |  |  |
[PageVisiblityList](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-settings#settings-pagevisibilitylist) | Allows IT admins to prevent specific pages in the System Settings app from being visible or accessible. Pages are identified by a shortened version of their already [published URIs](https://docs.microsoft.com/windows/uwp/launch-resume/launch-settings-app#ms-settings-uri-scheme-reference), which is the URI minus the "ms-settings:" prefix. For example, if the URI for a settings page is "ms-settings:foo", the page identifier used in the policy will be just "foo". Multiple page identifiers are separated by semicolons.  | X |  |  |  |  |

## Start

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowPinnedFolderDocuments](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderdocuments) | Control the visibility of the Documents shortcut on the Start menu. | X |  |  |  |  |
| [AllowPinnedFolderDownloads](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderdownloads) | Control the visibility of the Downloadds shortcut on the Start menu.  | X |  |  |  |  |
| [AllowPinnedFolderFileExplorer](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderfileexplorer) | Control the visibility of the File Explorer shortcut on the Start menu.  | X |  |  |  |  |
| [AllowPinnedFolderHomeGroup](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderhomegroup) | Control the visibility of the Home Group shortcut on the Start menu.  | X |  |  |  |  |
| [AllowPinnedFolderMusic](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldermusic) | Control the visibility of the Music shortcut on the Start menu.  | X |  |  |  |  |
| [AllowPinnedFolderNetwork](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldernetwork) | Control the visibility of the Network shortcut on the Start menu.  | X |  |  |  |  |
| [AllowPinnedFolderPersonalFolder](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderpersonalfolder) | Control the visibility of the Personal Folder shortcut on the Start menu.  | X |  |  |  |  |
| [AllowPinnedFolderPictures](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderpictures) | Control the visibility of the Pictures shortcut on the Start menu.  | X |  |  |  |  |
| [AllowPinnedFolderSettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldersettings) | Control the visibility of the Settings shortcut on the Start menu.  | X |  |  |  |  |
| [AllowPinnedFolderVideos](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldervideos)  |Control the visibility of the Videos shortcut on the Start menu.   | X |  |  |  |  |
| [ForceStartSize](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-forcestartsize) | Force the size of the Start screen. | X |  |  |  |  |
| [HideAppList](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hideapplist) | Collapse or remove the all apps list. | X |  |  |  |  |
| [HideChangeAccountSettings](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hidechangeaccountsettings) | Hide **Change account settings** from appearing in the user tile. | X |  |  |  |  |
| [HideFrequentlyUsedApps](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hidefrequentlyusedapps) | Hide **Most used** section of Start.  | X |  |  |  |  |
| [HideHibernate](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hidehibernate) | Prevent **Hibernate** option from appearing in the Power button. | X |  |  |  |  |
| [HideLock](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hidelock) | Prevent **Lock** from appearing in the user tile. | X |  |  |  |  |
| HidePeopleBar | Remove the people icon from the taskbar, as well as the corresponding settings toggle. It also prevents users from pinning people to the taskbar. | X |  |  |  |  |
| [HidePowerButton](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hidepowerbutton) | Hide the **Power** button. | X |  |  |  |  |
| [HideRecentJumplists](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hiderecentjumplists) | Hide jumplists of recently opened items. | X |  |  |  |  |
| [HideRecentlyAddedApps](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hiderecentlyaddedapps) | Hide **Recently added** section of Start. | X |  |  |  |  |
| [HideRestart](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hiderestart) | Prevent **Restart** and **Update and restart** from appearing in the Power button. | X |  |  |  |  |
| [HideShutDown](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hideshutdown) | Prevent **Shut down** and **Update and shut down** from appearing in the Power button.  | X |  |  |  |  |
| [HideSignOut](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hidesignout) | Prevent **Sign out** from appearing in the user tile. | X |  |  |  |  |
| [HideSleep](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hidesleep) | Prevent **Sleep** from appearing in the Power button. | X |  |  |  |  |
| [HideSwitchAccount](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hideswitchaccount) | Prevent **Switch account** from appearing in the user tile. | X |  |  |  |  |
| [HideUserTile](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-hideusertile)  |  Hide the user tile. | X |  |  |  |  |
| [ImportEdgeAssets](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-importedgeassets) | Import Edge assets for secondary tiles. For more information, see [Add image for secondary Microsoft Edge tiles](https://docs.microsoft.com/windows/configuration/start-secondary-tiles).  | X |  |  |  |  |
| [NoPinningToTaskbar](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-nopinningtotaskbar) | Prevent users from pinning and unpinning apps on the taskbar. | X |  |  |  |  |
| [StartLayout](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#start-startlayout) | Apply a custom Start layout. For more information, see [Customize Windows 10 Start and taskbar with provisioning packages](https://docs.microsoft.com/windows/configuration/customize-windows-10-start-screens-by-using-provisioning-packages-and-icd) | X |  |  |  |  |

## System

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowBuildPreview](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#system-allowbuildpreview) | Specify whether users can access the Insider build controls in the **Advanced Options** for Windows Update. | X | X |  |  |  |
| [AllowEmbeddedMode](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#system-allowembeddedmode) | Specify whether to set general purpose device to be in embedded mode. | X | X | X | X | X |
| [AllowExperimentation](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#system-allowexperimentation) | Determine the level that Microsoft can experiment with the product to study user preferences or device behavior. | X | X |  |  |  |
| [AllowLocation](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#system-allowlocation) | Specify whether to allow app access to the Location service. | X | X | X | X | X |
| [AllowStorageCard](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#system-allowstoragecard) | Specify whether the user is allowed to use the storage card for device storage. | X | X | X | X | X |
| [AllowTelemetry](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#system-allowtelemetry) | Allow the device to send diagnostic and useage telemetry data. | X | X |  |  |  |
| [AllowUserToResetPhone](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#system-allowusertoresetphone) | Allow the user to factory reset the phone. | X | X |  |  |  |
| [DisableOneDriveFileSync](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#system-disableonedrivefilesync) | Prevent apps and features from working with files on OneDrive. | X |  |  |  |  |
| [LimitEnhancedDiagnosticDataWindowsAnalytics](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-system#system-limitenhanceddiagnosticdatawindowsanalytics) | This policy setting, in combination with the System/AllowTelemetry policy setting, enables organizations to send Microsoft a specific set of diagnostic data for IT insights via Windows Analytics services. To enable this behavior you must enable this policy setting, and set Allow Telemetry to level 2 (Enhanced). When you configure these policy settings, a basic level of diagnostic data plus additional events that are required for Windows Analytics are sent to Microsoft. These events are documented in [Windows 10, version 1703 basic level Windows diagnostic events and fields](https://go.microsoft.com/fwlink/?linkid=847594). Enabling enhanced diagnostic data in the System/AllowTelemetry policy in combination with not configuring this policy will also send the required events for Windows Analytics, plus additional enhanced level telemetry data. This setting has no effect on computers configured to send full, basic or security level diagnostic data to Microsoft. If you disable or do not configure this policy setting, then the level of diagnostic data sent to Microsoft is determined by the System/AllowTelemetry policy.  | X | X |  |  |  |


## TextInput

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowIMELogging](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#textinput-allowimelogging) | Allow the user to turn on and off the logging for incorrect conversion and saving auto-tuning result to a file and history-based predictive input. | X |  |  |  |  |
| [AllowIMENetworkAccess](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#textinput-allowimenetworkaccess) | Allow the user to turn on Open Extended Dictionary, Internet search integration, or cloud candidate features to provide input suggestions that do not exist in the device's local dictionary. | X |  |  |  |  |
| [AllowInputPanel](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#textinput-allowinputpanel) | Disable the touch/handwriting keyboard. | X |  |  |  |  |
| [AllowJapaneseIMESurrogatePairCharacters](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#textinput-allowjapaneseimesurrogatepaircharacters) | Allow the Japanese IME surrogate pair characters. | X |  |  |  |  |
| [AllowJapaneseIVSCharacters](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#textinput-allowjapaneseivscharacters) | Allow Japanese Ideographic Variation Sequence (IVS) characters. | X |  |  |  |  |
| [AllJapaneseNonPublishingStandardGlyph](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#textinput-allowjapanesenonpublishingstandardglyph) | All the Japanese non-publishing standard glyph. | X |  |  |  |  |
| [AllowJapaneseUserDictionary](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#textinput-allowjapaneseuserdictionary) | Allow the Japanese user dictionary. | X |  |  |  |  |
| [AllowKeyboardTextSuggestions](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#textinput-allowkeyboardtextsuggestions) | Specify whether text prediction is enabled or disabled for the on-screen keyboard, touch keyboard, and handwriting recognition tool. | X |  |  |  |  |
| [AllowLanguageFeaturesUninstall](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#textinput-allowlanguagefeaturesuninstall) | All language features to be uninstalled. | X |  |  |  |  |
| AllowUserInputsFromMiracastRecevier | Do not use. Instead, use [WirelessDisplay](#wirelessdisplay)/[AllowUserInputFromWirelessDisplayReceiver](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#wirelessdisplay-allowuserinputfromwirelessdisplayreceiver)  |  |  |  |  |  |
| [ExcludeJapaneseIMEExceptISO208](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#textinput-excludejapaneseimeexceptjis0208) | Allow users to restrict character code range of conversion by setting the character filter.  | X |  |  |  |  |
| [ExcludeJapaneseIMEExceptISO208andEUDC](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#textinput-excludejapaneseimeexceptjis0208andeudc) | Allow users to restrict character code range of conversion by setting the character filter.  | X |  |  |  |  |
| [ExcludeJapaneseIMEExceptShiftJIS](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#textinput-excludejapaneseimeexceptshiftjis) | Allow users to restrict character code range of conversion by setting the character filter. | X |  |  |  |  |


## TimeLanguageSettings

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowSet24HourClock](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#timelanguagesettings-allowset24hourclock) | Configure the default clock setting to be the 24 hour format. |  | X |  |  |  |


## Update

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [ActiveHoursEnd](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-activehoursend) | Use with **Update/ActiveHoursStart** to manage the range of active hours where update rboots are not scheduled. | X | X | X | X | X |
| [ActiveHoursMaxRange](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-activehoursmaxrange) | Specify the maximum active hours range. | X | X | X | X | X |
| [ActiveHoursStart](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-activehoursstart) | Use with **Update/ActiveHoursEnd** to manage the range of active hours where update reboots are not scheduled. | X | X | X | X | X |
| [AllowautoUpdate](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-allowautoupdate) | Configure automatic update behavior to scan, download, and install updates. | X | X | X | X | X |
| [AllowAutoWindowsUpdateDownloadOverMeteredNetwork](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowautowindowsupdatedownloadovermeterednetwork)| Option to download updates automatically over metered connections (off by default). Enter `0` for not allowed, or `1` for allowed. | X | X | X | X | X |
| [AllowMUUpdateService](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-allowmuupdateservice) | Manage whether to scan for app updates from Microsoft Update. | X | X | X | X | X |
| [AllowNonMicrosoftSignedUpdate](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-allownonmicrosoftsignedupdate) | Manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found at the UpdateServiceUrl location. | X | X | X | X | X |
| [AllowUpdateService](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-allowupdateservice) | Specify whether the device can use Microsoft Update, Windows Server Update Services (WSUS), or Microsoft Store. | X | X | X | X | X |
| [AutoRestartDeadlinePeriodInDays](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-autorestartdeadlineperiodindays) | Specify number of days (between 2 and 30) after which a forced restart will occur outside of active hours when restart is pending.  | X | X | X | X | X |
| [AutoRestartNotificationSchedule](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-autorestartnotificationschedule) | Specify the period for auto-restart reminder notifications. | X | X | X | X | X |
| [AutoRestartRequiredNotificationDismissal](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-autorestartrequirednotificationdismissal) | Specify the method by which the auto-restart required notification is dismissed.  | X | X | X | X | X |
| [BranchReadinessLevel](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-branchreadinesslevel) | Select which branch a device receives their updates from. | X | X | X | X | X |
| [DeferFeatureUpdatesPeriodInDays](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-deferfeatureupdatesperiodindays) | Defer Feature Updates for the specified number of days. | X | X | X | X | X |
| [DeferQualityUpdatesPeriodInDays](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-deferqualityupdatesperiodindays) | Defer Quality Updates for the specified number of days. | X | X | X | X | X |
| [DeferUpdatePeriod](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-deferupdateperiod) | Specify update delays for up to 4 weeks.  | X | X | X | X | X |
| [DeferUpgradePeriod](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-deferupgradeperiod) |Specify upgrade delays for up to 8 months. | X | X | X | X | X |
| [DetectionFrequency](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-detectionfrequency) | Specify the frequency to scan for updates, from every 1-22 hours. | X | X | X | X | X |
| [DisableDualScan](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-disabledualscan) | Do not allow update deferral policies to cause scans against Windows Update.  | X | X | X | X | X |
| [EngagedRestartDeadline](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-engagedrestartdeadline) | Specify the deadline in days before automatically scheduling and executing a pending restart outside of active hours. | X | X | X | X | X |
| [EngagedRestartSnoozeSchedule](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-engagedrestartsnoozeschedule) | Specify the number of days a user can snooze Engaged restart reminder notifications. | X | X | X | X | X |
| [EngagedRestartTransitionSchedule](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-engagedrestarttransitionschedule) | Specify the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. | X | X | X | X | X |
| [FillEmptyContentUrls](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-fillemptycontenturls) | Allow Windows Update Agent to determine the download URL when it is missing from the metadata. | X | X | X | X | X |
| ManagePreviewBuilds | Use to enable or disable preview builds. |  X | X | X | X | X |
| PhoneUpdateRestrictions | Deprecated |  |  X  |  |  |  |
| [RequireDeferUpgrade](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-requiredeferupgrade) | Configure device to receive updates from Current Branch for Business (CBB). | X | X | X | X | X |
| [ScheduledInstallDay](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-scheduledinstallday) | Schedule the day for update installation. | X | X | X | X | X |
| [ScheduledInstallEveryWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstalleveryweek) | To schedule update installation every week, set the value as `1`. | X | X | X | X | X |
| [ScheduledInstallFirstWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallfirstweek) | To schedule update installation the first week of the month, see the value as `1`.  | X | X | X | X | X |
| [ScheduledInstallFourthWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallfourthweek) | To schedule update installation the fourth week of the month, see the value as `1`. | X | X | X | X | X |
| [ScheduledInstallSecondWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallsecondweek) | To schedule update installation the second week of the month, see the value as `1`. | X | X | X | X | X |
| [ScheduledInstallThirdWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallthirdweek) | To schedule update installation the third week of the month, see the value as `1`. | X | X | X | X | X |
| [ScheduledInstallTime](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-scheduledinstalltime) | Schedule the time for update installation. | X | X | X | X | X |
| [ScheduleImminentRestartWarning](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-scheduleimminentrestartwarning) | Specify the period for auto-restart imminent warning notifications. | X | X | X | X | X ||
| [ScheduleRestartWarning](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-schedulerestartwarning) | Specify the period for auto-restart warning reminder notifications. | X | X | X | X | X |
| [SetAutoRestartNotificationDisable](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-setautorestartnotificationdisable) | Disable auto-restart notifications for update installations. | X | X | X | X | X |
| [SetEDURestart](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-setedurestart) | Skip the check for battery level to ensure that the reboot will happen at ScheduledInstallTime. | X | X | X | X | X |
| [UpdateServiceUrl](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-updateserviceurl) | Configure the device to check for updates from a WSUS server instead of Microsoft Update.  | X | X | X | X | X |
| [UpdateServiceUrlAlternate](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-updateserviceurlalternate) | Specify an alternate intranet server to host updates from Microsoft Update.  | X | X | X | X | X |


## WiFi

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAutoConnectToWiFiSenseHotspots](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#wifi-allowautoconnecttowifisensehotspots) | Allow the device to connect automatically to Wi-Fi hotspots. | X | X |  |  |  |
| [AllowInternetSharing](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#wifi-allowinternetsharing) | Allow Internet sharing. | X | X |  |  |  |
| [AllowManualWiFiConfiguration](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#wifi-allowmanualwificonfiguration) | Allow connecting to Wi-Fi outside of MDM server-installed networks. |  | X |  |  |  |
| [AllowWiFi](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#wifi-allowwifi) | Allow Wi-Fi connections. |  | X |  |  |  |
| [WLANScanMode](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#wifi-wlanscanmode) | Configure the WLAN scanning behavior and how aggressively devices should be actively scanning for Wi-Fi networks to get devices connected. | X | X | X | X | X |

## WindowsInkWorkspace

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowSuggestedAppsInWindowsInkWorkspace](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#windowsinkworkspace-allowsuggestedappsinwindowsinkworkspace) | Show recommended app suggestions in the ink workspace. | X |  |  |  |  |
| [AllowWindowsInkWorkspace](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#windowsinkworkspace-allowwindowsinkworkspace) | Specify whether to allow the user to access the ink workspace. | X |  |  |  |  |


## WindowsLogon

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [HideFastUserSwitching](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#windowslogon-hidefastuserswitching) | Hide the **Switch account** button on the sign-in screen, Start, and the Task Manager. | X |  |  |  |  |

## WirelessDisplay

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowUserInputFromWirelessDisplayReceiver](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#wirelessdisplay-allowuserinputfromwirelessdisplayreceiver) | This policy controls whether or not the wireless display can send input (keyboard, mouse, pen, and touch, dependent upon display support) back to the source device. For example, a Surface Laptop is projecting wirelessly to a Surface Hub. If input from the wireless display receiver is allowed, users can draw with a pen on the Surface Hub.  | X | X |  |  |  |