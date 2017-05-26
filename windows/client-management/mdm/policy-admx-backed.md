---
title: Policy CSP - ADMX-backed policies
description: Policy CSP - ADMX-backed policies
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4F3A1134-D401-44FC-A583-6EDD3070BA4F
ms.author: exists
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nibr
---

# Policy CSP - ADMX-backed policies

The Policy configuration service provider enables the enterprise to configure policies on Windows 10. Use this configuration service provider to configure any company policies. This reference topic targets only policies which are backed by ADMX. To understand the difference between traditional MDM and ADMX-backed policies please see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

## <a href="" id="admxpolicytable"></a>Table of ADMX-backed policies for Windows 10, version 1703.

> [!IMPORTANT]
> To navigate the table horizontally, click on the table and then use the left and right scroll keys on your keyboard or use the scroll bar at the bottom of the table.

<!-- ADMX-TABLE-START -->
<table>
  <tr>
    <th>MDM CSP setting path/name</th>
    <th>GP english name</th>
    <th>GP english category path</th>
    <th>GP name</th>
    <th>GP ADMX file name</th>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#activexcontrols-approvedinstallationsites">ActiveXControls/ApprovedInstallationSites</a></td>
    <td style="vertical-align:top">Approved Installation Sites for ActiveX Controls</td>
    <td style="vertical-align:top">Windows Components/ActiveX Installer Service</td>
    <td style="vertical-align:top">ApprovedActiveXInstallSites</td>
    <td style="vertical-align:top">ActiveXInstallService.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowappvclient">AppVirtualization/AllowAppVClient</a></td>
    <td style="vertical-align:top">Enable App-V Client</td>
    <td style="vertical-align:top">System/App-V</td>
    <td style="vertical-align:top">EnableAppV</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowdynamicvirtualization">AppVirtualization/AllowDynamicVirtualization</a></td>
    <td style="vertical-align:top">Enable Dynamic Virtualization</td>
    <td style="vertical-align:top">System/App-V/Virtualization</td>
    <td style="vertical-align:top">Virtualization_JITVEnable</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowpackagecleanup">AppVirtualization/AllowPackageCleanup</a></td>
    <td style="vertical-align:top">Enable automatic cleanup of unused appv packages</td>
    <td style="vertical-align:top">System/App-V/Package Management</td>
    <td style="vertical-align:top">PackageManagement_AutoCleanupEnable</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowpackagescripts">AppVirtualization/AllowPackageScripts</a></td>
    <td style="vertical-align:top">Enable Package Scripts</td>
    <td style="vertical-align:top">System/App-V/Scripting</td>
    <td style="vertical-align:top">Scripting_Enable_Package_Scripts</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowpublishingrefreshux">AppVirtualization/AllowPublishingRefreshUX</a></td>
    <td style="vertical-align:top">Enable Publishing Refresh UX</td>
    <td style="vertical-align:top">System/App-V/Publishing</td>
    <td style="vertical-align:top">Enable_Publishing_Refresh_UX</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowreportingserver">AppVirtualization/AllowReportingServer</a></td>
    <td style="vertical-align:top">Reporting Server</td>
    <td style="vertical-align:top">System/App-V/Reporting</td>
    <td style="vertical-align:top">Reporting_Server_Policy</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowroamingfileexclusions">AppVirtualization/AllowRoamingFileExclusions</a></td>
    <td style="vertical-align:top">Roaming File Exclusions</td>
    <td style="vertical-align:top">System/App-V/Integration</td>
    <td style="vertical-align:top">Integration_Roaming_File_Exclusions</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowroamingregistryexclusions">AppVirtualization/AllowRoamingRegistryExclusions</a></td>
    <td style="vertical-align:top">Roaming Registry Exclusions</td>
    <td style="vertical-align:top">System/App-V/Integration</td>
    <td style="vertical-align:top">Integration_Roaming_Registry_Exclusions</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowstreamingautoload">AppVirtualization/AllowStreamingAutoload</a></td>
    <td style="vertical-align:top">Specify what to load in background (aka AutoLoad)</td>
    <td style="vertical-align:top">System/App-V/Streaming</td>
    <td style="vertical-align:top">Steaming_Autoload</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-clientcoexistenceallowmigrationmode">AppVirtualization/ClientCoexistenceAllowMigrationmode</a></td>
    <td style="vertical-align:top">Enable Migration Mode</td>
    <td style="vertical-align:top">System/App-V/Client Coexistence</td>
    <td style="vertical-align:top">Client_Coexistence_Enable_Migration_mode</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-integrationallowrootglobal">AppVirtualization/IntegrationAllowRootGlobal</a></td>
    <td style="vertical-align:top">Integration Root User</td>
    <td style="vertical-align:top">System/App-V/Integration</td>
    <td style="vertical-align:top">Integration_Root_User</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-integrationallowrootuser">AppVirtualization/IntegrationAllowRootUser</a></td>
    <td style="vertical-align:top">Integration Root Global</td>
    <td style="vertical-align:top">System/App-V/Integration</td>
    <td style="vertical-align:top">Integration_Root_Global</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-publishingallowserver1">AppVirtualization/PublishingAllowServer1</a></td>
    <td style="vertical-align:top">Publishing Server 1 Settings</td>
    <td style="vertical-align:top">System/App-V/Publishing</td>
    <td style="vertical-align:top">Publishing_Server1_Policy</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-publishingallowserver2">AppVirtualization/PublishingAllowServer2</a></td>
    <td style="vertical-align:top">Publishing Server 2 Settings</td>
    <td style="vertical-align:top">System/App-V/Publishing</td>
    <td style="vertical-align:top">Publishing_Server2_Policy</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-publishingallowserver3">AppVirtualization/PublishingAllowServer3</a></td>
    <td style="vertical-align:top">Publishing Server 3 Settings</td>
    <td style="vertical-align:top">System/App-V/Publishing</td>
    <td style="vertical-align:top">Publishing_Server3_Policy</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-publishingallowserver4">AppVirtualization/PublishingAllowServer4</a></td>
    <td style="vertical-align:top">Publishing Server 4 Settings</td>
    <td style="vertical-align:top">System/App-V/Publishing</td>
    <td style="vertical-align:top">Publishing_Server4_Policy</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-publishingallowserver5">AppVirtualization/PublishingAllowServer5</a></td>
    <td style="vertical-align:top">Publishing Server 5 Settings</td>
    <td style="vertical-align:top">System/App-V/Publishing</td>
    <td style="vertical-align:top">Publishing_Server5_Policy</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowcertificatefilterforclient_ssl">AppVirtualization/StreamingAllowCertificateFilterForClient_SSL</a></td>
    <td style="vertical-align:top">Certificate Filter For Client SSL</td>
    <td style="vertical-align:top">System/App-V/Streaming</td>
    <td style="vertical-align:top">Streaming_Certificate_Filter_For_Client_SSL</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowhighcostlaunch">AppVirtualization/StreamingAllowHighCostLaunch</a></td>
    <td style="vertical-align:top">Allow First Time Application Launches if on a High Cost Windows 8 Metered Connection</td>
    <td style="vertical-align:top">System/App-V/Streaming</td>
    <td style="vertical-align:top">Streaming_Allow_High_Cost_Launch</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowlocationprovider">AppVirtualization/StreamingAllowLocationProvider</a></td>
    <td style="vertical-align:top">Location Provider</td>
    <td style="vertical-align:top">System/App-V/Streaming</td>
    <td style="vertical-align:top">Streaming_Location_Provider</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowpackageinstallationroot">AppVirtualization/StreamingAllowPackageInstallationRoot</a></td>
    <td style="vertical-align:top">Package Installation Root</td>
    <td style="vertical-align:top">System/App-V/Streaming</td>
    <td style="vertical-align:top">Streaming_Package_Installation_Root</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowpackagesourceroot">AppVirtualization/StreamingAllowPackageSourceRoot</a></td>
    <td style="vertical-align:top">Package Source Root</td>
    <td style="vertical-align:top">System/App-V/Streaming</td>
    <td style="vertical-align:top">Streaming_Package_Source_Root</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowreestablishmentinterval">AppVirtualization/StreamingAllowReestablishmentInterval</a></td>
    <td style="vertical-align:top">Reestablishment Interval</td>
    <td style="vertical-align:top">System/App-V/Streaming</td>
    <td style="vertical-align:top">Streaming_Reestablishment_Interval</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowreestablishmentretries">AppVirtualization/StreamingAllowReestablishmentRetries</a></td>
    <td style="vertical-align:top">Reestablishment Retries</td>
    <td style="vertical-align:top">System/App-V/Streaming</td>
    <td style="vertical-align:top">Streaming_Reestablishment_Retries</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingsharedcontentstoremode">AppVirtualization/StreamingSharedContentStoreMode</a></td>
    <td style="vertical-align:top">Shared Content Store (SCS) mode</td>
    <td style="vertical-align:top">System/App-V/Streaming</td>
    <td style="vertical-align:top">Streaming_Shared_Content_Store_Mode</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingsupportbranchcache">AppVirtualization/StreamingSupportBranchCache</a></td>
    <td style="vertical-align:top">Enable Support for BranchCache</td>
    <td style="vertical-align:top">System/App-V/Streaming</td>
    <td style="vertical-align:top">Streaming_Support_Branch_Cache</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingverifycertificaterevocationlist">AppVirtualization/StreamingVerifyCertificateRevocationList</a></td>
    <td style="vertical-align:top">Verify certificate revocation list</td>
    <td style="vertical-align:top">System/App-V/Streaming</td>
    <td style="vertical-align:top">Streaming_Verify_Certificate_Revocation_List</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-virtualcomponentsallowlist">AppVirtualization/VirtualComponentsAllowList</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">System/App-V/Virtualization</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#attachmentmanager-donotpreservezoneinformation">AttachmentManager/DoNotPreserveZoneInformation</a></td>
    <td style="vertical-align:top">Do not preserve zone information in file attachments</td>
    <td style="vertical-align:top">Windows Components/Attachment Manager</td>
    <td style="vertical-align:top">AM_MarkZoneOnSavedAtttachments</td>
    <td style="vertical-align:top">AttachmentManager.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#attachmentmanager-hidezoneinfomechanism">AttachmentManager/HideZoneInfoMechanism</a></td>
    <td style="vertical-align:top">Hide mechanisms to remove zone information</td>
    <td style="vertical-align:top">Windows Components/Attachment Manager</td>
    <td style="vertical-align:top">AM_RemoveZoneInfo</td>
    <td style="vertical-align:top">AttachmentManager.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#attachmentmanager-notifyantivirusprograms">AttachmentManager/NotifyAntivirusPrograms</a></td>
    <td style="vertical-align:top">Notify antivirus programs when opening attachments</td>
    <td style="vertical-align:top">Windows Components/Attachment Manager</td>
    <td style="vertical-align:top">AM_CallIOfficeAntiVirus</td>
    <td style="vertical-align:top">AttachmentManager.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#autoplay-disallowautoplayfornonvolumedevices">Autoplay/DisallowAutoplayForNonVolumeDevices</a></td>
    <td style="vertical-align:top">Disallow Autoplay for non-volume devices</td>
    <td style="vertical-align:top">Windows Components/AutoPlay Policies</td>
    <td style="vertical-align:top">NoAutoplayfornonVolume</td>
    <td style="vertical-align:top">AutoPlay.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#autoplay-setdefaultautorunbehavior">Autoplay/SetDefaultAutoRunBehavior</a></td>
    <td style="vertical-align:top">Set the default behavior for AutoRun</td>
    <td style="vertical-align:top">Windows Components/AutoPlay Policies</td>
    <td style="vertical-align:top">NoAutorun</td>
    <td style="vertical-align:top">AutoPlay.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#autoplay-turnoffautoplay">Autoplay/TurnOffAutoPlay</a></td>
    <td style="vertical-align:top">Turn off Autoplay</td>
    <td style="vertical-align:top">Windows Components/AutoPlay Policies</td>
    <td style="vertical-align:top">Autorun</td>
    <td style="vertical-align:top">AutoPlay.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#connectivity-hardeneduncpaths">Connectivity/HardenedUNCPaths</a></td>
    <td style="vertical-align:top">Hardened UNC Paths</td>
    <td style="vertical-align:top">Network/Network Provider</td>
    <td style="vertical-align:top">Pol_HardenedPaths</td>
    <td style="vertical-align:top">networkprovider.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#credentialproviders-allowpinlogon">CredentialProviders/AllowPINLogon</a></td>
    <td style="vertical-align:top">Turn on convenience PIN sign-in</td>
    <td style="vertical-align:top">System/Logon</td>
    <td style="vertical-align:top">AllowDomainPINLogon</td>
    <td style="vertical-align:top">credentialproviders.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#credentialproviders-blockpicturepassword">CredentialProviders/BlockPicturePassword</a></td>
    <td style="vertical-align:top">Turn off picture password sign-in</td>
    <td style="vertical-align:top">System/Logon</td>
    <td style="vertical-align:top">BlockDomainPicturePassword</td>
    <td style="vertical-align:top">credentialproviders.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#credentialsui-disablepasswordreveal">CredentialsUI/DisablePasswordReveal</a></td>
    <td style="vertical-align:top">Do not display the password reveal button</td>
    <td style="vertical-align:top">Windows Components/Credential User Interface</td>
    <td style="vertical-align:top">DisablePasswordReveal</td>
    <td style="vertical-align:top">credui.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#credentialsui-enumerateadministrators">CredentialsUI/EnumerateAdministrators</a></td>
    <td style="vertical-align:top">Enumerate administrator accounts on elevation</td>
    <td style="vertical-align:top">Windows Components/Credential User Interface</td>
    <td style="vertical-align:top">EnumerateAdministrators</td>
    <td style="vertical-align:top">credui.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#datausage-setcost3g">DataUsage/SetCost3G</a></td>
    <td style="vertical-align:top">Set 3G Cost</td>
    <td style="vertical-align:top">Network/WWAN Service/WWAN Media Cost</td>
    <td style="vertical-align:top">SetCost3G</td>
    <td style="vertical-align:top">wwansvc.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#datausage-setcost4g">DataUsage/SetCost4G</a></td>
    <td style="vertical-align:top">Set 4G Cost</td>
    <td style="vertical-align:top">Network/WWAN Service/WWAN Media Cost</td>
    <td style="vertical-align:top">SetCost4G</td>
    <td style="vertical-align:top">wwansvc.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#desktop-preventuserredirectionofprofilefolders">Desktop/PreventUserRedirectionOfProfileFolders</a></td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">desktop.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#deviceinstallation-preventinstallationofmatchingdeviceids">DeviceInstallation/PreventInstallationOfMatchingDeviceIDs</a></td>
    <td style="vertical-align:top">Prevent installation of devices that match any of these device IDs</td>
    <td style="vertical-align:top">System/Device Installation/Device Installation Restrictions</td>
    <td style="vertical-align:top">DeviceInstall_IDs_Deny</td>
    <td style="vertical-align:top">deviceinstallation.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#deviceinstallation-preventinstallationofmatchingdevicesetupclasses">DeviceInstallation/PreventInstallationOfMatchingDeviceSetupClasses</a></td>
    <td style="vertical-align:top">Prevent installation of devices using drivers that match these device setup classes</td>
    <td style="vertical-align:top">System/Device Installation/Device Installation Restrictions</td>
    <td style="vertical-align:top">DeviceInstall_Classes_Deny</td>
    <td style="vertical-align:top">deviceinstallation.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#devicelock-preventlockscreenslideshow">DeviceLock/PreventLockScreenSlideShow</a></td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">ControlPanelDisplay.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#errorreporting-customizeconsentsettings">ErrorReporting/CustomizeConsentSettings</a></td>
    <td style="vertical-align:top">Customize consent settings</td>
    <td style="vertical-align:top">Windows Components/Windows Error Reporting/Consent</td>
    <td style="vertical-align:top">WerConsentCustomize_2</td>
    <td style="vertical-align:top">ErrorReporting.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#errorreporting-disablewindowserrorreporting">ErrorReporting/DisableWindowsErrorReporting</a></td>
    <td style="vertical-align:top">Disable Windows Error Reporting</td>
    <td style="vertical-align:top">Windows Components/Windows Error Reporting</td>
    <td style="vertical-align:top">WerDisable_2</td>
    <td style="vertical-align:top">ErrorReporting.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#errorreporting-displayerrornotification">ErrorReporting/DisplayErrorNotification</a></td>
    <td style="vertical-align:top">Display Error Notification</td>
    <td style="vertical-align:top">Windows Components/Windows Error Reporting</td>
    <td style="vertical-align:top">PCH_ShowUI</td>
    <td style="vertical-align:top">ErrorReporting.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#errorreporting-donotsendadditionaldata">ErrorReporting/DoNotSendAdditionalData</a></td>
    <td style="vertical-align:top">Do not send additional data</td>
    <td style="vertical-align:top">Windows Components/Windows Error Reporting</td>
    <td style="vertical-align:top">WerNoSecondLevelData_2</td>
    <td style="vertical-align:top">ErrorReporting.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#errorreporting-preventcriticalerrordisplay">ErrorReporting/PreventCriticalErrorDisplay</a></td>
    <td style="vertical-align:top">Prevent display of the user interface for critical errors</td>
    <td style="vertical-align:top">Windows Components/Windows Error Reporting</td>
    <td style="vertical-align:top">WerDoNotShowUI</td>
    <td style="vertical-align:top">ErrorReporting.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#eventlogservice-controleventlogbehavior">EventLogService/ControlEventLogBehavior</a></td>
    <td style="vertical-align:top">Control Event Log behavior when the log file reaches its maximum size</td>
    <td style="vertical-align:top">Windows Components/Event Log Service/Application</td>
    <td style="vertical-align:top">Channel_Log_Retention_1</td>
    <td style="vertical-align:top">eventlog.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#eventlogservice-specifymaximumfilesizeapplicationlog">EventLogService/SpecifyMaximumFileSizeApplicationLog</a></td>
    <td style="vertical-align:top">Specify the maximum log file size (KB)</td>
    <td style="vertical-align:top">Windows Components/Event Log Service/Application</td>
    <td style="vertical-align:top">Channel_LogMaxSize_1</td>
    <td style="vertical-align:top">eventlog.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#eventlogservice-specifymaximumfilesizesecuritylog">EventLogService/SpecifyMaximumFileSizeSecurityLog</a></td>
    <td style="vertical-align:top">Specify the maximum log file size (KB)</td>
    <td style="vertical-align:top">Windows Components/Event Log Service/Security</td>
    <td style="vertical-align:top">Channel_LogMaxSize_2</td>
    <td style="vertical-align:top">eventlog.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#eventlogservice-specifymaximumfilesizesystemlog">EventLogService/SpecifyMaximumFileSizeSystemLog</a></td>
    <td style="vertical-align:top">Specify the maximum log file size (KB)</td>
    <td style="vertical-align:top">Windows Components/Event Log Service/System</td>
    <td style="vertical-align:top">Channel_LogMaxSize_4</td>
    <td style="vertical-align:top">eventlog.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-addsearchprovider">InternetExplorer/AddSearchProvider</a></td>
    <td style="vertical-align:top">Add a specific list of search providers to the user's list of search providers</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer</td>
    <td style="vertical-align:top">AddSearchProvider</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowactivexfiltering">InternetExplorer/AllowActiveXFiltering</a></td>
    <td style="vertical-align:top">Turn on ActiveX Filtering</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer</td>
    <td style="vertical-align:top">TurnOnActiveXFiltering</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowaddonlist">InternetExplorer/AllowAddOnList</a></td>
    <td style="vertical-align:top">Add-on List</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Security Features/Add-on Management</td>
    <td style="vertical-align:top">AddonManagement_AddOnList</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowenhancedprotectedmode">InternetExplorer/AllowEnhancedProtectedMode</a></td>
    <td style="vertical-align:top">Turn on Enhanced Protected Mode</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Advanced Page</td>
    <td style="vertical-align:top">Advanced_EnableEnhancedProtectedMode</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowenterprisemodefromtoolsmenu">InternetExplorer/AllowEnterpriseModeFromToolsMenu</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowenterprisemodesitelist">InternetExplorer/AllowEnterpriseModeSiteList</a></td>
    <td style="vertical-align:top">Use the Enterprise Mode IE website list</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer</td>
    <td style="vertical-align:top">EnterpriseModeSiteList</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowinternetexplorer7policylist ">InternetExplorer/AllowInternetExplorer7PolicyList </a></td>
    <td style="vertical-align:top">Use Policy List of Internet Explorer 7 sites</td>
    <td style="vertical-align:top">CompatView_UsePolicyList</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowinternetexplorerstandardsmode">InternetExplorer/AllowInternetExplorerStandardsMode</a></td>
    <td style="vertical-align:top">Turn on Internet Explorer Standards Mode for local intranet</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Compatibility View</td>
    <td style="vertical-align:top">CompatView_IntranetSites</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowinternetzonetemplate">InternetExplorer/AllowInternetZoneTemplate</a></td>
    <td style="vertical-align:top">Internet Zone Template</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page</td>
    <td style="vertical-align:top">IZ_PolicyInternetZoneTemplate</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowintranetzonetemplate">InternetExplorer/AllowIntranetZoneTemplate</a></td>
    <td style="vertical-align:top">Intranet Zone Template</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page</td>
    <td style="vertical-align:top">IZ_PolicyIntranetZoneTemplate</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowlocalmachinezonetemplate">InternetExplorer/AllowLocalMachineZoneTemplate</a></td>
    <td style="vertical-align:top">Local Machine Zone Template</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page</td>
    <td style="vertical-align:top">IZ_PolicyLocalMachineZoneTemplate</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowlockeddowninternetzonetemplate">InternetExplorer/AllowLockedDownInternetZoneTemplate</a></td>
    <td style="vertical-align:top">Locked-Down Internet Zone Template</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page</td>
    <td style="vertical-align:top">IZ_PolicyInternetZoneLockdownTemplate</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowlockeddownintranetzonetemplate">InternetExplorer/AllowLockedDownIntranetZoneTemplate</a></td>
    <td style="vertical-align:top">Locked-Down Intranet Zone Template</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page</td>
    <td style="vertical-align:top">IZ_PolicyIntranetZoneLockdownTemplate</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowlockeddownlocalmachinezonetemplate">InternetExplorer/AllowLockedDownLocalMachineZoneTemplate</a></td>
    <td style="vertical-align:top">Locked-Down Local Machine Zone Template</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page</td>
    <td style="vertical-align:top">IZ_PolicyLocalMachineZoneLockdownTemplate</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowlockeddownrestrictedsiteszonetemplate">InternetExplorer/AllowLockedDownRestrictedSitesZoneTemplate</a></td>
    <td style="vertical-align:top">Locked-Down Restricted Sites Zone Template</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page</td>
    <td style="vertical-align:top">IZ_PolicyRestrictedSitesZoneLockdownTemplate</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowonewordentry">InternetExplorer/AllowOneWordEntry</a></td>
    <td style="vertical-align:top">Go to an intranet site for a one-word entry in the Address bar</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Settings/Advanced settings/Browsing</td>
    <td style="vertical-align:top">UseIntranetSiteForOneWordEntry</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowsitetozoneassignmentlist">InternetExplorer/AllowSiteToZoneAssignmentList</a></td>
    <td style="vertical-align:top">Site to Zone Assignment List</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page</td>
    <td style="vertical-align:top">IZ_Zonemaps</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowsuggestedsites">InternetExplorer/AllowSuggestedSites</a></td>
    <td style="vertical-align:top">Turn on Suggested Sites</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer</td>
    <td style="vertical-align:top">EnableSuggestedSites</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowtrustedsiteszonetemplate">InternetExplorer/AllowTrustedSitesZoneTemplate</a></td>
    <td style="vertical-align:top">Trusted Sites Zone Template</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page</td>
    <td style="vertical-align:top">IZ_PolicyTrustedSitesZoneTemplate</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowslockeddowntrustedsiteszonetemplate">InternetExplorer/AllowsLockedDownTrustedSitesZoneTemplate</a></td>
    <td style="vertical-align:top">Locked-Down Trusted Sites Zone Template</td>
    <td style="vertical-align:top">IZ_PolicyTrustedSitesZoneLockdownTemplate</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowsrestrictedsiteszonetemplate">InternetExplorer/AllowsRestrictedSitesZoneTemplate</a></td>
    <td style="vertical-align:top">Restricted Sites Zone Template</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page</td>
    <td style="vertical-align:top">IZ_PolicyRestrictedSitesZoneTemplate</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disableadobeflash">InternetExplorer/DisableAdobeFlash</a></td>
    <td style="vertical-align:top">Turn off Adobe Flash in Internet Explorer and prevent applications from using Internet Explorer technology to instantiate Flash objects</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Security Features/Add-on Management</td>
    <td style="vertical-align:top">DisableFlashInIE</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablebypassofsmartscreenwarnings">InternetExplorer/DisableBypassOfSmartScreenWarnings</a></td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablebypassofsmartscreenwarningsaboutuncommonfiles">InternetExplorer/DisableBypassOfSmartScreenWarningsAboutUncommonFiles</a></td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablecustomerexperienceimprovementprogramparticipation">InternetExplorer/DisableCustomerExperienceImprovementProgramParticipation</a></td>
    <td style="vertical-align:top">Prevent participation in the Customer Experience Improvement Program</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer</td>
    <td style="vertical-align:top">SQM_DisableCEIP</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disableenclosuredownloading">InternetExplorer/DisableEnclosureDownloading</a></td>
    <td style="vertical-align:top">Prevent downloading of enclosures</td>
    <td style="vertical-align:top">Windows Components/RSS Feeds</td>
    <td style="vertical-align:top">Disable_Downloading_of_Enclosures</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disableencryptionsupport">InternetExplorer/DisableEncryptionSupport</a></td>
    <td style="vertical-align:top">Turn off encryption support</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Advanced Page</td>
    <td style="vertical-align:top">Advanced_SetWinInetProtocols</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablefirstrunwizard">InternetExplorer/DisableFirstRunWizard</a></td>
    <td style="vertical-align:top">Prevent running First Run wizard</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer</td>
    <td style="vertical-align:top">NoFirstRunCustomise</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disableflipaheadfeature">InternetExplorer/DisableFlipAheadFeature</a></td>
    <td style="vertical-align:top">Turn off the flip ahead with page prediction feature</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Advanced Page</td>
    <td style="vertical-align:top">Advanced_DisableFlipAhead</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablehomepagechange">InternetExplorer/DisableHomePageChange</a></td>
    <td style="vertical-align:top">Disable changing home page settings</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer</td>
    <td style="vertical-align:top">RestrictHomePage</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disableproxychange">InternetExplorer/DisableProxyChange</a></td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablesearchproviderchange">InternetExplorer/DisableSearchProviderChange</a></td>
    <td style="vertical-align:top">Prevent changing the default search provider</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer</td>
    <td style="vertical-align:top">NoSearchProvider</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablesecondaryhomepagechange">InternetExplorer/DisableSecondaryHomePageChange</a></td>
    <td style="vertical-align:top">Disable changing secondary home page settings</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer</td>
    <td style="vertical-align:top">SecondaryHomePages</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disableupdatecheck">InternetExplorer/DisableUpdateCheck</a></td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-donotallowuserstoaddsites">InternetExplorer/DoNotAllowUsersToAddSites</a></td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-donotallowuserstochangepolicies">InternetExplorer/DoNotAllowUsersToChangePolicies</a></td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-donotblockoutdatedactivexcontrols">InternetExplorer/DoNotBlockOutdatedActiveXControls</a></td>
    <td style="vertical-align:top">Turn off blocking of outdated ActiveX controls for Internet Explorer</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Security Features/Add-on Management</td>
    <td style="vertical-align:top">VerMgmtDisable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-donotblockoutdatedactivexcontrolsonspecificdomains">InternetExplorer/DoNotBlockOutdatedActiveXControlsOnSpecificDomains</a></td>
    <td style="vertical-align:top">Turn off blocking of outdated ActiveX controls for Internet Explorer on specific domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Security Features/Add-on Management</td>
    <td style="vertical-align:top">VerMgmtDomainAllowlist</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-includealllocalsites">InternetExplorer/IncludeAllLocalSites</a></td>
    <td style="vertical-align:top">Intranet Sites: Include all local (intranet) sites not listed in other zones</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page</td>
    <td style="vertical-align:top">IZ_IncludeUnspecifiedLocalSites</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-includeallnetworkpaths">InternetExplorer/IncludeAllNetworkPaths</a></td>
    <td style="vertical-align:top">Intranet Sites: Include all network paths (UNCs)</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page</td>
    <td style="vertical-align:top">IZ_UNCAsIntranet</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowaccesstodatasources">InternetExplorer/InternetZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Access data sources across domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyAccessDataSourcesAcrossDomains_1</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/InternetZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Automatic prompting for ActiveX controls</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarActiveXURLaction_1</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/InternetZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Automatic prompting for file downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarDownloadURLaction_1</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowfontdownloads">InternetExplorer/InternetZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Allow font downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyFontDownload_1</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowlessprivilegedsites">InternetExplorer/InternetZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Web sites in less privileged Web content zones can navigate into this zone</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyZoneElevationURLaction_1</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallownetframeworkreliantcomponents">InternetExplorer/InternetZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Run .NET Framework-reliant components not signed with Authenticode</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyUnsignedFrameworkComponentsURLaction_1</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowscriptlets">InternetExplorer/InternetZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Allow scriptlets</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone</td>
    <td style="vertical-align:top">IZ_Policy_AllowScriptlets_1</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowsmartscreenie">InternetExplorer/InternetZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Turn on SmartScreen Filter scan</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone</td>
    <td style="vertical-align:top">IZ_Policy_Phishing_1</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowuserdatapersistence">InternetExplorer/InternetZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Userdata persistence</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyUserdataPersistence_1</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneinitializeandscriptactivexcontrols">InternetExplorer/InternetZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Initialize and script ActiveX controls not marked as safe</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyScriptActiveXNotMarkedSafe_1</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzonenavigatewindowsandframes">InternetExplorer/InternetZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Navigate windows and frames across different domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyNavigateSubframesAcrossDomains_1</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowaccesstodatasources">InternetExplorer/IntranetZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Access data sources across domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyAccessDataSourcesAcrossDomains_3</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/IntranetZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Automatic prompting for ActiveX controls</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarActiveXURLaction_3</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/IntranetZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Automatic prompting for file downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarDownloadURLaction_3</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowfontdownloads">InternetExplorer/IntranetZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Allow font downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyFontDownload_3</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowlessprivilegedsites">InternetExplorer/IntranetZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Web sites in less privileged Web content zones can navigate into this zone</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyZoneElevationURLaction_3</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallownetframeworkreliantcomponents">InternetExplorer/IntranetZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Run .NET Framework-reliant components not signed with Authenticode</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyUnsignedFrameworkComponentsURLaction_3</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowscriptlets">InternetExplorer/IntranetZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Allow scriptlets</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone</td>
    <td style="vertical-align:top">IZ_Policy_AllowScriptlets_3</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowsmartscreenie">InternetExplorer/IntranetZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Turn on SmartScreen Filter scan</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone</td>
    <td style="vertical-align:top">IZ_Policy_Phishing_3</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowuserdatapersistence">InternetExplorer/IntranetZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Userdata persistence</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyUserdataPersistence_3</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneinitializeandscriptactivexcontrols">InternetExplorer/IntranetZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Initialize and script ActiveX controls not marked as safe</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyScriptActiveXNotMarkedSafe_3</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzonenavigatewindowsandframes">InternetExplorer/IntranetZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Navigate windows and frames across different domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyNavigateSubframesAcrossDomains_3</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowaccesstodatasources">InternetExplorer/LocalMachineZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Access data sources across domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyAccessDataSourcesAcrossDomains_9</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Automatic prompting for ActiveX controls</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarActiveXURLaction_9</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowautomaticpromptingforfiledownloads">InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Automatic prompting for file downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarDownloadURLaction_9</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowfontdownloads">InternetExplorer/LocalMachineZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Allow font downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyFontDownload_9</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowlessprivilegedsites">InternetExplorer/LocalMachineZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Web sites in less privileged Web content zones can navigate into this zone</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyZoneElevationURLaction_9</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallownetframeworkreliantcomponents">InternetExplorer/LocalMachineZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Run .NET Framework-reliant components not signed with Authenticode</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyUnsignedFrameworkComponentsURLaction_9</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowscriptlets">InternetExplorer/LocalMachineZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Allow scriptlets</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone</td>
    <td style="vertical-align:top">IZ_Policy_AllowScriptlets_9</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowsmartscreenie">InternetExplorer/LocalMachineZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Turn on SmartScreen Filter scan</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone</td>
    <td style="vertical-align:top">IZ_Policy_Phishing_9</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowuserdatapersistence">InternetExplorer/LocalMachineZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Userdata persistence</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyUserdataPersistence_9</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneinitializeandscriptactivexcontrols">InternetExplorer/LocalMachineZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Initialize and script ActiveX controls not marked as safe</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyScriptActiveXNotMarkedSafe_9</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezonenavigatewindowsandframes">InternetExplorer/LocalMachineZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Navigate windows and frames across different domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyNavigateSubframesAcrossDomains_9</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowaccesstodatasources">InternetExplorer/LockedDownInternetZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Access data sources across domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyAccessDataSourcesAcrossDomains_2</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Automatic prompting for ActiveX controls</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarActiveXURLaction_2</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Automatic prompting for file downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarDownloadURLaction_2</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowfontdownloads">InternetExplorer/LockedDownInternetZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Allow font downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyFontDownload_2</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowlessprivilegedsites">InternetExplorer/LockedDownInternetZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Web sites in less privileged Web content zones can navigate into this zone</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyZoneElevationURLaction_2</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownInternetZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Run .NET Framework-reliant components not signed with Authenticode</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyUnsignedFrameworkComponentsURLaction_2</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowscriptlets">InternetExplorer/LockedDownInternetZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Allow scriptlets</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone</td>
    <td style="vertical-align:top">IZ_Policy_AllowScriptlets_2</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowsmartscreenie">InternetExplorer/LockedDownInternetZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Turn on SmartScreen Filter scan</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone</td>
    <td style="vertical-align:top">IZ_Policy_Phishing_2</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowuserdatapersistence">InternetExplorer/LockedDownInternetZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Userdata persistence</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyUserdataPersistence_2</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownInternetZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Initialize and script ActiveX controls not marked as safe</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyScriptActiveXNotMarkedSafe_2</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzonenavigatewindowsandframes">InternetExplorer/LockedDownInternetZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Navigate windows and frames across different domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone</td>
    <td style="vertical-align:top">IZ_PolicyNavigateSubframesAcrossDomains_2</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowaccesstodatasources">InternetExplorer/LockedDownIntranetZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Access data sources across domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyAccessDataSourcesAcrossDomains_4</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Automatic prompting for ActiveX controls</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarActiveXURLaction_4</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Automatic prompting for file downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarDownloadURLaction_4</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowfontdownloads">InternetExplorer/LockedDownIntranetZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Allow font downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyFontDownload_4</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowlessprivilegedsites">InternetExplorer/LockedDownIntranetZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Web sites in less privileged Web content zones can navigate into this zone</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyZoneElevationURLaction_4</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownIntranetZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Run .NET Framework-reliant components not signed with Authenticode</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyUnsignedFrameworkComponentsURLaction_4</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowscriptlets">InternetExplorer/LockedDownIntranetZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Allow scriptlets</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone</td>
    <td style="vertical-align:top">IZ_Policy_AllowScriptlets_4</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowsmartscreenie">InternetExplorer/LockedDownIntranetZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Turn on SmartScreen Filter scan</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone</td>
    <td style="vertical-align:top">IZ_Policy_Phishing_4</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowuserdatapersistence">InternetExplorer/LockedDownIntranetZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Userdata persistence</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyUserdataPersistence_4</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownIntranetZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Initialize and script ActiveX controls not marked as safe</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyScriptActiveXNotMarkedSafe_4</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzonenavigatewindowsandframes">InternetExplorer/LockedDownIntranetZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Navigate windows and frames across different domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone</td>
    <td style="vertical-align:top">IZ_PolicyNavigateSubframesAcrossDomains_4</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowaccesstodatasources">InternetExplorer/LockedDownLocalMachineZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Access data sources across domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyAccessDataSourcesAcrossDomains_10</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Automatic prompting for ActiveX controls</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarActiveXURLaction_10</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Automatic prompting for file downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarDownloadURLaction_10</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowfontdownloads">InternetExplorer/LockedDownLocalMachineZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Allow font downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyFontDownload_10</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowlessprivilegedsites">InternetExplorer/LockedDownLocalMachineZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Web sites in less privileged Web content zones can navigate into this zone</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyZoneElevationURLaction_10</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Run .NET Framework-reliant components not signed with Authenticode</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyUnsignedFrameworkComponentsURLaction_10</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowscriptlets">InternetExplorer/LockedDownLocalMachineZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Allow scriptlets</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone</td>
    <td style="vertical-align:top">IZ_Policy_AllowScriptlets_10</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowsmartscreenie">InternetExplorer/LockedDownLocalMachineZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Turn on SmartScreen Filter scan</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone</td>
    <td style="vertical-align:top">IZ_Policy_Phishing_10</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowuserdatapersistence">InternetExplorer/LockedDownLocalMachineZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Userdata persistence</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyUserdataPersistence_10</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownLocalMachineZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Initialize and script ActiveX controls not marked as safe</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyScriptActiveXNotMarkedSafe_10</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezonenavigatewindowsandframes">InternetExplorer/LockedDownLocalMachineZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Navigate windows and frames across different domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone</td>
    <td style="vertical-align:top">IZ_PolicyNavigateSubframesAcrossDomains_10</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowaccesstodatasources">InternetExplorer/LockedDownRestrictedSitesZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Access data sources across domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyAccessDataSourcesAcrossDomains_8</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Automatic prompting for ActiveX controls</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarActiveXURLaction_8</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Automatic prompting for file downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarDownloadURLaction_8</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowfontdownloads">InternetExplorer/LockedDownRestrictedSitesZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Allow font downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyFontDownload_8</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowlessprivilegedsites">InternetExplorer/LockedDownRestrictedSitesZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Web sites in less privileged Web content zones can navigate into this zone</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyZoneElevationURLaction_8</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Run .NET Framework-reliant components not signed with Authenticode</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyUnsignedFrameworkComponentsURLaction_8</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowscriptlets">InternetExplorer/LockedDownRestrictedSitesZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Allow scriptlets</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_Policy_AllowScriptlets_8</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowsmartscreenie">InternetExplorer/LockedDownRestrictedSitesZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Turn on SmartScreen Filter scan</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_Policy_Phishing_8</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowuserdatapersistence">InternetExplorer/LockedDownRestrictedSitesZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Userdata persistence</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyUserdataPersistence_8</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Initialize and script ActiveX controls not marked as safe</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyScriptActiveXNotMarkedSafe_8</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszonenavigatewindowsandframes">InternetExplorer/LockedDownRestrictedSitesZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Navigate windows and frames across different domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyNavigateSubframesAcrossDomains_8</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowaccesstodatasources">InternetExplorer/LockedDownTrustedSitesZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Access data sources across domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyAccessDataSourcesAcrossDomains_6</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Automatic prompting for ActiveX controls</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarActiveXURLaction_6</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Automatic prompting for file downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarDownloadURLaction_6</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowfontdownloads">InternetExplorer/LockedDownTrustedSitesZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Allow font downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyFontDownload_6</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowlessprivilegedsites">InternetExplorer/LockedDownTrustedSitesZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Web sites in less privileged Web content zones can navigate into this zone</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyZoneElevationURLaction_6</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Run .NET Framework-reliant components not signed with Authenticode</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyUnsignedFrameworkComponentsURLaction_6</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowscriptlets">InternetExplorer/LockedDownTrustedSitesZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Allow scriptlets</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_Policy_AllowScriptlets_6</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowsmartscreenie">InternetExplorer/LockedDownTrustedSitesZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Turn on SmartScreen Filter scan</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_Policy_Phishing_6</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowuserdatapersistence">InternetExplorer/LockedDownTrustedSitesZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Userdata persistence</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyUserdataPersistence_6</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Initialize and script ActiveX controls not marked as safe</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyScriptActiveXNotMarkedSafe_6</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszonenavigatewindowsandframes">InternetExplorer/LockedDownTrustedSitesZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Navigate windows and frames across different domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyNavigateSubframesAcrossDomains_6</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowaccesstodatasources">InternetExplorer/RestrictedSitesZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Access data sources across domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyAccessDataSourcesAcrossDomains_7</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Automatic prompting for ActiveX controls</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarActiveXURLaction_7</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Automatic prompting for file downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarDownloadURLaction_7</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowfontdownloads">InternetExplorer/RestrictedSitesZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Allow font downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyFontDownload_7</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowlessprivilegedsites">InternetExplorer/RestrictedSitesZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Web sites in less privileged Web content zones can navigate into this zone</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyZoneElevationURLaction_7</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/RestrictedSitesZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Run .NET Framework-reliant components not signed with Authenticode</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyUnsignedFrameworkComponentsURLaction_7</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowscriptlets">InternetExplorer/RestrictedSitesZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Allow scriptlets</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_Policy_AllowScriptlets_7</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowsmartscreenie">InternetExplorer/RestrictedSitesZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Turn on SmartScreen Filter scan</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_Policy_Phishing_7</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowuserdatapersistence">InternetExplorer/RestrictedSitesZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Userdata persistence</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyUserdataPersistence_7</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/RestrictedSitesZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Initialize and script ActiveX controls not marked as safe</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyScriptActiveXNotMarkedSafe_7</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszonenavigatewindowsandframes">InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Navigate windows and frames across different domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyNavigateSubframesAcrossDomains_7</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-searchproviderlist">InternetExplorer/SearchProviderList</a></td>
    <td style="vertical-align:top">Restrict search providers to a specific list</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer</td>
    <td style="vertical-align:top">SpecificSearchProvider</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowaccesstodatasources">InternetExplorer/TrustedSitesZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Access data sources across domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyAccessDataSourcesAcrossDomains_5</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Automatic prompting for ActiveX controls</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarActiveXURLaction_5</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Automatic prompting for file downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyNotificationBarDownloadURLaction_5</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowfontdownloads">InternetExplorer/TrustedSitesZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Allow font downloads</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyFontDownload_5</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowlessprivilegedsites">InternetExplorer/TrustedSitesZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Web sites in less privileged Web content zones can navigate into this zone</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyZoneElevationURLaction_5</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/TrustedSitesZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Run .NET Framework-reliant components not signed with Authenticode</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyUnsignedFrameworkComponentsURLaction_5</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowscriptlets">InternetExplorer/TrustedSitesZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Allow scriptlets</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_Policy_AllowScriptlets_5</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowsmartscreenie">InternetExplorer/TrustedSitesZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Turn on SmartScreen Filter scan</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_Policy_Phishing_5</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowuserdatapersistence">InternetExplorer/TrustedSitesZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Userdata persistence</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyUserdataPersistence_5</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/TrustedSitesZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Initialize and script ActiveX controls not marked as safe</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyScriptActiveXNotMarkedSafe_5</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszonenavigatewindowsandframes">InternetExplorer/TrustedSitesZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Navigate windows and frames across different domains</td>
    <td style="vertical-align:top">Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone</td>
    <td style="vertical-align:top">IZ_PolicyNavigateSubframesAcrossDomains_5</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#kerberos-allowforestsearchorder">Kerberos/AllowForestSearchOrder</a></td>
    <td style="vertical-align:top">&nbsp;</td>
    <td style="vertical-align:top">ForestSearch</td>
    <td style="vertical-align:top">Kerberos.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#kerberos-kerberosclientsupportsclaimscompoundarmor">Kerberos/KerberosClientSupportsClaimsCompoundArmor</a></td>
    <td style="vertical-align:top">Kerberos client support for claims, compound authentication and Kerberos armoring</td>
    <td style="vertical-align:top">System/Kerberos</td>
    <td style="vertical-align:top">EnableCbacAndArmor</td>
    <td style="vertical-align:top">Kerberos.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#kerberos-requirekerberosarmoring">Kerberos/RequireKerberosArmoring</a></td>
    <td style="vertical-align:top">Fail authentication requests when Kerberos armoring is not available</td>
    <td style="vertical-align:top">System/Kerberos</td>
    <td style="vertical-align:top">ClientRequireFast</td>
    <td style="vertical-align:top">Kerberos.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#kerberos-requirestrictkdcvalidation">Kerberos/RequireStrictKDCValidation</a></td>
    <td style="vertical-align:top">Require strict KDC validation</td>
    <td style="vertical-align:top">System/Kerberos</td>
    <td style="vertical-align:top">ValidateKDC</td>
    <td style="vertical-align:top">Kerberos.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#kerberos-setmaximumcontexttokensize">Kerberos/SetMaximumContextTokenSize</a></td>
    <td style="vertical-align:top">Set maximum Kerberos SSPI context token buffer size</td>
    <td style="vertical-align:top">System/Kerberos</td>
    <td style="vertical-align:top">MaxTokenSize</td>
    <td style="vertical-align:top">Kerberos.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#power-allowstandbywhensleepingpluggedin">Power/AllowStandbyWhenSleepingPluggedIn</a></td>
    <td style="vertical-align:top">Allow standby states (S1-S3) when sleeping (plugged in)</td>
    <td style="vertical-align:top">System/Power Management/Sleep Settings</td>
    <td style="vertical-align:top">AllowStandbyStatesAC_2</td>
    <td style="vertical-align:top">power.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#power-requirepasswordwhencomputerwakesonbattery">Power/RequirePasswordWhenComputerWakesOnBattery</a></td>
    <td style="vertical-align:top">Require a password when a computer wakes (on battery)</td>
    <td style="vertical-align:top">System/Power Management/Sleep Settings</td>
    <td style="vertical-align:top">DCPromptForPasswordOnResume_2</td>
    <td style="vertical-align:top">power.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#power-requirepasswordwhencomputerwakespluggedin">Power/RequirePasswordWhenComputerWakesPluggedIn</a></td>
    <td style="vertical-align:top">Require a password when a computer wakes (plugged in)</td>
    <td style="vertical-align:top">System/Power Management/Sleep Settings</td>
    <td style="vertical-align:top">ACPromptForPasswordOnResume_2</td>
    <td style="vertical-align:top">power.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#printers-pointandprintrestrictions">Printers/PointAndPrintRestrictions</a></td>
    <td style="vertical-align:top">Point and Print Restrictions</td>
    <td style="vertical-align:top">Printers</td>
    <td style="vertical-align:top">PointAndPrint_Restrictions_Win7</td>
    <td style="vertical-align:top">Printing.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#printers-pointandprintrestrictions_user">Printers/PointAndPrintRestrictions_User</a></td>
    <td style="vertical-align:top">Point and Print Restrictions</td>
    <td style="vertical-align:top">PointAndPrint_Restrictions</td>
    <td style="vertical-align:top">Printing.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#printers-publishprinters">Printers/PublishPrinters</a></td>
    <td style="vertical-align:top">Allow printers to be published</td>
    <td style="vertical-align:top">Printers</td>
    <td style="vertical-align:top">PublishPrinters</td>
    <td style="vertical-align:top">Printing2.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remoteassistance-customizewarningmessages">RemoteAssistance/CustomizeWarningMessages</a></td>
    <td style="vertical-align:top">Customize warning messages</td>
    <td style="vertical-align:top">System/Remote Assistance</td>
    <td style="vertical-align:top">RA_Options</td>
    <td style="vertical-align:top">remoteassistance.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remoteassistance-sessionlogging">RemoteAssistance/SessionLogging</a></td>
    <td style="vertical-align:top">Turn on session logging</td>
    <td style="vertical-align:top">System/Remote Assistance</td>
    <td style="vertical-align:top">RA_Logging</td>
    <td style="vertical-align:top">remoteassistance.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remoteassistance-solicitedremoteassistance">RemoteAssistance/SolicitedRemoteAssistance</a></td>
    <td style="vertical-align:top">Configure Solicited Remote Assistance</td>
    <td style="vertical-align:top">System/Remote Assistance</td>
    <td style="vertical-align:top">RA_Solicit</td>
    <td style="vertical-align:top">remoteassistance.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remoteassistance-unsolicitedremoteassistance">RemoteAssistance/UnsolicitedRemoteAssistance</a></td>
    <td style="vertical-align:top">Configure Offer Remote Assistance</td>
    <td style="vertical-align:top">RA_Unsolicit</td>
    <td style="vertical-align:top">remoteassistance.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remotedesktopservices-allowuserstoconnectremotely">RemoteDesktopServices/AllowUsersToConnectRemotely</a></td>
    <td style="vertical-align:top">Allow users to connect remotely by using Remote Desktop Services</td>
    <td style="vertical-align:top">Windows Components/Remote Desktop Services/Remote Desktop Session Host/Connections</td>
    <td style="vertical-align:top">TS_DISABLE_CONNECTIONS</td>
    <td style="vertical-align:top">terminalserver.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remotedesktopservices-clientconnectionencryptionlevel">RemoteDesktopServices/ClientConnectionEncryptionLevel</a></td>
    <td style="vertical-align:top">Set client connection encryption level</td>
    <td style="vertical-align:top">Windows Components/Remote Desktop Services/Remote Desktop Session Host/Security</td>
    <td style="vertical-align:top">TS_ENCRYPTION_POLICY</td>
    <td style="vertical-align:top">terminalserver.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remotedesktopservices-donotallowdriveredirection">RemoteDesktopServices/DoNotAllowDriveRedirection</a></td>
    <td style="vertical-align:top">Do not allow drive redirection</td>
    <td style="vertical-align:top">Windows Components/Remote Desktop Services/Remote Desktop Session Host/Device and Resource Redirection</td>
    <td style="vertical-align:top">TS_CLIENT_DRIVE_M</td>
    <td style="vertical-align:top">terminalserver.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remotedesktopservices-donotallowpasswordsaving">RemoteDesktopServices/DoNotAllowPasswordSaving</a></td>
    <td style="vertical-align:top">Do not allow passwords to be saved</td>
    <td style="vertical-align:top">Windows Components/Remote Desktop Services/Remote Desktop Connection Client</td>
    <td style="vertical-align:top">TS_CLIENT_DISABLE_PASSWORD_SAVING_2</td>
    <td style="vertical-align:top">terminalserver.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remotedesktopservices-promptforpassworduponconnection">RemoteDesktopServices/PromptForPasswordUponConnection</a></td>
    <td style="vertical-align:top">Always prompt for password upon connection</td>
    <td style="vertical-align:top">Windows Components/Remote Desktop Services/Remote Desktop Session Host/Security</td>
    <td style="vertical-align:top">TS_PASSWORD</td>
    <td style="vertical-align:top">terminalserver.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remotedesktopservices-requiresecurerpccommunication">RemoteDesktopServices/RequireSecureRPCCommunication</a></td>
    <td style="vertical-align:top">Require secure RPC communication</td>
    <td style="vertical-align:top">Windows Components/Remote Desktop Services/Remote Desktop Session Host/Security</td>
    <td style="vertical-align:top">TS_RPC_ENCRYPTION</td>
    <td style="vertical-align:top">terminalserver.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remoteprocedurecall-rpcendpointmapperclientauthentication">RemoteProcedureCall/RPCEndpointMapperClientAuthentication</a></td>
    <td style="vertical-align:top">Enable RPC Endpoint Mapper Client Authentication</td>
    <td style="vertical-align:top">System/Remote Procedure Call</td>
    <td style="vertical-align:top">RpcEnableAuthEpResolution</td>
    <td style="vertical-align:top">rpc.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remoteprocedurecall-restrictunauthenticatedrpcclients">RemoteProcedureCall/RestrictUnauthenticatedRPCClients</a></td>
    <td style="vertical-align:top">Restrict Unauthenticated RPC clients</td>
    <td style="vertical-align:top">System/Remote Procedure Call</td>
    <td style="vertical-align:top">RpcRestrictRemoteClients</td>
    <td style="vertical-align:top">rpc.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#storage-enhancedstoragedevices">Storage/EnhancedStorageDevices</a></td>
    <td style="vertical-align:top">Do not allow Windows to activate Enhanced Storage devices</td>
    <td style="vertical-align:top">System/Enhanced Storage Access</td>
    <td style="vertical-align:top">TCGSecurityActivationDisabled</td>
    <td style="vertical-align:top">enhancedstorage.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#system-bootstartdriverinitialization">System/BootStartDriverInitialization</a></td>
    <td style="vertical-align:top">Boot-Start Driver Initialization Policy</td>
    <td style="vertical-align:top">System/Early Launch Antimalware</td>
    <td style="vertical-align:top">POL_DriverLoadPolicy_Name</td>
    <td style="vertical-align:top">earlylauncham.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#system-disablesystemrestore">System/DisableSystemRestore</a></td>
    <td style="vertical-align:top">Turn off System Restore</td>
    <td style="vertical-align:top">System/System Restore</td>
    <td style="vertical-align:top">SR_DisableSR</td>
    <td style="vertical-align:top">systemrestore.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#windowslogon-disablelockscreenappnotifications">WindowsLogon/DisableLockScreenAppNotifications</a></td>
    <td style="vertical-align:top">Turn off app notifications on the lock screen</td>
    <td style="vertical-align:top">System/Logon</td>
    <td style="vertical-align:top">DisableLockScreenAppNotifications</td>
    <td style="vertical-align:top">logon.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#windowslogon-dontdisplaynetworkselectionui">WindowsLogon/DontDisplayNetworkSelectionUI</a></td>
    <td style="vertical-align:top">Do not display network selection UI</td>
    <td style="vertical-align:top">System/Logon</td>
    <td style="vertical-align:top">DontDisplayNetworkSelectionUI</td>
    <td style="vertical-align:top">logon.admx</td>
  </tr>
