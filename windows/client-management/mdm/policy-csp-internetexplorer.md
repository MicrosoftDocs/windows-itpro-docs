---
title: Policy CSP - InternetExplorer
description: Use the Policy CSP - InternetExplorer setting to add a specific list of search providers to the user's default list of search providers.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.reviewer: 
manager: dansimp
---

# Policy CSP - InternetExplorer

<hr/>

<!--Policies-->
## InternetExplorer policies  

<dl>
  <dd>
    <a href="#internetexplorer-addsearchprovider">InternetExplorer/AddSearchProvider</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowactivexfiltering">InternetExplorer/AllowActiveXFiltering</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowaddonlist">InternetExplorer/AllowAddOnList</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowautocomplete">InternetExplorer/AllowAutoComplete</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowcertificateaddressmismatchwarning">InternetExplorer/AllowCertificateAddressMismatchWarning</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowdeletingbrowsinghistoryonexit">InternetExplorer/AllowDeletingBrowsingHistoryOnExit</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowenhancedprotectedmode">InternetExplorer/AllowEnhancedProtectedMode</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowenhancedsuggestionsinaddressbar">InternetExplorer/AllowEnhancedSuggestionsInAddressBar</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowenterprisemodefromtoolsmenu">InternetExplorer/AllowEnterpriseModeFromToolsMenu</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowenterprisemodesitelist">InternetExplorer/AllowEnterpriseModeSiteList</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowfallbacktossl3">InternetExplorer/AllowFallbackToSSL3</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowinternetexplorer7policylist">InternetExplorer/AllowInternetExplorer7PolicyList</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowinternetexplorerstandardsmode">InternetExplorer/AllowInternetExplorerStandardsMode</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowinternetzonetemplate">InternetExplorer/AllowInternetZoneTemplate</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowintranetzonetemplate">InternetExplorer/AllowIntranetZoneTemplate</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowlocalmachinezonetemplate">InternetExplorer/AllowLocalMachineZoneTemplate</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowlockeddowninternetzonetemplate">InternetExplorer/AllowLockedDownInternetZoneTemplate</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowlockeddownintranetzonetemplate">InternetExplorer/AllowLockedDownIntranetZoneTemplate</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowlockeddownlocalmachinezonetemplate">InternetExplorer/AllowLockedDownLocalMachineZoneTemplate</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowlockeddownrestrictedsiteszonetemplate">InternetExplorer/AllowLockedDownRestrictedSitesZoneTemplate</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowonewordentry">InternetExplorer/AllowOneWordEntry</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowsavetargetasinIEmode">InternetExplorer/AllowSaveTargetAsInIEMode</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowsitetozoneassignmentlist">InternetExplorer/AllowSiteToZoneAssignmentList</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowsoftwarewhensignatureisinvalid">InternetExplorer/AllowSoftwareWhenSignatureIsInvalid</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowsuggestedsites">InternetExplorer/AllowSuggestedSites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowtrustedsiteszonetemplate">InternetExplorer/AllowTrustedSitesZoneTemplate</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowslockeddowntrustedsiteszonetemplate">InternetExplorer/AllowsLockedDownTrustedSitesZoneTemplate</a>
  </dd>
  <dd>
    <a href="#internetexplorer-allowsrestrictedsiteszonetemplate">InternetExplorer/AllowsRestrictedSitesZoneTemplate</a>
  </dd>
  <dd>
    <a href="#internetexplorer-checkservercertificaterevocation">InternetExplorer/CheckServerCertificateRevocation</a>
  </dd>
  <dd>
    <a href="#internetexplorer-checksignaturesondownloadedprograms">InternetExplorer/CheckSignaturesOnDownloadedPrograms</a>
  </dd>
  <dd>
    <a href="#internetexplorer-consistentmimehandlinginternetexplorerprocesses">InternetExplorer/ConsistentMimeHandlingInternetExplorerProcesses</a>
  </dd>

<dd>
    <a 
    href="#internetexplorer-configureedgeredirectchannel">InternetExplorer/ConfigureEdgeRedirectChannel</a> 
  </dd>
  <dd>
    <a href="#internetexplorer-disableactivexversionlistautodownload">InternetExplorer/DisableActiveXVersionListAutoDownload</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disableadobeflash">InternetExplorer/DisableAdobeFlash</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disablebypassofsmartscreenwarnings">InternetExplorer/DisableBypassOfSmartScreenWarnings</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disablebypassofsmartscreenwarningsaboutuncommonfiles">InternetExplorer/DisableBypassOfSmartScreenWarningsAboutUncommonFiles</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disablecompatview">InternetExplorer/DisableCompatView</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disableconfiguringhistory">InternetExplorer/DisableConfiguringHistory</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disablecrashdetection">InternetExplorer/DisableCrashDetection</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disablecustomerexperienceimprovementprogramparticipation">InternetExplorer/DisableCustomerExperienceImprovementProgramParticipation</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disabledeletinguservisitedwebsites">InternetExplorer/DisableDeletingUserVisitedWebsites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disableenclosuredownloading">InternetExplorer/DisableEnclosureDownloading</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disableencryptionsupport">InternetExplorer/DisableEncryptionSupport</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disablefeedsbackgroundsync">InternetExplorer/DisableFeedsBackgroundSync</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disablefirstrunwizard">InternetExplorer/DisableFirstRunWizard</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disableflipaheadfeature">InternetExplorer/DisableFlipAheadFeature</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disablegeolocation">InternetExplorer/DisableGeolocation</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disablehomepagechange">InternetExplorer/DisableHomePageChange</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disableinternetexplorerapp">InternetExplorer/DisableInternetExplorerApp</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disableignoringcertificateerrors">InternetExplorer/DisableIgnoringCertificateErrors</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disableinprivatebrowsing">InternetExplorer/DisableInPrivateBrowsing</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disableprocessesinenhancedprotectedmode">InternetExplorer/DisableProcessesInEnhancedProtectedMode</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disableproxychange">InternetExplorer/DisableProxyChange</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disablesearchproviderchange">InternetExplorer/DisableSearchProviderChange</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disablesecondaryhomepagechange">InternetExplorer/DisableSecondaryHomePageChange</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disablesecuritysettingscheck">InternetExplorer/DisableSecuritySettingsCheck</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disableupdatecheck">InternetExplorer/DisableUpdateCheck</a>
  </dd>
  <dd>
    <a href="#internetexplorer-disablewebaddressautocomplete">InternetExplorer/DisableWebAddressAutoComplete</a>
  </dd>
  <dd>
    <a href="#internetexplorer-donotallowactivexcontrolsinprotectedmode">InternetExplorer/DoNotAllowActiveXControlsInProtectedMode</a>
  </dd>
  <dd>
    <a href="#internetexplorer-donotallowuserstoaddsites">InternetExplorer/DoNotAllowUsersToAddSites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-donotallowuserstochangepolicies">InternetExplorer/DoNotAllowUsersToChangePolicies</a>
  </dd>
  <dd>
    <a href="#internetexplorer-donotblockoutdatedactivexcontrols">InternetExplorer/DoNotBlockOutdatedActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-donotblockoutdatedactivexcontrolsonspecificdomains">InternetExplorer/DoNotBlockOutdatedActiveXControlsOnSpecificDomains</a>
  </dd>
  <dd>
    <a href="#internetexplorer-enableextendediemodehotkeys">InternetExplorer/EnableExtendedIEModeHotkeys</a>
  </dd>
  <dd>
    <a href="#internetexplorer-includealllocalsites">InternetExplorer/IncludeAllLocalSites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-includeallnetworkpaths">InternetExplorer/IncludeAllNetworkPaths</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowaccesstodatasources">InternetExplorer/InternetZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/InternetZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/InternetZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowcopypasteviascript">InternetExplorer/InternetZoneAllowCopyPasteViaScript</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowdraganddropcopyandpastefiles">InternetExplorer/InternetZoneAllowDragAndDropCopyAndPasteFiles</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowfontdownloads">InternetExplorer/InternetZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowlessprivilegedsites">InternetExplorer/InternetZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowloadingofxamlfiles">InternetExplorer/InternetZoneAllowLoadingOfXAMLFiles</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallownetframeworkreliantcomponents">InternetExplorer/InternetZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowonlyapproveddomainstouseactivexcontrols">InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowonlyapproveddomainstousetdcactivexcontrol">InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowscriptinitiatedwindows">InternetExplorer/InternetZoneAllowScriptInitiatedWindows</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowscriptingofinternetexplorerwebbrowsercontrols">InternetExplorer/InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowscriptlets">InternetExplorer/InternetZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowsmartscreenie">InternetExplorer/InternetZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowupdatestostatusbarviascript">InternetExplorer/InternetZoneAllowUpdatesToStatusBarViaScript</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowuserdatapersistence">InternetExplorer/InternetZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneallowvbscripttorunininternetexplorer">InternetExplorer/InternetZoneAllowVBScriptToRunInInternetExplorer</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzonedonotrunantimalwareagainstactivexcontrols">InternetExplorer/InternetZoneDoNotRunAntimalwareAgainstActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzonedownloadsignedactivexcontrols">InternetExplorer/InternetZoneDownloadSignedActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzonedownloadunsignedactivexcontrols">InternetExplorer/InternetZoneDownloadUnsignedActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneenablecrosssitescriptingfilter">InternetExplorer/InternetZoneEnableCrossSiteScriptingFilter</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneenabledraggingofcontentfromdifferentdomainsacrosswindows">InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneenabledraggingofcontentfromdifferentdomainswithinwindows">InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneenablemimesniffing">InternetExplorer/InternetZoneEnableMIMESniffing</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneenableprotectedmode">InternetExplorer/InternetZoneEnableProtectedMode</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneincludelocalpathwhenuploadingfilestoserver">InternetExplorer/InternetZoneIncludeLocalPathWhenUploadingFilesToServer</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneinitializeandscriptactivexcontrols">InternetExplorer/InternetZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneinitializeandscriptactivexcontrolsnotmarkedsafe">InternetExplorer/InternetZoneInitializeAndScriptActiveXControlsNotMarkedSafe</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzonejavapermissions">InternetExplorer/InternetZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzonelaunchingapplicationsandfilesiniframe">InternetExplorer/InternetZoneLaunchingApplicationsAndFilesInIFRAME</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzonelogonoptions">InternetExplorer/InternetZoneLogonOptions</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzonenavigatewindowsandframes">InternetExplorer/InternetZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzonerunnetframeworkreliantcomponentssignedwithauthenticode">InternetExplorer/InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneshowsecuritywarningforpotentiallyunsafefiles">InternetExplorer/InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles</a>
  </dd>
  <dd>
    <a href="#internetexplorer-internetzoneusepopupblocker">InternetExplorer/InternetZoneUsePopupBlocker</a>
  </dd>
  <dd>
    <a href="#internetexplorer-intranetzoneallowaccesstodatasources">InternetExplorer/IntranetZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="#internetexplorer-intranetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/IntranetZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-intranetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/IntranetZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-intranetzoneallowfontdownloads">InternetExplorer/IntranetZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-intranetzoneallowlessprivilegedsites">InternetExplorer/IntranetZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-intranetzoneallownetframeworkreliantcomponents">InternetExplorer/IntranetZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="#internetexplorer-intranetzoneallowscriptlets">InternetExplorer/IntranetZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="#internetexplorer-intranetzoneallowsmartscreenie">InternetExplorer/IntranetZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="#internetexplorer-intranetzoneallowuserdatapersistence">InternetExplorer/IntranetZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="#internetexplorer-intranetzonedonotrunantimalwareagainstactivexcontrols">InternetExplorer/IntranetZoneDoNotRunAntimalwareAgainstActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-intranetzoneinitializeandscriptactivexcontrols">InternetExplorer/IntranetZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-intranetzonejavapermissions">InternetExplorer/IntranetZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="#internetexplorer-intranetzonenavigatewindowsandframes">InternetExplorer/IntranetZoneNavigateWindowsAndFrames</a>
  </dd>
 <dd>
    <a href="#internetexplorer-keepintranetsitesininternetexplorer">InternetExplorer/KeepIntranetSitesInInternetExplorer</a> 
  </dd>
  <dd>
    <a href="#internetexplorer-localmachinezoneallowaccesstodatasources">InternetExplorer/LocalMachineZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="#internetexplorer-localmachinezoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-localmachinezoneallowautomaticpromptingforfiledownloads">InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-localmachinezoneallowfontdownloads">InternetExplorer/LocalMachineZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-localmachinezoneallowlessprivilegedsites">InternetExplorer/LocalMachineZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-localmachinezoneallownetframeworkreliantcomponents">InternetExplorer/LocalMachineZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="#internetexplorer-localmachinezoneallowscriptlets">InternetExplorer/LocalMachineZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="#internetexplorer-localmachinezoneallowsmartscreenie">InternetExplorer/LocalMachineZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="#internetexplorer-localmachinezoneallowuserdatapersistence">InternetExplorer/LocalMachineZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="#internetexplorer-localmachinezonedonotrunantimalwareagainstactivexcontrols">InternetExplorer/LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-localmachinezoneinitializeandscriptactivexcontrols">InternetExplorer/LocalMachineZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-localmachinezonejavapermissions">InternetExplorer/LocalMachineZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="#internetexplorer-localmachinezonenavigatewindowsandframes">InternetExplorer/LocalMachineZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowninternetzoneallowaccesstodatasources">InternetExplorer/LockedDownInternetZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowninternetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowninternetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowninternetzoneallowfontdownloads">InternetExplorer/LockedDownInternetZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowninternetzoneallowlessprivilegedsites">InternetExplorer/LockedDownInternetZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowninternetzoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownInternetZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowninternetzoneallowscriptlets">InternetExplorer/LockedDownInternetZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowninternetzoneallowsmartscreenie">InternetExplorer/LockedDownInternetZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowninternetzoneallowuserdatapersistence">InternetExplorer/LockedDownInternetZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowninternetzoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownInternetZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowninternetzonejavapermissions">InternetExplorer/LockedDownInternetZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowninternetzonenavigatewindowsandframes">InternetExplorer/LockedDownInternetZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownintranetjavapermissions">InternetExplorer/LockedDownIntranetJavaPermissions</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownintranetzoneallowaccesstodatasources">InternetExplorer/LockedDownIntranetZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownintranetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownintranetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownintranetzoneallowfontdownloads">InternetExplorer/LockedDownIntranetZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownintranetzoneallowlessprivilegedsites">InternetExplorer/LockedDownIntranetZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownintranetzoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownIntranetZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownintranetzoneallowscriptlets">InternetExplorer/LockedDownIntranetZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownintranetzoneallowsmartscreenie">InternetExplorer/LockedDownIntranetZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownintranetzoneallowuserdatapersistence">InternetExplorer/LockedDownIntranetZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownintranetzoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownIntranetZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownintranetzonenavigatewindowsandframes">InternetExplorer/LockedDownIntranetZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownlocalmachinezoneallowaccesstodatasources">InternetExplorer/LockedDownLocalMachineZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownlocalmachinezoneallowfontdownloads">InternetExplorer/LockedDownLocalMachineZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownlocalmachinezoneallowlessprivilegedsites">InternetExplorer/LockedDownLocalMachineZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownlocalmachinezoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownlocalmachinezoneallowscriptlets">InternetExplorer/LockedDownLocalMachineZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownlocalmachinezoneallowsmartscreenie">InternetExplorer/LockedDownLocalMachineZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownlocalmachinezoneallowuserdatapersistence">InternetExplorer/LockedDownLocalMachineZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownlocalmachinezoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownLocalMachineZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownlocalmachinezonejavapermissions">InternetExplorer/LockedDownLocalMachineZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownlocalmachinezonenavigatewindowsandframes">InternetExplorer/LockedDownLocalMachineZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownrestrictedsiteszoneallowaccesstodatasources">InternetExplorer/LockedDownRestrictedSitesZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownrestrictedsiteszoneallowfontdownloads">InternetExplorer/LockedDownRestrictedSitesZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownrestrictedsiteszoneallowlessprivilegedsites">InternetExplorer/LockedDownRestrictedSitesZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownrestrictedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownrestrictedsiteszoneallowscriptlets">InternetExplorer/LockedDownRestrictedSitesZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownrestrictedsiteszoneallowsmartscreenie">InternetExplorer/LockedDownRestrictedSitesZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownrestrictedsiteszoneallowuserdatapersistence">InternetExplorer/LockedDownRestrictedSitesZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownrestrictedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownrestrictedsiteszonejavapermissions">InternetExplorer/LockedDownRestrictedSitesZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddownrestrictedsiteszonenavigatewindowsandframes">InternetExplorer/LockedDownRestrictedSitesZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowntrustedsiteszoneallowaccesstodatasources">InternetExplorer/LockedDownTrustedSitesZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowntrustedsiteszoneallowfontdownloads">InternetExplorer/LockedDownTrustedSitesZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowntrustedsiteszoneallowlessprivilegedsites">InternetExplorer/LockedDownTrustedSitesZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowntrustedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowntrustedsiteszoneallowscriptlets">InternetExplorer/LockedDownTrustedSitesZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowntrustedsiteszoneallowsmartscreenie">InternetExplorer/LockedDownTrustedSitesZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowntrustedsiteszoneallowuserdatapersistence">InternetExplorer/LockedDownTrustedSitesZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowntrustedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowntrustedsiteszonejavapermissions">InternetExplorer/LockedDownTrustedSitesZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="#internetexplorer-lockeddowntrustedsiteszonenavigatewindowsandframes">InternetExplorer/LockedDownTrustedSitesZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="#internetexplorer-mkprotocolsecurityrestrictioninternetexplorerprocesses">InternetExplorer/MKProtocolSecurityRestrictionInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="#internetexplorer-mimesniffingsafetyfeatureinternetexplorerprocesses">InternetExplorer/MimeSniffingSafetyFeatureInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="#internetexplorer-newtabdefaultpage">InternetExplorer/NewTabDefaultPage</a>
  </dd>
  <dd>
    <a href="#internetexplorer-notificationbarinternetexplorerprocesses">InternetExplorer/NotificationBarInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="#internetexplorer-preventmanagingsmartscreenfilter">InternetExplorer/PreventManagingSmartScreenFilter</a>
  </dd>
  <dd>
    <a href="#internetexplorer-preventperuserinstallationofactivexcontrols">InternetExplorer/PreventPerUserInstallationOfActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-protectionfromzoneelevationinternetexplorerprocesses">InternetExplorer/ProtectionFromZoneElevationInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="#internetexplorer-removerunthistimebuttonforoutdatedactivexcontrols">InternetExplorer/RemoveRunThisTimeButtonForOutdatedActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictactivexinstallinternetexplorerprocesses">InternetExplorer/RestrictActiveXInstallInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictfiledownloadinternetexplorerprocesses">InternetExplorer/RestrictFileDownloadInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowaccesstodatasources">InternetExplorer/RestrictedSitesZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowactivescripting">InternetExplorer/RestrictedSitesZoneAllowActiveScripting</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowbinaryandscriptbehaviors">InternetExplorer/RestrictedSitesZoneAllowBinaryAndScriptBehaviors</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowcopypasteviascript">InternetExplorer/RestrictedSitesZoneAllowCopyPasteViaScript</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowdraganddropcopyandpastefiles">InternetExplorer/RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowfiledownloads">InternetExplorer/RestrictedSitesZoneAllowFileDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowfontdownloads">InternetExplorer/RestrictedSitesZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowlessprivilegedsites">InternetExplorer/RestrictedSitesZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowloadingofxamlfiles">InternetExplorer/RestrictedSitesZoneAllowLoadingOfXAMLFiles</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowmetarefresh">InternetExplorer/RestrictedSitesZoneAllowMETAREFRESH</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/RestrictedSitesZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowonlyapproveddomainstouseactivexcontrols">InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowonlyapproveddomainstousetdcactivexcontrol">InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowscriptinitiatedwindows">InternetExplorer/RestrictedSitesZoneAllowScriptInitiatedWindows</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowscriptingofinternetexplorerwebbrowsercontrols">InternetExplorer/RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowscriptlets">InternetExplorer/RestrictedSitesZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowsmartscreenie">InternetExplorer/RestrictedSitesZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowupdatestostatusbarviascript">InternetExplorer/RestrictedSitesZoneAllowUpdatesToStatusBarViaScript</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowuserdatapersistence">InternetExplorer/RestrictedSitesZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneallowvbscripttorunininternetexplorer">InternetExplorer/RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszonedonotrunantimalwareagainstactivexcontrols">InternetExplorer/RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszonedownloadsignedactivexcontrols">InternetExplorer/RestrictedSitesZoneDownloadSignedActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszonedownloadunsignedactivexcontrols">InternetExplorer/RestrictedSitesZoneDownloadUnsignedActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneenablecrosssitescriptingfilter">InternetExplorer/RestrictedSitesZoneEnableCrossSiteScriptingFilter</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneenabledraggingofcontentfromdifferentdomainsacrosswindows">InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneenabledraggingofcontentfromdifferentdomainswithinwindows">InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneenablemimesniffing">InternetExplorer/RestrictedSitesZoneEnableMIMESniffing</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneincludelocalpathwhenuploadingfilestoserver">InternetExplorer/RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/RestrictedSitesZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszonejavapermissions">InternetExplorer/RestrictedSitesZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszonelaunchingapplicationsandfilesiniframe">InternetExplorer/RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszonelogonoptions">InternetExplorer/RestrictedSitesZoneLogonOptions</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszonenavigatewindowsandframes">InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszonerunactivexcontrolsandplugins">InternetExplorer/RestrictedSitesZoneRunActiveXControlsAndPlugins</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszonerunnetframeworkreliantcomponentssignedwithauthenticode">InternetExplorer/RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszonescriptactivexcontrolsmarkedsafeforscripting">InternetExplorer/RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszonescriptingofjavaapplets">InternetExplorer/RestrictedSitesZoneScriptingOfJavaApplets</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneshowsecuritywarningforpotentiallyunsafefiles">InternetExplorer/RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneturnonprotectedmode">InternetExplorer/RestrictedSitesZoneTurnOnProtectedMode</a>
  </dd>
  <dd>
    <a href="#internetexplorer-restrictedsiteszoneusepopupblocker">InternetExplorer/RestrictedSitesZoneUsePopupBlocker</a>
  </dd>
  <dd>
    <a href="#internetexplorer-scriptedwindowsecurityrestrictionsinternetexplorerprocesses">InternetExplorer/ScriptedWindowSecurityRestrictionsInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="#internetexplorer-searchproviderlist">InternetExplorer/SearchProviderList</a>
  </dd>
  <dd>
    <a href="#internetexplorer-securityzonesuseonlymachinesettings">InternetExplorer/SecurityZonesUseOnlyMachineSettings</a>
  </dd>
 <dd>
    <a href="#internetexplorer-sendsitesnotinenterprisesitelisttoedge">InternetExplorer/SendSitesNotInEnterpriseSiteListToEdge</a>
  </dd>
  <dd>
    <a href="#internetexplorer-specifyuseofactivexinstallerservice">InternetExplorer/SpecifyUseOfActiveXInstallerService</a>
  </dd>
  <dd>
    <a href="#internetexplorer-trustedsiteszoneallowaccesstodatasources">InternetExplorer/TrustedSitesZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="#internetexplorer-trustedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-trustedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-trustedsiteszoneallowfontdownloads">InternetExplorer/TrustedSitesZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="#internetexplorer-trustedsiteszoneallowlessprivilegedsites">InternetExplorer/TrustedSitesZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="#internetexplorer-trustedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/TrustedSitesZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="#internetexplorer-trustedsiteszoneallowscriptlets">InternetExplorer/TrustedSitesZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="#internetexplorer-trustedsiteszoneallowsmartscreenie">InternetExplorer/TrustedSitesZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="#internetexplorer-trustedsiteszoneallowuserdatapersistence">InternetExplorer/TrustedSitesZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="#internetexplorer-trustedsiteszonedonotrunantimalwareagainstactivexcontrols">InternetExplorer/TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-trustedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/TrustedSitesZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="#internetexplorer-trustedsiteszonejavapermissions">InternetExplorer/TrustedSitesZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="#internetexplorer-trustedsiteszonenavigatewindowsandframes">InternetExplorer/TrustedSitesZoneNavigateWindowsAndFrames</a>
  </dd>
