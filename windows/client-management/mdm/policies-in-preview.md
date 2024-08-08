---
title: Configuration service provider preview policies
description: Learn more about configuration service provider (CSP) policies that are available for Windows Insider Preview.
ms.date: 08/07/2024
---

<!-- Auto-Generated CSP Document -->

# Configuration service provider policies in preview

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

This article lists the policies that are applicable for Windows Insider Preview builds.

## AppDeviceInventory

- [TurnOffInstallTracing](policy-csp-appdeviceinventory.md#turnoffinstalltracing)
- [TurnOffAPISamping](policy-csp-appdeviceinventory.md#turnoffapisamping)
- [TurnOffApplicationFootprint](policy-csp-appdeviceinventory.md#turnoffapplicationfootprint)

## ClientCertificateInstall CSP

- [AttestPrivateKey](clientcertificateinstall-csp.md#userscepuniqueidinstallattestprivatekey)

## CloudDesktop CSP

- [EnablePhysicalDeviceAccessOnCtrlAltDel](clouddesktop-csp.md#userenablephysicaldeviceaccessonctrlaltdel)
- [EnablePhysicalDeviceAccessOnErrorScreens](clouddesktop-csp.md#userenablephysicaldeviceaccessonerrorscreens)
- [EnableBootToCloudSharedPCMode](clouddesktop-csp.md#deviceenableboottocloudsharedpcmode)

## Cryptography

- [ConfigureEllipticCurveCryptography](policy-csp-cryptography.md#configureellipticcurvecryptography)
- [ConfigureSystemCryptographyForceStrongKeyProtection](policy-csp-cryptography.md#configuresystemcryptographyforcestrongkeyprotection)
- [OverrideMinimumEnabledTLSVersionClient](policy-csp-cryptography.md#overrideminimumenabledtlsversionclient)
- [OverrideMinimumEnabledTLSVersionServer](policy-csp-cryptography.md#overrideminimumenabledtlsversionserver)
- [OverrideMinimumEnabledDTLSVersionClient](policy-csp-cryptography.md#overrideminimumenableddtlsversionclient)
- [OverrideMinimumEnabledDTLSVersionServer](policy-csp-cryptography.md#overrideminimumenableddtlsversionserver)

## DeclaredConfiguration CSP

- [Document](declaredconfiguration-csp.md#hostcompletedocumentsdociddocument)
- [Abandoned](declaredconfiguration-csp.md#hostcompletedocumentsdocidpropertiesabandoned)

## DeliveryOptimization

- [DODisallowCacheServerDownloadsOnVPN](policy-csp-deliveryoptimization.md#dodisallowcacheserverdownloadsonvpn)
- [DOVpnKeywords](policy-csp-deliveryoptimization.md#dovpnkeywords)

## DesktopAppInstaller

- [EnableWindowsPackageManagerCommandLineInterfaces](policy-csp-desktopappinstaller.md#enablewindowspackagemanagercommandlineinterfaces)
- [EnableWindowsPackageManagerConfiguration](policy-csp-desktopappinstaller.md#enablewindowspackagemanagerconfiguration)

## DeviceLock

- [MaximumPasswordAge](policy-csp-devicelock.md#maximumpasswordage)
- [ClearTextPassword](policy-csp-devicelock.md#cleartextpassword)
- [PasswordComplexity](policy-csp-devicelock.md#passwordcomplexity)
- [PasswordHistorySize](policy-csp-devicelock.md#passwordhistorysize)
- [AccountLockoutPolicy](policy-csp-devicelock.md#accountlockoutpolicy)
- [AllowAdministratorLockout](policy-csp-devicelock.md#allowadministratorlockout)
- [MinimumPasswordLength](policy-csp-devicelock.md#minimumpasswordlength)
- [MinimumPasswordLengthAudit](policy-csp-devicelock.md#minimumpasswordlengthaudit)
- [RelaxMinimumPasswordLengthLimits](policy-csp-devicelock.md#relaxminimumpasswordlengthlimits)

## DevicePreparation CSP

- [PageEnabled](devicepreparation-csp.md#pageenabled)
- [PageStatus](devicepreparation-csp.md#pagestatus)
- [PageErrorPhase](devicepreparation-csp.md#pageerrorphase)
- [PageErrorCode](devicepreparation-csp.md#pageerrorcode)
- [PageErrorDetails](devicepreparation-csp.md#pageerrordetails)
- [PageSettings](devicepreparation-csp.md#pagesettings)
- [ExecutionContext](devicepreparation-csp.md#bootstrapperagentexecutioncontext)
- [Progress](devicepreparation-csp.md#mdmproviderprogress)
- [MdmAgentInstalled](devicepreparation-csp.md#mdmprovidermdmagentinstalled)
- [RebootRequired](devicepreparation-csp.md#mdmproviderrebootrequired)

## DMClient CSP

- [DiscoveryEndpoint](dmclient-csp.md#deviceproviderprovideridlinkedenrollmentdiscoveryendpoint)
- [Enabled](dmclient-csp.md#deviceproviderprovideridconfigrefreshenabled)
- [Cadence](dmclient-csp.md#deviceproviderprovideridconfigrefreshcadence)
- [PausePeriod](dmclient-csp.md#deviceproviderprovideridconfigrefreshpauseperiod)

## Experience

- [AllowScreenRecorder](policy-csp-experience.md#allowscreenrecorder)
- [EnableOrganizationalMessages](policy-csp-experience.md#enableorganizationalmessages)
- [DisableTextTranslation](policy-csp-experience.md#disabletexttranslation)

## FileSystem

- [EnableDevDrive](policy-csp-filesystem.md#enabledevdrive)
- [DevDriveAttachPolicy](policy-csp-filesystem.md#devdriveattachpolicy)

## HealthAttestation CSP

- [AttestErrorMessage](healthattestation-csp.md#attesterrormessage)

## HumanPresence

- [ForceDisableWakeWhenBatterySaverOn](policy-csp-humanpresence.md#forcedisablewakewhenbatterysaveron)
- [ForceAllowWakeWhenExternalDisplayConnected](policy-csp-humanpresence.md#forceallowwakewhenexternaldisplayconnected)
- [ForceAllowLockWhenExternalDisplayConnected](policy-csp-humanpresence.md#forceallowlockwhenexternaldisplayconnected)
- [ForceAllowDimWhenExternalDisplayConnected](policy-csp-humanpresence.md#forceallowdimwhenexternaldisplayconnected)

## InternetExplorer

- [AllowLegacyURLFields](policy-csp-internetexplorer.md#allowlegacyurlfields)

## LanguagePackManagement CSP

- [Providers](language-pack-management-csp.md#installedlanguageslanguage-idproviders)
- [LanguageFeatures](language-pack-management-csp.md#installedlanguageslanguage-idlanguagefeatures)
- [Status](language-pack-management-csp.md#installlanguage-idstatus)
- [ErrorCode](language-pack-management-csp.md#installlanguage-iderrorcode)
- [CopyToDeviceInternationalSettings](language-pack-management-csp.md#installlanguage-idcopytodeviceinternationalsettings)
- [EnableLanguageFeatureInstallations](language-pack-management-csp.md#installlanguage-idenablelanguagefeatureinstallations)
- [StartInstallation](language-pack-management-csp.md#installlanguage-idstartinstallation)
- [SystemPreferredUILanguages](language-pack-management-csp.md#languagesettingssystempreferreduilanguages)

## LAPS CSP

- [PassphraseLength](laps-csp.md#policiespassphraselength)
- [AutomaticAccountManagementEnabled](laps-csp.md#policiesautomaticaccountmanagementenabled)
- [AutomaticAccountManagementTarget](laps-csp.md#policiesautomaticaccountmanagementtarget)
- [AutomaticAccountManagementNameOrPrefix](laps-csp.md#policiesautomaticaccountmanagementnameorprefix)
- [AutomaticAccountManagementEnableAccount](laps-csp.md#policiesautomaticaccountmanagementenableaccount)
- [AutomaticAccountManagementRandomizeName](laps-csp.md#policiesautomaticaccountmanagementrandomizename)

## LocalPoliciesSecurityOptions

- [Audit_AuditTheUseOfBackupAndRestoreprivilege](policy-csp-localpoliciessecurityoptions.md#audit_audittheuseofbackupandrestoreprivilege)
- [Audit_ForceAuditPolicySubcategorySettingsToOverrideAuditPolicyCategorySettings](policy-csp-localpoliciessecurityoptions.md#audit_forceauditpolicysubcategorysettingstooverrideauditpolicycategorysettings)
- [Audit_ShutdownSystemImmediatelyIfUnableToLogSecurityAudits](policy-csp-localpoliciessecurityoptions.md#audit_shutdownsystemimmediatelyifunabletologsecurityaudits)
- [Devices_RestrictFloppyAccessToLocallyLoggedOnUserOnly](policy-csp-localpoliciessecurityoptions.md#devices_restrictfloppyaccesstolocallyloggedonuseronly)
- [DomainMember_DigitallyEncryptOrSignSecureChannelDataAlways](policy-csp-localpoliciessecurityoptions.md#domainmember_digitallyencryptorsignsecurechanneldataalways)
- [DomainMember_DigitallyEncryptSecureChannelDataWhenPossible](policy-csp-localpoliciessecurityoptions.md#domainmember_digitallyencryptsecurechanneldatawhenpossible)
- [DomainMember_DigitallySignSecureChannelDataWhenPossible](policy-csp-localpoliciessecurityoptions.md#domainmember_digitallysignsecurechanneldatawhenpossible)
- [DomainMember_DisableMachineAccountPasswordChanges](policy-csp-localpoliciessecurityoptions.md#domainmember_disablemachineaccountpasswordchanges)
- [DomainMember_MaximumMachineAccountPasswordAge](policy-csp-localpoliciessecurityoptions.md#domainmember_maximummachineaccountpasswordage)
- [DomainMember_RequireStrongSessionKey](policy-csp-localpoliciessecurityoptions.md#domainmember_requirestrongsessionkey)
- [InteractiveLogon_MachineAccountLockoutThreshold](policy-csp-localpoliciessecurityoptions.md#interactivelogon_machineaccountlockoutthreshold)
- [InteractiveLogon_NumberOfPreviousLogonsToCache](policy-csp-localpoliciessecurityoptions.md#interactivelogon_numberofpreviouslogonstocache)
- [InteractiveLogon_PromptUserToChangePasswordBeforeExpiration](policy-csp-localpoliciessecurityoptions.md#interactivelogon_promptusertochangepasswordbeforeexpiration)
- [MicrosoftNetworkServer_AmountOfIdleTimeRequiredBeforeSuspendingSession](policy-csp-localpoliciessecurityoptions.md#microsoftnetworkserver_amountofidletimerequiredbeforesuspendingsession)
- [MicrosoftNetworkServer_DisconnectClientsWhenLogonHoursExpire](policy-csp-localpoliciessecurityoptions.md#microsoftnetworkserver_disconnectclientswhenlogonhoursexpire)
- [MicrosoftNetworkServer_ServerSPNTargetNameValidationLevel](policy-csp-localpoliciessecurityoptions.md#microsoftnetworkserver_serverspntargetnamevalidationlevel)
- [NetworkAccess_AllowAnonymousSIDOrNameTranslation](policy-csp-localpoliciessecurityoptions.md#networkaccess_allowanonymoussidornametranslation)
- [NetworkAccess_DoNotAllowStorageOfPasswordsAndCredentialsForNetworkAuthentication](policy-csp-localpoliciessecurityoptions.md#networkaccess_donotallowstorageofpasswordsandcredentialsfornetworkauthentication)
- [NetworkAccess_LetEveryonePermissionsApplyToAnonymousUsers](policy-csp-localpoliciessecurityoptions.md#networkaccess_leteveryonepermissionsapplytoanonymoususers)
- [NetworkAccess_NamedPipesThatCanBeAccessedAnonymously](policy-csp-localpoliciessecurityoptions.md#networkaccess_namedpipesthatcanbeaccessedanonymously)
- [NetworkAccess_RemotelyAccessibleRegistryPaths](policy-csp-localpoliciessecurityoptions.md#networkaccess_remotelyaccessibleregistrypaths)
- [NetworkAccess_RemotelyAccessibleRegistryPathsAndSubpaths](policy-csp-localpoliciessecurityoptions.md#networkaccess_remotelyaccessibleregistrypathsandsubpaths)
- [NetworkAccess_SharesThatCanBeAccessedAnonymously](policy-csp-localpoliciessecurityoptions.md#networkaccess_sharesthatcanbeaccessedanonymously)
- [NetworkAccess_SharingAndSecurityModelForLocalAccounts](policy-csp-localpoliciessecurityoptions.md#networkaccess_sharingandsecuritymodelforlocalaccounts)
- [NetworkSecurity_AllowLocalSystemNULLSessionFallback](policy-csp-localpoliciessecurityoptions.md#networksecurity_allowlocalsystemnullsessionfallback)
- [NetworkSecurity_ForceLogoffWhenLogonHoursExpire](policy-csp-localpoliciessecurityoptions.md#networksecurity_forcelogoffwhenlogonhoursexpire)
- [NetworkSecurity_LDAPClientSigningRequirements](policy-csp-localpoliciessecurityoptions.md#networksecurity_ldapclientsigningrequirements)
- [RecoveryConsole_AllowAutomaticAdministrativeLogon](policy-csp-localpoliciessecurityoptions.md#recoveryconsole_allowautomaticadministrativelogon)
- [RecoveryConsole_AllowFloppyCopyAndAccessToAllDrivesAndAllFolders](policy-csp-localpoliciessecurityoptions.md#recoveryconsole_allowfloppycopyandaccesstoalldrivesandallfolders)
- [SystemCryptography_ForceStrongKeyProtection](policy-csp-localpoliciessecurityoptions.md#systemcryptography_forcestrongkeyprotection)
- [SystemObjects_RequireCaseInsensitivityForNonWindowsSubsystems](policy-csp-localpoliciessecurityoptions.md#systemobjects_requirecaseinsensitivityfornonwindowssubsystems)
- [SystemObjects_StrengthenDefaultPermissionsOfInternalSystemObjects](policy-csp-localpoliciessecurityoptions.md#systemobjects_strengthendefaultpermissionsofinternalsystemobjects)
- [UserAccountControl_BehaviorOfTheElevationPromptForEnhancedAdministrators](policy-csp-localpoliciessecurityoptions.md#useraccountcontrol_behavioroftheelevationpromptforenhancedadministrators)
- [UserAccountControl_TypeOfAdminApprovalMode](policy-csp-localpoliciessecurityoptions.md#useraccountcontrol_typeofadminapprovalmode)

## MixedReality

- [AutoUnlock](policy-csp-mixedreality.md#autounlock)
- [ConfigureSharedAccount](policy-csp-mixedreality.md#configuresharedaccount)
- [ConfigureDeviceStandbyAction](policy-csp-mixedreality.md#configuredevicestandbyaction)
- [ConfigureDeviceStandbyActionTimeout](policy-csp-mixedreality.md#configuredevicestandbyactiontimeout)

## MSSecurityGuide

- [NetBTNodeTypeConfiguration](policy-csp-mssecurityguide.md#netbtnodetypeconfiguration)

## NetworkListManager

- [AllNetworks_NetworkIcon](policy-csp-networklistmanager.md#allnetworks_networkicon)
- [AllNetworks_NetworkLocation](policy-csp-networklistmanager.md#allnetworks_networklocation)
- [AllNetworks_NetworkName](policy-csp-networklistmanager.md#allnetworks_networkname)
- [IdentifyingNetworks_LocationType](policy-csp-networklistmanager.md#identifyingnetworks_locationtype)
- [UnidentifiedNetworks_LocationType](policy-csp-networklistmanager.md#unidentifiednetworks_locationtype)
- [UnidentifiedNetworks_UserPermissions](policy-csp-networklistmanager.md#unidentifiednetworks_userpermissions)

## Notifications

- [DisableAccountNotifications](policy-csp-notifications.md#disableaccountnotifications)

## PassportForWork CSP

- [EnableWindowsHelloProvisioningForSecurityKeys](passportforwork-csp.md#devicetenantidpoliciesenablewindowshelloprovisioningforsecuritykeys)
- [DisablePostLogonProvisioning](passportforwork-csp.md#devicetenantidpoliciesdisablepostlogonprovisioning)

## Reboot CSP

- [WeeklyRecurrent](reboot-csp.md#scheduleweeklyrecurrent)

## RemoteDesktopServices

- [LimitServerToClientClipboardRedirection](policy-csp-remotedesktopservices.md#limitservertoclientclipboardredirection)
- [LimitClientToServerClipboardRedirection](policy-csp-remotedesktopservices.md#limitclienttoserverclipboardredirection)
- [DisconnectOnLockLegacyAuthn](policy-csp-remotedesktopservices.md#disconnectonlocklegacyauthn)
- [DisconnectOnLockMicrosoftIdentityAuthn](policy-csp-remotedesktopservices.md#disconnectonlockmicrosoftidentityauthn)
- [TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME](policy-csp-remotedesktopservices.md#ts_server_remoteapp_use_shellappruntime)

## Search

- [ConfigureSearchOnTaskbarMode](policy-csp-search.md#configuresearchontaskbarmode)

## SettingsSync

- [DisableAccessibilitySettingSync](policy-csp-settingssync.md#disableaccessibilitysettingsync)
- [DisableLanguageSettingSync](policy-csp-settingssync.md#disablelanguagesettingsync)

## Sudo

- [EnableSudo](policy-csp-sudo.md#enablesudo)

## SurfaceHub CSP

- [ExchangeModernAuthEnabled](surfacehub-csp.md#deviceaccountexchangemodernauthenabled)

## System

- [HideUnsupportedHardwareNotifications](policy-csp-system.md#hideunsupportedhardwarenotifications)

## SystemServices

- [ConfigureComputerBrowserServiceStartupMode](policy-csp-systemservices.md#configurecomputerbrowserservicestartupmode)
- [ConfigureIISAdminServiceStartupMode](policy-csp-systemservices.md#configureiisadminservicestartupmode)
- [ConfigureInfraredMonitorServiceStartupMode](policy-csp-systemservices.md#configureinfraredmonitorservicestartupmode)
- [ConfigureInternetConnectionSharingServiceStartupMode](policy-csp-systemservices.md#configureinternetconnectionsharingservicestartupmode)
- [ConfigureLxssManagerServiceStartupMode](policy-csp-systemservices.md#configurelxssmanagerservicestartupmode)
- [ConfigureMicrosoftFTPServiceStartupMode](policy-csp-systemservices.md#configuremicrosoftftpservicestartupmode)
- [ConfigureRemoteProcedureCallLocatorServiceStartupMode](policy-csp-systemservices.md#configureremoteprocedurecalllocatorservicestartupmode)
- [ConfigureRoutingAndRemoteAccessServiceStartupMode](policy-csp-systemservices.md#configureroutingandremoteaccessservicestartupmode)
- [ConfigureSimpleTCPIPServicesStartupMode](policy-csp-systemservices.md#configuresimpletcpipservicesstartupmode)
- [ConfigureSpecialAdministrationConsoleHelperServiceStartupMode](policy-csp-systemservices.md#configurespecialadministrationconsolehelperservicestartupmode)
- [ConfigureSSDPDiscoveryServiceStartupMode](policy-csp-systemservices.md#configuressdpdiscoveryservicestartupmode)
- [ConfigureUPnPDeviceHostServiceStartupMode](policy-csp-systemservices.md#configureupnpdevicehostservicestartupmode)
- [ConfigureWebManagementServiceStartupMode](policy-csp-systemservices.md#configurewebmanagementservicestartupmode)
- [ConfigureWindowsMediaPlayerNetworkSharingServiceStartupMode](policy-csp-systemservices.md#configurewindowsmediaplayernetworksharingservicestartupmode)
- [ConfigureWindowsMobileHotspotServiceStartupMode](policy-csp-systemservices.md#configurewindowsmobilehotspotservicestartupmode)
- [ConfigureWorldWideWebPublishingServiceStartupMode](policy-csp-systemservices.md#configureworldwidewebpublishingservicestartupmode)

## Update

- [AllowTemporaryEnterpriseFeatureControl](policy-csp-update.md#allowtemporaryenterprisefeaturecontrol)
- [ConfigureDeadlineNoAutoRebootForFeatureUpdates](policy-csp-update.md#configuredeadlinenoautorebootforfeatureupdates)
- [ConfigureDeadlineNoAutoRebootForQualityUpdates](policy-csp-update.md#configuredeadlinenoautorebootforqualityupdates)
- [AlwaysAutoRebootAtScheduledTimeMinutes](policy-csp-update.md#alwaysautorebootatscheduledtimeminutes)

## UserRights

- [BypassTraverseChecking](policy-csp-userrights.md#bypasstraversechecking)
- [ReplaceProcessLevelToken](policy-csp-userrights.md#replaceprocessleveltoken)
- [ChangeTimeZone](policy-csp-userrights.md#changetimezone)
- [ShutDownTheSystem](policy-csp-userrights.md#shutdownthesystem)
- [LogOnAsBatchJob](policy-csp-userrights.md#logonasbatchjob)
- [ProfileSystemPerformance](policy-csp-userrights.md#profilesystemperformance)
- [DenyLogOnAsBatchJob](policy-csp-userrights.md#denylogonasbatchjob)
- [LogOnAsService](policy-csp-userrights.md#logonasservice)
- [IncreaseProcessWorkingSet](policy-csp-userrights.md#increaseprocessworkingset)
- [DenyLogOnAsService](policy-csp-userrights.md#denylogonasservice)
- [AdjustMemoryQuotasForProcess](policy-csp-userrights.md#adjustmemoryquotasforprocess)
- [AllowLogOnThroughRemoteDesktop](policy-csp-userrights.md#allowlogonthroughremotedesktop)

## WebThreatDefense

- [AutomaticDataCollection](policy-csp-webthreatdefense.md#automaticdatacollection)

## Wifi

- [AllowWFAQosManagementMSCS](policy-csp-wifi.md#allowwfaqosmanagementmscs)
- [AllowWFAQosManagementDSCPToUPMapping](policy-csp-wifi.md#allowwfaqosmanagementdscptoupmapping)

## WindowsAI

- [DisableAIDataAnalysis](policy-csp-windowsai.md#disableaidataanalysis)
- [DisableImageCreator](policy-csp-windowsai.md#disableimagecreator)
- [DisableCocreator](policy-csp-windowsai.md#disablecocreator)

## WindowsLicensing CSP

- [SubscriptionType](windowslicensing-csp.md#subscriptionssubscriptiontype)
- [SubscriptionStatus](windowslicensing-csp.md#subscriptionssubscriptionstatus)
- [SubscriptionLastError](windowslicensing-csp.md#subscriptionssubscriptionlasterror)
- [SubscriptionLastErrorDescription](windowslicensing-csp.md#subscriptionssubscriptionlasterrordescription)
- [DisableSubscription](windowslicensing-csp.md#subscriptionsdisablesubscription)
- [RemoveSubscription](windowslicensing-csp.md#subscriptionsremovesubscription)

## WindowsSandbox

- [AllowMappedFolders](policy-csp-windowssandbox.md#allowmappedfolders)
- [AllowWriteToMappedFolders](policy-csp-windowssandbox.md#allowwritetomappedfolders)

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