</table>
<!-- ADMX-TABLE-END -->

## <a href="" id="list-of--areaname---policyname-"></a>List of &lt;AreaName&gt;/&lt;PolicyName&gt;

<!-- ADMX-DESCRIPTIONS-START -->
<a href="" id="activexcontrols-approvedinstallationsites"></a>**ActiveXControls/ApprovedInstallationSites**

<p style="margin-left: 20px">This policy setting determines which ActiveX installation sites standard users in your organization can use to install ActiveX controls on their computers. When this setting is enabled, the administrator can create a list of approved Activex Install sites specified by host URL. </p>

<p style="margin-left: 20px">If you enable this setting, the administrator can create a list of approved ActiveX Install sites specified by host URL. 
      
If you disable or do not configure this policy setting, ActiveX controls prompt the user for administrative credentials before installation. </p>

<p style="margin-left: 20px">Note: Wild card characters cannot be used when specifying the host URLs.
</p>

<a href="" id="appvirtualization-allowappvclient"></a>**AppVirtualization/AllowAppVClient**

<p style="margin-left: 20px">This policy setting allows you to enable or disable Microsoft Application Virtualization (App-V) feature. Reboot is needed for disable to take effect.</p>

<a href="" id="appvirtualization-allowdynamicvirtualization"></a>**AppVirtualization/AllowDynamicVirtualization**