</dl>

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-addsearchprovider"></a>**InternetExplorer/AddSearchProvider**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to add a specific list of search providers to the user's default list of search providers. Normally, search providers can be added from third-party toolbars or in Setup. The user can also add a search provider from the provider's website.

If you enable this policy setting, the user can add and remove search providers, but only from the set of search providers specified in the list of policy keys for search providers (found under [HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\SearchScopes]). 

> [!NOTE]
> This list can be created from a custom administrative template file. For information about creating this custom administrative template file, see the Internet Explorer documentation on search providers.

If you disable or do not configure this policy setting, the user can configure their list of search providers, unless another policy setting restricts such configuration.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Add a specific list of search providers to the user's list of search providers*
-   GP name: *AddSearchProvider*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowactivexfiltering"></a>**InternetExplorer/AllowActiveXFiltering**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the ActiveX Filtering feature for websites that are running ActiveX controls. The user can choose to turn off ActiveX Filtering for specific websites, so that ActiveX controls can run properly.

If you enable this policy setting, ActiveX Filtering is enabled by default for the user. The user cannot turn off ActiveX Filtering, although they may add per-site exceptions.

If you disable or do not configure this policy setting, ActiveX Filtering is not enabled by default for the user. The user can turn ActiveX Filtering on or off.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on ActiveX Filtering*
-   GP name: *TurnOnActiveXFiltering*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowaddonlist"></a>**InternetExplorer/AllowAddOnList**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage a list of add-ons to be allowed or denied by Internet Explorer. Add-ons in this case are controls like ActiveX Controls, Toolbars, and Browser Helper Objects (BHOs) which are specifically written to extend or enhance the functionality of the browser or web pages.

This list can be used with the 'Deny all add-ons unless specifically allowed in the Add-on List' policy setting, which defines whether add-ons not listed here are assumed to be denied.

If you enable this policy setting, you can enter a list of add-ons to be allowed or denied by Internet Explorer. For each entry that you add to the list, enter the following information:

- Name of the Value - the CLSID (class identifier) for the add-on you wish to add to the list. The CLSID should be in brackets for example, ‘{000000000-0000-0000-0000-0000000000000}'. The CLSID for an add-on can be obtained by reading the OBJECT tag from a Web page on which the add-on is referenced.

- Value - A number indicating whether Internet Explorer should deny or allow the add-on to be loaded. To specify that an add-on should be denied, enter a 0 (zero) into this field. To specify that an add-on should be allowed, enter a 1 (one) into this field. To specify that an add-on should be allowed and also permit the user to manage the add-on through Add-on Manager, enter a 2 (two) into this field.

If you disable this policy setting, the list is deleted. The 'Deny all add-ons unless specifically allowed in the Add-on List' policy setting will determine, whether add-ons not in this list are assumed to be denied.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Add-on List*
-   GP name: *AddonManagement_AddOnList*
-   GP path: *Windows Components/Internet Explorer/Security Features/Add-on Management*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowautocomplete"></a>**InternetExplorer/AllowAutoComplete**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This AutoComplete feature can remember and suggest User names and passwords on Forms.

If you enable this setting, the user cannot change "User name and passwords on forms" or "prompt me to save passwords". The Auto Complete feature for User names and passwords on Forms will be turned on. You have to decide whether to select "prompt me to save passwords".

If you disable this setting, the user cannot change "User name and passwords on forms" or "prompt me to save passwords". The Auto Complete feature for User names and passwords on Forms is turned off. The user also cannot opt to be prompted to save passwords.

If you do not configure this setting, the user has the freedom of turning on Auto complete for User name and passwords on forms and the option of prompting to save passwords. To display this option, the users open the Internet Options dialog box, click the Contents Tab and click the Settings button.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on the auto-complete feature for user names and passwords on forms*
-   GP name: *RestrictFormSuggestPW*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowcertificateaddressmismatchwarning"></a>**InternetExplorer/AllowCertificateAddressMismatchWarning**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to turn on the certificate address mismatch security warning. When this policy setting is turned on, the user is warned, when visiting Secure HTTP (HTTPS) websites that present certificates issued for a different website address. This warning helps prevent spoofing attacks.

If you enable this policy setting, the certificate address mismatch warning always appears.

If you disable or do not configure this policy setting, the user can choose whether the certificate address mismatch warning appears (by using the Advanced page in the Internet Control panel).

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on certificate address mismatch warning*
-   GP name: *IZ_PolicyWarnCertMismatch*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowdeletingbrowsinghistoryonexit"></a>**InternetExplorer/AllowDeletingBrowsingHistoryOnExit**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows the automatic deletion of specified items when the last browser window closes. The preferences selected in the Delete Browsing History dialog box (such as deleting temporary Internet files, cookies, history, form data, and passwords) are applied, and those items are deleted.

If you enable this policy setting, deleting browsing history on exit is turned on.

If you disable this policy setting, deleting browsing history on exit is turned off.

If you do not configure this policy setting, it can be configured on the General tab in Internet Options.

If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting has no effect.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow deleting browsing history on exit*
-   GP name: *DBHDisableDeleteOnExit*
-   GP path: *Windows Components/Internet Explorer/Delete Browsing History*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowenhancedprotectedmode"></a>**InternetExplorer/AllowEnhancedProtectedMode**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enhanced Protected Mode provides additional protection against malicious websites by using 64-bit processes on 64-bit versions of Windows. For computers running at least Windows 8, Enhanced Protected Mode also limits the locations Internet Explorer can read from in the registry and the file system.

If you enable this policy setting, Enhanced Protected Mode will be turned on. Any zone that has Protected Mode enabled will use Enhanced Protected Mode. Users will not be able to disable Enhanced Protected Mode.

If you disable this policy setting, Enhanced Protected Mode will be turned off. Any zone that has Protected Mode enabled will use the version of Protected Mode introduced in Internet Explorer 7 for Windows Vista.

If you do not configure this policy, users will be able to turn on or turn off Enhanced Protected Mode on the Advanced tab of the Internet Options dialog.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on Enhanced Protected Mode*
-   GP name: *Advanced_EnableEnhancedProtectedMode*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Advanced Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowenhancedsuggestionsinaddressbar"></a>**InternetExplorer/AllowEnhancedSuggestionsInAddressBar**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows Internet Explorer to provide enhanced suggestions, as the user types in the Address bar. To provide enhanced suggestions, the user's keystrokes are sent to Microsoft through Microsoft services.

If you enable this policy setting, users receive enhanced suggestions while typing in the Address bar. In addition, users cannot change the Suggestions setting on the Settings charm.

If you disable this policy setting, users do not receive enhanced suggestions while typing in the Address bar. In addition, users cannot change the Suggestions setting on the Settings charm.

If you do not configure this policy setting, users can change the Suggestions setting on the Settings charm.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow Microsoft services to provide enhanced suggestions as the user types in the Address bar*
-   GP name: *AllowServicePoweredQSA*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->
Supported values:
-   0 - Disabled
-   1 - Enabled (Default)
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowenterprisemodefromtoolsmenu"></a>**InternetExplorer/AllowEnterpriseModeFromToolsMenu**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode, using the Tools menu.

If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.

If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Let users turn on and use Enterprise Mode from the Tools menu*
-   GP name: *EnterpriseModeEnable*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowenterprisemodesitelist"></a>**InternetExplorer/AllowEnterpriseModeSiteList**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you specify where to find the list of websites you want opened using Enterprise Mode IE, instead of Standard mode, because of compatibility issues. Users can't edit this list.

If you enable this policy setting, Internet Explorer downloads the website list from your location (HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\Main\EnterpriseMode), opening all listed websites using Enterprise Mode IE.

If you disable or don't configure this policy setting, Internet Explorer opens all websites using Standards mode.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use the Enterprise Mode IE website list*
-   GP name: *EnterpriseModeSiteList*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowfallbacktossl3"></a>**InternetExplorer/AllowFallbackToSSL3**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to block an insecure fallback to SSL 3.0. When this policy is enabled, Internet Explorer will attempt to connect to sites using SSL 3.0 or below, when TLS 1.0 or greater fails.

We recommend that you do not allow insecure fallback in order to prevent a man-in-the-middle attack.

This policy does not affect which security protocols are enabled.

If you disable this policy, system defaults will be used.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow fallback to SSL 3.0 (Internet Explorer)*
-   GP name: *Advanced_EnableSSL3Fallback*
-   GP path: *Windows Components/Internet Explorer/Security Features*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowinternetexplorer7policylist"></a>**InternetExplorer/AllowInternetExplorer7PolicyList**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to add specific sites that must be viewed in Internet Explorer 7 Compatibility View.

If you enable this policy setting, the user can add and remove sites from the list, but the user cannot remove the entries that you specify.

If you disable or do not configure this policy setting, the user can add and remove sites from the list.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use Policy List of Internet Explorer 7 sites*
-   GP name: *CompatView_UsePolicyList*
-   GP path: *Windows Components/Internet Explorer/Compatibility View*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowinternetexplorerstandardsmode"></a>**InternetExplorer/AllowInternetExplorerStandardsMode**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, how Internet Explorer displays local intranet content. Intranet content is defined as any webpage that belongs to the local intranet security zone.

If you enable this policy setting, Internet Explorer uses the current user agent string for local intranet content. Additionally, all local intranet Standards Mode pages appear in the Standards Mode available with the latest version of Internet Explorer. The user cannot change this behavior through the Compatibility View Settings dialog box.

If you disable this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended) for local intranet content. Additionally, all local intranet Standards Mode pages appear in Internet Explorer 7 Standards Mode. The user cannot change this behavior through the Compatibility View Settings dialog box.

If you do not configure this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended) for local intranet content. Additionally, all local intranet Standards Mode pages appear in Internet Explorer 7 Standards Mode. This option results in the greatest compatibility with existing webpages, but newer content written to common Internet standards may be displayed incorrectly. This option matches the default behavior of Internet Explorer.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on Internet Explorer Standards Mode for local intranet*
-   GP name: *CompatView_IntranetSites*
-   GP path: *Windows Components/Internet Explorer/Compatibility View*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowinternetzonetemplate"></a>**InternetExplorer/AllowInternetZoneTemplate**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level. For example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

> [!NOTE]
> Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

> [!NOTE]
> It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Internet Zone Template*
-   GP name: *IZ_PolicyInternetZoneTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowintranetzonetemplate"></a>**InternetExplorer/AllowIntranetZoneTemplate**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This template policy setting allows you to configure policy settings in this zone, consistent with a selected security level. For example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

> [!NOTE]
> Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

> [!NOTE]
> It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Intranet Zone Template*
-   GP name: *IZ_PolicyIntranetZoneTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowlocalmachinezonetemplate"></a>**InternetExplorer/AllowLocalMachineZoneTemplate**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level. For example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

> [!NOTE]
> Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

