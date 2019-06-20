---
title: Policies (Windows 10)
ms.reviewer: 
manager: dansimp
description: This section describes the Policies settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
---

# Policies (Windows Configuration Designer reference)

This section describes the **Policies** settings that you can configure in [provisioning packages](../provisioning-packages/provisioning-packages.md) for Windows 10 using Windows Configuration Designer. Each setting below links to its supported values, as documented in the [Policy configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider).  

## AboveLock

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowActionCenterNotifications](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#abovelock-allowactioncenternotifications)  | Allow Action Center notifications above the device lock screen. |  | X |  |  |  |
| [AllowToasts](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#abovelock-allowtoasts)  | Allow toast notifications above the device lock screen.  | X  | X |   |   |  |

## Accounts

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAddingNonMicrosoftAccountManually](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#accounts-allowaddingnonmicrosoftaccountsmanually) | Whether users can add non-Microsoft email accounts  | X | X |  |  |  |
| [AllowMicrosoftAccountConnection](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#accounts-allowmicrosoftaccountconnection) | Whether users can use a Microsoft account for non-email-related connection authentication and services  | X | X |  | X |  |
| [AllowMicrosoftAccountSigninAssistant](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#accounts-allowmicrosoftaccountsigninassistant) | Disable the **Microsoft Account Sign-In Assistant** (wlidsvc) NT service | X | X |  |  |  |
| [DomainNamesForEmailSync](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#accounts-domainnamesforemailsync) | List of domains that are allowed to sync email on the devices | X | X |  |  |  |


## ApplicationDefaults

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [DefaultAssociationsConfiguration](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#applicationdefaults-defaultassociationsconfiguration) | Set default file type and protocol associations  | X |  |  |  |  |


## ApplicationManagement


| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAllTrustedApps](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-allowalltrustedapps) | Whether non-Microsoft Store apps are allowed | X | X |  |  | X |
| [AllowAppStoreAutoUpdate](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-allowappstoreautoupdate)  | Whether automatic update of apps from Microsoft Store is allowed  | X  | X |   |   | X |
| [AllowDeveloperUnlock](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-allowdeveloperunlock)  | Whether developer unlock of device is allowed  | X  | X | X  | X  | X |
| [AllowGameDVR](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-allowgamedvr)  |Whether DVR and broadcasting is allowed   | X  |  |   |   |  |
| [AllowSharedUserAppData](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-allowshareduserappdata)  | Whether multiple users of the same app can share data  | X  | X |   |   |  |
| [AllowStore](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-allowstore)  | Whether app store is allowed at device  |   | X |   |   |  |
| [ApplicationRestrictions](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-applicationrestrictions)  | An XML blob that specifies app restrictions, such as an allow list, disallow list, etc.  |   | x |   |   |  |
| [LaunchAppAfterLogOn](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-launchappafterlogon)  |Whether to launch an app or apps when the user signs in.   | X  |  |   |   |  |
| [RestrictAppDataToSystemVolume](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-restrictappdatatosystemvolume)  | Whether app data is restricted to the system drive  | X  | X |   |   | X |
| [RestrictAppToSystemVolume](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#applicationmanagement-restrictapptosystemvolume)  | Whether the installation of apps is restricted to the system drive   | X  | X |   |   | X |




## Authentication

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowFastReconnect](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-authentication#authentication-allowfastreconnect) | Allows EAP Fast Reconnect from being attempted for EAP Method TLS. | X | X | X | X | X |
| [EnableFastFirstSignin](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-authentication#authentication-enablefastfirstsignin) | Enables a quick first sign-in experience for a user by automatically connecting new non-admin Azure AD accounts to the pre-configured candidate local accounts. | X | X | X |  | X |
| [EnableWebSignin](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-authentication#authentication-enablewebsignin) | Enables Windows logon support for non-ADFS federated providers (e.g. SAML). | X | X | X |  | X |
| [PreferredAadTenantDomainName](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-authentication#authentication-preferredaadtenantdomainname) | Specifies the preferred domain among available domains in the Azure AD tenant. | X | X | X |  | X |


## BitLocker

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [EncryptionMethod](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#bitlocker-encryptionmethod)  | Specify BitLocker drive encryption method and cipher strength | X | X |  |  |  |


## Bluetooth

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAdvertising](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#bluetooth-allowadvertising)  | Whether the device can send out Bluetooth advertisements | X | X | X | X | X |
| [AllowDiscoverableMode](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#bluetooth-allowdiscoverablemode)  | Whether other Bluetooth-enabled devices can discover the device  | X  | X |  X | X | X |
| [AllowPrepairing](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#bluetooth-allowprepairing)  | Whether to allow specific bundled Bluetooth peripherals to automatically pair with the host device  | X  | X | X | X | X |
| AllowPromptedProximalConnections | Whether Windows will prompt users when Bluetooth devices that are connectable are in range of the user's device  | X  | X | X | X | X |
| [LocalDeviceName](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#bluetooth-localdevicename)  | Set the local Bluetooth device name  | X  | X | X | X | X |
| [ServicesAllowedList](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#bluetooth-servicesallowedlist)  | Set a list of allowable services and profiles  | X  | X | X  | X  | X |

## Browser

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAddressBarDropdown](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowaddressbardropdown) | Specify whether to allow the address bar drop-down functionality in Microsoft Edge. If you want to minimize network connections from Microsoft Edge to Microsoft services, we recommend disabling this functionality.  | X |  |  |  |  |
| [AllowAutofill](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowautofill)  | Specify whether autofill on websites is allowed.  | X  | X | X  |   | X |
| [AllowBrowser](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowbrowser) | Specify whether the browser is allowed on the device (for Windows 10, version 1803 and earlier only). | X | X |  |  |  |
[AllowConfigurationUpdateForBooksLibrary](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowconfigurationupdateforbookslibrary) | Specify whether Microsoft Edge can automatically update the configuration data for the Books Library. | X | X |  |  |  |
| [AllowCookies](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowcookies)  | Specify whether cookies are allowed.  | X  | X | X  |   | X |
| [AllowDeveloperTools](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowdevelopertools) | Specify whether employees can use F12 Developer Tools on Microsoft Edge. | X |  |  |  |  |
| [AllowDoNotTrack](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowdonottrack)  | Specify whether Do Not Track headers are allowed.  | X  | X | X  |   | X |
| [AllowExtensions](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowextensions) | Specify whether Microsoft Edge extensions are allowed. | X |  |  |  |  |
| [AllowFlash](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowflash)  | Specify whether Adobe Flash can run in Microsoft Edge.  |  X |  |   |   |  |
| [AllowFlashClickToRun](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowflashclicktorun) | Specify whether users must take an action, such as clicking the content or a Click-to-Run button, before seeing content in Adobe Flash. | X |  |  |  |  |
| [AllowFullScreenMode](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowfullscreenmode)  | Specify whether full-screen mode is allowed.  | X  | X | X  |   | X |
| [AllowInPrivate](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowinprivate)  | Specify whether InPrivate browsing is allowed on corporate networks.  | X  | X | X  |   | X |
| [AllowMicrosoftCompatibilityList](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowmicrosoftcompatibilitylist) | Specify whether to use the Microsoft compatibility list in Microsoft Edge. | X | X | X |  | X |
| [AllowPasswordManager](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowpasswordmanager)  | Specify whether saving and managing passwords locally on the device is allowed.  | X  | X | X  |   | X |
| [AllowPopups](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowpopups) | Specify whether pop-up blocker is allowed or enabled. | X |  |  | X |  |
| [AllowPrelaunch](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowprelaunch)  | Specify whether Microsoft Edge can pre-launch as a background process during Windows startup when the system is idle waiting to be launched by the user.   | X  |  |   |   |  |
| [AllowPrinting](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowprinting)  | Specify whether users can print web content in Microsoft Edge.   | X  | X |  X |   | X |
| [AllowSavingHistory](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowsavinghistory)  | Specify whether Microsoft Edge saves the browsing history.   | X  |  |   |   |  |
| [AllowSearchEngineCustomization](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowsearchenginecustomization)  | Allow search engine customization for MDM-enrolled devices.  | X  | X | X  |   | X |
| [AllowSearchSuggestionsinAddressBar](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowsearchsuggestionsinaddressbar) | Specify whether search suggestions are allowed in the address bar. | X | X | X |  | X |
| [AllowSideloadingOfExtensions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowsideloadingofextensions)  | Specify whether extensions can be sideloaded in Microsoft Edge.   | X  |  |   |   |  |
| [AllowSmartScreen](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-allowsmartscreen)  | Specify whether Windows Defender SmartScreen is allowed.  | X  | X | X  | X  | X |
| [AllowTabPreloading](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowtabpreloading)  | Specify whether preloading the Start and New tab pages during Windows sign-in is allowed.   | X  |  |   |   |  |
| [AllowWebContentOnNewTabPage](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowwebcontentonnewtabpage)  | Specify whether a New tab page opens with the default content or a blank page.   | X  | X | X  |   | X |
[AlwaysEnableBooksLibrary](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-alwaysenablebookslibrary) | Always show the Books Library in Microsoft Edge. | X | X |  |  |  |
| [ClearBrowsingDataOnExit](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-clearbrowsingdataonexit) | Specify whether to clear browsing data when exiting Microsoft Edge. | X |  |  |  |  |
| [ConfigureAdditionalSearchEngines](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-configureadditionalsearchengines)  | Allows you to add up to 5 addtional search engines for MDM-enrolled devices.  | X  | X | X  |   | X |
| [ConfigureFavoritesBar](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurefavoritesbar)  | Specify whether the Favorites bar is shown or hidden on all pages.   | X  |  |   |   |  |
| [ConfigureHomeButton](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurehomebutton)  | Configure whether the Home button will be shown, and what should happen when it is selected. You should also configure the [SetHomeButtonURL](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-sethomebuttonurl) setting. To configure this setting and also allow users to make changes to the Home button, see the [UnlockHomeButton](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-unlockhomebutton) setting.  | X  |  |   |   |  |
| [ConfigureKioskMode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurekioskmode)  | Configure how Microsoft Edge operates when it's running in kiosk mode, either as a single-app kiosk or as one of multiple apps running on the kiosk device.  | X  |  |   |   |  |
| [ConfigureKioskResetAfterIdleTimeout](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurekioskresetafteridletimeout)  | Specify the time, in minutes, after which Microsoft Edge running in kiosk mode resets to the default kiosk configuration.  | X  |  |   |   |  |
| [ConfigureOpenMicrosoftEdgeWith](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configureopenmicrosoftedgewith)  | Specify which pages should load when Microsoft Edge opens. You should also configure the [ConfigureStartPages](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurestartpages) setting and [DisableLockdownOfStartPages](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-disablelockdownofstartpages) setting.  | X  |  |   |   |  |
| [ConfigureTelemetryForMicrosoft365Analytics](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configuretelemetryformicrosoft365analytics)  | Specify whether to send Microsoft Edge browsing history data to Microsoft 365 Analytics.  | X  |  |   |   |  |
| [DisableLockdownOfStartPages](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-disablelockdownofstartpages) | Specify whether the lockdown on the Start pages is disabled. | X |  |  |  |  |
[EnableExtendedBooksTelemetry](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-enableextendedbookstelemetry) | Enable this setting to send additional diagnostic data, on top of the basic diagnostic data, from the Books tab.  | X | X |  |  |  |
| [EnterpriseModeSiteList](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-enterprisemodesitelist)  | Allow the user to specify a URL of an enterprise site list.  | X  |  |   |   |  |
| [EnterpriseSiteListServiceUrl](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-enterprisesitelistserviceurl) | This policy (introduced in Windows 10, version 1507) was deprecated in Windows 10, version 1511 by [Browser/EnterpriseModeSiteList](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-enterprisemodesitelist). | X |  |  |  |  |
| [FirstRunURL](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-firstrunurl)  | Specify the URL that Microsoft Edge will use when it is opened for the first time.  | X  | X |   |   |  |
| [HomePages](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-homepages) | Specify your Start pages for MDM-enrolled devices. | X |  |  |  |  |
[LockdownFavorites](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-lockdownfavorites) | Configure whether employees can add, import, sort, or edit the Favorites list in Microsoft Edge.  | X | X |  |  |  |
| [PreventAccessToAboutFlagsInMicrosoftEdge](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-preventaccesstoaboutflagsinmicrosoftedge)  | Specify whether users can access the **about:flags** page, which is used to change developer settings and to enable experimental features.  | X  | X | X  |   | X |
| [PreventCertErrorOverrides](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventcerterroroverrides)  | Specify whether to override security warnings about sites that have SSL errors.  | X  | X |  X |   | X |
| [PreventFirstRunPage](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-preventfirstrunpage) | Specify whether to enable or disable the First Run webpage. | X |  |  |  |  |
| [PreventLiveTileDataCollection](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-preventlivetiledatacollection)  | Specify whether Microsoft can collect information to create a Live Tile when pinning a site to Start from Microsoft Edge.  | X  | X | X  |   | X |
| [PreventSmartScreenPromptOverride](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-preventsmartscreenpromptoverride)  | Specify whether users can override the Windows Defender SmartScreen Filter warnings about potentially malicious websites.  | X  | X | X  |   | X |
| [PreventSmartScreenPromptOverrideForFiles](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-preventsmartscreenpromptoverrideforfiles) | Specify whether users can override the Windows Defender SmartScreen Filter warnings about downloading unverified files. | X | X | X |  | X |
PreventTabPreloading | Prevent Microsoft Edge from starting and loading the Start and New Tab page at Windows startup and each time Microsoft Edge is closed. Applies to Windows 10, version 1803 and earlier only. | X |  |  |  |  |
| [PreventTurningOffRequiredExtensions](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-forceenabledextensions)  | Enter a list of extensions in Microsoft Edge that users cannot turn off, using a semi-colon delimited list of extension package family names.  | X  |  |   |   |  |
| [PreventUsingLocalHostIPAddressForWebRTC](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-preventusinglocalhostipaddressforwebrtc)  | Specify whether a user's localhost IP address is displayed while making phone calls using the WebRTC protocol.  | X  | X | X  |   | X |
[ProvisionFavorites](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-provisionfavorites) | Configure a default set of favorites which will appear for employees. | X | X |  |  |  |
| [SendIntranetTraffictoInternetExplorer](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-sendintranettraffictointernetexplorer) | Specify whether to send intranet traffic to Internet Explorer. | X |  |  |  |  |
| [SetDefaultSearchEngine](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-setdefaultsearchengine) | Configure the default search engine for your employees.  | X  | X | X  |   | X |
| [SetHomeButtonURL](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-sethomebuttonurl)  | Specify a custom URL for the Home button. You should also enable the [ConfigureHomeButton](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurehomebutton) setting and select the **Show the home button; clicking the home button loads a specific URL** option.  | X  |  |   |   |  |
| [SetNewTabPageURL](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-setnewtabpageurl)  | Specify a custom URL for a New tab page.  | X  |  |   |   |  |
| [ShowMessageWhenOpeningSitesInInternetExplorer](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-showmessagewhenopeningsitesininternetexplorer) | Specify whether users should see a full interstitial page in Microsoft Edge when opening sites that are configured to open in Internet Explorer using the Enterprise Site list. | X |  |  |  |  |
| [SyncFavoritesBetweenIEAndMicrosoftEdge](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#browser-syncfavoritesbetweenieandmicrosoftedge)  | Specify whether favorites are kept in sync between Internet Explorer and Microsoft Edge.  | X  |  |   |   |  |
| [UnlockHomeButton](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-unlockhomebutton)  | Specify whether users can make changes to the Home button.  | X  |  |   |   |  |
[UseSharedFolderForBooks](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-usesharedfolderforbooks) | Specify whether organizations should use a folder shared across users to store books from the Books Library. | X  | X |   |   |  |


## Camera

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowCamera](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#camera-allowcamera) | Disable or enable the camera. | X | X | X |  |  |


## Connectivity

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowBluetooth](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowbluetooth) | Allow the user to enable Bluetooth or restrict access. | X | X | X | X | X |
| [AllowCellularData](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowcellulardata) | Allow the cellular data channel on the device. | X | X | X |  | X |
| [AllowCellularDataRoaming](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowcellulardataroaming) | Allow or disallow cellular data roaming on the device. | X | X | X |  | X |
| [AllowConnectedDevices](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowconnecteddevices) | Allows IT admins the ability to disable the Connected Devices Platform component. | X | X | X |  | X |
| [AllowNFC](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allownfc) | Allow or disallow near field communication (NFC) on the device. |  | X |  |  | X |
| [AllowUSBConnection](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowusbconnection) | Enable USB connection between the device and a computer to sync files with the device or to use developer tools or to deploy or debug applications. |  | X |  |  | X |
| [AllowVPNOverCellular](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowvpnovercellular) | Specify what type of underlyinng connections VPN is allowed to use. |X | X | X |  | X |
| [AllowVPNRoamingOverCellular](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#connectivity-allowvpnroamingovercellular) | Prevent the device from connecting to VPN when the device roams over cellular networks. | X | X | X |  | X |
| HideCellularConnectionMode | Hide the checkbox that lets the user change the connection mode. | X | X | X |  | X |
| HideCellularRoamingOption | Hide the dropdown menu that lets the user change the roaming preferences.  | X | X | X |  | X |

## CredentialProviders

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
[DisableAutomaticReDeploymentCredentials](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-credentialproviders) | This setting disables the visibility of the credential provider that triggers the PC refresh on a device. This policy does not actually trigger the refresh. The admin user is required to authenticate to trigger the refresh on the target device. The Windows 10 Autopilot Reset feature allows admin to reset devices to a known good managed state while preserving the management enrollment. After the automatic redeployment is triggered the devices are for ready for use by information workers or students. | X |  |  |  |  |

## Cryptography

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowFipsAlgorithmPolicy](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#cryptography-allowfipsalgorithmpolicy) | Allow or disallow the Federal Information Processing Standard (FIPS) policy. | X | X |  |  |  |
| [TLSCiperSuites](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#cryptography-tlsciphersuites)  | List the Cryptographic Cipher Algorithms allowed for SSL connections. Format is a semicolon delimited list. Last write win.  | X  | X |   |   |  |

## Defender

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowArchiveScanning](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-allowarchivescanning) | Allow or disallow scanning of archives. | X |  |  |  |  |
| [AllowBehaviorMonitoring](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-allowbehaviormonitoring)  | Allow or disallow Windows Defender Behavior Monitoring functionality.  |  X |  |   |   |  |
| [AllowCloudProtection](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-allowcloudprotection) | To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions. | X |  |  |  |  |
| [AllowEmailScanning](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-allowemailscanning)  | Allow or disallow scanning of email.  |  X |  |   |   |  |
| [AllowFullScanOnMappedNetworkDrives](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-allowfullscanonmappednetworkdrives) | Allow or disallow a full scan of mapped network drives. | X |  |  |  |  |
| [AllowFullScanRemovableDriveScanning](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-allowfullscanremovabledrivescanning)  | Allow or disallow a full scan of removable drives.  |  X |  |   |   |  |
| [AllowIntrusionPreventionSystem](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-allowintrusionpreventionsystem) | Allow or disallow Windows Defender Intrusion Prevention functionality. | X |  |  |  |  |
| [AllowIOAVProtection](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-allowioavprotection)  | Allow or disallow Windows Defender IOAVP Protection functionality.  |  X |  |   |   |  |
| [AllowOnAccessProtection](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-allowonaccessprotection) | Allow or disallow Windows Defender On Access Protection functionality. | X |  |  |  |  |
| [AllowRealtimeMonitoring](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-allowrealtimemonitoring)  | Allow or disallow Windows Defender Realtime Monitoring functionality.  |  X |  |   |   |  |
| [AllowScanningNetworkFiles](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-allowscanningnetworkfiles) | Allow or disallow scanning of network files.  | X |  |  |  |  |
| [AllowScriptScanning](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-allowscriptscanning) | Allow or disallow Windows Defender Script Scanning functionality. | X |  |  |  |  |
| [AllowUserUIAccess](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-allowuseruiaccess)  | Allow or disallow user access to the Windows Defender UI.  |  X |  |   |   |  |
| [AvgCPULoadFactor](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-avgcpuloadfactor) | Represents the average CPU load factor for the Windows Defeder scan (in percent). | X |  |  |  |  |
| [DaysToRetainCleanedMalware](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-daystoretaincleanedmalware)  | Specify time period (in days) that quarantine items will be stored on the system.  |  X |  |   |   |  |
| [ExcludedExtensions](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-excludedextensions) | Specify a list of file type extensions to ignore durinng a scan. Separate each file type in the list by using \|. | X |  |  |  |  |
| [ExcludedPaths](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-excludedpaths)  | Specify a list of directory paths to ignore during a scan. Separate each path in the list by using \|.  |  X |  |   |   |  |
| [ExcludedProcesses](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-excludedprocesses) | Specify a list of files opened by processes to ignore durinng a scan. Separate each file type in the list by using \|. The process itself is not excluded from the scan, but can be excluded by using the [Defender/ExcludedPaths](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-excludedpaths) policy to exclude its path. | X |  |  |  |  |
| [RealTimeScanDirection](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-realtimescandirection)  | Control which sets of files should be monitored.  |  X |  |   |   |  |
| [ScanParameter](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-scanparameter) | Select whether to perform a quick scan or full scan. | X |  |  |  |  |
| [ScheduleQuickScanTime](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-schedulequickscantime)  | Specify the time of day that Windows Defender quick scan should run.  |  X |  |   |   |  |
| [ScheduleScanDay](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-schedulescanday) | Select the day that Windows Defender scan should run. | X |  |  |  |  |
| [ScheduleScanTime](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-schedulescantime)  | Select the time of day that the Windows Defender scan should run.  |  X |  |   |   |  |
| [SignatureUpdateInterval](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-signatureupdateinterval) | Specify the interval (in hours) that will be used to check for signatures, so instead of using the ScheduleDay and ScheduleTime the check for new signatures will be set according to the interval. | X |  |  |  |  |
| [SubmitSamplesConsent](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-submitsamplesconsent) | Checks for the user consent level in Windows Defender to send data. | X |  |  |  |  |
| [ThreatSeverityDefaultAction](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#defender-threatseveritydefaultaction)  | Specify any valid threat severity levels and the corresponding default action ID to take.  |  X |  |   |   |  |

## DeliveryOptimization

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [DOAbsoluteMaxCacheSize](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-doabsolutemaxcachesize) | Specify the maximum size in GB of Delivery Optimization cache. | X |  |  |  |  |
| [DOAllowVPNPeerCaching](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-doallowvpnpeercaching) | Specify whether the device is allowed to participate in Peer Caching while connected via VPN to the domain network. | X |  |  |  |  |
| [DODelayBackgroundDownloadFromHttp](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deliveryoptimization#deliveryoptimization-dodelaybackgrounddownloadfromhttp) | Allows you to delay the use of an HTTP source in a background download that is allowed to use peer-to-peer. | X |  |  |  |  |
| [DODelayForegroundDownloadFromHttp](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deliveryoptimization#deliveryoptimization-dodelayforegrounddownloadfromhttp) | Allows you to delay the use of an HTTP source in a foreground (interactive) download that is allowed to use peer-to-peer. | X |  |  |  |  |
| [DODownloadMode](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dodownloadmode) | Specify the download method that Delivery Optimization can use in downloads of Windows Updates, apps, and app updates. | X |  |  |  |  |
| [DOGroupId](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dogroupid) | Specify an arbitrary group ID that the device belongs to. | X |  |  |  |  |
| [DOGroupIdSource](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dogroupidsource) | Set this policy to restrict peer selection to a specific source | X |  |  |  |  |
| [DOMaxCacheAge](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domaxcacheage) | Specify the maximum time in seconds that each file is held in the Delivery Optimization cache after downloading successfully. | X |  |  |  |  |
| [DOMaxCacheSize](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domaxcachesize) | Specify the maximum cache size that Delivery Optimization can utilize, as a percentage of disk size (1-100). | X |  |  |  |  |
| [DOMaxDownloadBandwidth](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domaxdownloadbandwidth) | Specify the maximum download bandwidth in kilobytes/second that the device can use across all concurrent download activities using Delivery Optimization. | X |  |  |  |  |
| [DOMaxUploadBandwidth](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domaxuploadbandwidth) | Specify the maximum upload bandwidth in kilobytes/second that a device will use across all concurrent upload activity usinng Delivery Optimization.  | X |  |  |  |  |
| [DOMinBackgroundQos](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dominbackgroundqos) | Specify the minimum download QoS (Quality of Service or speed) i kilobytes/second for background downloads. | X |  |  |  |  |
| [DOMinBatteryPercentageAllowedToUpload](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dominbatterypercentageallowedtoupload) | Specify any value between 1 and 100 (in percentage) to allow the device to upload data to LAN and group peers while on battery power. | X |  |  |  |  |
| [DOMinDiskSizeAllowedToPeer](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domindisksizeallowedtopeer) | Specify the required minimum disk size (capabity in GB) for the device to use Peer Caching. | X |  |  |  |  |
| [DOMinFileSizeToCache](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dominfilesizetocache) | Specify the minimum content file size in MB enabled to use Peer Caching. | X |  |  |  |  |
| [DOMinRAMAllowedToPeer](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dominramallowedtopeer) | Specify the minimum RAM size in GB requried to use Peer Caching. | X |  |  |  |  |
| [DOModifyCacheDrive](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domodifycachedrive) | Specify the drive that Delivery Optimization should use for its cache. | X |  |  |  |  |
| [DOMonthlyUploadDataCap](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-domonthlyuploaddatacap) | Specify the maximum total bytes in GB that Delivery Optimization is allowed to upload to Internet peers in each calendar month. | X |  |  |  |  |
| [DOPercentageMaxBackDownloadBandwidth](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dopercentagemaxbackgroundbandwidth) | Specify the maximum background download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth. | X |  |  |  |  |
| [DOPercentageMaxDownloadBandwidth](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dopercentagemaxdownloadbandwidth) | Specify the maximum download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth. | X |  |  |  |  |
| [DOPercentageMaxForeDownloadBandwidth](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dopercentagemaxforegroundbandwidth) | Specify the maximum foreground download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth. | X |  |  |  |  |
| [DORestrictPeerSelectionBy](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dorestrictpeerselectionby) | Set this policy to restrict peer selection by the selected option. | X |  |  |  |  |
| [DOSetHoursToLimitBackgroundDownloadBandwidth](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dosethourstolimitbackgrounddownloadbandwidth) | Specify the maximum background download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.  | X |  |  |  |  |
| [DOSetHoursToLimitForegroundDownloadBandwidth](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#deliveryoptimization-dosethourstolimitforegrounddownloadbandwidth) | Specify the maximum foreground download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth. | X |  |  |  |  |

## DeviceGuard

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
[EnableVirtualizationBasedSecurity](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceguard) | Turns on virtualization based security(VBS) at the next reboot. virtualization based security uses the Windows Hypervisor to provide support for security services.  | X |  |  |  |  |

## DeviceLock

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowIdleReturnWithoutPassword](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#devicelock-allowidlereturnwithoutpassword) | Specify whether the user must input a PIN or password when the device resumes from an idle state. |  | X |  |  |  |
| [AllowScreenTimeoutWhileLockedUserConfig](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#devicelock-allowscreentimeoutwhilelockeduserconfig) | Specify whether to show a user-configurable setting to control the screen timeout while on the lock screen. |  | X |  |  |  |
| [AllowSimpleDevicePassword](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#devicelock-allowsimpledevicepassword) | Specify whether PINs or passwords such as "1111" or "1234" are allowed. For the desktop, it also controls the use of picture passwords. | X | X |  | X |  |
|[AlphanumericDevicePasswordRequired](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#devicelock-alphanumericdevicepasswordrequired)  | Select the type of PIN or password required.  | X | X |  | X |  |
| [DevicePasswordEnabled](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#devicelock-devicepasswordenabled) | Specify whether device password is enabled. | X | X |  | X |  |
| [DevicePasswordExpiration](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#devicelock-devicepasswordexpiration) | Specify when the password expires (in days). | X | X |  | X |  |
| [DevicePasswordHistory](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#devicelock-devicepasswordhistory) | Specify how many passwords can be stored in the history that can't be reused. | X | X |  | X |  |
| [MaxDevicePasswordFailedAttempts](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#devicelock-maxdevicepasswordfailedattempts) | Specify the number of authentication failures allowed before the device will be wiped. | X | X |  | X |  |
| [MaxInactivityTimeDeviceLock](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#devicelock-maxinactivitytimedevicelock) |Specify the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked.  | X | X |  | X |  |
| [MinDevicePasswordComplexCharacters](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#devicelock-mindevicepasswordcomplexcharacters) | Specify the number of complex element types (uppercase and lowercase letters, numbers, and punctuation) required for a strong PIN or password. | X | X |  | X |  |
| [MinDevicePasswordLength](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#devicelock-mindevicepasswordlength) | Specify the minimum number or characters required in the PIN or password. | X | X |  | X |  |
| [ScreenTimeoutWhileLocked](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#devicelock-screentimeoutwhilelocked) | Specify the duration in seconds for the screen timeout while on the lock screen. |  | X |  |  |  |


## DeviceManagement

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| DisableMDMEnrollment | Use this setting to prevent the device from enrolling in MDM. | X |  |  |  |  |



## Experience

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowCopyPaste](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowcopypaste) | Specify whether copy and paste is allowed. |  | X |  |  |  |
| [AllowCortana](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowcortana) | Specify whether Cortana is allowed on the device. | X | X |  | X |  |
| [AllowDeviceDiscovery](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowdevicediscovery) | Allow users to turn device discovery on or off in the UI.  | X | X |  |  |  |
| [AllowFindMyDevice](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowfindmydevice) | Turn on **Find my device** feature. | X | X |  |  |  |
| [AllowManualMDMUnenrollment](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowmanualmdmunenrollment) | Specify whether the user is allowed to delete the workplace account.  | X | X |  | X |  |
| [AllowScreenCapture](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowscreencapture) | Specify whether screen capture is allowed. |  | X |  |  |  |
| [AllowSIMErrorDialogPromptWhenNoSIM](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowsimerrordialogpromptwhennosim) | Specify whether to display a dialog prompt when no SIM card is detected. |  | X |  |  |  |
| [AllowSyncMySettings](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowsyncmysettings) | Allow or disallow all Windows sync settings on the device. | X | X |  |  |  |
| [AllowTailoredExperiencesWithDiagnosticData](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowtailoredexperienceswithdiagnosticdata) | Prevent Windows from using diagnostic data to provide customized experiences to the user. | X |  |  |  |  |
| [AllowTaskSwitcher](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowtaskswitcher) | Allow or disallow task switching on the device. |  | X |  |  |  |
| [AllowThirdPartySuggestionsInWindowsSpotlight](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowthirdpartysuggestionsinwindowsspotlight) | Specify whether to allow app and content suggestions from third-party software publishers in Windows Spotlight. | X |  |  |  |  |
| [AllowVoiceRecording](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowvoicerecording) | Specify whether voice recording is allowed for apps. |  | X |  |  |  |
| [AllowWindowsConsumerFeatures](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-allowwindowsconsumerfeatures) | Turn on experiences that are typically for consumers only, such as Start suggetions, membership notifications, post-OOBE app install, and redirect tiles. | X |  |  |  |  |
| [AllowWindowsSpotlight](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowwindowsspotlight) |Specify whether to turn off all Windows Spotlight features at once.  | X |  |  |  |  |
| [AllowWindowsSpotlightOnActionCenter](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowwindowsspotlightonactioncenter) | Prevent Windows Spotlight notifications from being displayed in the Action Center. | X |  |  |  |  |
| [AllowWindowsSpotlightWindowsWelcomeExperience](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowwindowsspotlightwindowswelcomeexperience) | Turn off the Windows Spotlight Windows welcome experience feature. | X |  |  |  |  |
| [AllowWindowsTips](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-allowwindowstips) | Enable or disable Windows Tips. | X |  |  |  |  |
| [ConfigureWindowsSpotlightOnLockScreen](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#experience-configurewindowsspotlightonlockscreen) | Specify whether Spotlight should be used on the user's lock screen. | X |  |  |  |  |

## ExploitGuard

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [ExploitProtectionSettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-exploitguard) | See the [explanation of ExploitProtectionSettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-exploitguard) in the Policy CSP for instructions. In the **ExploitProtectionSettings** field, you can enter a path (local, UNC, or URI) to the mitigation options config, or you can enter the XML for the config. | X | X |  |  |  |


## Games

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAdvancedGamingServices](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#games-allowadvancedgamingservices) | Currently not supported. | X |  |  |  |  |


## KioskBrowser

These settings apply to the **Kiosk Browser** app available in Microsoft Store. For more information, see [Guidelines for web browsers](https://docs.microsoft.com/windows/configuration/guidelines-for-assigned-access-app#guidelines-for-web-browsers).

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
[BlockedUrlExceptions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-blockedurlexceptions) | List of exceptions to the blocked website URLs (with wildcard support). This is used to configure URLs kiosk browsers are allowed to navigate to, which are a subset of the blocked URLs. | X |  |  |  |  |
[BlockedUrls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-blockedurls) | List of blocked website URLs (with wildcard support). This is used to configure blocked URLs kiosk browsers cannot navigate to. | X |  |  |  |  |
[DefaultURL](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-defaulturl) | Configures the default URL kiosk browsers to navigate on launch and restart.  | X |  |  |  |  |
[EnableEndSessionButton](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-enableendsessionbutton) | Enable/disable kiosk browser's end session button.  | X |  |  |  |  |
[EnableHomeButton](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-enablehomebutton) | Enable/disable kiosk browser's home button.  | X |  |  |  |  |
[EnableNavigationButtons](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-enablenavigationbuttons) | Enable/disable kiosk browser's navigation buttons (forward/back). | X |  |  |  |  |
[RestartOnIdleTime](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-kioskbrowser#kioskbrowser-restartonidletime) | Amount of time in minutes the session is idle until the kiosk browser restarts in a fresh state.  The value is an int 1-1440 that specifies the amount of minutes the session is idle until the kiosk browser restarts in a fresh state. The default value is empty which means there is no idle timeout within the kiosk browser. | X |  |  |  |  |

To configure multiple URLs for **Blocked URL Exceptions** or **Blocked URLs** in Windows Configuration Designer:

1. Create the provisioning package. When ready to export, close the project in Windows Configuration Designer.
2. Open the customizations.xml file in the project folder (e.g C:\Users\name\Documents\Windows Imaging and Configuration Designer (WICD)\Project_18). 
3. Insert the null character string in between each URL (e.g www.bing.com&#xF000;www.contoso.com). 
4. Save the XML file.
5. Open the project again in Windows Configuration Designer.
6. Export the package. Ensure you do not revisit the created policies under Kiosk Browser or else the null character will be removed.

## LocalPoliciesSecurityOptions

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [InteractiveLogon_DoNotDisplayLastSignedIn](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-localpoliciessecurityoptions#localpoliciessecurityoptions-interactivelogon-donotdisplaylastsignedin) | Specify whether the Windows sign-in screen will show the username of the last person who signed in. | X |  |  |  |  |
| [Shutdown_AllowSystemtobeShutDownWithoutHavingToLogOn](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-localpoliciessecurityoptions#localpoliciessecurityoptions-shutdown-allowsystemtobeshutdownwithouthavingtologon) | Specify whether a computer can be shut down without signing in. | X |  |  |  |  |
| [UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-localpoliciessecurityoptions#localpoliciessecurityoptions-useraccountcontrol-behavioroftheelevationpromptforstandardusers) | Configure how an elevation prompt should behave for standard users. | X |  |  |  |  |

## Location

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [EnableLocation](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#location-enablelocation) | Do not use. |  |  |  |  |  |

## Power

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowStandbyStatesWhenSleepingOnBattery](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#allowstandbystateswhensleepingonbattery) | Specify whether Windows can use standby states when putting the computer in a sleep state while on battery. | X |  |  |  |  |
| [AllowStandbyWhenSleepingPluggedIn](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#allowstandbystateswhensleepingpluggedin) | Specify whether Windows can use standby states when putting the computer in a sleep state while plugged in. | X |  |  |  |  |
| [DisplayOffTimeoutOnBattery](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#displayofftimeoutonbattery) | Specify the period of inactivity before Windows turns off the display while on battery. | X |  |  |  |  |
| [DisplayOffTimeoutPluggedIn](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#displayofftimeoutpluggedin) | Specify the period of inactivity before Windows turns off the display while plugged in. | X |  |  |  |  |
| [EnergySaverBatteryThresholdOnBattery](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#energysaverbatterythresholdonbattery) | Specify the battery charge level at which Energy Saver is turned on while on battery.  | X |  |  |  |  |
| [EnergySaverBatteryThresholdPluggedIn](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#EnergySaverBatteryThresholdPluggedIn) | Specify the battery charge level at which Energy Saver is turned on while plugged in. | X |  |  |  |  |
| [HibernateTimeoutOnBattery](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#hibernatetimeoutonbattery) | Specify the period of inactivity before Windows transitions the system to hibernate while on battery. | X |  |  |  |  |
| [HibernateTimeoutPluggedIn](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#hibernatetimeoutpluggedin) | Specify the period of inactivity before Windows transitions the system to hibernate while plugged in.   | X |  |  |  |  |
| [RequirePasswordWhenComputerWakesOnBattery](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#requirepasswordwhencomputerwakesonbattery) | Specify whether the user is prompted for a password when the system resumes from sleep while on battery. | X |  |  |  |  |
| [RequirePasswordWhenComputerWakesPluggedIn](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#requirepasswordwhencomputerwakespluggedin) | Specify whether the user is prompted for a password when the system resumes from sleep while plugged in. | X |  |  |  |  |
| [SelectLidCloseActionBattery](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#selectlidcloseactionpluggedin) | Select the action to be taken when a user closes the lid on a mobile device while on battery. | X |  |  |  |  |
| [SelectLidCloseActionPluggedIn](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#selectlidcloseactionpluggedin) | Select the action to be taken when a user closes the lid on a mobile device while on plugged in. | X |  |  |  |  |
| [SelectPowerButtonActionOnBattery](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#selectpowerbuttonactiononbattery) | Select the action to be taken when the user presses the power button while on battery.  | X |  |  |  |  |
| [SelectPowerButtonActionPluggedIn](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#selectpowerbuttonactionpluggedin) | Select the action to be taken when the user presses the power button while on plugged in. | X |  |  |  |  |
| [SelectSleepButtonActionOnBattery](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#selectsleepbuttonactiononbattery) | Select the action to be taken when the user presses the sleep button while on battery. | X |  |  |  |  |
| [SelectSleepButtonActionPluggedIn](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#selectsleepbuttonactionpluggedin) | Select the action to be taken when the user presses the sleep button while plugged in. | X |  |  |  |  |
| [StandbyTimeoutOnBattery](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#StandbyTimeoutOnBattery) | Specify the period of inactivity before Windows transitions the system to sleep while on battery. | X |  |  |  |  |
| [StandbyTimeoutPluggedIn](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#standbytimeoutpluggedin) | Specify the period of inactivity before Windows transitions the system to sleep while plugged in. | X |  |  |  |  |
| [TurnOffHybridSleepOnBattery](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#turnoffhybridsleeponbattery) | Turn off hybrid sleep while on battery. | X |  |  |  |  |
| [TurnOffHybridSleepPluggedIn](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#turnoffhybridsleeppluggedin) | Turn off hybrid sleep while plugged in. | X |  |  |  |  |
| [UnattendedSleepTimeoutOnBattery](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#unattendedsleeptimeoutonbattery) | Specify the period of inactivity before Windows transitions the system to sleep automatically when a user is not present while on battery. | X |  |  |  |  |
| [UnattendedSleepTimeoutPluggedIn](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#unattendedsleeptimeoutpluggedin) | Specify the period of inactivity before Windows transitions the system to sleep automatically when a user is not present while plugged in.  | X |  |  |  |  |

## Privacy

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAutoAcceptPairingAndPrivacyConsentPrompts](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#privacy-allowautoacceptpairingandprivacyconsentprompts) | Allow or disallow the automatic acceptance of the pairing and privacy user consent dialog boxes when launching apps. |  | X |  |  |  |
| [AllowInputPersonalization](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#privacy-allowinputpersonalization) | Allow the use of cloud-based speech services for Cortana, dictation, or Store apps. | X | X |  | X |  |


## Search

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
[AllowCloudSearch](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-search#search-allowcloudsearch) | Allow search and Cortana to search cloud sources like OneDrive and SharePoint. T   | X | X |  |  |  |
[AllowCortanaInAAD](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-search#search-allowcortanainaad) | This specifies whether the Cortana consent page can appear in the Azure Active Directory (AAD) device out-of-box-experience (OOBE) flow.    | X |  |  |  |  |
| [AllowIndexingEncryptedStoresOrItems](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#search-allowindexingencryptedstoresoritems) | Allow or disallow the indexing of items. | X | X |  |  |  |
| [AllowSearchToUseLocation](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#search-allowsearchtouselocation) | Specify whether search can use location information. | X | X |  | X |  |
| [AllowUsingDiacritics](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#search-allowusingdiacritics) | Allow the use of diacritics. | X | X |  |  |  |
| [AllowWindowsIndexer](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-search#search-allowwindowsindexer) | The indexer provides fast file, email, and web history search for apps and system components including Cortana, Outlook, file explorer, and Edge. To do this, it requires access to the file system and app data stores such as Outlook OST files.</br></br>- **Off** setting disables Windows indexer</br>- **EnterpriseSecure** setting stops the indexer from indexing encrypted files or stores, and is recommended for enterprises using Windows Information Protection (WIP)</br>- **Enterprise** setting reduces potential network loads for enterprises</br>- **Standard** setting is appropriate for consuemrs | X | X |  |  |  |
| [AlwaysUseAutoLangDetection](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#search-alwaysuseautolangdetection) | Specify whether to always use automatic language detection when indexing content and properties. | X | X |  |  |  |
| [DoNotUseWebResults](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#search-donotusewebresults) | Specify whether to allow Search to perform queries on the web. | X | X |  |  |  |
| [DisableBackoff](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#search-disablebackoff) | If enabled, the search indexer backoff feature will be disabled. | X | X |  |  |  |
| [DisableRemovableDriveIndexing](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#search-disableremovabledriveindexing) | Configure whether locations on removable drives can be added to libraries. | X | X |  |  |  |
| [PreventIndexingLowDiskSpaceMB](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#search-preventindexinglowdiskspacemb) | Prevent indexing from continuing after less than the specified amount of hard drive space is left on the same drive as the index location. | X | X |  |  |  |
| [PreventRemoteQueries](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#search-preventremotequeries) | If enabled, clients will be unable to query this device's index remotely. | X | X |  |  |  |
| [SafeSearchPermissions](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#search-safesearchpermissions) | Specify the level of safe search (filtering adult content) required. |  | X |  |  |  |



## Security

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAddProvisioningPackage](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#security-allowaddprovisioningpackage) | Specify whether to allow installation of provisioning packages. | X | X | X |  | X |
| [AllowManualRootCertificateInstallation](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#security-allowmanualrootcertificateinstallation) | Specify whether the user is allowed to manually install root and intermediate CA certificates. |  | X |  |  |  |
| [AllowRemoveProvisioningPackage](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#security-allowremoveprovisioningpackage) | Specify whether removal of provisioning packages is allowed. | X | X | X |  | X |
| [AntiTheftMode](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#security-antitheftmode) | Allow or disallow Anti Theft Mode on the device. |  | X |  |  |  |
| [RequireDeviceEncryption](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#security-requiredeviceencryption) | Specify whether encryption is required. | X | X | X | X | X |
| [RequireProvisioningPackageSignature](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#security-requireprovisioningpackagesignature) | Specify whether provisioning packages must have a certificate signed by a device-trusted authority. | X | X | X |  | X |
| [RequireRetrieveHealthCertificateOnBoot](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#security-requireretrievehealthcertificateonboot) | Specify whether to retrieve and post TCG Boot logs, and get or cache an encrypted or signed Health Attestation Report from the Microsoft Health Attestation Service when a device boots or reboots. | X | X |  |  |  |

## Settings

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAutoPlay](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#settings-allowautoplay) | Allow the user to change AutoPlay settings. |  | X |  |  |  |
| [AllowDataSense](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#settings-allowdatasense) | Allow the user to change Data Sense settings. |  | X |  |  |  |
| [AllowVPN](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#settings-allowvpn) | Allow the user to change VPN settings. |  | X |  | X |  |
| [ConfigureTaskbarCalendar](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#settings-configuretaskbarcalendar) | Configure the default setting for showing additional calendars (besides the default calendar for the locale) in the taskbar clock and calendar flyout. | X |  |  |  |  |
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
DisableContextMenus | Prevent context menus from being invoked in the Start menu.  | X |  |  |  |  |
| [ForceStartSize](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-forcestartsize) | Force the size of the Start screen. | X |  |  |  |  |
| [HideAppList](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hideapplist) | Collapse or remove the all apps list. | X |  |  |  |  |
| [HideChangeAccountSettings](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hidechangeaccountsettings) | Hide **Change account settings** from appearing in the user tile. | X |  |  |  |  |
| [HideFrequentlyUsedApps](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hidefrequentlyusedapps) | Hide **Most used** section of Start.  | X |  |  |  |  |
| [HideHibernate](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hidehibernate) | Prevent **Hibernate** option from appearing in the Power button. | X |  |  |  |  |
| [HideLock](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hidelock) | Prevent **Lock** from appearing in the user tile. | X |  |  |  |  |
| HidePeopleBar | Remove the people icon from the taskbar, as well as the corresponding settings toggle. It also prevents users from pinning people to the taskbar. | X |  |  |  |  |
| [HidePowerButton](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hidepowerbutton) | Hide the **Power** button. | X |  |  |  |  |
| [HideRecentJumplists](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hiderecentjumplists) | Hide jumplists of recently opened items. | X |  |  |  |  |
| [HideRecentlyAddedApps](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hiderecentlyaddedapps) | Hide **Recently added** section of Start. | X |  |  |  |  |
| [HideRestart](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hiderestart) | Prevent **Restart** and **Update and restart** from appearing in the Power button. | X |  |  |  |  |
| [HideShutDown](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hideshutdown) | Prevent **Shut down** and **Update and shut down** from appearing in the Power button.  | X |  |  |  |  |
| [HideSignOut](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hidesignout) | Prevent **Sign out** from appearing in the user tile. | X |  |  |  |  |
| [HideSleep](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hidesleep) | Prevent **Sleep** from appearing in the Power button. | X |  |  |  |  |
| [HideSwitchAccount](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hideswitchaccount) | Prevent **Switch account** from appearing in the user tile. | X |  |  |  |  |
| [HideUserTile](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-hideusertile)  |  Hide the user tile. | X |  |  |  |  |
| [ImportEdgeAssets](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-importedgeassets) | Import Edge assets for secondary tiles. For more information, see [Add image for secondary Microsoft Edge tiles](https://docs.microsoft.com/windows/configuration/start-secondary-tiles).  | X |  |  |  |  |
| [NoPinningToTaskbar](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-nopinningtotaskbar) | Prevent users from pinning and unpinning apps on the taskbar. | X |  |  |  |  |
| [StartLayout](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#start-startlayout) | Apply a custom Start layout. For more information, see [Customize Windows 10 Start and taskbar with provisioning packages](https://docs.microsoft.com/windows/configuration/customize-windows-10-start-screens-by-using-provisioning-packages-and-icd) | X |  |  |  |  |

## System

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowBuildPreview](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#system-allowbuildpreview) | Specify whether users can access the Insider build controls in the **Advanced Options** for Windows Update. | X | X |  |  |  |
| [AllowEmbeddedMode](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#system-allowembeddedmode) | Specify whether to set general purpose device to be in embedded mode. | X | X | X |  | X |
| [AllowExperimentation](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#system-allowexperimentation) | Determine the level that Microsoft can experiment with the product to study user preferences or device behavior. | X | X |  |  |  |
| [AllowLocation](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#system-allowlocation) | Specify whether to allow app access to the Location service. | X | X | X | X | X |
| [AllowStorageCard](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#system-allowstoragecard) | Specify whether the user is allowed to use the storage card for device storage. | X | X | X |  | X |
| [AllowTelemetry](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#system-allowtelemetry) | Allow the device to send diagnostic and usage data. | X | X |  | X |  |
| [AllowUserToResetPhone](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#system-allowusertoresetphone) | Allow the user to factory reset the phone. | X | X |  |  |  |
ConfigureTelemetryOptInChangeNotification | This policy setting determines whether a device shows notifications about telemetry levels to people on first sign-in or when changes occur in Settings.  | X | X |  |  |  |
ConfigureTelemetryOptInSettingsUx | This policy setting determines whether people can change their own telemetry levels in Settings  | X | X |  |  |  |
| DisableDeviceDelete | Specify whether the delete diagnostic data is enabled in the Diagnostic & Feedback Settings page. | X | X |  |  |  |
| DisableDataDiagnosticViewer | Configure whether users can enable and launch the Diagnostic Data Viewer from the Diagnostic & Feedback Settings page. | X | X |  |  |  |
| [DisableOneDriveFileSync](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#system-disableonedrivefilesync) | Prevent apps and features from working with files on OneDrive. | X |  |  |  |  |
| [LimitEnhancedDiagnosticDataWindowsAnalytics](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-system#system-limitenhanceddiagnosticdatawindowsanalytics) | This policy setting, in combination with the System/AllowTelemetry policy setting, enables organizations to send Microsoft a specific set of diagnostic data for IT insights via Windows Analytics services. To enable this behavior you must enable this policy setting, and set Allow Telemetry to level 2 (Enhanced). When you configure these policy settings, a basic level of diagnostic data plus additional events that are required for Windows Analytics are sent to Microsoft. These events are documented in [Windows 10, version 1703 basic level Windows diagnostic events and fields](https://go.microsoft.com/fwlink/?linkid=847594). Enabling enhanced diagnostic data in the System/AllowTelemetry policy in combination with not configuring this policy will also send the required events for Windows Analytics, plus additional enhanced level diagnostic data. This setting has no effect on computers configured to send full, basic or security level diagnostic data to Microsoft. If you disable or do not configure this policy setting, then the level of diagnostic data sent to Microsoft is determined by the System/AllowTelemetry policy.  | X | X |  |  |  |


## TextInput

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowIMELogging](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowimelogging) | Allow the user to turn on and off the logging for incorrect conversion and saving auto-tuning result to a file and history-based predictive input. | X |  |  |  |  |
| [AllowIMENetworkAccess](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowimenetworkaccess) | Allow the user to turn on Open Extended Dictionary, Internet search integration, or cloud candidate features to provide input suggestions that do not exist in the device's local dictionary. | X |  |  |  |  |
| [AllowInputPanel](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowinputpanel) | Disable the touch/handwriting keyboard. | X |  |  |  |  |
| [AllowJapaneseIMESurrogatePairCharacters](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowjapaneseimesurrogatepaircharacters) | Allow the Japanese IME surrogate pair characters. | X |  |  |  |  |
| [AllowJapaneseIVSCharacters](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowjapaneseivscharacters) | Allow Japanese Ideographic Variation Sequence (IVS) characters. | X |  |  |  |  |
| [AllJapaneseNonPublishingStandardGlyph](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowjapanesenonpublishingstandardglyph) | All the Japanese non-publishing standard glyph. | X |  |  |  |  |
| [AllowJapaneseUserDictionary](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowjapaneseuserdictionary) | Allow the Japanese user dictionary. | X |  |  |  |  |
| [AllowKeyboardTextSuggestions](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowkeyboardtextsuggestions) | Specify whether text prediction is enabled or disabled for the on-screen keyboard, touch keyboard, and handwriting recognition tool. | X |  |  |  |  |
| [AllowLanguageFeaturesUninstall](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#textinput-allowlanguagefeaturesuninstall) | All language features to be uninstalled. | X |  |  |  |  |
| AllowUserInputsFromMiracastRecevier | Do not use. Instead, use [WirelessDisplay](#wirelessdisplay)/[AllowUserInputFromWirelessDisplayReceiver](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#wirelessdisplay-allowuserinputfromwirelessdisplayreceiver)  |  |  |  |  |  |
| [ExcludeJapaneseIMEExceptISO208](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#textinput-excludejapaneseimeexceptjis0208) | Allow users to restrict character code range of conversion by setting the character filter.  | X |  |  |  |  |
| [ExcludeJapaneseIMEExceptISO208andEUDC](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#textinput-excludejapaneseimeexceptjis0208andeudc) | Allow users to restrict character code range of conversion by setting the character filter.  | X |  |  |  |  |
| [ExcludeJapaneseIMEExceptShiftJIS](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#textinput-excludejapaneseimeexceptshiftjis) | Allow users to restrict character code range of conversion by setting the character filter. | X |  |  |  |  |


## TimeLanguageSettings

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowSet24HourClock](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#timelanguagesettings-allowset24hourclock) | Configure the default clock setting to be the 24 hour format. |  | X |  |  |  |


## Update

|                                                                                                   Setting                                                                                                    |                                                                      Description                                                                      | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------:|:---------------:|:-----------:|:--------:|:--------:|
|                                    [ActiveHoursEnd](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-activehoursend)                                    |                    Use with **Update/ActiveHoursStart** to manage the range of active hours where update rboots are not scheduled.                    |        X         |        X        |      X      |          |    X     |
|                               [ActiveHoursMaxRange](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-activehoursmaxrange)                               |                                                        Specify the maximum active hours range.                                                        |        X         |        X        |      X      |          |    X     |
|                                  [ActiveHoursStart](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-activehoursstart)                                  |                    Use with **Update/ActiveHoursEnd** to manage the range of active hours where update reboots are not scheduled.                     |        X         |        X        |      X      |          |    X     |
|                                   [AllowAutoUpdate](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-allowautoupdate)                                   |                                      Configure automatic update behavior to scan, download, and install updates.                                      |        X         |        X        |      X      |    X     |    X     |
|            [AllowAutoWindowsUpdateDownloadOverMeteredNetwork](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowautowindowsupdatedownloadovermeterednetwork)            |          Option to download updates automatically over metered connections (off by default). Enter `0` for not allowed, or `1` for allowed.           |        X         |        X        |      X      |          |    X     |
|                              [AllowMUUpdateService](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-allowmuupdateservice)                              |                                             Manage whether to scan for app updates from Microsoft Update.                                             |        X         |        X        |      X      |    X     |    X     |
|                     [AllowNonMicrosoftSignedUpdate](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-allownonmicrosoftsignedupdate)                     |  Manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found at the UpdateServiceUrl location.  |        X         |        X        |      X      |          |    X     |
|                                [AllowUpdateService](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-allowupdateservice)                                |                    Specify whether the device can use Microsoft Update, Windows Server Update Services (WSUS), or Microsoft Store.                    |        X         |        X        |      X      |    X     |    X     |
|                             [AutoRestartDeadlinePeriodInDays](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-autorestartdeadlineperiodindays)                             |          Specify number of days (between 2 and 30) after which a forced restart will occur outside of active hours when restart is pending.           |        X         |        X        |      X      |          |    X     |
|            [AutoRestartDeadlinePeriodInDaysForFeatureUpdates](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-autorestartdeadlineperiodindaysforfeatureupdates)            |          Specify number of days (between 2 and 30) after which a forced restart will occur outside of active hours when restart is pending.           |        X         |        X        |      X      |          |    X     |
|                   [AutoRestartNotificationSchedule](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-autorestartnotificationschedule)                   |                                              Specify the period for auto-restart reminder notifications.                                              |        X         |        X        |      X      |          |    X     |
|          [AutoRestartRequiredNotificationDismissal](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-autorestartrequirednotificationdismissal)          |                                   Specify the method by which the auto-restart required notification is dismissed.                                    |        X         |        X        |      X      |          |    X     |
|                              [BranchReadinessLevel](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-branchreadinesslevel)                              |                                               Select which branch a device receives their updates from.                                               |        X         |        X        |      X      |    X     |    X     |
|                   [DeferFeatureUpdatesPeriodInDays](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-deferfeatureupdatesperiodindays)                   |                                                Defer Feature Updates for the specified number of days.                                                |        X         |        X        |      X      |          |    X     |
|                   [DeferQualityUpdatesPeriodInDays](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-deferqualityupdatesperiodindays)                   |                                                Defer Quality Updates for the specified number of days.                                                |        X         |        X        |      X      |          |    X     |
|                                           [DeferUpdatePeriod](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-deferupdateperiod)                                           |                                                       Specify update delays for up to 4 weeks.                                                        |        X         |        X        |      X      |    X     |    X     |
|                                          [DeferUpgradePeriod](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-deferupgradeperiod)                                          |                                                      Specify upgrade delays for up to 8 months.                                                       |        X         |        X        |      X      |    X     |    X     |
|                                [DetectionFrequency](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-detectionfrequency)                                |                                           Specify the frequency to scan for updates, from every 1-22 hours.                                           |        X         |        X        |      X      |    X     |    X     |
|                                             [DisableDualScan](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-disabledualscan)                                             |                                     Do not allow update deferral policies to cause scans against Windows Update.                                      |        X         |        X        |      X      |          |    X     |
|                            [EngagedRestartDeadline](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-engagedrestartdeadline)                            |                 Specify the deadline in days before automatically scheduling and executing a pending restart outside of active hours.                 |        X         |        X        |      X      |          |    X     |
|           [EngagedRestartDeadlineForFeatureUpdates](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-engagedrestartdeadlineforfeatureupdates)           |                 Specify the deadline in days before automatically scheduling and executing a pending restart outside of active hours.                 |        X         |        X        |      X      |          |    X     |
|                      [EngagedRestartSnoozeSchedule](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-engagedrestartsnoozeschedule)                      |                                 Specify the number of days a user can snooze Engaged restart reminder notifications.                                  |        X         |        X        |      X      |          |    X     |
|     [EngagedRestartSnoozeScheduleForFeatureUpdates](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-engagedrestartsnoozescheduleforfeatureupdates)     |                                 Specify the number of days a user can snooze Engaged restart reminder notifications.                                  |        X         |        X        |      X      |          |    X     |
|                  [EngagedRestartTransitionSchedule](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-engagedrestarttransitionschedule)                  | Specify the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. |        X         |        X        |      X      |          |    X     |
| [EngagedRestartTransitionScheduleForFeatureUpdates](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-engagedrestarttransitionscheduleforfeatureupdates) | Specify the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. |        X         |        X        |      X      |          |    X     |
|                   [ExcludeWUDriversInQualityUpdate](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-excludewudriversinqualityupdate)                   |                                              Exclude Windws Update (WU) drivers during quality updates.                                               |        X         |                 |      X      |          |    X     |
|                              [FillEmptyContentUrls](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-fillemptycontenturls)                              |                            Allow Windows Update Agent to determine the download URL when it is missing from the metadata.                             |        X         |        X        |      X      |          |    X     |
|                                                                                             ManagePreviewBuilds                                                                                              |                                                       Use to enable or disable preview builds.                                                        |        X         |        X        |      X      |    X     |    X     |
|                                                                                           PhoneUpdateRestrictions                                                                                            |                                                                      Deprecated                                                                       |                  |        X        |             |          |          |
|                               [RequireDeferUpgrade](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-requiredeferupgrade)                               |                                      Configure device to receive updates from Current Branch for Business (CBB).                                      |        X         |        X        |      X      |    X     |    X     |
|                               [ScheduledInstallDay](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-scheduledinstallday)                               |                                                       Schedule the day for update installation.                                                       |        X         |        X        |      X      |    X     |    X     |
|                                   [ScheduledInstallEveryWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstalleveryweek)                                   |                                           To schedule update installation every week, set the value as `1`.                                           |        X         |        X        |      X      |    X     |    X     |
|                                   [ScheduledInstallFirstWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallfirstweek)                                   |                                  To schedule update installation the first week of the month, see the value as `1`.                                   |        X         |        X        |      X      |    X     |    X     |
|                                  [ScheduledInstallFourthWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallfourthweek)                                  |                                  To schedule update installation the fourth week of the month, see the value as `1`.                                  |        X         |        X        |      X      |    X     |    X     |
|                                  [ScheduledInstallSecondWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallsecondweek)                                  |                                  To schedule update installation the second week of the month, see the value as `1`.                                  |        X         |        X        |      X      |    X     |    X     |
|                                   [ScheduledInstallThirdWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallthirdweek)                                   |                                  To schedule update installation the third week of the month, see the value as `1`.                                   |        X         |        X        |      X      |    X     |    X     |
|                              [ScheduledInstallTime](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-scheduledinstalltime)                              |                                                      Schedule the time for update installation.                                                       |        X         |        X        |      X      |    X     |    X     |
|                    [ScheduleImminentRestartWarning](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-scheduleimminentrestartwarning)                    |                                          Specify the period for auto-restart imminent warning notifications.                                          |        X         |        X        |      X      |          |    X     |
|                            [ScheduleRestartWarning](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-schedulerestartwarning)                            |                                          Specify the period for auto-restart warning reminder notifications.                                          |        X         |        X        |      X      |          |    X     |
|                 [SetAutoRestartNotificationDisable](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-setautorestartnotificationdisable)                 |                                             Disable auto-restart notifications for update installations.                                              |        X         |        X        |      X      |          |    X     |
|                           [SetDisablePauseUXAccess](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-setdisablepauseuxaccess)                           |                                                        Disable access to scan Windows Update.                                                         |        X         |        X        |      X      |          |    X     |
|                              [SetDisableUXWUAccess](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-setdisableuxwuaccess)                              |                                                        Disable the **Pause updates** feature.                                                         |        X         |        X        |      X      |          |    X     |
|                                     [SetEDURestart](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-setedurestart)                                     |                            Skip the check for battery level to ensure that the reboot will happen at ScheduledInstallTime.                            |        X         |        X        |      X      |          |    X     |
|                                                                                           UpdateNotificationLevel                                                                                            |                            Specify whether to enable or disable Windows Update notifications, including restart warnings.                             |        X         |        X        |      X      |          |    X     |
|                                  [UpdateServiceUrl](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-updateserviceurl)                                  |                               Configure the device to check for updates from a WSUS server instead of Microsoft Update.                               |        X         |        X        |      X      |    X     |    X     |
|                         [UpdateServiceUrlAlternate](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#update-updateserviceurlalternate)                         |                                      Specify an alternate intranet server to host updates from Microsoft Update.                                      |        X         |        X        |      X      |    X     |    X     |

## WiFi

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAutoConnectToWiFiSenseHotspots](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#wifi-allowautoconnecttowifisensehotspots) | Allow the device to connect automatically to Wi-Fi hotspots. | X | X |  |  |  |
| [AllowInternetSharing](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#wifi-allowinternetsharing) | Allow Internet sharing. | X | X |  |  |  |
| [AllowManualWiFiConfiguration](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#wifi-allowmanualwificonfiguration) | Allow connecting to Wi-Fi outside of MDM server-installed networks. |  | X |  |  |  |
| [AllowWiFi](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#wifi-allowwifi) | Allow Wi-Fi connections. |  | X |  |  |  |
| [WLANScanMode](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#wifi-wlanscanmode) | Configure the WLAN scanning behavior and how aggressively devices should be actively scanning for Wi-Fi networks to get devices connected. | X | X | X |  | X |

## WindowsInkWorkspace

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowSuggestedAppsInWindowsInkWorkspace](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#windowsinkworkspace-allowsuggestedappsinwindowsinkworkspace) | Show recommended app suggestions in the ink workspace. | X |  |  |  |  |
| [AllowWindowsInkWorkspace](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#windowsinkworkspace-allowwindowsinkworkspace) | Specify whether to allow the user to access the ink workspace. | X |  |  |  |  |


## WindowsLogon

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [HideFastUserSwitching](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#windowslogon-hidefastuserswitching) | Hide the **Switch account** button on the sign-in screen, Start, and the Task Manager. | X |  |  |  |  |

## WirelessDisplay

| Setting | Description | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | --- | :---: | :---: | :---: | :---: | :---: |
| [AllowUserInputFromWirelessDisplayReceiver](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#wirelessdisplay-allowuserinputfromwirelessdisplayreceiver) | This policy controls whether or not the wireless display can send input (keyboard, mouse, pen, and touch, dependent upon display support) back to the source device. For example, a Surface Laptop is projecting wirelessly to a Surface Hub. If input from the wireless display receiver is allowed, users can draw with a pen on the Surface Hub.  | X | X |  |  |  |