<p style="margin-left: 20px">Enables Dynamic Virtualization of supported shell extensions, browser helper objects, and ActiveX controls.</p>

<a href="" id="appvirtualization-allowpackagecleanup"></a>**AppVirtualization/AllowPackageCleanup**

<p style="margin-left: 20px">N/A</p>

<a href="" id="appvirtualization-allowpackagescripts"></a>**AppVirtualization/AllowPackageScripts**

<p style="margin-left: 20px">Enables scripts defined in the package manifest of configuration files that should run.</p>

<a href="" id="appvirtualization-allowpublishingrefreshux"></a>**AppVirtualization/AllowPublishingRefreshUX**

<p style="margin-left: 20px">Enables a UX to display to the user when a publishing refresh is performed on the client.</p>

<a href="" id="appvirtualization-allowreportingserver"></a>**AppVirtualization/AllowReportingServer**

<p style="margin-left: 20px">Reporting Server URL: Displays the URL of reporting server.</p>

<p style="margin-left: 20px">      Reporting Time: When the client data should be reported to the server. Acceptable range is 0~23, corresponding to the 24 hours in a day. A good practice is, don't set this time to a busy hour, e.g. 9AM.
      
      Delay reporting for the random minutes: The maximum minutes of random delay on top of the reporting time. For a busy system, the random delay will help reduce the server load.
      
      Repeat reporting for every (days): The periodical interval in days for sending the reporting data.
      
      Data Cache Limit: This value specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The default value is 20 MB. The size applies to the cache in memory. When the limit is reached, the log file will roll over. When a new record is to be added (bottom of the list), one or more of the oldest records (top of the list) will be deleted to make room. A warning will be logged to the Client log and the event log the first time this occurs, and will not be logged again until after the cache has been successfully cleared on transmission and the log has filled up again.</p>