> [!NOTE]
> It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Local Machine Zone Template*
-   GP name: *IZ_PolicyLocalMachineZoneTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowlockeddowninternetzonetemplate"></a>**InternetExplorer/AllowLockedDownInternetZoneTemplate**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level. For example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

> [!NOTE]
> Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

> [!NOTE]
> It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Locked-Down Internet Zone Template*
-   GP name: *IZ_PolicyInternetZoneLockdownTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowlockeddownintranetzonetemplate"></a>**InternetExplorer/AllowLockedDownIntranetZoneTemplate**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level. For example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

> [!NOTE]
> Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

> [!NOTE]
> It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Locked-Down Intranet Zone Template*
-   GP name: *IZ_PolicyIntranetZoneLockdownTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowlockeddownlocalmachinezonetemplate"></a>**InternetExplorer/AllowLockedDownLocalMachineZoneTemplate**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level. For example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

> [!NOTE]
> Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

> [!NOTE]
> It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Locked-Down Local Machine Zone Template*
-   GP name: *IZ_PolicyLocalMachineZoneLockdownTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowlockeddownrestrictedsiteszonetemplate"></a>**InternetExplorer/AllowLockedDownRestrictedSitesZoneTemplate**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level. For example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

> [!NOTE]
> Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

> [!NOTE]
> It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Locked-Down Restricted Sites Zone Template*
-   GP name: *IZ_PolicyRestrictedSitesZoneLockdownTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowonewordentry"></a>**InternetExplorer/AllowOneWordEntry**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows the user to go directly to an intranet site for a one-word entry in the Address bar.

If you enable this policy setting, Internet Explorer goes directly to an intranet site for a one-word entry in the Address bar, if it is available.

If you disable or do not configure this policy setting, Internet Explorer does not go directly to an intranet site for a one-word entry in the Address bar.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Go to an intranet site for a one-word entry in the Address bar*
-   GP name: *UseIntranetSiteForOneWordEntry*
-   GP path: *Windows Components/Internet Explorer/Internet Settings/Advanced settings/Browsing*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowsavetargetasinIEmode"></a>**InternetExplorer/AllowSaveTargetAsInIEMode**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows the administrator to enable "Save Target As" context menu in Internet Explorer mode.

- If you enable this policy, "Save Target As" will show up in the Internet Explorer mode context menu and work the same as Internet Explorer.
- If you disable or do not configure this policy setting, "Save Target As" will not show up in the Internet Explorer mode context menu.

