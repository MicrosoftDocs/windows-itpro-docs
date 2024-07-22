---
title: Policies
description: This section describes the Policies settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.topic: reference
ms.date: 01/25/2024
---

# Policies (Windows Configuration Designer reference)

This section describes the **Policies** settings that you can configure in [provisioning packages](../provisioning-packages/provisioning-packages.md) for Windows 10 using Windows Configuration Designer. Each setting below links to its supported values, as documented in the [Policy configuration service provider (CSP)](/windows/client-management/mdm/policy-configuration-service-provider).

## AboveLock

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
|--|--|:-:|:-:|:-:|:-:|
| [AllowActionCenterNotifications](/windows/client-management/mdm/policy-configuration-service-provider#abovelock-allowactioncenternotifications) | Allow Action Center notifications above the device lock screen. |  |  |  |  |
| [AllowToasts](/windows/client-management/mdm/policy-configuration-service-provider#abovelock-allowtoasts) | Allow toast notifications above the device lock screen. | ✅ |  |  |  |

## Accounts

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
|--|--|:-:|:-:|:-:|:-:|
| [AllowAddingNonMicrosoftAccountManually](/windows/client-management/mdm/policy-configuration-service-provider#accounts-allowaddingnonmicrosoftaccountsmanually) | Whether users can add non-Microsoft email accounts | ✅ |  |  |  |
| [AllowMicrosoftAccountConnection](/windows/client-management/mdm/policy-configuration-service-provider#accounts-allowmicrosoftaccountconnection) | Whether users can use a Microsoft account for non-email-related connection authentication and services | ✅ |  | ✅ |  |
| [AllowMicrosoftAccountSigninAssistant](/windows/client-management/mdm/policy-configuration-service-provider#accounts-allowmicrosoftaccountsigninassistant) | Disable the **Microsoft Account Sign-In Assistant** (wlidsvc) NT service | ✅ |  |  |  |
| [DomainNamesForEmailSync](/windows/client-management/mdm/policy-configuration-service-provider#accounts-domainnamesforemailsync) | List of domains that are allowed to sync email on the devices | ✅ |  |  |  |

## ApplicationDefaults

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
|--|--|:-:|:-:|:-:|:-:|
| [DefaultAssociationsConfiguration](/windows/client-management/mdm/policy-configuration-service-provider#applicationdefaults-defaultassociationsconfiguration) | Set default file type and protocol associations | ✅ |  |  |  |

## ApplicationManagement

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
|--|--|:-:|:-:|:-:|:-:|
| [AllowAllTrustedApps](/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-allowalltrustedapps) | Whether non-Microsoft Store apps are allowed | ✅ |  |  | ✅ |
| [AllowAppStoreAutoUpdate](/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-allowappstoreautoupdate) | Whether automatic update of apps from Microsoft Store is allowed | ✅ |  |  | ✅ |
| [AllowDeveloperUnlock](/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-allowdeveloperunlock) | Whether developer unlock of device is allowed | ✅ | ✅ | ✅ | ✅ |
| [AllowGameDVR](/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-allowgamedvr) | Whether DVR and broadcasting are allowed | ✅ |  |  |  |
| [AllowSharedUserAppData](/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-allowshareduserappdata) | Whether multiple users of the same app can share data | ✅ |  |  |  |
| [AllowStore](/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-allowstore) | Whether app store is allowed at device |  |  |  |  |
| [ApplicationRestrictions](/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-applicationrestrictions) | An XML blob that specifies app restrictions, such as an allowlist, disallow list, etc. |  |  |  |  |
| [LaunchAppAfterLogOn](/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-launchappafterlogon) | Whether to launch an app or apps when the user signs in. | ✅ |  |  |  |
| [RestrictAppDataToSystemVolume](/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-restrictappdatatosystemvolume) | Whether app data is restricted to the system drive | ✅ |  |  | ✅ |
| [RestrictAppToSystemVolume](/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-restrictapptosystemvolume) | Whether the installation of apps is restricted to the system drive | ✅ |  |  | ✅ |

## Authentication

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
|--|--|:-:|:-:|:-:|:-:|
| [AllowFastReconnect](/windows/client-management/mdm/policy-csp-authentication#authentication-allowfastreconnect) | Allows EAP Fast Reconnect from being attempted for EAP Method TLS. | ✅ | ✅ | ✅ | ✅ |
| [EnableFastFirstSignin](/windows/client-management/mdm/policy-csp-authentication#authentication-enablefastfirstsignin) | Enables a quick first sign-in experience for a user by automatically connecting new non-admin Azure AD accounts to the pre-configured candidate local accounts. | ✅ | ✅ |  | ✅ |
| [EnableWebSignin](/windows/client-management/mdm/policy-csp-authentication#authentication-enablewebsignin) | Enables Windows sign-in support for non-ADFS federated providers (for example, SAML). | ✅ | ✅ |  | ✅ |
| [PreferredAadTenantDomainName](/windows/client-management/mdm/policy-csp-authentication#authentication-preferredaadtenantdomainname) | Specifies the preferred domain among available domains in the Azure AD tenant. | ✅ | ✅ |  | ✅ |

## BitLocker

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
|--|--|:-:|:-:|:-:|:-:|
| [EncryptionMethod](/windows/client-management/mdm/policy-configuration-service-provider#bitlocker-encryptionmethod) | Specify BitLocker drive encryption method and cipher strength | ✅ |  |  |  |

## Bluetooth

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
|--|--|:-:|:-:|:-:|:-:|
| [AllowAdvertising](/windows/client-management/mdm/policy-configuration-service-provider#bluetooth-allowadvertising) | Whether the device can send out Bluetooth advertisements | ✅ | ✅ | ✅ | ✅ |
| [AllowDiscoverableMode](/windows/client-management/mdm/policy-configuration-service-provider#bluetooth-allowdiscoverablemode) | Whether other Bluetooth-enabled devices can discover the device | ✅ | ✅ | ✅ | ✅ |
| [AllowPrepairing](/windows/client-management/mdm/policy-configuration-service-provider#bluetooth-allowprepairing) | Whether to allow specific bundled Bluetooth peripherals to automatically pair with the host device | ✅ | ✅ | ✅ | ✅ |
| AllowPromptedProximalConnections | Whether Windows will prompt users when Bluetooth devices that are connectable are in range of the user's device | ✅ | ✅ | ✅ | ✅ |
| [LocalDeviceName](/windows/client-management/mdm/policy-configuration-service-provider#bluetooth-localdevicename) | Set the local Bluetooth device name | ✅ | ✅ | ✅ | ✅ |
| [ServicesAllowedList](/windows/client-management/mdm/policy-configuration-service-provider#bluetooth-servicesallowedlist) | Set a list of allowable services and profiles | ✅ | ✅ | ✅ | ✅ |

## Browser

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
|--|--|:-:|:-:|:-:|:-:|
| [AllowAddressBarDropdown](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowaddressbardropdown) | Specify whether to allow the address bar drop-down functionality in Microsoft Edge. If you want to minimize network connections from Microsoft Edge to Microsoft services, we recommend disabling this functionality. | ✅ |  |  |  |
| [AllowAutofill](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowautofill) | Specify whether autofill on websites is allowed. | ✅ | ✅ |  | ✅ |
| [AllowBrowser](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowbrowser) | Specify whether the browser is allowed on the device (for Windows 10, version 1803 and earlier only). | ✅ |  |  |  |
| [AllowConfigurationUpdateForBooksLibrary](/windows/client-management/mdm/policy-csp-browser#browser-allowconfigurationupdateforbookslibrary) | Specify whether Microsoft Edge can automatically update the configuration data for the Books Library. | ✅ |  |  |  |
| [AllowCookies](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowcookies) | Specify whether cookies are allowed. | ✅ | ✅ |  | ✅ |
| [AllowDeveloperTools](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowdevelopertools) | Specify whether employees can use F12 Developer Tools on Microsoft Edge. | ✅ |  |  |  |
| [AllowDoNotTrack](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowdonottrack) | Specify whether Do not Track headers are allowed. | ✅ | ✅ |  | ✅ |
| [AllowExtensions](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowextensions) | Specify whether Microsoft Edge extensions are allowed. | ✅ |  |  |  |
| [AllowFlash](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowflash) | Specify whether Adobe Flash can run in Microsoft Edge. | ✅ |  |  |  |
| [AllowFlashClickToRun](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowflashclicktorun) | Specify whether users must take an action, such as clicking the content or a Click-to-Run button, before seeing content in Adobe Flash. | ✅ |  |  |  |
| [AllowFullScreenMode](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowfullscreenmode) | Specify whether full-screen mode is allowed. | ✅ | ✅ |  | ✅ |
| [AllowInPrivate](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowinprivate) | Specify whether InPrivate browsing is allowed on corporate networks. | ✅ | ✅ |  | ✅ |
| [AllowMicrosoftCompatibilityList](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowmicrosoftcompatibilitylist) | Specify whether to use the Microsoft compatibility list in Microsoft Edge. | ✅ | ✅ |  | ✅ |
| [AllowPasswordManager](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowpasswordmanager) | Specify whether saving and managing passwords locally on the device is allowed. | ✅ | ✅ |  | ✅ |
| [AllowPopups](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowpopups) | Specify whether pop-up blocker is allowed or enabled. | ✅ |  | ✅ |  |
| [AllowPrelaunch](/windows/client-management/mdm/policy-csp-browser#browser-allowprelaunch) | Specify whether Microsoft Edge can pre-launch as a background process during Windows startup when the system is idle waiting to be launched by the user. | ✅ |  |  |  |
| [AllowPrinting](/windows/client-management/mdm/policy-csp-browser#browser-allowprinting) | Specify whether users can print web content in Microsoft Edge. | ✅ | ✅ |  | ✅ |
| [AllowSavingHistory](/windows/client-management/mdm/policy-csp-browser#browser-allowsavinghistory) | Specify whether Microsoft Edge saves the browsing history. | ✅ |  |  |  |
| [AllowSearchEngineCustomization](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowsearchenginecustomization) | Allow search engine customization for MDM-enrolled devices. | ✅ | ✅ |  | ✅ |
| [AllowSearchSuggestionsinAddressBar](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowsearchsuggestionsinaddressbar) | Specify whether search suggestions are allowed in the address bar. | ✅ | ✅ |  | ✅ |
| [AllowSideloadingOfExtensions](/windows/client-management/mdm/policy-csp-browser#browser-allowsideloadingofextensions) | Specify whether extensions can be sideloaded in Microsoft Edge. | ✅ |  |  |  |
| [AllowSmartScreen](/windows/client-management/mdm/policy-configuration-service-provider#browser-allowsmartscreen) | Specify whether Windows Defender SmartScreen is allowed. | ✅ | ✅ | ✅ | ✅ |
| [AllowTabPreloading](/windows/client-management/mdm/policy-csp-browser#browser-allowtabpreloading) | Specify whether preloading the Start and New tab pages during Windows sign-in is allowed. | ✅ |  |  |  |
| [AllowWebContentOnNewTabPage](/windows/client-management/mdm/policy-csp-browser#browser-allowwebcontentonnewtabpage) | Specify whether a New tab page opens with the default content or a blank page. | ✅ | ✅ |  | ✅ |
| [AlwaysEnableBooksLibrary](/windows/client-management/mdm/policy-csp-browser#browser-alwaysenablebookslibrary) | Always show the Books Library in Microsoft Edge. | ✅ |  |  |  |
| [ClearBrowsingDataOnExit](/windows/client-management/mdm/policy-configuration-service-provider#browser-clearbrowsingdataonexit) | Specify whether to clear browsing data when exiting Microsoft Edge. | ✅ |  |  |  |
| [ConfigureAdditionalSearchEngines](/windows/client-management/mdm/policy-configuration-service-provider#browser-configureadditionalsearchengines) | Allows you to add up to five more search engines for MDM-enrolled devices. | ✅ | ✅ |  | ✅ |
| [ConfigureFavoritesBar](/windows/client-management/mdm/policy-csp-browser#browser-configurefavoritesbar) | Specify whether the Favorites bar is shown or hidden on all pages. | ✅ |  |  |  |
| [ConfigureHomeButton](/windows/client-management/mdm/policy-csp-browser#browser-configurehomebutton) | Configure whether the Home button will be shown, and what should happen when it's selected. You should also configure the [SetHomeButtonURL](/windows/client-management/mdm/policy-csp-browser#browser-sethomebuttonurl) setting. To configure this setting and also allow users to make changes to the Home button, see the [UnlockHomeButton](/windows/client-management/mdm/policy-csp-browser#browser-unlockhomebutton) setting. | ✅ |  |  |  |
| [ConfigureKioskMode](/windows/client-management/mdm/policy-csp-browser#browser-configurekioskmode) | Configure how Microsoft Edge operates when it's running in kiosk mode, either as a single-app kiosk or as one of multiple apps running on the kiosk device. | ✅ |  |  |  |
| [ConfigureKioskResetAfterIdleTimeout](/windows/client-management/mdm/policy-csp-browser#browser-configurekioskresetafteridletimeout) | Specify the time, in minutes, after which Microsoft Edge running in kiosk mode resets to the default kiosk configuration. | ✅ |  |  |  |
| [ConfigureOpenMicrosoftEdgeWith](/windows/client-management/mdm/policy-csp-browser#browser-configureopenmicrosoftedgewith) | Specify which pages should load when Microsoft Edge opens. You should also configure the [ConfigureStartPages](/windows/client-management/mdm/policy-csp-browser#browser-configurestartpages) setting and [DisableLockdownOfStartPages](/windows/client-management/mdm/policy-configuration-service-provider#browser-disablelockdownofstartpages) setting. | ✅ |  |  |  |
| [ConfigureTelemetryForMicrosoft365Analytics](/windows/client-management/mdm/policy-csp-browser#browser-configuretelemetryformicrosoft365analytics) | Specify whether to send Microsoft Edge browsing history data to Microsoft 365 Analytics. | ✅ |  |  |  |
| [DisableLockdownOfStartPages](/windows/client-management/mdm/policy-configuration-service-provider#browser-disablelockdownofstartpages) | Specify whether the lockdown on the Start pages is disabled. | ✅ |  |  |  |
| [EnableExtendedBooksTelemetry](/windows/client-management/mdm/policy-csp-browser#browser-enableextendedbookstelemetry) | Enable this setting to send more diagnostic data, on top of the basic diagnostic data, from the Books tab. | ✅ | ✅ |  |  |
| [EnterpriseModeSiteList](/windows/client-management/mdm/policy-configuration-service-provider#browser-enterprisemodesitelist) | Allow the user to specify a URL of an enterprise site list. | ✅ |  |  |  |
| [EnterpriseSiteListServiceUrl](/windows/client-management/mdm/policy-csp-browser#browser-enterprisesitelistserviceurl) | This policy (introduced in Windows 10, version 1507) was deprecated in Windows 10, version 1511 by [Browser/EnterpriseModeSiteList](/windows/client-management/mdm/policy-configuration-service-provider#browser-enterprisemodesitelist). | ✅ |  |  |  |
| [FirstRunURL](/windows/client-management/mdm/policy-configuration-service-provider#browser-firstrunurl) | Specify the URL that Microsoft Edge will use when it's opened for the first time. | ✅ |  |  |  |
| [HomePages](/windows/client-management/mdm/policy-configuration-service-provider#browser-homepages) | Specify your Start pages for MDM-enrolled devices. | ✅ |  |  |  |
| [LockdownFavorites](/windows/client-management/mdm/policy-csp-browser#browser-lockdownfavorites) | Configure whether employees can add, import, sort, or edit the Favorites list in Microsoft Edge. | ✅ |  |  |  |
| [PreventAccessToAboutFlagsInMicrosoftEdge](/windows/client-management/mdm/policy-configuration-service-provider#browser-preventaccesstoaboutflagsinmicrosoftedge) | Specify whether users can access the **about:flags** page, which is used to change developer settings and to enable experimental features. | ✅ | ✅ |  | ✅ |
| [PreventCertErrorOverrides](/windows/client-management/mdm/policy-csp-browser#browser-preventcerterroroverrides) | Specify whether to override security warnings about sites that have SSL errors. | ✅ | ✅ |  | ✅ |
| [PreventFirstRunPage](/windows/client-management/mdm/policy-configuration-service-provider#browser-preventfirstrunpage) | Specify whether to enable or disable the First Run webpage. | ✅ |  |  |  |
| [PreventLiveTileDataCollection](/windows/client-management/mdm/policy-configuration-service-provider#browser-preventlivetiledatacollection) | Specify whether Microsoft can collect information to create a Live Tile when pinning a site to Start from Microsoft Edge. | ✅ | ✅ |  | ✅ |
| [PreventSmartScreenPromptOverride](/windows/client-management/mdm/policy-configuration-service-provider#browser-preventsmartscreenpromptoverride) | Specify whether users can override the Windows Defender SmartScreen warnings about potentially malicious websites. | ✅ | ✅ |  | ✅ |
| [PreventSmartScreenPromptOverrideForFiles](/windows/client-management/mdm/policy-configuration-service-provider#browser-preventsmartscreenpromptoverrideforfiles) | Specify whether users can override the Windows Defender SmartScreen warnings about downloading unverified files. | ✅ | ✅ |  | ✅ |
| PreventTabPreloading | Prevent Microsoft Edge from starting and loading the Start and New Tab page at Windows startup and each time Microsoft Edge is closed. Applies to Windows 10, version 1803 and earlier only. | ✅ |  |  |  |
| [PreventTurningOffRequiredExtensions](/windows/client-management/mdm/policy-configuration-service-provider#browser-forceenabledextensions) | Enter a list of extensions in Microsoft Edge that users can't turn off, using a semi-colon delimited list of extension package family names. | ✅ |  |  |  |
| [PreventUsingLocalHostIPAddressForWebRTC](/windows/client-management/mdm/policy-configuration-service-provider#browser-preventusinglocalhostipaddressforwebrtc) | Specify whether a user's localhost IP address is displayed while making phone calls using the WebRTC protocol. | ✅ | ✅ |  | ✅ |
| [ProvisionFavorites](/windows/client-management/mdm/policy-csp-browser#browser-provisionfavorites) | Configure a default set of favorites that will appear for employees. | ✅ |  |  |  |
| [SendIntranetTraffictoInternetExplorer](/windows/client-management/mdm/policy-configuration-service-provider#browser-sendintranettraffictointernetexplorer) | Specify whether to send intranet traffic to Internet Explorer. | ✅ |  |  |  |
| [SetDefaultSearchEngine](/windows/client-management/mdm/policy-configuration-service-provider#browser-setdefaultsearchengine) | Configure the default search engine for your employees. | ✅ | ✅ |  | ✅ |
| [SetHomeButtonURL](/windows/client-management/mdm/policy-csp-browser#browser-sethomebuttonurl) | Specify a custom URL for the Home button. You should also enable the [ConfigureHomeButton](/windows/client-management/mdm/policy-csp-browser#browser-configurehomebutton) setting and select the **Show the home button; clicking the home button loads a specific URL** option. | ✅ |  |  |  |
| [SetNewTabPageURL](/windows/client-management/mdm/policy-csp-browser#browser-setnewtabpageurl) | Specify a custom URL for a New tab page. | ✅ |  |  |  |
| [ShowMessageWhenOpeningSitesInInternetExplorer](/windows/client-management/mdm/policy-configuration-service-provider#browser-showmessagewhenopeningsitesininternetexplorer) | Specify whether users should see a full interstitial page in Microsoft Edge when opening sites that are configured to open in Internet Explorer using the Enterprise Site list. | ✅ |  |  |  |
| [SyncFavoritesBetweenIEAndMicrosoftEdge](/windows/client-management/mdm/policy-configuration-service-provider#browser-syncfavoritesbetweenieandmicrosoftedge) | Specify whether favorites are kept in sync between Internet Explorer and Microsoft Edge. | ✅ |  |  |  |
| [UnlockHomeButton](/windows/client-management/mdm/policy-csp-browser#browser-unlockhomebutton) | Specify whether users can make changes to the Home button. | ✅ |  |  |  |
| [UseSharedFolderForBooks](/windows/client-management/mdm/policy-csp-browser#browser-usesharedfolderforbooks) | Specify whether organizations should use a folder shared across users to store books from the Books Library. | ✅ |  |  |  |

## Camera

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
|--|--|:-:|:-:|:-:|:-:|
| [AllowCamera](/windows/client-management/mdm/policy-configuration-service-provider#camera-allowcamera) | Disable or enable the camera. | ✅ | ✅ |  |  |

## Connectivity

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
|--|--|:-:|:-:|:-:|:-:|
| [AllowBluetooth](/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowbluetooth) | Allow the user to enable Bluetooth or restrict access. | ✅ | ✅ | ✅ | ✅ |
| [AllowCellularData](/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowcellulardata) | Allow the cellular data channel on the device. | ✅ | ✅ |  | ✅ |
| [AllowCellularDataRoaming](/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowcellulardataroaming) | Allow or disallow cellular data roaming on the device. | ✅ | ✅ |  | ✅ |
| [AllowConnectedDevices](/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowconnecteddevices) | Allows IT admins the ability to disable the Connected Devices Platform component. | ✅ | ✅ |  | ✅ |
| [AllowNFC](/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allownfc) | Allow or disallow near field communication (NFC) on the device. |  |  |  | ✅ |
| [AllowUSBConnection](/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowusbconnection) | Enable USB connection between the device and a computer to sync files with the device or to use developer tools or to deploy or debug applications. |  |  |  | ✅ |
| [AllowVPNOverCellular](/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowvpnovercellular) | Specify what type of underlying connections VPN is allowed to use. | ✅ | ✅ |  | ✅ |
| [AllowVPNRoamingOverCellular](/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowvpnroamingovercellular) | Prevent the device from connecting to VPN when the device roams over cellular networks. | ✅ | ✅ |  | ✅ |
| HideCellularConnectionMode | Hide the checkbox that lets the user change the connection mode. | ✅ | ✅ |  | ✅ |
| HideCellularRoamingOption | Hide the dropdown menu that lets the user change the roaming preferences. | ✅ | ✅ |  | ✅ |

## CredentialProviders

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
|--|--|:-:|:-:|:-:|:-:|
| [DisableAutomaticReDeploymentCredentials](/windows/client-management/mdm/policy-csp-credentialproviders) | This setting disables the visibility of the credential provider that triggers the PC refresh on a device. This policy doesn't actually trigger the refresh. The admin user is required to authenticate to trigger the refresh on the target device. The Windows 10 Autopilot Reset feature allows admin to reset devices to a known good managed state while preserving the management enrollment. After the automatic redeployment is triggered, the devices are for ready for use by information workers or students. | ✅ |  |  |  |

## Cryptography

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [AllowFipsAlgorithmPolicy](/windows/client-management/mdm/policy-configuration-service-provider#cryptography-allowfipsalgorithmpolicy) | Allow or disallow the Federal Information Processing Standard (FIPS) policy. | ✅ |   |  |  |
| [TLSCiperSuites](/windows/client-management/mdm/policy-configuration-service-provider#cryptography-tlsciphersuites)  | List the Cryptographic Cipher Algorithms allowed for SSL connections. Format is a semicolon delimited list. Last write win.  | ✅  |   |   |  |

## Defender

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [AllowArchiveScanning](/windows/client-management/mdm/policy-configuration-service-provider#defender-allowarchivescanning) | Allow or disallow scanning of archives. | ✅ |  |  |  |
| [AllowBehaviorMonitoring](/windows/client-management/mdm/policy-configuration-service-provider#defender-allowbehaviormonitoring)  | Allow or disallow Windows Defender Behavior Monitoring functionality.  |  ✅ |   |   |  |
| [AllowCloudProtection](/windows/client-management/mdm/policy-configuration-service-provider#defender-allowcloudprotection) | To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions. | ✅ |   |  |  |
| [AllowEmailScanning](/windows/client-management/mdm/policy-configuration-service-provider#defender-allowemailscanning)  | Allow or disallow scanning of email.  |  ✅ |    |   |  |
| [AllowFullScanOnMappedNetworkDrives](/windows/client-management/mdm/policy-configuration-service-provider#defender-allowfullscanonmappednetworkdrives) | Allow or disallow a full scan of mapped network drives. | ✅ |  |  |  |
| [AllowFullScanRemovableDriveScanning](/windows/client-management/mdm/policy-configuration-service-provider#defender-allowfullscanremovabledrivescanning)  | Allow or disallow a full scan of removable drives.  |  ✅ |   |   |  |
| [AllowIntrusionPreventionSystem](/windows/client-management/mdm/policy-configuration-service-provider#defender-allowintrusionpreventionsystem) | Allow or disallow Windows Defender Intrusion Prevention functionality. | ✅ |  |  |  |
| [AllowIOAVProtection](/windows/client-management/mdm/policy-configuration-service-provider#defender-allowioavprotection)  | Allow or disallow Windows Defender IOAVP Protection functionality.  |  ✅ |   |   |  |
| [AllowOnAccessProtection](/windows/client-management/mdm/policy-configuration-service-provider#defender-allowonaccessprotection) | Allow or disallow Windows Defender On Access Protection functionality. | ✅ |  |  |  |
| [AllowRealtimeMonitoring](/windows/client-management/mdm/policy-configuration-service-provider#defender-allowrealtimemonitoring)  | Allow or disallow Windows Defender Realtime Monitoring functionality.  |  ✅ |   |   |  |
| [AllowScanningNetworkFiles](/windows/client-management/mdm/policy-configuration-service-provider#defender-allowscanningnetworkfiles) | Allow or disallow scanning of network files.  | ✅ |   |  |  |
| [AllowScriptScanning](/windows/client-management/mdm/policy-configuration-service-provider#defender-allowscriptscanning) | Allow or disallow Windows Defender Script Scanning functionality. | ✅ |   |  |  |
| [AllowUserUIAccess](/windows/client-management/mdm/policy-configuration-service-provider#defender-allowuseruiaccess)  | Allow or disallow user access to the Windows Defender UI.  |  ✅ |   |   |  |
| [AvgCPULoadFactor](/windows/client-management/mdm/policy-configuration-service-provider#defender-avgcpuloadfactor) | Represents the average CPU load factor for the Windows Defender scan (in percent). | ✅ |  |  |  |
| [DaysToRetainCleanedMalware](/windows/client-management/mdm/policy-configuration-service-provider#defender-daystoretaincleanedmalware)  | Specify time period (in days) that quarantine items will be stored on the system.  |  ✅ |   |   |  |
| [ExcludedExtensions](/windows/client-management/mdm/policy-configuration-service-provider#defender-excludedextensions) | Specify a list of file type extensions to ignore during a scan. Separate each file type in the list by using \|. | ✅ |  |  |  |
| [ExcludedPaths](/windows/client-management/mdm/policy-configuration-service-provider#defender-excludedpaths)  | Specify a list of directory paths to ignore during a scan. Separate each path in the list by using \|.  |  ✅ |   |   |  |
| [ExcludedProcesses](/windows/client-management/mdm/policy-configuration-service-provider#defender-excludedprocesses) | Specify a list of files opened by processes to ignore during a scan. Separate each file type in the list by using \|. The process itself isn't excluded from the scan, but can be excluded by using the [Defender/ExcludedPaths](/windows/client-management/mdm/policy-configuration-service-provider#defender-excludedpaths) policy to exclude its path. | ✅ |  |  |  |
| [RealTimeScanDirection](/windows/client-management/mdm/policy-configuration-service-provider#defender-realtimescandirection)  | Control which sets of files should be monitored.  |  ✅ |   |   |  |
| [ScanParameter](/windows/client-management/mdm/policy-configuration-service-provider#defender-scanparameter) | Select whether to perform a quick scan or full scan. | ✅ |  |  |  |
| [ScheduleQuickScanTime](/windows/client-management/mdm/policy-configuration-service-provider#defender-schedulequickscantime)  | Specify the time of day that Windows Defender quick scan should run.  |  ✅ |   |   |  |
| [ScheduleScanDay](/windows/client-management/mdm/policy-configuration-service-provider#defender-schedulescanday) | Select the day that Windows Defender scan should run. | ✅ |  |  |  |
| [ScheduleScanTime](/windows/client-management/mdm/policy-configuration-service-provider#defender-schedulescantime)  | Select the time of day that the Windows Defender scan should run.  |  ✅ |   |   |  |
| [SignatureUpdateInterval](/windows/client-management/mdm/policy-configuration-service-provider#defender-signatureupdateinterval) | Specify the interval (in hours) that will be used to check for signatures, so instead of using the ScheduleDay and ScheduleTime the check for new signatures will be set according to the interval. | ✅ |  |  |  |
| [SubmitSamplesConsent](/windows/client-management/mdm/policy-configuration-service-provider#defender-submitsamplesconsent) | Checks for the user consent level in Windows Defender to send data. | ✅ |  |  |  |
| [ThreatSeverityDefaultAction](/windows/client-management/mdm/policy-configuration-service-provider#defender-threatseveritydefaultaction)  | Specify any valid threat severity levels and the corresponding default action ID to take.  |  ✅ |   |   |  |

## DeliveryOptimization

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [DOAbsoluteMaxCacheSize](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-doabsolutemaxcachesize) | Specify the maximum size in GB of Delivery Optimization cache. | ✅ |  |  |  |
| [DOAllowVPNPeerCaching](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-doallowvpnpeercaching) | Specify whether the device is allowed to participate in Peer Caching while connected via VPN to the domain network. | ✅ |  |  |  |
| [DODelayBackgroundDownloadFromHttp](/windows/client-management/mdm/policy-csp-deliveryoptimization#deliveryoptimization-dodelaybackgrounddownloadfromhttp) | Allows you to delay the use of an HTTP source in a background download that is allowed to use peer-to-peer. | ✅ |  |  |  |
| [DODelayForegroundDownloadFromHttp](/windows/client-management/mdm/policy-csp-deliveryoptimization#deliveryoptimization-dodelayforegrounddownloadfromhttp) | Allows you to delay the use of an HTTP source in a foreground (interactive) download that is allowed to use peer-to-peer. | ✅ |  |  |  |
| [DODownloadMode](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dodownloadmode) | Specify the download method that Delivery Optimization can use in downloads of Windows Updates, apps, and app updates. | ✅ |   |  |  |
| [DOGroupId](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dogroupid) | Specify an arbitrary group ID that the device belongs to. | ✅ |  |  |  |
| [DOGroupIdSource](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dogroupidsource) | Set this policy to restrict peer selection to a specific source | ✅ |  |  |  |
| [DOMaxCacheAge](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domaxcacheage) | Specify the maximum time in seconds that each file is held in the Delivery Optimization cache after downloading successfully. | ✅ |   |  |  |
| [DOMaxCacheSize](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domaxcachesize) | Specify the maximum cache size that Delivery Optimization can utilize, as a percentage of disk size (1-100). | ✅ |   |  |  |
| [DOMaxDownloadBandwidth](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domaxdownloadbandwidth) | Specify the maximum download bandwidth in kilobytes/second that the device can use across all concurrent download activities using Delivery Optimization. | ✅ |  |  |  |
| [DOMaxUploadBandwidth](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domaxuploadbandwidth) | Specify the maximum upload bandwidth in kilobytes/second that a device will use across all concurrent upload activity using Delivery Optimization.  | ✅ |  |  |  |
| [DOMinBackgroundQos](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dominbackgroundqos) | Specify the minimum download QoS (Quality of Service or speed) i kilobytes/second for background downloads. | ✅ |  |  |  |
| [DOMinBatteryPercentageAllowedToUpload](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dominbatterypercentageallowedtoupload) | Specify any value between 1 and 100 (in percentage) to allow the device to upload data to LAN and group peers while on battery power. | ✅ |  |  |  |
| [DOMinDiskSizeAllowedToPeer](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domindisksizeallowedtopeer) | Specify the required minimum disk size (capacity in GB) for the device to use Peer Caching. | ✅ |  |  |  |
| [DOMinFileSizeToCache](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dominfilesizetocache) | Specify the minimum content file size in MB enabled to use Peer Caching. | ✅ |  |  |  |
| [DOMinRAMAllowedToPeer](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dominramallowedtopeer) | Specify the minimum RAM size in GB required to use Peer Caching. | ✅ |  |  |  |
| [DOModifyCacheDrive](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domodifycachedrive) | Specify the drive that Delivery Optimization should use for its cache. | ✅ |  |  |  |
| [DOMonthlyUploadDataCap](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domonthlyuploaddatacap) | Specify the maximum total bytes in GB that Delivery Optimization is allowed to upload to Internet peers in each calendar month. | ✅ |   |  |  |
| [DOPercentageMaxBackDownloadBandwidth](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dopercentagemaxbackgroundbandwidth) | Specify the maximum background download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth. | ✅ |   |  |  |
| [DOPercentageMaxDownloadBandwidth](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dopercentagemaxdownloadbandwidth) | Specify the maximum download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth. | ✅ |  |  |  |
| [DOPercentageMaxForeDownloadBandwidth](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dopercentagemaxforegroundbandwidth) | Specify the maximum foreground download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth. | ✅ |  |  |  |
| [DORestrictPeerSelectionBy](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dorestrictpeerselectionby) | Set this policy to restrict peer selection by the selected option. | ✅ |  |  |  |
| [DOSetHoursToLimitBackgroundDownloadBandwidth](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dosethourstolimitbackgrounddownloadbandwidth) | Specify the maximum background download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.  | ✅ |  |  |  |
| [DOSetHoursToLimitForegroundDownloadBandwidth](/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dosethourstolimitforegrounddownloadbandwidth) | Specify the maximum foreground download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth. | ✅ |  |  |  |

## DeviceGuard

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: |  :---: | :---: | :---: |
[EnableVirtualizationBasedSecurity](/windows/client-management/mdm/policy-csp-deviceguard) | Turns on virtualization based security(VBS) at the next reboot. virtualization based security uses the Windows Hypervisor to provide support for security services.  | ✅ |  |  |  |

## DeviceLock

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [AllowIdleReturnWithoutPassword](/windows/client-management/mdm/policy-configuration-service-provider#devicelock-allowidlereturnwithoutpassword) | Specify whether the user must input a PIN or password when the device resumes from an idle state. |  |   |  |  |
| [AllowScreenTimeoutWhileLockedUserConfig](/windows/client-management/mdm/policy-configuration-service-provider#devicelock-allowscreentimeoutwhilelockeduserconfig) | Specify whether to show a user-configurable setting to control the screen timeout while on the lock screen. |  |   |  |  |
| [AllowSimpleDevicePassword](/windows/client-management/mdm/policy-configuration-service-provider#devicelock-allowsimpledevicepassword) | Specify whether PINs or passwords such as "1111" or "1234" are allowed. For the desktop, it also controls the use of picture passwords. | ✅ |  | ✅ |  |
|[AlphanumericDevicePasswordRequired](/windows/client-management/mdm/policy-configuration-service-provider#devicelock-alphanumericdevicepasswordrequired)  | Select the type of PIN or password required.  | ✅ |   | ✅ |  |
| [DevicePasswordEnabled](/windows/client-management/mdm/policy-configuration-service-provider#devicelock-devicepasswordenabled) | Specify whether device password is enabled. | ✅ |   | ✅ |  |
| [DevicePasswordExpiration](/windows/client-management/mdm/policy-configuration-service-provider#devicelock-devicepasswordexpiration) | Specify when the password expires (in days). | ✅ |   | ✅ |  |
| [DevicePasswordHistory](/windows/client-management/mdm/policy-configuration-service-provider#devicelock-devicepasswordhistory) | Specify how many passwords can be stored in the history that can't be reused. | ✅ |   | ✅ |  |
| [MaxDevicePasswordFailedAttempts](/windows/client-management/mdm/policy-configuration-service-provider#devicelock-maxdevicepasswordfailedattempts) | Specify the number of authentication failures allowed before the device will be wiped. | ✅ |   | ✅ |  |
| [MaxInactivityTimeDeviceLock](/windows/client-management/mdm/policy-configuration-service-provider#devicelock-maxinactivitytimedevicelock) |Specify the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked.  | ✅ |   | ✅ |  |
| [MinDevicePasswordComplexCharacters](/windows/client-management/mdm/policy-configuration-service-provider#devicelock-mindevicepasswordcomplexcharacters) | Specify the number of complex element types (uppercase and lowercase letters, numbers, and punctuation) required for a strong PIN or password. | ✅ |   | ✅ |  |
| [MinDevicePasswordLength](/windows/client-management/mdm/policy-configuration-service-provider#devicelock-mindevicepasswordlength) | Specify the minimum number or characters required in the PIN or password. | ✅ |   | ✅ |  |
| [ScreenTimeoutWhileLocked](/windows/client-management/mdm/policy-configuration-service-provider#devicelock-screentimeoutwhilelocked) | Specify the duration in seconds for the screen timeout while on the lock screen. |  |   |  |  |

## DeviceManagement

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: |  :---: | :---: | :---: |
| DisableMDMEnrollment | Use this setting to prevent the device from enrolling in MDM. | ✅ |   |  |  |

## Experience

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [AllowCopyPaste](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowcopypaste) | Specify whether copy and paste are allowed. |  |  |  |  |
| [AllowCortana](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowcortana) | Specify whether Cortana is allowed on the device. | ✅ |   | ✅ |  |
| [AllowDeviceDiscovery](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowdevicediscovery) | Allow users to turn device discovery on or off in the UI.  | ✅ |   |  |  |
| [AllowFindMyDevice](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowfindmydevice) | Turn on **Find my device** feature. | ✅ |   |  |  |
| [AllowManualMDMUnenrollment](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowmanualmdmunenrollment) | Specify whether the user is allowed to delete the workplace account.  | ✅ |   | ✅ |  |
| [AllowScreenCapture](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowscreencapture) | Specify whether screen capture is allowed. |  |   |  |  |
| [AllowSIMErrorDialogPromptWhenNoSIM](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowsimerrordialogpromptwhennosim) | Specify whether to display a dialog prompt when no SIM card is detected. |  |   |  |  |
| [AllowSyncMySettings](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowsyncmysettings) | Allow or disallow all Windows sync settings on the device. | ✅ |   |  |  |
| [AllowTailoredExperiencesWithDiagnosticData](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowtailoredexperienceswithdiagnosticdata) | Prevent Windows from using diagnostic data to provide customized experiences to the user. | ✅ |  |  |  |
| [AllowTaskSwitcher](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowtaskswitcher) | Allow or disallow task switching on the device. |  |   |  |  |
| [AllowThirdPartySuggestionsInWindowsSpotlight](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowthirdpartysuggestionsinwindowsspotlight) | Specify whether to allow app and content suggestions from third-party software publishers in Windows Spotlight. | ✅ |  |  |  |
| [AllowVoiceRecording](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowvoicerecording) | Specify whether voice recording is allowed for apps. |  |   |  |  |
| [AllowWindowsConsumerFeatures](/windows/client-management/mdm/policy-csp-experience#experience-allowwindowsconsumerfeatures) | Turn on experiences that are typically for consumers only, such as Start suggestions, membership notifications, post-OOBE app install, and redirect tiles. | ✅ |  |  |  |
| [AllowWindowsSpotlight](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowwindowsspotlight) |Specify whether to turn off all Windows Spotlight features at once.  | ✅ |  |  |  |
| [AllowWindowsSpotlightOnActionCenter](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowwindowsspotlightonactioncenter) | Prevent Windows Spotlight notifications from being displayed in the Action Center. | ✅ | |  |  |
| [AllowWindowsSpotlightWindowsWelcomeExperience](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowwindowsspotlightwindowswelcomeexperience) | Turn off the Windows Spotlight Windows welcome experience feature. | ✅ |  |  |  |
| [AllowWindowsTips](/windows/client-management/mdm/policy-configuration-service-provider#experience-allowwindowstips) | Enable or disable Windows Tips. | ✅ |  |  |  |
| [ConfigureWindowsSpotlightOnLockScreen](/windows/client-management/mdm/policy-configuration-service-provider#experience-configurewindowsspotlightonlockscreen) | Specify whether Spotlight should be used on the user's lock screen. | ✅ |  |  |  |

## ExploitGuard

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [ExploitProtectionSettings](/windows/client-management/mdm/policy-csp-exploitguard) | See the [explanation of ExploitProtectionSettings](/windows/client-management/mdm/policy-csp-exploitguard) in the Policy CSP for instructions. In the **ExploitProtectionSettings** field, you can enter a path (local, UNC, or URI) to the mitigation options config, or you can enter the XML for the config. | ✅ |   |  |  |

## Games

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: |  :---: | :---: | :---: |
| [AllowAdvancedGamingServices](/windows/client-management/mdm/policy-configuration-service-provider#games-allowadvancedgamingservices) | Currently not supported. | ✅ |  |  |  |

## KioskBrowser

These settings apply to the **Kiosk Browser** app available in Microsoft Store.

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
|[BlockedUrlExceptions](/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-blockedurlexceptions) | List of exceptions to the blocked website URLs (with wildcard support). This setting is used to configure URLs kiosk browsers are allowed to navigate to, which are a subset of the blocked URLs. | ✅ |  |  |  |
|[BlockedUrls](/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-blockedurls) | List of blocked website URLs (with wildcard support). This setting is used to configure blocked URLs kiosk browsers can't navigate to. | ✅ |  |  |  |
|[DefaultURL](/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-defaulturl) | Configures the default URL kiosk browsers to navigate on launch and restart.  | ✅ |  |  |  |
|[EnableEndSessionButton](/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-enableendsessionbutton) | Enable/disable kiosk browser's end session button.  | ✅ |  |  |  |
|[EnableHomeButton](/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-enablehomebutton) | Enable/disable kiosk browser's home button.  | ✅ |  |  |  |
|[EnableNavigationButtons](/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-enablenavigationbuttons) | Enable/disable kiosk browser's navigation buttons (forward/back). | ✅ |  |  |  |
|[RestartOnIdleTime](/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-restartonidletime) | Amount of time in minutes the session is idle until the kiosk browser restarts in a fresh state.  The value is an int 1-1440 that specifies the number of minutes the session is idle until the kiosk browser restarts in a fresh state. The default value is empty, which means there's no idle timeout within the kiosk browser. | ✅ |  |  |  |

To configure multiple URLs for **Blocked URL Exceptions** or **Blocked URLs** in Windows Configuration Designer:

1. Create the provisioning package. When ready to export, close the project in Windows Configuration Designer.
1. Open the customizations.xml file in the project folder (e.g C:\Users\name\Documents\Windows Imaging and Configuration Designer (WICD)\Project_18).
1. Insert the null character string in between each URL (e.g https://www.bing.com&#xF000;www.contoso.com).
1. Save the XML file.
1. Open the project again in Windows Configuration Designer.
1. Export the package. Ensure you don't revisit the created policies under Kiosk Browser or else the null character will be removed.

## LocalPoliciesSecurityOptions

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [InteractiveLogon_DoNotDisplayLastSignedIn](/windows/client-management/mdm/policy-csp-localpoliciessecurityoptions#localpoliciessecurityoptions-interactivelogon-donotdisplaylastsignedin) | Specify whether the Windows sign-in screen will show the username of the last person who signed in. | ✅ |  |  |  |
| [Shutdown_AllowSystemtobeShutDownWithoutHavingToLogOn](/windows/client-management/mdm/policy-csp-localpoliciessecurityoptions#localpoliciessecurityoptions-shutdown-allowsystemtobeshutdownwithouthavingtologon) | Specify whether a computer can be shut down without signing in. | ✅ |   |  |  |
| [UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers](/windows/client-management/mdm/policy-csp-localpoliciessecurityoptions#localpoliciessecurityoptions-useraccountcontrol-behavioroftheelevationpromptforstandardusers) | Configure how an elevation prompt should behave for standard users. | ✅ |  |  |  |

## Location

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: |  :---: | :---: | :---: |
| [EnableLocation](/windows/client-management/mdm/policy-configuration-service-provider#location-enablelocation) | Don't use. |  |  |  |  |

## Power

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [AllowStandbyStatesWhenSleepingOnBattery](/windows/client-management/mdm/policy-csp-power#allowstandbystateswhensleepingonbattery) | Specify whether Windows can use standby states when putting the computer in a sleep state while on battery. | ✅ |  |  |  |
| [AllowStandbyWhenSleepingPluggedIn](/windows/client-management/mdm/policy-csp-power#allowstandbystateswhensleepingpluggedin) | Specify whether Windows can use standby states when putting the computer in a sleep state while plugged in. | ✅ |  |  |  |
| [DisplayOffTimeoutOnBattery](/windows/client-management/mdm/policy-csp-power#displayofftimeoutonbattery) | Specify the period of inactivity before Windows turns off the display while on battery. | ✅ |  |  |  |
| [DisplayOffTimeoutPluggedIn](/windows/client-management/mdm/policy-csp-power#displayofftimeoutpluggedin) | Specify the period of inactivity before Windows turns off the display while plugged in. | ✅ |  |  |  |
| [EnergySaverBatteryThresholdOnBattery](/windows/client-management/mdm/policy-csp-power#energysaverbatterythresholdonbattery) | Specify the battery charge level at which Energy Saver is turned on while on battery.  | ✅ |  |  |  |
| [EnergySaverBatteryThresholdPluggedIn](/windows/client-management/mdm/policy-csp-power#EnergySaverBatteryThresholdPluggedIn) | Specify the battery charge level at which Energy Saver is turned on while plugged in. | ✅ |  |  |  |
| [HibernateTimeoutOnBattery](/windows/client-management/mdm/policy-csp-power#hibernatetimeoutonbattery) | Specify the period of inactivity before Windows transitions the system to hibernate while on battery. | ✅ |  |  |  |
| [HibernateTimeoutPluggedIn](/windows/client-management/mdm/policy-csp-power#hibernatetimeoutpluggedin) | Specify the period of inactivity before Windows transitions the system to hibernate while plugged in.   | ✅ |  |  |  |
| [RequirePasswordWhenComputerWakesOnBattery](/windows/client-management/mdm/policy-csp-power#requirepasswordwhencomputerwakesonbattery) | Specify whether the user is prompted for a password when the system resumes from sleep while on battery. | ✅ |  |  |  |
| [RequirePasswordWhenComputerWakesPluggedIn](/windows/client-management/mdm/policy-csp-power#requirepasswordwhencomputerwakespluggedin) | Specify whether the user is prompted for a password when the system resumes from sleep while plugged in. | ✅ |  |  |  |
| [SelectLidCloseActionBattery](/windows/client-management/mdm/policy-csp-power#selectlidcloseactionpluggedin) | Select the action to be taken when a user closes the lid on a mobile device while on battery. | ✅ |  |  |  |
| [SelectLidCloseActionPluggedIn](/windows/client-management/mdm/policy-csp-power#selectlidcloseactionpluggedin) | Select the action to be taken when a user closes the lid on a mobile device while on plugged in. | ✅ |  |  |  |
| [SelectPowerButtonActionOnBattery](/windows/client-management/mdm/policy-csp-power#selectpowerbuttonactiononbattery) | Select the action to be taken when the user presses the power button while on battery.  | ✅ |  |  |  |
| [SelectPowerButtonActionPluggedIn](/windows/client-management/mdm/policy-csp-power#selectpowerbuttonactionpluggedin) | Select the action to be taken when the user presses the power button while on plugged in. | ✅ |  |  |  |
| [SelectSleepButtonActionOnBattery](/windows/client-management/mdm/policy-csp-power#selectsleepbuttonactiononbattery) | Select the action to be taken when the user presses the sleep button while on battery. | ✅ |   |  |  |
| [SelectSleepButtonActionPluggedIn](/windows/client-management/mdm/policy-csp-power#selectsleepbuttonactionpluggedin) | Select the action to be taken when the user presses the sleep button while plugged in. | ✅ |  |  |  |
| [StandbyTimeoutOnBattery](/windows/client-management/mdm/policy-csp-power#StandbyTimeoutOnBattery) | Specify the period of inactivity before Windows transitions the system to sleep while on battery. | ✅ |  |  |  |
| [StandbyTimeoutPluggedIn](/windows/client-management/mdm/policy-csp-power#standbytimeoutpluggedin) | Specify the period of inactivity before Windows transitions the system to sleep while plugged in. | ✅ |   |  |  |
| [TurnOffHybridSleepOnBattery](/windows/client-management/mdm/policy-csp-power#turnoffhybridsleeponbattery) | Turn off hybrid sleep while on battery. | ✅ |   |  |  |
| [TurnOffHybridSleepPluggedIn](/windows/client-management/mdm/policy-csp-power#turnoffhybridsleeppluggedin) | Turn off hybrid sleep while plugged in. | ✅ |  |  |  |
| [UnattendedSleepTimeoutOnBattery](/windows/client-management/mdm/policy-csp-power#unattendedsleeptimeoutonbattery) | Specify the period of inactivity before Windows transitions the system to sleep automatically when a user isn't present while on battery. | ✅ |  |  |  |
| [UnattendedSleepTimeoutPluggedIn](/windows/client-management/mdm/policy-csp-power#unattendedsleeptimeoutpluggedin) | Specify the period of inactivity before Windows transitions the system to sleep automatically when a user isn't present while plugged in.  | ✅ |  |  |  |

## Privacy

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [AllowAutoAcceptPairingAndPrivacyConsentPrompts](/windows/client-management/mdm/policy-configuration-service-provider#privacy-allowautoacceptpairingandprivacyconsentprompts) | Allow or disallow the automatic acceptance of the pairing and privacy user consent dialog boxes when launching apps. |  |   |  |  |
| [AllowInputPersonalization](/windows/client-management/mdm/policy-configuration-service-provider#privacy-allowinputpersonalization) | Allow the use of cloud-based speech services for Cortana, dictation, or Store apps. | ✅ |   | ✅ |  |

## Search

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
|--|--|:-:|:-:|:-:|:-:|
| [AllowCloudSearch](/windows/client-management/mdm/policy-csp-search#search-allowcloudsearch) | Allow search and Cortana to search cloud sources like OneDrive and SharePoint. T | ✅ |  |  |  |
| [AllowCortanaInAAD](/windows/client-management/mdm/policy-csp-search#search-allowcortanainaad) | This setting specifies whether the Cortana consent page can appear in the Azure Active Directory (AAD) device out-of-box-experience (OOBE) flow. | ✅ |  |  |  |
| [AllowIndexingEncryptedStoresOrItems](/windows/client-management/mdm/policy-configuration-service-provider#search-allowindexingencryptedstoresoritems) | Allow or disallow the indexing of items. | ✅ |  |  |  |
| [AllowSearchToUseLocation](/windows/client-management/mdm/policy-configuration-service-provider#search-allowsearchtouselocation) | Specify whether search can use location information. | ✅ |  | ✅ |  |
| [AllowUsingDiacritics](/windows/client-management/mdm/policy-configuration-service-provider#search-allowusingdiacritics) | Allow the use of diacritics. | ✅ |  |  |  |
| [AllowWindowsIndexer](/windows/client-management/mdm/policy-csp-search#search-allowwindowsindexer) | The indexer provides fast file, email, and web history search for apps and system components including Cortana, Outlook, file explorer, and Edge. To provide these features, it requires access to the file system and app data stores such as Outlook OST files.</br></br>- **Off** setting disables Windows indexer</br>- **EnterpriseSecure** setting stops the indexer from indexing encrypted files or stores, and is recommended for enterprises using Windows Information Protection (WIP)</br>- **Enterprise** setting reduces potential network loads for enterprises</br>- **Standard** setting is appropriate for consumers | ✅ |  |  |  |
| [AlwaysUseAutoLangDetection](/windows/client-management/mdm/policy-configuration-service-provider#search-alwaysuseautolangdetection) | Specify whether to always use automatic language detection when indexing content and properties. | ✅ |  |  |  |
| [DoNotUseWebResults](/windows/client-management/mdm/policy-configuration-service-provider#search-donotusewebresults) | Specify whether to allow Search to perform queries on the web. | ✅ |  |  |  |
| [DisableBackoff](/windows/client-management/mdm/policy-configuration-service-provider#search-disablebackoff) | If enabled, the search indexer backoff feature will be disabled. | ✅ |  |  |  |
| [DisableRemovableDriveIndexing](/windows/client-management/mdm/policy-configuration-service-provider#search-disableremovabledriveindexing) | Configure whether locations on removable drives can be added to libraries. | ✅ |  |  |  |
| [PreventIndexingLowDiskSpaceMB](/windows/client-management/mdm/policy-configuration-service-provider#search-preventindexinglowdiskspacemb) | Prevent indexing from continuing after less than the specified amount of hard drive space is left on the same drive as the index location. | ✅ |  |  |  |
| [PreventRemoteQueries](/windows/client-management/mdm/policy-configuration-service-provider#search-preventremotequeries) | If enabled, clients will be unable to query this device's index remotely. | ✅ |  |  |  |
| [SafeSearchPermissions](/windows/client-management/mdm/policy-configuration-service-provider#search-safesearchpermissions) | Specify the level of safe search (filtering adult content) required. |  |  |  |  |

## Security

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [AllowAddProvisioningPackage](/windows/client-management/mdm/policy-configuration-service-provider#security-allowaddprovisioningpackage) | Specify whether to allow installation of provisioning packages. | ✅ |  ✅ |  | ✅ |
| [AllowManualRootCertificateInstallation](/windows/client-management/mdm/policy-configuration-service-provider#security-allowmanualrootcertificateinstallation) | Specify whether the user is allowed to manually install root and intermediate CA certificates. |  |   |  |  |
| [AllowRemoveProvisioningPackage](/windows/client-management/mdm/policy-configuration-service-provider#security-allowremoveprovisioningpackage) | Specify whether removal of provisioning packages is allowed. | ✅ |  ✅ |  | ✅ |
| [AntiTheftMode](/windows/client-management/mdm/policy-configuration-service-provider#security-antitheftmode) | Allow or disallow Anti Theft Mode on the device. |  |   |  |  |
| [RequireDeviceEncryption](/windows/client-management/mdm/policy-configuration-service-provider#security-requiredeviceencryption) | Specify whether encryption is required. | ✅ |  ✅ | ✅ | ✅ |
| [RequireProvisioningPackageSignature](/windows/client-management/mdm/policy-configuration-service-provider#security-requireprovisioningpackagesignature) | Specify whether provisioning packages must have a certificate signed by a device-trusted authority. | ✅ |  ✅ |  | ✅ |
| [RequireRetrieveHealthCertificateOnBoot](/windows/client-management/mdm/policy-configuration-service-provider#security-requireretrievehealthcertificateonboot) | Specify whether to retrieve and post TCG Boot logs, and get or cache an encrypted or signed Health Attestation Report from the Microsoft Health Attestation Service when a device boots or reboots. | ✅ |   |  |  |

## Settings

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: |  :---: | :---: | :---: |
| [AllowAutoPlay](/windows/client-management/mdm/policy-configuration-service-provider#settings-allowautoplay) | Allow the user to change AutoPlay settings. |  |   |  |  |
| [AllowDataSense](/windows/client-management/mdm/policy-configuration-service-provider#settings-allowdatasense) | Allow the user to change Data Sense settings. |  |   |  |  |
| [AllowVPN](/windows/client-management/mdm/policy-configuration-service-provider#settings-allowvpn) | Allow the user to change VPN settings. |  |   | ✅ |  |
| [ConfigureTaskbarCalendar](/windows/client-management/mdm/policy-configuration-service-provider#settings-configuretaskbarcalendar) | Configure the default setting for showing other calendars (besides the default calendar for the locale) in the taskbar clock and calendar flyout. | ✅ |   |  |  |
[PageVisiblityList](/windows/client-management/mdm/policy-csp-settings#settings-pagevisibilitylist) | Allows IT admins to prevent specific pages in the System Settings app from being visible or accessible. Pages are identified by a shortened version of their already [published URIs](/windows/uwp/launch-resume/launch-settings-app#ms-settings-uri-scheme-reference), which is the URI minus the "ms-settings:" prefix. For example, if the URI for a settings page is "ms-settings:foo", the page identifier used in the policy will be just "foo". Multiple page identifiers are separated by semicolons.  | ✅ |   |  |  |

## Start

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: |  :---: | :---: | :---: |
| [AllowPinnedFolderDocuments](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderdocuments) | Control the visibility of the Documents shortcut on the Start menu. | ✅ |  |  |  |
| [AllowPinnedFolderDownloads](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderdownloads) | Control the visibility of the Downloads shortcut on the Start menu.  | ✅ |  |  |  |
| [AllowPinnedFolderFileExplorer](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderfileexplorer) | Control the visibility of the File Explorer shortcut on the Start menu.  | ✅ |   |  |  |
| [AllowPinnedFolderHomeGroup](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderhomegroup) | Control the visibility of the Home Group shortcut on the Start menu.  | ✅ |  |  |  |
| [AllowPinnedFolderMusic](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldermusic) | Control the visibility of the Music shortcut on the Start menu.  | ✅ |  |  |  |
| [AllowPinnedFolderNetwork](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldernetwork) | Control the visibility of the Network shortcut on the Start menu.  | ✅ |  |  |  |
| [AllowPinnedFolderPersonalFolder](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderpersonalfolder) | Control the visibility of the Personal Folder shortcut on the Start menu.  | ✅ |  |  |  |
| [AllowPinnedFolderPictures](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderpictures) | Control the visibility of the Pictures shortcut on the Start menu.  | ✅ |  |  |  |
| [AllowPinnedFolderSettings](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldersettings) | Control the visibility of the Settings shortcut on the Start menu.  | ✅ |  |  |  |
| [AllowPinnedFolderVideos](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldervideos)  |Control the visibility of the Videos shortcut on the Start menu.   | ✅ |  |  |  |
| DisableContextMenus | Prevent context menus from being invoked in the Start menu.  | ✅ |  |  |  |
| [ForceStartSize](/windows/client-management/mdm/policy-configuration-service-provider#start-forcestartsize) | Force the size of the Start screen. | ✅ |  |  |  |
| [HideAppList](/windows/client-management/mdm/policy-configuration-service-provider#start-hideapplist) | Collapse or remove the all apps list. | ✅ |   |  |  |
| [HideChangeAccountSettings](/windows/client-management/mdm/policy-configuration-service-provider#start-hidechangeaccountsettings) | Hide **Change account settings** from appearing in the user tile. | ✅ |   |  |  |
| [HideFrequentlyUsedApps](/windows/client-management/mdm/policy-configuration-service-provider#start-hidefrequentlyusedapps) | Hide **Most used** section of Start.  | ✅ |  |  |  |
| [HideHibernate](/windows/client-management/mdm/policy-configuration-service-provider#start-hidehibernate) | Prevent **Hibernate** option from appearing in the Power button. | ✅ |  |  |  |
| [HideLock](/windows/client-management/mdm/policy-configuration-service-provider#start-hidelock) | Prevent **Lock** from appearing in the user tile. | ✅ |  |  |  |
| HidePeopleBar | Remove the people icon from the taskbar, and the corresponding settings toggle. It also prevents users from pinning people to the taskbar. | ✅ |  |  |  |
| [HidePowerButton](/windows/client-management/mdm/policy-configuration-service-provider#start-hidepowerbutton) | Hide the **Power** button. | ✅ |  |  |  |
| [HideRecentJumplists](/windows/client-management/mdm/policy-configuration-service-provider#start-hiderecentjumplists) | Hide jumplists of recently opened items. | ✅ |  |  |  |
| [HideRecentlyAddedApps](/windows/client-management/mdm/policy-configuration-service-provider#start-hiderecentlyaddedapps) | Hide **Recently added** section of Start. | ✅ |  |  |  |
| [HideRestart](/windows/client-management/mdm/policy-configuration-service-provider#start-hiderestart) | Prevent **Restart** and **Update and restart** from appearing in the Power button. | ✅ |   |  |  |
| [HideShutDown](/windows/client-management/mdm/policy-configuration-service-provider#start-hideshutdown) | Prevent **Shut down** and **Update and shut down** from appearing in the Power button.  | ✅ |  |  |  |
| [HideSignOut](/windows/client-management/mdm/policy-configuration-service-provider#start-hidesignout) | Prevent **Sign out** from appearing in the user tile. | ✅ |  |  |  |
| [HideSleep](/windows/client-management/mdm/policy-configuration-service-provider#start-hidesleep) | Prevent **Sleep** from appearing in the Power button. | ✅ |  |  |  |
| [HideSwitchAccount](/windows/client-management/mdm/policy-configuration-service-provider#start-hideswitchaccount) | Prevent **Switch account** from appearing in the user tile. | ✅ |  |  |  |
| [HideUserTile](/windows/client-management/mdm/policy-configuration-service-provider#start-hideusertile)  |  Hide the user tile. | ✅ |  |   |  |
| [ImportEdgeAssets](/windows/client-management/mdm/policy-configuration-service-provider#start-importedgeassets) | Import Edge assets for secondary tiles. For more information, see [Add image for secondary Microsoft Edge tiles](../start-secondary-tiles.md).  | ✅ |  |  |  |
| [NoPinningToTaskbar](/windows/client-management/mdm/policy-configuration-service-provider#start-nopinningtotaskbar) | Prevent users from pinning and unpinning apps on the taskbar. | ✅ |  |  |  |
| [StartLayout](/windows/client-management/mdm/policy-configuration-service-provider#start-startlayout) | Apply a custom Start layout. For more information, see [Customize Windows 10 Start and taskbar with provisioning packages](../customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md) | ✅ |  |  |  |

## System

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [AllowBuildPreview](/windows/client-management/mdm/policy-configuration-service-provider#system-allowbuildpreview) | Specify whether users can access the Insider build controls in the **Advanced Options** for Windows Update. | ✅ |  |  |  |
| [AllowEmbeddedMode](/windows/client-management/mdm/policy-configuration-service-provider#system-allowembeddedmode) | Specify whether to set general purpose device to be in embedded mode. | ✅ |  ✅ |  | ✅ |
| [AllowExperimentation](/windows/client-management/mdm/policy-configuration-service-provider#system-allowexperimentation) | Determine the level that Microsoft can experiment with the product to study user preferences or device behavior. | ✅ |  |  | |
| [AllowLocation](/windows/client-management/mdm/policy-configuration-service-provider#system-allowlocation) | Specify whether to allow app access to the Location service. | ✅ |   ✅ | ✅ |  ✅ |
| [AllowStorageCard](/windows/client-management/mdm/policy-configuration-service-provider#system-allowstoragecard) | Specify whether the user is allowed to use the storage card for device storage. | ✅ |  ✅ |  | ✅ |
| [AllowTelemetry](/windows/client-management/mdm/policy-configuration-service-provider#system-allowtelemetry) | Allow the device to send diagnostic and usage data. | ✅ | | ✅ |  |
| [AllowUserToResetPhone](/windows/client-management/mdm/policy-configuration-service-provider#system-allowusertoresetphone) | Allow the user to factory reset the phone. | ✅ |  | |  |
ConfigureTelemetryOptInChangeNotification | This policy setting determines whether a device shows notifications about telemetry levels to people on first sign-in or when changes occur in Settings.  | ✅ |  |  |  |
ConfigureTelemetryOptInSettingsUx | This policy setting determines whether people can change their own telemetry levels in Settings  | ✅ |  |  |  |
| DisableDeviceDelete | Specify whether the delete diagnostic data is enabled in the Diagnostic & Feedback Settings page. | ✅ |  |  |  |
| DisableDataDiagnosticViewer | Configure whether users can enable and launch the Diagnostic Data Viewer from the Diagnostic & Feedback Settings page. | ✅ |  |  |  |
| [DisableOneDriveFileSync](/windows/client-management/mdm/policy-configuration-service-provider#system-disableonedrivefilesync) | Prevent apps and features from working with files on OneDrive. | ✅ | |  |  |
| [LimitEnhancedDiagnosticDataWindowsAnalytics](/windows/client-management/mdm/policy-csp-system#limitenhanceddiagnosticdatawindowsanalytics) | This policy setting, in combination with the System/AllowTelemetry policy setting, enables organizations to send Microsoft a specific set of diagnostic data for IT insights via Windows Analytics services. To enable this behavior you must enable this policy setting, and set Allow Telemetry to level 2 (Enhanced). When you configure these policy settings, a basic level of diagnostic data plus other events that are required for Windows Analytics are sent to Microsoft. Enabling enhanced diagnostic data in the System/AllowTelemetry policy in combination with not configuring this policy will also send the required events for Windows Analytics, plus other enhanced level diagnostic data. This setting has no effect on computers configured to send full, basic or security level diagnostic data to Microsoft. If you disable or don't configure this policy setting, then the level of diagnostic data sent to Microsoft is determined by the System/AllowTelemetry policy.  | ✅ |  |  |  |

## TextInput

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: |  :---: | :---: | :---: |
| [AllowIMELogging](/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowimelogging) | Allow the user to turn on and off the logging for incorrect conversion and saving auto-tuning result to a file and history-based predictive input. | ✅ |  |  |  |
| [AllowIMENetworkAccess](/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowimenetworkaccess) | Allow the user to turn on Open Extended Dictionary, Internet search integration, or cloud candidate features to provide input suggestions that don't exist in the device's local dictionary. | ✅ |  |  |  |
| [AllowInputPanel](/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowinputpanel) | Disable the touch/handwriting keyboard. | ✅ |  |  |  |
| [AllowJapaneseIMESurrogatePairCharacters](/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowjapaneseimesurrogatepaircharacters) | Allow the Japanese IME surrogate pair characters. | ✅ |  |  |  |
| [AllowJapaneseIVSCharacters](/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowjapaneseivscharacters) | Allow Japanese Ideographic Variation Sequence (IVS) characters. | ✅ |  |  |  |
| [AllJapaneseNonPublishingStandardGlyph](/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowjapanesenonpublishingstandardglyph) | All the Japanese non-publishing standard glyph. | ✅ |   |  |  |
| [AllowJapaneseUserDictionary](/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowjapaneseuserdictionary) | Allow the Japanese user dictionary. | ✅ |  |  |  |
| [AllowKeyboardTextSuggestions](/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowkeyboardtextsuggestions) | Specify whether text prediction is enabled or disabled for the on-screen keyboard, touch keyboard, and handwriting recognition tool. | ✅ |  |  |  |
| [AllowLanguageFeaturesUninstall](/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowlanguagefeaturesuninstall) | All language features to be uninstalled. | ✅ |  |  |  |
| AllowUserInputsFromMiracastRecevier | Don't use. Instead, use [WirelessDisplay](#wirelessdisplay)/[AllowUserInputFromWirelessDisplayReceiver](/windows/client-management/mdm/policy-configuration-service-provider#wirelessdisplay-allowuserinputfromwirelessdisplayreceiver)  |  |  |  |  |
| [ExcludeJapaneseIMEExceptISO208](/windows/client-management/mdm/policy-configuration-service-provider#textinput-excludejapaneseimeexceptjis0208) | Allow users to restrict character code range of conversion by setting the character filter.  | ✅ |  |  |  |
| [ExcludeJapaneseIMEExceptISO208andEUDC](/windows/client-management/mdm/policy-configuration-service-provider#textinput-excludejapaneseimeexceptjis0208andeudc) | Allow users to restrict character code range of conversion by setting the character filter.  | ✅ |  |  |  |
| [ExcludeJapaneseIMEExceptShiftJIS](/windows/client-management/mdm/policy-configuration-service-provider#textinput-excludejapaneseimeexceptshiftjis) | Allow users to restrict character code range of conversion by setting the character filter. | ✅ |  |  |  |

## TimeLanguageSettings

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [AllowSet24HourClock](/windows/client-management/mdm/policy-configuration-service-provider#timelanguagesettings-allowset24hourclock) | Configure the default clock setting to be the 24 hour format. |  |  |  |  |

## Update

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
|---------|-------------|:--------------:|:-----------:|:--------:|:--------:|
| [ActiveHoursEnd](/windows/client-management/mdm/policy-configuration-service-provider#update-activehoursend) | Use with **Update/ActiveHoursStart** to manage the range of active hours where update reboots aren't scheduled. | ✅ | ✅ | | ✅ |
| [ActiveHoursMaxRange](/windows/client-management/mdm/policy-configuration-service-provider#update-activehoursmaxrange) | Specify the maximum active hours range. | ✅ | ✅ | | ✅ |
| [ActiveHoursStart](/windows/client-management/mdm/policy-configuration-service-provider#update-activehoursstart) | Use with **Update/ActiveHoursEnd** to manage the range of active hours where update reboots aren't scheduled. | ✅ | ✅ | | ✅ |
| [AllowAutoUpdate](/windows/client-management/mdm/policy-configuration-service-provider#update-allowautoupdate) | Configure automatic update behavior to scan, download, and install updates. | ✅ | ✅ | ✅ | ✅ |
| [AllowAutoWindowsUpdateDownloadOverMeteredNetwork](/windows/client-management/mdm/policy-csp-update#update-allowautowindowsupdatedownloadovermeterednetwork) | Option to download updates automatically over metered connections (off by default). Enter `0` for not allowed, or `1` for allowed. | ✅ | ✅ | | ✅ |
| [AllowMUUpdateService](/windows/client-management/mdm/policy-configuration-service-provider#update-allowmuupdateservice) | Manage whether to scan for app updates from Microsoft Update. | ✅ | ✅ | ✅ | ✅ |
| [AllowNonMicrosoftSignedUpdate](/windows/client-management/mdm/policy-configuration-service-provider#update-allownonmicrosoftsignedupdate) | Manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found at the UpdateServiceUrl location. | ✅ | ✅ | | ✅ |
| [AllowUpdateService](/windows/client-management/mdm/policy-configuration-service-provider#update-allowupdateservice) | Specify whether the device can use Microsoft Update, Windows Server Update Services (WSUS), or Microsoft Store. | ✅ | ✅ | ✅ | ✅ |
| [AutoRestartDeadlinePeriodInDays](/windows/client-management/mdm/policy-csp-update#update-autorestartdeadlineperiodindays) | Specify number of days (between 2 and 30) after which a forced restart will occur outside of active hours when restart is pending. | ✅ | ✅ | | ✅ |
| [AutoRestartDeadlinePeriodInDaysForFeatureUpdates](/windows/client-management/mdm/policy-csp-update#update-autorestartdeadlineperiodindaysforfeatureupdates) | Specify number of days (between 2 and 30) after which a forced restart will occur outside of active hours when restart is pending. | ✅ | ✅ | | ✅ |
| [AutoRestartNotificationSchedule](/windows/client-management/mdm/policy-configuration-service-provider#update-autorestartnotificationschedule) | Specify the period for auto-restart reminder notifications. | ✅ | ✅ | | ✅ |
| [AutoRestartRequiredNotificationDismissal](/windows/client-management/mdm/policy-configuration-service-provider#update-autorestartrequirednotificationdismissal) | Specify the method by which the auto-restart required notification is dismissed. | ✅ | ✅ | | ✅ |
| [BranchReadinessLevel](/windows/client-management/mdm/policy-configuration-service-provider#update-branchreadinesslevel) | Select which branch a device receives their updates from. | ✅ | ✅ | ✅ | ✅ |
| [DeferFeatureUpdatesPeriodInDays](/windows/client-management/mdm/policy-configuration-service-provider#update-deferfeatureupdatesperiodindays) | Defer Feature Updates for the specified number of days. | ✅ | ✅ | | ✅ |
| [DeferQualityUpdatesPeriodInDays](/windows/client-management/mdm/policy-configuration-service-provider#update-deferqualityupdatesperiodindays) | Defer Quality Updates for the specified number of days. | ✅ | ✅ | | ✅ |
| [DeferUpdatePeriod](/windows/client-management/mdm/policy-csp-update#update-deferupdateperiod) | Specify update delays for up to 4 weeks. | ✅ | ✅ | ✅ | ✅ |
| [DeferUpgradePeriod](/windows/client-management/mdm/policy-csp-update#update-deferupgradeperiod) | Specify upgrade delays for up to 8 months. | ✅ | ✅ | ✅ | ✅ |
| [DetectionFrequency](/windows/client-management/mdm/policy-configuration-service-provider#update-detectionfrequency) | Specify the frequency to scan for updates, from every 1-22 hours. | ✅ | ✅ | ✅ | ✅ |
| [DisableDualScan](/windows/client-management/mdm/policy-csp-update#update-disabledualscan) | Don't allow update deferral policies to cause scans against Windows Update. | ✅ | ✅ | | ✅ |
| [EngagedRestartDeadline](/windows/client-management/mdm/policy-configuration-service-provider#update-engagedrestartdeadline) | Specify the deadline in days before automatically scheduling and executing a pending restart outside of active hours. | ✅ | ✅ | | ✅ |
| [EngagedRestartDeadlineForFeatureUpdates](/windows/client-management/mdm/policy-configuration-service-provider#update-engagedrestartdeadlineforfeatureupdates) | Specify the deadline in days before automatically scheduling and executing a pending restart outside of active hours. | ✅ | ✅ | | ✅ |
| [EngagedRestartSnoozeSchedule](/windows/client-management/mdm/policy-configuration-service-provider#update-engagedrestartsnoozeschedule) | Specify the number of days a user can snooze Engaged restart reminder notifications. | ✅ | ✅ | | ✅ |
| [EngagedRestartSnoozeScheduleForFeatureUpdates](/windows/client-management/mdm/policy-configuration-service-provider#update-engagedrestartsnoozescheduleforfeatureupdates) | Specify the number of days a user can snooze Engaged restart reminder notifications. | ✅ | ✅ | | ✅ |
| [EngagedRestartTransitionSchedule](/windows/client-management/mdm/policy-configuration-service-provider#update-engagedrestarttransitionschedule) | Specify the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. | ✅ | ✅ | | ✅ |
| [EngagedRestartTransitionScheduleForFeatureUpdates](/windows/client-management/mdm/policy-configuration-service-provider#update-engagedrestarttransitionscheduleforfeatureupdates) | Specify the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. | ✅ | ✅ | | ✅ |
| [ExcludeWUDriversInQualityUpdate](/windows/client-management/mdm/policy-configuration-service-provider#update-excludewudriversinqualityupdate) | Exclude Windows Update (WU) drivers during quality updates. | ✅ | ✅ | | ✅ |
| [FillEmptyContentUrls](/windows/client-management/mdm/policy-configuration-service-provider#update-fillemptycontenturls) | Allow Windows Update Agent to determine the download URL when it's missing from the metadata. | ✅ | ✅ | | ✅ |
| ManagePreviewBuilds | Use to enable or disable preview builds. | ✅ | ✅ | ✅ | ✅ |
| PhoneUpdateRestrictions | Deprecated | | ✅ | | |
| [RequireDeferUpgrade](/windows/client-management/mdm/policy-configuration-service-provider#update-requiredeferupgrade) | Configure device to receive updates from Current Branch for Business (CBB). | ✅ | ✅ | ✅ | ✅ |
| [ScheduledInstallDay](/windows/client-management/mdm/policy-configuration-service-provider#update-scheduledinstallday) | Schedule the day for update installation. | ✅ | ✅ | ✅ | ✅ |
| [ScheduledInstallEveryWeek](/windows/client-management/mdm/policy-csp-update#update-scheduledinstalleveryweek) | To schedule update installation every week, set the value as `1`. | ✅ | ✅ | ✅ | ✅ |
| [ScheduledInstallFirstWeek](/windows/client-management/mdm/policy-csp-update#update-scheduledinstallfirstweek) | To schedule update installation the first week of the month, see the value as `1`. | ✅ | ✅ | ✅ | ✅ |
| [ScheduledInstallFourthWeek](/windows/client-management/mdm/policy-csp-update#update-scheduledinstallfourthweek) | To schedule update installation the fourth week of the month, see the value as `1`. | ✅ | ✅ | ✅ | ✅ |
| [ScheduledInstallSecondWeek](/windows/client-management/mdm/policy-csp-update#update-scheduledinstallsecondweek) | To schedule update installation the second week of the month, see the value as `1`. | ✅ | ✅ | ✅ | ✅ |
| [ScheduledInstallThirdWeek](/windows/client-management/mdm/policy-csp-update#update-scheduledinstallthirdweek) | To schedule update installation the third week of the month, see the value as `1`. | ✅ | ✅ | ✅ | ✅ |
| [ScheduledInstallTime](/windows/client-management/mdm/policy-configuration-service-provider#update-scheduledinstalltime) | Schedule the time for update installation. | ✅ | ✅ | ✅ | ✅ |
| [ScheduleImminentRestartWarning](/windows/client-management/mdm/policy-configuration-service-provider#update-scheduleimminentrestartwarning) | Specify the period for auto-restart imminent warning notifications. | ✅ | ✅ | | ✅ |
| [ScheduleRestartWarning](/windows/client-management/mdm/policy-configuration-service-provider#update-schedulerestartwarning) | Specify the period for auto-restart warning reminder notifications. | ✅ | ✅ | | ✅ |
| [SetAutoRestartNotificationDisable](/windows/client-management/mdm/policy-configuration-service-provider#update-setautorestartnotificationdisable) | Disable auto-restart notifications for update installations. | ✅ | ✅ | | ✅ |
| [SetDisablePauseUXAccess](/windows/client-management/mdm/policy-configuration-service-provider#update-setdisablepauseuxaccess) | Disable access to scan Windows Update. | ✅ | ✅ | | ✅ |
| [SetDisableUXWUAccess](/windows/client-management/mdm/policy-configuration-service-provider#update-setdisableuxwuaccess) | Disable the **Pause updates** feature. | ✅ | ✅ | | ✅ |
| [SetEDURestart](/windows/client-management/mdm/policy-configuration-service-provider#update-setedurestart) | Skip the check for battery level to ensure that the reboot will happen at ScheduledInstallTime. | ✅ | ✅ | | ✅ |
| UpdateNotificationLevel | Specify whether to enable or disable Windows Update notifications, including restart warnings. | ✅ | ✅ | | ✅ |
| [UpdateServiceUrl](/windows/client-management/mdm/policy-configuration-service-provider#update-updateserviceurl) | Configure the device to check for updates from a WSUS server instead of Microsoft Update. | ✅ | ✅ | ✅ | ✅ |
| [UpdateServiceUrlAlternate](/windows/client-management/mdm/policy-configuration-service-provider#update-updateserviceurlalternate) | Specify an alternate intranet server to host updates from Microsoft Update. | ✅ | ✅ | ✅ | ✅ |

## WiFi

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [AllowAutoConnectToWiFiSenseHotspots](/windows/client-management/mdm/policy-configuration-service-provider#wifi-allowautoconnecttowifisensehotspots) | Allow the device to connect automatically to Wi-Fi hotspots. | ✅ |  |  |  |
| [AllowInternetSharing](/windows/client-management/mdm/policy-configuration-service-provider#wifi-allowinternetsharing) | Allow Internet sharing. | ✅ |   |  |  |
| [AllowManualWiFiConfiguration](/windows/client-management/mdm/policy-configuration-service-provider#wifi-allowmanualwificonfiguration) | Allow connecting to Wi-Fi outside of MDM server-installed networks. |  |   |  |  |
| [AllowWiFi](/windows/client-management/mdm/policy-configuration-service-provider#wifi-allowwifi) | Allow Wi-Fi connections. |  |   |  |  |
| [WLANScanMode](/windows/client-management/mdm/policy-configuration-service-provider#wifi-wlanscanmode) | Configure the WLAN scanning behavior and how aggressively devices should be actively scanning for Wi-Fi networks to get devices connected. | ✅ | ✅ |  | ✅ |

## WindowsInkWorkspace

| Setting | Description | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [AllowSuggestedAppsInWindowsInkWorkspace](/windows/client-management/mdm/policy-configuration-service-provider#windowsinkworkspace-allowsuggestedappsinwindowsinkworkspace) | Show recommended app suggestions in the ink workspace. | ✅ |  |  |  |
| [AllowWindowsInkWorkspace](/windows/client-management/mdm/policy-configuration-service-provider#windowsinkworkspace-allowwindowsinkworkspace) | Specify whether to allow the user to access the ink workspace. | ✅ |  |  |  |

## WindowsLogon

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: |
| [HideFastUserSwitching](/windows/client-management/mdm/policy-configuration-service-provider#windowslogon-hidefastuserswitching) | Hide the **Switch account** button on the sign-in screen, Start, and the Task Manager. | ✅ |  |  |  |

## WirelessDisplay

| Setting | Description | Windows client |  Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: |  :---: | :---: | :---: |
| [AllowUserInputFromWirelessDisplayReceiver](/windows/client-management/mdm/policy-configuration-service-provider#wirelessdisplay-allowuserinputfromwirelessdisplayreceiver) | This policy controls whether or not the wireless display can send input (keyboard, mouse, pen, and touch, dependent upon display support) back to the source device. For example, a Surface Laptop is projecting wirelessly to a Surface Hub. If input from the wireless display receiver is allowed, users can draw with a pen on the Surface Hub.  | ✅ |   |  |  |