<p style="margin-left: 20px">      Data Block Size: This value specifies the maximum size in bytes to transmit to the server at once on a reporting upload, to avoid permanent transmission failures when the log has reached a significant size. The  default value is 65536. When transmitting report data to the server, one block at a time of application records that is less than or equal to the block size in bytes of XML data will be removed from the cache and sent to the server. Each block will have the general Client data and global package list data prepended, and these will not factor into the block size calculations; the potential exists for an extremely large package list to result in transmission failures over low bandwidth or unreliable connections.
      </p>

<a href="" id="appvirtualization-allowroamingfileexclusions"></a>**AppVirtualization/AllowRoamingFileExclusions**

<p style="margin-left: 20px">Specifies the file paths relative to %userprofile% that do not roam with a user's profile. Example usage: /FILEEXCLUSIONLIST='desktop;my pictures'.</p>

<a href="" id="appvirtualization-allowroamingregistryexclusions"></a>**AppVirtualization/AllowRoamingRegistryExclusions**

<p style="margin-left: 20px">Specifies the registry paths that do not roam with a user profile. Example usage: /REGISTRYEXCLUSIONLIST=software\classes;software\clients.</p>

<a href="" id="appvirtualization-allowstreamingautoload"></a>**AppVirtualization/AllowStreamingAutoload**

<p style="margin-left: 20px">Specifies how new packages should be loaded automatically by App-V on a specific computer.</p>

<a href="" id="appvirtualization-clientcoexistenceallowmigrationmode"></a>**AppVirtualization/ClientCoexistenceAllowMigrationmode**

<p style="margin-left: 20px">Migration mode allows the App-V client to modify shortcuts and FTA's for packages created using a previous version of App-V.</p>

<a href="" id="appvirtualization-integrationallowrootglobal"></a>**AppVirtualization/IntegrationAllowRootGlobal**

<p style="margin-left: 20px">Specifies the location where symbolic links are created to the current version of a per-user published package. Shortcuts, file type associations, etc. are created pointing to this path. If empty, symbolic links are not used during publishing. Example: %localappdata%\Microsoft\AppV\Client\Integration.</p>

<a href="" id="appvirtualization-integrationallowrootuser"></a>**AppVirtualization/IntegrationAllowRootUser**

<p style="margin-left: 20px">Specifies the location where symbolic links are created to the current version of a globally published package. Shortcuts, file type associations, etc. are created pointing to this path. If empty, symbolic links are not used during publishing. Example: %allusersprofile%\Microsoft\AppV\Client\Integration.</p>

<a href="" id="appvirtualization-publishingallowserver1"></a>**AppVirtualization/PublishingAllowServer1**

<p style="margin-left: 20px">      Publishing Server Display Name: Displays the name of publishing server.
      
      Publishing Server URL: Displays the URL of publishing server.
      
      Global Publishing Refresh: Enables global publishing refresh (Boolean).
      
      Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).
      
      Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.
      
      Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
      
      User Publishing Refresh: Enables user publishing refresh (Boolean).
      
      User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).
      
      User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.
      
      User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
      </p>

<a href="" id="appvirtualization-publishingallowserver2"></a>**AppVirtualization/PublishingAllowServer2**

<p style="margin-left: 20px">      Publishing Server Display Name: Displays the name of publishing server.
      
      Publishing Server URL: Displays the URL of publishing server.
      
      Global Publishing Refresh: Enables global publishing refresh (Boolean).
      
      Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).
      
      Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.
      
      Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
      
      User Publishing Refresh: Enables user publishing refresh (Boolean).
      
      User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).
      
      User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.
      
      User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
      </p>

<a href="" id="appvirtualization-publishingallowserver3"></a>**AppVirtualization/PublishingAllowServer3**

<p style="margin-left: 20px">      Publishing Server Display Name: Displays the name of publishing server.
      
      Publishing Server URL: Displays the URL of publishing server.
      
      Global Publishing Refresh: Enables global publishing refresh (Boolean).
      
      Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).
      
      Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.
      
      Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
      
      User Publishing Refresh: Enables user publishing refresh (Boolean).
      
      User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).
      
      User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.
      
      User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
      </p>

<a href="" id="appvirtualization-publishingallowserver4"></a>**AppVirtualization/PublishingAllowServer4**

<p style="margin-left: 20px">      Publishing Server Display Name: Displays the name of publishing server.
      
      Publishing Server URL: Displays the URL of publishing server.
      
      Global Publishing Refresh: Enables global publishing refresh (Boolean).
      
      Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).
      
      Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.
      
      Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
      
      User Publishing Refresh: Enables user publishing refresh (Boolean).
      
      User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).
      
      User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.
      
      User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
      </p>

<a href="" id="appvirtualization-publishingallowserver5"></a>**AppVirtualization/PublishingAllowServer5**

<p style="margin-left: 20px">      Publishing Server Display Name: Displays the name of publishing server.
      
      Publishing Server URL: Displays the URL of publishing server.
      
      Global Publishing Refresh: Enables global publishing refresh (Boolean).
      
      Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).
      
      Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.
      
      Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
      
      User Publishing Refresh: Enables user publishing refresh (Boolean).
      
      User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).
      
      User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.
      
      User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
      </p>

<a href="" id="appvirtualization-streamingallowcertificatefilterforclient_ssl"></a>**AppVirtualization/StreamingAllowCertificateFilterForClient_SSL**

<p style="margin-left: 20px">Specifies the path to a valid certificate in the certificate store.</p>

<a href="" id="appvirtualization-streamingallowhighcostlaunch"></a>**AppVirtualization/StreamingAllowHighCostLaunch**

<p style="margin-left: 20px">This setting controls whether virtualized applications are launched on Windows 8 machines connected via a metered network connection (e.g. 4G).</p>

<a href="" id="appvirtualization-streamingallowlocationprovider"></a>**AppVirtualization/StreamingAllowLocationProvider**

<p style="margin-left: 20px">Specifies the CLSID for a compatible implementation of the IAppvPackageLocationProvider interface.</p>

<a href="" id="appvirtualization-streamingallowpackageinstallationroot"></a>**AppVirtualization/StreamingAllowPackageInstallationRoot**

<p style="margin-left: 20px">Specifies directory where all new applications and updates will be installed.</p>

<a href="" id="appvirtualization-streamingallowpackagesourceroot"></a>**AppVirtualization/StreamingAllowPackageSourceRoot**

<p style="margin-left: 20px">Overrides source location for downloading package content.</p>

<a href="" id="appvirtualization-streamingallowreestablishmentinterval"></a>**AppVirtualization/StreamingAllowReestablishmentInterval**

<p style="margin-left: 20px">Specifies the number of seconds between attempts to reestablish a dropped session.</p>

<a href="" id="appvirtualization-streamingallowreestablishmentretries"></a>**AppVirtualization/StreamingAllowReestablishmentRetries**

<p style="margin-left: 20px">Specifies the number of times to retry a dropped session.</p>

<a href="" id="appvirtualization-streamingsharedcontentstoremode"></a>**AppVirtualization/StreamingSharedContentStoreMode**

<p style="margin-left: 20px">Specifies that streamed package contents will be not be saved to the local hard disk.</p>

<a href="" id="appvirtualization-streamingsupportbranchcache"></a>**AppVirtualization/StreamingSupportBranchCache**

<p style="margin-left: 20px">If enabled, the App-V client will support BrancheCache compatible HTTP streaming. If BranchCache support is not desired, this should be disabled. The client can then apply HTTP optimizations which are incompatible with BranchCache</p>

<a href="" id="appvirtualization-streamingverifycertificaterevocationlist"></a>**AppVirtualization/StreamingVerifyCertificateRevocationList**

<p style="margin-left: 20px">Verifies Server certificate revocation status before streaming using HTTPS.</p>

<a href="" id="appvirtualization-virtualcomponentsallowlist"></a>**AppVirtualization/VirtualComponentsAllowList**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="attachmentmanager-donotpreservezoneinformation"></a>**AttachmentManager/DoNotPreserveZoneInformation**

<p style="margin-left: 20px">This policy setting allows you to manage whether Windows marks file attachments with information about their zone of origin (such as restricted, Internet, intranet, local). This requires NTFS in order to function correctly, and will fail without notice on FAT32. By not preserving the zone information, Windows cannot make proper risk assessments.</p>

<p style="margin-left: 20px">If you enable this policy setting, Windows does not mark file attachments with their zone information.</p>

<p style="margin-left: 20px">If you disable this policy setting, Windows marks file attachments with their zone information.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Windows marks file attachments with their zone information.</p>

<a href="" id="attachmentmanager-hidezoneinfomechanism"></a>**AttachmentManager/HideZoneInfoMechanism**

<p style="margin-left: 20px">This policy setting allows you to manage whether users can manually remove the zone information from saved file attachments by clicking the Unblock button in the file's property sheet or by using a check box in the security warning dialog. Removing the zone information allows users to open potentially dangerous file attachments that Windows has blocked users from opening.</p>

<p style="margin-left: 20px">If you enable this policy setting, Windows hides the check box and Unblock button.</p>

<p style="margin-left: 20px">If you disable this policy setting, Windows shows the check box and Unblock button.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Windows hides the check box and Unblock button.</p>

<a href="" id="attachmentmanager-notifyantivirusprograms"></a>**AttachmentManager/NotifyAntivirusPrograms**

<p style="margin-left: 20px">This policy setting allows you to manage the behavior for notifying registered antivirus programs. If multiple programs are registered, they will all be notified. If the registered antivirus program already performs on-access checks or scans files as they arrive on the computer's email server, additional calls would be redundant. </p>

<p style="margin-left: 20px">If you enable this policy setting, Windows tells the registered antivirus program to scan the file when a user opens a file attachment. If the antivirus program fails, the attachment is blocked from being opened.</p>

<p style="margin-left: 20px">If you disable this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.</p>

<a href="" id="autoplay-disallowautoplayfornonvolumedevices"></a>**Autoplay/DisallowAutoplayForNonVolumeDevices**

<p style="margin-left: 20px">This policy setting disallows AutoPlay for MTP devices like cameras or phones.</p>

<p style="margin-left: 20px">          If you enable this policy setting, AutoPlay is not allowed for MTP devices like cameras or phones.</p>

<p style="margin-left: 20px">          If you disable or do not configure this policy setting, AutoPlay is enabled for non-volume devices.</p>

<a href="" id="autoplay-setdefaultautorunbehavior"></a>**Autoplay/SetDefaultAutoRunBehavior**

<p style="margin-left: 20px">This policy setting sets the default behavior for Autorun commands.</p>

<p style="margin-left: 20px">          Autorun commands are generally stored in autorun.inf files. They often launch the installation program or other routines.</p>

<p style="margin-left: 20px">          Prior to Windows Vista, when media containing an autorun command is inserted, the system will automatically execute the program without user intervention.</p>

<p style="margin-left: 20px">          This creates a major security concern as code may be executed without user's knowledge. The default behavior starting with Windows Vista is to prompt the user whether autorun command is to be run. The autorun command is represented as a handler in the Autoplay dialog.</p>

<p style="margin-left: 20px">          If you enable this policy setting, an Administrator can change the default Windows Vista or later behavior for autorun to:</p>

<p style="margin-left: 20px">          a) Completely disable autorun commands, or
          b) Revert back to pre-Windows Vista behavior of automatically executing the autorun command.</p>

<p style="margin-left: 20px">          If you disable or not configure this policy setting, Windows Vista or later will prompt the user whether autorun command is to be run.</p>

<a href="" id="autoplay-turnoffautoplay"></a>**Autoplay/TurnOffAutoPlay**

<p style="margin-left: 20px">This policy setting allows you to turn off the Autoplay feature.</p>

<p style="margin-left: 20px">          Autoplay begins reading from a drive as soon as you insert media in the drive. As a result, the setup file of programs and the music on audio media start immediately.</p>

<p style="margin-left: 20px">          Prior to Windows XP SP2, Autoplay is disabled by default on removable drives, such as the floppy disk drive (but not the CD-ROM drive), and on network drives.</p>

<p style="margin-left: 20px">          Starting with Windows XP SP2, Autoplay is enabled for removable drives as well, including Zip drives and some USB mass storage devices.</p>

<p style="margin-left: 20px">          If you enable this policy setting, Autoplay is disabled on CD-ROM and removable media drives, or disabled on all drives.</p>

<p style="margin-left: 20px">          This policy setting disables Autoplay on additional types of drives. You cannot use this setting to enable Autoplay on drives on which it is disabled by default.</p>

<p style="margin-left: 20px">          If you disable or do not configure this policy setting, AutoPlay is enabled.</p>

<p style="margin-left: 20px">          Note: This policy setting appears in both the Computer Configuration and User Configuration folders. If the policy settings conflict, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.</p>

<a href="" id="connectivity-hardeneduncpaths"></a>**Connectivity/HardenedUNCPaths**

<p style="margin-left: 20px">This policy setting configures secure access to UNC paths.</p>

<p style="margin-left: 20px">If you enable this policy, Windows only allows access to the specified UNC paths after fulfilling additional security requirements.
</p>

<a href="" id="credentialproviders-allowpinlogon"></a>**CredentialProviders/AllowPINLogon**

<p style="margin-left: 20px">This policy setting allows you to control whether a domain user can sign in using a convenience PIN. In Windows 10, convenience PIN was replaced with Windows Hello PIN, which has stronger security properties. To configure Windows Hello for Business, use the policies under Computer configuration\Administrative Templates\Windows Components\Windows Hello for Business.</p>

<p style="margin-left: 20px">If you enable this policy setting, a domain user can set up and sign in with a convenience PIN. </p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, a domain user can't set up and use a convenience PIN.</p>

<p style="margin-left: 20px">Note that the user's domain password will be cached in the system vault when using this feature.</p>

<a href="" id="credentialproviders-blockpicturepassword"></a>**CredentialProviders/BlockPicturePassword**

<p style="margin-left: 20px">This policy setting allows you to control whether a domain user can sign in using a picture password.</p>

<p style="margin-left: 20px">If you enable this policy setting, a domain user can't set up or sign in with a picture password. </p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, a domain user can set up and use a picture password.</p>

<p style="margin-left: 20px">Note that the user's domain password will be cached in the system vault when using this feature.</p>

<a href="" id="credentialsui-disablepasswordreveal"></a>**CredentialsUI/DisablePasswordReveal**

<p style="margin-left: 20px">This policy setting allows you to configure the display of the password reveal button in password entry user experiences.</p>

<p style="margin-left: 20px">If you enable this policy setting, the password reveal button will not be displayed after a user types a password in the password entry text box.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the password reveal button will be displayed after a user types a password in the password entry text box.</p>

<p style="margin-left: 20px">By default, the password reveal button is displayed after a user types a password in the password entry text box. To display the password, click the password reveal button.</p>

<p style="margin-left: 20px">The policy applies to all Windows components and applications that use the Windows system controls, including Internet Explorer.</p>

<a href="" id="credentialsui-enumerateadministrators"></a>**CredentialsUI/EnumerateAdministrators**

<p style="margin-left: 20px">This policy setting controls whether administrator accounts are displayed when a user attempts to elevate a running application. By default, administrator accounts are not displayed when the user attempts to elevate a running application.</p>

<p style="margin-left: 20px">If you enable this policy setting, all local administrator accounts on the PC will be displayed so the user can choose one and enter the correct password.</p>

<p style="margin-left: 20px">If you disable this policy setting, users will always be required to type a user name and password to elevate.</p>

<a href="" id="datausage-setcost3g"></a>**DataUsage/SetCost3G**

<p style="margin-left: 20px">This policy setting configures the cost of 3G connections on the local machine.</p>

<p style="margin-left: 20px">If this policy setting is enabled, a drop-down list box presenting possible cost values will be active.  Selecting one of the following values from the list will set the cost of all 3G connections on the local machine:</p>

<p style="margin-left: 20px">- Unrestricted: Use of this connection is unlimited and not restricted by usage charges and capacity constraints. </p>

<p style="margin-left: 20px">- Fixed: Use of this connection is not restricted by usage charges and capacity constraints up to a certain data limit. </p>

<p style="margin-left: 20px">- Variable: This connection is costed on a per byte basis.</p>

<p style="margin-left: 20px">If this policy setting is disabled or is not configured, the cost of 3G connections is Fixed by default.
      </p>