For more information, see [https://go.microsoft.com/fwlink/?linkid=2102115](/deployedge/edge-ie-mode-faq)

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow "Save Target As" in Internet Explorer mode*
-   GP name: *AllowSaveTargetAsInIEMode*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->
```xml
 <policy name="AllowSaveTargetAsInIEMode" class="Both" displayName="$(string.AllowSaveTargetAsInIEMode)" explainText="$(string.IE_ExplainAllowSaveTargetAsInIEMode)" key="Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode" valueName="AllowSaveTargetAsInIEMode">
      <parentCategory ref="InternetExplorer" />
      <supportedOn ref="SUPPORTED_IE11" />
      <enabledValue>
        <decimal value="1" />
      </enabledValue>
      <disabledValue>
        <decimal value="0" />
      </disabledValue>
    </policy>
```

<!--Policy-->
<a href="" id="internetexplorer-allowsitetozoneassignmentlist"></a>**InternetExplorer/AllowSiteToZoneAssignmentList**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage a list of sites that you want to associate with a particular security zone. These zone numbers have associated security settings that apply to all of the sites in the zone.

Internet Explorer has 4 security zones, numbered 1-4, and these are used by this policy setting to associate sites to zones. They are: 
1. Intranet zone
1. Trusted Sites zone 
1. Internet zone
1. Restricted Sites zone

Security settings can be set for each of these zones through other policy settings, and their default settings are: Trusted Sites zone (Medium template), Intranet zone (Medium-Low template), Internet zone (Medium-high template), and Restricted Sites zone (High template). (The Local Machine zone and its locked down equivalent have special security settings that protect your local computer.)

If you enable this policy setting, you can enter a list of sites and their related zone numbers. The association of a site with a zone will ensure that the security settings for the specified zone are applied to the site. For each entry that you add to the list, enter the following information:

- Valuename – A host for an intranet site, or a fully qualified domain name for other sites. The valuename may also include a specific protocol. For example, if you enter `<http://www.contoso.com>` as the valuename, other protocols are not affected. If you enter just `www.contoso.com,` then all protocols are affected for that site, including http, https, ftp, and so on. The site may also be expressed as an IP address (e.g., 127.0.0.1) or range (e.g., 127.0.0.1-10). To avoid creating conflicting policies, do not include additional characters after the domain such as trailing slashes or URL path. For example, policy settings for `www.contoso.com` and `www.contoso.com/mail` would be treated as the same policy setting by Internet Explorer, and would therefore be in conflict.

- Value - A number indicating the zone with which this site should be associated for security settings. The Internet Explorer zones described above are 1-4.

If you disable or do not configure this policy, users may choose their own site-to-zone assignments.

> [!NOTE]
> This policy is a list that contains the site and index value.

The list is a set of pairs of strings. Each string is separated by F000. Each pair of strings is stored as a registry name and value. The registry name is the site and the value is an index. The index has to be sequential. See an example below.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Site to Zone Assignment List*
-   GP name: *IZ_Zonemaps*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--Example-->
```xml
  <SyncBody>
      <Replace>
          <CmdID>2</CmdID>
           <Item>
               <Meta>
                  <Format>chr</Format>
                  <Type>text/plain</Type>
              </Meta>
              <Target>
                  <LocURI>./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowSiteToZoneAssignmentList</LocURI>
              </Target>
               <Data>&lt;Enabled/&gt;&lt;Data id=&quot;IZ_ZonemapPrompt&quot; value=&quot;http://adfs.contoso.org&#xF000;1&#xF000;http://microsoft.com&#xF000;2&quot;/&gt;</Data>
          </Item>
      </Replace>
      <Final/>
  </SyncBody>
```

Value and index pairs in the SyncML example:  
- `https://adfs.contoso.org 1`
- `https://microsoft.com 2`

<!--/Example-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowsoftwarewhensignatureisinvalid"></a>**InternetExplorer/AllowSoftwareWhenSignatureIsInvalid**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage whether software, such as ActiveX controls and file downloads, can be installed or run by the user even though the signature is invalid. An invalid signature might indicate that someone has tampered with the file.

If you enable this policy setting, users will be prompted to install or run files with an invalid signature.

If you disable this policy setting, users cannot run or install files with an invalid signature.

If you do not configure this policy, users can choose to run or install files with an invalid signature.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow software to run or install even if the signature is invalid*
-   GP name: *Advanced_InvalidSignatureBlock*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Advanced Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowsuggestedsites"></a>**InternetExplorer/AllowSuggestedSites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the Suggested Sites feature, which recommends websites based on the user’s browsing activity. Suggested Sites reports a user’s browsing history to Microsoft, to suggest sites that the user might want to visit.

If you enable this policy setting, the user is not prompted to enable Suggested Sites. The user’s browsing history is sent to Microsoft to produce suggestions.

If you disable this policy setting, the entry points and functionality associated with this feature are turned off.

If you do not configure this policy setting, the user can turn on and turn off the Suggested Sites feature.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on Suggested Sites*
-   GP name: *EnableSuggestedSites*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowtrustedsiteszonetemplate"></a>**InternetExplorer/AllowTrustedSitesZoneTemplate**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level. For example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

> [!NOTE]
> Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

> [!NOTE]
> It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Trusted Sites Zone Template*
-   GP name: *IZ_PolicyTrustedSitesZoneTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowslockeddowntrustedsiteszonetemplate"></a>**InternetExplorer/AllowsLockedDownTrustedSitesZoneTemplate**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level. For example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

> [!NOTE]
> Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

> [!NOTE]
> It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Locked-Down Trusted Sites Zone Template*
-   GP name: *IZ_PolicyTrustedSitesZoneLockdownTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-allowsrestrictedsiteszonetemplate"></a>**InternetExplorer/AllowsRestrictedSitesZoneTemplate**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level. For example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

> [!NOTE]
> Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

> [!NOTE]
> It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Restricted Sites Zone Template*
-   GP name: *IZ_PolicyRestrictedSitesZoneTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-checkservercertificaterevocation"></a>**InternetExplorer/CheckServerCertificateRevocation**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage whether Internet Explorer will check revocation status of servers' certificates. Certificates are revoked when they have been compromised or are no longer valid, and this option protects users from submitting confidential data to a site that may be fraudulent or not secure.

If you enable this policy setting, Internet Explorer will check to see if server certificates have been revoked.

If you disable this policy setting, Internet Explorer will not check server certificates to see if they have been revoked.

If you do not configure this policy setting, Internet Explorer will not check server certificates to see if they have been revoked.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Check for server certificate revocation*
-   GP name: *Advanced_CertificateRevocation*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Advanced Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-checksignaturesondownloadedprograms"></a>**InternetExplorer/CheckSignaturesOnDownloadedPrograms**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage whether Internet Explorer checks for digital signatures (which identifies the publisher of signed software, and verifies it hasn't been modified or tampered with) on user computers before downloading executable programs.

If you enable this policy setting, Internet Explorer will check the digital signatures of executable programs and display their identities before downloading them to user computers.

If you disable this policy setting, Internet Explorer will not check the digital signatures of executable programs or display their identities before downloading them to user computers.

If you do not configure this policy, Internet Explorer will not check the digital signatures of executable programs or display their identities before downloading them to user computers.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Check for signatures on downloaded programs*
-   GP name: *Advanced_DownloadSignatures*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Advanced Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<a href="" id="internetexplorer-configureedgeredirectchannel"></a>**InternetExplorer/ConfigureEdgeRedirectChannel**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enables you to configure up to three versions of Microsoft Edge to open a redirected site (in order of preference). Use this policy, if your environment is configured to redirect sites from Internet Explorer 11 to Microsoft Edge. If any of the chosen versions are not installed on the device, that preference will be bypassed.

If both the Windows Update for the next version of Microsoft Edge* and Microsoft Edge Stable channel are installed, the following behaviors occur:

- If you enable this policy, you can configure redirected sites to open in up to three of the following channels where:
    - 1 = Microsoft Edge Stable
    - 2 = Microsoft Edge Beta version 77 or later
    - 3 = Microsoft Edge Dev version 77 or later
    - 4 = Microsoft Edge Canary version 77 or later

- If you disable or do not configure this policy, Microsoft Edge Stable channel is used. This is the default behavior.

If the Windows Update for the next version of Microsoft Edge* or Microsoft Edge Stable channel are not installed, the following behaviors occur:

- If you enable this policy, you can configure redirected sites to open in up to three of the following channels where:
    - 0 = Microsoft Edge version 45 or earlier
    - 1 = Microsoft Edge Stable
    - 2 = Microsoft Edge Beta version 77 or later
    - 3 = Microsoft Edge Dev version 77 or later
    - 4 = Microsoft Edge Canary version 77 or later

- If you disable or do not configure this policy, Microsoft Edge version 45 or earlier is automatically used. This is the default behavior.

> [!NOTE]
> For more information about the Windows update for the next version of Microsoft Edge including how to disable it, see [https://go.microsoft.com/fwlink/?linkid=2102115](/deployedge/edge-ie-mode-faq). This update applies only to Windows 10 version 1709 and higher.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure which channel of Microsoft Edge to use for opening redirected sites*
-   GP name: *NeedEdgeBrowser*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->
```xml
 <policy name="NeedEdgeBrowser" class="Both" displayName="$(string.NeedEdgeBrowser)" explainText="$(string.IE_ExplainNeedEdgeBrowser)" key="Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode" presentation="$(presentation.NeedEdgeBrowser)">

      <parentCategory ref="InternetExplorer" />

      <supportedOn ref="SUPPORTED_IE11" />

      <elements>

        <enum id="NeedEdgeBrowser" valueName="NeedEdgeBrowser">

          <item displayName="$(string.NeedEdgeBrowserChoice_None)">

            <value>

              <delete />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumStable)">

            <value>

              <decimal value="1" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumBeta)">

            <value>

              <decimal value="2" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumDev)">

            <value>

              <decimal value="3" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumCanary)">

            <value>

              <decimal value="4" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_EdgeHTML)">

            <value>

              <decimal value="0" />

            </value>

          </item>

        </enum>

        <enum id="NeedEdgeBrowser2" valueName="NeedEdgeBrowser2">

          <item displayName="$(string.NeedEdgeBrowserChoice_None)">

            <value>

              <delete />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumStable)">

            <value>

              <decimal value="1" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumBeta)">

            <value>

              <decimal value="2" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumDev)">

            <value>

              <decimal value="3" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumCanary)">

            <value>

              <decimal value="4" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_EdgeHTML)">

            <value>

              <decimal value="0" />

            </value>

          </item>

        </enum>

        <enum id="NeedEdgeBrowser3" valueName="NeedEdgeBrowser3">

          <item displayName="$(string.NeedEdgeBrowserChoice_None)">

            <value>

              <delete />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumStable)">

            <value>

              <decimal value="1" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumBeta)">

            <value>

              <decimal value="2" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumDev)">

            <value>

              <decimal value="3" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumCanary)">

            <value>

              <decimal value="4" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_EdgeHTML)">

            <value>

              <decimal value="0" />

            </value>

          </item>

        </enum>

      </elements>

    </policy>
```
<!--Policy-->
<a href="" id="internetexplorer-consistentmimehandlinginternetexplorerprocesses"></a>**InternetExplorer/ConsistentMimeHandlingInternetExplorerProcesses**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Internet Explorer uses Multipurpose Internet Mail Extensions (MIME) data to determine file handling procedures for files received through a Web server.

This policy setting determines, whether Internet Explorer requires that all file-type information provided by Web servers be consistent. For example, if the MIME type of a file is text/plain, but the MIME sniff indicates that the file is really an executable file, then Internet Explorer renames the file by saving it in the Internet Explorer cache and changing its extension.

If you enable this policy setting, Internet Explorer requires consistent MIME data for all received files.

If you disable this policy setting, Internet Explorer will not require consistent MIME data for all received files.

If you do not configure this policy setting, Internet Explorer requires consistent MIME data for all received files.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Internet Explorer Processes*
-   GP name: *IESF_PolicyExplorerProcesses_5*
-   GP path: *Windows Components/Internet Explorer/Security Features/Consistent Mime Handling*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disableactivexversionlistautodownload"></a>**InternetExplorer/DisableActiveXVersionListAutoDownload**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting determines whether IE automatically downloads updated versions of Microsoft’s VersionList.XML. IE uses this file to determine whether an ActiveX control should be stopped from loading.

> [!Caution]
> If you enable this setting, IE stops downloading updated versions of VersionList.XML. Turning off this automatic download, breaks the [out-of-date ActiveX control blocking feature](/internet-explorer/ie11-deploy-guide/out-of-date-activex-control-blocking) by not letting the version list update with newly outdated controls, potentially compromising the security of your computer.

If you disable or do not configure this setting, IE continues to download updated versions of VersionList.XML.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off automatic download of the ActiveX VersionList*
-   GP name: *VersionListAutomaticDownloadDisable*
-   GP path: *Windows Components/Internet Explorer/Security Features/Add-on Management*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->
Supported values:  
-   0 - Enabled
-   1 - Disabled (Default)
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disableadobeflash"></a>**InternetExplorer/DisableAdobeFlash**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting turns off Adobe Flash in Internet Explorer and prevents applications from using Internet Explorer technology to instantiate Flash objects.

If you enable this policy setting, Flash is turned off for Internet Explorer, and applications cannot use Internet Explorer technology to instantiate Flash objects. In the Manage Add-ons dialog box, the Flash status will be 'Disabled', and users cannot enable Flash. If you enable this policy setting, Internet Explorer will ignore settings made for Adobe Flash through the "Add-on List" and "Deny all add-ons unless specifically allowed in the Add-on List" policy settings.

If you disable, or do not configure this policy setting, Flash is turned on for Internet Explorer, and applications can use Internet Explorer technology to instantiate Flash objects. Users can enable or disable Flash in the Manage Add-ons dialog box.

Note that Adobe Flash can still be disabled through the "Add-on List" and "Deny all add-ons unless specifically allowed in the Add-on List" policy settings, even if this policy setting is disabled, or not configured. However, if Adobe Flash is disabled through the "Add-on List" and "Deny all add-ons unless specifically allowed in the Add-on List" policy settings and not through this policy setting, all applications that use Internet Explorer technology to instantiate Flash object can still do so. For more information, see "Group Policy Settings in Internet Explorer 10" in the Internet Explorer TechNet library.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Adobe Flash in Internet Explorer and prevent applications from using Internet Explorer technology to instantiate Flash objects*
-   GP name: *DisableFlashInIE*
-   GP path: *Windows Components/Internet Explorer/Security Features/Add-on Management*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disablebypassofsmartscreenwarnings"></a>**InternetExplorer/DisableBypassOfSmartScreenWarnings**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines whether the user can bypass warnings from Windows Defender SmartScreen. Windows Defender SmartScreen prevents the user from browsing to or downloading from sites that are known to host malicious content. Windows Defender SmartScreen also prevents the execution of files that are known to be malicious.

If you enable this policy setting, Windows Defender SmartScreen warnings block the user.

If you disable or do not configure this policy setting, the user can bypass Windows Defender SmartScreen warnings.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent bypassing SmartScreen Filter warnings*
-   GP name: *DisableSafetyFilterOverride*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disablebypassofsmartscreenwarningsaboutuncommonfiles"></a>**InternetExplorer/DisableBypassOfSmartScreenWarningsAboutUncommonFiles**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines whether the user can bypass warnings from Windows Defender SmartScreen. Windows Defender SmartScreen warns the user about executable files that Internet Explorer users do not commonly download from the Internet.

If you enable this policy setting, Windows Defender SmartScreen warnings block the user.

If you disable or do not configure this policy setting, the user can bypass Windows Defender SmartScreen warnings.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent bypassing SmartScreen Filter warnings about files that are not commonly downloaded from the Internet*
-   GP name: *DisableSafetyFilterOverrideForAppRepUnknown*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disablecompatview"></a>**InternetExplorer/DisableCompatView**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the Compatibility View feature, which allows users to fix website display problems that they may encounter while browsing.

If you enable this policy setting, the user cannot use the Compatibility View button or manage the Compatibility View sites list.

If you disable or do not configure this policy setting, the user can use the Compatibility View button and manage the Compatibility View sites list.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Compatibility View*
-   GP name: *CompatView_DisableList*
-   GP path: *Windows Components/Internet Explorer/Compatibility View*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->
Supported values:  
-   0 - Disabled (Default)
-   1 - Enabled
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disableconfiguringhistory"></a>**InternetExplorer/DisableConfiguringHistory**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This setting specifies the number of days that Internet Explorer tracks views of pages in the History List. To access the Temporary Internet Files and History Settings dialog box, do the following:

1. From the Menu bar, on the Tools menu, click Internet Options.
1. Click the General tab, and then click Settings under Browsing history.

If you enable this policy setting, a user cannot set the number of days that Internet Explorer tracks views of the pages in the History List. You must specify the number of days that Internet Explorer tracks views of pages in the History List. Users can not delete browsing history.

If you disable or do not configure this policy setting, a user can set the number of days that Internet Explorer tracks views of pages in the History list. Users can delete browsing history.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Disable "Configuring History"*
-   GP name: *RestrictHistory*
-   GP path: *Windows Components/Internet Explorer/Delete Browsing History*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disablecrashdetection"></a>**InternetExplorer/DisableCrashDetection**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the crash detection feature of add-on Management.

If you enable this policy setting, a crash in Internet Explorer will exhibit behavior found in Windows XP Professional Service Pack 1 and earlier, namely to invoke Windows Error Reporting. All policy settings for Windows Error Reporting continue to apply.

If you disable or do not configure this policy setting, the crash detection feature for add-on management will be functional.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Crash Detection*
-   GP name: *AddonManagement_RestrictCrashDetection*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disablecustomerexperienceimprovementprogramparticipation"></a>**InternetExplorer/DisableCustomerExperienceImprovementProgramParticipation**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents the user from participating in the Customer Experience Improvement Program (CEIP).

If you enable this policy setting, the user cannot participate in the CEIP, and the Customer Feedback Options command does not appear on the Help menu.

If you disable this policy setting, the user must participate in the CEIP, and the Customer Feedback Options command does not appear on the Help menu.

If you do not configure this policy setting, the user can choose to participate in the CEIP.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent participation in the Customer Experience Improvement Program*
-   GP name: *SQM_DisableCEIP*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disabledeletinguservisitedwebsites"></a>**InternetExplorer/DisableDeletingUserVisitedWebsites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents the user from deleting the history of websites that he or she has visited. This feature is available in the Delete Browsing History dialog box.

If you enable this policy setting, websites that the user has visited are preserved when he or she clicks Delete.

If you disable this policy setting, websites that the user has visited are deleted when he or she clicks Delete.

If you do not configure this policy setting, the user can choose whether to delete or preserve visited websites when he or she clicks Delete.

If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting is enabled by default.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent deleting websites that the user has visited*
-   GP name: *DBHDisableDeleteHistory*
-   GP path: *Windows Components/Internet Explorer/Delete Browsing History*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disableenclosuredownloading"></a>**InternetExplorer/DisableEnclosureDownloading**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents the user from having enclosures (file attachments) downloaded from a feed to the user's computer.

If you enable this policy setting, the user cannot set the Feed Sync Engine to download an enclosure through the Feed property page. A developer cannot change the download setting through the Feed APIs.

If you disable or do not configure this policy setting, the user can set the Feed Sync Engine to download an enclosure through the Feed property page. A developer can change the download setting through the Feed APIs.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent downloading of enclosures*
-   GP name: *Disable_Downloading_of_Enclosures*
-   GP path: *Windows Components/RSS Feeds*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disableencryptionsupport"></a>**InternetExplorer/DisableEncryptionSupport**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to turn off support for Transport Layer Security (TLS) 1.0, TLS 1.1, TLS 1.2, Secure Sockets Layer (SSL) 2.0, or SSL 3.0 in the browser. TLS and SSL are protocols that help protect communication between the browser and the target server. When the browser attempts to set up a protected communication with the target server, the browser and server negotiate which protocol and version to use. The browser and server attempt to match each other’s list of supported protocols and versions, and they select the most preferred match.

If you enable this policy setting, the browser negotiates or does not negotiate an encryption tunnel by using the encryption methods that you select from the drop-down list.

If you disable or do not configure this policy setting, the user can select which encryption method the browser supports.

> [!NOTE]
> SSL 2.0 is off by default and is no longer supported starting with Windows 10 Version 1607. SSL 2.0 is an outdated security protocol, and enabling SSL 2.0 impairs the performance and functionality of TLS 1.0.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off encryption support*
-   GP name: *Advanced_SetWinInetProtocols*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Advanced Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disablefeedsbackgroundsync"></a>**InternetExplorer/DisableFeedsBackgroundSync**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to choose whether or not to have background synchronization for feeds and Web Slices.

If you enable this policy setting, the ability to synchronize feeds and Web Slices in the background is turned off.

If you disable or do not configure this policy setting, the user can synchronize feeds and Web Slices in the background.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off background synchronization for feeds and Web Slices*
-   GP name: *Disable_Background_Syncing*
-   GP path: *Windows Components/RSS Feeds*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->
Supported values:  
-   0 - Enabled (Default)
-   1 - Disabled
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disablefirstrunwizard"></a>**InternetExplorer/DisableFirstRunWizard**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents Internet Explorer from running the First Run wizard, the first time a user starts the browser after installing Internet Explorer or Windows.

If you enable this policy setting, you must make one of the following choices:
-   Skip the First Run wizard, and go directly to the user's home page.
-   Skip the First Run wizard, and go directly to the "Welcome to Internet Explorer" webpage.

Starting with Windows 8, the "Welcome to Internet Explorer" webpage is not available. The user's home page will display regardless of which option is chosen.

If you disable or do not configure this policy setting, Internet Explorer may run the First Run wizard, the first time the browser is started after installation.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent running First Run wizard*
-   GP name: *NoFirstRunCustomise*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disableflipaheadfeature"></a>**InternetExplorer/DisableFlipAheadFeature**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines whether a user can swipe across a screen or click Forward to go to the next pre-loaded page of a website.

Microsoft collects your browsing history to improve how flip ahead with page prediction works. This feature isn't available for Internet Explorer for the desktop.

If you enable this policy setting, flip ahead with page prediction is turned off and the next webpage isn't loaded into the background.

If you disable this policy setting, flip ahead with page prediction is turned on and the next webpage is loaded into the background.

If you don't configure this setting, users can turn this behavior on or off, using the Settings charm.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off the flip ahead with page prediction feature*
-   GP name: *Advanced_DisableFlipAhead*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Advanced Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disablegeolocation"></a>**InternetExplorer/DisableGeolocation**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to disable browser geolocation support. This prevents websites from requesting location data about the user.

If you enable this policy setting, browser geolocation support is turned off.

If you disable this policy setting, browser geolocation support is turned on.

If you do not configure this policy setting, browser geolocation support can be turned on or off in Internet Options on the Privacy tab.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off browser geolocation*
-   GP name: *GeolocationDisable*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->
Supported values:  
-   0 - Disabled (Default)
-   1 - Enabled
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disablehomepagechange"></a>**InternetExplorer/DisableHomePageChange**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
The Home page specified on the General tab of the Internet Options dialog box is the default Web page that Internet Explorer loads whenever it is run.

If you enable this policy setting, a user cannot set a custom default home page. You must specify which default home page should load on the user machine. For machines with at least Internet Explorer 7, the home page can be set within this policy to override other home page policies.

If you disable or do not configure this policy setting, the Home page box is enabled and users can choose their own home page.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Disable changing home page settings*
-   GP name: *RestrictHomePage*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<!--Policy-->
<a href="" id="internetexplorer-disableinternetexplorerapp"></a>**InternetExplorer/DisableInternetExplorerApp**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy lets you restrict launching of Internet Explorer as a standalone browser.

If you enable this policy, it:
- Prevents Internet Explorer 11 from launching as a standalone browser.
- Restricts Internet Explorer's usage to Microsoft Edge's native 'Internet Explorer mode'.
- Redirects all attempts at launching Internet Explorer 11 to Microsoft Edge Stable Channel browser.
- Overrides any other policies that redirect to Internet Explorer 11.

If you disable, or do not configure this policy, all sites are opened using the current active browser settings.

> [!NOTE]
> Microsoft Edge Stable Channel must be installed for this policy to take effect.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Disable Internet Explorer 11 as a standalone browser*
-   GP name: *DisableInternetExplorerApp*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->
```xml
 <policy name="DisableInternetExplorerApp" class="Both" displayName="$(string.DisableInternetExplorerApp)" explainText="$(string.IE_ExplainDisableInternetExplorerApp)" key="Software\Policies\Microsoft\Internet Explorer\Main" valueName="DisableInternetExplorerApp">

      <parentCategory ref="InternetExplorer" />

      <supportedOn ref="SUPPORTED_IE11" />

      <enabledValue>

        <decimal value="1" />

      </enabledValue>

      <disabledValue>

        <decimal value="0" />

      </disabledValue>

    </policy>
```
<!--Policy-->
<a href="" id="internetexplorer-disableignoringcertificateerrors"></a>**InternetExplorer/DisableIgnoringCertificateErrors**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents the user from ignoring Secure Sockets Layer/Transport Layer Security (SSL/TLS) certificate errors that interrupt browsing (such as "expired", "revoked", or "name mismatch" errors) in Internet Explorer.

If you enable this policy setting, the user cannot continue browsing.

If you disable or do not configure this policy setting, the user can choose to ignore certificate errors and continue browsing.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent ignoring certificate errors*
-   GP name: *NoCertError*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disableinprivatebrowsing"></a>**InternetExplorer/DisableInPrivateBrowsing**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to turn off the InPrivate Browsing feature.

InPrivate Browsing prevents Internet Explorer from storing data about a user's browsing session. This includes cookies, temporary Internet files, history, and other data.

If you enable this policy setting, InPrivate Browsing is turned off.

If you disable this policy setting, InPrivate Browsing is available for use.

If you do not configure this policy setting, InPrivate Browsing can be turned on or off through the registry.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off InPrivate Browsing*
-   GP name: *DisableInPrivateBrowsing*
-   GP path: *Windows Components/Internet Explorer/Privacy*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disableprocessesinenhancedprotectedmode"></a>**InternetExplorer/DisableProcessesInEnhancedProtectedMode**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines whether Internet Explorer 11 uses 64-bit processes (for greater security) or 32-bit processes (for greater compatibility), when running in Enhanced Protected Mode on 64-bit versions of Windows.

> [!IMPORTANT]
> Some ActiveX controls and toolbars may not be available when 64-bit processes are used.

If you enable this policy setting, Internet Explorer 11 will use 64-bit tab processes, when running in Enhanced Protected Mode on 64-bit versions of Windows.

If you disable this policy setting, Internet Explorer 11 will use 32-bit tab processes, when running in Enhanced Protected Mode on 64-bit versions of Windows.

If you don't configure this policy setting, users can turn this feature on or off using Internet Explorer settings. This feature is turned off by default.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on 64-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows*
-   GP name: *Advanced_EnableEnhancedProtectedMode64Bit*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Advanced Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disableproxychange"></a>**InternetExplorer/DisableProxyChange**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies if a user can change proxy settings.

If you enable this policy setting, the user will not be able to configure proxy settings.

If you disable or do not configure this policy setting, the user can configure proxy settings.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent changing proxy settings*
-   GP name: *RestrictProxy*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disablesearchproviderchange"></a>**InternetExplorer/DisableSearchProviderChange**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents the user from changing the default search provider for the Address bar and the toolbar Search box.

If you enable this policy setting, the user cannot change the default search provider.

If you disable or do not configure this policy setting, the user can change the default search provider.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent changing the default search provider*
-   GP name: *NoSearchProvider*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disablesecondaryhomepagechange"></a>**InternetExplorer/DisableSecondaryHomePageChange**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Secondary home pages are the default Web pages that Internet Explorer loads in separate tabs from the home page whenever the browser is run. This policy setting allows you to set default secondary home pages.

If you enable this policy setting, you can specify which default home pages should load as secondary home pages. The user cannot set custom default secondary home pages.

If you disable or do not configure this policy setting, the user can add secondary home pages.

> [!NOTE]
> If the “Disable Changing Home Page Settings” policy is enabled, the user cannot add secondary home pages.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Disable changing secondary home page settings*
-   GP name: *SecondaryHomePages*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disablesecuritysettingscheck"></a>**InternetExplorer/DisableSecuritySettingsCheck**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting turns off the Security Settings Check feature, which checks Internet Explorer security settings to determine when the settings put Internet Explorer at risk.

If you enable this policy setting, the feature is turned off.

If you disable or do not configure this policy setting, the feature is turned on.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off the Security Settings Check feature*
-   GP name: *Disable_Security_Settings_Check*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disableupdatecheck"></a>**InternetExplorer/DisableUpdateCheck**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Prevents Internet Explorer from checking whether a new version of the browser is available.

If you enable this policy, it prevents Internet Explorer from checking to see whether it is the latest available browser version and notifies users if a new version is available.

If you disable this policy or do not configure it, Internet Explorer checks every 30 days by default, and then notifies users if a new version is available.

This policy is intended to help the administrator maintain version control for Internet Explorer by preventing users from being notified about new versions of the browser.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Disable Periodic Check for Internet Explorer software updates*
-   GP name: *NoUpdateCheck*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-disablewebaddressautocomplete"></a>**InternetExplorer/DisableWebAddressAutoComplete**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This AutoComplete feature suggests possible matches when users are entering Web addresses in the browser address bar.

If you enable this policy setting, users are not suggested matches when entering Web addresses. The user cannot change the auto-complete for web-address setting.

If you disable this policy setting, users are suggested matches when entering Web addresses. The user cannot change the auto-complete for web-address setting.

If you do not configure this policy setting, users can choose to turn the auto-complete setting for web-addresses on or off.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off the auto-complete feature for web addresses*
-   GP name: *RestrictWebAddressSuggest*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->
Supported values:  
-   yes - Disabled (Default)
-   no  - Enabled
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-donotallowactivexcontrolsinprotectedmode"></a>**InternetExplorer/DoNotAllowActiveXControlsInProtectedMode**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents ActiveX controls from running in Protected Mode when Enhanced Protected Mode is enabled. When a user has an ActiveX control installed that is not compatible with Enhanced Protected Mode and a website attempts to load the control, Internet Explorer notifies the user and gives the option to run the website in regular Protected Mode. This policy setting disables this notification and forces all websites to run in Enhanced Protected Mode.

Enhanced Protected Mode provides additional protection against malicious websites by using 64-bit processes on 64-bit versions of Windows. For computers running at least Windows 8, Enhanced Protected Mode also limits the locations Internet Explorer can read from in the registry and the file system.

When Enhanced Protected Mode is enabled, and a user encounters a website that attempts to load an ActiveX control that is not compatible with Enhanced Protected Mode, Internet Explorer notifies the user and gives the option to disable Enhanced Protected Mode for that particular website.

If you enable this policy setting, Internet Explorer will not give the user the option to disable Enhanced Protected Mode. All Protected Mode websites will run in Enhanced Protected Mode.

If you disable or do not configure this policy setting, Internet Explorer notifies users and provides an option to run websites with incompatible ActiveX controls in regular Protected Mode. This is the default behavior.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not allow ActiveX controls to run in Protected Mode when Enhanced Protected Mode is enabled*
-   GP name: *Advanced_DisableEPMCompat*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Advanced Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-donotallowuserstoaddsites"></a>**InternetExplorer/DoNotAllowUsersToAddSites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Prevents users from adding or removing sites from security zones. A security zone is a group of Web sites with the same security level.

If you enable this policy, the site management settings for security zones are disabled. (To see the site management settings for security zones, in the Internet Options dialog box, click the Security tab, and then click the Sites button.)

If you disable this policy or do not configure it, users can add Web sites to or remove sites from the Trusted Sites and Restricted Sites zones, and alter settings for the Local Intranet zone.

This policy prevents users from changing site management settings for security zones established by the administrator.

> [!NOTE]
> The "Disable the Security page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Security tab from the interface, takes precedence over this policy. If it is enabled, this policy is ignored.

Also, see the "Security zones: Use only machine settings" policy.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Security Zones: Do not allow users to add/delete sites*
-   GP name: *Security_zones_map_edit*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-donotallowuserstochangepolicies"></a>**InternetExplorer/DoNotAllowUsersToChangePolicies**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Prevents users from changing security zone settings. A security zone is a group of Web sites with the same security level.

If you enable this policy, the Custom Level button and security-level slider on the Security tab in the Internet Options dialog box are disabled.

If you disable this policy or do not configure it, users can change the settings for security zones.

This policy prevents users from changing security zone settings established by the administrator.

> [!NOTE]
> The "Disable the Security page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Security tab from Internet Explorer in Control Panel, takes precedence over this policy. If it is enabled, this policy is ignored.

Also, see the "Security zones: Use only machine settings" policy.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Security Zones: Do not allow users to change policies*
-   GP name: *Security_options_edit*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-donotblockoutdatedactivexcontrols"></a>**InternetExplorer/DoNotBlockOutdatedActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines whether Internet Explorer blocks specific outdated ActiveX controls. Outdated ActiveX controls are never blocked in the Intranet Zone.

If you enable this policy setting, Internet Explorer stops blocking outdated ActiveX controls.

If you disable or don't configure this policy setting, Internet Explorer continues to block specific outdated ActiveX controls.

For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off blocking of outdated ActiveX controls for Internet Explorer*
-   GP name: *VerMgmtDisable*
-   GP path: *Windows Components/Internet Explorer/Security Features/Add-on Management*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-donotblockoutdatedactivexcontrolsonspecificdomains"></a>**InternetExplorer/DoNotBlockOutdatedActiveXControlsOnSpecificDomains**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage a list of domains on which Internet Explorer will stop blocking outdated ActiveX controls. Outdated ActiveX controls are never blocked in the Intranet Zone.

If you enable this policy setting, you can enter a custom list of domains for which outdated ActiveX controls won't be blocked in Internet Explorer. Each domain entry must be formatted like one of the following:

1. "domain.name.TLD". For example, if you want to include *.contoso.com/*, use "contoso.com".
2. "hostname". For example, if you want to include http://example, use "example".
3. "file:///path/filename.htm". For example, use "file:///C:/Users/contoso/Desktop/index.htm".

If you disable or don't configure this policy setting, the list is deleted and Internet Explorer continues to block specific outdated ActiveX controls on all domains in the Internet Zone.

For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off blocking of outdated ActiveX controls for Internet Explorer on specific domains*
-   GP name: *VerMgmtDomainAllowlist*
-   GP path: *Windows Components/Internet Explorer/Security Features/Add-on Management*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-enableextendediemodehotkeys"></a>**InternetExplorer/EnableExtendedIEModeHotkeys**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets admins enable extended Microsoft Edge Internet Explorer mode hotkeys, such as "Ctrl+S" to have "Save as" functionality.

- If you enable this policy, extended hotkey functionality is enabled in Internet Explorer mode and work the same as Internet Explorer.

- If you disable, or don't configure this policy, extended hotkeys will not work in Internet Explorer mode.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - Disabled
-   1 - Enabled

<!--/SupportedValues-->
<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable extended hot keys in Internet Explorer mode*
-   GP name: *EnableExtendedIEModeHotkeys*
-   GP path: *Windows Components/Internet Explorer/Security Features/Add-on Management*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>
<!--Policy-->
<a href="" id="internetexplorer-includealllocalsites"></a>**InternetExplorer/IncludeAllLocalSites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether local sites which are not explicitly mapped into any Security Zone are forced into the local Intranet security zone.

If you enable this policy setting, local sites which are not explicitly mapped into a zone are considered to be in the Intranet Zone.

If you disable this policy setting, local sites which are not explicitly mapped into a zone will not be considered in the Intranet Zone (so would typically be in the Internet Zone).

If you do not configure this policy setting, users choose whether to force local sites into the Intranet Zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Intranet Sites: Include all local (intranet) sites not listed in other zones*
-   GP name: *IZ_IncludeUnspecifiedLocalSites*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-includeallnetworkpaths"></a>**InternetExplorer/IncludeAllNetworkPaths**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether URLs representing UNCs are mapped into the local Intranet security zone.

If you enable this policy setting, all network paths are mapped into the Intranet Zone.

If you disable this policy setting, network paths are not necessarily mapped into the Intranet Zone (other rules might map one there).

If you do not configure this policy setting, users choose whether network paths are mapped into the Intranet Zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Intranet Sites: Include all network paths (UNCs)*
-   GP name: *IZ_UNCAsIntranet*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowaccesstodatasources"></a>**InternetExplorer/InternetZoneAllowAccessToDataSources**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/InternetZoneAllowAutomaticPromptingForActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting manages, whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/InternetZoneAllowAutomaticPromptingForFileDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowcopypasteviascript"></a>**InternetExplorer/InternetZoneAllowCopyPasteViaScript**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether scripts can perform a clipboard operation (for example, cut, copy, and paste) in a specified region.

If you enable this policy setting, a script can perform a clipboard operation.

If you select Prompt in the drop-down box, users are queried, whether to perform clipboard operations.

If you disable this policy setting, a script cannot perform a clipboard operation.

If you do not configure this policy setting, a script can perform a clipboard operation.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow cut, copy or paste operations from the clipboard via script*
-   GP name: *IZ_PolicyAllowPasteViaScript_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowdraganddropcopyandpastefiles"></a>**InternetExplorer/InternetZoneAllowDragAndDropCopyAndPasteFiles**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether users can drag files or copy and paste files from a source within the zone.

If you enable this policy setting, users can drag files or copy and paste files from this zone automatically. If you select Prompt in the drop-down box, users are queried to choose whether to drag or copy files from this zone.

If you disable this policy setting, users are prevented from dragging files or copying and pasting files from this zone.

If you do not configure this policy setting, users can drag files or copy and paste files from this zone automatically.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow drag and drop or copy and paste files*
-   GP name: *IZ_PolicyDropOrPasteFiles_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowfontdownloads"></a>**InternetExplorer/InternetZoneAllowFontDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowlessprivilegedsites"></a>**InternetExplorer/InternetZoneAllowLessPrivilegedSites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Web sites from less privileged zones, such as Restricted Sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowloadingofxamlfiles"></a>**InternetExplorer/InternetZoneAllowLoadingOfXAMLFiles**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the loading of Extensible Application Markup Language (XAML) files. XAML is an XML-based declarative markup language commonly used for creating rich user interfaces and graphics that take advantage of the Windows Presentation Foundation.

If you enable this policy setting and set the drop-down box to Enable, XAML files are automatically loaded inside Internet Explorer. The user cannot change this behavior. If you set the drop-down box to Prompt, the user is prompted for loading XAML files.

If you disable this policy setting, XAML files are not loaded inside Internet Explorer. The user cannot change this behavior.

If you do not configure this policy setting, the user can decide whether to load XAML files inside Internet Explorer.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow loading of XAML files*
-   GP name: *IZ_Policy_XAML_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/InternetZoneAllowNETFrameworkReliantComponents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine, whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will execute unsigned managed components.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowonlyapproveddomainstouseactivexcontrols"></a>**InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether or not the user is prompted to allow ActiveX controls to run on websites other than the website that installed the ActiveX control.

If you enable this policy setting, the user is prompted before ActiveX controls can run from websites in this zone. The user can choose to allow the control to run from the current site or from all sites.

If you disable this policy setting, the user does not see the per-site ActiveX prompt, and ActiveX controls can run from all sites in this zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow only approved domains to use ActiveX controls without prompt*
-   GP name: *IZ_PolicyOnlyAllowApprovedDomainsToUseActiveXWithoutPrompt_Both_Internet*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowonlyapproveddomainstousetdcactivexcontrol"></a>**InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether or not the user is allowed to run the TDC ActiveX control on websites.

If you enable this policy setting, the TDC ActiveX control will not run from websites in this zone.

If you disable this policy setting, the TDC Active X control will run from all sites in this zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow only approved domains to use the TDC ActiveX control*
-   GP name: *IZ_PolicyAllowTDCControl_Both_Internet*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowscriptinitiatedwindows"></a>**InternetExplorer/InternetZoneAllowScriptInitiatedWindows**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage restrictions on script-initiated pop-up windows and windows that include the title and status bars.

If you enable this policy setting, Windows Restrictions security will not apply in this zone. The security zone runs without the added layer of security provided by this feature.

If you disable this policy setting, the possible harmful actions contained in script-initiated pop-up windows and windows that include the title and status bars cannot be run. This Internet Explorer security feature will be on in this zone as dictated by the Scripted Windows Security Restrictions feature control setting for the process.

If you do not configure this policy setting, the possible harmful actions contained in script-initiated pop-up windows and windows that include the title and status bars cannot be run. This Internet Explorer security feature will be on in this zone as dictated by the Scripted Windows Security Restrictions feature control setting for the process.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow script-initiated windows without size or position constraints*
-   GP name: *IZ_PolicyWindowsRestrictionsURLaction_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowscriptingofinternetexplorerwebbrowsercontrols"></a>**InternetExplorer/InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether a page can control embedded WebBrowser controls via script.

If you enable this policy setting, script access to the WebBrowser control is allowed.

If you disable this policy setting, script access to the WebBrowser control is not allowed.

If you do not configure this policy setting, the user can enable or disable script access to the WebBrowser control. By default, script access to the WebBrowser control is allowed only in the Local Machine and Intranet zones.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow scripting of Internet Explorer WebBrowser controls*
-   GP name: *IZ_Policy_WebBrowserControl_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowscriptlets"></a>**InternetExplorer/InternetZoneAllowScriptlets**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowsmartscreenie"></a>**InternetExplorer/InternetZoneAllowSmartScreenIE**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether Windows Defender SmartScreen scans pages in this zone for malicious content.

If you enable this policy setting, Windows Defender SmartScreen scans pages in this zone for malicious content.

If you disable this policy setting, Windows Defender SmartScreen does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether Windows Defender SmartScreen scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter, scans pages in this zone for malicious content.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowupdatestostatusbarviascript"></a>**InternetExplorer/InternetZoneAllowUpdatesToStatusBarViaScript**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether script is allowed to update the status bar within the zone.

If you enable this policy setting, script is allowed to update the status bar.

If you disable or do not configure this policy setting, script is not allowed to update the status bar.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow updates to status bar via script*
-   GP name: *IZ_Policy_ScriptStatusBar_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowuserdatapersistence"></a>**InternetExplorer/InternetZoneAllowUserDataPersistence**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored, if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneallowvbscripttorunininternetexplorer"></a>**InternetExplorer/InternetZoneAllowVBScriptToRunInInternetExplorer**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether VBScript can be run on pages from the specified zone in Internet Explorer.

If you selected Enable in the drop-down box, VBScript can run without user intervention.

If you selected Prompt in the drop-down box, users are asked to choose whether to allow VBScript to run.

If you selected Disable in the drop-down box, VBScript is prevented from running.

If you do not configure or disable this policy setting, VBScript is prevented from running.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow VBScript to run in Internet Explorer*
-   GP name: *IZ_PolicyAllowVBScript_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzonedonotrunantimalwareagainstactivexcontrols"></a>**InternetExplorer/InternetZoneDoNotRunAntimalwareAgainstActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines whether Internet Explorer runs antimalware programs against ActiveX controls, to check if they're safe to load on pages.

If you enable this policy setting, Internet Explorer won't check with your antimalware program, to see if it's safe to create an instance of the ActiveX control.

If you disable this policy setting, Internet Explorer always checks with your antimalware program, to see if it's safe to create an instance of the ActiveX control.

If you don't configure this policy setting, Internet Explorer always checks with your antimalware program, to see if it's safe to create an instance of the ActiveX control. Users can turn this behavior on or off, using Internet Explorer Security settings.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Don't run antimalware programs against ActiveX controls*
-   GP name: *IZ_PolicyAntiMalwareCheckingOfActiveXControls_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzonedownloadsignedactivexcontrols"></a>**InternetExplorer/InternetZoneDownloadSignedActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether users may download signed ActiveX controls from a page in the zone.

If you enable this policy, users can download signed controls without user intervention. If you select Prompt in the drop-down box, users are queried whether to download controls signed by publishers who aren't trusted. Code signed by trusted publishers is silently downloaded.

If you disable the policy setting, signed controls cannot be downloaded.

If you do not configure this policy setting, users are queried whether to download controls signed by publishers who aren't trusted. Code signed by trusted publishers is silently downloaded.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Download signed ActiveX controls*
-   GP name: *IZ_PolicyDownloadSignedActiveX_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzonedownloadunsignedactivexcontrols"></a>**InternetExplorer/InternetZoneDownloadUnsignedActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether users may download unsigned ActiveX controls from the zone. Such code is potentially harmful, especially when coming from an untrusted zone.

If you enable this policy setting, users can run unsigned controls without user intervention. If you select Prompt in the drop-down box, users are queried to choose whether to allow the unsigned control to run.

If you disable this policy setting, users cannot run unsigned controls.

If you do not configure this policy setting, users cannot run unsigned controls.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Download unsigned ActiveX controls*
-   GP name: *IZ_PolicyDownloadUnsignedActiveX_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneenablecrosssitescriptingfilter"></a>**InternetExplorer/InternetZoneEnableCrossSiteScriptingFilter**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls whether or not the Cross-Site Scripting (XSS) Filter will detect and prevent cross-site script injections into websites in this zone.

If you enable this policy setting, the XSS Filter is turned on for sites in this zone, and the XSS Filter attempts to block cross-site script injections.

If you disable this policy setting, the XSS Filter is turned off for sites in this zone, and Internet Explorer permits cross-site script injections.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on Cross-Site Scripting Filter*
-   GP name: *IZ_PolicyTurnOnXSSFilter_Both_Internet*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneenabledraggingofcontentfromdifferentdomainsacrosswindows"></a>**InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to set options for dragging content from one domain to a different domain, when the source and destination are in different windows.

If you enable this policy setting and click Enable, users can drag content from one domain to a different domain, when the source and destination are in different windows. Users cannot change this setting.

If you enable this policy setting and click Disable, users cannot drag content from one domain to a different domain, when both the source and destination are in different windows. Users cannot change this setting.

In Internet Explorer 10, if you disable this policy setting or do not configure it, users cannot drag content from one domain to a different domain, when the source and destination are in different windows. Users can change this setting in the Internet Options dialog.

In Internet Explorer 9 and earlier versions, if you disable this policy or do not configure it, users can drag content from one domain to a different domain, when the source and destination are in different windows. Users cannot change this setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable dragging of content from different domains across windows*
-   GP name: *IZ_PolicyDragDropAcrossDomainsAcrossWindows_Both_Internet*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneenabledraggingofcontentfromdifferentdomainswithinwindows"></a>**InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to set options for dragging content from one domain to a different domain, when the source and destination are in the same window.

If you enable this policy setting and click Enable, users can drag content from one domain to a different domain, when the source and destination are in the same window. Users cannot change this setting.

If you enable this policy setting and click Disable, users cannot drag content from one domain to a different domain, when the source and destination are in the same window. Users cannot change this setting in the Internet Options dialog.

In Internet Explorer 10, if you disable this policy setting or do not configure it, users cannot drag content from one domain to a different domain, when the source and destination are in the same window. Users can change this setting in the Internet Options dialog.

In Internet Explorer 9 and earlier versions, if you disable this policy setting or do not configure it, users can drag content from one domain to a different domain, when the source and destination are in the same window. Users cannot change this setting in the Internet Options dialog.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable dragging of content from different domains within a window*
-   GP name: *IZ_PolicyDragDropAcrossDomainsWithinWindow_Both_Internet*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneenablemimesniffing"></a>**InternetExplorer/InternetZoneEnableMIMESniffing**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage MIME sniffing for file promotion from one type to another based on a MIME sniff. A MIME sniff is the recognition by Internet Explorer of the file type based on a bit signature.

If you enable this policy setting, the MIME Sniffing Safety Feature will not apply in this zone. The security zone will run without the added layer of security provided by this feature.

If you disable this policy setting, the actions that may be harmful cannot run; this Internet Explorer security feature will be turned on in this zone, as dictated by the feature control setting for the process.

If you do not configure this policy setting, the MIME Sniffing Safety Feature will not apply in this zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable MIME Sniffing*
-   GP name: *IZ_PolicyMimeSniffingURLaction_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneenableprotectedmode"></a>**InternetExplorer/InternetZoneEnableProtectedMode**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to turn on Protected Mode. Protected Mode helps protect Internet Explorer from exploited vulnerabilities, by reducing the locations that Internet Explorer can write to in the registry and the file system.

If you enable this policy setting, Protected Mode is turned on. The user cannot turn off Protected Mode.

If you disable this policy setting, Protected Mode is turned off. The user cannot turn on Protected Mode.

If you do not configure this policy setting, the user can turn on or turn off Protected Mode.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on Protected Mode*
-   GP name: *IZ_Policy_TurnOnProtectedMode_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneincludelocalpathwhenuploadingfilestoserver"></a>**InternetExplorer/InternetZoneIncludeLocalPathWhenUploadingFilesToServer**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls whether or not local path information is sent, when the user is uploading a file via an HTML form. If the local path information is sent, some information may be unintentionally revealed to the server. For instance, files sent from the user's desktop may contain the user name as a part of the path.

If you enable this policy setting, path information is sent when the user is uploading a file via an HTML form.

If you disable this policy setting, path information is removed when the user is uploading a file via an HTML form.

If you do not configure this policy setting, the user can choose whether path information is sent when he or she is uploading a file via an HTML form. By default, path information is sent.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Include local path when user is uploading files to a server*
-   GP name: *IZ_Policy_LocalPathForUpload_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/InternetZoneInitializeAndScriptActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneinitializeandscriptactivexcontrolsnotmarkedsafe"></a>**InternetExplorer/InternetZoneInitializeAndScriptActiveXControlsNotMarkedSafe**  

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Description-->

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzonejavapermissions"></a>**InternetExplorer/InternetZoneJavaPermissions**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage permissions for Java applets.

If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program cannot make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer), and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

If you disable this policy setting, Java applets cannot run.

If you do not configure this policy setting, the permission is set to High Safety.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Java permissions*
-   GP name: *IZ_PolicyJavaPermissions_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzonelaunchingapplicationsandfilesiniframe"></a>**InternetExplorer/InternetZoneLaunchingApplicationsAndFilesInIFRAME**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether applications may be run and files may be downloaded from an IFRAME reference in the HTML of the pages in this zone.

If you enable this policy setting, users can run applications and download files from IFRAMEs on the pages in this zone, without user intervention. If you select Prompt in the drop-down box, users are queried to choose whether to run applications and download files from IFRAMEs on the pages in this zone.

If you disable this policy setting, users are prevented from running applications and downloading files from IFRAMEs on the pages in this zone.

If you do not configure this policy setting, users are queried to choose whether to run applications and download files from IFRAMEs on the pages in this zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Launching applications and files in an IFRAME*
-   GP name: *IZ_PolicyLaunchAppsAndFilesInIFRAME_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzonelogonoptions"></a>**InternetExplorer/InternetZoneLogonOptions**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage settings for logon options.

If you enable this policy setting, you can choose from the following logon options.

Anonymous logon to disable HTTP authentication, and use the guest account only for the Common Internet File System (CIFS) protocol.

Prompt for user name and password to query users for user IDs and passwords. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon, only in Intranet zone to query users for user IDs and passwords in other zones. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon with current user name and password to attempt logon using Windows NT Challenge Response (also known as NTLM authentication). If Windows NT Challenge Response is supported by the server, the logon uses the user's network user name and password for logon. If Windows NT Challenge Response is not supported by the server, the user is queried to provide the user name and password.

If you disable this policy setting, logon is set to Automatic logon only in Intranet zone.

If you do not configure this policy setting, logon is set to Automatic logon only in Intranet zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Logon options*
-   GP name: *IZ_PolicyLogon_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzonenavigatewindowsandframes"></a>**InternetExplorer/InternetZoneNavigateWindowsAndFrames**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the opening of windows and frames, and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from other domains, and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from other domains, and access applications from other domains.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzonerunnetframeworkreliantcomponentssignedwithauthenticode"></a>**InternetExplorer/InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether .NET Framework components that are signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute signed managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine, whether to execute signed managed components.

If you disable this policy setting, Internet Explorer will not execute signed managed components.

If you do not configure this policy setting, Internet Explorer will execute signed managed components.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run .NET Framework-reliant components signed with Authenticode*
-   GP name: *IZ_PolicySignedFrameworkComponentsURLaction_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneshowsecuritywarningforpotentiallyunsafefiles"></a>**InternetExplorer/InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether or not the "Open File - Security Warning" message appears when the user tries to open executable files or other potentially unsafe files (from an intranet file share by using File Explorer, for example).

If you enable this policy setting and set the drop-down box to Enable, these files open without a security warning. If you set the drop-down box to Prompt, a security warning appears before the files open.

If you disable this policy setting, these files do not open.

If you do not configure this policy setting, the user can configure how the computer handles these files. By default, these files are blocked in the Restricted zone, enabled in the Intranet and Local Computer zones, and set to prompt in the Internet and Trusted zones.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Show security warning for potentially unsafe files*
-   GP name: *IZ_Policy_UnsafeFiles_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-internetzoneusepopupblocker"></a>**InternetExplorer/InternetZoneUsePopupBlocker**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether unwanted pop-up windows appear. Pop-up windows that are opened, when the end user clicks a link are not blocked.

If you enable this policy setting, most unwanted pop-up windows are prevented from appearing.

If you disable this policy setting, pop-up windows are not prevented from appearing.

If you do not configure this policy setting, most unwanted pop-up windows are prevented from appearing.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use Pop-up Blocker*
-   GP name: *IZ_PolicyBlockPopupWindows_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-intranetzoneallowaccesstodatasources"></a>**InternetExplorer/IntranetZoneAllowAccessToDataSources**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users are queried to choose, whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-intranetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/IntranetZoneAllowAutomaticPromptingForActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting manages, whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-intranetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/IntranetZoneAllowAutomaticPromptingForFileDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, users will receive a file download dialog for automatic download attempts.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-intranetzoneallowfontdownloads"></a>**InternetExplorer/IntranetZoneAllowFontDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-intranetzoneallowlessprivilegedsites"></a>**InternetExplorer/IntranetZoneAllowLessPrivilegedSites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Web sites from less privileged zones, such as Restricted Sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-intranetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/IntranetZoneAllowNETFrameworkReliantComponents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag, and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine, whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will execute unsigned managed components.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-intranetzoneallowscriptlets"></a>**InternetExplorer/IntranetZoneAllowScriptlets**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-intranetzoneallowsmartscreenie"></a>**InternetExplorer/IntranetZoneAllowSmartScreenIE**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether Windows Defender SmartScreen scans pages in this zone for malicious content.

If you enable this policy setting, Windows Defender SmartScreen scans pages in this zone for malicious content.

If you disable this policy setting, Windows Defender SmartScreen does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether Windows Defender SmartScreen scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter, scans pages in this zone for malicious content.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-intranetzoneallowuserdatapersistence"></a>**InternetExplorer/IntranetZoneAllowUserDataPersistence**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored, if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-intranetzonedonotrunantimalwareagainstactivexcontrols"></a>**InternetExplorer/IntranetZoneDoNotRunAntimalwareAgainstActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether Internet Explorer runs antimalware programs against ActiveX controls, to check if they're safe to load on pages.

If you enable this policy setting, Internet Explorer won't check with your antimalware program to see if it's safe to create an instance of the ActiveX control.

If you disable this policy setting, Internet Explorer always checks with your antimalware program, to see if it's safe to create an instance of the ActiveX control.

If you don't configure this policy setting, Internet Explorer won't check with your antimalware program, to see if it's safe to create an instance of the ActiveX control. Users can turn this behavior on or off, using Internet Explorer Security settings.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Don't run antimalware programs against ActiveX controls*
-   GP name: *IZ_PolicyAntiMalwareCheckingOfActiveXControls_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-intranetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/IntranetZoneInitializeAndScriptActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-intranetzonejavapermissions"></a>**InternetExplorer/IntranetZoneJavaPermissions**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage permissions for Java applets.

If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program cannot make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer), and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

If you disable this policy setting, Java applets cannot run.

If you do not configure this policy setting, the permission is set to Medium Safety.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Java permissions*
-   GP name: *IZ_PolicyJavaPermissions_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-intranetzonenavigatewindowsandframes"></a>**InternetExplorer/IntranetZoneNavigateWindowsAndFrames**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the opening of windows and frames, and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from other domains, and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from other domains, and access applications from other domains.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-keepintranetsitesininternetexplorer"></a>**InternetExplorer/KeepIntranetSitesInInternetExplorer**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents intranet sites from being opened in any browser except Internet Explorer.

> [!NOTE]
> If the [InternetExplorer/SendSitesNotInEnterpriseSiteListToEdge](#internetexplorer-policies) policy is not enabled, then this policy has no effect.

If you enable this policy, all intranet sites are opened in Internet Explorer 11. The only exceptions are sites listed in your Enterprise Mode Site List.
If you disable or do not configure this policy, all intranet sites are automatically opened in Microsoft Edge.

We strongly recommend keeping this policy in sync with the [Browser/SendIntranetTraffictoInternetExplorer](#internetexplorer-policies) policy. Additionally, it is best to enable this policy only if your intranet sites have known compatibility problems with Microsoft Edge.

Related policies:
- [Browser/SendIntranetTraffictoInternetExplorer](#internetexplorer-policies)
- [InternetExplorer/SendSitesNotInEnterpriseSiteListToEdge](#internetexplorer-policies)

For more information on how to use this policy together with other related policies to create the optimal configuration for your organization, see [https://go.microsoft.com/fwlink/?linkid=2094210.](/DeployEdge/edge-ie-mode-policies#configure-internet-explorer-integration)

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Keep all Intranet Sites in Internet Explorer*
-   GP name: *KeepIntranetSitesInInternetExplorer*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->
```xml
 <policy name="KeepIntranetSitesInInternetExplorer" class="Both" displayName="$(string.KeepIntranetSitesInInternetExplorer)" explainText="$(string.IE_ExplainKeepIntranetSitesInInternetExplorer)" key="Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode" valueName="KeepIntranetSitesInInternetExplorer">

      <parentCategory ref="InternetExplorer" />

      <supportedOn ref="SUPPORTED_IE11" />

      <enabledValue>

        <decimal value="1" />

      </enabledValue>

      <disabledValue>

        <decimal value="0" />

      </disabledValue>

    </policy>
```
<!--Policy-->
<a href="" id="internetexplorer-localmachinezoneallowaccesstodatasources"></a>**InternetExplorer/LocalMachineZoneAllowAccessToDataSources**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-localmachinezoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting manages, whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-localmachinezoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForFileDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, users will receive a file download dialog for automatic download attempts.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-localmachinezoneallowfontdownloads"></a>**InternetExplorer/LocalMachineZoneAllowFontDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-localmachinezoneallowlessprivilegedsites"></a>**InternetExplorer/LocalMachineZoneAllowLessPrivilegedSites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be in this zone, as set by Protection from Zone Elevation feature control.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-localmachinezoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LocalMachineZoneAllowNETFrameworkReliantComponents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine, whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-localmachinezoneallowscriptlets"></a>**InternetExplorer/LocalMachineZoneAllowScriptlets**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-localmachinezoneallowsmartscreenie"></a>**InternetExplorer/LocalMachineZoneAllowSmartScreenIE**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether Windows Defender SmartScreen scans pages in this zone for malicious content.

If you enable this policy setting, Windows Defender SmartScreen scans pages in this zone for malicious content.

If you disable this policy setting, Windows Defender SmartScreen does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether Windows Defender SmartScreen scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter, scans pages in this zone for malicious content.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-localmachinezoneallowuserdatapersistence"></a>**InternetExplorer/LocalMachineZoneAllowUserDataPersistence**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored, if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-localmachinezonedonotrunantimalwareagainstactivexcontrols"></a>**InternetExplorer/LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether Internet Explorer runs antimalware programs against ActiveX controls, to check if they're safe to load on pages.

If you enable this policy setting, Internet Explorer won't check with your antimalware program, to see if it's safe to create an instance of the ActiveX control.

If you disable this policy setting, Internet Explorer always checks with your antimalware program, to see if it's safe to create an instance of the ActiveX control.

If you don't configure this policy setting, Internet Explorer won't check with your antimalware program, to see if it's safe to create an instance of the ActiveX control. Users can turn this behavior on or off, using Internet Explorer Security settings.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Don't run antimalware programs against ActiveX controls*
-   GP name: *IZ_PolicyAntiMalwareCheckingOfActiveXControls_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-localmachinezoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LocalMachineZoneInitializeAndScriptActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, users are queried whether to allow the control to be loaded with parameters or scripted.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-localmachinezonejavapermissions"></a>**InternetExplorer/LocalMachineZoneJavaPermissions**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage permissions for Java applets.

If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program cannot make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer), and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

If you disable this policy setting, Java applets cannot run.

If you do not configure this policy setting, the permission is set to Medium Safety.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Java permissions*
-   GP name: *IZ_PolicyJavaPermissions_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-localmachinezonenavigatewindowsandframes"></a>**InternetExplorer/LocalMachineZoneNavigateWindowsAndFrames**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the opening of windows and frames, and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from other domains, and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from other domains, and access applications from other domains.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownInternetZoneAllowAccessToDataSources**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting manages, whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowfontdownloads"></a>**InternetExplorer/LockedDownInternetZoneAllowFontDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownInternetZoneAllowLessPrivilegedSites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be in this zone, as set by Protection from Zone Elevation feature control.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownInternetZoneAllowNETFrameworkReliantComponents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage whether, .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine, whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowscriptlets"></a>**InternetExplorer/LockedDownInternetZoneAllowScriptlets**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowsmartscreenie"></a>**InternetExplorer/LockedDownInternetZoneAllowSmartScreenIE**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether Windows Defender SmartScreen scans pages in this zone for malicious content.

If you enable this policy setting, Windows Defender SmartScreen scans pages in this zone for malicious content.

If you disable this policy setting, Windows Defender SmartScreen does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether Windows Defender SmartScreen scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter, scans pages in this zone for malicious content.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownInternetZoneAllowUserDataPersistence**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored, if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowninternetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownInternetZoneInitializeAndScriptActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowninternetzonejavapermissions"></a>**InternetExplorer/LockedDownInternetZoneJavaPermissions**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage permissions for Java applets.

If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program cannot make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer), and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

If you disable this policy setting, Java applets cannot run.

If you do not configure this policy setting, Java applets are disabled.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Java permissions*
-   GP name: *IZ_PolicyJavaPermissions_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowninternetzonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownInternetZoneNavigateWindowsAndFrames**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the opening of windows and frames, and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from other domains, and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from other domains, and access applications from other domains.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownintranetjavapermissions"></a>**InternetExplorer/LockedDownIntranetJavaPermissions**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage permissions for Java applets.

If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program cannot make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer), and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

If you disable this policy setting, Java applets cannot run.

If you do not configure this policy setting, Java applets are disabled.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Java permissions*
-   GP name: *IZ_PolicyJavaPermissions_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownIntranetZoneAllowAccessToDataSources**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users are queried to choose, whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting manages, whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowfontdownloads"></a>**InternetExplorer/LockedDownIntranetZoneAllowFontDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownIntranetZoneAllowLessPrivilegedSites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownIntranetZoneAllowNETFrameworkReliantComponents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine, whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowscriptlets"></a>**InternetExplorer/LockedDownIntranetZoneAllowScriptlets**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowsmartscreenie"></a>**InternetExplorer/LockedDownIntranetZoneAllowSmartScreenIE**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether Windows Defender SmartScreen scans pages in this zone for malicious content.

If you enable this policy setting, Windows Defender SmartScreen scans pages in this zone for malicious content.

If you disable this policy setting, Windows Defender SmartScreen does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether Windows Defender SmartScreen scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter, scans pages in this zone for malicious content.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownIntranetZoneAllowUserDataPersistence**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored, if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownintranetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownIntranetZoneInitializeAndScriptActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownintranetzonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownIntranetZoneNavigateWindowsAndFrames**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the opening of windows and frames, and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from other domains, and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from other domains, and access applications from other domains.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowAccessToDataSources**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting manages, whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowfontdownloads"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowFontDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowLessPrivilegedSites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine, whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowscriptlets"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowScriptlets**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowsmartscreenie"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowSmartScreenIE**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether Windows Defender SmartScreen scans pages in this zone for malicious content.

If you enable this policy setting, Windows Defender SmartScreen scans pages in this zone for malicious content.

If you disable this policy setting, Windows Defender SmartScreen does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether Windows Defender SmartScreen scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter, scans pages in this zone for malicious content.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowUserDataPersistence**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored, if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownLocalMachineZoneInitializeAndScriptActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezonejavapermissions"></a>**InternetExplorer/LockedDownLocalMachineZoneJavaPermissions**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage permissions for Java applets.

If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program cannot make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer), and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

If you disable this policy setting, Java applets cannot run.

If you do not configure this policy setting, Java applets are disabled.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Java permissions*
-   GP name: *IZ_PolicyJavaPermissions_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownLocalMachineZoneNavigateWindowsAndFrames**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the opening of windows and frames, and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from other domains, and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from other domains, and access applications from other domains.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowAccessToDataSources**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting manages, whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowfontdownloads"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowFontDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, users are queried whether to allow HTML fonts to download.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowLessPrivilegedSites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine, whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowscriptlets"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowScriptlets**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowsmartscreenie"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowSmartScreenIE**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether Windows Defender SmartScreen scans pages in this zone for malicious content.

If you enable this policy setting, Windows Defender SmartScreen scans pages in this zone for malicious content.

If you disable this policy setting, Windows Defender SmartScreen does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether Windows Defender SmartScreen scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter, scans pages in this zone for malicious content.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowUserDataPersistence**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored, if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszonejavapermissions"></a>**InternetExplorer/LockedDownRestrictedSitesZoneJavaPermissions**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage permissions for Java applets.

If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program cannot make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer), and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

If you disable this policy setting, Java applets cannot run.

If you do not configure this policy setting, Java applets are disabled.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Java permissions*
-   GP name: *IZ_PolicyJavaPermissions_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownRestrictedSitesZoneNavigateWindowsAndFrames**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the opening of windows and frames, and access of applications across different domains.

If you enable this policy setting, users can open additional windows and frames from other domains, and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow additional windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open other windows and frames from other domains or access applications from different domains.

If you do not configure this policy setting, users cannot open other windows and frames from different domains or access applications from different domains.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowAccessToDataSources**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting manages, whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowfontdownloads"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowFontDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowLessPrivilegedSites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine, whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowscriptlets"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowScriptlets**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowsmartscreenie"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowSmartScreenIE**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls whether, Windows Defender SmartScreen scans pages in this zone for malicious content.

If you enable this policy setting, Windows Defender SmartScreen scans pages in this zone for malicious content.

If you disable this policy setting, Windows Defender SmartScreen does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether Windows Defender SmartScreen scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter, scans pages in this zone for malicious content.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowUserDataPersistence**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored, if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszonejavapermissions"></a>**InternetExplorer/LockedDownTrustedSitesZoneJavaPermissions**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage permissions for Java applets.

If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program cannot make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer), and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

If you disable this policy setting, Java applets cannot run.

If you do not configure this policy setting, Java applets are disabled.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Java permissions*
-   GP name: *IZ_PolicyJavaPermissions_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownTrustedSitesZoneNavigateWindowsAndFrames**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the opening of windows and frames, and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from other domains, and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from other domains, and access applications from other domains.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-mkprotocolsecurityrestrictioninternetexplorerprocesses"></a>**InternetExplorer/MKProtocolSecurityRestrictionInternetExplorerProcesses**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
The MK Protocol Security Restriction policy setting reduces attack surface area by preventing the MK protocol. Resources hosted on the MK protocol will fail.

If you enable this policy setting, the MK Protocol is prevented for File Explorer and Internet Explorer, and resources hosted on the MK protocol will fail.

If you disable this policy setting, applications can use the MK protocol API. Resources hosted on the MK protocol will work for the File Explorer and Internet Explorer processes.

If you do not configure this policy setting, the MK Protocol is prevented for File Explorer and Internet Explorer, and resources hosted on the MK protocol will fail.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Internet Explorer Processes*
-   GP name: *IESF_PolicyExplorerProcesses_3*
-   GP path: *Windows Components/Internet Explorer/Security Features/MK Protocol Security Restriction*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-mimesniffingsafetyfeatureinternetexplorerprocesses"></a>**InternetExplorer/MimeSniffingSafetyFeatureInternetExplorerProcesses**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether Internet Explorer MIME sniffing will prevent promotion of a file of one type to a more dangerous file type.

If you enable this policy setting, MIME sniffing will never promote a file of one type to a more dangerous file type.

If you disable this policy setting, Internet Explorer processes will allow a MIME sniff promoting a file of one type to a more dangerous file type.

If you do not configure this policy setting, MIME sniffing will never promote a file of one type to a more dangerous file type.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Internet Explorer Processes*
-   GP name: *IESF_PolicyExplorerProcesses_6*
-   GP path: *Windows Components/Internet Explorer/Security Features/Mime Sniffing Safety Feature*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-newtabdefaultpage"></a>**InternetExplorer/NewTabDefaultPage**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to specify, what is displayed when the user opens a new tab.

If you enable this policy setting, you can choose which page to display when the user opens a new tab: blank page (about:blank), the first home page, the new tab page or the new tab page with my news feed.

If you disable or do not configure this policy setting, users can select their preference for this behavior.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify default behavior for a new tab*
-   GP name: *NewTabAction*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

Supported values:  
-   0 - NewTab_AboutBlank (about:blank)
-   1 - NewTab_Homepage (Home page)
-   2 - NewTab_AboutTabs (New tab page)
-   3 - NewTab_AboutNewsFeed (New tab page with my news feed) (Default)
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-notificationbarinternetexplorerprocesses"></a>**InternetExplorer/NotificationBarInternetExplorerProcesses**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether the Notification bar is displayed for Internet Explorer processes when file or code installs are restricted. By default, the Notification bar is displayed for Internet Explorer processes.

If you enable this policy setting, the Notification bar will be displayed for Internet Explorer Processes.

If you disable this policy setting, the Notification bar will not be displayed for Internet Explorer processes.

If you do not configure this policy setting, the Notification bar will be displayed for Internet Explorer Processes.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Internet Explorer Processes*
-   GP name: *IESF_PolicyExplorerProcesses_10*
-   GP path: *Windows Components/Internet Explorer/Security Features/Notification bar*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-preventmanagingsmartscreenfilter"></a>**InternetExplorer/PreventManagingSmartScreenFilter**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents the user from managing Windows Defender SmartScreen, which warns the user if the website being visited is known for fraudulent attempts to gather personal information through "phishing," or is known to host malware.

If you enable this policy setting, the user is not prompted to turn on Windows Defender SmartScreen. All website addresses that are not on the filter's allow list are sent automatically to Microsoft without prompting the user.

If you disable or do not configure this policy setting, the user is prompted to decide whether to turn on Windows Defender SmartScreen during the first-run experience.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent managing SmartScreen Filter*
-   GP name: *Disable_Managing_Safety_Filter_IE9*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-preventperuserinstallationofactivexcontrols"></a>**InternetExplorer/PreventPerUserInstallationOfActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to prevent the installation of ActiveX controls on a per-user basis.

If you enable this policy setting, ActiveX controls cannot be installed on a per-user basis.

If you disable or do not configure this policy setting, ActiveX controls can be installed on a per-user basis.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent per-user installation of ActiveX controls*
-   GP name: *DisablePerUserActiveXInstall*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-protectionfromzoneelevationinternetexplorerprocesses"></a>**InternetExplorer/ProtectionFromZoneElevationInternetExplorerProcesses**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Internet Explorer places restrictions on each Web page it opens. The restrictions are dependent upon the location of the Web page (Internet, Intranet, Local Machine zone, etc.). Web pages on the local computer have the fewest security restrictions and reside in the Local Machine zone, making the Local Machine security zone a prime target for malicious users. Zone Elevation also disables JavaScript navigation, if there is no security context.

If you enable this policy setting, any zone can be protected from zone elevation by Internet Explorer processes.

If you disable this policy setting, no zone receives such protection for Internet Explorer processes.

If you do not configure this policy setting, any zone can be protected from zone elevation by Internet Explorer processes.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Internet Explorer Processes*
-   GP name: *IESF_PolicyExplorerProcesses_9*
-   GP path: *Windows Components/Internet Explorer/Security Features/Protection From Zone Elevation*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-removerunthistimebuttonforoutdatedactivexcontrols"></a>**InternetExplorer/RemoveRunThisTimeButtonForOutdatedActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to stop users from seeing the "Run this time" button and from running specific outdated ActiveX controls in Internet Explorer.

If you enable this policy setting, users won't see the "Run this time" button on the warning message that appears, when Internet Explorer blocks an outdated ActiveX control.

If you disable or don't configure this policy setting, users will see the "Run this time" button on the warning message that appears, when Internet Explorer blocks an outdated ActiveX control. Clicking this button lets the user run the outdated ActiveX control once.

For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Remove "Run this time" button for outdated ActiveX controls in Internet Explorer*
-   GP name: *VerMgmtDisableRunThisTime*
-   GP path: *Windows Components/Internet Explorer/Security Features/Add-on Management*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictactivexinstallinternetexplorerprocesses"></a>**InternetExplorer/RestrictActiveXInstallInternetExplorerProcesses**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting enables blocking of ActiveX control installation prompts for Internet Explorer processes.

If you enable this policy setting, prompting for ActiveX control installations will be blocked for Internet Explorer processes.

If you disable this policy setting, prompting for ActiveX control installations will not be blocked for Internet Explorer processes.

If you do not configure this policy setting, the user's preference will be used to determine whether to block ActiveX control installations for Internet Explorer processes.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Internet Explorer Processes*
-   GP name: *IESF_PolicyExplorerProcesses_11*
-   GP path: *Windows Components/Internet Explorer/Security Features/Restrict ActiveX Install*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictfiledownloadinternetexplorerprocesses"></a>**InternetExplorer/RestrictFileDownloadInternetExplorerProcesses**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting enables blocking of file download prompts that are not user initiated.

If you enable this policy setting, file download prompts that are not user initiated will be blocked for Internet Explorer processes.

If you disable this policy setting, prompting will occur for file downloads that are not user initiated for Internet Explorer processes.

If you do not configure this policy setting, the user's preference determines whether to prompt for file downloads that are not user initiated for Internet Explorer processes.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Internet Explorer Processes*
-   GP name: *IESF_PolicyExplorerProcesses_12*
-   GP path: *Windows Components/Internet Explorer/Security Features/Restrict File Download*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/RestrictedSitesZoneAllowAccessToDataSources**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowactivescripting"></a>**InternetExplorer/RestrictedSitesZoneAllowActiveScripting**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether script code on pages in the zone is run.

If you enable this policy setting, script code on pages in the zone can run automatically. If you select Prompt in the drop-down box, users are queried to choose whether to allow script code on pages in the zone to run.

If you disable this policy setting, script code on pages in the zone is prevented from running.

If you do not configure this policy setting, script code on pages in the zone is prevented from running.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow active scripting*
-   GP name: *IZ_PolicyActiveScripting_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting manages, whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowbinaryandscriptbehaviors"></a>**InternetExplorer/RestrictedSitesZoneAllowBinaryAndScriptBehaviors**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage dynamic binary and script behaviors: components that encapsulate specific functionality for HTML elements to which they were attached.

If you enable this policy setting, binary and script behaviors are available. If you select Administrator approved in the drop-down box, only behaviors listed in the Admin-approved Behaviors under Binary Behaviors Security Restriction policy are available.

If you disable this policy setting, binary and script behaviors are not available unless applications have implemented a custom security manager.

If you do not configure this policy setting, binary and script behaviors are not available unless applications have implemented a custom security manager.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow binary and script behaviors*
-   GP name: *IZ_PolicyBinaryBehaviors_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowcopypasteviascript"></a>**InternetExplorer/RestrictedSitesZoneAllowCopyPasteViaScript**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether scripts can perform a clipboard operation (for example, cut, copy, and paste) in a specified region.

If you enable this policy setting, a script can perform a clipboard operation.

If you select Prompt in the drop-down box, users are queried as to whether to perform clipboard operations.

If you disable this policy setting, a script cannot perform a clipboard operation.

If you do not configure this policy setting, a script cannot perform a clipboard operation.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow cut, copy or paste operations from the clipboard via script*
-   GP name: *IZ_PolicyAllowPasteViaScript_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowdraganddropcopyandpastefiles"></a>**InternetExplorer/RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether users can drag files or copy and paste files from a source within the zone.

If you enable this policy setting, users can drag files or copy and paste files from this zone automatically. If you select Prompt in the drop-down box, users are queried to choose whether to drag or copy files from this zone.

If you disable this policy setting, users are prevented from dragging files or copying and pasting files from this zone.

If you do not configure this policy setting, users are queried to choose whether to drag or copy files from this zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow drag and drop or copy and paste files*
-   GP name: *IZ_PolicyDropOrPasteFiles_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowfiledownloads"></a>**InternetExplorer/RestrictedSitesZoneAllowFileDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether file downloads are permitted from the zone. This option is determined by the zone of the page with the link causing the download, not the zone from which the file is delivered.

If you enable this policy setting, files can be downloaded from the zone.

If you disable this policy setting, files are prevented from being downloaded from the zone.

If you do not configure this policy setting, files are prevented from being downloaded from the zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow file downloads*
-   GP name: *IZ_PolicyFileDownload_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowfontdownloads"></a>**InternetExplorer/RestrictedSitesZoneAllowFontDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, users are queried whether to allow HTML fonts to download.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/RestrictedSitesZoneAllowLessPrivilegedSites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowloadingofxamlfiles"></a>**InternetExplorer/RestrictedSitesZoneAllowLoadingOfXAMLFiles**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the loading of Extensible Application Markup Language (XAML) files. XAML is an XML-based declarative markup language commonly used for creating rich user interfaces and graphics that take advantage of the Windows Presentation Foundation.

If you enable this policy setting and set the drop-down box to Enable, XAML files are automatically loaded inside Internet Explorer. The user cannot change this behavior. If you set the drop-down box to Prompt, the user is prompted for loading XAML files.

If you disable this policy setting, XAML files are not loaded inside Internet Explorer. The user cannot change this behavior.

If you do not configure this policy setting, the user can decide whether to load XAML files inside Internet Explorer.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow loading of XAML files*
-   GP name: *IZ_Policy_XAML_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowmetarefresh"></a>**InternetExplorer/RestrictedSitesZoneAllowMETAREFRESH**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether a user's browser can be redirected to another Web page, if the author of the Web page uses the Meta Refresh setting (tag) to redirect browsers to another Web page.

If you enable this policy setting, a user's browser that loads a page containing an active Meta Refresh setting can be redirected to another Web page.

If you disable this policy setting, a user's browser that loads a page containing an active Meta Refresh setting cannot be redirected to another Web page.

If you do not configure this policy setting, a user's browser that loads a page containing an active Meta Refresh setting cannot be redirected to another Web page.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow META REFRESH*
-   GP name: *IZ_PolicyAllowMETAREFRESH_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/RestrictedSitesZoneAllowNETFrameworkReliantComponents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine, whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowonlyapproveddomainstouseactivexcontrols"></a>**InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls whether or not the user is prompted to allow ActiveX controls to run on websites other than the website that installed the ActiveX control.

If you enable this policy setting, the user is prompted before ActiveX controls can run from websites in this zone. The user can choose to allow the control, to run from the current site or from all sites.

If you disable this policy setting, the user does not see the per-site ActiveX prompt, and ActiveX controls can run from all sites in this zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow only approved domains to use ActiveX controls without prompt*
-   GP name: *IZ_PolicyOnlyAllowApprovedDomainsToUseActiveXWithoutPrompt_Both_Restricted*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowonlyapproveddomainstousetdcactivexcontrol"></a>**InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether or not the user is allowed to run the TDC ActiveX control on websites.

If you enable this policy setting, the TDC ActiveX control will not run from websites in this zone.

If you disable this policy setting, the TDC Active X control will run from all sites in this zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow only approved domains to use the TDC ActiveX control*
-   GP name: *IZ_PolicyAllowTDCControl_Both_Restricted*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowscriptinitiatedwindows"></a>**InternetExplorer/RestrictedSitesZoneAllowScriptInitiatedWindows**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage restrictions on script-initiated pop-up windows, and windows that include the title and status bars.

If you enable this policy setting, Windows Restrictions security will not apply in this zone. The security zone runs without the added layer of security provided by this feature.

If you disable this policy setting, the possible harmful actions contained in script-initiated pop-up windows, and windows that include the title and status bars cannot be run. This Internet Explorer security feature will be on in this zone, as dictated by the Scripted Windows Security Restrictions feature control setting for the process.

If you do not configure this policy setting, the possible harmful actions contained in script-initiated pop-up windows, and windows that include the title and status bars cannot be run. This Internet Explorer security feature will be on in this zone<> as dictated by the Scripted Windows Security Restrictions feature control setting for the process.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow script-initiated windows without size or position constraints*
-   GP name: *IZ_PolicyWindowsRestrictionsURLaction_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowscriptingofinternetexplorerwebbrowsercontrols"></a>**InternetExplorer/RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether a page can control embedded WebBrowser controls via script.

If you enable this policy setting, script access to the WebBrowser control is allowed.

If you disable this policy setting, script access to the WebBrowser control is not allowed.

If you do not configure this policy setting, the user can enable or disable script access to the WebBrowser control. By default, script access to the WebBrowser control is allowed only in the Local Machine and Intranet zones.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow scripting of Internet Explorer WebBrowser controls*
-   GP name: *IZ_Policy_WebBrowserControl_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowscriptlets"></a>**InternetExplorer/RestrictedSitesZoneAllowScriptlets**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowsmartscreenie"></a>**InternetExplorer/RestrictedSitesZoneAllowSmartScreenIE**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether Windows Defender SmartScreen scans pages in this zone for malicious content.

If you enable this policy setting, Windows Defender SmartScreen scans pages in this zone for malicious content.

If you disable this policy setting, Windows Defender SmartScreen does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether Windows Defender SmartScreen scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter, scans pages in this zone for malicious content.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowupdatestostatusbarviascript"></a>**InternetExplorer/RestrictedSitesZoneAllowUpdatesToStatusBarViaScript**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether script is allowed to update the status bar within the zone.

If you enable this policy setting, script is allowed to update the status bar.

If you disable or do not configure this policy setting, script is not allowed to update the status bar.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow updates to status bar via script*
-   GP name: *IZ_Policy_ScriptStatusBar_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/RestrictedSitesZoneAllowUserDataPersistence**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored, if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowvbscripttorunininternetexplorer"></a>**InternetExplorer/RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether VBScript can be run on pages from the specified zone in Internet Explorer.

If you selected Enable in the drop-down box, VBScript can run without user intervention.

If you selected Prompt in the drop-down box, users are asked to choose whether to allow VBScript to run.

If you selected Disable in the drop-down box, VBScript is prevented from running.

If you do not configure or disable this policy setting, VBScript is prevented from running.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow VBScript to run in Internet Explorer*
-   GP name: *IZ_PolicyAllowVBScript_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszonedonotrunantimalwareagainstactivexcontrols"></a>**InternetExplorer/RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether Internet Explorer runs antimalware programs against ActiveX controls, to check if they're safe to load on pages.

If you enable this policy setting, Internet Explorer won't check with your antimalware program, to see if it's safe to create an instance of the ActiveX control.

If you disable this policy setting, Internet Explorer always checks with your antimalware program, to see if it's safe to create an instance of the ActiveX control.

If you don't configure this policy setting, Internet Explorer always checks with your antimalware program, to see if it's safe to create an instance of the ActiveX control. Users can turn this behavior on or off, using Internet Explorer Security settings.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Don't run antimalware programs against ActiveX controls*
-   GP name: *IZ_PolicyAntiMalwareCheckingOfActiveXControls_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszonedownloadsignedactivexcontrols"></a>**InternetExplorer/RestrictedSitesZoneDownloadSignedActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether users may download signed ActiveX controls from a page in the zone.

If you enable this policy, users can download signed controls without user intervention. If you select Prompt in the drop-down box, users are queried whether to download controls signed by publishers who aren't trusted. Code signed by trusted publishers is silently downloaded.

If you disable the policy setting, signed controls cannot be downloaded.

If you do not configure this policy setting, signed controls cannot be downloaded.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Download signed ActiveX controls*
-   GP name: *IZ_PolicyDownloadSignedActiveX_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszonedownloadunsignedactivexcontrols"></a>**InternetExplorer/RestrictedSitesZoneDownloadUnsignedActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether users may download unsigned ActiveX controls from the zone. Such code is potentially harmful, especially when coming from an untrusted zone.

If you enable this policy setting, users can run unsigned controls without user intervention. If you select Prompt in the drop-down box, users are queried to choose whether to allow the unsigned control to run.

If you disable this policy setting, users cannot run unsigned controls.

If you do not configure this policy setting, users cannot run unsigned controls.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Download unsigned ActiveX controls*
-   GP name: *IZ_PolicyDownloadUnsignedActiveX_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneenablecrosssitescriptingfilter"></a>**InternetExplorer/RestrictedSitesZoneEnableCrossSiteScriptingFilter**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls, whether or not the Cross-Site Scripting (XSS) Filter will detect and prevent cross-site script injections into websites in this zone.

If you enable this policy setting, the XSS Filter is turned on for sites in this zone, and the XSS Filter attempts to block cross-site script injections.

If you disable this policy setting, the XSS Filter is turned off for sites in this zone, and Internet Explorer permits cross-site script injections.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on Cross-Site Scripting Filter*
-   GP name: *IZ_PolicyTurnOnXSSFilter_Both_Restricted*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneenabledraggingofcontentfromdifferentdomainsacrosswindows"></a>**InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to set options for dragging content from one domain to a different domain, when the source and destination are in different windows.

If you enable this policy setting and click Enable, users can drag content from one domain to a different domain, when the source and destination are in different windows. Users cannot change this setting.

If you enable this policy setting and click Disable, users cannot drag content from one domain to a different domain, when both the source and destination are in different windows. Users cannot change this setting.

In Internet Explorer 10, if you disable this policy setting or do not configure it, users cannot drag content from one domain to a different domain, when the source and destination are in different windows. Users can change this setting in the Internet Options dialog.

In Internet Explorer 9 and earlier versions, if you disable this policy or do not configure it, users can drag content from one domain to a different domain, when the source and destination are in different windows. Users cannot change this setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable dragging of content from different domains across windows*
-   GP name: *IZ_PolicyDragDropAcrossDomainsAcrossWindows_Both_Restricted*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneenabledraggingofcontentfromdifferentdomainswithinwindows"></a>**InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to set options for dragging content from one domain to a different domain, when the source and destination are in the same window.

If you enable this policy setting and click Enable, users can drag content from one domain to a different domain, when the source and destination are in the same window. Users cannot change this setting.

If you enable this policy setting and click Disable, users cannot drag content from one domain to a different domain, when the source and destination are in the same window. Users cannot change this setting in the Internet Options dialog.

In Internet Explorer 10, if you disable this policy setting or do not configure it, users cannot drag content from one domain to a different domain, when the source and destination are in the same window. Users can change this setting in the Internet Options dialog.

In Internet Explorer 9 and earlier versions, if you disable this policy setting or do not configure it, users can drag content from one domain to a different domain, when the source and destination are in the same window. Users cannot change this setting in the Internet Options dialog.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable dragging of content from different domains within a window*
-   GP name: *IZ_PolicyDragDropAcrossDomainsWithinWindow_Both_Restricted*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneenablemimesniffing"></a>**InternetExplorer/RestrictedSitesZoneEnableMIMESniffing**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage MIME sniffing for file promotion from one type to another based on a MIME sniff. A MIME sniff is the recognition by Internet Explorer of the file type based on a bit signature.

If you enable this policy setting, the MIME Sniffing Safety Feature will not apply in this zone. The security zone will run without the added layer of security provided by this feature.

If you disable this policy setting, the actions that may be harmful cannot run; this Internet Explorer security feature will be turned on in this zone, as dictated by the feature control setting for the process.

If you do not configure this policy setting, the actions that may be harmful cannot run; this Internet Explorer security feature will be turned on in this zone, as dictated by the feature control setting for the process.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable MIME Sniffing*
-   GP name: *IZ_PolicyMimeSniffingURLaction_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneincludelocalpathwhenuploadingfilestoserver"></a>**InternetExplorer/RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether or not local path information is sent when the user is uploading a file via an HTML form. If the local path information is sent, some information may be unintentionally revealed to the server. For instance, files sent from the user's desktop may contain the user name as a part of the path.

If you enable this policy setting, path information is sent when the user is uploading a file via an HTML form.

If you disable this policy setting, path information is removed when the user is uploading a file via an HTML form.

If you do not configure this policy setting, the user can choose whether path information is sent, when he or she is uploading a file via an HTML form. By default, path information is sent.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Include local path when user is uploading files to a server*
-   GP name: *IZ_Policy_LocalPathForUpload_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/RestrictedSitesZoneInitializeAndScriptActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszonejavapermissions"></a>**InternetExplorer/RestrictedSitesZoneJavaPermissions**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage permissions for Java applets.

If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program cannot make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer), and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

If you disable this policy setting, Java applets cannot run.

If you do not configure this policy setting, Java applets are disabled.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Java permissions*
-   GP name: *IZ_PolicyJavaPermissions_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszonelaunchingapplicationsandfilesiniframe"></a>**InternetExplorer/RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether applications may be run and files may be downloaded from an IFRAME reference in the HTML of the pages in this zone.

If you enable this policy setting, users can run applications and download files from IFRAMEs on the pages in this zone without user intervention. If you select Prompt in the drop-down box, users are queried to choose whether to run applications and download files from IFRAMEs on the pages in this zone.

If you disable this policy setting, users are prevented from running applications and downloading files from IFRAMEs on the pages in this zone.

If you do not configure this policy setting, users are prevented from running applications and downloading files from IFRAMEs on the pages in this zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Launching applications and files in an IFRAME*
-   GP name: *IZ_PolicyLaunchAppsAndFilesInIFRAME_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszonelogonoptions"></a>**InternetExplorer/RestrictedSitesZoneLogonOptions**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage settings for logon options.

If you enable this policy setting, you can choose from the following logon options.

Anonymous logon to disable HTTP authentication, and use the guest account only for the Common Internet File System (CIFS) protocol.

Prompt for user name and password to query users for user IDs and passwords. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon only in Intranet zone to query users for user IDs and passwords in other zones. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon with current user name and password to attempt logon using Windows NT Challenge Response (also known as NTLM authentication). If Windows NT Challenge Response is supported by the server, the logon uses the user's network user name and password for logon. If Windows NT Challenge Response is not supported by the server, the user is queried to provide the user name and password.

If you disable this policy setting, logon is set to Automatic logon only in Intranet zone.

If you do not configure this policy setting, logon is set to Prompt for username and password.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Logon options*
-   GP name: *IZ_PolicyLogon_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFrames**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the opening of windows and frames, and access of applications across different domains.

If you enable this policy setting, users can open additional windows and frames from other domains, and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow additional windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open other windows and frames from other domains or access applications from different domains.

If you do not configure this policy setting, users cannot open other windows and frames from different domains or access applications from different domains.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszonerunactivexcontrolsandplugins"></a>**InternetExplorer/RestrictedSitesZoneRunActiveXControlsAndPlugins**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether ActiveX controls and plug-ins can be run on pages from the specified zone.

If you enable this policy setting, controls and plug-ins can run without user intervention.

If you selected Prompt in the drop-down box, users are asked to choose whether to allow the controls or plug-in to run.

If you disable this policy setting, controls and plug-ins are prevented from running.

If you do not configure this policy setting, controls and plug-ins are prevented from running.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run ActiveX controls and plugins*
-   GP name: *IZ_PolicyRunActiveXControls_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszonerunnetframeworkreliantcomponentssignedwithauthenticode"></a>**InternetExplorer/RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether .NET Framework components that are signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute signed managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine, whether to execute signed managed components.

If you disable this policy setting, Internet Explorer will not execute signed managed components.

If you do not configure this policy setting, Internet Explorer will not execute signed managed components.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run .NET Framework-reliant components signed with Authenticode*
-   GP name: *IZ_PolicySignedFrameworkComponentsURLaction_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszonescriptactivexcontrolsmarkedsafeforscripting"></a>**InternetExplorer/RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether an ActiveX control marked safe for scripting can interact with a script.

If you enable this policy setting, script interaction can occur automatically without user intervention.

If you select Prompt in the drop-down box, users are queried to choose whether to allow script interaction.

If you disable this policy setting, script interaction is prevented from occurring.

If you do not configure this policy setting, script interaction is prevented from occurring.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Script ActiveX controls marked safe for scripting*
-   GP name: *IZ_PolicyScriptActiveXMarkedSafe_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszonescriptingofjavaapplets"></a>**InternetExplorer/RestrictedSitesZoneScriptingOfJavaApplets**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether applets are exposed to scripts within the zone.

If you enable this policy setting, scripts can access applets automatically without user intervention.

If you select Prompt in the drop-down box, users are queried to choose whether to allow scripts to access applets.

If you disable this policy setting, scripts are prevented from accessing applets.

If you do not configure this policy setting, scripts are prevented from accessing applets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Scripting of Java applets*
-   GP name: *IZ_PolicyScriptingOfJavaApplets_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneshowsecuritywarningforpotentiallyunsafefiles"></a>**InternetExplorer/RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether or not the "Open File - Security Warning" message appears, when the user tries to open executable files or other potentially unsafe files (from an intranet file share by using File Explorer, for example).

If you enable this policy setting and set the drop-down box to Enable, these files open without a security warning. If you set the drop-down box to Prompt, a security warning appears before the files open.

If you disable this policy setting, these files do not open.

If you do not configure this policy setting, the user can configure how the computer handles these files. By default, these files are blocked in the Restricted zone, enabled in the Intranet and Local Computer zones, and set to prompt in the Internet and Trusted zones.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Show security warning for potentially unsafe files*
-   GP name: *IZ_Policy_UnsafeFiles_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneturnonprotectedmode"></a>**InternetExplorer/RestrictedSitesZoneTurnOnProtectedMode**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to turn on Protected Mode. Protected Mode helps protect Internet Explorer from exploited vulnerabilities by reducing the locations that Internet Explorer can write to in the registry and the file system.

If you enable this policy setting, Protected Mode is turned on. The user cannot turn off Protected Mode.

If you disable this policy setting, Protected Mode is turned off. The user cannot turn on Protected Mode.

If you do not configure this policy setting, the user can turn on or turn off Protected Mode.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on Protected Mode*
-   GP name: *IZ_Policy_TurnOnProtectedMode_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-restrictedsiteszoneusepopupblocker"></a>**InternetExplorer/RestrictedSitesZoneUsePopupBlocker**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether unwanted pop-up windows appear. Pop-up windows that are opened when the end user clicks a link are not blocked.

If you enable this policy setting, most unwanted pop-up windows are prevented from appearing.

If you disable this policy setting, pop-up windows are not prevented from appearing.

If you do not configure this policy setting, most unwanted pop-up windows are prevented from appearing.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use Pop-up Blocker*
-   GP name: *IZ_PolicyBlockPopupWindows_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-scriptedwindowsecurityrestrictionsinternetexplorerprocesses"></a>**InternetExplorer/ScriptedWindowSecurityRestrictionsInternetExplorerProcesses**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Internet Explorer allows scripts to programmatically open, resize, and reposition windows of various types. The Window Restrictions security feature restricts pop-up windows, and prohibits scripts from displaying windows in which the title and status bars are not visible to the user or obfuscate other Windows' title and status bars.

If you enable this policy setting, pop-up windows and other restrictions apply for File Explorer and Internet Explorer processes.

If you disable this policy setting, scripts can continue to create pop-up windows and windows that obfuscate other windows.

If you do not configure this policy setting, pop-up windows and other restrictions apply for File Explorer and Internet Explorer processes.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Internet Explorer Processes*
-   GP name: *IESF_PolicyExplorerProcesses_8*
-   GP path: *Windows Components/Internet Explorer/Security Features/Scripted Window Security Restrictions*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-searchproviderlist"></a>**InternetExplorer/SearchProviderList**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to restrict the search providers that appear in the Search box in Internet Explorer to those defined in the list of policy keys for search providers (found under [HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\SearchScopes]). Normally, search providers can be added from third-party toolbars or in Setup, but the user can also add them from a search provider's website.

If you enable this policy setting, the user cannot configure the list of search providers on his or her computer, and any default providers installed do not appear (including providers installed from other applications). The only providers that appear are those in the list of policy keys for search providers. 

> [!NOTE]
> This list can be created through a custom administrative template file. For information about creating this custom administrative template file, see the Internet Explorer documentation on search providers.

If you disable or do not configure this policy setting, the user can configure his or her list of search providers.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Restrict search providers to a specific list*
-   GP name: *SpecificSearchProvider*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-securityzonesuseonlymachinesettings"></a>**InternetExplorer/SecurityZonesUseOnlyMachineSettings**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Applies security zone information to all users of the same computer. A security zone is a group of Web sites with the same security level.

If you enable this policy, changes that the user makes to a security zone will apply to all users of that computer.

If you disable this policy or do not configure it, users of the same computer can establish their own security zone settings.

This policy is intended to ensure that security zone settings apply uniformly to the same computer and do not vary from user to user.

Also, see the "Security zones: Do not allow users to change policies" policy.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Security Zones: Use only machine settings*
-   GP name: *Security_HKLM_only*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-sendsitesnotinenterprisesitelisttoedge"></a>**InternetExplorer/SendSitesNotInEnterpriseSiteListToEdge**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This setting lets you decide, whether to open all sites not included in the Enterprise Mode Site List in Microsoft Edge. If you use this setting, you must also turn on the [InternetExplorer/AllowEnterpriseModeSiteList ](#internetexplorer-policies) policy setting, and you must include at least one site in the Enterprise Mode Site List.

If you enable this setting, it automatically opens all sites not included in the Enterprise Mode Site List in Microsoft Edge.

If you disable, or not configure this setting, then it opens all sites based on the currently active browser. 

> [!NOTE]
> If you have also enabled the [InternetExplorer/SendIntranetTraffictoInternetExplorer](#internetexplorer-policies) policy setting, then all intranet sites will continue to open in Internet Explorer 11.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Send all sites not included in the Enterprise Mode Site List to Microsoft Edge*
-   GP name: *RestrictInternetExplorer*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

> [!NOTE]
> This MDM policy is still outstanding.
<!--/ADMXBacked-->
<!--/Policy-->
```xml
  <policy name="RestrictInternetExplorer" class="Both" displayName="$(string.RestrictInternetExplorer)" explainText="$(string.IE_ExplainRestrictInternetExplorer)" key="Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode" valueName="RestrictIE">

      <parentCategory ref="InternetExplorer" />

      <supportedOn ref="SUPPORTED_IE11WIN10_1607" />

      <enabledValue>

        <decimal value="1" />

      </enabledValue>

      <disabledValue>

        <decimal value="0" />

      </disabledValue>

    </policy>
```
<!--Policy-->
<a href="" id="internetexplorer-specifyuseofactivexinstallerservice"></a>**InternetExplorer/SpecifyUseOfActiveXInstallerService**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to specify how ActiveX controls are installed.

If you enable this policy setting, ActiveX controls are installed only if the ActiveX Installer Service is present and has been configured to allow the installation of ActiveX controls.

If you disable or do not configure this policy setting, ActiveX controls, including per-user controls, are installed through the standard installation process.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify use of ActiveX Installer Service for installation of ActiveX controls*
-   GP name: *OnlyUseAXISForActiveXInstall*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-trustedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/TrustedSitesZoneAllowAccessToDataSources**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-trustedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting manages, whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-trustedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForFileDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, users will receive a file download dialog for automatic download attempts.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-trustedsiteszoneallowfontdownloads"></a>**InternetExplorer/TrustedSitesZoneAllowFontDownloads**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-trustedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/TrustedSitesZoneAllowLessPrivilegedSites**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether Web sites from less privileged zones, such as Restricted Sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone, as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, a warning is issued to the user that potentially risky navigation is about to occur.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-trustedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/TrustedSitesZoneAllowNETFrameworkReliantComponents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine, whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will execute unsigned managed components.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-trustedsiteszoneallowscriptlets"></a>**InternetExplorer/TrustedSitesZoneAllowScriptlets**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage, whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-trustedsiteszoneallowsmartscreenie"></a>**InternetExplorer/TrustedSitesZoneAllowSmartScreenIE**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, whether Windows Defender SmartScreen scans pages in this zone for malicious content.

If you enable this policy setting, Windows Defender SmartScreen scans pages in this zone for malicious content.

If you disable this policy setting, Windows Defender SmartScreen does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether Windows Defender SmartScreen scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter, scans pages in this zone for malicious content.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-trustedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/TrustedSitesZoneAllowUserDataPersistence**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored, if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-trustedsiteszonedonotrunantimalwareagainstactivexcontrols"></a>**InternetExplorer/TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines, whether Internet Explorer runs antimalware programs against ActiveX controls, to check if they're safe to load on pages.

If you enable this policy setting, Internet Explorer won't check with your antimalware program, to see if it's safe to create an instance of the ActiveX control.

If you disable this policy setting, Internet Explorer always checks with your antimalware program, to see if it's safe to create an instance of the ActiveX control.

If you don't configure this policy setting, Internet Explorer won't check with your antimalware program, to see if it's safe to create an instance of the ActiveX control. Users can turn this behavior on or off, using Internet Explorer Security settings.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Don't run antimalware programs against ActiveX controls*
-   GP name: *IZ_PolicyAntiMalwareCheckingOfActiveXControls_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-trustedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/TrustedSitesZoneInitializeAndScriptActiveXControls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, users are queried whether to allow the control to be loaded with parameters or scripted.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-trustedsiteszonejavapermissions"></a>**InternetExplorer/TrustedSitesZoneJavaPermissions**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage permissions for Java applets.

If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program cannot make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer), and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

If you disable this policy setting, Java applets cannot run.

If you do not configure this policy setting, the permission is set to Low Safety.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Java permissions*
-   GP name: *IZ_PolicyJavaPermissions_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="internetexplorer-trustedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/TrustedSitesZoneNavigateWindowsAndFrames**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the opening of windows and frames, and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from other domains, and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from other domains, and access applications from other domains.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)
