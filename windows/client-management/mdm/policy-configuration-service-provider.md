---
title: Policy CSP
description: Policy CSP
ms.assetid: 4F3A1134-D401-44FC-A583-6EDD3070BA4F
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 07/07/2017
---

# Policy CSP

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The Policy configuration service provider enables the enterprise to configure policies on Windows 10. Use this configuration service provider to configure any company policies.

The Policy configuration service provider has the following sub-categories:

-   Policy/Config/*AreaName* – Handles the policy configuration request from the server.
-   Policy/Result/*AreaName* – Provides a read-only path to policies enforced on the device.

The following diagram shows the Policy configuration service provider in tree format as used by both Open Mobile Alliance Device Management (OMA DM) and OMA Client Provisioning.

![policy csp diagram](images/provisioning-csp-policy.png)


<a href="" id="--vendor-msft-policy"></a>**./Vendor/MSFT/Policy**  
<p style="margin-left: 20px">The root node for the Policy configuration service provider.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-config"></a>**Policy/Config**  
<p style="margin-left: 20px">Node for grouping all policies configured by one source. The configuration source can use this path to set policy values and later query any policy value that it previously set. One policy can be configured by multiple configuration sources. If a configuration source wants to query the result of conflict resolution (for example, if Exchange and MDM both attempt to set a value,) the configuration source can use the Policy/Result path to retrieve the resulting value.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-config-areaname"></a>**Policy/Config/****_AreaName_**  
<p style="margin-left: 20px">The area group that can be configured by a single technology for a single provider. Once added, you cannot change the value.

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="policy-config-areaname-policyname"></a>**Policy/Config/****_AreaName/PolicyName_**  
<p style="margin-left: 20px">Specifies the name/value pair used in the policy.

<p style="margin-left: 20px">The following list shows some tips to help you when configuring policies:

-   Separate substring values by the Unicode &\#xF000; in the XML file.

> [!NOTE]
> A query from a different caller could provide a different value as each caller could have different values for a named policy.

-   In SyncML, wrap this policy with the Atomic command so that the policy settings are treated as a single transaction.
-   Supported operations are Add, Get, Delete, and Replace.
-   Value type is string.

<a href="" id="policy-result"></a>**Policy/Result**  
<p style="margin-left: 20px">Groups the evaluated policies from all providers that can be configured.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-result-areaname"></a>**Policy/Result/****_AreaName_**  
<p style="margin-left: 20px">The area group that can be configured by a single technology independent of the providers.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-result-areaname-policyname"></a>**Policy/Result/****_AreaName/PolicyName_**  
<p style="margin-left: 20px">Specifies the name/value pair used in the policy.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-result"></a>**Policy/ConfigOperations**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. The root node for grouping different configuration operations.

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="policy-configoperations-admxinstall"></a>**Policy/ConfigOperations/ADMXInstall**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows settings for ADMX files for Win32 and Centennial apps to be imported (ingested) by your device and processed into new ADMX-backed policies or preferences. By using ADMXInstall, you can add ADMX-backed polices for those Win32 or Centennial apps that have been added between OS releases. ADMX-backed policies are ingested to your device by using the Policy CSP URI: `./Vendor/MSFT/Policy/ConfigOperations/ADMXInstall`. Each ADMX-backed policy or preference that is added is assigned a unique ID. For more information about using Policy CSP to configure Win32 and Centennial app policies, see [Win32 and Centennial app policy configuration](win32-and-centennial-app-policy-configuration.md).

> [!NOTE]
> The OPAX settings that are managed by the Microsoft Office Customization Tool are not supported by MDM. For more information about this tool, see [Office Customization Tool](https://technet.microsoft.com/en-us/library/cc179097.aspx).

<p style="margin-left: 20px">ADMX files that have been installed by using **ConfigOperations/ADMXInstall** can later be deleted by using the URI delete operation. Deleting an ADMX file will delete the ADMX file from disk, remove the metadata from the ADMXdefault registry hive, and delete all the policies that were set from the file. The MDM server can also delete all ADMX policies that are tied to a particular app by calling delete on the URI, `./Vendor/MSFT/Policy/ConfigOperations/ADMXInstall/{AppName}`.

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="policy-configoperations-admxinstall-appname"></a>**Policy/ConfigOperations/ADMXInstall/****_AppName_**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the name of the Win32 or Centennial app associated with the ADMX file. 

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="policy-configoperations-admxinstall-appname-policy"></a>**Policy/ConfigOperations/ADMXInstall/****_AppName_/Policy**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies that a Win32 or Centennial app policy is to be imported.

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="policy-configoperations-admxinstall-appname-policy-uniqueid"></a>**Policy/ConfigOperations/ADMXInstall/****_AppName_/Policy/_UniqueID_**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the unique ID of the app ADMX file that contains the policy to import.

<p style="margin-left: 20px">Supported operations are Add and Get. Does not support Delete.

<a href="" id="policy-configoperations-admxinstall-appname-preference"></a>**Policy/ConfigOperations/ADMXInstall/****_AppName_/Preference**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies that a Win32 or Centennial app preference is to be imported.

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="policy-configoperations-admxinstall-appname-preference-uniqueid"></a>**Policy/ConfigOperations/ADMXInstall/****_AppName_/Preference/_UniqueID_**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the unique ID of the app ADMX file that contains the preference to import.

<p style="margin-left: 20px">Supported operations are Add and Get. Does not support Delete.

> [!Note]  
> The policies supported in Windows 10 S is the same as in Windows 10 Pro, except that policies under AppliationsDefaults are not suppported in Windows 10 S.

## Policies

### AboveLock policies

<dl>
  <dd>
    <a href="./policy-csp-abovelock.md#abovelock-allowactioncenternotifications" id="abovelock-allowactioncenternotifications">AboveLock/AllowActionCenterNotifications</a>
  </dd>
  <dd>
    <a href="./policy-csp-abovelock.md#abovelock-allowcortanaabovelock" id="abovelock-allowcortanaabovelock">AboveLock/AllowCortanaAboveLock</a>
  </dd>
  <dd>
    <a href="./policy-csp-abovelock.md#abovelock-allowtoasts" id="abovelock-allowtoasts">AboveLock/AllowToasts</a>
  </dd>
</dl>

### Accounts policies

<dl>
  <dd>
    <a href="./policy-csp-accounts.md#accounts-allowaddingnonmicrosoftaccountsmanually" id="accounts-allowaddingnonmicrosoftaccountsmanually">Accounts/AllowAddingNonMicrosoftAccountsManually</a>
  </dd>
  <dd>
    <a href="./policy-csp-accounts.md#accounts-allowmicrosoftaccountconnection" id="accounts-allowmicrosoftaccountconnection">Accounts/AllowMicrosoftAccountConnection</a>
  </dd>
  <dd>
    <a href="./policy-csp-accounts.md#accounts-allowmicrosoftaccountsigninassistant" id="accounts-allowmicrosoftaccountsigninassistant">Accounts/AllowMicrosoftAccountSignInAssistant</a>
  </dd>
  <dd>
    <a href="./policy-csp-accounts.md#accounts-domainnamesforemailsync" id="accounts-domainnamesforemailsync">Accounts/DomainNamesForEmailSync</a>
  </dd>
</dl>

### ActiveXControls policies

<dl>
  <dd>
    <a href="./policy-csp-activexcontrols.md#activexcontrols-approvedinstallationsites" id="activexcontrols-approvedinstallationsites">ActiveXControls/ApprovedInstallationSites</a>
  </dd>
</dl>

### ApplicationDefaults policies

<dl>
  <dd>
    <a href="./policy-csp-applicationdefaults.md#applicationdefaults-defaultassociationsconfiguration" id="applicationdefaults-defaultassociationsconfiguration">ApplicationDefaults/DefaultAssociationsConfiguration</a>
  </dd>
</dl>

### ApplicationManagement policies

<dl>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-allowalltrustedapps" id="applicationmanagement-allowalltrustedapps">ApplicationManagement/AllowAllTrustedApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-allowappstoreautoupdate" id="applicationmanagement-allowappstoreautoupdate">ApplicationManagement/AllowAppStoreAutoUpdate</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-allowdeveloperunlock" id="applicationmanagement-allowdeveloperunlock">ApplicationManagement/AllowDeveloperUnlock</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-allowgamedvr" id="applicationmanagement-allowgamedvr">ApplicationManagement/AllowGameDVR</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-allowshareduserappdata" id="applicationmanagement-allowshareduserappdata">ApplicationManagement/AllowSharedUserAppData</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-allowstore" id="applicationmanagement-allowstore">ApplicationManagement/AllowStore</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-applicationrestrictions" id="applicationmanagement-applicationrestrictions">ApplicationManagement/ApplicationRestrictions</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-disablestoreoriginatedapps" id="applicationmanagement-disablestoreoriginatedapps">ApplicationManagement/DisableStoreOriginatedApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-requireprivatestoreonly" id="applicationmanagement-requireprivatestoreonly">ApplicationManagement/RequirePrivateStoreOnly</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-restrictappdatatosystemvolume" id="applicationmanagement-restrictappdatatosystemvolume">ApplicationManagement/RestrictAppDataToSystemVolume</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-restrictapptosystemvolume" id="applicationmanagement-restrictapptosystemvolume">ApplicationManagement/RestrictAppToSystemVolume</a>
  </dd>
</dl>

### AppVirtualization policies

<dl>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-allowappvclient" id="appvirtualization-allowappvclient">AppVirtualization/AllowAppVClient</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-allowdynamicvirtualization" id="appvirtualization-allowdynamicvirtualization">AppVirtualization/AllowDynamicVirtualization</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-allowpackagecleanup" id="appvirtualization-allowpackagecleanup">AppVirtualization/AllowPackageCleanup</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-allowpackagescripts" id="appvirtualization-allowpackagescripts">AppVirtualization/AllowPackageScripts</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-allowpublishingrefreshux" id="appvirtualization-allowpublishingrefreshux">AppVirtualization/AllowPublishingRefreshUX</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-allowreportingserver" id="appvirtualization-allowreportingserver">AppVirtualization/AllowReportingServer</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-allowroamingfileexclusions" id="appvirtualization-allowroamingfileexclusions">AppVirtualization/AllowRoamingFileExclusions</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-allowroamingregistryexclusions" id="appvirtualization-allowroamingregistryexclusions">AppVirtualization/AllowRoamingRegistryExclusions</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-allowstreamingautoload" id="appvirtualization-allowstreamingautoload">AppVirtualization/AllowStreamingAutoload</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-clientcoexistenceallowmigrationmode" id="appvirtualization-clientcoexistenceallowmigrationmode">AppVirtualization/ClientCoexistenceAllowMigrationmode</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-integrationallowrootglobal" id="appvirtualization-integrationallowrootglobal">AppVirtualization/IntegrationAllowRootGlobal</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-integrationallowrootuser" id="appvirtualization-integrationallowrootuser">AppVirtualization/IntegrationAllowRootUser</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-publishingallowserver1" id="appvirtualization-publishingallowserver1">AppVirtualization/PublishingAllowServer1</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-publishingallowserver2" id="appvirtualization-publishingallowserver2">AppVirtualization/PublishingAllowServer2</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-publishingallowserver3" id="appvirtualization-publishingallowserver3">AppVirtualization/PublishingAllowServer3</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-publishingallowserver4" id="appvirtualization-publishingallowserver4">AppVirtualization/PublishingAllowServer4</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-publishingallowserver5" id="appvirtualization-publishingallowserver5">AppVirtualization/PublishingAllowServer5</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-streamingallowcertificatefilterforclient_ssl" id="appvirtualization-streamingallowcertificatefilterforclient_ssl">AppVirtualization/StreamingAllowCertificateFilterForClient_SSL</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-streamingallowhighcostlaunch" id="appvirtualization-streamingallowhighcostlaunch">AppVirtualization/StreamingAllowHighCostLaunch</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-streamingallowlocationprovider" id="appvirtualization-streamingallowlocationprovider">AppVirtualization/StreamingAllowLocationProvider</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-streamingallowpackageinstallationroot" id="appvirtualization-streamingallowpackageinstallationroot">AppVirtualization/StreamingAllowPackageInstallationRoot</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-streamingallowpackagesourceroot" id="appvirtualization-streamingallowpackagesourceroot">AppVirtualization/StreamingAllowPackageSourceRoot</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-streamingallowreestablishmentinterval" id="appvirtualization-streamingallowreestablishmentinterval">AppVirtualization/StreamingAllowReestablishmentInterval</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-streamingallowreestablishmentretries" id="appvirtualization-streamingallowreestablishmentretries">AppVirtualization/StreamingAllowReestablishmentRetries</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-streamingsharedcontentstoremode" id="appvirtualization-streamingsharedcontentstoremode">AppVirtualization/StreamingSharedContentStoreMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-streamingsupportbranchcache" id="appvirtualization-streamingsupportbranchcache">AppVirtualization/StreamingSupportBranchCache</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-streamingverifycertificaterevocationlist" id="appvirtualization-streamingverifycertificaterevocationlist">AppVirtualization/StreamingVerifyCertificateRevocationList</a>
  </dd>
  <dd>
    <a href="./policy-csp-appvirtualization.md#appvirtualization-virtualcomponentsallowlist" id="appvirtualization-virtualcomponentsallowlist">AppVirtualization/VirtualComponentsAllowList</a>
  </dd>
</dl>

### AttachmentManager policies

<dl>
  <dd>
    <a href="./policy-csp-attachmentmanager.md#attachmentmanager-donotpreservezoneinformation" id="attachmentmanager-donotpreservezoneinformation">AttachmentManager/DoNotPreserveZoneInformation</a>
  </dd>
  <dd>
    <a href="./policy-csp-attachmentmanager.md#attachmentmanager-hidezoneinfomechanism" id="attachmentmanager-hidezoneinfomechanism">AttachmentManager/HideZoneInfoMechanism</a>
  </dd>
  <dd>
    <a href="./policy-csp-attachmentmanager.md#attachmentmanager-notifyantivirusprograms" id="attachmentmanager-notifyantivirusprograms">AttachmentManager/NotifyAntivirusPrograms</a>
  </dd>
</dl>

### Authentication policies

<dl>
  <dd>
    <a href="./policy-csp-authentication.md#authentication-alloweapcertsso" id="authentication-alloweapcertsso">Authentication/AllowEAPCertSSO</a>
  </dd>
  <dd>
    <a href="./policy-csp-authentication.md#authentication-allowfastreconnect" id="authentication-allowfastreconnect">Authentication/AllowFastReconnect</a>
  </dd>
  <dd>
    <a href="./policy-csp-authentication.md#authentication-allowsecondaryauthenticationdevice" id="authentication-allowsecondaryauthenticationdevice">Authentication/AllowSecondaryAuthenticationDevice</a>
  </dd>
</dl>

### Autoplay policies

<dl>
  <dd>
    <a href="./policy-csp-autoplay.md#autoplay-disallowautoplayfornonvolumedevices" id="autoplay-disallowautoplayfornonvolumedevices">Autoplay/DisallowAutoplayForNonVolumeDevices</a>
  </dd>
  <dd>
    <a href="./policy-csp-autoplay.md#autoplay-setdefaultautorunbehavior" id="autoplay-setdefaultautorunbehavior">Autoplay/SetDefaultAutoRunBehavior</a>
  </dd>
  <dd>
    <a href="./policy-csp-autoplay.md#autoplay-turnoffautoplay" id="autoplay-turnoffautoplay">Autoplay/TurnOffAutoPlay</a>
  </dd>
</dl>

### Bitlocker policies

<dl>
  <dd>
    <a href="./policy-csp-bitlocker.md#bitlocker-encryptionmethod" id="bitlocker-encryptionmethod">Bitlocker/EncryptionMethod</a>
  </dd>
</dl>

### Bluetooth policies

<dl>
  <dd>
    <a href="./policy-csp-bluetooth.md#bluetooth-allowadvertising" id="bluetooth-allowadvertising">Bluetooth/AllowAdvertising</a>
  </dd>
  <dd>
    <a href="./policy-csp-bluetooth.md#bluetooth-allowdiscoverablemode" id="bluetooth-allowdiscoverablemode">Bluetooth/AllowDiscoverableMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-bluetooth.md#bluetooth-allowprepairing" id="bluetooth-allowprepairing">Bluetooth/AllowPrepairing</a>
  </dd>
  <dd>
    <a href="./policy-csp-bluetooth.md#bluetooth-localdevicename" id="bluetooth-localdevicename">Bluetooth/LocalDeviceName</a>
  </dd>
  <dd>
    <a href="./policy-csp-bluetooth.md#bluetooth-servicesallowedlist" id="bluetooth-servicesallowedlist">Bluetooth/ServicesAllowedList</a>
  </dd>
</dl>

### Browser policies

<dl>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowaddressbardropdown" id="browser-allowaddressbardropdown">Browser/AllowAddressBarDropdown</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowautofill" id="browser-allowautofill">Browser/AllowAutofill</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowbrowser" id="browser-allowbrowser">Browser/AllowBrowser</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowcookies" id="browser-allowcookies">Browser/AllowCookies</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowdevelopertools" id="browser-allowdevelopertools">Browser/AllowDeveloperTools</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowdonottrack" id="browser-allowdonottrack">Browser/AllowDoNotTrack</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowextensions" id="browser-allowextensions">Browser/AllowExtensions</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowflash" id="browser-allowflash">Browser/AllowFlash</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowflashclicktorun" id="browser-allowflashclicktorun">Browser/AllowFlashClickToRun</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowinprivate" id="browser-allowinprivate">Browser/AllowInPrivate</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowmicrosoftcompatibilitylist" id="browser-allowmicrosoftcompatibilitylist">Browser/AllowMicrosoftCompatibilityList</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowpasswordmanager" id="browser-allowpasswordmanager">Browser/AllowPasswordManager</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowpopups" id="browser-allowpopups">Browser/AllowPopups</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowsearchenginecustomization" id="browser-allowsearchenginecustomization">Browser/AllowSearchEngineCustomization</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowsearchsuggestionsinaddressbar" id="browser-allowsearchsuggestionsinaddressbar">Browser/AllowSearchSuggestionsinAddressBar</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowsmartscreen" id="browser-allowsmartscreen">Browser/AllowSmartScreen</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-clearbrowsingdataonexit" id="browser-clearbrowsingdataonexit">Browser/ClearBrowsingDataOnExit</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-configureadditionalsearchengines" id="browser-configureadditionalsearchengines">Browser/ConfigureAdditionalSearchEngines</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-disablelockdownofstartpages" id="browser-disablelockdownofstartpages">Browser/DisableLockdownOfStartPages</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-enterprisemodesitelist" id="browser-enterprisemodesitelist">Browser/EnterpriseModeSiteList</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-enterprisesitelistserviceurl" id="browser-enterprisesitelistserviceurl">Browser/EnterpriseSiteListServiceUrl</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-firstrunurl" id="browser-firstrunurl">Browser/FirstRunURL</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-homepages" id="browser-homepages">Browser/HomePages</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-preventaccesstoaboutflagsinmicrosoftedge" id="browser-preventaccesstoaboutflagsinmicrosoftedge">Browser/PreventAccessToAboutFlagsInMicrosoftEdge</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-preventfirstrunpage" id="browser-preventfirstrunpage">Browser/PreventFirstRunPage</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-preventlivetiledatacollection" id="browser-preventlivetiledatacollection">Browser/PreventLiveTileDataCollection</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-preventsmartscreenpromptoverride" id="browser-preventsmartscreenpromptoverride">Browser/PreventSmartScreenPromptOverride</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-preventsmartscreenpromptoverrideforfiles" id="browser-preventsmartscreenpromptoverrideforfiles">Browser/PreventSmartScreenPromptOverrideForFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-preventusinglocalhostipaddressforwebrtc" id="browser-preventusinglocalhostipaddressforwebrtc">Browser/PreventUsingLocalHostIPAddressForWebRTC</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-sendintranettraffictointernetexplorer" id="browser-sendintranettraffictointernetexplorer">Browser/SendIntranetTraffictoInternetExplorer</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-setdefaultsearchengine" id="browser-setdefaultsearchengine">Browser/SetDefaultSearchEngine</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-showmessagewhenopeningsitesininternetexplorer" id="browser-showmessagewhenopeningsitesininternetexplorer">Browser/ShowMessageWhenOpeningSitesInInternetExplorer</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-syncfavoritesbetweenieandmicrosoftedge" id="browser-syncfavoritesbetweenieandmicrosoftedge">Browser/SyncFavoritesBetweenIEAndMicrosoftEdge</a>
  </dd>
</dl>

### Camera policies

<dl>
  <dd>
    <a href="./policy-csp-camera.md#camera-allowcamera" id="camera-allowcamera">Camera/AllowCamera</a>
  </dd>
</dl>

### Cellular policies

<dl>
  <dd>
    <a href="./policy-csp-cellular.md#None" id="None">Cellular/ShowAppCellularAccessUI</a>
  </dd>
</dl>

### Connectivity policies

<dl>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-allowbluetooth" id="connectivity-allowbluetooth">Connectivity/AllowBluetooth</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-allowcellulardata" id="connectivity-allowcellulardata">Connectivity/AllowCellularData</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-allowcellulardataroaming" id="connectivity-allowcellulardataroaming">Connectivity/AllowCellularDataRoaming</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-allowconnecteddevices" id="connectivity-allowconnecteddevices">Connectivity/AllowConnectedDevices</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-allownfc" id="connectivity-allownfc">Connectivity/AllowNFC</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-allowusbconnection" id="connectivity-allowusbconnection">Connectivity/AllowUSBConnection</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-allowvpnovercellular" id="connectivity-allowvpnovercellular">Connectivity/AllowVPNOverCellular</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-allowvpnroamingovercellular" id="connectivity-allowvpnroamingovercellular">Connectivity/AllowVPNRoamingOverCellular</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#None" id="None">Connectivity/DiablePrintingOverHTTP</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#None" id="None">Connectivity/DisableDownloadingOfPrintDriversOverHTTP</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#None" id="None">Connectivity/DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-hardeneduncpaths" id="connectivity-hardeneduncpaths">Connectivity/HardenedUNCPaths</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#None" id="None">Connectivity/ProhibitInstallationAndConfigurationOfNetworkBridge</a>
  </dd>
</dl>

### CredentialProviders policies

<dl>
  <dd>
    <a href="./policy-csp-credentialproviders.md#credentialproviders-allowpinlogon" id="credentialproviders-allowpinlogon">CredentialProviders/AllowPINLogon</a>
  </dd>
  <dd>
    <a href="./policy-csp-credentialproviders.md#credentialproviders-blockpicturepassword" id="credentialproviders-blockpicturepassword">CredentialProviders/BlockPicturePassword</a>
  </dd>
  <dd>
    <a href="./policy-csp-credentialproviders.md#credentialproviders-enablewindowsautopilotresetcredentials" id="credentialproviders-enablewindowsautopilotresetcredentials">CredentialProviders/EnableWindowsAutoPilotResetCredentials</a>
  </dd>
</dl>

### CredentialsUI policies

<dl>
  <dd>
    <a href="./policy-csp-credentialsui.md#credentialsui-disablepasswordreveal" id="credentialsui-disablepasswordreveal">CredentialsUI/DisablePasswordReveal</a>
  </dd>
  <dd>
    <a href="./policy-csp-credentialsui.md#credentialsui-enumerateadministrators" id="credentialsui-enumerateadministrators">CredentialsUI/EnumerateAdministrators</a>
  </dd>
</dl>

### Cryptography policies

<dl>
  <dd>
    <a href="./policy-csp-cryptography.md#cryptography-allowfipsalgorithmpolicy" id="cryptography-allowfipsalgorithmpolicy">Cryptography/AllowFipsAlgorithmPolicy</a>
  </dd>
  <dd>
    <a href="./policy-csp-cryptography.md#cryptography-tlsciphersuites" id="cryptography-tlsciphersuites">Cryptography/TLSCipherSuites</a>
  </dd>
</dl>

### DataProtection policies

<dl>
  <dd>
    <a href="./policy-csp-dataprotection.md#dataprotection-allowdirectmemoryaccess" id="dataprotection-allowdirectmemoryaccess">DataProtection/AllowDirectMemoryAccess</a>
  </dd>
  <dd>
    <a href="./policy-csp-dataprotection.md#dataprotection-legacyselectivewipeid" id="dataprotection-legacyselectivewipeid">DataProtection/LegacySelectiveWipeID</a>
  </dd>
</dl>

### DataUsage policies

<dl>
  <dd>
    <a href="./policy-csp-datausage.md#datausage-setcost3g" id="datausage-setcost3g">DataUsage/SetCost3G</a>
  </dd>
  <dd>
    <a href="./policy-csp-datausage.md#datausage-setcost4g" id="datausage-setcost4g">DataUsage/SetCost4G</a>
  </dd>
</dl>

### Defender policies

<dl>
  <dd>
    <a href="./policy-csp-defender.md#defender-allowarchivescanning" id="defender-allowarchivescanning">Defender/AllowArchiveScanning</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-allowbehaviormonitoring" id="defender-allowbehaviormonitoring">Defender/AllowBehaviorMonitoring</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-allowcloudprotection" id="defender-allowcloudprotection">Defender/AllowCloudProtection</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-allowemailscanning" id="defender-allowemailscanning">Defender/AllowEmailScanning</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-allowfullscanonmappednetworkdrives" id="defender-allowfullscanonmappednetworkdrives">Defender/AllowFullScanOnMappedNetworkDrives</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-allowfullscanremovabledrivescanning" id="defender-allowfullscanremovabledrivescanning">Defender/AllowFullScanRemovableDriveScanning</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-allowioavprotection" id="defender-allowioavprotection">Defender/AllowIOAVProtection</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-allowintrusionpreventionsystem" id="defender-allowintrusionpreventionsystem">Defender/AllowIntrusionPreventionSystem</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-allowonaccessprotection" id="defender-allowonaccessprotection">Defender/AllowOnAccessProtection</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-allowrealtimemonitoring" id="defender-allowrealtimemonitoring">Defender/AllowRealtimeMonitoring</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-allowscanningnetworkfiles" id="defender-allowscanningnetworkfiles">Defender/AllowScanningNetworkFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-allowscriptscanning" id="defender-allowscriptscanning">Defender/AllowScriptScanning</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-allowuseruiaccess" id="defender-allowuseruiaccess">Defender/AllowUserUIAccess</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-attacksurfacereductiononlyexclusions" id="defender-attacksurfacereductiononlyexclusions">Defender/AttackSurfaceReductionOnlyExclusions</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-attacksurfacereductionrules" id="defender-attacksurfacereductionrules">Defender/AttackSurfaceReductionRules</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-avgcpuloadfactor" id="defender-avgcpuloadfactor">Defender/AvgCPULoadFactor</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-cloudblocklevel" id="defender-cloudblocklevel">Defender/CloudBlockLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-cloudextendedtimeout" id="defender-cloudextendedtimeout">Defender/CloudExtendedTimeout</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-daystoretaincleanedmalware" id="defender-daystoretaincleanedmalware">Defender/DaysToRetainCleanedMalware</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-enableguardmyfolders" id="defender-enableguardmyfolders">Defender/EnableGuardMyFolders</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-enablenetworkprotection" id="defender-enablenetworkprotection">Defender/EnableNetworkProtection</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-excludedextensions" id="defender-excludedextensions">Defender/ExcludedExtensions</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-excludedpaths" id="defender-excludedpaths">Defender/ExcludedPaths</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-excludedprocesses" id="defender-excludedprocesses">Defender/ExcludedProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-guardedfoldersallowedapplications" id="defender-guardedfoldersallowedapplications">Defender/GuardedFoldersAllowedApplications</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-guardedfolderslist" id="defender-guardedfolderslist">Defender/GuardedFoldersList</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-puaprotection" id="defender-puaprotection">Defender/PUAProtection</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-realtimescandirection" id="defender-realtimescandirection">Defender/RealTimeScanDirection</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-scanparameter" id="defender-scanparameter">Defender/ScanParameter</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-schedulequickscantime" id="defender-schedulequickscantime">Defender/ScheduleQuickScanTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-schedulescanday" id="defender-schedulescanday">Defender/ScheduleScanDay</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-schedulescantime" id="defender-schedulescantime">Defender/ScheduleScanTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-signatureupdateinterval" id="defender-signatureupdateinterval">Defender/SignatureUpdateInterval</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-submitsamplesconsent" id="defender-submitsamplesconsent">Defender/SubmitSamplesConsent</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-threatseveritydefaultaction" id="defender-threatseveritydefaultaction">Defender/ThreatSeverityDefaultAction</a>
  </dd>
</dl>

### DeliveryOptimization policies

<dl>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-doabsolutemaxcachesize" id="deliveryoptimization-doabsolutemaxcachesize">DeliveryOptimization/DOAbsoluteMaxCacheSize</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-doallowvpnpeercaching" id="deliveryoptimization-doallowvpnpeercaching">DeliveryOptimization/DOAllowVPNPeerCaching</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dodownloadmode" id="deliveryoptimization-dodownloadmode">DeliveryOptimization/DODownloadMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dogroupid" id="deliveryoptimization-dogroupid">DeliveryOptimization/DOGroupId</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-domaxcacheage" id="deliveryoptimization-domaxcacheage">DeliveryOptimization/DOMaxCacheAge</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-domaxcachesize" id="deliveryoptimization-domaxcachesize">DeliveryOptimization/DOMaxCacheSize</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-domaxdownloadbandwidth" id="deliveryoptimization-domaxdownloadbandwidth">DeliveryOptimization/DOMaxDownloadBandwidth</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-domaxuploadbandwidth" id="deliveryoptimization-domaxuploadbandwidth">DeliveryOptimization/DOMaxUploadBandwidth</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dominbackgroundqos" id="deliveryoptimization-dominbackgroundqos">DeliveryOptimization/DOMinBackgroundQos</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dominbatterypercentageallowedtoupload" id="deliveryoptimization-dominbatterypercentageallowedtoupload">DeliveryOptimization/DOMinBatteryPercentageAllowedToUpload</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-domindisksizeallowedtopeer" id="deliveryoptimization-domindisksizeallowedtopeer">DeliveryOptimization/DOMinDiskSizeAllowedToPeer</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dominfilesizetocache" id="deliveryoptimization-dominfilesizetocache">DeliveryOptimization/DOMinFileSizeToCache</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dominramallowedtopeer" id="deliveryoptimization-dominramallowedtopeer">DeliveryOptimization/DOMinRAMAllowedToPeer</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-domodifycachedrive" id="deliveryoptimization-domodifycachedrive">DeliveryOptimization/DOModifyCacheDrive</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-domonthlyuploaddatacap" id="deliveryoptimization-domonthlyuploaddatacap">DeliveryOptimization/DOMonthlyUploadDataCap</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dopercentagemaxdownloadbandwidth" id="deliveryoptimization-dopercentagemaxdownloadbandwidth">DeliveryOptimization/DOPercentageMaxDownloadBandwidth</a>
  </dd>
</dl>

### Desktop policies

<dl>
  <dd>
    <a href="./policy-csp-desktop.md#desktop-preventuserredirectionofprofilefolders" id="desktop-preventuserredirectionofprofilefolders">Desktop/PreventUserRedirectionOfProfileFolders</a>
  </dd>
</dl>

### DeviceGuard policies

<dl>
  <dd>
    <a href="./policy-csp-deviceguard.md#deviceguard-enablevirtualizationbasedsecurity" id="deviceguard-enablevirtualizationbasedsecurity">DeviceGuard/EnableVirtualizationBasedSecurity</a>
  </dd>
  <dd>
    <a href="./policy-csp-deviceguard.md#deviceguard-lsacfgflags" id="deviceguard-lsacfgflags">DeviceGuard/LsaCfgFlags</a>
  </dd>
  <dd>
    <a href="./policy-csp-deviceguard.md#deviceguard-requireplatformsecurityfeatures" id="deviceguard-requireplatformsecurityfeatures">DeviceGuard/RequirePlatformSecurityFeatures</a>
  </dd>
</dl>

### DeviceInstallation policies

<dl>
  <dd>
    <a href="./policy-csp-deviceinstallation.md#deviceinstallation-preventinstallationofmatchingdeviceids" id="deviceinstallation-preventinstallationofmatchingdeviceids">DeviceInstallation/PreventInstallationOfMatchingDeviceIDs</a>
  </dd>
  <dd>
    <a href="./policy-csp-deviceinstallation.md#deviceinstallation-preventinstallationofmatchingdevicesetupclasses" id="deviceinstallation-preventinstallationofmatchingdevicesetupclasses">DeviceInstallation/PreventInstallationOfMatchingDeviceSetupClasses</a>
  </dd>
</dl>

### DeviceLock policies

<dl>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-allowidlereturnwithoutpassword" id="devicelock-allowidlereturnwithoutpassword">DeviceLock/AllowIdleReturnWithoutPassword</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-allowscreentimeoutwhilelockeduserconfig" id="devicelock-allowscreentimeoutwhilelockeduserconfig">DeviceLock/AllowScreenTimeoutWhileLockedUserConfig</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-allowsimpledevicepassword" id="devicelock-allowsimpledevicepassword">DeviceLock/AllowSimpleDevicePassword</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-alphanumericdevicepasswordrequired" id="devicelock-alphanumericdevicepasswordrequired">DeviceLock/AlphanumericDevicePasswordRequired</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-devicepasswordenabled" id="devicelock-devicepasswordenabled">DeviceLock/DevicePasswordEnabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-devicepasswordexpiration" id="devicelock-devicepasswordexpiration">DeviceLock/DevicePasswordExpiration</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-devicepasswordhistory" id="devicelock-devicepasswordhistory">DeviceLock/DevicePasswordHistory</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-enforcelockscreenandlogonimage" id="devicelock-enforcelockscreenandlogonimage">DeviceLock/EnforceLockScreenAndLogonImage</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-enforcelockscreenprovider" id="devicelock-enforcelockscreenprovider">DeviceLock/EnforceLockScreenProvider</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-maxdevicepasswordfailedattempts" id="devicelock-maxdevicepasswordfailedattempts">DeviceLock/MaxDevicePasswordFailedAttempts</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-maxinactivitytimedevicelock" id="devicelock-maxinactivitytimedevicelock">DeviceLock/MaxInactivityTimeDeviceLock</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-maxinactivitytimedevicelockwithexternaldisplay" id="devicelock-maxinactivitytimedevicelockwithexternaldisplay">DeviceLock/MaxInactivityTimeDeviceLockWithExternalDisplay</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-mindevicepasswordcomplexcharacters" id="devicelock-mindevicepasswordcomplexcharacters">DeviceLock/MinDevicePasswordComplexCharacters</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-mindevicepasswordlength" id="devicelock-mindevicepasswordlength">DeviceLock/MinDevicePasswordLength</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-preventlockscreenslideshow" id="devicelock-preventlockscreenslideshow">DeviceLock/PreventLockScreenSlideShow</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-screentimeoutwhilelocked" id="devicelock-screentimeoutwhilelocked">DeviceLock/ScreenTimeoutWhileLocked</a>
  </dd>
</dl>

### Display policies

<dl>
  <dd>
    <a href="./policy-csp-display.md#display-turnoffgdidpiscalingforapps" id="display-turnoffgdidpiscalingforapps">Display/TurnOffGdiDPIScalingForApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-display.md#display-turnongdidpiscalingforapps" id="display-turnongdidpiscalingforapps">Display/TurnOnGdiDPIScalingForApps</a>
  </dd>
</dl>

### EnterpriseCloudPrint policies

<dl>
  <dd>
    <a href="./policy-csp-enterprisecloudprint.md#enterprisecloudprint-cloudprintoauthauthority" id="enterprisecloudprint-cloudprintoauthauthority">EnterpriseCloudPrint/CloudPrintOAuthAuthority</a>
  </dd>
  <dd>
    <a href="./policy-csp-enterprisecloudprint.md#enterprisecloudprint-cloudprintoauthclientid" id="enterprisecloudprint-cloudprintoauthclientid">EnterpriseCloudPrint/CloudPrintOAuthClientId</a>
  </dd>
  <dd>
    <a href="./policy-csp-enterprisecloudprint.md#enterprisecloudprint-cloudprintresourceid" id="enterprisecloudprint-cloudprintresourceid">EnterpriseCloudPrint/CloudPrintResourceId</a>
  </dd>
  <dd>
    <a href="./policy-csp-enterprisecloudprint.md#enterprisecloudprint-cloudprinterdiscoveryendpoint" id="enterprisecloudprint-cloudprinterdiscoveryendpoint">EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint</a>
  </dd>
  <dd>
    <a href="./policy-csp-enterprisecloudprint.md#enterprisecloudprint-discoverymaxprinterlimit" id="enterprisecloudprint-discoverymaxprinterlimit">EnterpriseCloudPrint/DiscoveryMaxPrinterLimit</a>
  </dd>
  <dd>
    <a href="./policy-csp-enterprisecloudprint.md#enterprisecloudprint-mopriadiscoveryresourceid" id="enterprisecloudprint-mopriadiscoveryresourceid">EnterpriseCloudPrint/MopriaDiscoveryResourceId</a>
  </dd>
</dl>

### ErrorReporting policies

<dl>
  <dd>
    <a href="./policy-csp-errorreporting.md#errorreporting-customizeconsentsettings" id="errorreporting-customizeconsentsettings">ErrorReporting/CustomizeConsentSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-errorreporting.md#errorreporting-disablewindowserrorreporting" id="errorreporting-disablewindowserrorreporting">ErrorReporting/DisableWindowsErrorReporting</a>
  </dd>
  <dd>
    <a href="./policy-csp-errorreporting.md#errorreporting-displayerrornotification" id="errorreporting-displayerrornotification">ErrorReporting/DisplayErrorNotification</a>
  </dd>
  <dd>
    <a href="./policy-csp-errorreporting.md#errorreporting-donotsendadditionaldata" id="errorreporting-donotsendadditionaldata">ErrorReporting/DoNotSendAdditionalData</a>
  </dd>
  <dd>
    <a href="./policy-csp-errorreporting.md#errorreporting-preventcriticalerrordisplay" id="errorreporting-preventcriticalerrordisplay">ErrorReporting/PreventCriticalErrorDisplay</a>
  </dd>
</dl>

### EventLogService policies

<dl>
  <dd>
    <a href="./policy-csp-eventlogservice.md#eventlogservice-controleventlogbehavior" id="eventlogservice-controleventlogbehavior">EventLogService/ControlEventLogBehavior</a>
  </dd>
  <dd>
    <a href="./policy-csp-eventlogservice.md#eventlogservice-specifymaximumfilesizeapplicationlog" id="eventlogservice-specifymaximumfilesizeapplicationlog">EventLogService/SpecifyMaximumFileSizeApplicationLog</a>
  </dd>
  <dd>
    <a href="./policy-csp-eventlogservice.md#eventlogservice-specifymaximumfilesizesecuritylog" id="eventlogservice-specifymaximumfilesizesecuritylog">EventLogService/SpecifyMaximumFileSizeSecurityLog</a>
  </dd>
  <dd>
    <a href="./policy-csp-eventlogservice.md#eventlogservice-specifymaximumfilesizesystemlog" id="eventlogservice-specifymaximumfilesizesystemlog">EventLogService/SpecifyMaximumFileSizeSystemLog</a>
  </dd>
</dl>

### Experience policies

<dl>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowcopypaste" id="experience-allowcopypaste">Experience/AllowCopyPaste</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowcortana" id="experience-allowcortana">Experience/AllowCortana</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowdevicediscovery" id="experience-allowdevicediscovery">Experience/AllowDeviceDiscovery</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowmanualmdmunenrollment" id="experience-allowmanualmdmunenrollment">Experience/AllowManualMDMUnenrollment</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowsimerrordialogpromptwhennosim" id="experience-allowsimerrordialogpromptwhennosim">Experience/AllowSIMErrorDialogPromptWhenNoSIM</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowscreencapture" id="experience-allowscreencapture">Experience/AllowScreenCapture</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowsyncmysettings" id="experience-allowsyncmysettings">Experience/AllowSyncMySettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowtailoredexperienceswithdiagnosticdata" id="experience-allowtailoredexperienceswithdiagnosticdata">Experience/AllowTailoredExperiencesWithDiagnosticData</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowtaskswitcher" id="experience-allowtaskswitcher">Experience/AllowTaskSwitcher</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowthirdpartysuggestionsinwindowsspotlight" id="experience-allowthirdpartysuggestionsinwindowsspotlight">Experience/AllowThirdPartySuggestionsInWindowsSpotlight</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowvoicerecording" id="experience-allowvoicerecording">Experience/AllowVoiceRecording</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowwindowsconsumerfeatures" id="experience-allowwindowsconsumerfeatures">Experience/AllowWindowsConsumerFeatures</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowwindowsspotlight" id="experience-allowwindowsspotlight">Experience/AllowWindowsSpotlight</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowwindowsspotlightonactioncenter" id="experience-allowwindowsspotlightonactioncenter">Experience/AllowWindowsSpotlightOnActionCenter</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowwindowsspotlightwindowswelcomeexperience" id="experience-allowwindowsspotlightwindowswelcomeexperience">Experience/AllowWindowsSpotlightWindowsWelcomeExperience</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowwindowstips" id="experience-allowwindowstips">Experience/AllowWindowsTips</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-configurewindowsspotlightonlockscreen" id="experience-configurewindowsspotlightonlockscreen">Experience/ConfigureWindowsSpotlightOnLockScreen</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-donotshowfeedbacknotifications" id="experience-donotshowfeedbacknotifications">Experience/DoNotShowFeedbackNotifications</a>
  </dd>
</dl>

### Games policies

<dl>
  <dd>
    <a href="./policy-csp-games.md#games-allowadvancedgamingservices" id="games-allowadvancedgamingservices">Games/AllowAdvancedGamingServices</a>
  </dd>
</dl>

### InternetExplorer policies

<dl>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-addsearchprovider" id="internetexplorer-addsearchprovider">InternetExplorer/AddSearchProvider</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowactivexfiltering" id="internetexplorer-allowactivexfiltering">InternetExplorer/AllowActiveXFiltering</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowaddonlist" id="internetexplorer-allowaddonlist">InternetExplorer/AllowAddOnList</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/AllowAutoComplete</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/AllowCertificateAddressMismatchWarning</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/AllowDeletingBrowsingHistoryOnExit</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowenhancedprotectedmode" id="internetexplorer-allowenhancedprotectedmode">InternetExplorer/AllowEnhancedProtectedMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowenterprisemodefromtoolsmenu" id="internetexplorer-allowenterprisemodefromtoolsmenu">InternetExplorer/AllowEnterpriseModeFromToolsMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowenterprisemodesitelist" id="internetexplorer-allowenterprisemodesitelist">InternetExplorer/AllowEnterpriseModeSiteList</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/AllowFallbackToSSL3</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowinternetexplorer7policylist" id="internetexplorer-allowinternetexplorer7policylist">InternetExplorer/AllowInternetExplorer7PolicyList</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowinternetexplorerstandardsmode" id="internetexplorer-allowinternetexplorerstandardsmode">InternetExplorer/AllowInternetExplorerStandardsMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowinternetzonetemplate" id="internetexplorer-allowinternetzonetemplate">InternetExplorer/AllowInternetZoneTemplate</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowintranetzonetemplate" id="internetexplorer-allowintranetzonetemplate">InternetExplorer/AllowIntranetZoneTemplate</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowlocalmachinezonetemplate" id="internetexplorer-allowlocalmachinezonetemplate">InternetExplorer/AllowLocalMachineZoneTemplate</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowlockeddowninternetzonetemplate" id="internetexplorer-allowlockeddowninternetzonetemplate">InternetExplorer/AllowLockedDownInternetZoneTemplate</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowlockeddownintranetzonetemplate" id="internetexplorer-allowlockeddownintranetzonetemplate">InternetExplorer/AllowLockedDownIntranetZoneTemplate</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowlockeddownlocalmachinezonetemplate" id="internetexplorer-allowlockeddownlocalmachinezonetemplate">InternetExplorer/AllowLockedDownLocalMachineZoneTemplate</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowlockeddownrestrictedsiteszonetemplate" id="internetexplorer-allowlockeddownrestrictedsiteszonetemplate">InternetExplorer/AllowLockedDownRestrictedSitesZoneTemplate</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowonewordentry" id="internetexplorer-allowonewordentry">InternetExplorer/AllowOneWordEntry</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowsitetozoneassignmentlist" id="internetexplorer-allowsitetozoneassignmentlist">InternetExplorer/AllowSiteToZoneAssignmentList</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/AllowSoftwareWhenSignatureIsInvalid</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowsuggestedsites" id="internetexplorer-allowsuggestedsites">InternetExplorer/AllowSuggestedSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowtrustedsiteszonetemplate" id="internetexplorer-allowtrustedsiteszonetemplate">InternetExplorer/AllowTrustedSitesZoneTemplate</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowslockeddowntrustedsiteszonetemplate" id="internetexplorer-allowslockeddowntrustedsiteszonetemplate">InternetExplorer/AllowsLockedDownTrustedSitesZoneTemplate</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowsrestrictedsiteszonetemplate" id="internetexplorer-allowsrestrictedsiteszonetemplate">InternetExplorer/AllowsRestrictedSitesZoneTemplate</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/CheckServerCertificateRevocation</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/CheckSignaturesOnDownloadedPrograms</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/ConsistentMimeHandlingInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableadobeflash" id="internetexplorer-disableadobeflash">InternetExplorer/DisableAdobeFlash</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/DisableBlockingOfOutdatedActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablebypassofsmartscreenwarnings" id="internetexplorer-disablebypassofsmartscreenwarnings">InternetExplorer/DisableBypassOfSmartScreenWarnings</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablebypassofsmartscreenwarningsaboutuncommonfiles" id="internetexplorer-disablebypassofsmartscreenwarningsaboutuncommonfiles">InternetExplorer/DisableBypassOfSmartScreenWarningsAboutUncommonFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/DisableConfiguringHistory</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/DisableCrashDetection</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablecustomerexperienceimprovementprogramparticipation" id="internetexplorer-disablecustomerexperienceimprovementprogramparticipation">InternetExplorer/DisableCustomerExperienceImprovementProgramParticipation</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/DisableDeletingUserVisitedWebsites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableenclosuredownloading" id="internetexplorer-disableenclosuredownloading">InternetExplorer/DisableEnclosureDownloading</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableencryptionsupport" id="internetexplorer-disableencryptionsupport">InternetExplorer/DisableEncryptionSupport</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablefirstrunwizard" id="internetexplorer-disablefirstrunwizard">InternetExplorer/DisableFirstRunWizard</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableflipaheadfeature" id="internetexplorer-disableflipaheadfeature">InternetExplorer/DisableFlipAheadFeature</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablehomepagechange" id="internetexplorer-disablehomepagechange">InternetExplorer/DisableHomePageChange</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/DisableIgnoringCertificateErrors</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/DisableInPrivateBrowsing</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/DisableProcessesInEnhancedProtectedMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableproxychange" id="internetexplorer-disableproxychange">InternetExplorer/DisableProxyChange</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablesearchproviderchange" id="internetexplorer-disablesearchproviderchange">InternetExplorer/DisableSearchProviderChange</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablesecondaryhomepagechange" id="internetexplorer-disablesecondaryhomepagechange">InternetExplorer/DisableSecondaryHomePageChange</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/DisableSecuritySettingsCheck</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableupdatecheck" id="internetexplorer-disableupdatecheck">InternetExplorer/DisableUpdateCheck</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/DoNotAllowActiveXControlsInProtectedMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-donotallowuserstoaddsites" id="internetexplorer-donotallowuserstoaddsites">InternetExplorer/DoNotAllowUsersToAddSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-donotallowuserstochangepolicies" id="internetexplorer-donotallowuserstochangepolicies">InternetExplorer/DoNotAllowUsersToChangePolicies</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-donotblockoutdatedactivexcontrols" id="internetexplorer-donotblockoutdatedactivexcontrols">InternetExplorer/DoNotBlockOutdatedActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-donotblockoutdatedactivexcontrolsonspecificdomains" id="internetexplorer-donotblockoutdatedactivexcontrolsonspecificdomains">InternetExplorer/DoNotBlockOutdatedActiveXControlsOnSpecificDomains</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-includealllocalsites" id="internetexplorer-includealllocalsites">InternetExplorer/IncludeAllLocalSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-includeallnetworkpaths" id="internetexplorer-includeallnetworkpaths">InternetExplorer/IncludeAllNetworkPaths</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowaccesstodatasources" id="internetexplorer-internetzoneallowaccesstodatasources">InternetExplorer/InternetZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowautomaticpromptingforactivexcontrols" id="internetexplorer-internetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/InternetZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowautomaticpromptingforfiledownloads" id="internetexplorer-internetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/InternetZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneAllowCopyPasteViaScript</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneAllowDragAndDropCopyAndPasteFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowfontdownloads" id="internetexplorer-internetzoneallowfontdownloads">InternetExplorer/InternetZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowlessprivilegedsites" id="internetexplorer-internetzoneallowlessprivilegedsites">InternetExplorer/InternetZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneAllowLoadingOfXAMLFilesWRONG</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallownetframeworkreliantcomponents" id="internetexplorer-internetzoneallownetframeworkreliantcomponents">InternetExplorer/InternetZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneAllowScriptInitiatedWindows</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowscriptlets" id="internetexplorer-internetzoneallowscriptlets">InternetExplorer/InternetZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowsmartscreenie" id="internetexplorer-internetzoneallowsmartscreenie">InternetExplorer/InternetZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneAllowUpdatesToStatusBarViaScript</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowuserdatapersistence" id="internetexplorer-internetzoneallowuserdatapersistence">InternetExplorer/InternetZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneDoNotRunAntimalwareAgainstActiveXControlsWRONG1</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneDoNotRunAntimalwareAgainstActiveXControlsWRONG2</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneDownloadSignedActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneDownloadUnsignedActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneEnableCrossSiteScriptingFilter</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneEnableMIMESniffing</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneEnableProtectedMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneIncludeLocalPathWhenUploadingFilesToServer</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneinitializeandscriptactivexcontrols" id="internetexplorer-internetzoneinitializeandscriptactivexcontrols">InternetExplorer/InternetZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneInitializeAndScriptActiveXControlsNotMarkedSafe</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneJavaPermissionsWRONG1</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneJavaPermissionsWRONG2</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneLaunchingApplicationsAndFilesInIFRAME</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneLogonOptions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzonenavigatewindowsandframes" id="internetexplorer-internetzonenavigatewindowsandframes">InternetExplorer/InternetZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneRunNETFrameworkReliantComponentsNotSignedWithAuthenticode</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneUsePopupBlocker</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/InternetZoneWebsitesInLessPrivilegedZonesCanNavigateIntoThisZone</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowaccesstodatasources" id="internetexplorer-intranetzoneallowaccesstodatasources">InternetExplorer/IntranetZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowautomaticpromptingforactivexcontrols" id="internetexplorer-intranetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/IntranetZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowautomaticpromptingforfiledownloads" id="internetexplorer-intranetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/IntranetZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowfontdownloads" id="internetexplorer-intranetzoneallowfontdownloads">InternetExplorer/IntranetZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowlessprivilegedsites" id="internetexplorer-intranetzoneallowlessprivilegedsites">InternetExplorer/IntranetZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallownetframeworkreliantcomponents" id="internetexplorer-intranetzoneallownetframeworkreliantcomponents">InternetExplorer/IntranetZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowscriptlets" id="internetexplorer-intranetzoneallowscriptlets">InternetExplorer/IntranetZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowsmartscreenie" id="internetexplorer-intranetzoneallowsmartscreenie">InternetExplorer/IntranetZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowuserdatapersistence" id="internetexplorer-intranetzoneallowuserdatapersistence">InternetExplorer/IntranetZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzoneinitializeandscriptactivexcontrols" id="internetexplorer-intranetzoneinitializeandscriptactivexcontrols">InternetExplorer/IntranetZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzonenavigatewindowsandframes" id="internetexplorer-intranetzonenavigatewindowsandframes">InternetExplorer/IntranetZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowaccesstodatasources" id="internetexplorer-localmachinezoneallowaccesstodatasources">InternetExplorer/LocalMachineZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowautomaticpromptingforactivexcontrols" id="internetexplorer-localmachinezoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowautomaticpromptingforfiledownloads" id="internetexplorer-localmachinezoneallowautomaticpromptingforfiledownloads">InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowfontdownloads" id="internetexplorer-localmachinezoneallowfontdownloads">InternetExplorer/LocalMachineZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowlessprivilegedsites" id="internetexplorer-localmachinezoneallowlessprivilegedsites">InternetExplorer/LocalMachineZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallownetframeworkreliantcomponents" id="internetexplorer-localmachinezoneallownetframeworkreliantcomponents">InternetExplorer/LocalMachineZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowscriptlets" id="internetexplorer-localmachinezoneallowscriptlets">InternetExplorer/LocalMachineZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowsmartscreenie" id="internetexplorer-localmachinezoneallowsmartscreenie">InternetExplorer/LocalMachineZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowuserdatapersistence" id="internetexplorer-localmachinezoneallowuserdatapersistence">InternetExplorer/LocalMachineZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneinitializeandscriptactivexcontrols" id="internetexplorer-localmachinezoneinitializeandscriptactivexcontrols">InternetExplorer/LocalMachineZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/LocalMachineZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezonenavigatewindowsandframes" id="internetexplorer-localmachinezonenavigatewindowsandframes">InternetExplorer/LocalMachineZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowaccesstodatasources" id="internetexplorer-lockeddowninternetzoneallowaccesstodatasources">InternetExplorer/LockedDownInternetZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowautomaticpromptingforactivexcontrols" id="internetexplorer-lockeddowninternetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowautomaticpromptingforfiledownloads" id="internetexplorer-lockeddowninternetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowfontdownloads" id="internetexplorer-lockeddowninternetzoneallowfontdownloads">InternetExplorer/LockedDownInternetZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowlessprivilegedsites" id="internetexplorer-lockeddowninternetzoneallowlessprivilegedsites">InternetExplorer/LockedDownInternetZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallownetframeworkreliantcomponents" id="internetexplorer-lockeddowninternetzoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownInternetZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowscriptlets" id="internetexplorer-lockeddowninternetzoneallowscriptlets">InternetExplorer/LockedDownInternetZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowsmartscreenie" id="internetexplorer-lockeddowninternetzoneallowsmartscreenie">InternetExplorer/LockedDownInternetZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowuserdatapersistence" id="internetexplorer-lockeddowninternetzoneallowuserdatapersistence">InternetExplorer/LockedDownInternetZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneinitializeandscriptactivexcontrols" id="internetexplorer-lockeddowninternetzoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownInternetZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/LockedDownInternetZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzonenavigatewindowsandframes" id="internetexplorer-lockeddowninternetzonenavigatewindowsandframes">InternetExplorer/LockedDownInternetZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowaccesstodatasources" id="internetexplorer-lockeddownintranetzoneallowaccesstodatasources">InternetExplorer/LockedDownIntranetZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowautomaticpromptingforactivexcontrols" id="internetexplorer-lockeddownintranetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowautomaticpromptingforfiledownloads" id="internetexplorer-lockeddownintranetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowfontdownloads" id="internetexplorer-lockeddownintranetzoneallowfontdownloads">InternetExplorer/LockedDownIntranetZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowlessprivilegedsites" id="internetexplorer-lockeddownintranetzoneallowlessprivilegedsites">InternetExplorer/LockedDownIntranetZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallownetframeworkreliantcomponents" id="internetexplorer-lockeddownintranetzoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownIntranetZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowscriptlets" id="internetexplorer-lockeddownintranetzoneallowscriptlets">InternetExplorer/LockedDownIntranetZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowsmartscreenie" id="internetexplorer-lockeddownintranetzoneallowsmartscreenie">InternetExplorer/LockedDownIntranetZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowuserdatapersistence" id="internetexplorer-lockeddownintranetzoneallowuserdatapersistence">InternetExplorer/LockedDownIntranetZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneinitializeandscriptactivexcontrols" id="internetexplorer-lockeddownintranetzoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownIntranetZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzonenavigatewindowsandframes" id="internetexplorer-lockeddownintranetzonenavigatewindowsandframes">InternetExplorer/LockedDownIntranetZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowaccesstodatasources" id="internetexplorer-lockeddownlocalmachinezoneallowaccesstodatasources">InternetExplorer/LockedDownLocalMachineZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforactivexcontrols" id="internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforfiledownloads" id="internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowfontdownloads" id="internetexplorer-lockeddownlocalmachinezoneallowfontdownloads">InternetExplorer/LockedDownLocalMachineZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowlessprivilegedsites" id="internetexplorer-lockeddownlocalmachinezoneallowlessprivilegedsites">InternetExplorer/LockedDownLocalMachineZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallownetframeworkreliantcomponents" id="internetexplorer-lockeddownlocalmachinezoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowscriptlets" id="internetexplorer-lockeddownlocalmachinezoneallowscriptlets">InternetExplorer/LockedDownLocalMachineZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowsmartscreenie" id="internetexplorer-lockeddownlocalmachinezoneallowsmartscreenie">InternetExplorer/LockedDownLocalMachineZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowuserdatapersistence" id="internetexplorer-lockeddownlocalmachinezoneallowuserdatapersistence">InternetExplorer/LockedDownLocalMachineZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneinitializeandscriptactivexcontrols" id="internetexplorer-lockeddownlocalmachinezoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownLocalMachineZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/LockedDownLocalMachineZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezonenavigatewindowsandframes" id="internetexplorer-lockeddownlocalmachinezonenavigatewindowsandframes">InternetExplorer/LockedDownLocalMachineZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowaccesstodatasources" id="internetexplorer-lockeddownrestrictedsiteszoneallowaccesstodatasources">InternetExplorer/LockedDownRestrictedSitesZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforactivexcontrols" id="internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforfiledownloads" id="internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowfontdownloads" id="internetexplorer-lockeddownrestrictedsiteszoneallowfontdownloads">InternetExplorer/LockedDownRestrictedSitesZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowlessprivilegedsites" id="internetexplorer-lockeddownrestrictedsiteszoneallowlessprivilegedsites">InternetExplorer/LockedDownRestrictedSitesZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallownetframeworkreliantcomponents" id="internetexplorer-lockeddownrestrictedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowscriptlets" id="internetexplorer-lockeddownrestrictedsiteszoneallowscriptlets">InternetExplorer/LockedDownRestrictedSitesZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowsmartscreenie" id="internetexplorer-lockeddownrestrictedsiteszoneallowsmartscreenie">InternetExplorer/LockedDownRestrictedSitesZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowuserdatapersistence" id="internetexplorer-lockeddownrestrictedsiteszoneallowuserdatapersistence">InternetExplorer/LockedDownRestrictedSitesZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneinitializeandscriptactivexcontrols" id="internetexplorer-lockeddownrestrictedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/LockedDownRestrictedSitesZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszonenavigatewindowsandframes" id="internetexplorer-lockeddownrestrictedsiteszonenavigatewindowsandframes">InternetExplorer/LockedDownRestrictedSitesZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowaccesstodatasources" id="internetexplorer-lockeddowntrustedsiteszoneallowaccesstodatasources">InternetExplorer/LockedDownTrustedSitesZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforactivexcontrols" id="internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforfiledownloads" id="internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowfontdownloads" id="internetexplorer-lockeddowntrustedsiteszoneallowfontdownloads">InternetExplorer/LockedDownTrustedSitesZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowlessprivilegedsites" id="internetexplorer-lockeddowntrustedsiteszoneallowlessprivilegedsites">InternetExplorer/LockedDownTrustedSitesZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallownetframeworkreliantcomponents" id="internetexplorer-lockeddowntrustedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowscriptlets" id="internetexplorer-lockeddowntrustedsiteszoneallowscriptlets">InternetExplorer/LockedDownTrustedSitesZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowsmartscreenie" id="internetexplorer-lockeddowntrustedsiteszoneallowsmartscreenie">InternetExplorer/LockedDownTrustedSitesZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowuserdatapersistence" id="internetexplorer-lockeddowntrustedsiteszoneallowuserdatapersistence">InternetExplorer/LockedDownTrustedSitesZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneinitializeandscriptactivexcontrols" id="internetexplorer-lockeddowntrustedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/LockedDownTrustedSitesZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszonenavigatewindowsandframes" id="internetexplorer-lockeddowntrustedsiteszonenavigatewindowsandframes">InternetExplorer/LockedDownTrustedSitesZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/MKProtocolSecurityRestrictionInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/MimeSniffingSafetyFeatureInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/NotificationBarInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/PreventManagingSmartScreenFilter</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/PreventPerUserInstallationOfActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/ProtectionFromZoneElevationInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RemoveRunThisTimeButtonForOutdatedActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictActiveXInstallInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictFileDownloadInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowaccesstodatasources" id="internetexplorer-restrictedsiteszoneallowaccesstodatasources">InternetExplorer/RestrictedSitesZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowActiveScripting</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowautomaticpromptingforactivexcontrols" id="internetexplorer-restrictedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowautomaticpromptingforfiledownloads" id="internetexplorer-restrictedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowBinaryAndScriptBehaviors</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowCopyPasteViaScript</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowFileDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowfontdownloads" id="internetexplorer-restrictedsiteszoneallowfontdownloads">InternetExplorer/RestrictedSitesZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowFontDownloadsWRONG1</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowFontDownloadsWRONG2</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowlessprivilegedsites" id="internetexplorer-restrictedsiteszoneallowlessprivilegedsites">InternetExplorer/RestrictedSitesZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowLoadingOfXAMLFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowMETAREFRESH</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallownetframeworkreliantcomponents" id="internetexplorer-restrictedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/RestrictedSitesZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowScriptInitiatedWindows</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowscriptlets" id="internetexplorer-restrictedsiteszoneallowscriptlets">InternetExplorer/RestrictedSitesZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowsmartscreenie" id="internetexplorer-restrictedsiteszoneallowsmartscreenie">InternetExplorer/RestrictedSitesZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneAllowUpdatesToStatusBarViaScript</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowuserdatapersistence" id="internetexplorer-restrictedsiteszoneallowuserdatapersistence">InternetExplorer/RestrictedSitesZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneDownloadSignedActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneDownloadUnsignedActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneEnableMIMESniffing</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneinitializeandscriptactivexcontrols" id="internetexplorer-restrictedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/RestrictedSitesZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneLogonOptions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszonenavigatewindowsandframes" id="internetexplorer-restrictedsiteszonenavigatewindowsandframes">InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFramesAcrossDomains</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneRunActiveXControlsAndPlugins</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneWRONG</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneWRONG2</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneWRONG3</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneWRONG4</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/RestrictedSitesZoneWRONG5</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/ScriptedWindowSecurityRestrictionsInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-searchproviderlist" id="internetexplorer-searchproviderlist">InternetExplorer/SearchProviderList</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/SecurityZonesUseOnlyMachineSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/SpecifyUseOfActiveXInstallerService</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowaccesstodatasources" id="internetexplorer-trustedsiteszoneallowaccesstodatasources">InternetExplorer/TrustedSitesZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowautomaticpromptingforactivexcontrols" id="internetexplorer-trustedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowautomaticpromptingforfiledownloads" id="internetexplorer-trustedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowfontdownloads" id="internetexplorer-trustedsiteszoneallowfontdownloads">InternetExplorer/TrustedSitesZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowlessprivilegedsites" id="internetexplorer-trustedsiteszoneallowlessprivilegedsites">InternetExplorer/TrustedSitesZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallownetframeworkreliantcomponents" id="internetexplorer-trustedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/TrustedSitesZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowscriptlets" id="internetexplorer-trustedsiteszoneallowscriptlets">InternetExplorer/TrustedSitesZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowsmartscreenie" id="internetexplorer-trustedsiteszoneallowsmartscreenie">InternetExplorer/TrustedSitesZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowuserdatapersistence" id="internetexplorer-trustedsiteszoneallowuserdatapersistence">InternetExplorer/TrustedSitesZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneinitializeandscriptactivexcontrols" id="internetexplorer-trustedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/TrustedSitesZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/TrustedSitesZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszonenavigatewindowsandframes" id="internetexplorer-trustedsiteszonenavigatewindowsandframes">InternetExplorer/TrustedSitesZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/TrustedSitesZoneWRONG1</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#None" id="None">InternetExplorer/TrustedSitesZoneWRONG2</a>
  </dd>
</dl>

### Kerberos policies

<dl>
  <dd>
    <a href="./policy-csp-kerberos.md#kerberos-allowforestsearchorder" id="kerberos-allowforestsearchorder">Kerberos/AllowForestSearchOrder</a>
  </dd>
  <dd>
    <a href="./policy-csp-kerberos.md#kerberos-kerberosclientsupportsclaimscompoundarmor" id="kerberos-kerberosclientsupportsclaimscompoundarmor">Kerberos/KerberosClientSupportsClaimsCompoundArmor</a>
  </dd>
  <dd>
    <a href="./policy-csp-kerberos.md#kerberos-requirekerberosarmoring" id="kerberos-requirekerberosarmoring">Kerberos/RequireKerberosArmoring</a>
  </dd>
  <dd>
    <a href="./policy-csp-kerberos.md#kerberos-requirestrictkdcvalidation" id="kerberos-requirestrictkdcvalidation">Kerberos/RequireStrictKDCValidation</a>
  </dd>
  <dd>
    <a href="./policy-csp-kerberos.md#kerberos-setmaximumcontexttokensize" id="kerberos-setmaximumcontexttokensize">Kerberos/SetMaximumContextTokenSize</a>
  </dd>
</dl>

### Licensing policies

<dl>
  <dd>
    <a href="./policy-csp-licensing.md#licensing-allowwindowsentitlementreactivation" id="licensing-allowwindowsentitlementreactivation">Licensing/AllowWindowsEntitlementReactivation</a>
  </dd>
  <dd>
    <a href="./policy-csp-licensing.md#licensing-disallowkmsclientonlineavsvalidation" id="licensing-disallowkmsclientonlineavsvalidation">Licensing/DisallowKMSClientOnlineAVSValidation</a>
  </dd>
</dl>

### Location policies

<dl>
  <dd>
    <a href="./policy-csp-location.md#location-enablelocation" id="location-enablelocation">Location/EnableLocation</a>
  </dd>
</dl>

### LockDown policies

<dl>
  <dd>
    <a href="./policy-csp-lockdown.md#lockdown-allowedgeswipe" id="lockdown-allowedgeswipe">LockDown/AllowEdgeSwipe</a>
  </dd>
</dl>

### Maps policies

<dl>
  <dd>
    <a href="./policy-csp-maps.md#maps-allowofflinemapsdownloadovermeteredconnection" id="maps-allowofflinemapsdownloadovermeteredconnection">Maps/AllowOfflineMapsDownloadOverMeteredConnection</a>
  </dd>
  <dd>
    <a href="./policy-csp-maps.md#maps-enableofflinemapsautoupdate" id="maps-enableofflinemapsautoupdate">Maps/EnableOfflineMapsAutoUpdate</a>
  </dd>
</dl>

### Messaging policies

<dl>
  <dd>
    <a href="./policy-csp-messaging.md#messaging-allowmms" id="messaging-allowmms">Messaging/AllowMMS</a>
  </dd>
  <dd>
    <a href="./policy-csp-messaging.md#messaging-allowmessagesync" id="messaging-allowmessagesync">Messaging/AllowMessageSync</a>
  </dd>
  <dd>
    <a href="./policy-csp-messaging.md#messaging-allowrcs" id="messaging-allowrcs">Messaging/AllowRCS</a>
  </dd>
</dl>

### NetworkIsolation policies

<dl>
  <dd>
    <a href="./policy-csp-networkisolation.md#networkisolation-enterprisecloudresources" id="networkisolation-enterprisecloudresources">NetworkIsolation/EnterpriseCloudResources</a>
  </dd>
  <dd>
    <a href="./policy-csp-networkisolation.md#networkisolation-enterpriseiprange" id="networkisolation-enterpriseiprange">NetworkIsolation/EnterpriseIPRange</a>
  </dd>
  <dd>
    <a href="./policy-csp-networkisolation.md#networkisolation-enterpriseiprangesareauthoritative" id="networkisolation-enterpriseiprangesareauthoritative">NetworkIsolation/EnterpriseIPRangesAreAuthoritative</a>
  </dd>
  <dd>
    <a href="./policy-csp-networkisolation.md#networkisolation-enterpriseinternalproxyservers" id="networkisolation-enterpriseinternalproxyservers">NetworkIsolation/EnterpriseInternalProxyServers</a>
  </dd>
  <dd>
    <a href="./policy-csp-networkisolation.md#networkisolation-enterprisenetworkdomainnames" id="networkisolation-enterprisenetworkdomainnames">NetworkIsolation/EnterpriseNetworkDomainNames</a>
  </dd>
  <dd>
    <a href="./policy-csp-networkisolation.md#networkisolation-enterpriseproxyservers" id="networkisolation-enterpriseproxyservers">NetworkIsolation/EnterpriseProxyServers</a>
  </dd>
  <dd>
    <a href="./policy-csp-networkisolation.md#networkisolation-enterpriseproxyserversareauthoritative" id="networkisolation-enterpriseproxyserversareauthoritative">NetworkIsolation/EnterpriseProxyServersAreAuthoritative</a>
  </dd>
  <dd>
    <a href="./policy-csp-networkisolation.md#networkisolation-neutralresources" id="networkisolation-neutralresources">NetworkIsolation/NeutralResources</a>
  </dd>
</dl>

### Notifications policies

<dl>
  <dd>
    <a href="./policy-csp-notifications.md#notifications-disallownotificationmirroring" id="notifications-disallownotificationmirroring">Notifications/DisallowNotificationMirroring</a>
  </dd>
</dl>

### Power policies

<dl>
  <dd>
    <a href="./policy-csp-power.md#power-allowstandbywhensleepingpluggedin" id="power-allowstandbywhensleepingpluggedin">Power/AllowStandbyWhenSleepingPluggedIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-displayofftimeoutonbattery" id="power-displayofftimeoutonbattery">Power/DisplayOffTimeoutOnBattery</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-displayofftimeoutpluggedin" id="power-displayofftimeoutpluggedin">Power/DisplayOffTimeoutPluggedIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-hibernatetimeoutonbattery" id="power-hibernatetimeoutonbattery">Power/HibernateTimeoutOnBattery</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-hibernatetimeoutpluggedin" id="power-hibernatetimeoutpluggedin">Power/HibernateTimeoutPluggedIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-requirepasswordwhencomputerwakesonbattery" id="power-requirepasswordwhencomputerwakesonbattery">Power/RequirePasswordWhenComputerWakesOnBattery</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-requirepasswordwhencomputerwakespluggedin" id="power-requirepasswordwhencomputerwakespluggedin">Power/RequirePasswordWhenComputerWakesPluggedIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-standbytimeoutonbattery" id="power-standbytimeoutonbattery">Power/StandbyTimeoutOnBattery</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-standbytimeoutpluggedin" id="power-standbytimeoutpluggedin">Power/StandbyTimeoutPluggedIn</a>
  </dd>
</dl>

### Printers policies

<dl>
  <dd>
    <a href="./policy-csp-printers.md#printers-pointandprintrestrictions" id="printers-pointandprintrestrictions">Printers/PointAndPrintRestrictions</a>
  </dd>
  <dd>
    <a href="./policy-csp-printers.md#printers-pointandprintrestrictions_user" id="printers-pointandprintrestrictions_user">Printers/PointAndPrintRestrictions_User</a>
  </dd>
  <dd>
    <a href="./policy-csp-printers.md#printers-publishprinters" id="printers-publishprinters">Printers/PublishPrinters</a>
  </dd>
</dl>

### Privacy policies

<dl>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-allowautoacceptpairingandprivacyconsentprompts" id="privacy-allowautoacceptpairingandprivacyconsentprompts">Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-allowinputpersonalization" id="privacy-allowinputpersonalization">Privacy/AllowInputPersonalization</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-disableadvertisingid" id="privacy-disableadvertisingid">Privacy/DisableAdvertisingId</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessaccountinfo" id="privacy-letappsaccessaccountinfo">Privacy/LetAppsAccessAccountInfo</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessaccountinfo-forceallowtheseapps" id="privacy-letappsaccessaccountinfo-forceallowtheseapps">Privacy/LetAppsAccessAccountInfo_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessaccountinfo-forcedenytheseapps" id="privacy-letappsaccessaccountinfo-forcedenytheseapps">Privacy/LetAppsAccessAccountInfo_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessaccountinfo-userincontroloftheseapps" id="privacy-letappsaccessaccountinfo-userincontroloftheseapps">Privacy/LetAppsAccessAccountInfo_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscalendar" id="privacy-letappsaccesscalendar">Privacy/LetAppsAccessCalendar</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscalendar-forceallowtheseapps" id="privacy-letappsaccesscalendar-forceallowtheseapps">Privacy/LetAppsAccessCalendar_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscalendar-forcedenytheseapps" id="privacy-letappsaccesscalendar-forcedenytheseapps">Privacy/LetAppsAccessCalendar_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscalendar-userincontroloftheseapps" id="privacy-letappsaccesscalendar-userincontroloftheseapps">Privacy/LetAppsAccessCalendar_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscallhistory" id="privacy-letappsaccesscallhistory">Privacy/LetAppsAccessCallHistory</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscallhistory-forceallowtheseapps" id="privacy-letappsaccesscallhistory-forceallowtheseapps">Privacy/LetAppsAccessCallHistory_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscallhistory-forcedenytheseapps" id="privacy-letappsaccesscallhistory-forcedenytheseapps">Privacy/LetAppsAccessCallHistory_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscallhistory-userincontroloftheseapps" id="privacy-letappsaccesscallhistory-userincontroloftheseapps">Privacy/LetAppsAccessCallHistory_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscamera" id="privacy-letappsaccesscamera">Privacy/LetAppsAccessCamera</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscamera-forceallowtheseapps" id="privacy-letappsaccesscamera-forceallowtheseapps">Privacy/LetAppsAccessCamera_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscamera-forcedenytheseapps" id="privacy-letappsaccesscamera-forcedenytheseapps">Privacy/LetAppsAccessCamera_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscamera-userincontroloftheseapps" id="privacy-letappsaccesscamera-userincontroloftheseapps">Privacy/LetAppsAccessCamera_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscontacts" id="privacy-letappsaccesscontacts">Privacy/LetAppsAccessContacts</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscontacts-forceallowtheseapps" id="privacy-letappsaccesscontacts-forceallowtheseapps">Privacy/LetAppsAccessContacts_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscontacts-forcedenytheseapps" id="privacy-letappsaccesscontacts-forcedenytheseapps">Privacy/LetAppsAccessContacts_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesscontacts-userincontroloftheseapps" id="privacy-letappsaccesscontacts-userincontroloftheseapps">Privacy/LetAppsAccessContacts_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessemail" id="privacy-letappsaccessemail">Privacy/LetAppsAccessEmail</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessemail-forceallowtheseapps" id="privacy-letappsaccessemail-forceallowtheseapps">Privacy/LetAppsAccessEmail_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessemail-forcedenytheseapps" id="privacy-letappsaccessemail-forcedenytheseapps">Privacy/LetAppsAccessEmail_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessemail-userincontroloftheseapps" id="privacy-letappsaccessemail-userincontroloftheseapps">Privacy/LetAppsAccessEmail_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesslocation" id="privacy-letappsaccesslocation">Privacy/LetAppsAccessLocation</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesslocation-forceallowtheseapps" id="privacy-letappsaccesslocation-forceallowtheseapps">Privacy/LetAppsAccessLocation_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesslocation-forcedenytheseapps" id="privacy-letappsaccesslocation-forcedenytheseapps">Privacy/LetAppsAccessLocation_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesslocation-userincontroloftheseapps" id="privacy-letappsaccesslocation-userincontroloftheseapps">Privacy/LetAppsAccessLocation_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessmessaging" id="privacy-letappsaccessmessaging">Privacy/LetAppsAccessMessaging</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessmessaging-forceallowtheseapps" id="privacy-letappsaccessmessaging-forceallowtheseapps">Privacy/LetAppsAccessMessaging_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessmessaging-forcedenytheseapps" id="privacy-letappsaccessmessaging-forcedenytheseapps">Privacy/LetAppsAccessMessaging_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessmessaging-userincontroloftheseapps" id="privacy-letappsaccessmessaging-userincontroloftheseapps">Privacy/LetAppsAccessMessaging_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessmicrophone" id="privacy-letappsaccessmicrophone">Privacy/LetAppsAccessMicrophone</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessmicrophone-forceallowtheseapps" id="privacy-letappsaccessmicrophone-forceallowtheseapps">Privacy/LetAppsAccessMicrophone_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessmicrophone-forcedenytheseapps" id="privacy-letappsaccessmicrophone-forcedenytheseapps">Privacy/LetAppsAccessMicrophone_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessmicrophone-userincontroloftheseapps" id="privacy-letappsaccessmicrophone-userincontroloftheseapps">Privacy/LetAppsAccessMicrophone_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessmotion" id="privacy-letappsaccessmotion">Privacy/LetAppsAccessMotion</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessmotion-forceallowtheseapps" id="privacy-letappsaccessmotion-forceallowtheseapps">Privacy/LetAppsAccessMotion_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessmotion-forcedenytheseapps" id="privacy-letappsaccessmotion-forcedenytheseapps">Privacy/LetAppsAccessMotion_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessmotion-userincontroloftheseapps" id="privacy-letappsaccessmotion-userincontroloftheseapps">Privacy/LetAppsAccessMotion_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessnotifications" id="privacy-letappsaccessnotifications">Privacy/LetAppsAccessNotifications</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessnotifications-forceallowtheseapps" id="privacy-letappsaccessnotifications-forceallowtheseapps">Privacy/LetAppsAccessNotifications_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessnotifications-forcedenytheseapps" id="privacy-letappsaccessnotifications-forcedenytheseapps">Privacy/LetAppsAccessNotifications_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessnotifications-userincontroloftheseapps" id="privacy-letappsaccessnotifications-userincontroloftheseapps">Privacy/LetAppsAccessNotifications_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessphone" id="privacy-letappsaccessphone">Privacy/LetAppsAccessPhone</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessphone-forceallowtheseapps" id="privacy-letappsaccessphone-forceallowtheseapps">Privacy/LetAppsAccessPhone_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessphone-forcedenytheseapps" id="privacy-letappsaccessphone-forcedenytheseapps">Privacy/LetAppsAccessPhone_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessphone-userincontroloftheseapps" id="privacy-letappsaccessphone-userincontroloftheseapps">Privacy/LetAppsAccessPhone_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessradios" id="privacy-letappsaccessradios">Privacy/LetAppsAccessRadios</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessradios-forceallowtheseapps" id="privacy-letappsaccessradios-forceallowtheseapps">Privacy/LetAppsAccessRadios_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessradios-forcedenytheseapps" id="privacy-letappsaccessradios-forcedenytheseapps">Privacy/LetAppsAccessRadios_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessradios-userincontroloftheseapps" id="privacy-letappsaccessradios-userincontroloftheseapps">Privacy/LetAppsAccessRadios_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesstasks" id="privacy-letappsaccesstasks">Privacy/LetAppsAccessTasks</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesstasks-forceallowtheseapps" id="privacy-letappsaccesstasks-forceallowtheseapps">Privacy/LetAppsAccessTasks_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesstasks-forcedenytheseapps" id="privacy-letappsaccesstasks-forcedenytheseapps">Privacy/LetAppsAccessTasks_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesstasks-userincontroloftheseapps" id="privacy-letappsaccesstasks-userincontroloftheseapps">Privacy/LetAppsAccessTasks_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesstrusteddevices" id="privacy-letappsaccesstrusteddevices">Privacy/LetAppsAccessTrustedDevices</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesstrusteddevices-forceallowtheseapps" id="privacy-letappsaccesstrusteddevices-forceallowtheseapps">Privacy/LetAppsAccessTrustedDevices_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesstrusteddevices-forcedenytheseapps" id="privacy-letappsaccesstrusteddevices-forcedenytheseapps">Privacy/LetAppsAccessTrustedDevices_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccesstrusteddevices-userincontroloftheseapps" id="privacy-letappsaccesstrusteddevices-userincontroloftheseapps">Privacy/LetAppsAccessTrustedDevices_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsgetdiagnosticinfo" id="privacy-letappsgetdiagnosticinfo">Privacy/LetAppsGetDiagnosticInfo</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsgetdiagnosticinfo-forceallowtheseapps" id="privacy-letappsgetdiagnosticinfo-forceallowtheseapps">Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsgetdiagnosticinfo-forcedenytheseapps" id="privacy-letappsgetdiagnosticinfo-forcedenytheseapps">Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsgetdiagnosticinfo-userincontroloftheseapps" id="privacy-letappsgetdiagnosticinfo-userincontroloftheseapps">Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsruninbackground" id="privacy-letappsruninbackground">Privacy/LetAppsRunInBackground</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsruninbackground-forceallowtheseapps" id="privacy-letappsruninbackground-forceallowtheseapps">Privacy/LetAppsRunInBackground_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsruninbackground-forcedenytheseapps" id="privacy-letappsruninbackground-forcedenytheseapps">Privacy/LetAppsRunInBackground_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsruninbackground-userincontroloftheseapps" id="privacy-letappsruninbackground-userincontroloftheseapps">Privacy/LetAppsRunInBackground_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappssyncwithdevices" id="privacy-letappssyncwithdevices">Privacy/LetAppsSyncWithDevices</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappssyncwithdevices-forceallowtheseapps" id="privacy-letappssyncwithdevices-forceallowtheseapps">Privacy/LetAppsSyncWithDevices_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappssyncwithdevices-forcedenytheseapps" id="privacy-letappssyncwithdevices-forcedenytheseapps">Privacy/LetAppsSyncWithDevices_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappssyncwithdevices-userincontroloftheseapps" id="privacy-letappssyncwithdevices-userincontroloftheseapps">Privacy/LetAppsSyncWithDevices_UserInControlOfTheseApps</a>
  </dd>
</dl>

### RemoteAssistance policies

<dl>
  <dd>
    <a href="./policy-csp-remoteassistance.md#remoteassistance-customizewarningmessages" id="remoteassistance-customizewarningmessages">RemoteAssistance/CustomizeWarningMessages</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteassistance.md#remoteassistance-sessionlogging" id="remoteassistance-sessionlogging">RemoteAssistance/SessionLogging</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteassistance.md#remoteassistance-solicitedremoteassistance" id="remoteassistance-solicitedremoteassistance">RemoteAssistance/SolicitedRemoteAssistance</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteassistance.md#remoteassistance-unsolicitedremoteassistance" id="remoteassistance-unsolicitedremoteassistance">RemoteAssistance/UnsolicitedRemoteAssistance</a>
  </dd>
</dl>

### RemoteDesktopServices policies

<dl>
  <dd>
    <a href="./policy-csp-remotedesktopservices.md#remotedesktopservices-allowuserstoconnectremotely" id="remotedesktopservices-allowuserstoconnectremotely">RemoteDesktopServices/AllowUsersToConnectRemotely</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotedesktopservices.md#remotedesktopservices-clientconnectionencryptionlevel" id="remotedesktopservices-clientconnectionencryptionlevel">RemoteDesktopServices/ClientConnectionEncryptionLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotedesktopservices.md#remotedesktopservices-donotallowdriveredirection" id="remotedesktopservices-donotallowdriveredirection">RemoteDesktopServices/DoNotAllowDriveRedirection</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotedesktopservices.md#remotedesktopservices-donotallowpasswordsaving" id="remotedesktopservices-donotallowpasswordsaving">RemoteDesktopServices/DoNotAllowPasswordSaving</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotedesktopservices.md#remotedesktopservices-promptforpassworduponconnection" id="remotedesktopservices-promptforpassworduponconnection">RemoteDesktopServices/PromptForPasswordUponConnection</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotedesktopservices.md#remotedesktopservices-requiresecurerpccommunication" id="remotedesktopservices-requiresecurerpccommunication">RemoteDesktopServices/RequireSecureRPCCommunication</a>
  </dd>
</dl>

### RemoteManagement policies

<dl>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/AllowBasicAuthentication_Client</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/AllowBasicAuthentication_Service</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/AllowCredSSPAuthenticationClient</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/AllowCredSSPAuthenticationService</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/AllowRemoteServerManagement</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/AllowUnencryptedTraffic_Client</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/AllowUnencryptedTraffic_Service</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/DisallowDigestAuthentication</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/DisallowNegotiateAuthenticationClient</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/DisallowNegotiateAuthenticationService</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/DisallowStoringOfRunAsCredentials</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/SpecifyChannelBindingTokenHardeningLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/TrustedHosts</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/TurnOnCompatibilityHTTPListener</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#None" id="None">RemoteManagement/TurnOnCompatibilityHTTPSListener</a>
  </dd>
</dl>

### RemoteProcedureCall policies

<dl>
  <dd>
    <a href="./policy-csp-remoteprocedurecall.md#remoteprocedurecall-rpcendpointmapperclientauthentication" id="remoteprocedurecall-rpcendpointmapperclientauthentication">RemoteProcedureCall/RPCEndpointMapperClientAuthentication</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteprocedurecall.md#remoteprocedurecall-restrictunauthenticatedrpcclients" id="remoteprocedurecall-restrictunauthenticatedrpcclients">RemoteProcedureCall/RestrictUnauthenticatedRPCClients</a>
  </dd>
</dl>

### RemoteShell policies

<dl>
  <dd>
    <a href="./policy-csp-remoteshell.md#None" id="None">RemoteShell/AllowRemoteShellAccess</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteshell.md#None" id="None">RemoteShell/MaxConcurrentUsers</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteshell.md#None" id="None">RemoteShell/SpecifyIdleTimeout</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteshell.md#None" id="None">RemoteShell/SpecifyMaxMemory</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteshell.md#None" id="None">RemoteShell/SpecifyMaxProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteshell.md#None" id="None">RemoteShell/SpecifyMaxRemoteShells</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteshell.md#None" id="None">RemoteShell/SpecifyShellTimeout</a>
  </dd>
</dl>

### Search policies

<dl>
  <dd>
    <a href="./policy-csp-search.md#search-allowindexingencryptedstoresoritems" id="search-allowindexingencryptedstoresoritems">Search/AllowIndexingEncryptedStoresOrItems</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-allowsearchtouselocation" id="search-allowsearchtouselocation">Search/AllowSearchToUseLocation</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-allowusingdiacritics" id="search-allowusingdiacritics">Search/AllowUsingDiacritics</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-alwaysuseautolangdetection" id="search-alwaysuseautolangdetection">Search/AlwaysUseAutoLangDetection</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-disablebackoff" id="search-disablebackoff">Search/DisableBackoff</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-disableremovabledriveindexing" id="search-disableremovabledriveindexing">Search/DisableRemovableDriveIndexing</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-preventindexinglowdiskspacemb" id="search-preventindexinglowdiskspacemb">Search/PreventIndexingLowDiskSpaceMB</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-preventremotequeries" id="search-preventremotequeries">Search/PreventRemoteQueries</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-safesearchpermissions" id="search-safesearchpermissions">Search/SafeSearchPermissions</a>
  </dd>
</dl>

### Security policies

<dl>
  <dd>
    <a href="./policy-csp-security.md#security-allowaddprovisioningpackage" id="security-allowaddprovisioningpackage">Security/AllowAddProvisioningPackage</a>
  </dd>
  <dd>
    <a href="./policy-csp-security.md#security-allowautomaticdeviceencryptionforazureadjoineddevices" id="security-allowautomaticdeviceencryptionforazureadjoineddevices">Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices</a>
  </dd>
  <dd>
    <a href="./policy-csp-security.md#security-allowmanualrootcertificateinstallation" id="security-allowmanualrootcertificateinstallation">Security/AllowManualRootCertificateInstallation</a>
  </dd>
  <dd>
    <a href="./policy-csp-security.md#security-allowremoveprovisioningpackage" id="security-allowremoveprovisioningpackage">Security/AllowRemoveProvisioningPackage</a>
  </dd>
  <dd>
    <a href="./policy-csp-security.md#security-antitheftmode" id="security-antitheftmode">Security/AntiTheftMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-security.md#security-preventautomaticdeviceencryptionforazureadjoineddevices" id="security-preventautomaticdeviceencryptionforazureadjoineddevices">Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices</a>
  </dd>
  <dd>
    <a href="./policy-csp-security.md#security-requiredeviceencryption" id="security-requiredeviceencryption">Security/RequireDeviceEncryption</a>
  </dd>
  <dd>
    <a href="./policy-csp-security.md#security-requireprovisioningpackagesignature" id="security-requireprovisioningpackagesignature">Security/RequireProvisioningPackageSignature</a>
  </dd>
  <dd>
    <a href="./policy-csp-security.md#security-requireretrievehealthcertificateonboot" id="security-requireretrievehealthcertificateonboot">Security/RequireRetrieveHealthCertificateOnBoot</a>
  </dd>
</dl>

### Settings policies

<dl>
  <dd>
    <a href="./policy-csp-settings.md#settings-allowautoplay" id="settings-allowautoplay">Settings/AllowAutoPlay</a>
  </dd>
  <dd>
    <a href="./policy-csp-settings.md#settings-allowdatasense" id="settings-allowdatasense">Settings/AllowDataSense</a>
  </dd>
  <dd>
    <a href="./policy-csp-settings.md#settings-allowdatetime" id="settings-allowdatetime">Settings/AllowDateTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-settings.md#settings-alloweditdevicename" id="settings-alloweditdevicename">Settings/AllowEditDeviceName</a>
  </dd>
  <dd>
    <a href="./policy-csp-settings.md#settings-allowlanguage" id="settings-allowlanguage">Settings/AllowLanguage</a>
  </dd>
  <dd>
    <a href="./policy-csp-settings.md#settings-allowpowersleep" id="settings-allowpowersleep">Settings/AllowPowerSleep</a>
  </dd>
  <dd>
    <a href="./policy-csp-settings.md#settings-allowregion" id="settings-allowregion">Settings/AllowRegion</a>
  </dd>
  <dd>
    <a href="./policy-csp-settings.md#settings-allowsigninoptions" id="settings-allowsigninoptions">Settings/AllowSignInOptions</a>
  </dd>
  <dd>
    <a href="./policy-csp-settings.md#settings-allowvpn" id="settings-allowvpn">Settings/AllowVPN</a>
  </dd>
  <dd>
    <a href="./policy-csp-settings.md#settings-allowworkplace" id="settings-allowworkplace">Settings/AllowWorkplace</a>
  </dd>
  <dd>
    <a href="./policy-csp-settings.md#settings-allowyouraccount" id="settings-allowyouraccount">Settings/AllowYourAccount</a>
  </dd>
  <dd>
    <a href="./policy-csp-settings.md#settings-configuretaskbarcalendar" id="settings-configuretaskbarcalendar">Settings/ConfigureTaskbarCalendar</a>
  </dd>
  <dd>
    <a href="./policy-csp-settings.md#settings-pagevisibilitylist" id="settings-pagevisibilitylist">Settings/PageVisibilityList</a>
  </dd>
</dl>

### SmartScreen policies

<dl>
  <dd>
    <a href="./policy-csp-smartscreen.md#smartscreen-enableappinstallcontrol" id="smartscreen-enableappinstallcontrol">SmartScreen/EnableAppInstallControl</a>
  </dd>
  <dd>
    <a href="./policy-csp-smartscreen.md#smartscreen-enablesmartscreeninshell" id="smartscreen-enablesmartscreeninshell">SmartScreen/EnableSmartScreenInShell</a>
  </dd>
  <dd>
    <a href="./policy-csp-smartscreen.md#smartscreen-preventoverrideforfilesinshell" id="smartscreen-preventoverrideforfilesinshell">SmartScreen/PreventOverrideForFilesInShell</a>
  </dd>
</dl>

### Speech policies

<dl>
  <dd>
    <a href="./policy-csp-speech.md#speech-allowspeechmodelupdate" id="speech-allowspeechmodelupdate">Speech/AllowSpeechModelUpdate</a>
  </dd>
</dl>

### Start policies

<dl>
  <dd>
    <a href="./policy-csp-start.md#start-allowpinnedfolderdocuments" id="start-allowpinnedfolderdocuments">Start/AllowPinnedFolderDocuments</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-allowpinnedfolderdownloads" id="start-allowpinnedfolderdownloads">Start/AllowPinnedFolderDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-allowpinnedfolderfileexplorer" id="start-allowpinnedfolderfileexplorer">Start/AllowPinnedFolderFileExplorer</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-allowpinnedfolderhomegroup" id="start-allowpinnedfolderhomegroup">Start/AllowPinnedFolderHomeGroup</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-allowpinnedfoldermusic" id="start-allowpinnedfoldermusic">Start/AllowPinnedFolderMusic</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-allowpinnedfoldernetwork" id="start-allowpinnedfoldernetwork">Start/AllowPinnedFolderNetwork</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-allowpinnedfolderpersonalfolder" id="start-allowpinnedfolderpersonalfolder">Start/AllowPinnedFolderPersonalFolder</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-allowpinnedfolderpictures" id="start-allowpinnedfolderpictures">Start/AllowPinnedFolderPictures</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-allowpinnedfoldersettings" id="start-allowpinnedfoldersettings">Start/AllowPinnedFolderSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-allowpinnedfoldervideos" id="start-allowpinnedfoldervideos">Start/AllowPinnedFolderVideos</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-forcestartsize" id="start-forcestartsize">Start/ForceStartSize</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hideapplist" id="start-hideapplist">Start/HideAppList</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hidechangeaccountsettings" id="start-hidechangeaccountsettings">Start/HideChangeAccountSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hidefrequentlyusedapps" id="start-hidefrequentlyusedapps">Start/HideFrequentlyUsedApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hidehibernate" id="start-hidehibernate">Start/HideHibernate</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hidelock" id="start-hidelock">Start/HideLock</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hidepowerbutton" id="start-hidepowerbutton">Start/HidePowerButton</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hiderecentjumplists" id="start-hiderecentjumplists">Start/HideRecentJumplists</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hiderecentlyaddedapps" id="start-hiderecentlyaddedapps">Start/HideRecentlyAddedApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hiderestart" id="start-hiderestart">Start/HideRestart</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hideshutdown" id="start-hideshutdown">Start/HideShutDown</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hidesignout" id="start-hidesignout">Start/HideSignOut</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hidesleep" id="start-hidesleep">Start/HideSleep</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hideswitchaccount" id="start-hideswitchaccount">Start/HideSwitchAccount</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-hideusertile" id="start-hideusertile">Start/HideUserTile</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-importedgeassets" id="start-importedgeassets">Start/ImportEdgeAssets</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-nopinningtotaskbar" id="start-nopinningtotaskbar">Start/NoPinningToTaskbar</a>
  </dd>
  <dd>
    <a href="./policy-csp-start.md#start-startlayout" id="start-startlayout">Start/StartLayout</a>
  </dd>
</dl>

### Storage policies

<dl>
  <dd>
    <a href="./policy-csp-storage.md#storage-enhancedstoragedevices" id="storage-enhancedstoragedevices">Storage/EnhancedStorageDevices</a>
  </dd>
</dl>

### System policies

<dl>
  <dd>
    <a href="./policy-csp-system.md#system-allowbuildpreview" id="system-allowbuildpreview">System/AllowBuildPreview</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-allowembeddedmode" id="system-allowembeddedmode">System/AllowEmbeddedMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-allowexperimentation" id="system-allowexperimentation">System/AllowExperimentation</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-allowfontproviders" id="system-allowfontproviders">System/AllowFontProviders</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-allowlocation" id="system-allowlocation">System/AllowLocation</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-allowstoragecard" id="system-allowstoragecard">System/AllowStorageCard</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-allowtelemetry" id="system-allowtelemetry">System/AllowTelemetry</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-allowusertoresetphone" id="system-allowusertoresetphone">System/AllowUserToResetPhone</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-bootstartdriverinitialization" id="system-bootstartdriverinitialization">System/BootStartDriverInitialization</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-disableonedrivefilesync" id="system-disableonedrivefilesync">System/DisableOneDriveFileSync</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-disablesystemrestore" id="system-disablesystemrestore">System/DisableSystemRestore</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-telemetryproxy" id="system-telemetryproxy">System/TelemetryProxy</a>
  </dd>
</dl>

### TextInput policies

<dl>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-allowimelogging" id="textinput-allowimelogging">TextInput/AllowIMELogging</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-allowimenetworkaccess" id="textinput-allowimenetworkaccess">TextInput/AllowIMENetworkAccess</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-allowinputpanel" id="textinput-allowinputpanel">TextInput/AllowInputPanel</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-allowjapaneseimesurrogatepaircharacters" id="textinput-allowjapaneseimesurrogatepaircharacters">TextInput/AllowJapaneseIMESurrogatePairCharacters</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-allowjapaneseivscharacters" id="textinput-allowjapaneseivscharacters">TextInput/AllowJapaneseIVSCharacters</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-allowjapanesenonpublishingstandardglyph" id="textinput-allowjapanesenonpublishingstandardglyph">TextInput/AllowJapaneseNonPublishingStandardGlyph</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-allowjapaneseuserdictionary" id="textinput-allowjapaneseuserdictionary">TextInput/AllowJapaneseUserDictionary</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-allowkeyboardtextsuggestions" id="textinput-allowkeyboardtextsuggestions">TextInput/AllowKeyboardTextSuggestions</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-allowkoreanextendedhanja" id="textinput-allowkoreanextendedhanja">TextInput/AllowKoreanExtendedHanja</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-allowlanguagefeaturesuninstall" id="textinput-allowlanguagefeaturesuninstall">TextInput/AllowLanguageFeaturesUninstall</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-excludejapaneseimeexceptjis0208" id="textinput-excludejapaneseimeexceptjis0208">TextInput/ExcludeJapaneseIMEExceptJIS0208</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-excludejapaneseimeexceptjis0208andeudc" id="textinput-excludejapaneseimeexceptjis0208andeudc">TextInput/ExcludeJapaneseIMEExceptJIS0208andEUDC</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-excludejapaneseimeexceptshiftjis" id="textinput-excludejapaneseimeexceptshiftjis">TextInput/ExcludeJapaneseIMEExceptShiftJIS</a>
  </dd>
</dl>

### TimeLanguageSettings policies

<dl>
  <dd>
    <a href="./policy-csp-timelanguagesettings.md#timelanguagesettings-allowset24hourclock" id="timelanguagesettings-allowset24hourclock">TimeLanguageSettings/AllowSet24HourClock</a>
  </dd>
</dl>

### Update policies

<dl>
  <dd>
    <a href="./policy-csp-update.md#update-activehoursend" id="update-activehoursend">Update/ActiveHoursEnd</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-activehoursmaxrange" id="update-activehoursmaxrange">Update/ActiveHoursMaxRange</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-activehoursstart" id="update-activehoursstart">Update/ActiveHoursStart</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-allowautoupdate" id="update-allowautoupdate">Update/AllowAutoUpdate</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-allowmuupdateservice" id="update-allowmuupdateservice">Update/AllowMUUpdateService</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-allownonmicrosoftsignedupdate" id="update-allownonmicrosoftsignedupdate">Update/AllowNonMicrosoftSignedUpdate</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-allowupdateservice" id="update-allowupdateservice">Update/AllowUpdateService</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-autorestartdeadlineperiodindays" id="update-autorestartdeadlineperiodindays">Update/AutoRestartDeadlinePeriodInDays</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-autorestartnotificationschedule" id="update-autorestartnotificationschedule">Update/AutoRestartNotificationSchedule</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-autorestartrequirednotificationdismissal" id="update-autorestartrequirednotificationdismissal">Update/AutoRestartRequiredNotificationDismissal</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-branchreadinesslevel" id="update-branchreadinesslevel">Update/BranchReadinessLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-deferfeatureupdatesperiodindays" id="update-deferfeatureupdatesperiodindays">Update/DeferFeatureUpdatesPeriodInDays</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-deferqualityupdatesperiodindays" id="update-deferqualityupdatesperiodindays">Update/DeferQualityUpdatesPeriodInDays</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-deferupdateperiod" id="update-deferupdateperiod">Update/DeferUpdatePeriod</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-deferupgradeperiod" id="update-deferupgradeperiod">Update/DeferUpgradePeriod</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-detectionfrequency" id="update-detectionfrequency">Update/DetectionFrequency</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-engagedrestartdeadline" id="update-engagedrestartdeadline">Update/EngagedRestartDeadline</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-engagedrestartsnoozeschedule" id="update-engagedrestartsnoozeschedule">Update/EngagedRestartSnoozeSchedule</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-engagedrestarttransitionschedule" id="update-engagedrestarttransitionschedule">Update/EngagedRestartTransitionSchedule</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-excludewudriversinqualityupdate" id="update-excludewudriversinqualityupdate">Update/ExcludeWUDriversInQualityUpdate</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-fillemptycontenturls" id="update-fillemptycontenturls">Update/FillEmptyContentUrls</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-ignoremoappdownloadlimit" id="update-ignoremoappdownloadlimit">Update/IgnoreMOAppDownloadLimit</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-ignoremoupdatedownloadlimit" id="update-ignoremoupdatedownloadlimit">Update/IgnoreMOUpdateDownloadLimit</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-pausedeferrals" id="update-pausedeferrals">Update/PauseDeferrals</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-pausefeatureupdates" id="update-pausefeatureupdates">Update/PauseFeatureUpdates</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-PauseFeatureUpdatesStartTime" id="update-PauseFeatureUpdatesStartTime">Update/PauseFeatureUpdatesStartTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-pausequalityupdates" id="update-pausequalityupdates">Update/PauseQualityUpdates</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-PauseQualityUpdatesStartTime" id="update-PauseQualityUpdatesStartTime">Update/PauseQualityUpdatesStartTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-requiredeferupgrade" id="update-requiredeferupgrade">Update/RequireDeferUpgrade</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-requireupdateapproval" id="update-requireupdateapproval">Update/RequireUpdateApproval</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-scheduleimminentrestartwarning" id="update-scheduleimminentrestartwarning">Update/ScheduleImminentRestartWarning</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-schedulerestartwarning" id="update-schedulerestartwarning">Update/ScheduleRestartWarning</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-scheduledinstallday" id="update-scheduledinstallday">Update/ScheduledInstallDay</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-scheduledinstalleveryweek" id="update-scheduledinstalleveryweek">Update/ScheduledInstallEveryWeek</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-scheduledinstallfirstweek" id="update-scheduledinstallfirstweek">Update/ScheduledInstallFirstWeek</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-scheduledinstallfourthweek" id="update-scheduledinstallfourthweek">Update/ScheduledInstallFourthWeek</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-scheduledinstallsecondweek" id="update-scheduledinstallsecondweek">Update/ScheduledInstallSecondWeek</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-scheduledinstallthirdweek" id="update-scheduledinstallthirdweek">Update/ScheduledInstallThirdWeek</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-scheduledinstalltime" id="update-scheduledinstalltime">Update/ScheduledInstallTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-setautorestartnotificationdisable" id="update-setautorestartnotificationdisable">Update/SetAutoRestartNotificationDisable</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-setedurestart" id="update-setedurestart">Update/SetEDURestart</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-updateserviceurl" id="update-updateserviceurl">Update/UpdateServiceUrl</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-updateserviceurlalternate" id="update-updateserviceurlalternate">Update/UpdateServiceUrlAlternate</a>
  </dd>
</dl>

### Wifi policies

<dl>
  <dd>
    <a href="./policy-csp-wifi.md#wifi-allowwifihotspotreporting" id="wifi-allowwifihotspotreporting">WiFi/AllowWiFiHotSpotReporting</a>
  </dd>
  <dd>
    <a href="./policy-csp-wifi.md#wifi-allowautoconnecttowifisensehotspots" id="wifi-allowautoconnecttowifisensehotspots">Wifi/AllowAutoConnectToWiFiSenseHotspots</a>
  </dd>
  <dd>
    <a href="./policy-csp-wifi.md#wifi-allowinternetsharing" id="wifi-allowinternetsharing">Wifi/AllowInternetSharing</a>
  </dd>
  <dd>
    <a href="./policy-csp-wifi.md#wifi-allowmanualwificonfiguration" id="wifi-allowmanualwificonfiguration">Wifi/AllowManualWiFiConfiguration</a>
  </dd>
  <dd>
    <a href="./policy-csp-wifi.md#wifi-allowwifi" id="wifi-allowwifi">Wifi/AllowWiFi</a>
  </dd>
  <dd>
    <a href="./policy-csp-wifi.md#wifi-allowwifidirect" id="wifi-allowwifidirect">Wifi/AllowWiFiDirect</a>
  </dd>
  <dd>
    <a href="./policy-csp-wifi.md#wifi-wlanscanmode" id="wifi-wlanscanmode">Wifi/WLANScanMode</a>
  </dd>
</dl>

### WindowsDefenderSecurityCenter policies

<dl>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-companyname" id="windowsdefendersecuritycenter-companyname">WindowsDefenderSecurityCenter/CompanyName</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-disableappbrowserui" id="windowsdefendersecuritycenter-disableappbrowserui">WindowsDefenderSecurityCenter/DisableAppBrowserUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-disableenhancednotifications" id="windowsdefendersecuritycenter-disableenhancednotifications">WindowsDefenderSecurityCenter/DisableEnhancedNotifications</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-disablefamilyui" id="windowsdefendersecuritycenter-disablefamilyui">WindowsDefenderSecurityCenter/DisableFamilyUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-disablehealthui" id="windowsdefendersecuritycenter-disablehealthui">WindowsDefenderSecurityCenter/DisableHealthUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-disablenetworkui" id="windowsdefendersecuritycenter-disablenetworkui">WindowsDefenderSecurityCenter/DisableNetworkUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-disablenotifications" id="windowsdefendersecuritycenter-disablenotifications">WindowsDefenderSecurityCenter/DisableNotifications</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-disablevirusui" id="windowsdefendersecuritycenter-disablevirusui">WindowsDefenderSecurityCenter/DisableVirusUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-disallowexploitprotectionoverride" id="windowsdefendersecuritycenter-disallowexploitprotectionoverride">WindowsDefenderSecurityCenter/DisallowExploitProtectionOverride</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-email" id="windowsdefendersecuritycenter-email">WindowsDefenderSecurityCenter/Email</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-enablecustomizedtoasts" id="windowsdefendersecuritycenter-enablecustomizedtoasts">WindowsDefenderSecurityCenter/EnableCustomizedToasts</a>
  </dd>
    <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-enableinappcustomization" id="windowsdefendersecuritycenter-enableinappcustomization">WindowsDefenderSecurityCenter/EnableInAppCustomization</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-phone" id="windowsdefendersecuritycenter-phone">WindowsDefenderSecurityCenter/Phone</a>
  </dd>
    <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-url" id="windowsdefendersecuritycenter-url">WindowsDefenderSecurityCenter/URL</a>
  </dd>
</dl>


### WindowsInkWorkspace policies

<dl>
  <dd>
    <a href="./policy-csp-windowsinkworkspace.md#windowsinkworkspace-allowsuggestedappsinwindowsinkworkspace" id="windowsinkworkspace-allowsuggestedappsinwindowsinkworkspace">WindowsInkWorkspace/AllowSuggestedAppsInWindowsInkWorkspace</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsinkworkspace.md#windowsinkworkspace-allowwindowsinkworkspace" id="windowsinkworkspace-allowwindowsinkworkspace">WindowsInkWorkspace/AllowWindowsInkWorkspace</a>
  </dd>
</dl>

### WindowsLogon policies

<dl>
  <dd>
    <a href="./policy-csp-windowslogon.md#windowslogon-disablelockscreenappnotifications" id="windowslogon-disablelockscreenappnotifications">WindowsLogon/DisableLockScreenAppNotifications</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowslogon.md#windowslogon-dontdisplaynetworkselectionui" id="windowslogon-dontdisplaynetworkselectionui">WindowsLogon/DontDisplayNetworkSelectionUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowslogon.md#windowslogon-hidefastuserswitching" id="windowslogon-hidefastuserswitching">WindowsLogon/HideFastUserSwitching</a>
  </dd>
</dl>

### WirelessDisplay policies

<dl>
  <dd>
    <a href="./policy-csp-wirelessdisplay.md#wirelessdisplay-allowprojectionfrompc" id="wirelessdisplay-allowprojectionfrompc">WirelessDisplay/AllowProjectionFromPC</a>
  </dd>
  <dd>
    <a href="./policy-csp-wirelessdisplay.md#wirelessdisplay-allowprojectionfrompcoverinfrastructure" id="wirelessdisplay-allowprojectionfrompcoverinfrastructure">WirelessDisplay/AllowProjectionFromPCOverInfrastructure</a>
  </dd>
  <dd>
    <a href="./policy-csp-wirelessdisplay.md#wirelessdisplay-allowprojectiontopc" id="wirelessdisplay-allowprojectiontopc">WirelessDisplay/AllowProjectionToPC</a>
  </dd>
  <dd>
    <a href="./policy-csp-wirelessdisplay.md#wirelessdisplay-Allowprojectiontopcoverinfrastructure" id="wirelessdisplay-Allowprojectiontopcoverinfrastructure">WirelessDisplay/AllowProjectionToPCOverInfrastructure</a>
  </dd>
  <dd>
    <a href="./policy-csp-wirelessdisplay.md#wirelessdisplay-allowuserinputfromwirelessdisplayreceiver" id="wirelessdisplay-allowuserinputfromwirelessdisplayreceiver">WirelessDisplay/AllowUserInputFromWirelessDisplayReceiver</a>
  </dd>
  <dd>
    <a href="./policy-csp-wirelessdisplay.md#wirelessdisplay-requirepinforpairing" id="wirelessdisplay-requirepinforpairing">WirelessDisplay/RequirePinForPairing</a>
  </dd>
</dl>


## ADMX backed policies

-   [ActiveXControls/ApprovedInstallationSites](./policy-csp-activexcontrols.md#activexcontrols-approvedinstallationsites)
-   [AppVirtualization/AllowAppVClient](./policy-csp-appvirtualization.md#appvirtualization-allowappvclient)
-   [AppVirtualization/AllowDynamicVirtualization](./policy-csp-appvirtualization.md#appvirtualization-allowdynamicvirtualization)
-   [AppVirtualization/AllowPackageCleanup](./policy-csp-appvirtualization.md#appvirtualization-allowpackagecleanup)
-   [AppVirtualization/AllowPackageScripts](./policy-csp-appvirtualization.md#appvirtualization-allowpackagescripts)
-   [AppVirtualization/AllowPublishingRefreshUX](./policy-csp-appvirtualization.md#appvirtualization-allowpublishingrefreshux)
-   [AppVirtualization/AllowReportingServer](./policy-csp-appvirtualization.md#appvirtualization-allowreportingserver)
-   [AppVirtualization/AllowRoamingFileExclusions](./policy-csp-appvirtualization.md#appvirtualization-allowroamingfileexclusions)
-   [AppVirtualization/AllowRoamingRegistryExclusions](./policy-csp-appvirtualization.md#appvirtualization-allowroamingregistryexclusions)
-   [AppVirtualization/AllowStreamingAutoload](./policy-csp-appvirtualization.md#appvirtualization-allowstreamingautoload)
-   [AppVirtualization/ClientCoexistenceAllowMigrationmode](./policy-csp-appvirtualization.md#appvirtualization-clientcoexistenceallowmigrationmode)
-   [AppVirtualization/IntegrationAllowRootGlobal](./policy-csp-appvirtualization.md#appvirtualization-integrationallowrootglobal)
-   [AppVirtualization/IntegrationAllowRootUser](./policy-csp-appvirtualization.md#appvirtualization-integrationallowrootuser)
-   [AppVirtualization/PublishingAllowServer1](./policy-csp-appvirtualization.md#appvirtualization-publishingallowserver1)
-   [AppVirtualization/PublishingAllowServer2](./policy-csp-appvirtualization.md#appvirtualization-publishingallowserver2)
-   [AppVirtualization/PublishingAllowServer3](./policy-csp-appvirtualization.md#appvirtualization-publishingallowserver3)
-   [AppVirtualization/PublishingAllowServer4](./policy-csp-appvirtualization.md#appvirtualization-publishingallowserver4)
-   [AppVirtualization/PublishingAllowServer5](./policy-csp-appvirtualization.md#appvirtualization-publishingallowserver5)
-   [AppVirtualization/StreamingAllowCertificateFilterForClient_SSL](./policy-csp-appvirtualization.md#appvirtualization-streamingallowcertificatefilterforclient_ssl)
-   [AppVirtualization/StreamingAllowHighCostLaunch](./policy-csp-appvirtualization.md#appvirtualization-streamingallowhighcostlaunch)
-   [AppVirtualization/StreamingAllowLocationProvider](./policy-csp-appvirtualization.md#appvirtualization-streamingallowlocationprovider)
-   [AppVirtualization/StreamingAllowPackageInstallationRoot](./policy-csp-appvirtualization.md#appvirtualization-streamingallowpackageinstallationroot)
-   [AppVirtualization/StreamingAllowPackageSourceRoot](./policy-csp-appvirtualization.md#appvirtualization-streamingallowpackagesourceroot)
-   [AppVirtualization/StreamingAllowReestablishmentInterval](./policy-csp-appvirtualization.md#appvirtualization-streamingallowreestablishmentinterval)
-   [AppVirtualization/StreamingAllowReestablishmentRetries](./policy-csp-appvirtualization.md#appvirtualization-streamingallowreestablishmentretries)
-   [AppVirtualization/StreamingSharedContentStoreMode](./policy-csp-appvirtualization.md#appvirtualization-streamingsharedcontentstoremode)
-   [AppVirtualization/StreamingSupportBranchCache](./policy-csp-appvirtualization.md#appvirtualization-streamingsupportbranchcache)
-   [AppVirtualization/StreamingVerifyCertificateRevocationList](./policy-csp-appvirtualization.md#appvirtualization-streamingverifycertificaterevocationlist)
-   [AppVirtualization/VirtualComponentsAllowList](./policy-csp-appvirtualization.md#appvirtualization-virtualcomponentsallowlist)
-   [AttachmentManager/DoNotPreserveZoneInformation](./policy-csp-attachmentmanager.md#attachmentmanager-donotpreservezoneinformation)
-   [AttachmentManager/HideZoneInfoMechanism](./policy-csp-attachmentmanager.md#attachmentmanager-hidezoneinfomechanism)
-   [AttachmentManager/NotifyAntivirusPrograms](./policy-csp-attachmentmanager.md#attachmentmanager-notifyantivirusprograms)
-   [Autoplay/DisallowAutoplayForNonVolumeDevices](./policy-csp-autoplay.md#autoplay-disallowautoplayfornonvolumedevices)
-   [Autoplay/SetDefaultAutoRunBehavior](./policy-csp-autoplay.md#autoplay-setdefaultautorunbehavior)
-   [Autoplay/TurnOffAutoPlay](./policy-csp-autoplay.md#autoplay-turnoffautoplay)
-   [Cellular/ShowAppCellularAccessUI](./policy-csp-cellular.md#None)
-   [Connectivity/DiablePrintingOverHTTP](./policy-csp-connectivity.md#None)
-   [Connectivity/DisableDownloadingOfPrintDriversOverHTTP](./policy-csp-connectivity.md#None)
-   [Connectivity/DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards](./policy-csp-connectivity.md#None)
-   [Connectivity/HardenedUNCPaths](./policy-csp-connectivity.md#connectivity-hardeneduncpaths)
-   [Connectivity/ProhibitInstallationAndConfigurationOfNetworkBridge](./policy-csp-connectivity.md#None)
-   [CredentialProviders/AllowPINLogon](./policy-csp-credentialproviders.md#credentialproviders-allowpinlogon)
-   [CredentialProviders/BlockPicturePassword](./policy-csp-credentialproviders.md#credentialproviders-blockpicturepassword)
-   [CredentialsUI/DisablePasswordReveal](./policy-csp-credentialsui.md#credentialsui-disablepasswordreveal)
-   [CredentialsUI/EnumerateAdministrators](./policy-csp-credentialsui.md#credentialsui-enumerateadministrators)
-   [DataUsage/SetCost3G](./policy-csp-datausage.md#datausage-setcost3g)
-   [DataUsage/SetCost4G](./policy-csp-datausage.md#datausage-setcost4g)
-   [Desktop/PreventUserRedirectionOfProfileFolders](./policy-csp-desktop.md#desktop-preventuserredirectionofprofilefolders)
-   [DeviceInstallation/PreventInstallationOfMatchingDeviceIDs](./policy-csp-deviceinstallation.md#deviceinstallation-preventinstallationofmatchingdeviceids)
-   [DeviceInstallation/PreventInstallationOfMatchingDeviceSetupClasses](./policy-csp-deviceinstallation.md#deviceinstallation-preventinstallationofmatchingdevicesetupclasses)
-   [DeviceLock/PreventLockScreenSlideShow](./policy-csp-devicelock.md#devicelock-preventlockscreenslideshow)
-   [ErrorReporting/CustomizeConsentSettings](./policy-csp-errorreporting.md#errorreporting-customizeconsentsettings)
-   [ErrorReporting/DisableWindowsErrorReporting](./policy-csp-errorreporting.md#errorreporting-disablewindowserrorreporting)
-   [ErrorReporting/DisplayErrorNotification](./policy-csp-errorreporting.md#errorreporting-displayerrornotification)
-   [ErrorReporting/DoNotSendAdditionalData](./policy-csp-errorreporting.md#errorreporting-donotsendadditionaldata)
-   [ErrorReporting/PreventCriticalErrorDisplay](./policy-csp-errorreporting.md#errorreporting-preventcriticalerrordisplay)
-   [EventLogService/ControlEventLogBehavior](./policy-csp-eventlogservice.md#eventlogservice-controleventlogbehavior)
-   [EventLogService/SpecifyMaximumFileSizeApplicationLog](./policy-csp-eventlogservice.md#eventlogservice-specifymaximumfilesizeapplicationlog)
-   [EventLogService/SpecifyMaximumFileSizeSecurityLog](./policy-csp-eventlogservice.md#eventlogservice-specifymaximumfilesizesecuritylog)
-   [EventLogService/SpecifyMaximumFileSizeSystemLog](./policy-csp-eventlogservice.md#eventlogservice-specifymaximumfilesizesystemlog)
-   [InternetExplorer/AddSearchProvider](./policy-csp-internetexplorer.md#internetexplorer-addsearchprovider)
-   [InternetExplorer/AllowActiveXFiltering](./policy-csp-internetexplorer.md#internetexplorer-allowactivexfiltering)
-   [InternetExplorer/AllowAddOnList](./policy-csp-internetexplorer.md#internetexplorer-allowaddonlist)
-   [InternetExplorer/AllowAutoComplete](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/AllowCertificateAddressMismatchWarning](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/AllowDeletingBrowsingHistoryOnExit](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/AllowEnhancedProtectedMode](./policy-csp-internetexplorer.md#internetexplorer-allowenhancedprotectedmode)
-   [InternetExplorer/AllowEnterpriseModeFromToolsMenu](./policy-csp-internetexplorer.md#internetexplorer-allowenterprisemodefromtoolsmenu)
-   [InternetExplorer/AllowEnterpriseModeSiteList](./policy-csp-internetexplorer.md#internetexplorer-allowenterprisemodesitelist)
-   [InternetExplorer/AllowFallbackToSSL3](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/AllowInternetExplorer7PolicyList](./policy-csp-internetexplorer.md#internetexplorer-allowinternetexplorer7policylist)
-   [InternetExplorer/AllowInternetExplorerStandardsMode](./policy-csp-internetexplorer.md#internetexplorer-allowinternetexplorerstandardsmode)
-   [InternetExplorer/AllowInternetZoneTemplate](./policy-csp-internetexplorer.md#internetexplorer-allowinternetzonetemplate)
-   [InternetExplorer/AllowIntranetZoneTemplate](./policy-csp-internetexplorer.md#internetexplorer-allowintranetzonetemplate)
-   [InternetExplorer/AllowLocalMachineZoneTemplate](./policy-csp-internetexplorer.md#internetexplorer-allowlocalmachinezonetemplate)
-   [InternetExplorer/AllowLockedDownInternetZoneTemplate](./policy-csp-internetexplorer.md#internetexplorer-allowlockeddowninternetzonetemplate)
-   [InternetExplorer/AllowLockedDownIntranetZoneTemplate](./policy-csp-internetexplorer.md#internetexplorer-allowlockeddownintranetzonetemplate)
-   [InternetExplorer/AllowLockedDownLocalMachineZoneTemplate](./policy-csp-internetexplorer.md#internetexplorer-allowlockeddownlocalmachinezonetemplate)
-   [InternetExplorer/AllowLockedDownRestrictedSitesZoneTemplate](./policy-csp-internetexplorer.md#internetexplorer-allowlockeddownrestrictedsiteszonetemplate)
-   [InternetExplorer/AllowOneWordEntry](./policy-csp-internetexplorer.md#internetexplorer-allowonewordentry)
-   [InternetExplorer/AllowSiteToZoneAssignmentList](./policy-csp-internetexplorer.md#internetexplorer-allowsitetozoneassignmentlist)
-   [InternetExplorer/AllowSoftwareWhenSignatureIsInvalid](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/AllowSuggestedSites](./policy-csp-internetexplorer.md#internetexplorer-allowsuggestedsites)
-   [InternetExplorer/AllowTrustedSitesZoneTemplate](./policy-csp-internetexplorer.md#internetexplorer-allowtrustedsiteszonetemplate)
-   [InternetExplorer/AllowsLockedDownTrustedSitesZoneTemplate](./policy-csp-internetexplorer.md#internetexplorer-allowslockeddowntrustedsiteszonetemplate)
-   [InternetExplorer/AllowsRestrictedSitesZoneTemplate](./policy-csp-internetexplorer.md#internetexplorer-allowsrestrictedsiteszonetemplate)
-   [InternetExplorer/CheckServerCertificateRevocation](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/CheckSignaturesOnDownloadedPrograms](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/ConsistentMimeHandlingInternetExplorerProcesses](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/DisableAdobeFlash](./policy-csp-internetexplorer.md#internetexplorer-disableadobeflash)
-   [InternetExplorer/DisableBlockingOfOutdatedActiveXControls](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/DisableBypassOfSmartScreenWarnings](./policy-csp-internetexplorer.md#internetexplorer-disablebypassofsmartscreenwarnings)
-   [InternetExplorer/DisableBypassOfSmartScreenWarningsAboutUncommonFiles](./policy-csp-internetexplorer.md#internetexplorer-disablebypassofsmartscreenwarningsaboutuncommonfiles)
-   [InternetExplorer/DisableConfiguringHistory](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/DisableCrashDetection](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/DisableCustomerExperienceImprovementProgramParticipation](./policy-csp-internetexplorer.md#internetexplorer-disablecustomerexperienceimprovementprogramparticipation)
-   [InternetExplorer/DisableDeletingUserVisitedWebsites](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/DisableEnclosureDownloading](./policy-csp-internetexplorer.md#internetexplorer-disableenclosuredownloading)
-   [InternetExplorer/DisableEncryptionSupport](./policy-csp-internetexplorer.md#internetexplorer-disableencryptionsupport)
-   [InternetExplorer/DisableFirstRunWizard](./policy-csp-internetexplorer.md#internetexplorer-disablefirstrunwizard)
-   [InternetExplorer/DisableFlipAheadFeature](./policy-csp-internetexplorer.md#internetexplorer-disableflipaheadfeature)
-   [InternetExplorer/DisableHomePageChange](./policy-csp-internetexplorer.md#internetexplorer-disablehomepagechange)
-   [InternetExplorer/DisableIgnoringCertificateErrors](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/DisableInPrivateBrowsing](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/DisableProcessesInEnhancedProtectedMode](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/DisableProxyChange](./policy-csp-internetexplorer.md#internetexplorer-disableproxychange)
-   [InternetExplorer/DisableSearchProviderChange](./policy-csp-internetexplorer.md#internetexplorer-disablesearchproviderchange)
-   [InternetExplorer/DisableSecondaryHomePageChange](./policy-csp-internetexplorer.md#internetexplorer-disablesecondaryhomepagechange)
-   [InternetExplorer/DisableSecuritySettingsCheck](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/DisableUpdateCheck](./policy-csp-internetexplorer.md#internetexplorer-disableupdatecheck)
-   [InternetExplorer/DoNotAllowActiveXControlsInProtectedMode](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/DoNotAllowUsersToAddSites](./policy-csp-internetexplorer.md#internetexplorer-donotallowuserstoaddsites)
-   [InternetExplorer/DoNotAllowUsersToChangePolicies](./policy-csp-internetexplorer.md#internetexplorer-donotallowuserstochangepolicies)
-   [InternetExplorer/DoNotBlockOutdatedActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-donotblockoutdatedactivexcontrols)
-   [InternetExplorer/DoNotBlockOutdatedActiveXControlsOnSpecificDomains](./policy-csp-internetexplorer.md#internetexplorer-donotblockoutdatedactivexcontrolsonspecificdomains)
-   [InternetExplorer/IncludeAllLocalSites](./policy-csp-internetexplorer.md#internetexplorer-includealllocalsites)
-   [InternetExplorer/IncludeAllNetworkPaths](./policy-csp-internetexplorer.md#internetexplorer-includeallnetworkpaths)
-   [InternetExplorer/InternetZoneAllowAccessToDataSources](./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowaccesstodatasources)
-   [InternetExplorer/InternetZoneAllowAutomaticPromptingForActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowautomaticpromptingforactivexcontrols)
-   [InternetExplorer/InternetZoneAllowAutomaticPromptingForFileDownloads](./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowautomaticpromptingforfiledownloads)
-   [InternetExplorer/InternetZoneAllowCopyPasteViaScript](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneAllowDragAndDropCopyAndPasteFiles](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneAllowFontDownloads](./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowfontdownloads)
-   [InternetExplorer/InternetZoneAllowLessPrivilegedSites](./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowlessprivilegedsites)
-   [InternetExplorer/InternetZoneAllowLoadingOfXAMLFilesWRONG](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneAllowNETFrameworkReliantComponents](./policy-csp-internetexplorer.md#internetexplorer-internetzoneallownetframeworkreliantcomponents)
-   [InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneAllowScriptInitiatedWindows](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneAllowScriptlets](./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowscriptlets)
-   [InternetExplorer/InternetZoneAllowSmartScreenIE](./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowsmartscreenie)
-   [InternetExplorer/InternetZoneAllowUpdatesToStatusBarViaScript](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneAllowUserDataPersistence](./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowuserdatapersistence)
-   [InternetExplorer/InternetZoneDoNotRunAntimalwareAgainstActiveXControlsWRONG1](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneDoNotRunAntimalwareAgainstActiveXControlsWRONG2](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneDownloadSignedActiveXControls](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneDownloadUnsignedActiveXControls](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneEnableCrossSiteScriptingFilter](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneEnableMIMESniffing](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneEnableProtectedMode](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneIncludeLocalPathWhenUploadingFilesToServer](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneInitializeAndScriptActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-internetzoneinitializeandscriptactivexcontrols)
-   [InternetExplorer/InternetZoneInitializeAndScriptActiveXControlsNotMarkedSafe](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneJavaPermissionsWRONG1](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneJavaPermissionsWRONG2](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneLaunchingApplicationsAndFilesInIFRAME](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneLogonOptions](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneNavigateWindowsAndFrames](./policy-csp-internetexplorer.md#internetexplorer-internetzonenavigatewindowsandframes)
-   [InternetExplorer/InternetZoneRunNETFrameworkReliantComponentsNotSignedWithAuthenticode](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneUsePopupBlocker](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/InternetZoneWebsitesInLessPrivilegedZonesCanNavigateIntoThisZone](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/IntranetZoneAllowAccessToDataSources](./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowaccesstodatasources)
-   [InternetExplorer/IntranetZoneAllowAutomaticPromptingForActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowautomaticpromptingforactivexcontrols)
-   [InternetExplorer/IntranetZoneAllowAutomaticPromptingForFileDownloads](./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowautomaticpromptingforfiledownloads)
-   [InternetExplorer/IntranetZoneAllowFontDownloads](./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowfontdownloads)
-   [InternetExplorer/IntranetZoneAllowLessPrivilegedSites](./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowlessprivilegedsites)
-   [InternetExplorer/IntranetZoneAllowNETFrameworkReliantComponents](./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallownetframeworkreliantcomponents)
-   [InternetExplorer/IntranetZoneAllowScriptlets](./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowscriptlets)
-   [InternetExplorer/IntranetZoneAllowSmartScreenIE](./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowsmartscreenie)
-   [InternetExplorer/IntranetZoneAllowUserDataPersistence](./policy-csp-internetexplorer.md#internetexplorer-intranetzoneallowuserdatapersistence)
-   [InternetExplorer/IntranetZoneInitializeAndScriptActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-intranetzoneinitializeandscriptactivexcontrols)
-   [InternetExplorer/IntranetZoneNavigateWindowsAndFrames](./policy-csp-internetexplorer.md#internetexplorer-intranetzonenavigatewindowsandframes)
-   [InternetExplorer/LocalMachineZoneAllowAccessToDataSources](./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowaccesstodatasources)
-   [InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowautomaticpromptingforactivexcontrols)
-   [InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForFileDownloads](./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowautomaticpromptingforfiledownloads)
-   [InternetExplorer/LocalMachineZoneAllowFontDownloads](./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowfontdownloads)
-   [InternetExplorer/LocalMachineZoneAllowLessPrivilegedSites](./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowlessprivilegedsites)
-   [InternetExplorer/LocalMachineZoneAllowNETFrameworkReliantComponents](./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallownetframeworkreliantcomponents)
-   [InternetExplorer/LocalMachineZoneAllowScriptlets](./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowscriptlets)
-   [InternetExplorer/LocalMachineZoneAllowSmartScreenIE](./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowsmartscreenie)
-   [InternetExplorer/LocalMachineZoneAllowUserDataPersistence](./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneallowuserdatapersistence)
-   [InternetExplorer/LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/LocalMachineZoneInitializeAndScriptActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneinitializeandscriptactivexcontrols)
-   [InternetExplorer/LocalMachineZoneJavaPermissions](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/LocalMachineZoneNavigateWindowsAndFrames](./policy-csp-internetexplorer.md#internetexplorer-localmachinezonenavigatewindowsandframes)
-   [InternetExplorer/LockedDownInternetZoneAllowAccessToDataSources](./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowaccesstodatasources)
-   [InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowautomaticpromptingforactivexcontrols)
-   [InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads](./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowautomaticpromptingforfiledownloads)
-   [InternetExplorer/LockedDownInternetZoneAllowFontDownloads](./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowfontdownloads)
-   [InternetExplorer/LockedDownInternetZoneAllowLessPrivilegedSites](./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowlessprivilegedsites)
-   [InternetExplorer/LockedDownInternetZoneAllowNETFrameworkReliantComponents](./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallownetframeworkreliantcomponents)
-   [InternetExplorer/LockedDownInternetZoneAllowScriptlets](./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowscriptlets)
-   [InternetExplorer/LockedDownInternetZoneAllowSmartScreenIE](./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowsmartscreenie)
-   [InternetExplorer/LockedDownInternetZoneAllowUserDataPersistence](./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneallowuserdatapersistence)
-   [InternetExplorer/LockedDownInternetZoneInitializeAndScriptActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzoneinitializeandscriptactivexcontrols)
-   [InternetExplorer/LockedDownInternetZoneJavaPermissions](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/LockedDownInternetZoneNavigateWindowsAndFrames](./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzonenavigatewindowsandframes)
-   [InternetExplorer/LockedDownIntranetZoneAllowAccessToDataSources](./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowaccesstodatasources)
-   [InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowautomaticpromptingforactivexcontrols)
-   [InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads](./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowautomaticpromptingforfiledownloads)
-   [InternetExplorer/LockedDownIntranetZoneAllowFontDownloads](./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowfontdownloads)
-   [InternetExplorer/LockedDownIntranetZoneAllowLessPrivilegedSites](./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowlessprivilegedsites)
-   [InternetExplorer/LockedDownIntranetZoneAllowNETFrameworkReliantComponents](./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallownetframeworkreliantcomponents)
-   [InternetExplorer/LockedDownIntranetZoneAllowScriptlets](./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowscriptlets)
-   [InternetExplorer/LockedDownIntranetZoneAllowSmartScreenIE](./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowsmartscreenie)
-   [InternetExplorer/LockedDownIntranetZoneAllowUserDataPersistence](./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneallowuserdatapersistence)
-   [InternetExplorer/LockedDownIntranetZoneInitializeAndScriptActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzoneinitializeandscriptactivexcontrols)
-   [InternetExplorer/LockedDownIntranetZoneNavigateWindowsAndFrames](./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetzonenavigatewindowsandframes)
-   [InternetExplorer/LockedDownLocalMachineZoneAllowAccessToDataSources](./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowaccesstodatasources)
-   [InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforactivexcontrols)
-   [InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads](./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforfiledownloads)
-   [InternetExplorer/LockedDownLocalMachineZoneAllowFontDownloads](./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowfontdownloads)
-   [InternetExplorer/LockedDownLocalMachineZoneAllowLessPrivilegedSites](./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowlessprivilegedsites)
-   [InternetExplorer/LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents](./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallownetframeworkreliantcomponents)
-   [InternetExplorer/LockedDownLocalMachineZoneAllowScriptlets](./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowscriptlets)
-   [InternetExplorer/LockedDownLocalMachineZoneAllowSmartScreenIE](./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowsmartscreenie)
-   [InternetExplorer/LockedDownLocalMachineZoneAllowUserDataPersistence](./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneallowuserdatapersistence)
-   [InternetExplorer/LockedDownLocalMachineZoneInitializeAndScriptActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezoneinitializeandscriptactivexcontrols)
-   [InternetExplorer/LockedDownLocalMachineZoneJavaPermissions](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/LockedDownLocalMachineZoneNavigateWindowsAndFrames](./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezonenavigatewindowsandframes)
-   [InternetExplorer/LockedDownRestrictedSitesZoneAllowAccessToDataSources](./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowaccesstodatasources)
-   [InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforactivexcontrols)
-   [InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads](./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforfiledownloads)
-   [InternetExplorer/LockedDownRestrictedSitesZoneAllowFontDownloads](./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowfontdownloads)
-   [InternetExplorer/LockedDownRestrictedSitesZoneAllowLessPrivilegedSites](./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowlessprivilegedsites)
-   [InternetExplorer/LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents](./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallownetframeworkreliantcomponents)
-   [InternetExplorer/LockedDownRestrictedSitesZoneAllowScriptlets](./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowscriptlets)
-   [InternetExplorer/LockedDownRestrictedSitesZoneAllowSmartScreenIE](./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowsmartscreenie)
-   [InternetExplorer/LockedDownRestrictedSitesZoneAllowUserDataPersistence](./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneallowuserdatapersistence)
-   [InternetExplorer/LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszoneinitializeandscriptactivexcontrols)
-   [InternetExplorer/LockedDownRestrictedSitesZoneJavaPermissions](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/LockedDownRestrictedSitesZoneNavigateWindowsAndFrames](./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszonenavigatewindowsandframes)
-   [InternetExplorer/LockedDownTrustedSitesZoneAllowAccessToDataSources](./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowaccesstodatasources)
-   [InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforactivexcontrols)
-   [InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads](./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforfiledownloads)
-   [InternetExplorer/LockedDownTrustedSitesZoneAllowFontDownloads](./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowfontdownloads)
-   [InternetExplorer/LockedDownTrustedSitesZoneAllowLessPrivilegedSites](./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowlessprivilegedsites)
-   [InternetExplorer/LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents](./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallownetframeworkreliantcomponents)
-   [InternetExplorer/LockedDownTrustedSitesZoneAllowScriptlets](./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowscriptlets)
-   [InternetExplorer/LockedDownTrustedSitesZoneAllowSmartScreenIE](./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowsmartscreenie)
-   [InternetExplorer/LockedDownTrustedSitesZoneAllowUserDataPersistence](./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneallowuserdatapersistence)
-   [InternetExplorer/LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszoneinitializeandscriptactivexcontrols)
-   [InternetExplorer/LockedDownTrustedSitesZoneJavaPermissions](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/LockedDownTrustedSitesZoneNavigateWindowsAndFrames](./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszonenavigatewindowsandframes)
-   [InternetExplorer/MKProtocolSecurityRestrictionInternetExplorerProcesses](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/MimeSniffingSafetyFeatureInternetExplorerProcesses](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/NotificationBarInternetExplorerProcesses](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/PreventManagingSmartScreenFilter](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/PreventPerUserInstallationOfActiveXControls](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/ProtectionFromZoneElevationInternetExplorerProcesses](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RemoveRunThisTimeButtonForOutdatedActiveXControls](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictActiveXInstallInternetExplorerProcesses](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictFileDownloadInternetExplorerProcesses](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowAccessToDataSources](./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowaccesstodatasources)
-   [InternetExplorer/RestrictedSitesZoneAllowActiveScripting](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowautomaticpromptingforactivexcontrols)
-   [InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads](./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowautomaticpromptingforfiledownloads)
-   [InternetExplorer/RestrictedSitesZoneAllowBinaryAndScriptBehaviors](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowCopyPasteViaScript](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowFileDownloads](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowFontDownloadsWRONG1](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowFontDownloadsWRONG2](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowLessPrivilegedSites](./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowlessprivilegedsites)
-   [InternetExplorer/RestrictedSitesZoneAllowLoadingOfXAMLFiles](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowMETAREFRESH](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowNETFrameworkReliantComponents](./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallownetframeworkreliantcomponents)
-   [InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowScriptInitiatedWindows](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowScriptlets](./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowscriptlets)
-   [InternetExplorer/RestrictedSitesZoneAllowSmartScreenIE](./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowsmartscreenie)
-   [InternetExplorer/RestrictedSitesZoneAllowUpdatesToStatusBarViaScript](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneAllowUserDataPersistence](./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowuserdatapersistence)
-   [InternetExplorer/RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneDownloadSignedActiveXControls](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneDownloadUnsignedActiveXControls](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneEnableMIMESniffing](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneInitializeAndScriptActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneinitializeandscriptactivexcontrols)
-   [InternetExplorer/RestrictedSitesZoneJavaPermissions](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneLogonOptions](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFrames](./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszonenavigatewindowsandframes)
-   [InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFramesAcrossDomains](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneRunActiveXControlsAndPlugins](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneWRONG](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneWRONG2](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneWRONG3](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneWRONG4](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/RestrictedSitesZoneWRONG5](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/ScriptedWindowSecurityRestrictionsInternetExplorerProcesses](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/SearchProviderList](./policy-csp-internetexplorer.md#internetexplorer-searchproviderlist)
-   [InternetExplorer/SecurityZonesUseOnlyMachineSettings](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/SpecifyUseOfActiveXInstallerService](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/TrustedSitesZoneAllowAccessToDataSources](./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowaccesstodatasources)
-   [InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowautomaticpromptingforactivexcontrols)
-   [InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForFileDownloads](./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowautomaticpromptingforfiledownloads)
-   [InternetExplorer/TrustedSitesZoneAllowFontDownloads](./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowfontdownloads)
-   [InternetExplorer/TrustedSitesZoneAllowLessPrivilegedSites](./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowlessprivilegedsites)
-   [InternetExplorer/TrustedSitesZoneAllowNETFrameworkReliantComponents](./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallownetframeworkreliantcomponents)
-   [InternetExplorer/TrustedSitesZoneAllowScriptlets](./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowscriptlets)
-   [InternetExplorer/TrustedSitesZoneAllowSmartScreenIE](./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowsmartscreenie)
-   [InternetExplorer/TrustedSitesZoneAllowUserDataPersistence](./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneallowuserdatapersistence)
-   [InternetExplorer/TrustedSitesZoneInitializeAndScriptActiveXControls](./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneinitializeandscriptactivexcontrols)
-   [InternetExplorer/TrustedSitesZoneJavaPermissions](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/TrustedSitesZoneNavigateWindowsAndFrames](./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszonenavigatewindowsandframes)
-   [InternetExplorer/TrustedSitesZoneWRONG1](./policy-csp-internetexplorer.md#None)
-   [InternetExplorer/TrustedSitesZoneWRONG2](./policy-csp-internetexplorer.md#None)
-   [Kerberos/AllowForestSearchOrder](./policy-csp-kerberos.md#kerberos-allowforestsearchorder)
-   [Kerberos/KerberosClientSupportsClaimsCompoundArmor](./policy-csp-kerberos.md#kerberos-kerberosclientsupportsclaimscompoundarmor)
-   [Kerberos/RequireKerberosArmoring](./policy-csp-kerberos.md#kerberos-requirekerberosarmoring)
-   [Kerberos/RequireStrictKDCValidation](./policy-csp-kerberos.md#kerberos-requirestrictkdcvalidation)
-   [Kerberos/SetMaximumContextTokenSize](./policy-csp-kerberos.md#kerberos-setmaximumcontexttokensize)
-   [Power/AllowStandbyWhenSleepingPluggedIn](./policy-csp-power.md#power-allowstandbywhensleepingpluggedin)
-   [Power/DisplayOffTimeoutOnBattery](./policy-csp-power.md#power-displayofftimeoutonbattery)
-   [Power/DisplayOffTimeoutPluggedIn](./policy-csp-power.md#power-displayofftimeoutpluggedin)
-   [Power/HibernateTimeoutOnBattery](./policy-csp-power.md#power-hibernatetimeoutonbattery)
-   [Power/HibernateTimeoutPluggedIn](./policy-csp-power.md#power-hibernatetimeoutpluggedin)
-   [Power/RequirePasswordWhenComputerWakesOnBattery](./policy-csp-power.md#power-requirepasswordwhencomputerwakesonbattery)
-   [Power/RequirePasswordWhenComputerWakesPluggedIn](./policy-csp-power.md#power-requirepasswordwhencomputerwakespluggedin)
-   [Power/StandbyTimeoutOnBattery](./policy-csp-power.md#power-standbytimeoutonbattery)
-   [Power/StandbyTimeoutPluggedIn](./policy-csp-power.md#power-standbytimeoutpluggedin)
-   [Printers/PointAndPrintRestrictions](./policy-csp-printers.md#printers-pointandprintrestrictions)
-   [Printers/PointAndPrintRestrictions_User](./policy-csp-printers.md#printers-pointandprintrestrictions_user)
-   [Printers/PublishPrinters](./policy-csp-printers.md#printers-publishprinters)
-   [RemoteAssistance/CustomizeWarningMessages](./policy-csp-remoteassistance.md#remoteassistance-customizewarningmessages)
-   [RemoteAssistance/SessionLogging](./policy-csp-remoteassistance.md#remoteassistance-sessionlogging)
-   [RemoteAssistance/SolicitedRemoteAssistance](./policy-csp-remoteassistance.md#remoteassistance-solicitedremoteassistance)
-   [RemoteAssistance/UnsolicitedRemoteAssistance](./policy-csp-remoteassistance.md#remoteassistance-unsolicitedremoteassistance)
-   [RemoteDesktopServices/AllowUsersToConnectRemotely](./policy-csp-remotedesktopservices.md#remotedesktopservices-allowuserstoconnectremotely)
-   [RemoteDesktopServices/ClientConnectionEncryptionLevel](./policy-csp-remotedesktopservices.md#remotedesktopservices-clientconnectionencryptionlevel)
-   [RemoteDesktopServices/DoNotAllowDriveRedirection](./policy-csp-remotedesktopservices.md#remotedesktopservices-donotallowdriveredirection)
-   [RemoteDesktopServices/DoNotAllowPasswordSaving](./policy-csp-remotedesktopservices.md#remotedesktopservices-donotallowpasswordsaving)
-   [RemoteDesktopServices/PromptForPasswordUponConnection](./policy-csp-remotedesktopservices.md#remotedesktopservices-promptforpassworduponconnection)
-   [RemoteDesktopServices/RequireSecureRPCCommunication](./policy-csp-remotedesktopservices.md#remotedesktopservices-requiresecurerpccommunication)
-   [RemoteManagement/AllowBasicAuthentication_Client](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/AllowBasicAuthentication_Service](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/AllowCredSSPAuthenticationClient](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/AllowCredSSPAuthenticationService](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/AllowRemoteServerManagement](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/AllowUnencryptedTraffic_Client](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/AllowUnencryptedTraffic_Service](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/DisallowDigestAuthentication](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/DisallowNegotiateAuthenticationClient](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/DisallowNegotiateAuthenticationService](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/DisallowStoringOfRunAsCredentials](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/SpecifyChannelBindingTokenHardeningLevel](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/TrustedHosts](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/TurnOnCompatibilityHTTPListener](./policy-csp-remotemanagement.md#None)
-   [RemoteManagement/TurnOnCompatibilityHTTPSListener](./policy-csp-remotemanagement.md#None)
-   [RemoteProcedureCall/RPCEndpointMapperClientAuthentication](./policy-csp-remoteprocedurecall.md#remoteprocedurecall-rpcendpointmapperclientauthentication)
-   [RemoteProcedureCall/RestrictUnauthenticatedRPCClients](./policy-csp-remoteprocedurecall.md#remoteprocedurecall-restrictunauthenticatedrpcclients)
-   [RemoteShell/AllowRemoteShellAccess](./policy-csp-remoteshell.md#None)
-   [RemoteShell/MaxConcurrentUsers](./policy-csp-remoteshell.md#None)
-   [RemoteShell/SpecifyIdleTimeout](./policy-csp-remoteshell.md#None)
-   [RemoteShell/SpecifyMaxMemory](./policy-csp-remoteshell.md#None)
-   [RemoteShell/SpecifyMaxProcesses](./policy-csp-remoteshell.md#None)
-   [RemoteShell/SpecifyMaxRemoteShells](./policy-csp-remoteshell.md#None)
-   [RemoteShell/SpecifyShellTimeout](./policy-csp-remoteshell.md#None)
-   [Storage/EnhancedStorageDevices](./policy-csp-storage.md#storage-enhancedstoragedevices)
-   [System/BootStartDriverInitialization](./policy-csp-system.md#system-bootstartdriverinitialization)
-   [System/DisableSystemRestore](./policy-csp-system.md#system-disablesystemrestore)
-   [WindowsLogon/DisableLockScreenAppNotifications](./policy-csp-windowslogon.md#windowslogon-disablelockscreenappnotifications)
-   [WindowsLogon/DontDisplayNetworkSelectionUI](./policy-csp-windowslogon.md#windowslogon-dontdisplaynetworkselectionui)

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>Policies supported by IoT Core  

-   [ApplicationManagement/AllowDeveloperUnlock](#applicationmanagement-allowdeveloperunlock)  
-   [Authentication/AllowFastReconnect](#authentication-allowfastreconnect)  
-   [Bluetooth/AllowAdvertising](#bluetooth-allowadvertising)  
-   [Bluetooth/AllowDiscoverableMode](#bluetooth-allowdiscoverablemode)  
-   [Bluetooth/LocalDeviceName](#bluetooth-localdevicename)  
-   [Bluetooth/ServicesAllowedList](#bluetooth-servicesallowedlist)  
-   [Browser/AllowAutofill](#browser-allowautofill)  
-   [Browser/AllowBrowser](#browser-allowbrowser)  
-   [Browser/AllowCookies](#browser-allowcookies)  
-   [Browser/AllowDoNotTrack](#browser-allowdonottrack)  
-   [Browser/AllowInPrivate](#browser-allowinprivate)  
-   [Browser/AllowPasswordManager](#browser-allowpasswordmanager)  
-   [Browser/AllowPopups](#browser-allowpopups)  
-   [Browser/AllowSearchSuggestionsinAddressBar](#browser-allowsearchsuggestionsinaddressbar)  
-   [Browser/EnterpriseModeSiteList](#browser-enterprisemodesitelist)  
-   [Browser/EnterpriseSiteListServiceUrl](#browser-enterprisesitelistserviceurl)  
-   [Browser/SendIntranetTraffictoInternetExplorer](#browser-sendintranettraffictointernetexplorer)  
-   [Camera/AllowCamera](#camera-allowcamera)  
-   [Connectivity/AllowBluetooth](#connectivity-allowbluetooth)  
-   [Connectivity/AllowCellularDataRoaming](#connectivity-allowcellulardataroaming)  
-   [Connectivity/AllowNFC](#connectivity-allownfc)  
-   [Connectivity/AllowUSBConnection](#connectivity-allowusbconnection)  
-   [Connectivity/AllowVPNOverCellular](#connectivity-allowvpnovercellular)  
-   [Connectivity/AllowVPNRoamingOverCellular](#connectivity-allowvpnroamingovercellular)  
-   [Connectivity/HardenedUNCPaths](#connectivity-hardeneduncpaths)  
-   [CredentialProviders/AllowPINLogon](#credentialproviders-allowpinlogon)  
-   [CredentialProviders/BlockPicturePassword](#credentialproviders-blockpicturepassword)  
-   [DataProtection/AllowDirectMemoryAccess](#dataprotection-allowdirectmemoryaccess)  
-   [Privacy/LetAppsGetDiagnosticInfo](#privacy-letappsgetdiagnosticinfo)  
-   [Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps](#privacy-letappsgetdiagnosticinfo-forceallowtheseapps)  
-   [Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps](#privacy-letappsgetdiagnosticinfo-forcedenytheseapps)  
-   [Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps](#privacy-letappsgetdiagnosticinfo-userincontroloftheseapps)  
-   [Privacy/LetAppsRunInBackground](#privacy-letappsruninbackground)  
-   [Privacy/LetAppsRunInBackground_ForceAllowTheseApps](#privacy-letappsruninbackground-forceallowtheseapps)  
-   [Privacy/LetAppsRunInBackground_ForceDenyTheseApps](#privacy-letappsruninbackground-forcedenytheseapps)  
-   [Privacy/LetAppsRunInBackground_UserInControlOfTheseApps](#privacy-letappsruninbackground-userincontroloftheseapps)  
-   [Security/AllowAddProvisioningPackage](#security-allowaddprovisioningpackage)  
-   [Security/AllowRemoveProvisioningPackage](#security-allowremoveprovisioningpackage)  
-   [Security/RequireDeviceEncryption](#security-requiredeviceencryption)  
-   [Security/RequireProvisioningPackageSignature](#security-requireprovisioningpackagesignature)  
-   [System/AllowEmbeddedMode](#system-allowembeddedmode)  
-   [System/AllowFontProviders](#system-allowfontproviders)  
-   [System/AllowStorageCard](#system-allowstoragecard)  
-   [System/TelemetryProxy](#system-telemetryproxy)  
-   [Update/AllowNonMicrosoftSignedUpdate](#update-allownonmicrosoftsignedupdate)  
-   [Update/AllowUpdateService](#update-allowupdateservice)  
-   [Update/PauseDeferrals](#update-pausedeferrals)  
-   [Update/RequireDeferUpgrade](#update-requiredeferupgrade)  
-   [Update/RequireUpdateApproval](#update-requireupdateapproval)  
-   [Update/ScheduledInstallDay](#update-scheduledinstallday)  
-   [Update/ScheduledInstallTime](#update-scheduledinstalltime)  
-   [Update/UpdateServiceUrl](#update-updateserviceurl)  
-   [Wifi/AllowAutoConnectToWiFiSenseHotspots](#wifi-allowautoconnecttowifisensehotspots)  
-   [Wifi/AllowInternetSharing](#wifi-allowinternetsharing)  
-   [Wifi/AllowWiFi](#wifi-allowwifi)  
-   [Wifi/WLANScanMode](#wifi-wlanscanmode)  
<!--EndIoTCore-->

<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>Policies supported by Windows Holographic for Business  

-   [Accounts/AllowMicrosoftAccountConnection](#accounts-allowmicrosoftaccountconnection)  
-   [ApplicationManagement/AllowAllTrustedApps](#applicationmanagement-allowalltrustedapps)  
-   [ApplicationManagement/AllowAppStoreAutoUpdate](#applicationmanagement-allowappstoreautoupdate)  
-   [ApplicationManagement/AllowDeveloperUnlock](#applicationmanagement-allowdeveloperunlock)  
-   [Authentication/AllowFastReconnect](#authentication-allowfastreconnect)  
-   [Bluetooth/AllowAdvertising](#bluetooth-allowadvertising)  
-   [Bluetooth/AllowDiscoverableMode](#bluetooth-allowdiscoverablemode)  
-   [Bluetooth/LocalDeviceName](#bluetooth-localdevicename)  
-   [Browser/AllowCookies](#browser-allowcookies)  
-   [Browser/AllowDoNotTrack](#browser-allowdonottrack)  
-   [Browser/AllowPasswordManager](#browser-allowpasswordmanager)  
-   [Browser/AllowPopups](#browser-allowpopups)  
-   [Browser/AllowSearchSuggestionsinAddressBar](#browser-allowsearchsuggestionsinaddressbar)  
-   [Browser/AllowSmartScreen](#browser-allowsmartscreen)  
-   [Connectivity/AllowBluetooth](#connectivity-allowbluetooth)  
-   [DeviceLock/AllowIdleReturnWithoutPassword](#devicelock-allowidlereturnwithoutpassword)  
-   [DeviceLock/DevicePasswordEnabled](#devicelock-devicepasswordenabled)  
-   [Experience/AllowCortana](#experience-allowcortana)  
-   [Experience/AllowManualMDMUnenrollment](#experience-allowmanualmdmunenrollment)  
-   [Privacy/AllowInputPersonalization](#privacy-allowinputpersonalization)  
-   [Privacy/LetAppsGetDiagnosticInfo](#privacy-letappsgetdiagnosticinfo)  
-   [Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps](#privacy-letappsgetdiagnosticinfo-forceallowtheseapps)  
-   [Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps](#privacy-letappsgetdiagnosticinfo-forcedenytheseapps)  
-   [Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps](#privacy-letappsgetdiagnosticinfo-userincontroloftheseapps)  
-   [Privacy/LetAppsRunInBackground](#privacy-letappsruninbackground)  
-   [Privacy/LetAppsRunInBackground_ForceAllowTheseApps](#privacy-letappsruninbackground-forceallowtheseapps)  
-   [Privacy/LetAppsRunInBackground_ForceDenyTheseApps](#privacy-letappsruninbackground-forcedenytheseapps)  
-   [Privacy/LetAppsRunInBackground_UserInControlOfTheseApps](#privacy-letappsruninbackground-userincontroloftheseapps)  
-   [Search/AllowSearchToUseLocation](#search-allowsearchtouselocation)  
-   [Security/RequireDeviceEncryption](#security-requiredeviceencryption)  
-   [Settings/AllowDateTime](#settings-allowdatetime)  
-   [Settings/AllowVPN](#settings-allowvpn)  
-   [System/AllowFontProviders](#system-allowfontproviders)  
-   [System/AllowLocation](#system-allowlocation)  
-   [System/AllowTelemetry](#system-allowtelemetry)  
-   [Update/AllowAutoUpdate](#update-allowautoupdate)  
-   [Update/AllowUpdateService](#update-allowupdateservice)  
-   [Update/RequireDeferUpgrade](#update-requiredeferupgrade)  
-   [Update/RequireUpdateApproval](#update-requireupdateapproval)  
-   [Update/UpdateServiceUrl](#update-updateserviceurl)  
<!--EndHoloLens-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Policies supported by Microsoft Surface Hub  

-   [ApplicationDefaults/DefaultAssociationsConfiguration](#applicationdefaults-defaultassociationsconfiguration)  
-   [Bluetooth/AllowAdvertising](#bluetooth-allowadvertising)  
-   [Bluetooth/AllowDiscoverableMode](#bluetooth-allowdiscoverablemode)  
-   [Bluetooth/AllowPrepairing](#bluetooth-allowprepairing)  
-   [Bluetooth/LocalDeviceName](#bluetooth-localdevicename)  
-   [Bluetooth/ServicesAllowedList](#bluetooth-servicesallowedlist)  
-   [Browser/AllowAddressBarDropdown](#browser-allowaddressbardropdown)  
-   [Browser/AllowCookies](#browser-allowcookies)  
-   [Browser/AllowDeveloperTools](#browser-allowdevelopertools)  
-   [Browser/AllowDoNotTrack](#browser-allowdonottrack)  
-   [Browser/AllowMicrosoftCompatibilityList](#browser-allowmicrosoftcompatibilitylist)  
-   [Browser/AllowPopups](#browser-allowpopups)  
-   [Browser/AllowSearchSuggestionsinAddressBar](#browser-allowsearchsuggestionsinaddressbar)  
-   [Browser/AllowSmartScreen](#browser-allowsmartscreen)  
-   [Browser/ClearBrowsingDataOnExit](#browser-clearbrowsingdataonexit)  
-   [Browser/ConfigureAdditionalSearchEngines](#browser-configureadditionalsearchengines)  
-   [Browser/DisableLockdownOfStartPages](#browser-disablelockdownofstartpages)  
-   [Browser/HomePages](#browser-homepages)  
-   [Browser/PreventLiveTileDataCollection](#browser-preventlivetiledatacollection)  
-   [Browser/PreventSmartScreenPromptOverride](#browser-preventsmartscreenpromptoverride)  
-   [Browser/PreventSmartScreenPromptOverrideForFiles](#browser-preventsmartscreenpromptoverrideforfiles)  
-   [Browser/SetDefaultSearchEngine](#browser-setdefaultsearchengine)  
-   [Camera/AllowCamera](#camera-allowcamera)  
-   [ConfigOperations/ADMXInstall](#None)  
-   [Connectivity/AllowBluetooth](#connectivity-allowbluetooth)  
-   [Connectivity/AllowConnectedDevices](#connectivity-allowconnecteddevices)  
-   [Cryptography/AllowFipsAlgorithmPolicy](#cryptography-allowfipsalgorithmpolicy)  
-   [Cryptography/TLSCipherSuites](#cryptography-tlsciphersuites)  
-   [Defender/AllowArchiveScanning](#defender-allowarchivescanning)  
-   [Defender/AllowBehaviorMonitoring](#defender-allowbehaviormonitoring)  
-   [Defender/AllowCloudProtection](#defender-allowcloudprotection)  
-   [Defender/AllowEmailScanning](#defender-allowemailscanning)  
-   [Defender/AllowFullScanOnMappedNetworkDrives](#defender-allowfullscanonmappednetworkdrives)  
-   [Defender/AllowFullScanRemovableDriveScanning](#defender-allowfullscanremovabledrivescanning)  
-   [Defender/AllowIOAVProtection](#defender-allowioavprotection)  
-   [Defender/AllowIntrusionPreventionSystem](#defender-allowintrusionpreventionsystem)  
-   [Defender/AllowOnAccessProtection](#defender-allowonaccessprotection)  
-   [Defender/AllowRealtimeMonitoring](#defender-allowrealtimemonitoring)  
-   [Defender/AllowScanningNetworkFiles](#defender-allowscanningnetworkfiles)  
-   [Defender/AllowScriptScanning](#defender-allowscriptscanning)  
-   [Defender/AllowUserUIAccess](#defender-allowuseruiaccess)  
-   [Defender/AvgCPULoadFactor](#defender-avgcpuloadfactor)  
-   [Defender/DaysToRetainCleanedMalware](#defender-daystoretaincleanedmalware)  
-   [Defender/ExcludedExtensions](#defender-excludedextensions)  
-   [Defender/ExcludedPaths](#defender-excludedpaths)  
-   [Defender/ExcludedProcesses](#defender-excludedprocesses)  
-   [Defender/PUAProtection](#defender-puaprotection)  
-   [Defender/RealTimeScanDirection](#defender-realtimescandirection)  
-   [Defender/ScanParameter](#defender-scanparameter)  
-   [Defender/ScheduleQuickScanTime](#defender-schedulequickscantime)  
-   [Defender/ScheduleScanDay](#defender-schedulescanday)  
-   [Defender/ScheduleScanTime](#defender-schedulescantime)  
-   [Defender/SignatureUpdateInterval](#defender-signatureupdateinterval)  
-   [Defender/SubmitSamplesConsent](#defender-submitsamplesconsent)  
-   [Defender/ThreatSeverityDefaultAction](#defender-threatseveritydefaultaction)  
-   [DeliveryOptimization/DOAbsoluteMaxCacheSize](#deliveryoptimization-doabsolutemaxcachesize)  
-   [DeliveryOptimization/DOAllowVPNPeerCaching](#deliveryoptimization-doallowvpnpeercaching)  
-   [DeliveryOptimization/DODownloadMode](#deliveryoptimization-dodownloadmode)  
-   [DeliveryOptimization/DOGroupId](#deliveryoptimization-dogroupid)  
-   [DeliveryOptimization/DOMaxCacheAge](#deliveryoptimization-domaxcacheage)  
-   [DeliveryOptimization/DOMaxCacheSize](#deliveryoptimization-domaxcachesize)  
-   [DeliveryOptimization/DOMaxDownloadBandwidth](#deliveryoptimization-domaxdownloadbandwidth)  
-   [DeliveryOptimization/DOMaxUploadBandwidth](#deliveryoptimization-domaxuploadbandwidth)  
-   [DeliveryOptimization/DOMinBackgroundQos](#deliveryoptimization-dominbackgroundqos)  
-   [DeliveryOptimization/DOMinDiskSizeAllowedToPeer](#deliveryoptimization-domindisksizeallowedtopeer)  
-   [DeliveryOptimization/DOMinFileSizeToCache](#deliveryoptimization-dominfilesizetocache)  
-   [DeliveryOptimization/DOMinRAMAllowedToPeer](#deliveryoptimization-dominramallowedtopeer)  
-   [DeliveryOptimization/DOModifyCacheDrive](#deliveryoptimization-domodifycachedrive)  
-   [DeliveryOptimization/DOMonthlyUploadDataCap](#deliveryoptimization-domonthlyuploaddatacap)  
-   [DeliveryOptimization/DOPercentageMaxDownloadBandwidth](#deliveryoptimization-dopercentagemaxdownloadbandwidth)  
-   [Desktop/PreventUserRedirectionOfProfileFolders](#desktop-preventuserredirectionofprofilefolders)  
-   [DeviceGuard/AllowKernelControlFlowGuard](#None)  
-   [Privacy/LetAppsGetDiagnosticInfo](#privacy-letappsgetdiagnosticinfo)  
-   [Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps](#privacy-letappsgetdiagnosticinfo-forceallowtheseapps)  
-   [Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps](#privacy-letappsgetdiagnosticinfo-forcedenytheseapps)  
-   [Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps](#privacy-letappsgetdiagnosticinfo-userincontroloftheseapps)  
-   [Privacy/LetAppsRunInBackground](#privacy-letappsruninbackground)  
-   [Privacy/LetAppsRunInBackground_ForceAllowTheseApps](#privacy-letappsruninbackground-forceallowtheseapps)  
-   [Privacy/LetAppsRunInBackground_ForceDenyTheseApps](#privacy-letappsruninbackground-forcedenytheseapps)  
-   [Privacy/LetAppsRunInBackground_UserInControlOfTheseApps](#privacy-letappsruninbackground-userincontroloftheseapps)  
-   [Security/RequireProvisioningPackageSignature](#security-requireprovisioningpackagesignature)  
-   [Security/RequireRetrieveHealthCertificateOnBoot](#security-requireretrievehealthcertificateonboot)  
-   [System/AllowFontProviders](#system-allowfontproviders)  
-   [System/AllowLocation](#system-allowlocation)  
-   [System/AllowTelemetry](#system-allowtelemetry)  
-   [TextInput/AllowIMELogging](#textinput-allowimelogging)  
-   [TextInput/AllowIMENetworkAccess](#textinput-allowimenetworkaccess)  
-   [TextInput/AllowInputPanel](#textinput-allowinputpanel)  
-   [TextInput/AllowJapaneseIMESurrogatePairCharacters](#textinput-allowjapaneseimesurrogatepaircharacters)  
-   [TextInput/AllowJapaneseIVSCharacters](#textinput-allowjapaneseivscharacters)  
-   [TextInput/AllowJapaneseNonPublishingStandardGlyph](#textinput-allowjapanesenonpublishingstandardglyph)  
-   [TextInput/AllowJapaneseUserDictionary](#textinput-allowjapaneseuserdictionary)  
-   [TextInput/AllowLanguageFeaturesUninstall](#textinput-allowlanguagefeaturesuninstall)  
-   [TextInput/ExcludeJapaneseIMEExceptJIS0208](#textinput-excludejapaneseimeexceptjis0208)  
-   [TextInput/ExcludeJapaneseIMEExceptJIS0208andEUDC](#textinput-excludejapaneseimeexceptjis0208andeudc)  
-   [TextInput/ExcludeJapaneseIMEExceptShiftJIS](#textinput-excludejapaneseimeexceptshiftjis)  
-   [TimeLanguageSettings/Set24HourClock](#None)  
-   [TimeLanguageSettings/SetCountry](#None)  
-   [TimeLanguageSettings/SetLanguage](#None)  
-   [Update/AllowAutoUpdate](#update-allowautoupdate)  
-   [Update/AllowUpdateService](#update-allowupdateservice)  
-   [Update/AutoRestartNotificationSchedule](#update-autorestartnotificationschedule)  
-   [Update/AutoRestartRequiredNotificationDismissal](#update-autorestartrequirednotificationdismissal)  
-   [Update/BranchReadinessLevel](#update-branchreadinesslevel)  
-   [Update/DeferFeatureUpdatesPeriodInDays](#update-deferfeatureupdatesperiodindays)  
-   [Update/DeferQualityUpdatesPeriodInDays](#update-deferqualityupdatesperiodindays)  
-   [Update/DetectionFrequency](#update-detectionfrequency)  
-   [Update/PauseFeatureUpdates](#update-pausefeatureupdates)  
-   [Update/PauseQualityUpdates](#update-pausequalityupdates)  
-   [Update/ScheduleImminentRestartWarning](#update-scheduleimminentrestartwarning)  
-   [Update/ScheduleRestartWarning](#update-schedulerestartwarning)  
-   [Update/SetAutoRestartNotificationDisable](#update-setautorestartnotificationdisable)  
-   [Update/UpdateServiceUrl](#update-updateserviceurl)  
-   [Update/UpdateServiceUrlAlternate](#update-updateserviceurlalternate)  
-   [WiFi/AllowWiFiHotSpotReporting](#wifi-allowwifihotspotreporting)  
<!--EndSurfaceHub-->

<!--StartEAS-->
## <a href="" id="eas"></a>Policies that can be set using Exchange Active Sync (EAS)  

-   [Browser/AllowBrowser](#browser-allowbrowser)  
-   [Camera/AllowCamera](#camera-allowcamera)  
-   [Connectivity/AllowBluetooth](#connectivity-allowbluetooth)  
-   [Connectivity/AllowCellularDataRoaming](#connectivity-allowcellulardataroaming)  
-   [Connectivity/AllowUSBConnection](#connectivity-allowusbconnection)  
-   [DeviceLock/AllowSimpleDevicePassword](#devicelock-allowsimpledevicepassword)  
-   [DeviceLock/AlphanumericDevicePasswordRequired](#devicelock-alphanumericdevicepasswordrequired)  
-   [DeviceLock/DevicePasswordEnabled](#devicelock-devicepasswordenabled)  
-   [DeviceLock/DevicePasswordExpiration](#devicelock-devicepasswordexpiration)  
-   [DeviceLock/DevicePasswordHistory](#devicelock-devicepasswordhistory)  
-   [DeviceLock/MaxDevicePasswordFailedAttempts](#devicelock-maxdevicepasswordfailedattempts)  
-   [DeviceLock/MaxInactivityTimeDeviceLock](#devicelock-maxinactivitytimedevicelock)  
-   [DeviceLock/MinDevicePasswordComplexCharacters](#devicelock-mindevicepasswordcomplexcharacters)  
-   [DeviceLock/MinDevicePasswordLength](#devicelock-mindevicepasswordlength)  
-   [DeviceLock/PreventLockScreenSlideShow](#devicelock-preventlockscreenslideshow)  
-   [Search/AllowSearchToUseLocation](#search-allowsearchtouselocation)  
-   [Security/RequireDeviceEncryption](#security-requiredeviceencryption)  
-   [System/AllowStorageCard](#system-allowstoragecard)  
-   [System/TelemetryProxy](#system-telemetryproxy)  
-   [Wifi/AllowInternetSharing](#wifi-allowinternetsharing)  
-   [Wifi/AllowWiFi](#wifi-allowwifi)  
<!--EndEAS-->


## Examples

Set the minimum password length to 4 characters.

``` syntax
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/Policy/Config/DeviceLock/MinDevicePasswordLength</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>4</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>
```

Do not allow NFC.

``` syntax
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/Policy/Config/Connectivity/AllowNFC</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>0</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>
```

## <a href="" id="startlayout-examples"></a>Start/StartLayout Examples

### <a href="" id="generating-a-layout-"></a>Generating a layout

The easiest way to generate a layout is to set the Start layout on a PC, and then run the PowerShell cmdlet **Export-StartLayout**.

` > Export-StartLayout -path c:\users\<`*you*`>\desktop\startlayout.xml`

Sample layout generated using the cmdlet

``` syntax
<LayoutModificationTemplate Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">
  <DefaultLayoutOverride>
    <StartLayoutCollection>
      <defaultlayout:StartLayout GroupCellWidth="6" xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout">
        <start:Group Name="quick links" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
          <start:Tile Size="2x2" Column="4" Row="4" TileID="903d2b5e-807b-4c7a-8362-0fcc184f97f7" AppUserModelID="windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel"/>
          <start:Tile Size="4x4" Column="0" Row="0" TileID="ad99e7e3-3929-4e54-850c-0956e6dc6296" AppUserModelID="Microsoft.BingWeather_8wekyb3d8bbwe!App"/>
          <start:Tile Size="4x4" Column="0" Row="0" TileID="e86b4425-e28e-4e59-abeb-39316c1cd0eb" AppUserModelID="Microsoft.BingNews_8wekyb3d8bbwe!AppexNews"/>
          <start:Tile Size="2x2" Column="4" Row="4" TileID="37fe8c50-8b37-41e2-9d8b-f8915ef2b89b" AppUserModelID="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"/>
        </start:Group>
        <start:Group Name="LOB apps" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
          <start:Tile Size="2x2" Column="4" Row="4" TileID="10c72642-ef27-4890-8d3b-f5a4b10b2611" AppUserModelID="CmModernAppv.01_g4ype1skzj3jy!App"/>
          <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="wpsh..tion_0000000000000000_ea68d408322b5ed8"/>
          <start:Tile Size="2x2" Column="2" Row="2" TileID="68a2c085-a2a5-4849-a3e5-c5f8bd736b8f" AppUserModelID="Microsoft.CorporateAppCenter_8wekyb3d8bbwe!App"/>
        </start:Group>
        <start:Group Name="comms" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
          <start:Tile Size="4x2" Column="0" Row="0" TileID="a39d270e-d013-40a9-879d-eb563c019a4f" AppUserModelID="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.mail"/>
          <start:Tile Size="4x4" Column="0" Row="0" TileID="293e8dd8-c33d-4797-997e-f646902d1e56" AppUserModelID="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.calendar"/>
          <start:Tile Size="2x2" Column="4" Row="4" TileID="2f5a81f5-7f85-42c9-88f7-dd41aa9609f7" AppUserModelID="Microsoft.People_8wekyb3d8bbwe!x4c7a3b7dy2188y46d4ya362y19ac5a5805e5x"/>
        </start:Group>
        <start:Group Name="Office" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
          <start:DesktopApplicationTile Size="2x2" Column="2" Row="2" DesktopApplicationID="Microsoft.Office.lync.exe.15"/>
          <start:Tile Size="2x2" Column="4" Row="4" TileID="337be122-44b3-4215-8d6f-75f29af5a722" AppUserModelID="Microsoft.Office.OneNote_8wekyb3d8bbwe!microsoft.onenoteim"/>
          <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="Microsoft.Office.OUTLOOK.EXE.15"/>
          <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="Microsoft.Office.EXCEL.EXE.15"/>
          <start:DesktopApplicationTile Size="2x2" Column="2" Row="2" DesktopApplicationID="Microsoft.Office.ONENOTE.EXE.15"/>
          <start:DesktopApplicationTile Size="2x2" Column="4" Row="4" DesktopApplicationID="Microsoft.Office.POWERPNT.EXE.15"/>
        </start:Group>
        <start:Group Name="Edge pinned shortcuts" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
          <start:SecondaryTile AppUserModelID="Microsoft.Windows.Edge_cw5n1h2txyewy!Microsoft.Edge.Edge" TileID="-9513911450" DisplayName="Bing" Size="2x2" Column="0" Row="0" Arguments="-contentTile -formatVersion 0x00000003 -pinnedTimeLow 0x36a8c2e4 -pinnedTimeHigh 0x01d0919b -securityFlags 0x00000000 -tileType 0x00000000 -url 0x00000014 http://www.bing.com/" Square150x150LogoUri="ms-appdata:///local/PinnedTiles/-9513911450/lowres.png" Wide310x150LogoUri="ms-appx:///" ShowNameOnSquare150x150Logo="true" ShowNameOnWide310x150Logo="true" BackgroundColor="#7fffffff"/>
          <start:SecondaryTile AppUserModelID="Microsoft.Windows.Edge_cw5n1h2txyewy!Microsoft.Edge.Edge" TileID="-2360074010" DisplayName="msn" Size="2x2" Column="2" Row="2" Arguments="-contentTile -formatVersion 0x00000003 -pinnedTimeLow 0xec458ccc -pinnedTimeHigh 0x01d091a0 -securityFlags 0x00000000 -tileType 0x00000000 -url 0x00000013 http://www.msn.com/" Square150x150LogoUri="ms-appdata:///local/PinnedTiles/-2360074010/hires.png" Wide310x150LogoUri="ms-appx:///" ShowNameOnSquare150x150Logo="true" ShowNameOnWide310x150Logo="true" BackgroundColor="#7fffffff"/>
          <start:SecondaryTile AppUserModelID="Microsoft.Windows.Edge_cw5n1h2txyewy!Microsoft.Edge.Edge" TileID="-21368412090" DisplayName="The Verge" Size="2x2" Column="4" Row="4" Arguments="-pinnedSite -contentTile -formatVersion 0x00000003 -pinnedTimeLow 0x00bad87b -pinnedTimeHigh 0x01d091a1 -securityFlags 0x00000000 -tileType 0x00000000 -url 0x00000018 http://www.theverge.com/" Square150x150LogoUri="ms-appdata:///local/PinnedTiles/-21368412090/squaretile.png" Wide310x150LogoUri="ms-appdata:///local/PinnedTiles/-21368412090/widetile.png" ShowNameOnSquare150x150Logo="true" ShowNameOnWide310x150Logo="true" BackgroundColor="#7fffffff"/>
        </start:Group>
        <start:Group Name="dev tools" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
          <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\cmd.exe"/>
          <start:DesktopApplicationTile Size="2x2" Column="2" Row="2" DesktopApplicationID="{D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27}\WindowsPowerShell\v1.0\powershell.exe"/>
        </start:Group>
      </defaultlayout:StartLayout>
    </StartLayoutCollection>
  </DefaultLayoutOverride>
</LayoutModificationTemplate>
```

### Understanding the schema

In the previous example, the **DefaultLayoutOverride** element is used to specify a layout that overrides the default Start layout. It contains a **StartLayoutCollection**. **StartLayoutCollection** contains a **StartLayout**, which is made up of a collection of **Groups** which are, in turn, made up of either **Tiles** or **DesktopApplicationTiles**.

### Manually creating a layout

For **Tile** elements, the **AppUserModelID** can be retrieved with the PowerShell cmdlet **Get-StartApps**. The app needs to be installed to retrieve this information.

For **DesktopApplicationTile** elements, the **DesktopApplicationID** can be retrieved with the PowerShell cmdlet **Get-StartApps**. The app needs to be installed to retrieve this information.

### Secondary tiles

Creating a layout requires some special notes about secondary tiles. In general, the simplest way to correctly specify a **SecondaryTile** is to generate it using the **Export-StartLayout** PowerShell cmdlet as specified above.

> [!NOTE]
> Apps that don't encode enough information in their secondary tiles may not be able to be used effectively in the **StartLayout** policy.


### Generic webpage shortcuts

The simplest mechanism to create a link to a webpage is to use a URL file. This can be manually added to the layout file by specifying the URL in the **DesktopApplicationID** attribute.

``` syntax
<start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="www.bing.com" />
```

### <a href="" id="microsoft-edge-secondary-tiles-"></a>Microsoft Edge secondary tiles

These can be generated by using the **Export-StartLayout** PowerShell cmdlet as specified above. The following example shows a generated secondary tile:

``` syntax
<start:SecondaryTile 
    AppUserModelID="Microsoft.Windows.Edge_cw5n1h2txyewy!Microsoft.Edge.Edge" 
    TileID="-9513911450" 
    DisplayName="Bing" 
    Size="2x2" 
    Column="0" 
    Row="0" 
    Arguments="-contentTile -formatVersion 0x00000003 -pinnedTimeLow 0x36a8c2e4 -pinnedTimeHigh 0x01d0919b -securityFlags 0x00000000 -tileType 0x00000000 -url 0x00000014 http://www.bing.com/" Square150x150LogoUri="ms-appdata:///local/PinnedTiles/-9513911450/lowres.png" 
    Wide310x150LogoUri="ms-appx:///" 
    ShowNameOnSquare150x150Logo="true" 
    ShowNameOnWide310x150Logo="true" 
    BackgroundColor="#7fffffff" 
  />
```

### <a href="" id="microsoft-edge-assets-example"></a>Microsoft Edge assets example

An example XML string value for the **[Start/ImportEdgeAssets](#start-importedgeassets)** policy.

``` syntax
<SecondaryTileAssets>

  <SecondaryTileAsset>

    <RelativeFilePath><![CDATA[PinnedTiles\30382655640\lowres.png]]></RelativeFilePath>

    <Base64EncodedImage>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</Base64EncodedImage>

  </SecondaryTileAsset>

  <SecondaryTileAsset>

    <RelativeFilePath><![CDATA[PinnedTiles\30382655640\lowres.png]]></RelativeFilePath>

    <Base64EncodedImage>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</Base64EncodedImage>

  </SecondaryTileAsset>

  <SecondaryTileAsset>

    <RelativeFilePath><![CDATA[PinnedTiles\29499280780\lowres.png]]></RelativeFilePath>

    <Base64EncodedImage>iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAM1BMVEUAAAD///////////////////////////////////////////////////////////////+3leKCAAAAEXRSTlMAIECAr9//MFC/73CPEJ/PYOJQWV4AAAJsSURBVHgB7dyHcqswEEDRpa2KkcT/f+1zwNHYgtebvHPPtEzPNWXp8r8BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIBhnOZFxSbnpxB1J+aMtzVoZaswjVMu2hIbBj+FRStbhW5bQ9TKVuF4y0ErW4VpHwSVvcKoldFCPaGQQgoppJBCCinUb1rNF+pqvlClCxTGEJZfLAz9F8bsk9wln3+hMEv3hVOSagg/W3iT3gsXJy+mnyvcpPfCkqSx/URhdNJ7YRzkZP3hwmUP3Lou9HKh/EhhXf5Zey6c5dMwSjX+WOH8EZiydl04yGGKqhqcPIQfKcxyl4p2XZjlUJr9hv+Bwk3uXNG+C8dm17IkOSzfK4xHYNS+CxfZDVpNcsgvhetXpsQWtfPC3ObocpqJ8sFHfVH2wJtq74W380V+Jzv3WiiuXE2J/gvHWlNtcmj/+5S1yvuUmPUNClPdcVbTubBdcdc6JfovvDjUzu1ElLsyyJ1bnqbEou9aGK4KNXp5rJjHX2NUW4V17Z0eU0LVXqGG1J5Bvvl2GNtCjU4OWd+tcPzuvvR5fKagre7n4XAxD4erQp1TnRKdFzY5i55Op/xloZYt6lsVrqcNschhNXJFeJFdiqeLGouRQnWy29qLGk6tFGY53HRXZ142U6iDHIYcwrzJwxDtFM5yJaudQvVy5tVSYXTSctFMYU1sA20VavTyzEc1U1iFUT4Ns9G73GX1491UeFKBQp4Y4qkvntyjkEIKKaSQQgp5O+/0qn3L5FuyRVu86czb6nxxgK9G8OUPvt4CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADezhemI2HJD0xgNwAAAABJRU5ErkJggg==</Base64EncodedImage>

  </SecondaryTileAsset>

  <SecondaryTileAsset>

    <RelativeFilePath><![CDATA[PinnedTiles\29499280780\lowres.png]]></RelativeFilePath>

    <Base64EncodedImage>iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAM1BMVEUAAAD///////////////////////////////////////////////////////////////+3leKCAAAAEXRSTlMAIECAr9//MFC/73CPEJ/PYOJQWV4AAAJsSURBVHgB7dyHcqswEEDRpa2KkcT/f+1zwNHYgtebvHPPtEzPNWXp8r8BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIBhnOZFxSbnpxB1J+aMtzVoZaswjVMu2hIbBj+FRStbhW5bQ9TKVuF4y0ErW4VpHwSVvcKoldFCPaGQQgoppJBCCinUb1rNF+pqvlClCxTGEJZfLAz9F8bsk9wln3+hMEv3hVOSagg/W3iT3gsXJy+mnyvcpPfCkqSx/URhdNJ7YRzkZP3hwmUP3Lou9HKh/EhhXf5Zey6c5dMwSjX+WOH8EZiydl04yGGKqhqcPIQfKcxyl4p2XZjlUJr9hv+Bwk3uXNG+C8dm17IkOSzfK4xHYNS+CxfZDVpNcsgvhetXpsQWtfPC3ObocpqJ8sFHfVH2wJtq74W380V+Jzv3WiiuXE2J/gvHWlNtcmj/+5S1yvuUmPUNClPdcVbTubBdcdc6JfovvDjUzu1ElLsyyJ1bnqbEou9aGK4KNXp5rJjHX2NUW4V17Z0eU0LVXqGG1J5Bvvl2GNtCjU4OWd+tcPzuvvR5fKagre7n4XAxD4erQp1TnRKdFzY5i55Op/xloZYt6lsVrqcNschhNXJFeJFdiqeLGouRQnWy29qLGk6tFGY53HRXZ142U6iDHIYcwrzJwxDtFM5yJaudQvVy5tVSYXTSctFMYU1sA20VavTyzEc1U1iFUT4Ns9G73GX1491UeFKBQp4Y4qkvntyjkEIKKaSQQgp5O+/0qn3L5FuyRVu86czb6nxxgK9G8OUPvt4CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADezhemI2HJD0xgNwAAAABJRU5ErkJggg==</Base64EncodedImage>

  </SecondaryTileAsset>

  <SecondaryTileAsset>

    <RelativeFilePath><![CDATA[PinnedTiles\2819959990\lowres.png]]></RelativeFilePath>

    <Base64EncodedImage>iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAMAAABOo35HAAAAM1BMVEUAAAD///////////////////////////////////////////////////////////////+3leKCAAAAEXRSTlMAIFCAr9//QGCPv+8Qn88wcDAhSA0AAAK7SURBVHgB7d2JcrJIFIDR1pZGGzC8/9OOaHsLMOs/+8w5tWZPvupcGlKBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/DMdjvnUlT7xuf58qUNZiPWJsc/TtQSxPvB2zG05ifWZfp5qCWJ9OsXDl7FM8R/EMsU/05vi39eb4l8QqwSxxPpnxCpf647pS2KFH9QSq0tfEiukINZ/7VAgllhiiSXWV8QSSyyxDHix/mhiiSWWWNdap5zzPIj1Yqg135yH3c882jrc3Nv0fWmm9FBLM6a7o1jxM6WhPJzTQ95dHb6IdZO3K+ktbVfSKT1cxYoaz5UzpGaMlg+Ohqs8c6Rrus1ftHqx7g7rGjk9neKtiyzWau2M+58wb34tq1h3eX04TKEvi7p5Z7Hqau1cUxjL4tLKidWku0u0abrVtmt28W+ztTq3+RWmeFub9mLF6unj2HfoU6ymFANNrPVcinObc456bYa9FbGaa8yoKS2mU7zDFCPLgG/icDinxXWI08E5xpdYmx8rt3E+PrftU/zAnVhhbofD4Tmrjs9fvnR3KEGsU4tUnysst7HepZYxiNWatEY1NvXlFCNLrDCmRdfHnird1RyT3tZhV6DGnqpt3C99nCUGsXJaPMd6bOrPh7jCHMSq+1PCKa1cyopYw/5iwzWFNrIM+HBIDzGgXt5RrHBMT8eXn7QvQaztRb8cI3/3GrFeJ3yNTf3uNWKF/Wu7l/cTK7ztB9RhP7JsHcI5Pcz7kR+vEStM8XfoJqfda8QKQ62nfNO9jPyhBLE+UmvNixIM+C+JJZZYYon1D+Nf6MQSSyyxDHixxBJLLLFGsdzGzg0S3XrTTV3FciPq4Bbn/2lunu+xDB744VEyHlKEx195sJpH9gEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAL8BVPKUzB0VBYIAAAAASUVORK5CYII=</Base64EncodedImage>

  </SecondaryTileAsset>

  <SecondaryTileAsset>

    <RelativeFilePath><![CDATA[PinnedTiles\2819959990\lowres.png]]></RelativeFilePath>

    <Base64EncodedImage>iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAMAAABOo35HAAAAM1BMVEUAAAD///////////////////////////////////////////////////////////////+3leKCAAAAEXRSTlMAIFCAr9//QGCPv+8Qn88wcDAhSA0AAAK7SURBVHgB7d2JcrJIFIDR1pZGGzC8/9OOaHsLMOs/+8w5tWZPvupcGlKBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/DMdjvnUlT7xuf58qUNZiPWJsc/TtQSxPvB2zG05ifWZfp5qCWJ9OsXDl7FM8R/EMsU/05vi39eb4l8QqwSxxPpnxCpf647pS2KFH9QSq0tfEiukINZ/7VAgllhiiSXWV8QSSyyxDHix/mhiiSWWWNdap5zzPIj1Yqg135yH3c882jrc3Nv0fWmm9FBLM6a7o1jxM6WhPJzTQ95dHb6IdZO3K+ktbVfSKT1cxYoaz5UzpGaMlg+Ohqs8c6Rrus1ftHqx7g7rGjk9neKtiyzWau2M+58wb34tq1h3eX04TKEvi7p5Z7Hqau1cUxjL4tLKidWku0u0abrVtmt28W+ztTq3+RWmeFub9mLF6unj2HfoU6ymFANNrPVcinObc456bYa9FbGaa8yoKS2mU7zDFCPLgG/icDinxXWI08E5xpdYmx8rt3E+PrftU/zAnVhhbofD4Tmrjs9fvnR3KEGsU4tUnysst7HepZYxiNWatEY1NvXlFCNLrDCmRdfHnird1RyT3tZhV6DGnqpt3C99nCUGsXJaPMd6bOrPh7jCHMSq+1PCKa1cyopYw/5iwzWFNrIM+HBIDzGgXt5RrHBMT8eXn7QvQaztRb8cI3/3GrFeJ3yNTf3uNWKF/Wu7l/cTK7ztB9RhP7JsHcI5Pcz7kR+vEStM8XfoJqfda8QKQ62nfNO9jPyhBLE+UmvNixIM+C+JJZZYYon1D+Nf6MQSSyyxDHixxBJLLLFGsdzGzg0S3XrTTV3FciPq4Bbn/2lunu+xDB744VEyHlKEx195sJpH9gEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAL8BVPKUzB0VBYIAAAAASUVORK5CYII=</Base64EncodedImage>

  </SecondaryTileAsset>

  <SecondaryTileAsset>

    <RelativeFilePath><![CDATA[PinnedTiles\39721989420\lowres.png]]></RelativeFilePath>

    <Base64EncodedImage>iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAMAAABOo35HAAAAM1BMVEUAAAD///////////////////////////////////////////////////////////////+3leKCAAAAEXRSTlMAIFCAr9//QGCPv+8Qn88wcDAhSA0AAAJLSURBVHgB7d3Joqo6FEDBbUOCAYT//9nTN/cganz9fakaO1qDjRASAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+G/a7Q/HLgV35P5UhvQmuGrMh+mcfhFbmPeHMqS1YCUvU0nbgtUUvyFWTPGKWKZ4BVP8Aaa4WPeklX87llhipfu6fWwTa8sDtcTqoppYSSyxxBJLLLEuiCVWzv3U1cUSK17ty81YYnVTn/NXkmW4Gkusso9X30nm83YssYYlYhUrxnNjsUoph8Mh5zzGtcEdL85zXMaKeWgoVlzKZTPWGFuxYmk41vbgjm/rWFEajxXzUB9r33qs2NfHiq71WHGsjzU1H2tXH6tvPlYcq2Pl5mKdyovDLr4sVxOIVdKbviZBWms0Vprj091YYk13Y63khmN18Wm4l0CsFJ9KXYK+PpZYk1gvuroEQ8OxyoMDfp8ajrXEh7kuQWk41jA+dse3pHZjdXPNveH6uVeT94an/tZThzEujF1qMtbadPGrbo6V+a2VWHlzKWzrSb1Y43BrkfXXxXuxxvPN5fv5e3VRrO1F+bRBrGVIVbHEGpcupduxxNrnnPeH0zltEWv73vB/EUssscQS6waxxBJLLANerAeJJZZYYq105XTIc1UssSr46yCWWGLZUC6WWGKJJZZYYonVieWAREdvOtRVLAdR/ybm3hHnjxnz4XgW69HPMoj1d37wg/Gv+ZSM2R/Uz/6gfvYHv+8n+wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgGdtQJGPPIrELgAAAABJRU5ErkJggg==</Base64EncodedImage>

  </SecondaryTileAsset>

  <SecondaryTileAsset>

    <RelativeFilePath><![CDATA[PinnedTiles\39721989420\lowres.png]]></RelativeFilePath>

    <Base64EncodedImage>iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAMAAABOo35HAAAAM1BMVEUAAAD///////////////////////////////////////////////////////////////+3leKCAAAAEXRSTlMAIFCAr9//QGCPv+8Qn88wcDAhSA0AAAJLSURBVHgB7d3Joqo6FEDBbUOCAYT//9nTN/cganz9fakaO1qDjRASAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+G/a7Q/HLgV35P5UhvQmuGrMh+mcfhFbmPeHMqS1YCUvU0nbgtUUvyFWTPGKWKZ4BVP8Aaa4WPeklX87llhipfu6fWwTa8sDtcTqoppYSSyxxBJLLLEuiCVWzv3U1cUSK17ty81YYnVTn/NXkmW4Gkusso9X30nm83YssYYlYhUrxnNjsUoph8Mh5zzGtcEdL85zXMaKeWgoVlzKZTPWGFuxYmk41vbgjm/rWFEajxXzUB9r33qs2NfHiq71WHGsjzU1H2tXH6tvPlYcq2Pl5mKdyovDLr4sVxOIVdKbviZBWms0Vprj091YYk13Y63khmN18Wm4l0CsFJ9KXYK+PpZYk1gvuroEQ8OxyoMDfp8ajrXEh7kuQWk41jA+dse3pHZjdXPNveH6uVeT94an/tZThzEujF1qMtbadPGrbo6V+a2VWHlzKWzrSb1Y43BrkfXXxXuxxvPN5fv5e3VRrO1F+bRBrGVIVbHEGpcupduxxNrnnPeH0zltEWv73vB/EUssscQS6waxxBJLLANerAeJJZZYYq105XTIc1UssSr46yCWWGLZUC6WWGKJJZZYYonVieWAREdvOtRVLAdR/ybm3hHnjxnz4XgW69HPMoj1d37wg/Gv+ZSM2R/Uz/6gfvYHv+8n+wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgGdtQJGPPIrELgAAAABJRU5ErkJggg==</Base64EncodedImage>

  </SecondaryTileAsset>

  <SecondaryTileAsset>

    <RelativeFilePath><![CDATA[PinnedTiles\25495229280\lowres.png]]></RelativeFilePath>

    <Base64EncodedImage>iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAMAAABOo35HAAAAM1BMVEUAAAD///////////////////////////////////////////////////////////////+3leKCAAAAEXRSTlMAIFCAr9//QGCPv+8Qn88wcDAhSA0AAAJSSURBVHgB7d1HcuMwEEBRKBBglu9/WUc6tQBZmhze2832V08XGEwl/kwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALDbH45dTl+g9MM45WeJprkcljV/kGo47Q/jlKNEUO6WMdclwha/IBG2uFg3bPELbPEb2OJifSVHYon1m2Plr3X71CZWdEMtsbrUJlaU/mJiiSWWWA6l1SpiiSWWWGKJ9UOJJZZDqUPpNHaNWGJN+c1Y5vTkLJZYx/LcZj671dmfJRBrmtOzJdzpnKfzBBZ8n56V8O9DfidWvGe+bpNWHSyxNv2nHXWoDZZY9SU11wdLrE3/YcUvcbDEqo7WKT/ahcESK+rfVvwYzhFitUarz7mkJ7scOZTG0ZqnrjJYYgXrFmmIgyVWRUlP+hIHS6yKMW3CYFnwrdHaHHMgVnO0Sg7Eao/W8fpYYi1iXf/fcCfWDQt+Eevqo0O8ihYr2qUntfszDqXRVimfwmiJ1Rysvn3rT6w4WGue4k1lsaItUXl/XHFnwbdibYXGD8/FOrFeNAbrVHkuJlZjsJb8ZG2NVnrnifTu81G+F+vCuw5DfnH89DRfrMbz6M2ucltLrMZLM0t6MYoVY3UlLvRp/jRaDqXRuuZ3hzhaYl02jaMXcL3aHfmjAbHEEkssscQSSyyHUrHEEksssXzGzgcSfXpTrB9NLB+i9onz3ifObzOXw3EV69afZRDrZ/7gB/OP+SkZuz9dz+5PXL/709/LT/YBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPdXyNW8w51ZgAAAAASUVORK5CYII=</Base64EncodedImage>

  </SecondaryTileAsset>

  <SecondaryTileAsset>

    <RelativeFilePath><![CDATA[PinnedTiles\25495229280\lowres.png]]></RelativeFilePath>

    <Base64EncodedImage>iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAMAAABOo35HAAAAM1BMVEUAAAD///////////////////////////////////////////////////////////////+3leKCAAAAEXRSTlMAIFCAr9//QGCPv+8Qn88wcDAhSA0AAAJSSURBVHgB7d1HcuMwEEBRKBBglu9/WUc6tQBZmhze2832V08XGEwl/kwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALDbH45dTl+g9MM45WeJprkcljV/kGo47Q/jlKNEUO6WMdclwha/IBG2uFg3bPELbPEb2OJifSVHYon1m2Plr3X71CZWdEMtsbrUJlaU/mJiiSWWWA6l1SpiiSWWWGKJ9UOJJZZDqUPpNHaNWGJN+c1Y5vTkLJZYx/LcZj671dmfJRBrmtOzJdzpnKfzBBZ8n56V8O9DfidWvGe+bpNWHSyxNv2nHXWoDZZY9SU11wdLrE3/YcUvcbDEqo7WKT/ahcESK+rfVvwYzhFitUarz7mkJ7scOZTG0ZqnrjJYYgXrFmmIgyVWRUlP+hIHS6yKMW3CYFnwrdHaHHMgVnO0Sg7Eao/W8fpYYi1iXf/fcCfWDQt+Eevqo0O8ihYr2qUntfszDqXRVimfwmiJ1Rysvn3rT6w4WGue4k1lsaItUXl/XHFnwbdibYXGD8/FOrFeNAbrVHkuJlZjsJb8ZG2NVnrnifTu81G+F+vCuw5DfnH89DRfrMbz6M2ucltLrMZLM0t6MYoVY3UlLvRp/jRaDqXRuuZ3hzhaYl02jaMXcL3aHfmjAbHEEkssscQSSyyHUrHEEksssXzGzgcSfXpTrB9NLB+i9onz3ifObzOXw3EV69afZRDrZ/7gB/OP+SkZuz9dz+5PXL/709/LT/YBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPdXyNW8w51ZgAAAAASUVORK5CYII=</Base64EncodedImage>

  </SecondaryTileAsset>

</SecondaryTileAssets>
```

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)