<a href="" id="datausage-setcost4g"></a>**DataUsage/SetCost4G**

<p style="margin-left: 20px">This policy setting configures the cost of 4G connections on the local machine.      </p>

<p style="margin-left: 20px">If this policy setting is enabled, a drop-down list box presenting possible cost values will be active. Selecting one of the following values from the list will set the cost of all 4G connections on the local machine:</p>

<p style="margin-left: 20px">- Unrestricted: Use of this connection is unlimited and not restricted by usage charges and capacity constraints. </p>

<p style="margin-left: 20px">- Fixed: Use of this connection is not restricted by usage charges and capacity constraints up to a certain data limit. </p>

<p style="margin-left: 20px">- Variable: This connection is costed on a per byte basis.</p>

<p style="margin-left: 20px">If this policy setting is disabled or is not configured, the cost of 4G connections is Fixed by default.
      </p>

<a href="" id="deviceinstallation-preventinstallationofmatchingdeviceids"></a>**DeviceInstallation/PreventInstallationOfMatchingDeviceIDs**

<p style="margin-left: 20px">This policy setting allows you to specify a list of Plug and Play hardware IDs and compatible IDs for devices that Windows is prevented from installing. This policy setting takes precedence over any other policy setting that allows Windows to install a device.</p>

<p style="margin-left: 20px">If you enable this policy setting, Windows is prevented from installing a device whose hardware ID or compatible ID appears in the list you create. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, devices can be installed and updated as allowed or prevented by other policy settings.</p>

<a href="" id="deviceinstallation-preventinstallationofmatchingdevicesetupclasses"></a>**DeviceInstallation/PreventInstallationOfMatchingDeviceSetupClasses**

<p style="margin-left: 20px">This policy setting allows you to specify a list of device setup class globally unique identifiers (GUIDs) for device drivers that Windows is prevented from installing. This policy setting takes precedence over any other policy setting that allows Windows to install a device.
 
If you enable this policy setting, Windows is prevented from installing or updating device drivers whose device setup class GUIDs appear in the list you create. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, Windows can install and update devices as allowed or prevented by other policy settings.</p>

<a href="" id="errorreporting-customizeconsentsettings"></a>**ErrorReporting/CustomizeConsentSettings**

<p style="margin-left: 20px">This policy setting determines the consent behavior of Windows Error Reporting for specific event types.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can add specific event types to a list by clicking Show, and typing event types in the Value Name column of the Show Contents dialog box. Event types are those for generic, non-fatal errors: crash, no response, and kernel fault errors. For each specified event type, you can set a consent level of 0, 1, 2, 3, or 4.</p>

<p style="margin-left: 20px">- 0 (Disable): Windows Error Reporting sends no data to Microsoft for this event type.</p>

<p style="margin-left: 20px">- 1 (Always ask before sending data): Windows prompts the user for consent to send reports.</p>

<p style="margin-left: 20px">- 2 (Send parameters): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and Windows prompts the user for consent to send any additional data requested by Microsoft.</p>

<p style="margin-left: 20px">- 3 (Send parameters and safe additional data): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, as well as data which Windows has determined (within a high probability) does not contain personally identifiable data, and prompts the user for consent to send any additional data requested by Microsoft.</p>

<p style="margin-left: 20px">- 4 (Send all data): Any data requested by Microsoft is sent automatically.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, then the default consent settings that are applied are those specified by the user in Control Panel, or in the Configure Default Consent policy setting.</p>

<a href="" id="errorreporting-disablewindowserrorreporting"></a>**ErrorReporting/DisableWindowsErrorReporting**

<p style="margin-left: 20px">This policy setting turns off Windows Error Reporting, so that reports are not collected or sent to either Microsoft or internal servers within your organization when software unexpectedly stops working or fails.</p>

<p style="margin-left: 20px">If you enable this policy setting, Windows Error Reporting does not send any problem information to Microsoft. Additionally, solution information is not available in Security and Maintenance in Control Panel.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the Turn off Windows Error Reporting policy setting in Computer Configuration/Administrative Templates/System/Internet Communication Management/Internet Communication settings takes precedence. If Turn off Windows Error Reporting is also either disabled or not configured, user settings in Control Panel for Windows Error Reporting are applied.</p>

<a href="" id="errorreporting-displayerrornotification"></a>**ErrorReporting/DisplayErrorNotification**

<p style="margin-left: 20px">This policy setting controls whether users are shown an error dialog box that lets them report an error.</p>

<p style="margin-left: 20px">If you enable this policy setting, users are notified in a dialog box that an error has occurred, and can display more details about the error. If the Configure Error Reporting policy setting is also enabled, the user can also report the error.</p>

<p style="margin-left: 20px">If you disable this policy setting, users are not notified that errors have occurred. If the Configure Error Reporting policy setting is also enabled, errors are reported, but users receive no notification. Disabling this policy setting is useful for servers that do not have interactive users.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can change this setting in Control Panel, which is set to enable notification by default on computers that are running Windows XP Personal Edition and Windows XP Professional Edition, and disable notification by default on computers that are running Windows Server.</p>

<p style="margin-left: 20px">See also the Configure Error Reporting policy setting.</p>

<a href="" id="errorreporting-donotsendadditionaldata"></a>**ErrorReporting/DoNotSendAdditionalData**

<p style="margin-left: 20px">This policy setting controls whether additional data in support of error reports can be sent to Microsoft automatically.</p>

<p style="margin-left: 20px">If you enable this policy setting, any additional data requests from Microsoft in response to a Windows Error Reporting report are automatically declined, without notification to the user.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, then consent policy settings in Computer Configuration/Administrative Templates/Windows Components/Windows Error Reporting/Consent take precedence.</p>

<a href="" id="errorreporting-preventcriticalerrordisplay"></a>**ErrorReporting/PreventCriticalErrorDisplay**

<p style="margin-left: 20px">This policy setting prevents the display of the user interface for critical errors.</p>

<p style="margin-left: 20px">If you enable this policy setting, Windows Error Reporting does not display any GUI-based error messages or dialog boxes for critical errors.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, Windows Error Reporting displays the user interface for critical errors.</p>

<a href="" id="eventlogservice-controleventlogbehavior"></a>**EventLogService/ControlEventLogBehavior**

<p style="margin-left: 20px">This policy setting controls Event Log behavior when the log file reaches its maximum size.</p>

<p style="margin-left: 20px">If you enable this policy setting and a log file reaches its maximum size, new events are not written to the log and are lost.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting and a log file reaches its maximum size, new events overwrite old events.</p>

<p style="margin-left: 20px">Note: Old events may or may not be retained according to the "Backup log automatically when full" policy setting.</p>

<a href="" id="eventlogservice-specifymaximumfilesizeapplicationlog"></a>**EventLogService/SpecifyMaximumFileSizeApplicationLog**

<p style="margin-left: 20px">This policy setting specifies the maximum size of the log file in kilobytes.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes) in kilobyte increments.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog and it defaults to 20 megabytes.</p>

<a href="" id="eventlogservice-specifymaximumfilesizesecuritylog"></a>**EventLogService/SpecifyMaximumFileSizeSecurityLog**

<p style="margin-left: 20px">This policy setting specifies the maximum size of the log file in kilobytes.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes) in kilobyte increments.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog and it defaults to 20 megabytes.</p>

<a href="" id="eventlogservice-specifymaximumfilesizesystemlog"></a>**EventLogService/SpecifyMaximumFileSizeSystemLog**

<p style="margin-left: 20px">This policy setting specifies the maximum size of the log file in kilobytes.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes) in kilobyte increments.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog and it defaults to 20 megabytes.</p>

<a href="" id="internetexplorer-addsearchprovider"></a>**InternetExplorer/AddSearchProvider**

<p style="margin-left: 20px">This policy setting allows you to add a specific list of search providers to the user's default list of search providers. Normally, search providers can be added from third-party toolbars or in Setup. The user can also add a search provider from the provider's website.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user can add and remove search providers, but only from the set of search providers specified in the list of policy keys for search providers (found under [HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\SearchScopes]). Note: This list can be created from a custom administrative template file. For information about creating this custom administrative template file, see the Internet Explorer documentation on search providers.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the user can configure their list of search providers unless another policy setting restricts such configuration.</p>

<a href="" id="internetexplorer-allowactivexfiltering"></a>**InternetExplorer/AllowActiveXFiltering**

<p style="margin-left: 20px">This policy setting controls the ActiveX Filtering feature for websites that are running ActiveX controls. The user can choose to turn off ActiveX Filtering for specific websites so that ActiveX controls can run properly.</p>

<p style="margin-left: 20px">If you enable this policy setting, ActiveX Filtering is enabled by default for the user. The user cannot turn off ActiveX Filtering, although they may add per-site exceptions.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, ActiveX Filtering is not enabled by default for the user. The user can turn ActiveX Filtering on or off.</p>

<a href="" id="internetexplorer-allowaddonlist"></a>**InternetExplorer/AllowAddOnList**

<p style="margin-left: 20px">This policy setting allows you to manage a list of add-ons to be allowed or denied by Internet Explorer. Add-ons in this case are controls like ActiveX Controls, Toolbars, and Browser Helper Objects (BHOs) which are specifically written to extend or enhance the functionality of the browser or web pages.</p>

<p style="margin-left: 20px">This list can be used with the 'Deny all add-ons unless specifically allowed in the Add-on List' policy setting, which defines whether add-ons not listed here are assumed to be denied.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can enter a list of add-ons to be allowed or denied by Internet Explorer. For each entry that you add to the list, enter the following information:</p>

<p style="margin-left: 20px">Name of the Value - the CLSID (class identifier) for the add-on you wish to add to the list.  The CLSID should be in brackets for example, {000000000-0000-0000-0000-0000000000000}'. The CLSID for an add-on can be obtained by reading the OBJECT tag from a Web page on which the add-on is referenced.</p>

<p style="margin-left: 20px">Value - A number indicating whether Internet Explorer should deny or allow the add-on to be loaded. To specify that an add-on should be denied enter a 0 (zero) into this field. To specify that an add-on should be allowed, enter a 1 (one) into this field. To specify that an add-on should be allowed and also permit the user to manage the add-on through Add-on Manager, enter a 2 (two) into this field.</p>

<p style="margin-left: 20px">If you disable this policy setting, the list is deleted. The 'Deny all add-ons unless specifically allowed in the Add-on List' policy setting will still determine whether add-ons not in this list are assumed to be denied.</p>

<a href="" id="internetexplorer-allowenhancedprotectedmode"></a>**InternetExplorer/AllowEnhancedProtectedMode**

<p style="margin-left: 20px">Enhanced Protected Mode provides additional protection against malicious websites by using 64-bit processes on 64-bit versions of Windows. For computers running at least Windows 8, Enhanced Protected Mode also limits the locations Internet Explorer can read from in the registry and the file system.</p>

<p style="margin-left: 20px">If you enable this policy setting, Enhanced Protected Mode will be turned on. Any zone that has Protected Mode enabled will use Enhanced Protected Mode. Users will not be able to disable Enhanced Protected Mode.</p>

<p style="margin-left: 20px">If you disable this policy setting, Enhanced Protected Mode will be turned off. Any zone that has Protected Mode enabled will use the version of Protected Mode introduced in Internet Explorer 7 for Windows Vista.</p>

<p style="margin-left: 20px">If you do not configure this policy, users will be able to turn on or turn off Enhanced Protected Mode on the Advanced tab of the Internet Options dialog.</p>

<a href="" id="internetexplorer-allowenterprisemodefromtoolsmenu"></a>**InternetExplorer/AllowEnterpriseModeFromToolsMenu**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-allowenterprisemodesitelist"></a>**InternetExplorer/AllowEnterpriseModeSiteList**

<p style="margin-left: 20px">This policy setting lets you specify where to find the list of websites you want opened using Enterprise Mode IE, instead of Standard mode, because of compatibility issues. Users can't edit this list.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer downloads the website list from your location (HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\Main\EnterpriseMode), opening all listed websites using Enterprise Mode IE.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, Internet Explorer opens all websites using Standards mode.</p>

<a href="" id="internetexplorer-allowinternetexplorer7policylist "></a>**InternetExplorer/AllowInternetExplorer7PolicyList **

<p style="margin-left: 20px">This policy setting allows you to add specific sites that must be viewed in Internet Explorer 7 Compatibility View.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user can add and remove sites from the list, but the user cannot remove the entries that you specify.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the user can add and remove sites from the list.</p>

<a href="" id="internetexplorer-allowinternetexplorerstandardsmode"></a>**InternetExplorer/AllowInternetExplorerStandardsMode**

<p style="margin-left: 20px">This policy setting controls how Internet Explorer displays local intranet content. Intranet content is defined as any webpage that belongs to the local intranet security zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer uses the current user agent string for local intranet content. Additionally, all local intranet Standards Mode pages appear in the Standards Mode available with the latest version of Internet Explorer. The user cannot change this behavior through the Compatibility View Settings dialog box.</p>

<p style="margin-left: 20px">If you disable this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended) for local intranet content. Additionally, all local intranet Standards Mode pages appear in Internet Explorer 7 Standards Mode. The user cannot change this behavior through the Compatibility View Settings dialog box.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended) for local intranet content. Additionally, all local intranet Standards Mode pages appear in Internet Explorer 7 Standards Mode. This option results in the greatest compatibility with existing webpages, but newer content written to common Internet standards may be displayed incorrectly. This option matches the default behavior of Internet Explorer.</p>

<a href="" id="internetexplorer-allowinternetzonetemplate"></a>**InternetExplorer/AllowInternetZoneTemplate**

<p style="margin-left: 20px">This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.</p>

<p style="margin-left: 20px">If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.</p>

<p style="margin-left: 20px">If you disable this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">If you do not configure this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.</p>

<p style="margin-left: 20px">Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.</p>

<a href="" id="internetexplorer-allowintranetzonetemplate"></a>**InternetExplorer/AllowIntranetZoneTemplate**

<p style="margin-left: 20px">This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.</p>

<p style="margin-left: 20px">If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.</p>

<p style="margin-left: 20px">If you disable this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">If you do not configure this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.</p>

<p style="margin-left: 20px">Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.</p>

<a href="" id="internetexplorer-allowlocalmachinezonetemplate"></a>**InternetExplorer/AllowLocalMachineZoneTemplate**

<p style="margin-left: 20px">This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.</p>

<p style="margin-left: 20px">If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.</p>

<p style="margin-left: 20px">If you disable this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">If you do not configure this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.</p>

<p style="margin-left: 20px">Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.</p>

<a href="" id="internetexplorer-allowlockeddowninternetzonetemplate"></a>**InternetExplorer/AllowLockedDownInternetZoneTemplate**

<p style="margin-left: 20px">This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.</p>

<p style="margin-left: 20px">If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.</p>

<p style="margin-left: 20px">If you disable this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">If you do not configure this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.</p>

<p style="margin-left: 20px">Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.</p>

<a href="" id="internetexplorer-allowlockeddownintranetzonetemplate"></a>**InternetExplorer/AllowLockedDownIntranetZoneTemplate**

<p style="margin-left: 20px">This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.</p>

<p style="margin-left: 20px">If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.</p>

<p style="margin-left: 20px">If you disable this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">If you do not configure this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.</p>

<p style="margin-left: 20px">Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.</p>

<a href="" id="internetexplorer-allowlockeddownlocalmachinezonetemplate"></a>**InternetExplorer/AllowLockedDownLocalMachineZoneTemplate**

<p style="margin-left: 20px">This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.</p>

<p style="margin-left: 20px">If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.</p>

<p style="margin-left: 20px">If you disable this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">If you do not configure this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.</p>

<p style="margin-left: 20px">Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.</p>

<a href="" id="internetexplorer-allowlockeddownrestrictedsiteszonetemplate"></a>**InternetExplorer/AllowLockedDownRestrictedSitesZoneTemplate**

<p style="margin-left: 20px">This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.</p>

<p style="margin-left: 20px">If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.</p>

<p style="margin-left: 20px">If you disable this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">If you do not configure this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.</p>

<p style="margin-left: 20px">Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.</p>

<a href="" id="internetexplorer-allowonewordentry"></a>**InternetExplorer/AllowOneWordEntry**

<p style="margin-left: 20px">This policy allows the user to go directly to an intranet site for a one-word entry in the Address bar.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer goes directly to an intranet site for a one-word entry in the Address bar, if it is available.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, Internet Explorer does not go directly to an intranet site for a one-word entry in the Address bar.</p>

<a href="" id="internetexplorer-allowsitetozoneassignmentlist"></a>**InternetExplorer/AllowSiteToZoneAssignmentList**

<p style="margin-left: 20px">This policy setting allows you to manage a list of sites that you want to associate with a particular security zone. These zone numbers have associated security settings that apply to all of the sites in the zone.</p>

<p style="margin-left: 20px">Internet Explorer has 4 security zones, numbered 1-4, and these are used by this policy setting to associate sites to zones. They are: (1) Intranet zone, (2) Trusted Sites zone, (3) Internet zone, and (4) Restricted Sites zone. Security settings can be set for each of these zones through other policy settings, and their default settings are: Trusted Sites zone (Low template), Intranet zone (Medium-Low template), Internet zone (Medium template), and Restricted Sites zone (High template). (The Local Machine zone and its locked down equivalent have special security settings that protect your local computer.)</p>

<p style="margin-left: 20px">If you enable this policy setting, you can enter a list of sites and their related zone numbers. The association of a site with a zone will ensure that the security settings for the specified zone are applied to the site. For each entry that you add to the list, enter the following information:</p>

<p style="margin-left: 20px">Valuename  A host for an intranet site, or a fully qualified domain name for other sites. The valuename may also includea specificprotocol. For example, if you enter http://www.contoso.comas the valuename, other protocols are not affected.If you enter just www.contoso.com,then all protocolsare affected for that site, including http, https, ftp, and so on. The site may also be expressed as an IP address (e.g., 127.0.0.1) or range (e.g., 127.0.0.1-10). To avoid creating conflicting policies, do not include additional characters after the domain such as trailing slashes or URL path. For example, policy settings for www.contoso.com and www.contoso.com/mail would be treated as the same policy setting by Internet Explorer, and would therefore be in conflict.</p>

<p style="margin-left: 20px">Value - A number indicating the zone with which this site should be associated for security settings. The Internet Explorer zones described above are 1-4.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy, users may choose their own site-to-zone assignments.</p>

<a href="" id="internetexplorer-allowsuggestedsites"></a>**InternetExplorer/AllowSuggestedSites**

<p style="margin-left: 20px">This policy setting controls the Suggested Sites feature, which recommends websites based on the users browsing activity. Suggested Sites reports a users browsing history to Microsoft to suggest sites that the user might want to visit.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user is not prompted to enable Suggested Sites. The users browsing history is sent to Microsoft to produce suggestions.</p>

<p style="margin-left: 20px">If you disable this policy setting, the entry points and functionality associated with this feature are turned off.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can turn on and turn off the Suggested Sites feature.</p>

<a href="" id="internetexplorer-allowtrustedsiteszonetemplate"></a>**InternetExplorer/AllowTrustedSitesZoneTemplate**

<p style="margin-left: 20px">This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.</p>

<p style="margin-left: 20px">If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.</p>

<p style="margin-left: 20px">If you disable this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">If you do not configure this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.</p>

<p style="margin-left: 20px">Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.</p>

<a href="" id="internetexplorer-allowslockeddowntrustedsiteszonetemplate"></a>**InternetExplorer/AllowsLockedDownTrustedSitesZoneTemplate**

<p style="margin-left: 20px">This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.</p>

<p style="margin-left: 20px">If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.</p>

<p style="margin-left: 20px">If you disable this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">If you do not configure this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.</p>

<p style="margin-left: 20px">Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.</p>

<a href="" id="internetexplorer-allowsrestrictedsiteszonetemplate"></a>**InternetExplorer/AllowsRestrictedSitesZoneTemplate**

<p style="margin-left: 20px">This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.</p>

<p style="margin-left: 20px">If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.</p>

<p style="margin-left: 20px">If you disable this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">If you do not configure this template policy setting, no security level is configured.</p>

<p style="margin-left: 20px">Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.</p>

<p style="margin-left: 20px">Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.</p>

<a href="" id="internetexplorer-disableadobeflash"></a>**InternetExplorer/DisableAdobeFlash**

<p style="margin-left: 20px">This policy setting turns off Adobe Flash in Internet Explorer and prevents applications from using Internet Explorer technology to instantiate Flash objects.</p>

<p style="margin-left: 20px">If you enable this policy setting, Flash is turned off for Internet Explorer, and applications cannot use Internet Explorer technology to instantiate Flash objects. In the Manage Add-ons dialog box, the Flash status will be 'Disabled', and users cannot enable Flash. If you enable this policy setting, Internet Explorer will ignore settings made for Adobe Flash through the "Add-on List" and "Deny all add-ons unless specifically allowed in the Add-on List" policy settings.</p>

<p style="margin-left: 20px">If you disable, or do not configure this policy setting, Flash is turned on for Internet Explorer, and applications can use Internet Explorer technology to instantiate Flash objects. Users can enable or disable Flash in the Manage Add-ons dialog box.</p>

<p style="margin-left: 20px">Note that Adobe Flash can still be disabled through the "Add-on List" and "Deny all add-ons unless specifically allowed in the Add-on List" policy settings, even if this policy setting is disabled, or not configured. However, if Adobe Flash is disabled through the "Add-on List" and "Deny all add-ons unless specifically allowed in the Add-on List" policy settings and not through this policy setting, all applications that use Internet Explorer technology to instantiate Flash object can still do so. For more information, see "Group Policy Settings in Internet Explorer 10" in the Internet Explorer TechNet library.</p>

<a href="" id="internetexplorer-disablecustomerexperienceimprovementprogramparticipation"></a>**InternetExplorer/DisableCustomerExperienceImprovementProgramParticipation**

<p style="margin-left: 20px">This policy setting prevents the user from participating in the Customer Experience Improvement Program (CEIP).</p>

<p style="margin-left: 20px">If you enable this policy setting, the user cannot participate in the CEIP, and the Customer Feedback Options command does not appear on the Help menu.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user must participate in the CEIP, and the Customer Feedback Options command does not appear on the Help menu.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can choose to participate in the CEIP.</p>

<a href="" id="internetexplorer-disableenclosuredownloading"></a>**InternetExplorer/DisableEnclosureDownloading**

<p style="margin-left: 20px">This policy setting prevents the user from having enclosures (file attachments) downloaded from a feed to the user's computer.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user cannot set the Feed Sync Engine to download an enclosure through the Feed property page. A developer cannot change the download setting through the Feed APIs.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the user can set the Feed Sync Engine to download an enclosure through the Feed property page. A developer can change the download setting through the Feed APIs.</p>

<a href="" id="internetexplorer-disableencryptionsupport"></a>**InternetExplorer/DisableEncryptionSupport**

<p style="margin-left: 20px">This policy setting allows you to turn off support for Transport Layer Security (TLS) 1.0, TLS 1.1, TLS 1.2, Secure Sockets Layer (SSL) 2.0, or SSL 3.0 in the browser. TLS and SSL are protocols that help protect communication between the browser and the target server. When the browser attempts to set up a protected communication with the target server, the browser and server negotiate which protocol and version to use. The browser and server attempt to match each others list of supported protocols and versions, and they select the most preferred match.</p>

<p style="margin-left: 20px">If you enable this policy setting, the browser negotiates or does not negotiate an encryption tunnel by using the encryption methods that you select from the drop-down list.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the user can select which encryption method the browser supports.</p>

<p style="margin-left: 20px">Note: SSL 2.0 is off by default and is no longer supported starting with Windows 10 Version 1607. SSL 2.0 is an outdated security protocol, and enabling SSL 2.0 impairs the performance and functionality of TLS 1.0.</p>

<a href="" id="internetexplorer-disablefirstrunwizard"></a>**InternetExplorer/DisableFirstRunWizard**

<p style="margin-left: 20px">This policy setting prevents Internet Explorer from running the First Run wizard the first time a user starts the browser after installing Internet Explorer or Windows.</p>

<p style="margin-left: 20px">If you enable this policy setting, you must make one of the following choices:
     Skip the First Run wizard, and go directly to the user's home page.
     Skip the First Run wizard, and go directly to the "Welcome to Internet Explorer" webpage.</p>

<p style="margin-left: 20px">Starting with Windows 8, the "Welcome to Internet Explorer" webpage is not available. The user's home page will display regardless of which option is chosen.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, Internet Explorer may run the First Run wizard the first time the browser is started after installation.</p>

<a href="" id="internetexplorer-disableflipaheadfeature"></a>**InternetExplorer/DisableFlipAheadFeature**

<p style="margin-left: 20px">This policy setting determines whether a user can swipe across a screen or click Forward to go to the next pre-loaded page of a website.</p>

<p style="margin-left: 20px">Microsoft collects your browsing history to improve how flip ahead with page prediction works. This feature isn't available for Internet Explorer for the desktop.</p>

<p style="margin-left: 20px">If you enable this policy setting, flip ahead with page prediction is turned off and the next webpage isn't loaded into the background.</p>

<p style="margin-left: 20px">If you disable this policy setting, flip ahead with page prediction is turned on and the next webpage is loaded into the background.</p>

<p style="margin-left: 20px">If you don't configure this setting, users can turn this behavior on or off, using the Settings charm.</p>

<a href="" id="internetexplorer-disablehomepagechange"></a>**InternetExplorer/DisableHomePageChange**

<p style="margin-left: 20px">The Home page specified on the General tab of the Internet Options dialog box is the default Web page that Internet Explorer loads whenever it is run.</p>

<p style="margin-left: 20px">If you enable this policy setting, a user cannot set a custom default home page. You must specify which default home page should load on the user machine. For machines with at least Internet Explorer 7, the home page can be set within this policy to override other home page policies.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the Home page box is enabled and users can choose their own home page.</p>

<a href="" id="internetexplorer-disablesearchproviderchange"></a>**InternetExplorer/DisableSearchProviderChange**

<p style="margin-left: 20px">This policy setting prevents the user from changing the default search provider for the Address bar and the toolbar Search box.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user cannot change the default search provider.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the user can change the default search provider.</p>

<a href="" id="internetexplorer-disablesecondaryhomepagechange"></a>**InternetExplorer/DisableSecondaryHomePageChange**

<p style="margin-left: 20px">Secondary home pages are the default Web pages that Internet Explorer loads in separate tabs from the home page whenever the browser is run. This policy setting allows you to set default secondary home pages.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can specify which default home pages should load as secondary home pages. The user cannot set custom default secondary home pages.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the user can add secondary home pages.</p>

<p style="margin-left: 20px">Note: If the Disable Changing Home Page Settings policy is enabled, the user cannot add secondary home pages.</p>

<a href="" id="internetexplorer-donotblockoutdatedactivexcontrols"></a>**InternetExplorer/DoNotBlockOutdatedActiveXControls**

<p style="margin-left: 20px">This policy setting determines whether Internet Explorer blocks specific outdated ActiveX controls. Outdated ActiveX controls are never blocked in the Intranet Zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer stops blocking outdated ActiveX controls.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, Internet Explorer continues to block specific outdated ActiveX controls.</p>

<p style="margin-left: 20px">For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.</p>

<a href="" id="internetexplorer-donotblockoutdatedactivexcontrolsonspecificdomains"></a>**InternetExplorer/DoNotBlockOutdatedActiveXControlsOnSpecificDomains**

<p style="margin-left: 20px">This policy setting allows you to manage a list of domains on which Internet Explorer will stop blocking outdated ActiveX controls. Outdated ActiveX controls are never blocked in the Intranet Zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can enter a custom list of domains for which outdated ActiveX controls won't be blocked in Internet Explorer. Each domain entry must be formatted like one of the following:</p>

<p style="margin-left: 20px">1. "domain.name.TLD". For example, if you want to include *.contoso.com/*, use "contoso.com"
2. "hostname". For example, if you want to include http://example, use "example"
3. "file:///path/filename.htm". For example, use "file:///C:/Users/contoso/Desktop/index.htm"</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the list is deleted and Internet Explorer continues to block specific outdated ActiveX controls on all domains in the Internet Zone.</p>

<p style="margin-left: 20px">For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.</p>

<a href="" id="internetexplorer-includealllocalsites"></a>**InternetExplorer/IncludeAllLocalSites**

<p style="margin-left: 20px">This policy setting controls whether local sites which are not explicitly mapped into any Security Zone are forced into the local Intranet security zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, local sites which are not explicitly mapped into a zone are considered to be in the Intranet Zone.</p>

<p style="margin-left: 20px">If you disable this policy setting, local sites which are not explicitly mapped into a zone will not be considered to be in the Intranet Zone (so would typically be in the Internet Zone).</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users choose whether to force local sites into the Intranet Zone.</p>

<a href="" id="internetexplorer-includeallnetworkpaths"></a>**InternetExplorer/IncludeAllNetworkPaths**

<p style="margin-left: 20px">This policy setting controls whether URLs representing UNCs are mapped into the local Intranet security zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, all network paths are mapped into the Intranet Zone.</p>

<p style="margin-left: 20px">If you disable this policy setting, network paths are not necessarily mapped into the Intranet Zone (other rules might map one there).</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users choose whether network paths are mapped into the Intranet Zone.</p>

<a href="" id="internetexplorer-internetzoneallowaccesstodatasources"></a>**InternetExplorer/InternetZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).</p>

<p style="margin-left: 20px">If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<a href="" id="internetexplorer-internetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/InternetZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting manages whether users will be automatically prompted for ActiveX control installations.</p>

<p style="margin-left: 20px">If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<a href="" id="internetexplorer-internetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/InternetZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.</p>

<p style="margin-left: 20px">If you enable this setting, users will receive a file download dialog for automatic download attempts.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.</p>

<a href="" id="internetexplorer-internetzoneallowfontdownloads"></a>**InternetExplorer/InternetZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting allows you to manage whether pages of the zone may download HTML fonts.</p>

<p style="margin-left: 20px">If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.</p>

<p style="margin-left: 20px">If you disable this policy setting, HTML fonts are prevented from downloading.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, HTML fonts can be downloaded automatically.</p>

<a href="" id="internetexplorer-internetzoneallowlessprivilegedsites"></a>**InternetExplorer/InternetZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting allows you to manage whether Web sites from less privileged zones, such as Restricted Sites, can navigate into this zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.  The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.</p>

<p style="margin-left: 20px">If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.</p>

<a href="" id="internetexplorer-internetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/InternetZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.</p>

<p style="margin-left: 20px">If you disable this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Internet Explorer will execute unsigned managed components.</p>

<a href="" id="internetexplorer-internetzoneallowscriptlets"></a>**InternetExplorer/InternetZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting allows you to manage whether the user can run scriptlets.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user can run scriptlets.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user cannot run scriptlets.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can enable or disable scriptlets.</p>

<a href="" id="internetexplorer-internetzoneallowsmartscreenie"></a>**InternetExplorer/InternetZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.</p>

<a href="" id="internetexplorer-internetzoneallowuserdatapersistence"></a>**InternetExplorer/InternetZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<a href="" id="internetexplorer-internetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/InternetZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting allows you to manage ActiveX controls not marked as safe.</p>

<p style="margin-left: 20px">If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.</p>

<p style="margin-left: 20px">If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<a href="" id="internetexplorer-internetzonenavigatewindowsandframes"></a>**InternetExplorer/InternetZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot open windows and frames to access applications from different domains.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.</p>

<a href="" id="internetexplorer-intranetzoneallowaccesstodatasources"></a>**InternetExplorer/IntranetZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).</p>

<p style="margin-left: 20px">If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<a href="" id="internetexplorer-intranetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/IntranetZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting manages whether users will be automatically prompted for ActiveX control installations.</p>

<p style="margin-left: 20px">If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.</p>

<a href="" id="internetexplorer-intranetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/IntranetZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.</p>

<p style="margin-left: 20px">If you enable this setting, users will receive a file download dialog for automatic download attempts.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, users will receive a file download dialog for automatic download attempts.</p>

<a href="" id="internetexplorer-intranetzoneallowfontdownloads"></a>**InternetExplorer/IntranetZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting allows you to manage whether pages of the zone may download HTML fonts.</p>

<p style="margin-left: 20px">If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.</p>

<p style="margin-left: 20px">If you disable this policy setting, HTML fonts are prevented from downloading.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, HTML fonts can be downloaded automatically.</p>

<a href="" id="internetexplorer-intranetzoneallowlessprivilegedsites"></a>**InternetExplorer/IntranetZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting allows you to manage whether Web sites from less privileged zones, such as Restricted Sites, can navigate into this zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.  The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.</p>

<p style="margin-left: 20px">If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.</p>

<a href="" id="internetexplorer-intranetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/IntranetZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.</p>

<p style="margin-left: 20px">If you disable this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Internet Explorer will execute unsigned managed components.</p>

<a href="" id="internetexplorer-intranetzoneallowscriptlets"></a>**InternetExplorer/IntranetZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting allows you to manage whether the user can run scriptlets.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user can run scriptlets.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user cannot run scriptlets.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can enable or disable scriptlets.</p>

<a href="" id="internetexplorer-intranetzoneallowsmartscreenie"></a>**InternetExplorer/IntranetZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.</p>

<a href="" id="internetexplorer-intranetzoneallowuserdatapersistence"></a>**InternetExplorer/IntranetZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<a href="" id="internetexplorer-intranetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/IntranetZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting allows you to manage ActiveX controls not marked as safe.</p>

<p style="margin-left: 20px">If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.</p>

<p style="margin-left: 20px">If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<a href="" id="internetexplorer-intranetzonenavigatewindowsandframes"></a>**InternetExplorer/IntranetZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot open windows and frames to access applications from different domains.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.</p>

<a href="" id="internetexplorer-localmachinezoneallowaccesstodatasources"></a>**InternetExplorer/LocalMachineZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).</p>

<p style="margin-left: 20px">If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<a href="" id="internetexplorer-localmachinezoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting manages whether users will be automatically prompted for ActiveX control installations.</p>

<p style="margin-left: 20px">If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.</p>

<a href="" id="internetexplorer-localmachinezoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.</p>

<p style="margin-left: 20px">If you enable this setting, users will receive a file download dialog for automatic download attempts.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, users will receive a file download dialog for automatic download attempts.</p>

<a href="" id="internetexplorer-localmachinezoneallowfontdownloads"></a>**InternetExplorer/LocalMachineZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting allows you to manage whether pages of the zone may download HTML fonts.</p>

<p style="margin-left: 20px">If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.</p>

<p style="margin-left: 20px">If you disable this policy setting, HTML fonts are prevented from downloading.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, HTML fonts can be downloaded automatically.</p>

<a href="" id="internetexplorer-localmachinezoneallowlessprivilegedsites"></a>**InternetExplorer/LocalMachineZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.</p>

<p style="margin-left: 20px">If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<a href="" id="internetexplorer-localmachinezoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LocalMachineZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.</p>

<p style="margin-left: 20px">If you disable this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<a href="" id="internetexplorer-localmachinezoneallowscriptlets"></a>**InternetExplorer/LocalMachineZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting allows you to manage whether the user can run scriptlets.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user can run scriptlets.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user cannot run scriptlets.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can enable or disable scriptlets.</p>

<a href="" id="internetexplorer-localmachinezoneallowsmartscreenie"></a>**InternetExplorer/LocalMachineZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.</p>

<a href="" id="internetexplorer-localmachinezoneallowuserdatapersistence"></a>**InternetExplorer/LocalMachineZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<a href="" id="internetexplorer-localmachinezoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LocalMachineZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting allows you to manage ActiveX controls not marked as safe.</p>

<p style="margin-left: 20px">If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.</p>

<p style="margin-left: 20px">If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users are queried whether to allow the control to be loaded with parameters or scripted.</p>

<a href="" id="internetexplorer-localmachinezonenavigatewindowsandframes"></a>**InternetExplorer/LocalMachineZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot open windows and frames to access applications from different domains.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownInternetZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).</p>

<p style="margin-left: 20px">If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting manages whether users will be automatically prompted for ActiveX control installations.</p>

<p style="margin-left: 20px">If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.</p>

<p style="margin-left: 20px">If you enable this setting, users will receive a file download dialog for automatic download attempts.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowfontdownloads"></a>**InternetExplorer/LockedDownInternetZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting allows you to manage whether pages of the zone may download HTML fonts.</p>

<p style="margin-left: 20px">If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.</p>

<p style="margin-left: 20px">If you disable this policy setting, HTML fonts are prevented from downloading.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, HTML fonts can be downloaded automatically.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownInternetZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.</p>

<p style="margin-left: 20px">If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownInternetZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.</p>

<p style="margin-left: 20px">If you disable this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowscriptlets"></a>**InternetExplorer/LockedDownInternetZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting allows you to manage whether the user can run scriptlets.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user can run scriptlets.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user cannot run scriptlets.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can enable or disable scriptlets.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowsmartscreenie"></a>**InternetExplorer/LockedDownInternetZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownInternetZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownInternetZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting allows you to manage ActiveX controls not marked as safe.</p>

<p style="margin-left: 20px">If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.</p>

<p style="margin-left: 20px">If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<a href="" id="internetexplorer-lockeddowninternetzonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownInternetZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot open windows and frames to access applications from different domains.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownIntranetZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).</p>

<p style="margin-left: 20px">If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting manages whether users will be automatically prompted for ActiveX control installations.</p>

<p style="margin-left: 20px">If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.</p>

<p style="margin-left: 20px">If you enable this setting, users will receive a file download dialog for automatic download attempts.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowfontdownloads"></a>**InternetExplorer/LockedDownIntranetZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting allows you to manage whether pages of the zone may download HTML fonts.</p>

<p style="margin-left: 20px">If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.</p>

<p style="margin-left: 20px">If you disable this policy setting, HTML fonts are prevented from downloading.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, HTML fonts can be downloaded automatically.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownIntranetZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.</p>

<p style="margin-left: 20px">If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownIntranetZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.</p>

<p style="margin-left: 20px">If you disable this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowscriptlets"></a>**InternetExplorer/LockedDownIntranetZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting allows you to manage whether the user can run scriptlets.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user can run scriptlets.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user cannot run scriptlets.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can enable or disable scriptlets.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowsmartscreenie"></a>**InternetExplorer/LockedDownIntranetZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownIntranetZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownIntranetZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting allows you to manage ActiveX controls not marked as safe.</p>

<p style="margin-left: 20px">If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.</p>

<p style="margin-left: 20px">If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<a href="" id="internetexplorer-lockeddownintranetzonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownIntranetZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot open windows and frames to access applications from different domains.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).</p>

<p style="margin-left: 20px">If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting manages whether users will be automatically prompted for ActiveX control installations.</p>

<p style="margin-left: 20px">If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.</p>

<p style="margin-left: 20px">If you enable this setting, users will receive a file download dialog for automatic download attempts.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowfontdownloads"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting allows you to manage whether pages of the zone may download HTML fonts.</p>

<p style="margin-left: 20px">If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.</p>

<p style="margin-left: 20px">If you disable this policy setting, HTML fonts are prevented from downloading.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, HTML fonts can be downloaded automatically.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.</p>

<p style="margin-left: 20px">If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.</p>

<p style="margin-left: 20px">If you disable this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowscriptlets"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting allows you to manage whether the user can run scriptlets.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user can run scriptlets.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user cannot run scriptlets.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can enable or disable scriptlets.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowsmartscreenie"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownLocalMachineZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting allows you to manage ActiveX controls not marked as safe.</p>

<p style="margin-left: 20px">If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.</p>

<p style="margin-left: 20px">If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownLocalMachineZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot open windows and frames to access applications from different domains.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).</p>

<p style="margin-left: 20px">If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting manages whether users will be automatically prompted for ActiveX control installations.</p>

<p style="margin-left: 20px">If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.</p>

<p style="margin-left: 20px">If you enable this setting, users will receive a file download dialog for automatic download attempts.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowfontdownloads"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting allows you to manage whether pages of the zone may download HTML fonts.</p>

<p style="margin-left: 20px">If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.</p>

<p style="margin-left: 20px">If you disable this policy setting, HTML fonts are prevented from downloading.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users are queried whether to allow HTML fonts to download.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.</p>

<p style="margin-left: 20px">If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.</p>

<p style="margin-left: 20px">If you disable this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowscriptlets"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting allows you to manage whether the user can run scriptlets.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user can run scriptlets.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user cannot run scriptlets.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can enable or disable scriptlets.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowsmartscreenie"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting allows you to manage ActiveX controls not marked as safe.</p>

<p style="margin-left: 20px">If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.</p>

<p style="margin-left: 20px">If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownRestrictedSitesZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can open additional windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow additional windows and frames to access applications from other domains.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot open other windows and frames from other domains or access applications from different domains.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users cannot open other windows and frames from different domains or access applications from different domains.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).</p>

<p style="margin-left: 20px">If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting manages whether users will be automatically prompted for ActiveX control installations.</p>

<p style="margin-left: 20px">If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.</p>

<p style="margin-left: 20px">If you enable this setting, users will receive a file download dialog for automatic download attempts.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowfontdownloads"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting allows you to manage whether pages of the zone may download HTML fonts.</p>

<p style="margin-left: 20px">If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.</p>

<p style="margin-left: 20px">If you disable this policy setting, HTML fonts are prevented from downloading.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, HTML fonts can be downloaded automatically.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.</p>

<p style="margin-left: 20px">If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.</p>

<p style="margin-left: 20px">If you disable this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowscriptlets"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting allows you to manage whether the user can run scriptlets.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user can run scriptlets.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user cannot run scriptlets.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can enable or disable scriptlets.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowsmartscreenie"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting allows you to manage ActiveX controls not marked as safe.</p>

<p style="margin-left: 20px">If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.</p>

<p style="margin-left: 20px">If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownTrustedSitesZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot open windows and frames to access applications from different domains.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/RestrictedSitesZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).</p>

<p style="margin-left: 20px">If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting manages whether users will be automatically prompted for ActiveX control installations.</p>

<p style="margin-left: 20px">If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.</p>

<p style="margin-left: 20px">If you enable this setting, users will receive a file download dialog for automatic download attempts.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowfontdownloads"></a>**InternetExplorer/RestrictedSitesZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting allows you to manage whether pages of the zone may download HTML fonts.</p>

<p style="margin-left: 20px">If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.</p>

<p style="margin-left: 20px">If you disable this policy setting, HTML fonts are prevented from downloading.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users are queried whether to allow HTML fonts to download.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/RestrictedSitesZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.</p>

<p style="margin-left: 20px">If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/RestrictedSitesZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.</p>

<p style="margin-left: 20px">If you disable this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowscriptlets"></a>**InternetExplorer/RestrictedSitesZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting allows you to manage whether the user can run scriptlets.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user can run scriptlets.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user cannot run scriptlets.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can enable or disable scriptlets.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowsmartscreenie"></a>**InternetExplorer/RestrictedSitesZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/RestrictedSitesZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<a href="" id="internetexplorer-restrictedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/RestrictedSitesZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting allows you to manage ActiveX controls not marked as safe.</p>

<p style="margin-left: 20px">If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.</p>

<p style="margin-left: 20px">If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<a href="" id="internetexplorer-restrictedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can open additional windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow additional windows and frames to access applications from other domains.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot open other windows and frames from other domains or access applications from different domains.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users cannot open other windows and frames from different domains or access applications from different domains.</p>

<a href="" id="internetexplorer-searchproviderlist"></a>**InternetExplorer/SearchProviderList**

<p style="margin-left: 20px">This policy setting allows you to restrict the search providers that appear in the Search box in Internet Explorer to those defined in the list of policy keys for search providers (found under [HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\SearchScopes]). Normally, search providers can be added from third-party toolbars or in Setup, but the user can also add them from a search provider's website.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user cannot configure the list of search providers on his or her computer, and any default providers installed do not appear (including providers installed from other applications). The only providers that appear are those in the list of policy keys for search providers. Note: This list can be created through a custom administrative template file. For information about creating this custom administrative template file, see the Internet Explorer documentation on search providers.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the user can configure his or her list of search providers.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/TrustedSitesZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).</p>

<p style="margin-left: 20px">If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting manages whether users will be automatically prompted for ActiveX control installations.</p>

<p style="margin-left: 20px">If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.</p>

<p style="margin-left: 20px">If you enable this setting, users will receive a file download dialog for automatic download attempts.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, users will receive a file download dialog for automatic download attempts.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowfontdownloads"></a>**InternetExplorer/TrustedSitesZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting allows you to manage whether pages of the zone may download HTML fonts.</p>

<p style="margin-left: 20px">If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.</p>

<p style="margin-left: 20px">If you disable this policy setting, HTML fonts are prevented from downloading.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, HTML fonts can be downloaded automatically.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/TrustedSitesZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting allows you to manage whether Web sites from less privileged zones, such as Restricted Sites, can navigate into this zone.</p>

<p style="margin-left: 20px">If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.  The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.</p>

<p style="margin-left: 20px">If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, a warning is issued to the user that potentially risky navigation is about to occur.</p>

<a href="" id="internetexplorer-trustedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/TrustedSitesZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.</p>

<p style="margin-left: 20px">If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.</p>

<p style="margin-left: 20px">If you disable this policy setting, Internet Explorer will not execute unsigned managed components.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Internet Explorer will execute unsigned managed components.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowscriptlets"></a>**InternetExplorer/TrustedSitesZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting allows you to manage whether the user can run scriptlets.</p>

<p style="margin-left: 20px">If you enable this policy setting, the user can run scriptlets.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user cannot run scriptlets.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can enable or disable scriptlets.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowsmartscreenie"></a>**InternetExplorer/TrustedSitesZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.</p>

<p style="margin-left: 20px">Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/TrustedSitesZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.</p>

<a href="" id="internetexplorer-trustedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/TrustedSitesZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting allows you to manage ActiveX controls not marked as safe.</p>

<p style="margin-left: 20px">If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.</p>

<p style="margin-left: 20px">If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users are queried whether to allow the control to be loaded with parameters or scripted.</p>

<a href="" id="internetexplorer-trustedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/TrustedSitesZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.</p>

<p style="margin-left: 20px">If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot open windows and frames to access applications from different domains.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.</p>

<a href="" id="kerberos-allowforestsearchorder"></a>**Kerberos/AllowForestSearchOrder**

<p style="margin-left: 20px">This policy setting defines the list of trusting forests that the Kerberos client searches when attempting to resolve two-part service principal names (SPNs).</p>

<p style="margin-left: 20px">If you enable this policy setting, the Kerberos client searches the forests in this list, if it is unable to resolve a two-part SPN. If a match is found, the Kerberos client requests a referral ticket to the appropriate domain.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the Kerberos client does not search the listed forests to resolve the SPN. If the Kerberos client is unable to resolve the SPN because the name is not found, NTLM authentication might be used.</p>

<a href="" id="kerberos-kerberosclientsupportsclaimscompoundarmor"></a>**Kerberos/KerberosClientSupportsClaimsCompoundArmor**

<p style="margin-left: 20px">This policy setting controls whether a device will request claims and compound authentication for Dynamic Access Control and Kerberos armoring using Kerberos authentication with domains that support these features. 
If you enable this policy setting, the client computers will request claims, provide information required to create compounded authentication and armor Kerberos messages in domains which support claims and compound authentication for Dynamic Access Control and Kerberos armoring.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the client devices will not request claims, provide information required to create compounded authentication and armor Kerberos messages. Services hosted on the device will not be able to retrieve claims for clients using Kerberos protocol transition.  
</p>

<a href="" id="kerberos-requirekerberosarmoring"></a>**Kerberos/RequireKerberosArmoring**

<p style="margin-left: 20px">This policy setting controls whether a computer requires that Kerberos message exchanges be armored when communicating with a domain controller.</p>

<p style="margin-left: 20px">Warning: When a domain does not support Kerberos armoring by enabling "Support Dynamic Access Control and Kerberos armoring", then all authentication for all its users will fail from computers with this policy setting enabled.</p>

<p style="margin-left: 20px">If you enable this policy setting, the client computers in the domain enforce the use of Kerberos armoring in only authentication service (AS) and ticket-granting service (TGS) message exchanges with the domain controllers. </p>

<p style="margin-left: 20px">Note: The Kerberos Group Policy "Kerberos client support for claims, compound authentication and Kerberos armoring" must also be enabled to support Kerberos armoring. </p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the client computers in the domain enforce the use of Kerberos armoring when possible as supported by the target domain.
</p>

<a href="" id="kerberos-requirestrictkdcvalidation"></a>**Kerberos/RequireStrictKDCValidation**

<p style="margin-left: 20px">This policy setting controls the Kerberos client's behavior in validating the KDC certificate for smart card and system certificate logon.  </p>

<p style="margin-left: 20px">If you enable this policy setting, the Kerberos client requires that the KDC's X.509 certificate contains the KDC key purpose object identifier in the Extended Key Usage (EKU) extensions, and that the KDC's X.509 certificate contains a dNSName subjectAltName (SAN) extension that matches the DNS name of the domain. If the computer is joined to a domain, the Kerberos client requires that the KDC's X.509 certificate must be signed by a Certificate Authority (CA) in the NTAuth store. If the computer is not joined to a domain, the Kerberos client allows the root CA certificate on the smart card to be used in the path validation of the KDC's X.509 certificate.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the Kerberos client requires only that the KDC certificate contain the Server Authentication purpose object identifier in the EKU extensions which can be issued to any server.
</p>

<a href="" id="kerberos-setmaximumcontexttokensize"></a>**Kerberos/SetMaximumContextTokenSize**

<p style="margin-left: 20px">This policy setting allows you to set the value returned to applications which request the maximum size of the SSPI context token buffer size.
              
The size of the context token buffer determines the maximum size of SSPI context tokens an application expects and allocates. Depending upon authentication request processing and group memberships, the buffer might be smaller than the actual size of the SSPI context token. </p>

<p style="margin-left: 20px">If you enable this policy setting, the Kerberos client or server uses the configured value, or the locally allowed maximum value, whichever is smaller.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the Kerberos client or server uses the locally configured value or the default value. </p>

<p style="margin-left: 20px">Note: This policy setting configures the existing MaxTokenSize registry value in HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\Kerberos\Parameters, which was added in Windows XP and Windows Server 2003, with a default value of 12,000 bytes. Beginning with Windows 8 the default is 48,000 bytes. Due to HTTP's base64 encoding of authentication context tokens, it is not advised to set this value more than 48,000 bytes.</p>

<p style="margin-left: 20px"></p>

<a href="" id="power-allowstandbywhensleepingpluggedin"></a>**Power/AllowStandbyWhenSleepingPluggedIn**

<p style="margin-left: 20px">This policy setting manages whether or not Windows is allowed to use standby states when putting the computer in a sleep state.</p>

<p style="margin-left: 20px">If you enable this policy setting, Windows uses standby states to put the computer in a sleep state.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the only sleep state a computer may enter is hibernate.</p>

<a href="" id="power-requirepasswordwhencomputerwakesonbattery"></a>**Power/RequirePasswordWhenComputerWakesOnBattery**

<p style="margin-left: 20px">This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.</p>

<p style="margin-left: 20px">If you enable or do not configure this policy setting, the user is prompted for a password when the system resumes from sleep.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user is not prompted for a password when the system resumes from sleep.</p>

<a href="" id="power-requirepasswordwhencomputerwakespluggedin"></a>**Power/RequirePasswordWhenComputerWakesPluggedIn**

<p style="margin-left: 20px">This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.</p>

<p style="margin-left: 20px">If you enable or do not configure this policy setting, the user is prompted for a password when the system resumes from sleep.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user is not prompted for a password when the system resumes from sleep.</p>

<a href="" id="printers-pointandprintrestrictions"></a>**Printers/PointAndPrintRestrictions**

<p style="margin-left: 20px">This policy setting controls the client Point and Print behavior, including the security prompts for Windows Vista computers. The policy setting applies only to non-Print Administrator clients, and only to computers that are members of a domain.</p>

<p style="margin-left: 20px">          If you enable this policy setting:
          -Windows XP and later clients will only download print driver components from a list of explicitly named servers. If a compatible print driver is available on the client, a printer connection will be made. If a compatible print driver is not available on the client, no connection will be made.
          -You can configure Windows Vista clients so that security warnings and elevated command prompts do not appear when users Point and Print, or when printer connection drivers need to be updated.</p>

<p style="margin-left: 20px">          If you do not configure this policy setting:
          -Windows Vista client computers can point and print to any server.
          -Windows Vista computers will show a warning and an elevated command prompt when users create a printer connection to any server using Point and Print.
          -Windows Vista computers will show a warning and an elevated command prompt when an existing printer connection driver needs to be updated.
          -Windows Server 2003 and Windows XP client computers can create a printer connection to any server in their forest using Point and Print.</p>

<p style="margin-left: 20px">          If you disable this policy setting:
          -Windows Vista client computers can create a printer connection to any server using Point and Print.
          -Windows Vista computers will not show a warning or an elevated command prompt when users create a printer connection to any server using Point and Print.
          -Windows Vista computers will not show a warning or an elevated command prompt when an existing printer connection driver needs to be updated.
          -Windows Server 2003 and Windows XP client computers can create a printer connection to any server using Point and Print.
          -The "Users can only point and print to computers in their forest" setting applies only to Windows Server 2003 and Windows XP SP1 (and later service packs).</p>

<a href="" id="printers-pointandprintrestrictions_user"></a>**Printers/PointAndPrintRestrictions_User**

<p style="margin-left: 20px">This policy setting controls the client Point and Print behavior, including the security prompts for Windows Vista computers. The policy setting applies only to non-Print Administrator clients, and only to computers that are members of a domain.</p>

<p style="margin-left: 20px">          If you enable this policy setting:
          -Windows XP and later clients will only download print driver components from a list of explicitly named servers. If a compatible print driver is available on the client, a printer connection will be made. If a compatible print driver is not available on the client, no connection will be made.
          -You can configure Windows Vista clients so that security warnings and elevated command prompts do not appear when users Point and Print, or when printer connection drivers need to be updated.</p>

<p style="margin-left: 20px">          If you do not configure this policy setting:
          -Windows Vista client computers can point and print to any server.
          -Windows Vista computers will show a warning and an elevated command prompt when users create a printer connection to any server using Point and Print.
          -Windows Vista computers will show a warning and an elevated command prompt when an existing printer connection driver needs to be updated.
          -Windows Server 2003 and Windows XP client computers can create a printer connection to any server in their forest using Point and Print.</p>

<p style="margin-left: 20px">          If you disable this policy setting:
          -Windows Vista client computers can create a printer connection to any server using Point and Print.
          -Windows Vista computers will not show a warning or an elevated command prompt when users create a printer connection to any server using Point and Print.
          -Windows Vista computers will not show a warning or an elevated command prompt when an existing printer connection driver needs to be updated.
          -Windows Server 2003 and Windows XP client computers can create a printer connection to any server using Point and Print.
          -The "Users can only point and print to computers in their forest" setting applies only to Windows Server 2003 and Windows XP SP1 (and later service packs).</p>

<a href="" id="printers-publishprinters"></a>**Printers/PublishPrinters**

<p style="margin-left: 20px">Determines whether the computer's shared printers can be published in Active Directory.</p>

<p style="margin-left: 20px">            If you enable this setting or do not configure it, users can use the "List in directory" option in the Printer's Properties' Sharing tab to publish shared printers in Active Directory.</p>

<p style="margin-left: 20px">            If you disable this setting, this computer's shared printers cannot be published in Active Directory, and the "List in directory" option is not available.</p>

<p style="margin-left: 20px">            Note: This settings takes priority over the setting "Automatically publish new printers in the Active Directory".</p>

<a href="" id="remoteassistance-customizewarningmessages"></a>**RemoteAssistance/CustomizeWarningMessages**

<p style="margin-left: 20px">This policy setting lets you customize warning messages.</p>

<p style="margin-left: 20px">The "Display warning message before sharing control" policy setting allows you to specify a custom message to display before a user shares control of his or her computer.</p>

<p style="margin-left: 20px">The "Display warning message before connecting" policy setting allows you to specify a custom message to display before a user allows a connection to his or her computer.</p>

<p style="margin-left: 20px">If you enable this policy setting, the warning message you specify overrides the default message that is seen by the novice.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user sees the default warning message.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, the user sees the default warning message.</p>

<a href="" id="remoteassistance-sessionlogging"></a>**RemoteAssistance/SessionLogging**

<p style="margin-left: 20px">This policy setting allows you to turn logging on or off. Log files are located in the user's Documents folder under Remote Assistance.</p>

<p style="margin-left: 20px">If you enable this policy setting, log files are generated.</p>

<p style="margin-left: 20px">If you disable this policy setting, log files are not generated.</p>

<p style="margin-left: 20px">If you do not configure this setting, application-based settings are used.</p>

<a href="" id="remoteassistance-solicitedremoteassistance"></a>**RemoteAssistance/SolicitedRemoteAssistance**

<p style="margin-left: 20px">This policy setting allows you to turn on or turn off Solicited (Ask for) Remote Assistance on this computer.</p>

<p style="margin-left: 20px">If you enable this policy setting, users on this computer can use email or file transfer to ask someone for help. Also, users can use instant messaging programs to allow connections to this computer, and you can configure additional Remote Assistance settings.</p>

<p style="margin-left: 20px">If you disable this policy setting, users on this computer cannot use email or file transfer to ask someone for help. Also, users cannot use instant messaging programs to allow connections to this computer.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users can turn on or turn off Solicited (Ask for) Remote Assistance themselves in System Properties in Control Panel. Users can also configure Remote Assistance settings.</p>

<p style="margin-left: 20px">If you enable this policy setting, you have two ways to allow helpers to provide Remote Assistance: "Allow helpers to only view the computer" or "Allow helpers to remotely control the computer."</p>

<p style="margin-left: 20px">The "Maximum ticket time" policy setting sets a limit on the amount of time that a Remote Assistance invitation created by using email or file transfer can remain open.</p>

<p style="margin-left: 20px">The "Select the method for sending email invitations" setting specifies which email standard to use to send Remote Assistance invitations. Depending on your email program, you can use either the Mailto standard (the invitation recipient connects through an Internet link) or the SMAPI (Simple MAPI) standard (the invitation is attached to your email message). This policy setting is not available in Windows Vista since SMAPI is the only method supported.</p>

<p style="margin-left: 20px">If you enable this policy setting you should also enable appropriate firewall exceptions to allow Remote Assistance communications.</p>

<a href="" id="remoteassistance-unsolicitedremoteassistance"></a>**RemoteAssistance/UnsolicitedRemoteAssistance**

<p style="margin-left: 20px">This policy setting allows you to turn on or turn off Offer (Unsolicited) Remote Assistance on this computer.</p>

<p style="margin-left: 20px">If you enable this policy setting, users on this computer can get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.</p>

<p style="margin-left: 20px">If you disable this policy setting, users on this computer cannot get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, users on this computer cannot get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.</p>

<p style="margin-left: 20px">If you enable this policy setting, you have two ways to allow helpers to provide Remote Assistance: "Allow helpers to only view the computer" or "Allow helpers to remotely control the computer." When you configure this policy setting, you also specify the list of users or user groups that are allowed to offer remote assistance.</p>

<p style="margin-left: 20px">To configure the list of helpers, click "Show." In the window that opens, you can enter the names of the helpers. Add each user or group one by one. When you enter the name of the helper user or user groups, use the following format:</p>

<p style="margin-left: 20px"><Domain Name>\<User Name> or</p>

<p style="margin-left: 20px"><Domain Name>\<Group Name></p>

<p style="margin-left: 20px">If you enable this policy setting, you should also enable firewall exceptions to allow Remote Assistance communications. The firewall exceptions required for Offer (Unsolicited) Remote Assistance depend on the version of Windows you are running.</p>

<p style="margin-left: 20px">Windows Vista and later</p>

<p style="margin-left: 20px">Enable the Remote Assistance exception for the domain profile. The exception must contain:
Port 135:TCP
%WINDIR%\System32\msra.exe
%WINDIR%\System32\raserver.exe</p>

<p style="margin-left: 20px">Windows XP with Service Pack 2 (SP2) and Windows XP Professional x64 Edition with Service Pack 1 (SP1)</p>

<p style="margin-left: 20px">Port 135:TCP
%WINDIR%\PCHealth\HelpCtr\Binaries\Helpsvc.exe
%WINDIR%\PCHealth\HelpCtr\Binaries\Helpctr.exe
%WINDIR%\System32\Sessmgr.exe</p>

<p style="margin-left: 20px">For computers running Windows Server 2003 with Service Pack 1 (SP1)</p>

<p style="margin-left: 20px">Port 135:TCP
%WINDIR%\PCHealth\HelpCtr\Binaries\Helpsvc.exe
%WINDIR%\PCHealth\HelpCtr\Binaries\Helpctr.exe
Allow Remote Desktop Exception</p>

<a href="" id="remotedesktopservices-allowuserstoconnectremotely"></a>**RemoteDesktopServices/AllowUsersToConnectRemotely**

<p style="margin-left: 20px">This policy setting allows you to configure remote access to computers by using Remote Desktop Services.</p>

<p style="margin-left: 20px">If you enable this policy setting, users who are members of the Remote Desktop Users group on the target computer can connect remotely to the target computer by using Remote Desktop Services.</p>

<p style="margin-left: 20px">If you disable this policy setting, users cannot connect remotely to the target computer by using Remote Desktop Services. The target computer will maintain any current connections, but will not accept any new incoming connections.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Remote Desktop Services uses the Remote Desktop setting on the target computer to determine whether the remote connection is allowed. This setting is found on the Remote tab in the System properties sheet. By default, remote connections are not allowed. </p>

<p style="margin-left: 20px">Note: You can limit which clients are able to connect remotely by using Remote Desktop Services by configuring the policy setting at Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Security\Require user authentication for remote connections by using Network Level Authentication. </p>

<p style="margin-left: 20px">You can limit the number of users who can connect simultaneously by configuring the policy setting at Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections\Limit number of connections, or by configuring the policy setting Maximum Connections by using the Remote Desktop Session Host WMI Provider.
</p>

<a href="" id="remotedesktopservices-clientconnectionencryptionlevel"></a>**RemoteDesktopServices/ClientConnectionEncryptionLevel**

<p style="margin-left: 20px">Specifies whether to require the use of a specific encryption level to secure communications between client computers and RD Session Host servers during Remote Desktop Protocol (RDP) connections. This policy only applies when you are using native RDP encryption. However, native RDP encryption (as opposed to SSL encryption) is not recommended. This policy does not apply to SSL encryption.</p>

<p style="margin-left: 20px">If you enable this policy setting, all communications between clients and RD Session Host servers during remote connections must use the encryption method specified in this setting. By default, the encryption level is set to High. The following encryption methods are available:</p>

<p style="margin-left: 20px">* High: The High setting encrypts data sent from the client to the server and from the server to the client by using strong 128-bit encryption. Use this encryption level in environments that contain only 128-bit clients (for example, clients that run Remote Desktop Connection). Clients that do not support this encryption level cannot connect to RD Session Host servers.</p>

<p style="margin-left: 20px">* Client Compatible: The Client Compatible setting encrypts data sent between the client and the server at the maximum key strength supported by the client. Use this encryption level in environments that include clients that do not support 128-bit encryption.</p>

<p style="margin-left: 20px">* Low: The Low setting encrypts only data sent from the client to the server by using 56-bit encryption.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, the encryption level to be used for remote connections to RD Session Host servers is not enforced through Group Policy.</p>

<p style="margin-left: 20px">Important</p>

<p style="margin-left: 20px">FIPS compliance can be configured through the System cryptography. Use FIPS compliant algorithms for encryption, hashing, and signing settings in Group Policy (under Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options.) The FIPS compliant setting encrypts and decrypts data sent from the client to the server and from the server to the client, with the Federal Information Processing Standard (FIPS) 140 encryption algorithms, by using Microsoft cryptographic modules. Use this encryption level when communications between clients and RD Session Host servers requires the highest level of encryption.
</p>

<a href="" id="remotedesktopservices-donotallowdriveredirection"></a>**RemoteDesktopServices/DoNotAllowDriveRedirection**

<p style="margin-left: 20px">This policy setting specifies whether to prevent the mapping of client drives in a Remote Desktop Services session (drive redirection).</p>

<p style="margin-left: 20px">By default, an RD Session Host server maps client drives automatically upon connection. Mapped drives appear in the session folder tree in File Explorer or Computer in the format <driveletter> on <computername>. You can use this policy setting to override this behavior.</p>

<p style="margin-left: 20px">If you enable this policy setting, client drive redirection is not allowed in Remote Desktop Services sessions, and Clipboard file copy redirection is not allowed on computers running Windows Server 2003, Windows 8, and Windows XP.</p>

<p style="margin-left: 20px">If you disable this policy setting, client drive redirection is always allowed. In addition, Clipboard file copy redirection is always allowed if Clipboard redirection is allowed.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, client drive redirection and Clipboard file copy redirection are not specified at the Group Policy level.
</p>

<a href="" id="remotedesktopservices-donotallowpasswordsaving"></a>**RemoteDesktopServices/DoNotAllowPasswordSaving**

<p style="margin-left: 20px">Controls whether passwords can be saved on this computer from Remote Desktop Connection.</p>

<p style="margin-left: 20px">If you enable this setting the password saving checkbox in Remote Desktop Connection will be disabled and users will no longer be able to save passwords. When a user opens an RDP file using Remote Desktop Connection and saves his settings, any password that previously existed in the RDP file will be deleted.</p>

<p style="margin-left: 20px">If you disable this setting or leave it not configured, the user will be able to save passwords using Remote Desktop Connection.</p>

<a href="" id="remotedesktopservices-promptforpassworduponconnection"></a>**RemoteDesktopServices/PromptForPasswordUponConnection**

<p style="margin-left: 20px">This policy setting specifies whether Remote Desktop Services always prompts the client for a password upon connection.</p>

<p style="margin-left: 20px">You can use this setting to enforce a password prompt for users logging on to Remote Desktop Services, even if they already provided the password in the Remote Desktop Connection client.</p>

<p style="margin-left: 20px">By default, Remote Desktop Services allows users to automatically log on by entering a password in the Remote Desktop Connection client.</p>

<p style="margin-left: 20px">If you enable this policy setting, users cannot automatically log on to Remote Desktop Services by supplying their passwords in the Remote Desktop Connection client. They are prompted for a password to log on.</p>

<p style="margin-left: 20px">If you disable this policy setting, users can always log on to Remote Desktop Services automatically by supplying their passwords in the Remote Desktop Connection client.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, automatic logon is not specified at the Group Policy level.
</p>

<a href="" id="remotedesktopservices-requiresecurerpccommunication"></a>**RemoteDesktopServices/RequireSecureRPCCommunication**

<p style="margin-left: 20px">Specifies whether a Remote Desktop Session Host server requires secure RPC communication with all clients or allows unsecured communication.</p>

<p style="margin-left: 20px">You can use this setting to strengthen the security of RPC communication with clients by allowing only authenticated and encrypted requests.</p>

<p style="margin-left: 20px">If the status is set to Enabled, Remote Desktop Services accepts requests from RPC clients that support secure requests, and does not allow unsecured communication with untrusted clients.</p>

<p style="margin-left: 20px">If the status is set to Disabled, Remote Desktop Services always requests security for all RPC traffic. However, unsecured communication is allowed for RPC clients that do not respond to the request.</p>

<p style="margin-left: 20px">If the status is set to Not Configured, unsecured communication is allowed.</p>

<p style="margin-left: 20px">Note: The RPC interface is used for administering and configuring Remote Desktop Services.</p>

<a href="" id="remoteprocedurecall-rpcendpointmapperclientauthentication"></a>**RemoteProcedureCall/RPCEndpointMapperClientAuthentication**

<p style="margin-left: 20px">This policy setting controls whether RPC clients authenticate with the Endpoint Mapper Service when the call they are making contains authentication information.   The Endpoint Mapper Service on computers running Windows NT4 (all service packs) cannot process authentication information supplied in this manner. </p>

<p style="margin-left: 20px">If you disable this policy setting, RPC clients will not authenticate to the Endpoint Mapper Service, but they will be able to communicate with the Endpoint Mapper Service on Windows NT4 Server.</p>

<p style="margin-left: 20px">If you enable this policy setting, RPC clients will authenticate to the Endpoint Mapper Service for calls that contain authentication information.  Clients making such calls will not be able to communicate with the Windows NT4 Server Endpoint Mapper Service.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, it remains disabled.  RPC clients will not authenticate to the Endpoint Mapper Service, but they will be able to communicate with the Windows NT4 Server Endpoint Mapper Service.</p>

<p style="margin-left: 20px">Note: This policy will not be applied until the system is rebooted.</p>

<a href="" id="remoteprocedurecall-restrictunauthenticatedrpcclients"></a>**RemoteProcedureCall/RestrictUnauthenticatedRPCClients**

<p style="margin-left: 20px">This policy setting controls how the RPC server runtime handles unauthenticated RPC clients connecting to RPC servers.</p>

<p style="margin-left: 20px">This policy setting impacts all RPC applications.  In a domain environment this policy setting should be used with caution as it can impact a wide range of functionality including group policy processing itself.  Reverting a change to this policy setting can require manual intervention on each affected machine.  This policy setting should never be applied to a domain controller.</p>

<p style="margin-left: 20px">If you disable this policy setting, the RPC server runtime uses the value of "Authenticated" on Windows Client, and the value of "None" on Windows Server versions that support this policy setting. </p>

<p style="margin-left: 20px">If you do not configure this policy setting, it remains disabled.  The RPC server runtime will behave as though it was enabled with the value of "Authenticated" used for Windows Client and the value of "None" used for Server SKUs that support this policy setting. </p>

<p style="margin-left: 20px">If you enable this policy setting, it directs the RPC server runtime to restrict unauthenticated RPC clients connecting to RPC servers running on a machine. A client will be considered an authenticated client if it uses a named pipe to communicate with the server or if it uses RPC Security. RPC Interfaces that have specifically requested to be accessible by unauthenticated clients may be exempt from this restriction, depending on the selected value for this policy setting.</p>

<p style="margin-left: 20px">--  "None" allows all RPC clients to connect to RPC Servers running on the machine on which the policy setting is applied.</p>

<p style="margin-left: 20px">--  "Authenticated" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied. Exemptions are granted to interfaces that have requested them.</p>

<p style="margin-left: 20px">--  "Authenticated without exceptions" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied.  No exceptions are allowed.</p>

<p style="margin-left: 20px">Note: This policy setting will not be applied until the system is rebooted.</p>

<a href="" id="storage-enhancedstoragedevices"></a>**Storage/EnhancedStorageDevices**

<p style="margin-left: 20px">This policy setting configures whether or not Windows will activate an Enhanced Storage device.</p>

<p style="margin-left: 20px">If you enable this policy setting, Windows will not activate unactivated Enhanced Storage devices.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, Windows will activate unactivated Enhanced Storage devices.</p>

<a href="" id="system-bootstartdriverinitialization"></a>**System/BootStartDriverInitialization**

<p style="margin-left: 20px">N/A</p>

<a href="" id="system-disablesystemrestore"></a>**System/DisableSystemRestore**

<p style="margin-left: 20px">Allows you to disable System Restore.</p>

<p style="margin-left: 20px">This policy setting allows you to turn off System Restore.</p>

<p style="margin-left: 20px">System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files. By default, System Restore is turned on for the boot volume.</p>

<p style="margin-left: 20px">If you enable this policy setting, System Restore is turned off, and the System Restore Wizard cannot be accessed. The option to configure System Restore or create a restore point through System Protection is also disabled.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users can perform System Restore and configure System Restore settings through System Protection.</p>

<p style="margin-left: 20px">Also, see the "Turn off System Restore configuration" policy setting. If the "Turn off System Restore" policy setting is disabled or not configured, the "Turn off System Restore configuration" policy setting is used to determine whether the option to configure System Restore is available.</p>

<a href="" id="windowslogon-disablelockscreenappnotifications"></a>**WindowsLogon/DisableLockScreenAppNotifications**

<p style="margin-left: 20px">This policy setting allows you to prevent app notifications from appearing on the lock screen.</p>

<p style="margin-left: 20px">If you enable this policy setting, no app notifications are displayed on the lock screen.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users can choose which apps display notifications on the lock screen.</p>

<a href="" id="windowslogon-dontdisplaynetworkselectionui"></a>**WindowsLogon/DontDisplayNetworkSelectionUI**

<p style="margin-left: 20px">This policy setting allows you to control whether anyone can interact with available networks UI on the logon screen.</p>

<p style="margin-left: 20px">If you enable this policy setting, the PC's network connectivity state cannot be changed without signing into Windows.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, any user can disconnect the PC from the network or can connect the PC to other available networks without signing into Windows.</p>



<!-- ADMX-DESCRIPTIONS-END -->



