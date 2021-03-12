---
title: Policy CSP
description: Learn how the Policy configuration service provider (CSP) enables the enterprise to configure policies on Windows 10.
ms.assetid: 4F3A1134-D401-44FC-A583-6EDD3070BA4F
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 07/18/2019
---

# Policy CSP

The Policy configuration service provider enables the enterprise to configure policies on Windows 10. Use this configuration service provider to configure any company policies.

The Policy configuration service provider has the following sub-categories:

-   Policy/Config/*AreaName* – Handles the policy configuration request from the server.
-   Policy/Result/*AreaName* – Provides a read-only path to policies enforced on the device.

<a href="" id="policy-scope"></a>

> [!Important]
> Policy scope is the level at which a policy can be configured. Some policies can only be configured at the device level, meaning the policy will take effect independent of who is logged into the device. Other policies can be configured at the user level, meaning the policy will only take effect for that user. 
>
> The allowed scope of a specific policy is represented below its table of supported Windows editions.  To configure a policy under a specific scope (user vs. device), please use the following paths:
>
> User scope:
> -   **./User/Vendor/MSFT/Policy/Config/_AreaName/PolicyName_** to configure the policy.
> -   **./User/Vendor/MSFT/Policy/Result/_AreaName/PolicyName_** to get the result.
>
> Device scope:
> -   **./Device/Vendor/MSFT/Policy/Config/_AreaName/PolicyName_** to configure the policy.
> -   **./Device/Vendor/MSFT/Policy/Result/_AreaName/PolicyName_** to get the result.
>
> For device wide configuration the **_Device/_**  portion may be omitted from the path, deeming the following paths respectively equivalent:
>
> - **./Vendor/MSFT/Policy/Config/_AreaName/PolicyName_** to configure the policy.
> - **./Vendor/MSFT/Policy/Result/_AreaName/PolicyName_** to get the result.

The following diagram shows the Policy configuration service provider in tree format as used by both Open Mobile Alliance Device Management (OMA DM) and OMA Client Provisioning.

![policy csp diagram](images/provisioning-csp-policy.png)


<a href="" id="--vendor-msft-policy"></a>**./Vendor/MSFT/Policy**  
<p style="margin-left: 20px">The root node for the Policy configuration service provider.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-config"></a>**Policy/Config**  
<p style="margin-left: 20px">Node for grouping all policies configured by one source. The configuration source can use this path to set policy values and later query any policy value that it previously set. One policy can be configured by multiple configuration sources. If a configuration source wants to query the result of conflict resolution (for example, if Exchange and MDM both attempt to set a value,) the configuration source can use the Policy/Result path to retrieve the resulting value.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-config-areaname"></a>**Policy/Config/**<strong>*AreaName*</strong>  
<p style="margin-left: 20px">The area group that can be configured by a single technology for a single provider. Once added, you cannot change the value.

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="policy-config-areaname-policyname"></a>**Policy/Config/**<strong>*AreaName/PolicyName*</strong>  
<p style="margin-left: 20px">Specifies the name/value pair used in the policy.

<p style="margin-left: 20px">The following list shows some tips to help you when configuring policies:

-   Separate substring values by the Unicode &\#xF000; in the XML file.

> [!NOTE]
> A query from a different caller could provide a different value as each caller could have different values for a named policy.

-   In SyncML, wrap this policy with the Atomic command so that the policy settings are treated as a single transaction.
-   Supported operations are Add, Get, Delete, and Replace.
-   Value type is string.

<a href="" id="policy-result"></a>**Policy/Result**  
<p style="margin-left: 20px">Groups the evaluated policies from all providers that can be configured.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-result-areaname"></a>**Policy/Result/**<strong>*AreaName*</strong>  
<p style="margin-left: 20px">The area group that can be configured by a single technology independent of the providers.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-result-areaname-policyname"></a>**Policy/Result/**<strong>*AreaName/PolicyName*</strong>  
<p style="margin-left: 20px">Specifies the name/value pair used in the policy.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-result"></a>**Policy/ConfigOperations**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. The root node for grouping different configuration operations.

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="policy-configoperations-admxinstall"></a>**Policy/ConfigOperations/ADMXInstall**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows settings for ADMX files for Win32 and Desktop Bridge apps to be imported (ingested) by your device and processed into new ADMX-backed policies or preferences. By using ADMXInstall, you can add ADMX-backed policies for those Win32 or Desktop Bridge apps that have been added between OS releases. ADMX-backed policies are ingested to your device by using the Policy CSP URI: <code>./Vendor/MSFT/Policy/ConfigOperations/ADMXInstall</code>. Each ADMX-backed policy or preference that is added is assigned a unique ID. For more information about using Policy CSP to configure Win32 and Desktop Bridge app policies, see <a href="win32-and-centennial-app-policy-configuration.md" data-raw-source="[Win32 and Desktop Bridge app policy configuration](win32-and-centennial-app-policy-configuration.md)">Win32 and Desktop Bridge app policy configuration</a>.

> [!NOTE]
> The OPAX settings that are managed by the Microsoft Office Customization Tool are not supported by MDM. For more information about this tool, see [Office Customization Tool](https://technet.microsoft.com/library/cc179097.aspx).

<p style="margin-left: 20px">ADMX files that have been installed by using <strong>ConfigOperations/ADMXInstall</strong> can later be deleted by using the URI delete operation. Deleting an ADMX file will delete the ADMX file from disk, remove the metadata from the ADMXdefault registry hive, and delete all the policies that were set from the file. The MDM server can also delete all ADMX policies that are tied to a particular app by calling delete on the URI, <code>./Vendor/MSFT/Policy/ConfigOperations/ADMXInstall/{AppName}</code>.

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="policy-configoperations-admxinstall-appname"></a>**Policy/ConfigOperations/ADMXInstall/**<strong>*AppName*</strong>  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the name of the Win32 or Desktop Bridge app associated with the ADMX file. 

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="policy-configoperations-admxinstall-appname-policy"></a>**Policy/ConfigOperations/ADMXInstall/**<strong>*AppName*/Policy</strong>  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies that a Win32 or Desktop Bridge app policy is to be imported.

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="policy-configoperations-admxinstall-appname-policy-uniqueid"></a>**Policy/ConfigOperations/ADMXInstall/**<strong>*AppName*/Policy/*UniqueID*</strong>  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the unique ID of the app ADMX file that contains the policy to import.

<p style="margin-left: 20px">Supported operations are Add and Get. Does not support Delete.

<a href="" id="policy-configoperations-admxinstall-appname-preference"></a>**Policy/ConfigOperations/ADMXInstall/**<strong>*AppName*/Preference</strong>  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies that a Win32 or Desktop Bridge app preference is to be imported.

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="policy-configoperations-admxinstall-appname-preference-uniqueid"></a>**Policy/ConfigOperations/ADMXInstall/**<strong>*AppName*/Preference/*UniqueID*</strong>  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the unique ID of the app ADMX file that contains the preference to import.

<p style="margin-left: 20px">Supported operations are Add and Get. Does not support Delete.


## Policies

### AboveLock policies

<dl>
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
  
</dl>

### ActiveXControls policies

<dl>
  <dd>
    <a href="./policy-csp-activexcontrols.md#activexcontrols-approvedinstallationsites" id="activexcontrols-approvedinstallationsites">ActiveXControls/ApprovedInstallationSites</a>
  </dd>
</dl>

### ADMX_ActiveXInstallService policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-activexinstallservice.md#admx-activexinstallservice-axisurlzonepolicies" id="admx-activexinstallservice-axisurlzonepolicies">ADMX_ActiveXInstallService/AxISURLZonePolicies</a>
  </dd>
</dl>

### ADMX_AddRemovePrograms policies
<dl>
  <dd>
    <a href="./policy-csp-admx-addremoveprograms.md#admx-addremoveprograms-defaultcategory" id="admx-addremoveprograms-defaultcategory">ADMX_AddRemovePrograms/DefaultCategory</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-addremoveprograms.md#admx-addremoveprograms-noaddfromcdorfloppy" id="admx-addremoveprograms-noaddfromcdorfloppy">ADMX_AddRemovePrograms/NoAddFromCDorFloppy</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-addremoveprograms.md#admx-addremoveprograms-noaddfrominternet" id="admx-addremoveprograms-noaddfrominternet">ADMX_AddRemovePrograms/NoAddFromInternet</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-addremoveprograms.md#admx-addremoveprograms-noaddfromnetwork" id="admx-addremoveprograms-noaddfromnetwork">ADMX_AddRemovePrograms/NoAddFromNetwork</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-addremoveprograms.md#admx-addremoveprograms-noaddpage" id="admx-addremoveprograms-noaddpage">ADMX_AddRemovePrograms/NoAddPage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-addremoveprograms.md#admx-addremoveprograms-noaddremoveprograms" id="admx-addremoveprograms-noaddremoveprograms">ADMX_AddRemovePrograms/NoAddRemovePrograms</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-addremoveprograms.md#admx-addremoveprograms-nochooseprogramspage" id="admx-addremoveprograms-nochooseprogramspage">ADMX_AddRemovePrograms/NoChooseProgramsPage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-addremoveprograms.md#admx-addremoveprograms-noremovepage" id="admx-addremoveprograms-noremovepage">ADMX_AddRemovePrograms/NoRemovePage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-addremoveprograms.md#admx-addremoveprograms-noservices" id="admx-addremoveprograms-noservices">ADMX_AddRemovePrograms/NoServices</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-addremoveprograms.md#admx-addremoveprograms-nosupportinfo" id="admx-addremoveprograms-nosupportinfo">ADMX_AddRemovePrograms/NoSupportInfo</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-addremoveprograms.md#admx-addremoveprograms-nowindowssetuppage" id="admx-addremoveprograms-nowindowssetuppage">ADMX_AddRemovePrograms/NoWindowsSetupPage</a>
  </dd>
</dl>

### ADMX_AppCompat policies

<dl>
  <dd>
    <a href="./policy-csp-admx-appcompat.md#admx-appcompat-appcompatprevent16bitmach" id="admx-appcompat-appcompatprevent16bitmach">ADMX_AppCompat/AppCompatPrevent16BitMach</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-appcompat.md#admx-appcompat-appcompatremoveprogramcompatproppage" id="admx-appcompat-appcompatremoveprogramcompatproppage">ADMX_AppCompat/AppCompatRemoveProgramCompatPropPage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-appcompat.md#admx-appcompat-appcompatturnoffapplicationimpacttelemetry" id="admx-appcompat-appcompatturnoffapplicationimpacttelemetry">ADMX_AppCompat/AppCompatTurnOffApplicationImpactTelemetry</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-appcompat.md#admx-appcompat-appcompatturnoffswitchback" id="admx-appcompat-appcompatturnoffswitchback">ADMX_AppCompat/AppCompatTurnOffSwitchBack</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-appcompat.md#admx-appcompat-appcompatturnoffengine" id="admx-appcompat-appcompatturnoffengine">ADMX_AppCompat/AppCompatTurnOffEngine</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-appcompat.md#admx-appcompat-appcompatturnoffprogramcompatibilityassistant_1" id="admx-appcompat-appcompatturnoffprogramcompatibilityassistant_1">ADMX_AppCompat/AppCompatTurnOffProgramCompatibilityAssistant_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-appcompat.md#admx-appcompat-appcompatturnoffprogramcompatibilityassistant_2" id="admx-appcompat-appcompatturnoffprogramcompatibilityassistant_2">ADMX_AppCompat/AppCompatTurnOffProgramCompatibilityAssistant_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-appcompat.md#admx-appcompat-appcompatturnoffuseractionrecord" id="admx-appcompat-appcompatturnoffuseractionrecord">ADMX_AppCompat/AppCompatTurnOffUserActionRecord</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-appcompat.md#admx-appcompat-appcompatturnoffprograminventory" id="admx-appcompat-appcompatturnoffprograminventory">ADMX_AppCompat/AppCompatTurnOffProgramInventory</a>
  </dd>
</dl>

### ADMX_AppxPackageManager policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-appxpackagemanager.md#admx-appxpackagemanager-allowdeploymentinspecialprofiles" id="admx-appxpackagemanager-allowdeploymentinspecialprofiles">ADMX_AppxPackageManager/AllowDeploymentInSpecialProfiles</a>
  </dd>
</dl>

### ADMX_AppXRuntime policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-appxruntime.md#admx-appxruntime-appxruntimeapplicationcontenturirules" id="admx-appxruntime-appxruntimeapplicationcontenturirules">ADMX_AppXRuntime/AppxRuntimeApplicationContentUriRules</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-appxruntime.md#admx-appxruntime-appxruntimeblockfileelevation" id="admx-appxruntime-appxruntimeblockfileelevation">ADMX_AppXRuntime/AppxRuntimeBlockFileElevation</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-appxruntime.md#admx-appxruntime-appxruntimeblockhostedappaccesswinrt" id="admx-appxruntime-appxruntimeblockhostedappaccesswinrt">ADMX_AppXRuntime/AppxRuntimeBlockHostedAppAccessWinRT</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-appxruntime.md#admx-appxruntime-appxruntimeblockprotocolelevation" id="admx-appxruntime-appxruntimeblockprotocolelevation">ADMX_AppXRuntime/AppxRuntimeBlockProtocolElevation</a>
  </dd>
</dl>

### ADMX_AttachmentManager policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-attachmentmanager.md#admx-attachmentmanager-am-estimatefilehandlerrisk" id="admx-attachmentmanager-am-estimatefilehandlerrisk">ADMX_AttachmentManager/AM_EstimateFileHandlerRisk</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-attachmentmanager.md#admx-attachmentmanager-am-setfilerisklevel" id="admx-attachmentmanager-am-setfilerisklevel">ADMX_AttachmentManager/AM_SetFileRiskLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-attachmentmanager.md#admx-attachmentmanager-am-sethighriskinclusion" id="admx-attachmentmanager-am-sethighriskinclusion">ADMX_AttachmentManager/AM_SetHighRiskInclusion</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-attachmentmanager.md#admx-attachmentmanager-am-setlowriskinclusion" id="admx-attachmentmanager-am-setlowriskinclusion">ADMX_AttachmentManager/AM_SetLowRiskInclusion</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-attachmentmanager.md#admx-attachmentmanager-am-setmodriskinclusion" id="admx-attachmentmanager-am-setmodriskinclusion">ADMX_AttachmentManager/AM_SetModRiskInclusion</a>
  </dd>
</dl>

### ADMX_AuditSettings policies

<dl>
  <dd>
    <a href="./policy-csp-admx-auditsettings.md#admx-auditsettings-includecmdline" id="admx-auditsettings-includecmdline">ADMX_AuditSettings/IncludeCmdLine</a>
  </dd>
</dl>


### ADMX_Bits policies

<dl>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-disablebranchcache" id="admx-bits-bits-disablebranchcache">ADMX_Bits/BITS_DisableBranchCache</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-disablepeercachingclient" id="admx-bits-bits-disablepeercachingclient">ADMX_Bits/BITS_DisablePeercachingClient</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-disablepeercachingserver" id="admx-bits-bits-disablepeercachingserver">ADMX_Bits/BITS_DisablePeercachingServer</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-enablepeercaching" id="admx-bits-bits-enablepeercaching">ADMX_Bits/BITS_EnablePeercaching</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-maxbandwidthservedforpeers" id="admx-bits-bits-maxbandwidthservedforpeers">ADMX_Bits/BITS_MaxBandwidthServedForPeers</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-maxbandwidthv2-maintenance" id="admx-bits-bits-maxbandwidthv2-maintenance">ADMX_Bits/BITS_MaxBandwidthV2_Maintenance</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-maxbandwidthv2-work" id="admx-bits-bits-maxbandwidthv2-work">ADMX_Bits/BITS_MaxBandwidthV2_Work</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-maxcachesize" id="admx-bits-bits-maxcachesize">ADMX_Bits/BITS_MaxCacheSize</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-maxcontentage" id="admx-bits-bits-maxcontentage">ADMX_Bits/BITS_MaxContentAge</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-maxdownloadtime" id="admx-bits-bits-maxdownloadtime">ADMX_Bits/BITS_MaxDownloadTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-maxfilesperjob" id="admx-bits-bits-maxfilesperjob">ADMX_Bits/BITS_MaxFilesPerJob</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-maxjobspermachine" id="admx-bits-bits-maxjobspermachine">ADMX_Bits/BITS_MaxJobsPerMachine</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-maxjobsperuser" id="admx-bits-bits-maxjobsperuser">ADMX_Bits/BITS_MaxJobsPerUser</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-bits.md#admx-bits-bits-maxrangesperfile" id="admx-bits-bits-maxrangesperfile">ADMX_Bits/BITS_MaxRangesPerFile</a>
  </dd>
</dl>

### ADMX_CipherSuiteOrder policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-ciphersuiteorder.md#admx-ciphersuiteorder-sslciphersuiteorder" id="admx-ciphersuiteorder-sslciphersuiteorder">ADMX_CipherSuiteOrder/SSLCipherSuiteOrder</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-ciphersuiteorder.md#admx-ciphersuiteorder-sslcurveorder" id="admx-ciphersuiteorder-sslcurveorder">ADMX_CipherSuiteOrder/SSLCurveOrder</a>
  </dd>
</dl>

### ADMX_COM policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-com.md#admx-com-appmgmt-com-searchforclsid-1" id="admx-com-appmgmt-com-searchforclsid-1">ADMX_COM/AppMgmt_COM_SearchForCLSID_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-com.md#admx-com-appmgmt-com-searchforclsid-2" id="admx-com-appmgmt-com-searchforclsid-2">ADMX_COM/AppMgmt_COM_SearchForCLSID_2</a>
  </dd>
</dl>

### ADMX_ControlPanel policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-controlpanel.md#admx-controlpanel-disallowcpls" id="admx-controlpanel-disallowcpls">ADMX_ControlPanel/DisallowCpls</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpanel.md#admx-controlpanel-forceclassiccontrolpanel" id="admx-controlpanel-forceclassiccontrolpanel">ADMX_ControlPanel/ForceClassicControlPanel</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpanel.md#admx-controlpanel-nocontrolpanel" id="admx-controlpanel-nocontrolpanel">ADMX_ControlPanel/NoControlPanel</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpanel.md#admx-controlpanel-restrictcpls" id="admx-controlpanel-restrictcpls">ADMX_ControlPanel/RestrictCpls</a>
  </dd>
</dl>

### ADMX_ControlPanelDisplay policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-display-disable" id="">ADMX_ControlPanelDisplay/CPL_Display_Disable</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-display-hidesettings" id="">ADMX_ControlPanelDisplay/CPL_Display_HideSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-disablecolorschemechoice" id="">ADMX_ControlPanelDisplay/CPL_Personalization_DisableColorSchemeChoice</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-disablethemechange" id="">ADMX_ControlPanelDisplay/CPL_Personalization_DisableThemeChange</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-disablevisualstyle" id="">ADMX_ControlPanelDisplay/CPL_Personalization_DisableVisualStyle</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-enablescreensaver" id="admx-controlpaneldisplay-cpl-personalization-enablescreensaver">ADMX_ControlPanelDisplay/CPL_Personalization_EnableScreenSaver</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-forcedefaultlockscreen" id="admx-controlpaneldisplay-cpl-personalization-forcedefaultlockscreen">ADMX_ControlPanelDisplay/CPL_Personalization_ForceDefaultLockScreen</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-lockfontsize" id="admx-controlpaneldisplay-cpl-personalization-lockfontsize">ADMX_ControlPanelDisplay/CPL_Personalization_LockFontSize</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-nochanginglockscreen" id="admx-controlpaneldisplay-cpl-personalization-nochanginglockscreen">ADMX_ControlPanelDisplay/CPL_Personalization_NoChangingLockScreen</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-nochangingstartmenubackground" id="admx-controlpaneldisplay-cpl-personalization-nochangingstartmenubackground">ADMX_ControlPanelDisplay/CPL_Personalization_NoChangingStartMenuBackground</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-nocolorappearanceui" id="admx-controlpaneldisplay-cpl-personalization-nocolorappearanceui">ADMX_ControlPanelDisplay/CPL_Personalization_NoColorAppearanceUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-nodesktopbackgroundui" id="admx-controlpaneldisplay-cpl-personalization-nodesktopbackgroundui">ADMX_ControlPanelDisplay/CPL_Personalization_NoDesktopBackgroundUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-nodesktopiconsui" id="admx-controlpaneldisplay-cpl-personalization-nodesktopiconsui">ADMX_ControlPanelDisplay/CPL_Personalization_NoDesktopIconsUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-nolockscreen" id="admx-controlpaneldisplay-cpl-personalization-nolockscreen">ADMX_ControlPanelDisplay/CPL_Personalization_NoLockScreen</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-nomousepointersui" id="admx-controlpaneldisplay-cpl-personalization-nomousepointersui">ADMX_ControlPanelDisplay/CPL_Personalization_NoMousePointersUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-noscreensaverui" id="admx-controlpaneldisplay-cpl-personalization-noscreensaverui">ADMX_ControlPanelDisplay/CPL_Personalization_NoScreenSaverUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-nosoundschemeui" id="admx-controlpaneldisplay-cpl-personalization-nosoundschemeui">ADMX_ControlPanelDisplay/CPL_Personalization_NoSoundSchemeUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-personalcolors" id="admx-controlpaneldisplay-cpl-personalization-personalcolors">ADMX_ControlPanelDisplay/CPL_Personalization_PersonalColors</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-screensaverissecure" id="admx-controlpaneldisplay-cpl-personalization-screensaverissecure">ADMX_ControlPanelDisplay/CPL_Personalization_ScreenSaverIsSecure</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-screensavertimeout" id="admx-controlpaneldisplay-cpl-personalization-screensavertimeout">ADMX_ControlPanelDisplay/CPL_Personalization_ScreenSaverTimeOut</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-setscreensaver" id="admx-controlpaneldisplay-cpl-personalization-setscreensaver">ADMX_ControlPanelDisplay/CPL_Personalization_SetScreenSaver</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-settheme" id="admx-controlpaneldisplay-cpl-personalization-settheme">ADMX_ControlPanelDisplay/CPL_Personalization_SetTheme</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-setvisualstyle" id="admx-controlpaneldisplay-cpl-personalization-setvisualstyle">ADMX_ControlPanelDisplay/CPL_Personalization_SetVisualStyle</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-controlpaneldisplay.md#admx-controlpaneldisplay-cpl-personalization-startbackground" id="admx-controlpaneldisplay-cpl-personalization-startbackground">ADMX_ControlPanelDisplay/CPL_Personalization_StartBackground</a>
  </dd>
</dl>

### ADMX_Cpls policies

<dl>
  <dd>
    <a href="./policy-csp-admx-ctrlaltdel.md#admx-ctrlaltdel-disablechangepassword" id="#admx-ctrlaltdel-disablechangepassword">ADMX_CtrlAltDel/DisableChangePassword</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-ctrlaltdel.md#admx-ctrlaltdel-disablelockcomputer" id="#admx-ctrlaltdel-disablelockcomputer">ADMX_CtrlAltDel/DisableLockComputer</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-ctrlaltdel.md#admx-ctrlaltdel-disabletaskmgr" id="#admx-ctrlaltdel-disabletaskmgr">ADMX_CtrlAltDel/DisableTaskMgr</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-ctrlaltdel.md#admx-ctrlaltdel-nologoff" id="#admx-ctrlaltdel-nologoff">ADMX_CtrlAltDel/NoLogoff</a>
  </dd>
</dl>

### ADMX_CredentialProviders policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-credentialproviders.md#admx-credentialproviders-allowdomaindelaylock" id="admx-credentialproviders-allowdomaindelaylock">ADMX_CredentialProviders/AllowDomainDelayLock</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-credentialproviders.md#admx-credentialproviders-defaultcredentialprovider" id="admx-credentialproviders-defaultcredentialprovider">ADMX_CredentialProviders/DefaultCredentialProvider</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-credentialproviders.md#admx-credentialproviders-excludedcredentialproviders" id="admx-credentialproviders-excludedcredentialproviders">ADMX_CredentialProviders/ExcludedCredentialProviders</a>
  </dd>
</dl>

### ADMX_CredSsp policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-credssp.md#admx-credssp-allowdefcredentialswhenntlmonly" id="admx-credssp-allowdefcredentialswhenntlmonly">ADMX_CredSsp/AllowDefCredentialsWhenNTLMOnly</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-credssp.md#admx-credssp-allowdefaultcredentials" id="admx-credssp-allowdefaultcredentials">ADMX_CredSsp/AllowDefaultCredentials</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-credssp.md#admx-credssp-allowencryptionoracle" id="admx-credssp-allowencryptionoracle">ADMX_CredSsp/AllowEncryptionOracle</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-credssp.md#admx-credssp-allowfreshcredentials" id="admx-credssp-allowfreshcredentials">ADMX_CredSsp/AllowFreshCredentials</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-credssp.md#admx-credssp-allowfreshcredentialswhenntlmonly" id="admx-credssp-allowfreshcredentialswhenntlmonly">ADMX_CredSsp/AllowFreshCredentialsWhenNTLMOnly</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-credssp.md#admx-credssp-allowsavedcredentials" id="admx-credssp-allowsavedcredentials">ADMX_CredSsp/AllowSavedCredentials</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-credssp.md#admx-credssp-allowsavedcredentialswhenntlmonly" id="admx-credssp-allowsavedcredentialswhenntlmonly">ADMX_CredSsp/AllowSavedCredentialsWhenNTLMOnly</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-credssp.md#admx-credssp-denydefaultcredentials" id="admx-credssp-denydefaultcredentials">ADMX_CredSsp/DenyDefaultCredentials</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-credssp.md#admx-credssp-denyfreshcredentials" id="admx-credssp-denyfreshcredentials">ADMX_CredSsp/DenyFreshCredentials</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-credssp.md#admx-credssp-denysavedcredentials" id="admx-credssp-denysavedcredentials">ADMX_CredSsp/DenySavedCredentials</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-credssp.md#admx-credssp-restrictedremoteadministration" id="admx-credssp-restrictedremoteadministration">ADMX_CredSsp/RestrictedRemoteAdministration</a>

### ADMX_CredUI policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-credui.md#admx-credui-enablesecurecredentialprompting" id="admx-credui-enablesecurecredentialprompting">ADMX_CredUI/EnableSecureCredentialPrompting</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-credui.md#admx-credui-nolocalpasswordresetquestions" id="admx-credui-nolocalpasswordresetquestions">ADMX_CredUI/NoLocalPasswordResetQuestions</a>
  </dd>
</dl>

###  ADMX_CtrlAltDel policies  
<dl>
  <dd>
    <a href="./policy-csp-admx-cpls.md#admx-cpls-usedefaulttile" id="#admx-cpls-usedefaulttile">ADMX_Cpls/UseDefaultTile</a>
  </dd>
</dl>

### ADMX_DataCollection policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-datacollection.md#admx-datacollection-commercialidpolicy" id="admx-datacollection-commercialidpolicy">ADMX_DataCollection/CommercialIdPolicy</a>
  </dd>
</dl>

### ADMX_Desktop policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-ad-enablefilter" id="admx-desktop-ad-enablefilter">ADMX_Desktop/AD_EnableFilter</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-ad-hidedirectoryfolder" id="admx-desktop-ad-hidedirectoryfolder">ADMX_Desktop/AD_HideDirectoryFolder</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-ad-querylimit" id="admx-desktop-ad-querylimit">ADMX_Desktop/AD_QueryLimit</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-forceactivedesktopon" id="admx-desktop-forceactivedesktopon">ADMX_Desktop/ForceActiveDesktopOn</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-noactivedesktop" id="admx-desktop-noactivedesktop">ADMX_Desktop/NoActiveDesktop</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-noactivedesktopchanges" id="admx-desktop-noactivedesktopchanges">ADMX_Desktop/NoActiveDesktopChanges</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-nodesktop" id="admx-desktop-nodesktop">ADMX_Desktop/NoDesktop</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-nodesktopcleanupwizard" id="admx-desktop-nodesktopcleanupwizard">ADMX_Desktop/NoDesktopCleanupWizard</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-nointerneticon" id="admx-desktop-nointerneticon">ADMX_Desktop/NoInternetIcon</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-nomycomputericon" id="admx-desktop-nomycomputericon">ADMX_Desktop/NoMyComputerIcon</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-nomydocumentsicon" id="admx-desktop-nomydocumentsicon">ADMX_Desktop/NoMyDocumentsIcon</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-nonethood" id="admx-desktop-nonethood">ADMX_Desktop/NoNetHood</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-nopropertiesmycomputer" id="admx-desktop-nopropertiesmycomputer">ADMX_Desktop/NoPropertiesMyComputer</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-nopropertiesmydocuments" id="admx-desktop-nopropertiesmydocuments">ADMX_Desktop/NoPropertiesMyDocuments</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-norecentdocsnethood" id="admx-desktop-norecentdocsnethood">ADMX_Desktop/NoRecentDocsNetHood</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-norecyclebinicon" id="admx-desktop-norecyclebinicon">ADMX_Desktop/NoRecycleBinIcon</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-norecyclebinproperties" id="admx-desktop-norecyclebinproperties">ADMX_Desktop/NoRecycleBinProperties</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-nosavesettings" id="admx-desktop-nosavesettings">ADMX_Desktop/NoSaveSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-nowindowminimizingshortcuts" id="admx-desktop-nowindowminimizingshortcuts">ADMX_Desktop/NoWindowMinimizingShortcuts</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-wallpaper" id="admx-desktop-wallpaper">ADMX_Desktop/Wallpaper</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-sz-atc-disableadd" id="admx-desktop-sz-atc-disableadd">ADMX_Desktop/sz_ATC_DisableAdd</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-sz-atc-disableclose" id="admx-desktop-sz-atc-disableclose">ADMX_Desktop/sz_ATC_DisableClose</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-sz-atc-disabledel" id="admx-desktop-sz-atc-disabledel">ADMX_Desktop/sz_ATC_DisableDel</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-sz-atc-disableedit" id="admx-desktop-sz-atc-disableedit">ADMX_Desktop/sz_ATC_DisableEdit</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-sz-atc-nocomponents" id="admx-desktop-sz-atc-nocomponents">ADMX_Desktop/sz_ATC_NoComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-sz-admincomponents-title" id="admx-desktop-sz-admincomponents-title">ADMX_Desktop/sz_AdminComponents_Title</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-sz-db-dragdropclose" id="admx-desktop-sz-db-dragdropclose">ADMX_Desktop/sz_DB_DragDropClose</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-sz-db-moving" id="admx-desktop-sz-db-moving">ADMX_Desktop/sz_DB_Moving</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-desktop.md#admx-desktop-sz-dwp-nohtmlpaper" id="admx-desktop-sz-dwp-nohtmlpaper">ADMX_Desktop/sz_DWP_NoHTMLPaper</a>
  </dd>
</dl>

### ADMX_DeviceInstallation policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-deviceinstallation.md#admx-deviceinstallation-deviceinstall-allowadmininstall" id="admx-deviceinstallation-deviceinstall-allowadmininstall">ADMX_DeviceInstallation/DeviceInstall_AllowAdminInstall</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-deviceinstallation.md#admx-deviceinstallation-deviceinstall-deniedpolicy-detailtext" id="admx-deviceinstallation-deviceinstall-deniedpolicy-detailtext">ADMX_DeviceInstallation/DeviceInstall_DeniedPolicy_DetailText</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-deviceinstallation.md#admx-deviceinstallation-deviceinstall-deniedpolicy-simpletext" id="admx-deviceinstallation-deviceinstall-deniedpolicy-simpletext">ADMX_DeviceInstallation/DeviceInstall_DeniedPolicy_SimpleText</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-deviceinstallation.md#admx-deviceinstallation-deviceinstall-installtimeout" id="admx-deviceinstallation-deviceinstall-installtimeout">ADMX_DeviceInstallation/DeviceInstall_InstallTimeout</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-deviceinstallation.md#admx-deviceinstallation-deviceinstall-policy-reboottime" id="admx-deviceinstallation-deviceinstall-policy-reboottime">ADMX_DeviceInstallation/DeviceInstall_Policy_RebootTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-deviceinstallation.md#admx-deviceinstallation-deviceinstall-removable-deny" id="admx-deviceinstallation-deviceinstall-removable-deny">ADMX_DeviceInstallation/DeviceInstall_Removable_Deny</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-deviceinstallation.md#admx-deviceinstallation-deviceinstall-systemrestore" id="admx-deviceinstallation-deviceinstall-systemrestore">ADMX_DeviceInstallation/DeviceInstall_SystemRestore</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-deviceinstallation.md#admx-deviceinstallation-deviceinstall-classes-allowuser" id="admx-deviceinstallation-deviceinstall-classes-allowuser">ADMX_DeviceInstallation/DriverInstall_Classes_AllowUser</a>
  </dd>
</dl>

### ADMX_DeviceSetup policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-devicesetup.md#admx-devicesetup-deviceinstall-balloontips" id="admx-devicesetup-deviceinstall-balloontips">ADMX_DeviceSetup/DeviceInstall_BalloonTips</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-devicesetup.md#admx-devicesetup-driversearchplaces-searchorderconfiguration" id="admx-devicesetup-driversearchplaces-searchorderconfiguration">ADMX_DeviceSetup/DriverSearchPlaces_SearchOrderConfiguration</a>
  </dd>
</dl>

### ADMX_DigitalLocker policies
<dl>
  <dd>
    <a href="./policy-csp-admx-digitallocker.md#admx-digitallocker-digitalx-diableapplication-titletext-1" id="admx-digitallocker-digitalx-diableapplication-titletext-1">ADMX_DigitalLocker/Digitalx_DiableApplication_TitleText_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-digitallocker.md#admx-digitallocker-digitalx-diableapplication-titletext-2" id="admx-digitallocker-digitalx-diableapplication-titletext-2">ADMX_DigitalLocker/Digitalx_DiableApplication_TitleText_2</a>
  </dd>
</dl>

### ADMX_DnsClient policies

<dl>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-allowfqdnnetbiosqueries" id="admx-dnsclient-dns-allowfqdnnetbiosqueries">ADMX_DnsClient/DNS_AllowFQDNNetBiosQueries</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-appendtomultilabelname" id="admx-dnsclient-dns-appendtomultilabelname">ADMX_DnsClient/DNS_AppendToMultiLabelName</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-domain" id="admx-dnsclient-dns-domain">ADMX_DnsClient/DNS_Domain</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-domainnamedevolutionlevel" id="admx-dnsclient-dns-domainnamedevolutionlevel">ADMX_DnsClient/DNS_DomainNameDevolutionLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-idnencoding" id="admx-dnsclient-dns-idnencoding">ADMX_DnsClient/DNS_IdnEncoding</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-idnmapping" id="admx-dnsclient-dns-idnmapping">ADMX_DnsClient/DNS_IdnMapping</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-nameserver" id="admx-dnsclient-dns-nameserver">ADMX_DnsClient/DNS_NameServer</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-preferlocalresponsesoverlowerorderdns" id="admx-dnsclient-dns-preferlocalresponsesoverlowerorderdns">ADMX_DnsClient/DNS_PreferLocalResponsesOverLowerOrderDns</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-primarydnssuffix" id="admx-dnsclient-dns-primarydnssuffix">ADMX_DnsClient/DNS_PrimaryDnsSuffix</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-registeradaptername" id="admx-dnsclient-dns-registeradaptername">ADMX_DnsClient/DNS_RegisterAdapterName</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-registerreverselookup" id="admx-dnsclient-dns-registerreverselookup">ADMX_DnsClient/DNS_RegisterReverseLookup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-registrationenabled" id="admx-dnsclient-dns-registrationenabled">ADMX_DnsClient/DNS_RegistrationEnabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-registrationoverwritesinconflict" id="admx-dnsclient-dns-registrationoverwritesinconflict">ADMX_DnsClient/DNS_RegistrationOverwritesInConflict</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-registrationrefreshinterval" id="admx-dnsclient-dns-registrationrefreshinterval">ADMX_DnsClient/DNS_RegistrationRefreshInterval</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-registrationttl" id="admx-dnsclient-dns-registrationttl">ADMX_DnsClient/DNS_RegistrationTtl</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-searchlist" id="admx-dnsclient-dns-searchlist">ADMX_DnsClient/DNS_SearchList</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-smartmultihomednameresolution" id="admx-dnsclient-dns-smartmultihomednameresolution">ADMX_DnsClient/DNS_SmartMultiHomedNameResolution</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-smartprotocolreorder" id="admx-dnsclient-dns-smartprotocolreorder">ADMX_DnsClient/DNS_SmartProtocolReorder</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-updatesecuritylevel" id="admx-dnsclient-dns-updatesecuritylevel">ADMX_DnsClient/DNS_UpdateSecurityLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-updatetopleveldomainzones" id="admx-dnsclient-dns-updatetopleveldomainzones">ADMX_DnsClient/DNS_UpdateTopLevelDomainZones</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-dns-usedomainnamedevolution" id="admx-dnsclient-dns-usedomainnamedevolution">ADMX_DnsClient/DNS_UseDomainNameDevolution</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dnsclient.md#admx-dnsclient-turn-off-multicast" id="admx-dnsclient-turn-off-multicast">ADMX_DnsClient/Turn_Off_Multicast</a>
  </dd>
</dl>

### ADMX_DWM policies

<dl>
  <dd>
    <a href="./policy-csp-admx-dwm.md#admx-dwm-dwmdefaultcolorizationcolor-1" id="admx-dwm-dwmdefaultcolorizationcolor-1">ADMX_DWM/DwmDefaultColorizationColor_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dwm.md#admx-dwm-dwmdefaultcolorizationcolor-2" id="admx-dwm-dwmdefaultcolorizationcolor-2">ADMX_DWM/DwmDefaultColorizationColor_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dwm.md#admx-dwm-dwmdisallowanimations-1" id="admx-dwm-dwmdisallowanimations-1">ADMX_DWM/DwmDisallowAnimations_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dwm.md#admx-dwm-dwmdisallowanimations-2" id="admx-dwm-dwmdisallowanimations-2">ADMX_DWM/DwmDisallowAnimations_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dwm.md#admx-dwm-dwmdisallowcolorizationcolorchanges-1" id="admx-dwm-dwmdisallowcolorizationcolorchanges-1">ADMX_DWM/DwmDisallowColorizationColorChanges_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-dwm.md#admx-dwm-dwmdisallowcolorizationcolorchanges-2" id="admx-dwm-dwmdisallowcolorizationcolorchanges-2">ADMX_DWM/DwmDisallowColorizationColorChanges_2</a>
  </dd>
</dl>

### ADMX_EAIME policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-eaime.md#admx-eaime-l-donotincludenonpublishingstandardglyphinthecandidatelist" id="">ADMX_EAIME/L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eaime.md#admx-eaime-l-restrictcharactercoderangeofconversion" id="">ADMX_EAIME/L_RestrictCharacterCodeRangeOfConversion</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eaime.md#admx-eaime-l-turnoffcustomdictionary" id="admx-eaime-l-turnoffcustomdictionary">ADMX_EAIME/L_TurnOffCustomDictionary</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eaime.md#admx-eaime-l-turnoffhistorybasedpredictiveinput" id="admx-eaime-l-turnoffhistorybasedpredictiveinput">ADMX_EAIME/L_TurnOffHistorybasedPredictiveInput</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eaime.md#admx-eaime-l-turnoffinternetsearchintegration" id="admx-eaime-l-turnoffinternetsearchintegration">ADMX_EAIME/L_TurnOffInternetSearchIntegration</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eaime.md#admx-eaime-l-turnoffopenextendeddictionary" id="admx-eaime-l-turnoffopenextendeddictionary">ADMX_EAIME/L_TurnOffOpenExtendedDictionary</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eaime.md#admx-eaime-l-turnoffsavingautotuningdatatofile" id="admx-eaime-l-turnoffsavingautotuningdatatofile">ADMX_EAIME/L_TurnOffSavingAutoTuningDataToFile</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eaime.md#admx-eaime-l-turnoncloudcandidate" id="admx-eaime-l-turnoncloudcandidate">ADMX_EAIME/L_TurnOnCloudCandidate</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eaime.md#admx-eaime-l-turnoncloudcandidatechs" id="admx-eaime-l-turnoncloudcandidatechs">ADMX_EAIME/L_TurnOnCloudCandidateCHS</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eaime.md#admx-eaime-l-turnonlexiconupdate" id="admx-eaime-l-turnonlexiconupdate">ADMX_EAIME/L_TurnOnLexiconUpdate</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eaime.md#admx-eaime-l-turnonlivestickers" id="admx-eaime-l-turnonlivestickers">ADMX_EAIME/L_TurnOnLiveStickers</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eaime.md#admx-eaime-l-turnonmisconversionloggingformisconversionreport" id="admx-eaime-l-turnonmisconversionloggingformisconversionreport">ADMX_EAIME/L_TurnOnMisconversionLoggingForMisconversionReport</a>
  </dd>
</dl>

### ADMX_EncryptFilesonMove policies
<dl>
  <dd>
    <a href="./policy-csp-admx-encryptfilesonmove.md#admx-encryptfilesonmove-noencryptonmove" id="admx-encryptfilesonmove-noencryptonmove">ADMX_EncryptFilesonMove/NoEncryptOnMove</a>
  </dd>
</dl>

### ADMX_EnhancedStorage policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-enhancedstorage.md#admx-enhancedstorage-approvedenstordevices" id="admx-enhancedstorage-approvedenstordevices">ADMX_EnhancedStorage/ApprovedEnStorDevices</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-enhancedstorage.md#admx-enhancedstorage-approvedsilos" id="admx-enhancedstorage-approvedsilos">ADMX_EnhancedStorage/ApprovedSilos</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-enhancedstorage.md#admx-enhancedstorage-disablepasswordauthentication" id="admx-enhancedstorage-disablepasswordauthentication">ADMX_EnhancedStorage/DisablePasswordAuthentication</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-enhancedstorage.md#admx-enhancedstorage-disallowlegacydiskdevices" id="admx-enhancedstorage-disallowlegacydiskdevices">ADMX_EnhancedStorage/DisallowLegacyDiskDevices</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-enhancedstorage.md#admx-enhancedstorage-lockdeviceonmachinelock" id="admx-enhancedstorage-lockdeviceonmachinelock">ADMX_EnhancedStorage/LockDeviceOnMachineLock</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-enhancedstorage.md#admx-enhancedstorage-roothubconnectedenstordevices" id="admx-enhancedstorage-roothubconnectedenstordevices">ADMX_EnhancedStorage/RootHubConnectedEnStorDevices</a>
  </dd>
</dl>

### ADMX_ErrorReporting policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-pch-allornonedef" id="admx-errorreporting-pch-allornonedef">ADMX_ErrorReporting/PCH_AllOrNoneDef</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-pch-allornoneex" id="admx-errorreporting-pch-allornoneex">ADMX_ErrorReporting/PCH_AllOrNoneEx</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-pch-allornoneinc" id="admx-errorreporting-pch-allornoneinc">ADMX_ErrorReporting/PCH_AllOrNoneInc</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-pch-configurereport" id="admx-errorreporting-pch-configurereport">ADMX_ErrorReporting/PCH_ConfigureReport</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-pch-reportoperatingsystemfaults" id="admx-errorreporting-pch-reportoperatingsystemfaults">ADMX_ErrorReporting/PCH_ReportOperatingSystemFaults</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werarchive-1" id="admx-errorreporting-werarchive-1">ADMX_ErrorReporting/WerArchive_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werarchive-2" id="admx-errorreporting-werarchive-2">ADMX_ErrorReporting/WerArchive_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werautoapproveosdumps-1" id="admx-errorreporting-werautoapproveosdumps-1">ADMX_ErrorReporting/WerAutoApproveOSDumps_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werautoapproveosdumps-2" id="admx-errorreporting-werautoapproveosdumps-2">ADMX_ErrorReporting/WerAutoApproveOSDumps_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werbypassdatathrottling-1" id="admx-errorreporting-werbypassdatathrottling-1">ADMX_ErrorReporting/WerBypassDataThrottling_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werbypassdatathrottling-2" id="admx-errorreporting-werbypassdatathrottling-2">ADMX_ErrorReporting/WerBypassDataThrottling_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werbypassnetworkcostthrottling-1" id="admx-errorreporting-werbypassnetworkcostthrottling-1">ADMX_ErrorReporting/WerBypassNetworkCostThrottling_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werbypassnetworkcostthrottling-2" id="admx-errorreporting-werbypassnetworkcostthrottling-2">ADMX_ErrorReporting/WerBypassNetworkCostThrottling_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werbypasspowerthrottling-1" id="admx-errorreporting-werbypasspowerthrottling-1">ADMX_ErrorReporting/WerBypassPowerThrottling_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werbypasspowerthrottling-2" id="admx-errorreporting-werbypasspowerthrottling-2">ADMX_ErrorReporting/WerBypassPowerThrottling_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-wercer" id="admx-errorreporting-wercer">ADMX_ErrorReporting/WerCER</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werconsentcustomize-1" id="admx-errorreporting-werconsentcustomize-1">ADMX_ErrorReporting/WerConsentCustomize_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werconsentoverride-1" id="admx-errorreporting-werconsentoverride-1">ADMX_ErrorReporting/WerConsentOverride_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werconsentoverride-2" id="admx-errorreporting-werconsentoverride-2">ADMX_ErrorReporting/WerConsentOverride_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werdefaultconsent-1" id="admx-errorreporting-werdefaultconsent-1">ADMX_ErrorReporting/WerDefaultConsent_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werdefaultconsent-2" id="admx-errorreporting-werdefaultconsent-2">ADMX_ErrorReporting/WerDefaultConsent_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werdisable-1" id="admx-errorreporting-werdisable-1">ADMX_ErrorReporting/WerDisable_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werexlusion-1" id="admx-errorreporting-werexlusion-1">ADMX_ErrorReporting/WerExlusion_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werexlusion-2" id="admx-errorreporting-werexlusion-2">ADMX_ErrorReporting/WerExlusion_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-wernologging-1" id="admx-errorreporting-wernologging-1">ADMX_ErrorReporting/WerNoLogging_1</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-wernologging-2" id="admx-errorreporting-wernologging-2">ADMX_ErrorReporting/WerNoLogging_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-wernosecondleveldata-1" id="admx-errorreporting-wernosecondleveldata-1">ADMX_ErrorReporting/WerNoSecondLevelData_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werqueue-1" id="admx-errorreporting-werqueue-1">ADMX_ErrorReporting/WerQueue_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-errorreporting.md#admx-errorreporting-werqueue-2" id="admx-errorreporting-werqueue-2">ADMX_ErrorReporting/WerQueue_2</a>
  </dd>
</dl>

### ADMX_EventForwarding policies

<dl>
  <dd>
    <a href="./policy-csp-admx-eventforwarding.md#admx_eventforwarding-forwarderresourceusage" id="admx_eventforwarding-forwarderresourceusage">ADMX_EventForwarding/ForwarderResourceUsage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventforwarding.md#admx_eventforwarding-subscriptionmanager" id="admx_eventforwarding-subscriptionmanager">ADMX_EventForwarding/SubscriptionManager</a>
  </dd>
</dl>

### ADMX_EventLog policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-logenabled" id="admx-eventlog-channel-logenabled">ADMX_EventLog/Channel_LogEnabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-logfilepath-1" id="admx-eventlog-channel-logfilepath-1">ADMX_EventLog/Channel_LogFilePath_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-logfilepath-2" id="admx-eventlog-channel-logfilepath-2">ADMX_EventLog/Channel_LogFilePath_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-logfilepath-3" id="admx-eventlog-channel-logfilepath-3">ADMX_EventLog/Channel_LogFilePath_3</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-logfilepath-4" id="admx-eventlog-channel-logfilepath-4">ADMX_EventLog/Channel_LogFilePath_4</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-logmaxsize-3" id="admx-eventlog-channel-logmaxsize-3">ADMX_EventLog/Channel_LogMaxSize_3</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-autobackup-1" id="admx-eventlog-channel-log-autobackup-1">ADMX_EventLog/Channel_Log_AutoBackup_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-autobackup-2" id="admx-eventlog-channel-log-autobackup-2">ADMX_EventLog/Channel_Log_AutoBackup_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-autobackup-3" id="admx-eventlog-channel-log-autobackup-3">ADMX_EventLog/Channel_Log_AutoBackup_3</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-autobackup-4" id="admx-eventlog-channel-log-autobackup-4">ADMX_EventLog/Channel_Log_AutoBackup_4</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-filelogaccess-1" id="admx-eventlog-channel-log-filelogaccess-1">ADMX_EventLog/Channel_Log_FileLogAccess_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-filelogaccess-2" id="admx-eventlog-channel-log-filelogaccess-2">ADMX_EventLog/Channel_Log_FileLogAccess_2</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-filelogaccess-3" id="admx-eventlog-channel-log-filelogaccess-3">ADMX_EventLog/Channel_Log_FileLogAccess_3</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-filelogaccess-4" id="admx-eventlog-channel-log-filelogaccess-4">ADMX_EventLog/Channel_Log_FileLogAccess_4</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-filelogaccess-5" id="admx-eventlog-channel-log-filelogaccess-5">ADMX_EventLog/Channel_Log_FileLogAccess_5</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-filelogaccess-6" id="admx-eventlog-channel-log-filelogaccess-6">ADMX_EventLog/Channel_Log_FileLogAccess_6</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-filelogaccess-7" id="admx-eventlog-channel-log-filelogaccess-7">ADMX_EventLog/Channel_Log_FileLogAccess_7</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-filelogaccess-8" id="admx-eventlog-channel-log-filelogaccess-8">ADMX_EventLog/Channel_Log_FileLogAccess_8</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-retention-2" id="admx-eventlog-channel-log-retention-2">ADMX_EventLog/Channel_Log_Retention_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-retention-3" id="admx-eventlog-channel-log-retention-3">ADMX_EventLog/Channel_Log_Retention_3</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-eventlog.md#admx-eventlog-channel-log-retention-4" id="admx-eventlog-channel-log-retention-4">ADMX_EventLog/Channel_Log_Retention_4</a>
  </dd>
</dl>

### ADMX_Explorer policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-explorer.md#admx-explorer-admininfourl" id="admx-explorer-admininfourl">ADMX_Explorer/AdminInfoUrl</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-explorer.md#admx-explorer-alwaysshowclassicmenu" id="admx-explorer-alwaysshowclassicmenu">ADMX_Explorer/AlwaysShowClassicMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-explorer.md#admx-explorer-disableroamedprofileinit" id="admx-explorer-disableroamedprofileinit">ADMX_Explorer/DisableRoamedProfileInit</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-explorer.md#admx-explorer-preventitemcreationinusersfilesfolder" id="admx-explorer-preventitemcreationinusersfilesfolder">ADMX_Explorer/PreventItemCreationInUsersFilesFolder</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-explorer.md#admx-explorer-turnoffspianimations" id="admx-explorer-turnoffspianimations">ADMX_Explorer/TurnOffSPIAnimations</a>
  </dd>
</dl>

### ADMX_FileServerVSSProvider policies
<dl>
  <dd>
    <a href="./policy-csp-admx-fileservervssprovider.md#admx-fileservervssprovider-pol-encryptprotocol" id="admx-fileservervssprovider-pol-encryptprotocol">ADMX_FileServerVSSProvider/Pol_EncryptProtocol</a>
  </dd>
</dl>

### ADMX_FileSys policies
<dl>
  <dd>
    <a href="./policy-csp-admx-filesys.md#admx-filesys-disablecompression" id="admx-filesys-disablecompression">ADMX_FileSys/DisableCompression</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-filesys.md#admx-filesys-disabledeletenotification" id="admx-filesys-disabledeletenotification">ADMX_FileSys/DisableDeleteNotification</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-filesys.md#admx-filesys-disableencryption" id="admx-filesys-disableencryption">ADMX_FileSys/DisableEncryption</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-filesys.md#admx-filesys-enablepagefileencryption" id="admx-filesys-enablepagefileencryption">ADMX_FileSys/EnablePagefileEncryption</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-filesys.md#admx-filesys-longpathsenabled" id="admx-filesys-longpathsenabled">ADMX_FileSys/LongPathsEnabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-filesys.md#admx-filesys-shortnamecreationsettings" id="admx-filesys-shortnamecreationsettings">ADMX_FileSys/ShortNameCreationSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-filesys.md#admx-filesys-symlinkevaluation" id="admx-filesys-symlinkevaluation">ADMX_FileSys/SymlinkEvaluation</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-filesys.md#admx-filesys-txfdeprecatedfunctionality" id="admx-filesys-txfdeprecatedfunctionality">ADMX_FileSys/TxfDeprecatedFunctionality</a>
  </dd>
</dl>

### ADMX_FolderRedirection policies
<dl>
  <dd>
    <a href="./policy-csp-admx-folderredirection.md#admx-folderredirection-disablefradminpin" id="admx-folderredirection-disablefradminpin">ADMX_FolderRedirection/DisableFRAdminPin</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-folderredirection.md#admx-folderredirection-disablefradminpinbyfolder" id="admx-folderredirection-disablefradminpinbyfolder">ADMX_FolderRedirection/DisableFRAdminPinByFolder</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-folderredirection.md#admx-folderredirection-folderredirectionenablecacherename" id="admx-folderredirection-folderredirectionenablecacherename">ADMX_FolderRedirection/FolderRedirectionEnableCacheRename</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-folderredirection.md#admx-folderredirection-localizexprelativepaths-1" id="admx-folderredirection-localizexprelativepaths-1">ADMX_FolderRedirection/LocalizeXPRelativePaths_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-folderredirection.md#admx-folderredirection-localizexprelativepaths-2" id="admx-folderredirection-localizexprelativepaths-2">ADMX_FolderRedirection/LocalizeXPRelativePaths_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-folderredirection.md#admx-folderredirection-primarycomputer-fr-1" id="admx-folderredirection-primarycomputer-fr-1">ADMX_FolderRedirection/PrimaryComputer_FR_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-folderredirection.md#admx-folderredirection-primarycomputer-fr-2" id="admx-folderredirection-primarycomputer-fr-2">ADMX_FolderRedirection/PrimaryComputer_FR_2</a>
  </dd>
</dl>

### ADMX_Help policies
<dl>
  <dd>
    <a href="./policy-csp-admx-help.md#admx-help-disablehhdep" id="admx-help-disablehhdep">ADMX_Help/DisableHHDEP</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-help.md#admx-help-helpqualifiedrootdir-comp" id="admx-help-helpqualifiedrootdir-comp">ADMX_Help/HelpQualifiedRootDir_Comp</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-help.md#admx-help-restrictrunfromhelp" id="admx-help-restrictrunfromhelp">ADMX_Help/RestrictRunFromHelp</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-help.md#admx-help-restrictrunfromhelp-comp" id="admx-help-restrictrunfromhelp-comp">ADMX_Help/RestrictRunFromHelp_Comp</a>
  </dd>
</dl>

### ADMX_Globalization policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-blockuserinputmethodsforsignin" id="admx-globalization-blockuserinputmethodsforsignin">ADMX_Globalization/BlockUserInputMethodsForSignIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-customlocalesnoselect-1" id="admx-globalization-customlocalesnoselect-1">ADMX_Globalization/CustomLocalesNoSelect_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-customlocalesnoselect-2" id="admx-globalization-customlocalesnoselect-2">ADMX_Globalization/CustomLocalesNoSelect_2</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-hideadminoptions" id="admx-globalization-hideadminoptions">ADMX_Globalization/HideAdminOptions</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-hidecurrentlocation" id="admx-globalization-hidecurrentlocation">ADMX_Globalization/HideCurrentLocation</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-hidelanguageselection" id="admx-globalization-hidelanguageselection">ADMX_Globalization/HideLanguageSelection</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-hidelocaleselectandcustomize" id="admx-globalization-hidelocaleselectandcustomize">ADMX_Globalization/HideLocaleSelectAndCustomize</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-implicitdatacollectionoff-1" id="admx-globalization-implicitdatacollectionoff-1">ADMX_Globalization/ImplicitDataCollectionOff_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-implicitdatacollectionoff-2" id="admx-globalization-implicitdatacollectionoff-2">ADMX_Globalization/ImplicitDataCollectionOff_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-localesystemrestrict" id="admx-globalization-localesystemrestrict">ADMX_Globalization/LocaleSystemRestrict</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-localeuserrestrict-1" id="admx-globalization-localeuserrestrict-1">ADMX_Globalization/LocaleUserRestrict_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-localeuserrestrict-2" id="admx-globalization-localeuserrestrict-2">ADMX_Globalization/LocaleUserRestrict_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-lockmachineuilanguage" id="admx-globalization-lockmachineuilanguage">ADMX_Globalization/LockMachineUILanguage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-lockuseruilanguage" id="admx-globalization-lockuseruilanguage">ADMX_Globalization/LockUserUILanguage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-preventgeoidchange-1" id="admx-globalization-preventgeoidchange-1">ADMX_Globalization/PreventGeoIdChange_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-preventgeoidchange-2" id="admx-globalization-preventgeoidchange-2">ADMX_Globalization/PreventGeoIdChange_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-preventuseroverrides-1" id="admx-globalization-preventuseroverrides-1">ADMX_Globalization/PreventUserOverrides_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-preventuseroverrides-2" id="admx-globalization-preventuseroverrides-2">ADMX_Globalization/PreventUserOverrides_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-restrictuilangselect" id="admx-globalization-restrictuilangselect">ADMX_Globalization/RestrictUILangSelect</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-turnoffautocorrectmisspelledwords" id="admx-globalization-turnoffautocorrectmisspelledwords">ADMX_Globalization/TurnOffAutocorrectMisspelledWords</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-turnoffhighlightmisspelledwords" id="admx-globalization-turnoffhighlightmisspelledwords">ADMX_Globalization/TurnOffHighlightMisspelledWords</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-turnoffinsertspace" id="admx-globalization-turnoffinsertspace">ADMX_Globalization/TurnOffInsertSpace</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-turnoffoffertextpredictions" id="admx-globalization-turnoffoffertextpredictions">ADMX_Globalization/TurnOffOfferTextPredictions</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-globalization.md#admx-globalization-y2k" id="admx-globalization-y2k">ADMX_Globalization/Y2K</a>
  </dd>
</dl>

### ADMX_GroupPolicy policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-allowx-forestpolicy-and-rup" id="admx-grouppolicy-allowx-forestpolicy-and-rup">ADMX_GroupPolicy/AllowX-ForestPolicy-and-RUP</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-cse-appmgmt" id="admx-grouppolicy-cse-appmgmt">ADMX_GroupPolicy/CSE_AppMgmt</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-cse-diskquota" id="admx-grouppolicy-cse-diskquota">ADMX_GroupPolicy/CSE_DiskQuota</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-cse-efsrecovery" id="admx-grouppolicy-cse-efsrecovery">ADMX_GroupPolicy/CSE_EFSRecovery</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-cse-folderredirection" id="admx-grouppolicy-cse-folderredirection">ADMX_GroupPolicy/CSE_FolderRedirection</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-cse-iem" id="admx-grouppolicy-cse-iem">ADMX_GroupPolicy/CSE_IEM</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-cse-ipsecurity" id="admx-grouppolicy-cse-ipsecurity">ADMX_GroupPolicy/CSE_IPSecurity</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-cse-registry" id="admx-grouppolicy-cse-registry">ADMX_GroupPolicy/CSE_Registry</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-cse-scripts" id="admx-grouppolicy-cse-scripts">ADMX_GroupPolicy/CSE_Scripts</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-cse-security" id="admx-grouppolicy-cse-security">ADMX_GroupPolicy/CSE_Security</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-cse-wired" id="admx-grouppolicy-cse-wired">ADMX_GroupPolicy/CSE_Wired</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-cse-wireless" id="admx-grouppolicy-cse-wireless">ADMX_GroupPolicy/CSE_Wireless</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-corpconnsyncwaittime" id="admx-grouppolicy-corpconnsyncwaittime">ADMX_GroupPolicy/CorpConnSyncWaitTime</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-denyrsoptointeractiveuser-1" id="admx-grouppolicy-denyrsoptointeractiveuser-1">ADMX_GroupPolicy/DenyRsopToInteractiveUser_1</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-denyrsoptointeractiveuser-2" id="admx-grouppolicy-denyrsoptointeractiveuser-2">ADMX_GroupPolicy/DenyRsopToInteractiveUser_2</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-disableaoacprocessing" id="admx-grouppolicy-disableaoacprocessing">ADMX_GroupPolicy/DisableAOACProcessing</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-disableautoadmupdate" id="admx-grouppolicy-disableautoadmupdate">ADMX_GroupPolicy/DisableAutoADMUpdate</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-disablebackgroundpolicy" id="admx-grouppolicy-disablebackgroundpolicy">ADMX_GroupPolicy/DisableBackgroundPolicy</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-disablelgpoprocessing" id="admx-grouppolicy-disablelgpoprocessing">ADMX_GroupPolicy/DisableLGPOProcessing</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-disableusersfrommachgp" id="admx-grouppolicy-disableusersfrommachgp">ADMX_GroupPolicy/DisableUsersFromMachGP</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-enablecdp" id="admx-grouppolicy-enablecdp">ADMX_GroupPolicy/EnableCDP</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-enablelogonoptimization" id="admx-grouppolicy-enablelogonoptimization">ADMX_GroupPolicy/EnableLogonOptimization</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-enablelogonoptimizationonserversku" id="admx-grouppolicy-enablelogonoptimizationonserversku">ADMX_GroupPolicy/EnableLogonOptimizationOnServerSKU</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-enablemmx" id="admx-grouppolicy-enablemmx">ADMX_GroupPolicy/EnableMMX</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-enforcepoliciesonly" id="admx-grouppolicy-enforcepoliciesonly">ADMX_GroupPolicy/EnforcePoliciesOnly</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-fontmitigation" id="admx-grouppolicy-fontmitigation">ADMX_GroupPolicy/FontMitigation</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-gpdcoptions" id="admx-grouppolicy-gpdcoptions">ADMX_GroupPolicy/GPDCOptions</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-gptransferrate-1" id="admx-grouppolicy-gptransferrate-1">ADMX_GroupPolicy/GPTransferRate_1</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-gptransferrate-2" id="admx-grouppolicy-gptransferrate-2">ADMX_GroupPolicy/GPTransferRate_2</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-grouppolicyrefreshrate" id="admx-grouppolicy-grouppolicyrefreshrate">ADMX_GroupPolicy/GroupPolicyRefreshRate</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-grouppolicyrefreshratedc" id="admx-grouppolicy-grouppolicyrefreshratedc">ADMX_GroupPolicy/GroupPolicyRefreshRateDC</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-grouppolicyrefreshrateuser" id="admx-grouppolicy-grouppolicyrefreshrateuser">ADMX_GroupPolicy/GroupPolicyRefreshRateUser</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-logonscriptdelay" id="admx-grouppolicy-logonscriptdelay">ADMX_GroupPolicy/LogonScriptDelay</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-newgpodisplayname" id="admx-grouppolicy-newgpodisplayname">ADMX_GroupPolicy/NewGPODisplayName</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-newgpolinksdisabled" id="admx-grouppolicy-newgpolinksdisabled">ADMX_GroupPolicy/NewGPOLinksDisabled</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-onlyuselocaladminfiles" id="admx-grouppolicy-onlyuselocaladminfiles">ADMX_GroupPolicy/OnlyUseLocalAdminFiles</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-processmitigationoptions" id="admx-grouppolicy-processmitigationoptions">ADMX_GroupPolicy/ProcessMitigationOptions</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-rsoplogging" id="admx-grouppolicy-rsoplogging">ADMX_GroupPolicy/RSoPLogging</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-resetdfsclientinfoduringrefreshpolicy" id="admx-grouppolicy-resetdfsclientinfoduringrefreshpolicy">ADMX_GroupPolicy/ResetDfsClientInfoDuringRefreshPolicy</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-slowlinkdefaultfordirectaccess" id="admx-grouppolicy-slowlinkdefaultfordirectaccess">ADMX_GroupPolicy/SlowLinkDefaultForDirectAccess</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-slowlinkdefaulttoasync" id="admx-grouppolicy-slowlinkdefaulttoasync">ADMX_GroupPolicy/SlowlinkDefaultToAsync</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-syncwaittime" id="admx-grouppolicy-syncwaittime">ADMX_GroupPolicy/SyncWaitTime</a>
  </dd>
   <dd>
    <a href="./policy-csp-admx-grouppolicy.md#admx-grouppolicy-userpolicymode" id="admx-grouppolicy-userpolicymode">ADMX_GroupPolicy/UserPolicyMode</a>
  </dd>
</dl>

### ADMX_HelpAndSupport policies
<dl>
  <dd>
    <a href="./policy-csp-admx-helpandsupport.md#admx-helpandsupport-activehelp" id="admx-helpandsupport-activehelp">ADMX_HelpAndSupport/ActiveHelp</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-helpandsupport.md#admx-helpandsupport-hpexplicitfeedback" id="admx-helpandsupport-hpexplicitfeedback">ADMX_HelpAndSupport/HPExplicitFeedback</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-helpandsupport.md#admx-helpandsupport-hpimplicitfeedback" id="admx-helpandsupport-hpimplicitfeedback">ADMX_HelpAndSupport/HPImplicitFeedback</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-helpandsupport.md#admx-helpandsupport-hponlineassistance" id="admx-helpandsupport-hponlineassistance">ADMX_HelpAndSupport/HPOnlineAssistance</a>
  </dd>
</dl>

## ADMX_ICM policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-ceipenable" id="admx-icm-ceipenable">ADMX_ICM/CEIPEnable</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-certmgr-disableautorootupdates" id="admx-icm-certmgr-disableautorootupdates">ADMX_ICM/CertMgr_DisableAutoRootUpdates</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-disablehttpprinting-1" id="admx-icm-disablehttpprinting-1">ADMX_ICM/DisableHTTPPrinting_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-disablewebpnpdownload-1" id="admx-icm-disablewebpnpdownload-1">ADMX_ICM/DisableWebPnPDownload_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-driversearchplaces-dontsearchwindowsupdate" id="admx-icm-driversearchplaces-dontsearchwindowsupdate">ADMX_ICM/DriverSearchPlaces_DontSearchWindowsUpdate</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-eventviewer-disablelinks" id="admx-icm-eventviewer-disablelinks">ADMX_ICM/EventViewer_DisableLinks</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-hss-headlinespolicy" id="admx-icm-hss-headlinespolicy">ADMX_ICM/HSS_HeadlinesPolicy</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-hss-kbsearchpolicy" id="admx-icm-hss-kbsearchpolicy">ADMX_ICM/HSS_KBSearchPolicy</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-internetmanagement-restrictcommunication-1" id="admx-icm-internetmanagement-restrictcommunication-1">ADMX_ICM/InternetManagement_RestrictCommunication_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-internetmanagement-restrictcommunication-2" id="admx-icm-internetmanagement-restrictcommunication-2">ADMX_ICM/InternetManagement_RestrictCommunication_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-nc-exitonisp" id="admx-icm-nc-exitonisp">ADMX_ICM/NC_ExitOnISP</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-nc-noregistration" id="admx-icm-nc-noregistration">ADMX_ICM/NC_NoRegistration</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-pch-donotreport" id="admx-icm-pch-donotreport">ADMX_ICM/PCH_DoNotReport</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-removewindowsupdate-icm" id="admx-icm-removewindowsupdate-icm">ADMX_ICM/RemoveWindowsUpdate_ICM</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-searchcompanion-disablefileupdates" id="admx-icm-searchcompanion-disablefileupdates">ADMX_ICM/SearchCompanion_DisableFileUpdates</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-shellnouseinternetopenwith-1" id="admx-icm-shellnouseinternetopenwith-1">ADMX_ICM/ShellNoUseInternetOpenWith_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-shellnouseinternetopenwith-2" id="admx-icm-shellnouseinternetopenwith-2">ADMX_ICM/ShellNoUseInternetOpenWith_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-shellnousestoreopenwith-1" id="admx-icm-shellnousestoreopenwith-1">ADMX_ICM/ShellNoUseStoreOpenWith_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-shellnousestoreopenwith-2" id="admx-icm-shellnousestoreopenwith-2">ADMX_ICM/ShellNoUseStoreOpenWith_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-shellpreventwpwdownload-1" id="admx-icm-shellpreventwpwdownload-1">ADMX_ICM/ShellPreventWPWDownload_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-shellremoveorderprints-1" id="admx-icm-shellremoveorderprints-1">ADMX_ICM/ShellRemoveOrderPrints_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-shellremoveorderprints-2" id="admx-icm-shellremoveorderprints-2">ADMX_ICM/ShellRemoveOrderPrints_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-shellremovepublishtoweb-1" id="admx-icm-shellremovepublishtoweb-1">ADMX_ICM/ShellRemovePublishToWeb_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-shellremovepublishtoweb-2" id="admx-icm-shellremovepublishtoweb-2">ADMX_ICM/ShellRemovePublishToWeb_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-winmsg_noinstrumentation-1" id="admx-icm-winmsg_noinstrumentation-1">ADMX_ICM/WinMSG_NoInstrumentation_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-icm.md#admx-icm-winmsg_noinstrumentation-2" id="admx-icm-winmsg_noinstrumentation-2">ADMX_ICM/WinMSG_NoInstrumentation_2</a>
  </dd>
</dl>

### ADMX_kdc policies
<dl>
  <dd>
    <a href="./policy-csp-admx-kdc.md#admx-kdc-cbacandarmor" id="admx-kdc-cbacandarmor">ADMX_kdc/CbacAndArmor</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-kdc.md#admx-kdc-forestsearch" id="admx-kdc-forestsearch">ADMX_kdc/ForestSearch</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-kdc.md#admx-kdc-pkinitfreshness" id="admx-kdc-pkinitfreshness">ADMX_kdc/PKINITFreshness</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-kdc.md#admx-kdc-requestcompoundid" id="admx-kdc-requestcompoundid">ADMX_kdc/RequestCompoundId</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-kdc.md#admx-kdc-ticketsizethreshold" id="admx-kdc-ticketsizethreshold">ADMX_kdc/TicketSizeThreshold</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-kdc.md#admx-kdc-emitlili" id="admx-kdc-emitlili">ADMX_kdc/emitlili</a>
  </dd>
</dl>

### ADMX_Kerberos policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-kerberos.md#admx-kerberos-alwayssendcompoundid" id="admx-kerberos-alwayssendcompoundid">ADMX_Kerberos/AlwaysSendCompoundId</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-kerberos.md#admx-kerberos-devicepkinitenabled" id="admx-kerberos-devicepkinitenabled">ADMX_Kerberos/DevicePKInitEnabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-kerberos.md#admx-kerberos-hosttorealm" id="admx-kerberos-hosttorealm">ADMX_Kerberos/HostToRealm</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-kerberos.md#admx-kerberos-kdcproxydisableserverrevocationcheck" id="admx-kerberos-kdcproxydisableserverrevocationcheck">ADMX_Kerberos/KdcProxyDisableServerRevocationCheck</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-kerberos.md#admx-kerberos-kdcproxyserver" id="admx-kerberos-kdcproxyserver">ADMX_Kerberos/KdcProxyServer</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-kerberos.md#admx-kerberos-mitrealms" id="admx-kerberos-mitrealms">ADMX_Kerberos/MitRealms</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-kerberos.md#admx-kerberos-serveracceptscompound" id="admx-kerberos-serveracceptscompound">ADMX_Kerberos/ServerAcceptsCompound</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-kerberos.md#admx-kerberos-stricttarget" id="admx-kerberos-stricttarget">ADMX_Kerberos/StrictTarget</a>
  </dd>
</dl>

### ADMX_LanmanServer policies
<dl>
  <dd>
    <a href="./policy-csp-admx-lanmanserver.md#admx-lanmanserver-pol-ciphersuiteorder" id="admx-lanmanserver-pol-ciphersuiteorder">ADMX_LanmanServer/Pol_CipherSuiteOrder</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-lanmanserver.md#admx-lanmanserver-pol-hashpublication" id="admx-lanmanserver-pol-hashpublication">ADMX_LanmanServer/Pol_HashPublication</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-lanmanserver.md#admx-lanmanserver-pol-hashsupportversion" id="admx-lanmanserver-pol-hashsupportversion">ADMX_LanmanServer/Pol_HashSupportVersion</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-lanmanserver.md#admx-lanmanserver-pol-honorciphersuiteorder" id="admx-lanmanserver-pol-honorciphersuiteorder">ADMX_LanmanServer/Pol_HonorCipherSuiteOrder</a>
  </dd>
</dl>

### ADMX_LanmanWorkstation policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-lanmanworkstation.md#admx-lanmanworkstation-pol-ciphersuiteorder" id="admx-lanmanworkstation-pol-ciphersuiteorder">ADMX_LanmanWorkstation/Pol_CipherSuiteOrder</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-lanmanworkstation.md#admx-lanmanworkstation-pol-enablehandlecachingforcafiles" id="admx-lanmanworkstation-pol-enablehandlecachingforcafiles">ADMX_LanmanWorkstation/Pol_EnableHandleCachingForCAFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-lanmanworkstation.md#admx-lanmanworkstation-pol-enableofflinefilesforcashares" id="admx-lanmanworkstation-pol-enableofflinefilesforcashares">ADMX_LanmanWorkstation/Pol_EnableOfflineFilesforCAShares</a>
  </dd>
</dl>

### ADMX_LinkLayerTopologyDiscovery policies
<dl>
  <dd>
    <a href="./policy-csp-admx-linklayertopologydiscovery.md#admx-linklayertopologydiscovery-lltd-enablelltdio" id="admx-linklayertopologydiscovery-lltd-enablelltdio">ADMX_LinkLayerTopologyDiscovery/LLTD_EnableLLTDIO</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-linklayertopologydiscovery.md#admx-linklayertopologydiscovery-lltd-enablerspndr" id="admx-linklayertopologydiscovery-lltd-enablerspndr">ADMX_LinkLayerTopologyDiscovery/LLTD_EnableRspndr</a>
  </dd>
</dl>

### ADMX_Logon policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-blockuserfromshowingaccountdetailsonsignin" id="admx-logon-blockuserfromshowingaccountdetailsonsignin">ADMX_Logon/BlockUserFromShowingAccountDetailsOnSignin</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-disableacrylicbackgroundonlogon" id="admx-logon-disableacrylicbackgroundonlogon">ADMX_Logon/DisableAcrylicBackgroundOnLogon</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-disableexplorerrunlegacy-1" id="admx-logon-disableexplorerrunlegacy-1">ADMX_Logon/DisableExplorerRunLegacy_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-disableexplorerrunlegacy-2" id="admx-logon-disableexplorerrunlegacy-2">ADMX_Logon/DisableExplorerRunLegacy_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-disableexplorerrunoncelegacy-1" id="admx-logon-disableexplorerrunoncelegacy-1">ADMX_Logon/DisableExplorerRunOnceLegacy_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-disableexplorerrunoncelegacy-2" id="admx-logon-disableexplorerrunoncelegacy-2">ADMX_Logon/DisableExplorerRunOnceLegacy_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-disablestatusmessages" id="admx-logon-disablestatusmessages">ADMX_Logon/DisableStatusMessages</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-dontenumerateconnectedusers" id="admx-logon-dontenumerateconnectedusers">ADMX_Logon/DontEnumerateConnectedUsers</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-nowelcometips-1" id="admx-logon-nowelcometips-1">ADMX_Logon/NoWelcomeTips_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-nowelcometips-2" id="admx-logon-nowelcometips-2">ADMX_Logon/NoWelcomeTips_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-run-1" id="admx-logon-run-1">ADMX_Logon/Run_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-run-2" id="admx-logon-run-2">ADMX_Logon/Run_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-syncforegroundpolicy" id="admx-logon-syncforegroundpolicy">ADMX_Logon/SyncForegroundPolicy</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-useoembackground" id="admx-logon-useoembackground">ADMX_Logon/UseOEMBackground</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-logon.md#admx-logon-verbosestatus" id="admx-logon-verbosestatus">ADMX_Logon/VerboseStatus</a>
  </dd>
</dl>

### ADMX_MicrosoftDefenderAntivirus policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-allowfastservicestartup" id="admx-microsoftdefenderantivirus-allowfastservicestartup">ADMX_MicrosoftDefenderAntivirus/AllowFastServiceStartup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-disableantispywaredefender" id="admx-microsoftdefenderantivirus-disableantispywaredefender">ADMX_MicrosoftDefenderAntivirus/DisableAntiSpywareDefender</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-disableautoexclusions" id="admx-microsoftdefenderantivirus-disableautoexclusions">ADMX_MicrosoftDefenderAntivirus/DisableAutoExclusions</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-disableblockatfirstseen" id="admx-microsoftdefenderantivirus-disableblockatfirstseen">ADMX_MicrosoftDefenderAntivirus/DisableBlockAtFirstSeen</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-disablelocaladminmerge" id="admx-microsoftdefenderantivirus-disablelocaladminmerge">ADMX_MicrosoftDefenderAntivirus/DisableLocalAdminMerge</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-disablerealtimemonitoring" id="admx-microsoftdefenderantivirus-disablerealtimemonitoring">ADMX_MicrosoftDefenderAntivirus/DisableRealtimeMonitoring</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-disableroutinelytakingaction" id="admx-microsoftdefenderantivirus-disableroutinelytakingaction">ADMX_MicrosoftDefenderAntivirus/DisableRoutinelyTakingAction</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-exclusions-extensions" id="admx-microsoftdefenderantivirus-exclusions-extensions">ADMX_MicrosoftDefenderAntivirus/Exclusions_Extensions</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-exclusions-paths" id="admx-microsoftdefenderantivirus-exclusions-paths">ADMX_MicrosoftDefenderAntivirus/Exclusions_Paths</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-exclusions-processes" id="admx-microsoftdefenderantivirus-exclusions-processes">ADMX_MicrosoftDefenderAntivirus/Exclusions_Processes</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-exploitguard-asr-asronlyexclusions" id="admx-microsoftdefenderantivirus-exploitguard-asr-asronlyexclusions">ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ASR_ASROnlyExclusions</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-exploitguard-asr-rules" id="admx-microsoftdefenderantivirus-exploitguard-asr-rules">ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ASR_Rules</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-exploitguard-controlledfolderaccess-allowedapplications" id="admx-microsoftdefenderantivirus-exploitguard-controlledfolderaccess-allowedapplications">ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ControlledFolderAccess_AllowedApplications</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-exploitguard-controlledfolderaccess-protectedfolders" id="admx-microsoftdefenderantivirus-exploitguard-controlledfolderaccess-protectedfolders">ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ControlledFolderAccess_ProtectedFolders</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-mpengine-enablefilehashcomputation" id="admx-microsoftdefenderantivirus-mpengine-enablefilehashcomputation">ADMX_MicrosoftDefenderAntivirus/MpEngine_EnableFileHashComputation</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-nis-consumers-ips-disablesignatureretirement" id="admx-microsoftdefenderantivirus-nis-consumers-ips-disablesignatureretirement">ADMX_MicrosoftDefenderAntivirus/Nis_Consumers_IPS_DisableSignatureRetirement</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-nis-consumers-ips-sku-differentiation-signature-set-guid" id="admx-microsoftdefenderantivirus-nis-consumers-ips-sku-differentiation-signature-set-guid">ADMX_MicrosoftDefenderAntivirus/Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-nis-disableprotocolrecognition" id="admx-microsoftdefenderantivirus-nis-disableprotocolrecognition">ADMX_MicrosoftDefenderAntivirus/Nis_DisableProtocolRecognition</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-proxybypass" id="admx-microsoftdefenderantivirus-proxybypass">ADMX_MicrosoftDefenderAntivirus/ProxyBypass</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-proxypacurl" id="admx-microsoftdefenderantivirus-proxypacurl">ADMX_MicrosoftDefenderAntivirus/ProxyPacUrl</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-proxyserver" id="admx-microsoftdefenderantivirus-proxyserver">ADMX_MicrosoftDefenderAntivirus/ProxyServer</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-quarantine-localsettingoverridepurgeitemsafterdelay" id="admx-microsoftdefenderantivirus-quarantine-localsettingoverridepurgeitemsafterdelay">ADMX_MicrosoftDefenderAntivirus/Quarantine_LocalSettingOverridePurgeItemsAfterDelay</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-quarantine-purgeitemsafterdelay" id="admx-microsoftdefenderantivirus-quarantine-purgeitemsafterdelay">ADMX_MicrosoftDefenderAntivirus/Quarantine_PurgeItemsAfterDelay</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-randomizescheduletasktimes" id="admx-microsoftdefenderantivirus-randomizescheduletasktimes">ADMX_MicrosoftDefenderAntivirus/RandomizeScheduleTaskTimes</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-realtimeprotection-disablebehaviormonitoring" id="admx-microsoftdefenderantivirus-realtimeprotection-disablebehaviormonitoring">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableBehaviorMonitoring</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-realtimeprotection-disableioavprotection" id="admx-microsoftdefenderantivirus-realtimeprotection-disableioavprotection">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableIOAVProtection</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-realtimeprotection-disableonaccessprotection" id="admx-microsoftdefenderantivirus-realtimeprotection-disableonaccessprotection">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableOnAccessProtection</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-realtimeprotection-disablerawwritenotification" id="admx-microsoftdefenderantivirus-realtimeprotection-disablerawwritenotification">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableRawWriteNotification</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-realtimeprotection-disablescanonrealtimeenable" id="admx-microsoftdefenderantivirus-realtimeprotection-disablescanonrealtimeenable">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableScanOnRealtimeEnable</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-realtimeprotection-ioavmaxsize" id="admx-microsoftdefenderantivirus-realtimeprotection-ioavmaxsize">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_IOAVMaxSize</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisablebehaviormonitoring" id="admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisablebehaviormonitoring">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisableioavprotection" id="admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisableioavprotection">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableIOAVProtection</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisableonaccessprotection" id="admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisableonaccessprotection">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisablerealtimemonitoring" id="admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisablerealtimemonitoring">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverriderealtimescandirection" id="admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverriderealtimescandirection">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideRealtimeScanDirection</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-remediation-localsettingoverridescan-scheduletime" id="admx-microsoftdefenderantivirus-remediation-localsettingoverridescan-scheduletime">ADMX_MicrosoftDefenderAntivirus/Remediation_LocalSettingOverrideScan_ScheduleTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-remediation-scan-scheduleday" id="admx-microsoftdefenderantivirus-remediation-scan-scheduleday">ADMX_MicrosoftDefenderAntivirus/Remediation_Scan_ScheduleDay</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-remediation-scan-scheduletime" id="admx-microsoftdefenderantivirus-remediation-scan-scheduletime">ADMX_MicrosoftDefenderAntivirus/Remediation_Scan_ScheduleTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-reporting-additionalactiontimeout" id="admx-microsoftdefenderantivirus-reporting-additionalactiontimeout">ADMX_MicrosoftDefenderAntivirus/Reporting_AdditionalActionTimeout</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-reporting-criticalfailuretimeout" id="admx-microsoftdefenderantivirus-reporting-criticalfailuretimeout">ADMX_MicrosoftDefenderAntivirus/Reporting_CriticalFailureTimeout</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-reporting-disableenhancednotifications" id="admx-microsoftdefenderantivirus-reporting-disableenhancednotifications">ADMX_MicrosoftDefenderAntivirus/Reporting_DisableEnhancedNotifications</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-reporting-disablegenericreports" id="admx-microsoftdefenderantivirus-reporting-disablegenericreports">ADMX_MicrosoftDefenderAntivirus/Reporting_DisablegenericrePorts</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-reporting-noncriticaltimeout" id="admx-microsoftdefenderantivirus-reporting-noncriticaltimeout">ADMX_MicrosoftDefenderAntivirus/Reporting_NonCriticalTimeout</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-reporting-recentlycleanedtimeout" id="admx-microsoftdefenderantivirus-reporting-recentlycleanedtimeout">ADMX_MicrosoftDefenderAntivirus/Reporting_RecentlyCleanedTimeout</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-reporting-wpptracingcomponents" id="admx-microsoftdefenderantivirus-reporting-wpptracingcomponents">ADMX_MicrosoftDefenderAntivirus/Reporting_WppTracingComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-reporting-wpptracinglevel" id="admx-microsoftdefenderantivirus-reporting-wpptracinglevel">ADMX_MicrosoftDefenderAntivirus/Reporting_WppTracingLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-allowpause" id="admx-microsoftdefenderantivirus-scan-allowpause">ADMX_MicrosoftDefenderAntivirus/Scan_AllowPause</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-archivemaxdepth" id="admx-microsoftdefenderantivirus-scan-archivemaxdepth">ADMX_MicrosoftDefenderAntivirus/Scan_ArchiveMaxDepth</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-archivemaxsize" id="admx-microsoftdefenderantivirus-scan-archivemaxsize">ADMX_MicrosoftDefenderAntivirus/Scan_ArchiveMaxSize</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-disablearchivescanning" id="admx-microsoftdefenderantivirus-scan-disablearchivescanning">ADMX_MicrosoftDefenderAntivirus/Scan_DisableArchiveScanning</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-disableemailscanning" id="admx-microsoftdefenderantivirus-scan-disableemailscanning">ADMX_MicrosoftDefenderAntivirus/Scan_DisableEmailScanning</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-disableheuristics" id="admx-microsoftdefenderantivirus-scan-disableheuristics">ADMX_MicrosoftDefenderAntivirus/Scan_DisableHeuristics</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-disablepackedexescanning" id="admx-microsoftdefenderantivirus-scan-disablepackedexescanning">ADMX_MicrosoftDefenderAntivirus/Scan_DisablePackedExeScanning</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-disableremovabledrivescanning" id="admx-microsoftdefenderantivirus-scan-disableremovabledrivescanning">ADMX_MicrosoftDefenderAntivirus/Scan_DisableRemovableDriveScanning</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-disablereparsepointscanning" id="admx-microsoftdefenderantivirus-scan-disablereparsepointscanning">ADMX_MicrosoftDefenderAntivirus/Scan_DisableReparsePointScanning</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-disablerestorepoint" id="admx-microsoftdefenderantivirus-scan-disablerestorepoint">ADMX_MicrosoftDefenderAntivirus/Scan_DisableRestorePoint</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-disablescanningmappednetworkdrivesforfullscan" id="admx-microsoftdefenderantivirus-scan-disablescanningmappednetworkdrivesforfullscan">ADMX_MicrosoftDefenderAntivirus/Scan_DisableScanningMappedNetworkDrivesForFullScan</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-disablescanningnetworkfiles" id="admx-microsoftdefenderantivirus-scan-disablescanningnetworkfiles">ADMX_MicrosoftDefenderAntivirus/Scan_DisableScanningNetworkFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-localsettingoverrideavgcpuloadfactor" id="admx-microsoftdefenderantivirus-scan-localsettingoverrideavgcpuloadfactor">ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideAvgCPULoadFactor</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-localsettingoverridescanparameters" id="admx-microsoftdefenderantivirus-scan-localsettingoverridescanparameters">ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScanParameters</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-localsettingoverridescheduleday" id="admx-microsoftdefenderantivirus-scan-localsettingoverridescheduleday">ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScheduleDay</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-localsettingoverrideschedulequickscantime" id="admx-microsoftdefenderantivirus-scan-localsettingoverrideschedulequickscantime">ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScheduleQuickScantime</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-localsettingoverridescheduletime" id="admx-microsoftdefenderantivirus-scan-localsettingoverridescheduletime">ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScheduleTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-lowcpupriority" id="admx-microsoftdefenderantivirus-scan-lowcpupriority">ADMX_MicrosoftDefenderAntivirus/Scan_LowCpuPriority</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-missedscheduledscancountbeforecatchup" id="admx-microsoftdefenderantivirus-scan-missedscheduledscancountbeforecatchup">ADMX_MicrosoftDefenderAntivirus/Scan_MissedScheduledScanCountBeforeCatchup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-purgeitemsafterdelay" id="admx-microsoftdefenderantivirus-scan-purgeitemsafterdelay">ADMX_MicrosoftDefenderAntivirus/Scan_PurgeItemsAfterDelay</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-quickscaninterval" id="admx-microsoftdefenderantivirus-scan-quickscaninterval">ADMX_MicrosoftDefenderAntivirus/Scan_QuickScanInterval</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-scanonlyifidle" id="admx-microsoftdefenderantivirus-scan-scanonlyifidle">ADMX_MicrosoftDefenderAntivirus/Scan_ScanOnlyIfIdle</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-scheduleday" id="admx-microsoftdefenderantivirus-scan-scheduleday">ADMX_MicrosoftDefenderAntivirus/Scan_ScheduleDay</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-scan-scheduletime" id="admx-microsoftdefenderantivirus-scan-scheduletime">ADMX_MicrosoftDefenderAntivirus/Scan_ScheduleTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-servicekeepalive" id="admx-microsoftdefenderantivirus-servicekeepalive">ADMX_MicrosoftDefenderAntivirus/ServiceKeepAlive</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-assignaturedue" id="admx-microsoftdefenderantivirus-signatureupdate-assignaturedue">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ASSignatureDue</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-avsignaturedue" id="admx-microsoftdefenderantivirus-signatureupdate-avsignaturedue">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_AVSignatureDue</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-definitionupdatefilesharessources" id="admx-microsoftdefenderantivirus-signatureupdate-definitionupdatefilesharessources">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DefinitionUpdateFileSharesSources</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-disablescanonupdate" id="admx-microsoftdefenderantivirus-signatureupdate-disablescanonupdate">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DisableScanOnUpdate</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-disablescheduledsignatureupdateonbattery" id="admx-microsoftdefenderantivirus-signatureupdate-disablescheduledsignatureupdateonbattery">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DisableScheduledSignatureUpdateonBattery</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-disableupdateonstartupwithoutengine" id="admx-microsoftdefenderantivirus-signatureupdate-disableupdateonstartupwithoutengine">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DisableUpdateOnStartupWithoutEngine</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-fallbackorder" id="admx-microsoftdefenderantivirus-signatureupdate-fallbackorder">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_FallbackOrder</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-forceupdatefrommu" id="admx-microsoftdefenderantivirus-signatureupdate-forceupdatefrommu">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ForceUpdateFromMU</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-realtimesignaturedelivery" id="admx-microsoftdefenderantivirus-signatureupdate-realtimesignaturedelivery">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_RealtimeSignatureDelivery</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-scheduleday" id="admx-microsoftdefenderantivirus-signatureupdate-scheduleday">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ScheduleDay</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-scheduletime" id="admx-microsoftdefenderantivirus-signatureupdate-scheduletime">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ScheduleTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-sharedsignatureslocation" id="admx-microsoftdefenderantivirus-signatureupdate-sharedsignatureslocation">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_SharedSignaturesLocation</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-signaturedisablenotification" id="admx-microsoftdefenderantivirus-signatureupdate-signaturedisablenotification">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_SignatureDisableNotification</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-signatureupdatecatchupinterval" id="admx-microsoftdefenderantivirus-signatureupdate-signatureupdatecatchupinterval">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_SignatureUpdateCatchupInterval</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-signatureupdate-updateonstartup" id="admx-microsoftdefenderantivirus-signatureupdate-updateonstartup">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_UpdateOnStartup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-spynetreporting" id="admx-microsoftdefenderantivirus-spynetreporting">ADMX_MicrosoftDefenderAntivirus/SpynetReporting</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-spynet-localsettingoverridespynetreporting" id="#admx-microsoftdefenderantivirus-spynet-localsettingoverridespynetreporting">ADMX_MicrosoftDefenderAntivirus/Spynet_LocalSettingOverrideSpynetReporting</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-threats-threatiddefaultaction" id="admx-microsoftdefenderantivirus-threats-threatiddefaultaction">ADMX_MicrosoftDefenderAntivirus/Threats_ThreatIdDefaultAction</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-ux-configuration-customdefaultactiontoaststring" id="admx-microsoftdefenderantivirus-ux-configuration-customdefaultactiontoaststring">ADMX_MicrosoftDefenderAntivirus/UX_Configuration_CustomDefaultActionToastString</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-ux-configuration-notification-suppress" id="admx-microsoftdefenderantivirus-ux-configuration-notification-suppress">ADMX_MicrosoftDefenderAntivirus/UX_Configuration_Notification_Suppress</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-ux-configuration-suppressrebootnotification" id="admx-microsoftdefenderantivirus-ux-configuration-suppressrebootnotification">ADMX_MicrosoftDefenderAntivirus/UX_Configuration_SuppressRebootNotification</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-microsoftdefenderantivirus.md#admx-microsoftdefenderantivirus-ux-configuration-uilockdown" id="admx-microsoftdefenderantivirus-ux-configuration-uilockdown">ADMX_MicrosoftDefenderAntivirus/UX_Configuration_UILockdown</a>
  </dd>
</dl>

### ADMX_MMC policies
<dl>
  <dd>
    <a href="./policy-csp-admx-mmc.md#admx-mmc-mmc-activexcontrol" id="admx-mmc-mmc-activexcontrol">ADMX_MMC/MMC_ActiveXControl</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmc.md#admx-mmc-mmc-extendview" id="admx-mmc-mmc-extendview">ADMX_MMC/MMC_ExtendView</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmc.md#admx-mmc-mmc-linktoweb" id="admx-mmc-mmc-linktoweb">ADMX_MMC/MMC_LinkToWeb</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmc.md#admx-mmc-mmc-restrict-author" id="admx-mmc-mmc-restrict-author">ADMX_MMC/MMC_Restrict_Author</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmc.md#admx-mmc-mmc-restrict-to-permitted-snapins" id="admx-mmc-mmc-restrict-to-permitted-snapins">ADMX_MMC/MMC_Restrict_To_Permitted_Snapins</a>
  </dd>
</dl>

### ADMX_MMCSnapins policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-admcomputers-1" id="admx-mmcsnapins-mmc-admcomputers-1">ADMX_MMCSnapins/MMC_ADMComputers_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-admcomputers-2" id="admx-mmcsnapins-mmc-admcomputers-2">ADMX_MMCSnapins/MMC_ADMComputers_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-admusers-1" id="admx-mmcsnapins-mmc-admusers-1">ADMX_MMCSnapins/MMC_ADMUsers_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-admusers-2" id="admx-mmcsnapins-mmc-admusers-2">ADMX_MMCSnapins/MMC_ADMUsers_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-adsi" id="admx-mmcsnapins-mmc-adsi">ADMX_MMCSnapins/MMC_ADSI</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-activedirdomtrusts" id="admx-mmcsnapins-mmc-activedirdomtrusts">ADMX_MMCSnapins/MMC_ActiveDirDomTrusts</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-activedirsitesservices" id="admx-mmcsnapins-mmc-activedirsitesservices">ADMX_MMCSnapins/MMC_ActiveDirSitesServices</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-activediruserscomp" id="admx-mmcsnapins-mmc-activediruserscomp">ADMX_MMCSnapins/MMC_ActiveDirUsersComp</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-appletalkrouting" id="admx-mmcsnapins-mmc-appletalkrouting">ADMX_MMCSnapins/MMC_AppleTalkRouting</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-authman" id="admx-mmcsnapins-mmc-authman">ADMX_MMCSnapins/MMC_AuthMan</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-certauth" id="admx-mmcsnapins-mmc-certauth">ADMX_MMCSnapins/MMC_CertAuth</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-certauthpolset" id="admx-mmcsnapins-mmc-certauthpolset">ADMX_MMCSnapins/MMC_CertAuthPolSet</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-certs" id="admx-mmcsnapins-mmc-certs">ADMX_MMCSnapins/MMC_Certs</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-certstemplate" id="admx-mmcsnapins-mmc-certstemplate">ADMX_MMCSnapins/MMC_CertsTemplate</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-componentservices" id="admx-mmcsnapins-mmc-componentservices">ADMX_MMCSnapins/MMC_ComponentServices</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-computermanagement" id="admx-mmcsnapins-mmc-computermanagement">ADMX_MMCSnapins/MMC_ComputerManagement</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-connectionsharingnat" id="admx-mmcsnapins-mmc-connectionsharingnat">ADMX_MMCSnapins/MMC_ConnectionSharingNAT</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-dcomcfg" id="admx-mmcsnapins-mmc-dcomcfg">ADMX_MMCSnapins/MMC_DCOMCFG</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-dfs" id="admx-mmcsnapins-mmc-dfs">ADMX_MMCSnapins/MMC_DFS</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-dhcprelaymgmt" id="admx-mmcsnapins-mmc-dhcprelaymgmt">ADMX_MMCSnapins/MMC_DHCPRelayMgmt</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-devicemanager-1" id="admx-mmcsnapins-mmc-devicemanager-1">ADMX_MMCSnapins/MMC_DeviceManager_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-devicemanager-2" id="admx-mmcsnapins-mmc-devicemanager-2">ADMX_MMCSnapins/MMC_DeviceManager_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-diskdefrag" id="admx-mmcsnapins-mmc-diskdefrag">ADMX_MMCSnapins/MMC_DiskDefrag</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-diskmgmt" id="admx-mmcsnapins-mmc-diskmgmt">ADMX_MMCSnapins/MMC_DiskMgmt</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-enterprisepki" id="admx-mmcsnapins-mmc-enterprisepki">ADMX_MMCSnapins/MMC_EnterprisePKI</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-eventviewer-1" id="admx-mmcsnapins-mmc-eventviewer-1">ADMX_MMCSnapins/MMC_EventViewer_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-eventviewer-2" id="admx-mmcsnapins-mmc-eventviewer-2">ADMX_MMCSnapins/MMC_EventViewer_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-eventviewer-3" id="admx-mmcsnapins-mmc-eventviewer-3">ADMX_MMCSnapins/MMC_EventViewer_3</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-eventviewer-4" id="admx-mmcsnapins-mmc-eventviewer-4">ADMX_MMCSnapins/MMC_EventViewer_4</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-faxservice" id="admx-mmcsnapins-mmc-faxservice">ADMX_MMCSnapins/MMC_FAXService</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-failoverclusters" id="admx-mmcsnapins-mmc-failoverclusters">ADMX_MMCSnapins/MMC_FailoverClusters</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-folderredirection-1" id="admx-mmcsnapins-mmc-folderredirection-1">ADMX_MMCSnapins/MMC_FolderRedirection_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-folderredirection-2" id="admx-mmcsnapins-mmc-folderredirection-2">ADMX_MMCSnapins/MMC_FolderRedirection_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-frontpageext" id="admx-mmcsnapins-mmc-frontpageext">ADMX_MMCSnapins/MMC_FrontPageExt</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-grouppolicymanagementsnapin" id="admx-mmcsnapins-mmc-grouppolicymanagementsnapin">ADMX_MMCSnapins/MMC_GroupPolicyManagementSnapIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-grouppolicysnapin" id="admx-mmcsnapins-mmc-grouppolicysnapin">ADMX_MMCSnapins/MMC_GroupPolicySnapIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-grouppolicytab" id="admx-mmcsnapins-mmc-grouppolicytab">ADMX_MMCSnapins/MMC_GroupPolicyTab</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-hra" id="admx-mmcsnapins-mmc-hra">ADMX_MMCSnapins/MMC_HRA</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-ias" id="admx-mmcsnapins-mmc-ias">ADMX_MMCSnapins/MMC_IAS</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-iaslogging" id="admx-mmcsnapins-mmc-iaslogging">ADMX_MMCSnapins/MMC_IASLogging</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-iemaintenance-1" id="admx-mmcsnapins-mmc-iemaintenance-1">ADMX_MMCSnapins/MMC_IEMaintenance_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-iemaintenance-2" id="admx-mmcsnapins-mmc-iemaintenance-2">ADMX_MMCSnapins/MMC_IEMaintenance_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-igmprouting" id="admx-mmcsnapins-mmc-igmprouting">ADMX_MMCSnapins/MMC_IGMPRouting</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-iis" id="admx-mmcsnapins-mmc-iis">ADMX_MMCSnapins/MMC_IIS</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-iprouting" id="admx-mmcsnapins-mmc-iprouting">ADMX_MMCSnapins/MMC_IPRouting</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-ipsecmanage-gp" id="admx-mmcsnapins-mmc-ipsecmanage-gp">ADMX_MMCSnapins/MMC_IPSecManage_GP</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-ipxriprouting" id="admx-mmcsnapins-mmc-ipxriprouting">ADMX_MMCSnapins/MMC_IPXRIPRouting</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-ipxrouting" id="admx-mmcsnapins-mmc-ipxrouting">ADMX_MMCSnapins/MMC_IPXRouting</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-ipxsaprouting" id="admx-mmcsnapins-mmc-ipxsaprouting">ADMX_MMCSnapins/MMC_IPXSAPRouting</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-indexingservice" id="admx-mmcsnapins-mmc-indexingservice">ADMX_MMCSnapins/MMC_IndexingService</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-ipsecmanage" id="admx-mmcsnapins-mmc-ipsecmanage">ADMX_MMCSnapins/MMC_IpSecManage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-ipsecmonitor" id="admx-mmcsnapins-mmc-ipsecmonitor">ADMX_MMCSnapins/MMC_IpSecMonitor</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-localusersgroups" id="admx-mmcsnapins-mmc-localusersgroups">ADMX_MMCSnapins/MMC_LocalUsersGroups</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-logicalmappeddrives" id="admx-mmcsnapins-mmc-logicalmappeddrives">ADMX_MMCSnapins/MMC_LogicalMappedDrives</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-npsui" id="admx-mmcsnapins-mmc-npsui">ADMX_MMCSnapins/MMC_NPSUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-napsnap" id="admx-mmcsnapins-mmc-napsnap">ADMX_MMCSnapins/MMC_NapSnap</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-napsnap-gp" id="admx-mmcsnapins-mmc-napsnap-gp">ADMX_MMCSnapins/MMC_NapSnap_GP</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-net-framework" id="admx-mmcsnapins-mmc-net-framework">ADMX_MMCSnapins/MMC_Net_Framework</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-ocsp" id="admx-mmcsnapins-mmc-ocsp">ADMX_MMCSnapins/MMC_OCSP</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-ospfrouting" id="admx-mmcsnapins-mmc-ospfrouting">ADMX_MMCSnapins/MMC_OSPFRouting</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-perflogsalerts" id="admx-mmcsnapins-mmc-perflogsalerts">ADMX_MMCSnapins/MMC_PerfLogsAlerts</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-publickey" id="admx-mmcsnapins-mmc-publickey">ADMX_MMCSnapins/MMC_PublicKey</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-qosadmission" id="admx-mmcsnapins-mmc-qosadmission">ADMX_MMCSnapins/MMC_QoSAdmission</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-ras-dialinuser" id="admx-mmcsnapins-mmc-ras-dialinuser">ADMX_MMCSnapins/MMC_RAS_DialinUser</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-riprouting" id="admx-mmcsnapins-mmc-riprouting">ADMX_MMCSnapins/MMC_RIPRouting</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-ris" id="admx-mmcsnapins-mmc-ris">ADMX_MMCSnapins/MMC_RIS</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-rra" id="admx-mmcsnapins-mmc-rra">ADMX_MMCSnapins/MMC_RRA</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-rsm" id="admx-mmcsnapins-mmc-rsm">ADMX_MMCSnapins/MMC_RSM</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-remstore" id="admx-mmcsnapins-mmc-remstore">ADMX_MMCSnapins/MMC_RemStore</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-remoteaccess" id="admx-mmcsnapins-mmc-remoteaccess">ADMX_MMCSnapins/MMC_RemoteAccess</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-remotedesktop" id="admx-mmcsnapins-mmc-remotedesktop">ADMX_MMCSnapins/MMC_RemoteDesktop</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-resultantsetofpolicysnapin" id="admx-mmcsnapins-mmc-resultantsetofpolicysnapin">ADMX_MMCSnapins/MMC_ResultantSetOfPolicySnapIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-routing" id="admx-mmcsnapins-mmc-routing">ADMX_MMCSnapins/MMC_Routing</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-sca" id="admx-mmcsnapins-mmc-sca">ADMX_MMCSnapins/MMC_SCA</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-smtpprotocol" id="admx-mmcsnapins-mmc-smtpprotocol">ADMX_MMCSnapins/MMC_SMTPProtocol</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-snmp" id="admx-mmcsnapins-mmc-snmp">ADMX_MMCSnapins/MMC_SNMP</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-scriptsmachine-1" id="admx-mmcsnapins-mmc-scriptsmachine-1">ADMX_MMCSnapins/MMC_ScriptsMachine_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-scriptsmachine-2" id="admx-mmcsnapins-mmc-scriptsmachine-2">ADMX_MMCSnapins/MMC_ScriptsMachine_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-scriptsuser-1" id="admx-mmcsnapins-mmc-scriptsuser-1">ADMX_MMCSnapins/MMC_ScriptsUser_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-scriptsuser-2" id="admx-mmcsnapins-mmc-scriptsuser-2">ADMX_MMCSnapins/MMC_ScriptsUser_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-securitysettings-1" id="admx-mmcsnapins-mmc-securitysettings-1">ADMX_MMCSnapins/MMC_SecuritySettings_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-securitysettings-2" id="admx-mmcsnapins-mmc-securitysettings-2">ADMX_MMCSnapins/MMC_SecuritySettings_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-securitytemplates" id="admx-mmcsnapins-mmc-securitytemplates">ADMX_MMCSnapins/MMC_SecurityTemplates</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-sendconsolemessage" id="">ADMX_MMCSnapins/MMC_SendConsoleMessage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-servermanager" id="admx-mmcsnapins-mmc-servermanager">ADMX_MMCSnapins/MMC_ServerManager</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-servicedependencies" id="admx-mmcsnapins-mmc-servicedependencies">ADMX_MMCSnapins/MMC_ServiceDependencies</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-services" id="admx-mmcsnapins-mmc-services">ADMX_MMCSnapins/MMC_Services</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-sharedfolders" id="admx-mmcsnapins-mmc-sharedfolders">ADMX_MMCSnapins/MMC_SharedFolders</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-sharedfolders-ext" id="admx-mmcsnapins-mmc-sharedfolders-ext">ADMX_MMCSnapins/MMC_SharedFolders_Ext</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-softwareinstalationcomputers-1" id="admx-mmcsnapins-mmc-softwareinstalationcomputers-1">ADMX_MMCSnapins/MMC_SoftwareInstalationComputers_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-softwareinstalationcomputers-2" id="admx-mmcsnapins-mmc-softwareinstalationcomputers-2">ADMX_MMCSnapins/MMC_SoftwareInstalationComputers_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-softwareinstallationusers-1" id="admx-mmcsnapins-mmc-softwareinstallationusers-1">ADMX_MMCSnapins/MMC_SoftwareInstallationUsers_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-softwareinstallationusers-2" id="admx-mmcsnapins-mmc-softwareinstallationusers-2">ADMX_MMCSnapins/MMC_SoftwareInstallationUsers_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-sysinfo" id="admx-mmcsnapins-mmc-sysinfo">ADMX_MMCSnapins/MMC_SysInfo</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-sysprop" id="admx-mmcsnapins-mmc-sysprop">ADMX_MMCSnapins/MMC_SysProp</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-tpmmanagement" id="admx-mmcsnapins-mmc-tpmmanagement">ADMX_MMCSnapins/MMC_TPMManagement</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-telephony" id="admx-mmcsnapins-mmc-telephony">ADMX_MMCSnapins/MMC_Telephony</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-terminalservices" id="admx-mmcsnapins-mmc-terminalservices">ADMX_MMCSnapins/MMC_TerminalServices</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-wmi" id="admx-mmcsnapins-mmc-wmi">ADMX_MMCSnapins/MMC_WMI</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-windowsfirewall" id="admx-mmcsnapins-mmc-windowsfirewall">ADMX_MMCSnapins/MMC_WindowsFirewall</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-windowsfirewall-gp" id="admx-mmcsnapins-mmc-windowsfirewall-gp">ADMX_MMCSnapins/MMC_WindowsFirewall_GP</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-wirednetworkpolicy" id="admx-mmcsnapins-mmc-wirednetworkpolicy">ADMX_MMCSnapins/MMC_WiredNetworkPolicy</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-wirelessmon" id="admx-mmcsnapins-mmc-wirelessmon">ADMX_MMCSnapins/MMC_WirelessMon</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-mmcsnapins.md#admx-mmcsnapins-mmc-wirelessnetworkpolicy" id="admx-mmcsnapins-mmc-wirelessnetworkpolicy">ADMX_MMCSnapins/MMC_WirelessNetworkPolicy</a>
  </dd>
</dl>

### ADMX_MSAPolicy policies
<dl>
  <dd>
    <a href="./policy-csp-admx-msapolicy.md#admx-msapolicy-microsoftaccount-disableuserauth" id="admx-msapolicy-microsoftaccount-disableuserauth">ADMX_MSAPolicy/IncludeMicrosoftAccount_DisableUserAuthCmdLine</a>
  </dd>
  <dd>

### ADMX_msched policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-msched.md#admx-msched-activationboundarypolicy" id="admx-msched-activationboundarypolicy">ADMX_msched/ActivationBoundaryPolicy</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-msched.md#admx-msched-randomdelaypolicy" id="admx-msched-randomdelaypolicy">ADMX_msched/RandomDelayPolicy</a>
  </dd>
</dl>

### ADMX_MSDT policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-msdt.md#admx-msdt-msdtsupportprovider" id="admx-msdt-msdtsupportprovider">ADMX_MSDT/MsdtSupportProvider</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-msdt.md#admx-msdt-msdttooldownloadpolicy" id="admx-msdt-msdttooldownloadpolicy">ADMX_MSDT/MsdtToolDownloadPolicy</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-msdt.md#admx-msdt-wdiscenarioexecutionpolicy" id="admx-msdt-wdiscenarioexecutionpolicy">ADMX_MSDT/WdiScenarioExecutionPolicy</a>
  </dd>
</dl>

### ADMX_MSI policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-allowlockdownbrowse" id="admx-msi-allowlockdownbrowse">ADMX_MSI/AllowLockdownBrowse</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-allowlockdownmedia" id="admx-msi-allowlockdownmedia">ADMX_MSI/AllowLockdownMedia</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-allowlockdownpatch" id="admx-msi-allowlockdownpatch">ADMX_MSI/AllowLockdownPatch</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-disableautomaticapplicationshutdown" id="admx-msi-disableautomaticapplicationshutdown">ADMX_MSI/DisableAutomaticApplicationShutdown</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-disablebrowse" id="admx-msi-disablebrowse">ADMX_MSI/DisableBrowse</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-disableflyweightpatching" id="admx-msi-disableflyweightpatching">ADMX_MSI/DisableFlyweightPatching</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-disableloggingfrompackage" id="admx-msi-disableloggingfrompackage">ADMX_MSI/DisableLoggingFromPackage</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-disablemsi" id="admx-msi-disablemsi">ADMX_MSI/DisableMSI</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-disablemedia" id="admx-msi-disablemedia">ADMX_MSI/DisableMedia</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-disablepatch" id="admx-msi-disablepatch">ADMX_MSI/DisablePatch</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-disablerollback-1" id="admx-msi-disablerollback-1">ADMX_MSI/DisableRollback_1</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-disablerollback-2" id="admx-msi-disablerollback-2">ADMX_MSI/DisableRollback_2</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-disablesharedcomponent" id="admx-msi-disablesharedcomponent">ADMX_MSI/DisableSharedComponent</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-msilogging" id="admx-msi-msilogging">ADMX_MSI/MSILogging</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-msi-disableluapatching" id="admx-msi-msi-disableluapatching">ADMX_MSI/MSI_DisableLUAPatching</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-msi-disablepatchuninstall" id="admx-msi-msi-disablepatchuninstall">ADMX_MSI/MSI_DisablePatchUninstall</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-msi-disablesrcheckpoints" id="admx-msi-msi-disablesrcheckpoints">ADMX_MSI/MSI_DisableSRCheckPoints</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-msi-disableuserinstalls" id="admx-msi-msi-disableuserinstalls">ADMX_MSI/MSI_DisableUserInstalls</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-msi-enforceupgradecomponentrules" id="admx-msi-msi-enforceupgradecomponentrules">ADMX_MSI/MSI_EnforceUpgradeComponentRules</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-msi-maxpatchcachesize" id="admx-msi-msi-maxpatchcachesize">ADMX_MSI/MSI_MaxPatchCacheSize</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-msidisableembeddedui" id="admx-msi-msidisableembeddedui">ADMX_MSI/MsiDisableEmbeddedUI</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-safeforscripting" id="admx-msi-safeforscripting">ADMX_MSI/SafeForScripting</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-searchorder" id="admx-msi-searchorder">ADMX_MSI/SearchOrder</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-msi.md#admx-msi-transformssecure" id="admx-msi-transformssecure">ADMX_MSI/TransformsSecure</a>
  </dd>
</dl>

### ADMX_nca policies
<dl>
  <dd>
    <a href="./policy-csp-admx-nca.md#admx-nca-corporateresources" id="admx-nca-corporateresources">ADMX_nca/CorporateResources</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-nca.md#admx-nca-customcommands" id="admx-nca-customcommands">ADMX_nca/CustomCommands</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-nca.md#admx-nca-dtes" id="admx-nca-dtes">ADMX_nca/DTEs</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-nca.md#admx-nca-friendlyname" id="admx-nca-friendlyname">ADMX_nca/FriendlyName</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-nca.md#admx-nca-localnameson" id="admx-nca-localnameson">ADMX_nca/LocalNamesOn</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-nca.md#admx-nca-passivemode" id="admx-nca-passivemode">ADMX_nca/PassiveMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-nca.md#admx-nca-showui" id="admx-nca-showui">ADMX_nca/ShowUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-nca.md#admx-nca-supportemail" id="admx-nca-supportemail">ADMX_nca/SupportEmail</a>
  </dd>
</dl>

### ADMX_NCSI policies
<dl>
  <dd>
    <a href="./policy-csp-admx-ncsi.md#admx-ncsi-ncsi-corpdnsprobecontent" id="admx-ncsi-ncsi-corpdnsprobecontent">ADMX_NCSI/NCSI_CorpDnsProbeContent</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-ncsi.md#admx-ncsi-ncsi-corpdnsprobehost" id="admx-ncsi-ncsi-corpdnsprobehost">ADMX_NCSI/NCSI_CorpDnsProbeHost</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-ncsi.md#admx-ncsi-ncsi-corpsiteprefixes" id="admx-ncsi-ncsi-corpsiteprefixes">ADMX_NCSI/NCSI_CorpSitePrefixes</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-ncsi.md#admx-ncsi-ncsi-corpwebprobeurl" id="admx-ncsi-ncsi-corpwebprobeurl">ADMX_NCSI/NCSI_CorpWebProbeUrl</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-ncsi.md#admx-ncsi-ncsi-domainlocationdeterminationurl" id="admx-ncsi-ncsi-domainlocationdeterminationurl">ADMX_NCSI/NCSI_DomainLocationDeterminationUrl</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-ncsi.md#admx-ncsi-ncsi-globaldns" id="admx-ncsi-ncsi-globaldns">ADMX_NCSI/NCSI_GlobalDns</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-ncsi.md#admx-ncsi-ncsi-passivepolling" id="admx-ncsi-ncsi-passivepolling">ADMX_NCSI/NCSI_PassivePolling</a>
  </dd>
</dl>

### ADMX_Netlogon policies

<dl>
 <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-addresslookuponpingbehavior"id="admx-netlogon-netlogon-addresslookuponpingbehavior">ADMX_Netlogon/Netlogon_AddressLookupOnPingBehavior</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-addresstypereturned"id="admx-netlogon-netlogon-addresstypereturned">ADMX_Netlogon/Netlogon_AddressTypeReturned</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-allowdnssuffixsearch"id="admx-netlogon-netlogon-allowdnssuffixsearch">ADMX_Netlogon/Netlogon_AllowDnsSuffixSearch</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-allownt4crypto"id="admx-netlogon-netlogon-allownt4crypto">ADMX_Netlogon/Netlogon_AllowNT4Crypto</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-allowsinglelabeldnsdomain"id="admx-netlogon-netlogon-allowsinglelabeldnsdomain">ADMX_Netlogon/Netlogon_AllowSingleLabelDnsDomain</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-autositecoverage"id="admx-netlogon-netlogon-autositecoverage">ADMX_Netlogon/Netlogon_AutoSiteCoverage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-avoidfallbacknetbiosdiscovery"id="admx-netlogon-netlogon-avoidfallbacknetbiosdiscovery">ADMX_Netlogon/Netlogon_AvoidFallbackNetbiosDiscovery</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-avoidpdconwan"id="admx-netlogon-netlogon-avoidpdconwan">ADMX_Netlogon/Netlogon_AvoidPdcOnWan</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-backgroundretryinitialperiod"id="admx-netlogon-netlogon-backgroundretryinitialperiod">ADMX_Netlogon/Netlogon_BackgroundRetryInitialPeriod</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-backgroundretrymaximumperiod"id="admx-netlogon-netlogon-backgroundretrymaximumperiod">ADMX_Netlogon/Netlogon_BackgroundRetryMaximumPeriod</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-backgroundretryquittime"id="admx-netlogon-netlogon-backgroundretryquittime">ADMX_Netlogon/Netlogon_BackgroundRetryQuitTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-backgroundsuccessfulrefreshperiod"id="admx-netlogon-netlogon-backgroundsuccessfulrefreshperiod">ADMX_Netlogon/Netlogon_BackgroundSuccessfulRefreshPeriod</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-debugflag"id="admx-netlogon-netlogon-debugflag">ADMX_Netlogon/Netlogon_DebugFlag</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-dnsavoidregisterrecords"id="admx-netlogon-netlogon-dnsavoidregisterrecords">ADMX_Netlogon/Netlogon_DnsAvoidRegisterRecords</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-dnsrefreshinterval"id="admx-netlogon-netlogon-dnsrefreshinterval">ADMX_Netlogon/Netlogon_DnsRefreshInterval</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-dnssrvrecorduselowercasehostnames"id="admx-netlogon-netlogon-dnssrvrecorduselowercasehostnames">ADMX_Netlogon/Netlogon_DnsSrvRecordUseLowerCaseHostNames</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-dnsttl"id="admx-netlogon-netlogon-dnsttl">ADMX_Netlogon/Netlogon_DnsTtl</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-expecteddialupdelay"id="admx-netlogon-netlogon-expecteddialupdelay">ADMX_Netlogon/Netlogon_ExpectedDialupDelay</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-forcerediscoveryinterval"id="admx-netlogon-netlogon-forcerediscoveryinterval">ADMX_Netlogon/Netlogon_ForceRediscoveryInterval</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-gcsitecoverage"id="admx-netlogon-netlogon-gcsitecoverage">ADMX_Netlogon/Netlogon_GcSiteCoverage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-ignoreincomingmailslotmessages"id="admx-netlogon-netlogon-ignoreincomingmailslotmessages">ADMX_Netlogon/Netlogon_IgnoreIncomingMailslotMessages</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-ldapsrvpriority"id="admx-netlogon-netlogon-ldapsrvpriority">ADMX_Netlogon/Netlogon_LdapSrvPriority</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-ldapsrvweight"id="admx-netlogon-netlogon-ldapsrvweight">ADMX_Netlogon/Netlogon_LdapSrvWeight</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-maximumlogfilesize"id="admx-netlogon-netlogon-maximumlogfilesize">ADMX_Netlogon/Netlogon_MaximumLogFileSize</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-ndncsitecoverage"id="admx-netlogon-netlogon-ndncsitecoverage">ADMX_Netlogon/Netlogon_NdncSiteCoverage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-negativecacheperiod"id="admx-netlogon-netlogon-negativecacheperiod">ADMX_Netlogon/Netlogon_NegativeCachePeriod</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-netlogonsharecompatibilitymode"id="admx-netlogon-netlogon-netlogonsharecompatibilitymode">ADMX_Netlogon/Netlogon_NetlogonShareCompatibilityMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-nonbackgroundsuccessfulrefreshperiod"id="admx-netlogon-netlogon-nonbackgroundsuccessfulrefreshperiod">ADMX_Netlogon/Netlogon_NonBackgroundSuccessfulRefreshPeriod</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-pingurgencymode"id="admx-netlogon-netlogon-pingurgencymode">ADMX_Netlogon/Netlogon_PingUrgencyMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-scavengeinterval"id="admx-netlogon-netlogon-scavengeinterval">ADMX_Netlogon/Netlogon_ScavengeInterval</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-sitecoverage"id="admx-netlogon-netlogon-sitecoverage">ADMX_Netlogon/Netlogon_SiteCoverage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-sitename"id="admx-netlogon-netlogon-sitename">ADMX_Netlogon/Netlogon_SiteName</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-sysvolsharecompatibilitymode"id="admx-netlogon-netlogon-sysvolsharecompatibilitymode">ADMX_Netlogon/Netlogon_SysvolShareCompatibilityMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-trynextclosestsite"id="admx-netlogon-netlogon-trynextclosestsite">ADMX_Netlogon/Netlogon_TryNextClosestSite</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-netlogon.md#admx-netlogon-netlogon-usedynamicdns"id="admx-netlogon-netlogon-usedynamicdns">ADMX_Netlogon/Netlogon_UseDynamicDns</a>
  </dd>
</dl>

### ADMX_NetworkConnections policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-addremovecomponents" id="admx-networkconnections-nc-addremovecomponents">ADMX_NetworkConnections/NC_AddRemoveComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-advancedsettings" id="admx-networkconnections-nc-advancedsettings">ADMX_NetworkConnections/NC_AdvancedSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-allowadvancedtcpipconfig" id="admx-networkconnections-nc-allowadvancedtcpipconfig">ADMX_NetworkConnections/NC_AllowAdvancedTCPIPConfig</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-changebindstate" id="admx-networkconnections-nc-changebindstate">ADMX_NetworkConnections/NC_ChangeBindState</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-deletealluserconnection" id="admx-networkconnections-nc-deletealluserconnection">ADMX_NetworkConnections/NC_DeleteAllUserConnection</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-deleteconnection" id="admx-networkconnections-nc-deleteconnection">ADMX_NetworkConnections/NC_DeleteConnection</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-dialupprefs" id="admx-networkconnections-nc-dialupprefs">ADMX_NetworkConnections/NC_DialupPrefs</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-donotshowlocalonlyicon" id="admx-networkconnections-nc-donotshowlocalonlyicon">ADMX_NetworkConnections/NC_DoNotShowLocalOnlyIcon</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-enableadminprohibits" id="admx-networkconnections-nc-enableadminprohibits">ADMX_NetworkConnections/NC_EnableAdminProhibits</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-forcetunneling" id="admx-networkconnections-nc-forcetunneling">ADMX_NetworkConnections/NC_ForceTunneling</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-ipstatechecking" id="admx-networkconnections-nc-ipstatechecking">ADMX_NetworkConnections/NC_IpStateChecking</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-lanchangeproperties" id="admx-networkconnections-nc-lanchangeproperties">ADMX_NetworkConnections/NC_LanChangeProperties</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-lanconnect" id="admx-networkconnections-nc-lanconnect">ADMX_NetworkConnections/NC_LanConnect</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-lanproperties" id="admx-networkconnections-nc-lanproperties">ADMX_NetworkConnections/NC_LanProperties</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-newconnectionwizard" id="admx-networkconnections-nc-newconnectionwizard">ADMX_NetworkConnections/NC_NewConnectionWizard</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-personalfirewallconfig" id="admx-networkconnections-nc-personalfirewallconfig">ADMX_NetworkConnections/NC_PersonalFirewallConfig</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-rasalluserproperties" id="admx-networkconnections-nc-rasalluserproperties">ADMX_NetworkConnections/NC_RasAllUserProperties</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-raschangeproperties" id="admx-networkconnections-nc-raschangeproperties">ADMX_NetworkConnections/NC_RasChangeProperties</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-rasconnect" id="admx-networkconnections-nc-rasconnect">ADMX_NetworkConnections/NC_RasConnect</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-rasmyproperties" id="admx-networkconnections-nc-rasmyproperties">ADMX_NetworkConnections/NC_RasMyProperties</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-renamealluserrasconnection" id="admx-networkconnections-nc-renamealluserrasconnection">ADMX_NetworkConnections/NC_RenameAllUserRasConnection</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-renameconnection" id="admx-networkconnections-nc-renameconnection">ADMX_NetworkConnections/NC_RenameConnection</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-renamelanconnection" id="admx-networkconnections-nc-renamelanconnection">ADMX_NetworkConnections/NC_RenameLanConnection</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-renamemyrasconnection" id="admx-networkconnections-nc-renamemyrasconnection">ADMX_NetworkConnections/NC_RenameMyRasConnection</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-showsharedaccessui" id="admx-networkconnections-nc-showsharedaccessui">ADMX_NetworkConnections/NC_ShowSharedAccessUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-statistics" id="admx-networkconnections-nc-statistics">ADMX_NetworkConnections/NC_Statistics</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-networkconnections.md#admx-networkconnections-nc-stddomainusersetlocation" id="admx-networkconnections-nc-stddomainusersetlocation">ADMX_NetworkConnections/NC_StdDomainUserSetLocation</a>
  </dd>
</dl>

### ADMX_OfflineFiles policies

<dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-alwayspinsubfolders" id="admx-offlinefiles-pol-alwayspinsubfolders">ADMX_OfflineFiles/Pol_AlwaysPinSubFolders</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-assignedofflinefiles-1" id="admx-offlinefiles-pol-assignedofflinefiles-1">ADMX_OfflineFiles/Pol_AssignedOfflineFiles_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-assignedofflinefiles-2" id="admx-offlinefiles-pol-assignedofflinefiles-2">ADMX_OfflineFiles/Pol_AssignedOfflineFiles_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-backgroundsyncsettings" id="admx-offlinefiles-pol-backgroundsyncsettings">ADMX_OfflineFiles/Pol_BackgroundSyncSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-cachesize" id="admx-offlinefiles-pol-cachesize">ADMX_OfflineFiles/Pol_CacheSize</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-customgoofflineactions-1" id="admx-offlinefiles-pol-customgoofflineactions-1">ADMX_OfflineFiles/Pol_CustomGoOfflineActions_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-customgoofflineactions-2" id="admx-offlinefiles-pol-customgoofflineactions-2">ADMX_OfflineFiles/Pol_CustomGoOfflineActions_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-defcachesize" id="admx-offlinefiles-pol-defcachesize">ADMX_OfflineFiles/Pol_DefCacheSize</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-enabled" id="admx-offlinefiles-pol-enabled">ADMX_OfflineFiles/Pol_Enabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-encryptofflinefiles" id="admx-offlinefiles-pol-encryptofflinefiles">ADMX_OfflineFiles/Pol_EncryptOfflineFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-eventlogginglevel-1" id="admx-offlinefiles-pol-eventlogginglevel-1">ADMX_OfflineFiles/Pol_EventLoggingLevel_1</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-eventlogginglevel-2" id="admx-offlinefiles-pol-eventlogginglevel-2">ADMX_OfflineFiles/Pol_EventLoggingLevel_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-exclusionlistsettings" id="admx-offlinefiles-pol-exclusionlistsettings">ADMX_OfflineFiles/Pol_ExclusionListSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-extexclusionlist" id="admx-offlinefiles-pol-extexclusionlist">ADMX_OfflineFiles/Pol_ExtExclusionList</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-goofflineaction-1" id="admx-offlinefiles-pol-goofflineaction-1">ADMX_OfflineFiles/Pol_GoOfflineAction_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-goofflineaction-2" id="admx-offlinefiles-pol-goofflineaction-2">ADMX_OfflineFiles/Pol_GoOfflineAction_2</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-nocacheviewer-1" id="admx-offlinefiles-pol-nocacheviewer-1">ADMX_OfflineFiles/Pol_NoCacheViewer_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-nocacheviewer-2" id="admx-offlinefiles-pol-nocacheviewer-2">ADMX_OfflineFiles/Pol_NoCacheViewer_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-noconfigcache-1" id="admx-offlinefiles-pol-noconfigcache-1">ADMX_OfflineFiles/Pol_NoConfigCache_1</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-noconfigcache-2" id="admx-offlinefiles-pol-noconfigcache-2">ADMX_OfflineFiles/Pol_NoConfigCache_2</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-nomakeavailableoffline-1" id="admx-offlinefiles-pol-nomakeavailableoffline-1">ADMX_OfflineFiles/Pol_NoMakeAvailableOffline_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-nomakeavailableoffline-2" id="admx-offlinefiles-pol-nomakeavailableoffline-2">ADMX_OfflineFiles/Pol_NoMakeAvailableOffline_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-nopinfiles-1" id="admx-offlinefiles-pol-nopinfiles-1">ADMX_OfflineFiles/Pol_NoPinFiles_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-nopinfiles-2" id="admx-offlinefiles-pol-nopinfiles-2">ADMX_OfflineFiles/Pol_NoPinFiles_2</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-noreminders-1" id="admx-offlinefiles-pol-noreminders-1">ADMX_OfflineFiles/Pol_NoReminders_1</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-noreminders-2" id="admx-offlinefiles-pol-noreminders-2">ADMX_OfflineFiles/Pol_NoReminders_2</a>
  </dd>
    <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-onlinecachingsettings" id="admx-offlinefiles-pol-onlinecachingsettings">ADMX_OfflineFiles/Pol_OnlineCachingSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-purgeatlogoff" id="admx-offlinefiles-pol-purgeatlogoff">ADMX_OfflineFiles/Pol_PurgeAtLogoff</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-quickadimpin" id="admx-offlinefiles-pol-quickadimpin">ADMX_OfflineFiles/Pol_QuickAdimPin</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-reminderfreq-1" id="admx-offlinefiles-pol-reminderfreq-1">ADMX_OfflineFiles/Pol_ReminderFreq_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-reminderfreq-2" id="admx-offlinefiles-pol-reminderfreq-2">ADMX_OfflineFiles/Pol_ReminderFreq_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-reminderinittimeout-1" id="admx-offlinefiles-pol-reminderinittimeout-1">ADMX_OfflineFiles/Pol_ReminderInitTimeout_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-reminderinittimeout-2" id="admx-offlinefiles-pol-reminderinittimeout-2">ADMX_OfflineFiles/Pol_ReminderInitTimeout_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-remindertimeout-1" id="admx-offlinefiles-pol-remindertimeout-1">ADMX_OfflineFiles/Pol_ReminderTimeout_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-remindertimeout-2" id="admx-offlinefiles-pol-remindertimeout-2">ADMX_OfflineFiles/Pol_ReminderTimeout_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-slowlinksettings" id="admx-offlinefiles-pol-slowlinksettings">ADMX_OfflineFiles/Pol_SlowLinkSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-slowlinkspeed" id="admx-offlinefiles-pol-slowlinkspeed">ADMX_OfflineFiles/Pol_SlowLinkSpeed</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-syncatlogoff-1" id="admx-offlinefiles-pol-syncatlogoff-1">ADMX_OfflineFiles/Pol_SyncAtLogoff_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-syncatlogoff-2" id="admx-offlinefiles-pol-syncatlogoff-2">ADMX_OfflineFiles/Pol_SyncAtLogoff_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-syncatlogon-1" id="admx-offlinefiles-pol-syncatlogon-1">ADMX_OfflineFiles/Pol_SyncAtLogon_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-syncatlogon-2" id="admx-offlinefiles-pol-syncatlogon-2">ADMX_OfflineFiles/Pol_SyncAtLogon_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-syncatsuspend-1" id="admx-offlinefiles-pol-syncatsuspend-1">ADMX_OfflineFiles/Pol_SyncAtSuspend_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-syncatsuspend-2" id="admx-offlinefiles-pol-syncatsuspend-2">ADMX_OfflineFiles/Pol_SyncAtSuspend_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-synconcostednetwork" id="admx-offlinefiles-pol-synconcostednetwork">ADMX_OfflineFiles/Pol_SyncOnCostedNetwork</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-workofflinedisabled-1" id="admx-offlinefiles-pol-workofflinedisabled-1">ADMX_OfflineFiles/Pol_WorkOfflineDisabled_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-offlinefiles.md#admx-offlinefiles-pol-workofflinedisabled-2" id="admx-offlinefiles-pol-workofflinedisabled-2">ADMX_OfflineFiles/Pol_WorkOfflineDisabled_2</a>
  </dd>
</dl>

### ADMX_PeerToPeerCaching policies

<dl>
  <dd>
    <a href="./policy-csp-admx-peertopeercaching.md#admx-peertopeercaching-enablewindowsbranchcache" id="admx-peertopeercaching-enablewindowsbranchcache">ADMX_PeerToPeerCaching/EnableWindowsBranchCache</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-peertopeercaching.md#admx-peertopeercaching-enablewindowsbranchcache-distributed" id="admx-peertopeercaching-enablewindowsbranchcache-distributed">ADMX_PeerToPeerCaching/EnableWindowsBranchCache_Distributed</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-peertopeercaching.md#admx-peertopeercaching-enablewindowsbranchcache-hosted" id="admx-peertopeercaching-enablewindowsbranchcache-hosted">ADMX_PeerToPeerCaching/EnableWindowsBranchCache_Hosted</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-peertopeercaching.md#admx-peertopeercaching-enablewindowsbranchcache-hostedcachediscovery" id="admx-peertopeercaching-enablewindowsbranchcache-hostedcachediscovery">ADMX_PeerToPeerCaching/EnableWindowsBranchCache_HostedCacheDiscovery</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-peertopeercaching.md#admx-peertopeercaching-enablewindowsbranchcache-hostedmultipleservers" id="admx-peertopeercaching-enablewindowsbranchcache-hostedmultipleservers">ADMX_PeerToPeerCaching/EnableWindowsBranchCache_HostedMultipleServers</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-peertopeercaching.md#admx-peertopeercaching-enablewindowsbranchcache-smb" id="admx-peertopeercaching-enablewindowsbranchcache-smb">ADMX_PeerToPeerCaching/EnableWindowsBranchCache_SMB</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-peertopeercaching.md#admx-peertopeercaching-setcachepercent" id="admx-peertopeercaching-setcachepercent">ADMX_PeerToPeerCaching/SetCachePercent</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-peertopeercaching.md#admx-peertopeercaching-setdatacacheentrymaxage" id="admx-peertopeercaching-setdatacacheentrymaxage">ADMX_PeerToPeerCaching/SetDataCacheEntryMaxAge</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-peertopeercaching.md#admx-peertopeercaching-setdowngrading" id="admx-peertopeercaching-setdowngrading">ADMX_PeerToPeerCaching/SetDowngrading</a>
  </dd>
</dl>

### ADMX_PerformanceDiagnostics policies

<dl>
  <dd>
    <a href="./policy-csp-admx-performancediagnostics.md#admx-performancediagnostics-wdiscenarioexecutionpolicy-1" id="admx-performancediagnostics-wdiscenarioexecutionpolicy-1">ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-performancediagnostics.md#admx-performancediagnostics-wdiscenarioexecutionpolicy-2" id="admx-performancediagnostics-wdiscenarioexecutionpolicy-2">ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-performancediagnostics.md#admx-performancediagnostics-wdiscenarioexecutionpolicy-3" id="admx-performancediagnostics-wdiscenarioexecutionpolicy-3">ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_3</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-performancediagnostics.md#admx-performancediagnostics-wdiscenarioexecutionpolicy-4" id="admx-performancediagnostics-wdiscenarioexecutionpolicy-4">ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_4</a>
  </dd>
</dl>

### ADMX_Power policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-acconnectivityinstandby-2" id="admx-power-acconnectivityinstandby-2">ADMX_Power/ACConnectivityInStandby_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-accriticalsleeptransitionsdisable-2" id="admx-power-accriticalsleeptransitionsdisable-2">ADMX_Power/ACCriticalSleepTransitionsDisable_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-acstartmenubuttonaction-2" id="admx-power-acstartmenubuttonaction-2">ADMX_Power/ACStartMenuButtonAction_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-allowsystempowerrequestac" id="admx-power-allowsystempowerrequestac">ADMX_Power/AllowSystemPowerRequestAC</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-allowsystempowerrequestdc" id="admx-power-allowsystempowerrequestdc">ADMX_Power/AllowSystemPowerRequestDC</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-allowsystemsleepwithremotefilesopenac" id="admx-power-allowsystemsleepwithremotefilesopenac">ADMX_Power/AllowSystemSleepWithRemoteFilesOpenAC</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-allowsystemsleepwithremotefilesopendc" id="admx-power-allowsystemsleepwithremotefilesopendc">ADMX_Power/AllowSystemSleepWithRemoteFilesOpenDC</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-customactiveschemeoverride-2" id="admx-power-customactiveschemeoverride-2">ADMX_Power/CustomActiveSchemeOverride_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-dcbatterydischargeaction0-2" id="admx-power-dcbatterydischargeaction0-2">ADMX_Power/DCBatteryDischargeAction0_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-dcbatterydischargeaction1-2" id="admx-power-dcbatterydischargeaction1-2">ADMX_Power/DCBatteryDischargeAction1_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-dcbatterydischargelevel0-2" id="admx-power-dcbatterydischargelevel0-2">ADMX_Power/DCBatteryDischargeLevel0_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-dcbatterydischargelevel1uinotification-2" id="admx-power-dcbatterydischargelevel1uinotification-2">ADMX_Power/DCBatteryDischargeLevel1UINotification_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-dcbatterydischargelevel1-2" id="admx-power-dcbatterydischargelevel1-2">ADMX_Power/DCBatteryDischargeLevel1_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-dcconnectivityinstandby-2" id="admx-power-dcconnectivityinstandby-2">ADMX_Power/DCConnectivityInStandby_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-dccriticalsleeptransitionsdisable-2" id="admx-power-dccriticalsleeptransitionsdisable-2">ADMX_Power/DCCriticalSleepTransitionsDisable_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-dcstartmenubuttonaction-2" id="admx-power-dcstartmenubuttonaction-2">ADMX_Power/DCStartMenuButtonAction_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-diskacpowerdowntimeout-2" id="admx-power-diskacpowerdowntimeout-2">ADMX_Power/DiskACPowerDownTimeOut_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-diskdcpowerdowntimeout-2" id="admx-power-diskdcpowerdowntimeout-2">ADMX_Power/DiskDCPowerDownTimeOut_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-dont-poweroff-aftershutdown" id="admx-power-dont-poweroff-aftershutdown">ADMX_Power/Dont_PowerOff_AfterShutdown</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-enabledesktopslideshowac" id="admx-power-enabledesktopslideshowac">ADMX_Power/EnableDesktopSlideShowAC</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-enabledesktopslideshowdc" id="admx-power-enabledesktopslideshowdc">ADMX_Power/EnableDesktopSlideShowDC</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-inboxactiveschemeoverride-2" id="admx-power-inboxactiveschemeoverride-2">ADMX_Power/InboxActiveSchemeOverride_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-pw-promptpasswordonresume" id="admx-power-pw-promptpasswordonresume">ADMX_Power/PW_PromptPasswordOnResume</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-powerthrottlingturnoff" id="admx-power-powerthrottlingturnoff">ADMX_Power/PowerThrottlingTurnOff</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-power.md#admx-power-reservebatterynotificationlevel" id="admx-power-reservebatterynotificationlevel">ADMX_Power/ReserveBatteryNotificationLevel</a>
  </dd>
</dl>

### ADMX_PowerShellExecutionPolicy policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-powershellexecutionpolicy.md#admx-powershellexecutionpolicy-enablemodulelogging" id="admx-powershellexecutionpolicy-enablemodulelogging">ADMX_PowerShellExecutionPolicy/EnableModuleLogging</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-powershellexecutionpolicy.md#admx-powershellexecutionpolicy-enablescripts" id="admx-powershellexecutionpolicy-enablescripts">ADMX_PowerShellExecutionPolicy/EnableScripts</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-powershellexecutionpolicy.md#admx-powershellexecutionpolicy-enabletranscripting" id="admx-powershellexecutionpolicy-enabletranscripting">ADMX_PowerShellExecutionPolicy/EnableTranscripting</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-powershellexecutionpolicy.md#admx-powershellexecutionpolicy-enableupdatehelpdefaultsourcepath" id="admx-powershellexecutionpolicy-enableupdatehelpdefaultsourcepath">ADMX_PowerShellExecutionPolicy/EnableUpdateHelpDefaultSourcePath</a>
  </dd>
</dl>

### ADMX_Printing policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-allowwebprinting" id="admx-printing-allowwebprinting">ADMX_Printing/AllowWebPrinting</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-applicationdriverisolation" id="admx-printing-applicationdriverisolation">ADMX_Printing/ApplicationDriverIsolation</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-customizedsupporturl" id="admx-printing-customizedsupporturl">ADMX_Printing/CustomizedSupportUrl</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-donotinstallcompatibledriverfromwindowsupdate" id="admx-printing-donotinstallcompatibledriverfromwindowsupdate">ADMX_Printing/DoNotInstallCompatibleDriverFromWindowsUpdate</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-domainprinters" id="admx-printing-domainprinters">ADMX_Printing/DomainPrinters</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-downlevelbrowse" id="admx-printing-downlevelbrowse">ADMX_Printing/DownlevelBrowse</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-emfdespooling" id="admx-printing-emfdespooling">ADMX_Printing/EMFDespooling</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-forcesoftwarerasterization" id="admx-printing-forcesoftwarerasterization">ADMX_Printing/ForceSoftwareRasterization</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-intranetprintersurl" id="admx-printing-intranetprintersurl">ADMX_Printing/IntranetPrintersUrl</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-kmprintersareblocked" id="admx-printing-kmprintersareblocked">ADMX_Printing/KMPrintersAreBlocked</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-legacydefaultprintermode" id="admx-printing-legacydefaultprintermode">ADMX_Printing/LegacyDefaultPrinterMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-mxdwuselegacyoutputformatmsxps" id="admx-printing-mxdwuselegacyoutputformatmsxps">ADMX_Printing/MXDWUseLegacyOutputFormatMSXPS</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-nodeleteprinter" id="admx-printing-nodeleteprinter">ADMX_Printing/NoDeletePrinter</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-nondomainprinters" id="admx-printing-nondomainprinters">ADMX_Printing/NonDomainPrinters</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-packagepointandprintonly" id="admx-printing-packagepointandprintonly">ADMX_Printing/PackagePointAndPrintOnly</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-packagepointandprintonly-win7" id="admx-printing-packagepointandprintonly-win7">ADMX_Printing/PackagePointAndPrintOnly_Win7</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-packagepointandprintserverlist" id="admx-printing-packagepointandprintserverlist">ADMX_Printing/PackagePointAndPrintServerList</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-packagepointandprintserverlist-win7" id="admx-printing-packagepointandprintserverlist-win7">ADMX_Printing/PackagePointAndPrintServerList_Win7</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-physicallocation" id="admx-printing-physicallocation">ADMX_Printing/PhysicalLocation</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-physicallocationsupport" id="admx-printing-physicallocationsupport">ADMX_Printing/PhysicalLocationSupport</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-printdriverisolationexecutionpolicy
" id="admx-printing-printdriverisolationexecutionpolicy">ADMX_Printing/PrintDriverIsolationExecutionPolicy</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-printdriverisolationoverridecompat" id="admx-printing-printdriverisolationoverridecompat">ADMX_Printing/PrintDriverIsolationOverrideCompat</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-printerdirectorysearchscope" id="admx-printing-printerdirectorysearchscope">ADMX_Printing/PrinterDirectorySearchScope</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-printerserverthread" id="admx-printing-printerserverthread">ADMX_Printing/PrinterServerThread</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-showjobtitleineventlogs" id="admx-printing-showjobtitleineventlogs">ADMX_Printing/ShowJobTitleInEventLogs</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing.md#admx-printing-v4driverdisallowprinterextension" id="admx-printing-v4driverdisallowprinterextension">ADMX_Printing/V4DriverDisallowPrinterExtension</a>
  </dd>
</dl>

### ADMX_Printing2 policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-printing2.md#admx-printing2-autopublishing" id="admx-printing2-autopublishing">ADMX_Printing2/AutoPublishing</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing2.md#admx-printing2-immortalprintqueue" id="admx-printing2-immortalprintqueue">ADMX_Printing2/ImmortalPrintQueue</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing2.md#admx-printing2-prunedownlevel" id="admx-printing2-prunedownlevel">ADMX_Printing2/PruneDownlevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing2.md#admx-printing2-pruninginterval" id="admx-printing2-pruninginterval">ADMX_Printing2/PruningInterval</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing2.md#admx-printing2-pruningpriority" id="admx-printing2-pruningpriority">ADMX_Printing2/PruningPriority</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing2.md#admx-printing2-pruningretries" id="admx-printing2-pruningretries">ADMX_Printing2/PruningRetries</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing2.md#admx-printing2-pruningretrylog" id="admx-printing2-pruningretrylog">ADMX_Printing2/PruningRetryLog</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing2.md#admx-printing2-registerspoolerremoterpcendpoint" id="admx-printing2-registerspoolerremoterpcendpoint">ADMX_Printing2/RegisterSpoolerRemoteRpcEndPoint</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-printing2.md#admx-printing2-verifypublishedstate" id="admx-printing2-verifypublishedstate">ADMX_Printing2/VerifyPublishedState</a>
  </dd>
</dl>

### ADMX_Programs policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-programs.md#admx-programs-nodefaultprograms" id="admx-programs-nodefaultprograms">ADMX_Programs/NoDefaultPrograms</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-programs.md#admx-programs-nogetprograms" id="admx-programs-nogetprograms">ADMX_Programs/NoGetPrograms</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-programs.md#admx-programs-noinstalledupdates" id="admx-programs-noinstalledupdates">ADMX_Programs/NoInstalledUpdates</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-programs.md#admx-programs-noprogramsandfeatures" id="admx-programs-noprogramsandfeatures">ADMX_Programs/NoProgramsAndFeatures</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-programs.md#admx-programs-noprogramscpl" id="admx-programs-noprogramscpl">ADMX_Programs/NoProgramsCPL</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-programs.md#admx-programs-nowindowsfeatures" id="admx-programs-nowindowsfeatures">ADMX_Programs/NoWindowsFeatures</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-programs.md#admx-programs-nowindowsmarketplace" id="admx-programs-nowindowsmarketplace">ADMX_Programs/NoWindowsMarketplace</a>
  </dd>
</dl>

### ADMX_Reliability policies

<dl>
  <dd>
    <a href="./policy-csp-admx-reliability.md#admx-reliability-ee-enablepersistenttimestamp" id="admx-reliability-ee-enablepersistenttimestamp">ADMX_Reliability/EE_EnablePersistentTimeStamp</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-reliability.md#admx-reliability-pch-reportshutdownevents" id="admx-reliability-pch-reportshutdownevents">ADMX_Reliability/PCH_ReportShutdownEvents</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-reliability.md#admx-reliability-shutdowneventtrackerstatefile" id="admx-reliability-shutdowneventtrackerstatefile">ADMX_Reliability/ShutdownEventTrackerStateFile</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-reliability.md#admx-reliability-shutdownreason" id="admx-reliability-shutdownreason">ADMX_Reliability/ShutdownReason</a>
  </dd>
</dl>  

### ADMX_RemoteAssistance policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-remoteassistance.md#admx-remoteassistance-ra-encryptedticketonly" id="admx-remoteassistance-ra-encryptedticketonly">ADMX_RemoteAssistance/RA_EncryptedTicketOnly</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-remoteassistance.md#admx-remoteassistance-ra-optimize-bandwidth" id="admx-remoteassistance-ra-optimize-bandwidth">ADMX_RemoteAssistance/RA_Optimize_Bandwidth</a>
  </dd>
</dl>

### ADMX_RemovableStorage policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-accessrights-reboottime-1" id="admx-removablestorage-accessrights-reboottime-1">ADMX_RemovableStorage/AccessRights_RebootTime_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-accessrights-reboottime-2" id="admx-removablestorage-accessrights-reboottime-2">ADMX_RemovableStorage/AccessRights_RebootTime_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-cdanddvd-denyexecute-access-2" id="admx-removablestorage-cdanddvd-denyexecute-access-2">ADMX_RemovableStorage/CDandDVD_DenyExecute_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-cdanddvd-denyread-access-1" id="admx-removablestorage-cdanddvd-denyread-access-1">ADMX_RemovableStorage/CDandDVD_DenyRead_Access_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-cdanddvd-denyread-access-2" id="admx-removablestorage-cdanddvd-denyread-access-2">ADMX_RemovableStorage/CDandDVD_DenyRead_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-cdanddvd-denywrite-access-1" id="admx-removablestorage-cdanddvd-denywrite-access-1">ADMX_RemovableStorage/CDandDVD_DenyWrite_Access_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-cdanddvd-denywrite-access-2" id="admx-removablestorage-cdanddvd-denywrite-access-2">ADMX_RemovableStorage/CDandDVD_DenyWrite_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-customclasses-denyread-access-1" id="admx-removablestorage-customclasses-denyread-access-1">ADMX_RemovableStorage/CustomClasses_DenyRead_Access_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-customclasses-denyread-access-2" id="admx-removablestorage-customclasses-denyread-access-2">ADMX_RemovableStorage/CustomClasses_DenyRead_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-customclasses-denywrite-access-1" id="admx-removablestorage-customclasses-denywrite-access-1">ADMX_RemovableStorage/CustomClasses_DenyWrite_Access_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-customclasses-denywrite-access-2" id="admx-removablestorage-customclasses-denywrite-access-2">ADMX_RemovableStorage/CustomClasses_DenyWrite_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-floppydrives-denyexecute-access-2" id="admx-removablestorage-floppydrives-denyexecute-access-2">ADMX_RemovableStorage/FloppyDrives_DenyExecute_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-floppydrives-denyread-access-1" id="admx-removablestorage-floppydrives-denyread-access-1">ADMX_RemovableStorage/FloppyDrives_DenyRead_Access_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-floppydrives-denyread-access-2" id="admx-removablestorage-floppydrives-denyread-access-2">ADMX_RemovableStorage/FloppyDrives_DenyRead_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-floppydrives-denywrite-access-1" id="admx-removablestorage-floppydrives-denywrite-access-1">ADMX_RemovableStorage/FloppyDrives_DenyWrite_Access_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-floppydrives-denywrite-access-2" id="admx-removablestorage-floppydrives-denywrite-access-2">ADMX_RemovableStorage/FloppyDrives_DenyWrite_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-removabledisks-denyexecute-access-2" id="admx-removablestorage-removabledisks-denyexecute-access-2">ADMX_RemovableStorage/RemovableDisks_DenyExecute_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-removabledisks-denyread-access-1" id="admx-removablestorage-removabledisks-denyread-access-1">ADMX_RemovableStorage/RemovableDisks_DenyRead_Access_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-removabledisks-denyread-access-2" id="admx-removablestorage-removabledisks-denyread-access-2">ADMX_RemovableStorage/RemovableDisks_DenyRead_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-removabledisks-denywrite-access-1" id="admx-removablestorage-removabledisks-denywrite-access-1">ADMX_RemovableStorage/RemovableDisks_DenyWrite_Access_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-removablestorageclasses-denyall-access-1" id="admx-removablestorage-removablestorageclasses-denyall-access-1">ADMX_RemovableStorage/RemovableStorageClasses_DenyAll_Access_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-removablestorageclasses-denyall-access-2" id="admx-removablestorage-removablestorageclasses-denyall-access-2">ADMX_RemovableStorage/RemovableStorageClasses_DenyAll_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-removable-remote-allow-access" id="admx-removablestorage-removable-remote-allow-access">ADMX_RemovableStorage/Removable_Remote_Allow_Access</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-tapedrives-denyexecute-access-2" id="admx-removablestorage-tapedrives-denyexecute-access-2">ADMX_RemovableStorage/TapeDrives_DenyExecute_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-tapedrives-denyread-access-1" id="admx-removablestorage-tapedrives-denyread-access-1">ADMX_RemovableStorage/TapeDrives_DenyRead_Access_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-tapedrives-denyread-access-2" id="admx-removablestorage-tapedrives-denyread-access-2">ADMX_RemovableStorage/TapeDrives_DenyRead_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-tapedrives-denywrite-access-1" id="admx-removablestorage-tapedrives-denywrite-access-1">ADMX_RemovableStorage/TapeDrives_DenyWrite_Access_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-tapedrives-denywrite-access-2" id="admx-removablestorage-tapedrives-denywrite-access-2">ADMX_RemovableStorage/TapeDrives_DenyWrite_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-wpddevices-denyread-access-1" id="admx-removablestorage-wpddevices-denyread-access-1">ADMX_RemovableStorage/WPDDevices_DenyRead_Access_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-wpddevices-denyread-access-2" id="admx-removablestorage-wpddevices-denyread-access-2">ADMX_RemovableStorage/WPDDevices_DenyRead_Access_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-wpddevices-denywrite-access-1" id="admx-removablestorage-wpddevices-denywrite-access-1">ADMX_RemovableStorage/WPDDevices_DenyWrite_Access_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-removablestorage.md#admx-removablestorage-wpddevices-denywrite-access-2" id="admx-removablestorage-wpddevices-denywrite-access-2">ADMX_RemovableStorage/WPDDevices_DenyWrite_Access_2</a>
  </dd>
</dl>

### ADMX_RPC policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-rpc.md#admx-rpc-rpcextendederrorinformation" id="admx-rpc-rpcextendederrorinformation">ADMX_RPC/RpcExtendedErrorInformation</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-rpc.md#admx-rpc-rpcignoredelegationfailure" id="admx-rpc-rpcignoredelegationfailure">ADMX_RPC/RpcIgnoreDelegationFailure</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-rpc.md#admx-rpc-rpcminimumhttpconnectiontimeout" id="admx-rpc-rpcminimumhttpconnectiontimeout">ADMX_RPC/RpcMinimumHttpConnectionTimeout</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-rpc.md#admx-rpc-rpcstateinformation" id="admx-rpc-rpcstateinformation">ADMX_RPC/RpcStateInformation</a>
  </dd>
</dl>

### ADMX_Scripts policies

<dl>
  <dd>
    <a href="./policy-csp-admx-scripts.md#admx-scripts-allow-logon-script-netbiosdisabled" id="admx-scripts-allow-logon-script-netbiosdisabled">ADMX_Scripts/Allow_Logon_Script_NetbiosDisabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-scripts.md#admx-scripts-maxgposcriptwaitpolicy" id="admx-scripts-maxgposcriptwaitpolicy">ADMX_Scripts/MaxGPOScriptWaitPolicy</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-scripts.md#admx-scripts-run-computer-ps-scripts-first" id="admx-scripts-run-computer-ps-scripts-first">ADMX_Scripts/Run_Computer_PS_Scripts_First</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-scripts.md#admx-scripts-run-legacy-logon-script-hidden" id="admx-scripts-run-legacy-logon-script-hidden">ADMX_Scripts/Run_Legacy_Logon_Script_Hidden</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-scripts.md#admx-scripts-run-logoff-script-visible" id="admx-scripts-run-logoff-script-visible">ADMX_Scripts/Run_Logoff_Script_Visible</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-scripts.md#admx-scripts-run-logon-script-sync-1" id="admx-scripts-run-logon-script-sync-1">ADMX_Scripts/Run_Logon_Script_Sync_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-scripts.md#admx-scripts-run-logon-script-sync-2" id="admx-scripts-run-logon-script-sync-2">ADMX_Scripts/Run_Logon_Script_Sync_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-scripts.md#admx-scripts-run-logon-script-visible" id="admx-scripts-run-logon-script-visible">ADMX_Scripts/Run_Logon_Script_Visible</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-scripts.md#admx-scripts-run-shutdown-script-visible" id="admx-scripts-run-shutdown-script-visible">ADMX_Scripts/Run_Shutdown_Script_Visible</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-scripts.md#admx-scripts-run-startup-script-sync" id="admx-scripts-run-startup-script-sync">ADMX_Scripts/Run_Startup_Script_Sync</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-scripts.md#admx-scripts-run-startup-script-visible" id="admx-scripts-run-startup-script-visible">ADMX_Scripts/Run_Startup_Script_Visible</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-scripts.md#admx-scripts-run-user-ps-scripts-first" id="admx-scripts-run-user-ps-scripts-first">ADMX_Scripts/Run_User_PS_Scripts_First</a>
  </dd>
</dl>

### ADMX_sdiageng policies

<dl>
  <dd>
    <a href="./policy-csp-admx-sdiageng.md#admx-sdiageng-betterwhenconnected" id="admx-sdiageng-betterwhenconnected">ADMX_sdiageng/BetterWhenConnected</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-sdiageng.md#admx-sdiageng-scripteddiagnosticsexecutionpolicy" id="admx-sdiageng-scripteddiagnosticsexecutionpolicy">ADMX_sdiageng/ScriptedDiagnosticsExecutionPolicy</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-sdiageng.md#admx-sdiageng-scripteddiagnosticssecuritypolicy" id="admx-sdiageng-scripteddiagnosticssecuritypolicy">ADMX_sdiageng/ScriptedDiagnosticsSecurityPolicy</a>
  </dd>
</dl>

### ADMX_Securitycenter policies

<dl>
  <dd>
    <a href="./policy-csp-admx-securitycenter.md#admx-securitycenter-securitycenter-securitycenterindomain" id="admx-securitycenter-securitycenter-securitycenterindomain">ADMX_Securitycenter/SecurityCenter_SecurityCenterInDomain</a>
  </dd>
</dl>

### ADMX_Sensors policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-sensors.md#admx-sensors-disablelocationscripting-1" id="admx-sensors-disablelocationscripting-1">ADMX_Sensors/DisableLocationScripting_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-sensors.md#admx-sensors-disablelocationscripting-2" id="admx-sensors-disablelocationscripting-2">ADMX_Sensors/DisableLocationScripting_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-sensors.md#admx-sensors-disablelocation-1" id="admx-sensors-disablelocation-1">ADMX_Sensors/DisableLocation_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-sensors.md#admx-sensors-disablesensors-1" id="admx-sensors-disablesensors-1">ADMX_Sensors/DisableSensors_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-sensors.md#admx-sensors-disablesensors-2" id="admx-sensors-disablesensors-2">ADMX_Sensors/DisableSensors_2</a>
  </dd>
</dl>

### ADMX_Servicing policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-servicing.md#admx-servicing-servicing" id="admx-servicing-servicing">ADMX_Servicing/Servicing</a>
  </dd>
</dl>

### ADMX_SettingSync policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-settingsync.md#admx-settingsync-disableappsyncsettingsync" id="admx-settingsync-disableappsyncsettingsync">ADMX_SettingSync/DisableAppSyncSettingSync</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-settingsync.md#admx-settingsync-disableapplicationsettingsync" id="admx-settingsync-disableapplicationsettingsync">ADMX_SettingSync/DisableApplicationSettingSync</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-settingsync.md#admx-settingsync-disablecredentialssettingsync" id="admx-settingsync-disablecredentialssettingsync">ADMX_SettingSync/DisableCredentialsSettingSync</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-settingsync.md#admx-settingsync-disabledesktopthemesettingsync" id="admx-settingsync-disabledesktopthemesettingsync">ADMX_SettingSync/DisableDesktopThemeSettingSync</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-settingsync.md#admx-settingsync-disablepersonalizationsettingsync" id="admx-settingsync-disablepersonalizationsettingsync">ADMX_SettingSync/DisablePersonalizationSettingSync</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-settingsync.md#admx-settingsync-disablesettingsync" id="admx-settingsync-disablesettingsync">ADMX_SettingSync/DisableSettingSync</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-settingsync.md#admx-settingsync-disablestartlayoutsettingsync" id="admx-settingsync-disablestartlayoutsettingsync">ADMX_SettingSync/DisableStartLayoutSettingSync</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-settingsync.md#admx-settingsync-disablesynconpaidnetwork" id="admx-settingsync-disablesynconpaidnetwork">ADMX_SettingSync/DisableSyncOnPaidNetwork</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-settingsync.md#admx-settingsync-disablewindowssettingsync" id="admx-settingsync-disablewindowssettingsync">ADMX_SettingSync/DisableWindowsSettingSync</a>
  </dd>
</dl>

### ADMX_SharedFolders policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-sharedfolders.md#admx-sharedfolders-publishdfsroots" id="admx-sharedfolders-publishdfsroots">ADMX_SharedFolders/PublishDfsRoots</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-sharedfolders.md#admx-sharedfolders-publishsharedfolders" id="admx-sharedfolders-publishsharedfolders">ADMX_SharedFolders/PublishSharedFolders</a>
  </dd>
</dl>

### ADMX_Sharing policies

<dl>
  <dd>
    <a href="./policy-csp-admx-sharing.md#admx-sharing-noinplacesharing" id="admx-sharing-noinplacesharing">ADMX_Sharing/NoInplaceSharing</a>
  </dd>
</dl>

##  ADMX_ShellCommandPromptRegEditTools policies

<dl>
  <dd>
    <a href="./policy-csp-admx-shellcommandpromptregedittools.md#admx-shellcommandpromptregedittools-disablecmd" id="admx-shellcommandpromptregedittools-disablecmd">ADMX_ShellCommandPromptRegEditTools/DisableCMD</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-shellcommandpromptregedittools.md#admx-shellcommandpromptregedittools-disableregedit" id="admx-shellcommandpromptregedittools-disableregedit">ADMX_ShellCommandPromptRegEditTools/DisableRegedit</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-shellcommandpromptregedittools.md#admx-shellcommandpromptregedittools-disallowapps" id="admx-shellcommandpromptregedittools-disallowapps">ADMX_ShellCommandPromptRegEditTools/DisallowApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-shellcommandpromptregedittools.md#admx-shellcommandpromptregedittools-disablecmd" id="admx-shellcommandpromptregedittools-restrictapps">ADMX_ShellCommandPromptRegEditTools/RestrictApps</a>
  </dd>
</dl>

### ADMX_SkyDrive policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-skydrive.md#admx-skydrive-preventnetworktrafficpreusersignin" id="admx-skydrive-preventnetworktrafficpreusersignin">ADMX_SkyDrive/PreventNetworkTrafficPreUserSignIn</a>
  </dd>
</dl>

### ADMX_Smartcard policies

<dl>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-allowcertificateswithnoeku" id="admx-smartcard-allowcertificateswithnoeku">ADMX_Smartcard/AllowCertificatesWithNoEKU</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-allowintegratedunblock" id="admx-smartcard-allowintegratedunblock">ADMX_Smartcard/AllowIntegratedUnblock</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-allowsignatureonlykeys" id="admx-smartcard-allowsignatureonlykeys">ADMX_Smartcard/AllowSignatureOnlyKeys</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-allowtimeinvalidcertificates" id="admx-smartcard-allowtimeinvalidcertificates">ADMX_Smartcard/AllowTimeInvalidCertificates</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-certpropenabledstring" id="admx-smartcard-certpropenabledstring">ADMX_Smartcard/CertPropEnabledString</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-certproprootcleanupstring" id="admx-smartcard-certproprootcleanupstring">ADMX_Smartcard/CertPropRootCleanupString</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-certproprootenabledstring" id="admx-smartcard-certproprootenabledstring">ADMX_Smartcard/CertPropRootEnabledString</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-disallowplaintextpin" id="admx-smartcard-disallowplaintextpin">ADMX_Smartcard/DisallowPlaintextPin</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-enumerateecccerts" id="admx-smartcard-enumerateecccerts">ADMX_Smartcard/EnumerateECCCerts</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-filterduplicatecerts" id="admx-smartcard-filterduplicatecerts">ADMX_Smartcard/FilterDuplicateCerts</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-forcereadingallcertificates" id="admx-smartcard-forcereadingallcertificates">ADMX_Smartcard/ForceReadingAllCertificates</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-integratedunblockpromptstring" id="admx-smartcard-integratedunblockpromptstring">ADMX_Smartcard/IntegratedUnblockPromptString</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-reversesubject" id="admx-smartcard-reversesubject">ADMX_Smartcard/ReverseSubject</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-scpnpenabled" id="admx-smartcard-scpnpenabled">ADMX_Smartcard/SCPnPEnabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-scpnpnotification" id="admx-smartcard-scpnpnotification">ADMX_Smartcard/SCPnPNotification</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-smartcard.md#admx-smartcard-x509hintsneeded" id="admx-smartcard-x509hintsneeded">ADMX_Smartcard/X509HintsNeeded</a>
  </dd>
</dl>

### ADMX_Snmp policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-snmp.md#admx-snmp-snmp-communities" id="admx-snmp-snmp-communities">ADMX_Snmp/SNMP_Communities</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-snmp.md#admx-snmp-snmp-permittedmanagers" id="admx-snmp-snmp-permittedmanagers">ADMX_Snmp/SNMP_PermittedManagers</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-snmp.md#admx-snmp-snmp-traps-public" id="admx-snmp-snmp-traps-public">ADMX_Snmp/SNMP_Traps_Public</a>
  </dd>
</dl>

### ADMX_StartMenu policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-addsearchinternetlinkinstartmenu" id="admx-startmenu-addsearchinternetlinkinstartmenu">ADMX_StartMenu/AddSearchInternetLinkInStartMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-clearrecentdocsonexit" id="admx-startmenu-clearrecentdocsonexit">ADMX_StartMenu/ClearRecentDocsOnExit</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-clearrecentprogfornewuserinstartmenu" id="admx-startmenu-clearrecentprogfornewuserinstartmenu">ADMX_StartMenu/ClearRecentProgForNewUserInStartMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-cleartilesonexit" id="admx-startmenu-cleartilesonexit">ADMX_StartMenu/ClearTilesOnExit</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-desktopappsfirstinappsview" id="admx-startmenu-desktopappsfirstinappsview">ADMX_StartMenu/DesktopAppsFirstInAppsView</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-disableglobalsearchonappsview" id="admx-startmenu-disableglobalsearchonappsview">ADMX_StartMenu/DisableGlobalSearchOnAppsView</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-forcestartmenulogoff" id="admx-startmenu-forcestartmenulogoff">ADMX_StartMenu/ForceStartMenuLogOff</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-gotodesktoponsignin" id="admx-startmenu-gotodesktoponsignin">ADMX_StartMenu/GoToDesktopOnSignIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-greymsiads" id="admx-startmenu-greymsiads">ADMX_StartMenu/GreyMSIAds</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-hidepoweroptions" id="admx-startmenu-hidepoweroptions">ADMX_StartMenu/HidePowerOptions</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-intellimenus" id="admx-startmenu-intellimenus">ADMX_StartMenu/Intellimenus</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-locktaskbar" id="admx-startmenu-locktaskbar">ADMX_StartMenu/LockTaskbar</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-memcheckboxinrundlg" id="admx-startmenu-memcheckboxinrundlg">ADMX_StartMenu/MemCheckBoxInRunDlg</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-noautotraynotify" id="admx-startmenu-noautotraynotify">ADMX_StartMenu/NoAutoTrayNotify</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-noballoontip" id="admx-startmenu-noballoontip">ADMX_StartMenu/NoBalloonTip</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nochangestartmenu" id="admx-startmenu-nochangestartmenu">ADMX_StartMenu/NoChangeStartMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-noclose" id="admx-startmenu-noclose">ADMX_StartMenu/NoClose</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nocommongroups" id="admx-startmenu-nocommongroups">ADMX_StartMenu/NoCommonGroups</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nofavoritesmenu" id="admx-startmenu-nofavoritesmenu">ADMX_StartMenu/NoFavoritesMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nofind" id="admx-startmenu-nofind">ADMX_StartMenu/NoFind</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nogamesfolderonstartmenu" id="admx-startmenu-nogamesfolderonstartmenu">ADMX_StartMenu/NoGamesFolderOnStartMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nohelp" id="admx-startmenu-nohelp">ADMX_StartMenu/NoHelp</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-noinstrumentation" id="admx-startmenu-noinstrumentation">ADMX_StartMenu/NoInstrumentation</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nomoreprogramslist" id="admx-startmenu-nomoreprogramslist">ADMX_StartMenu/NoMoreProgramsList</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nonetanddialupconnect" id="admx-startmenu-nonetanddialupconnect">ADMX_StartMenu/NoNetAndDialupConnect</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nopinnedprograms" id="admx-startmenu-nopinnedprograms">ADMX_StartMenu/NoPinnedPrograms</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-norecentdocsmenu" id="admx-startmenu-norecentdocsmenu">ADMX_StartMenu/NoRecentDocsMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-noresolvesearch" id="admx-startmenu-noresolvesearch">ADMX_StartMenu/NoResolveSearch</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-noresolvetrack" id="admx-startmenu-noresolvetrack">ADMX_StartMenu/NoResolveTrack</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-norun" id="admx-startmenu-norun">ADMX_StartMenu/NoRun</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nosmconfigureprograms" id="admx-startmenu-nosmconfigureprograms">ADMX_StartMenu/NoSMConfigurePrograms</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nosmmydocuments" id="admx-startmenu-nosmmydocuments">ADMX_StartMenu/NoSMMyDocuments</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nosmmymusic" id="admx-startmenu-nosmmymusic">ADMX_StartMenu/NoSMMyMusic</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nosmmynetworkplaces" id="admx-startmenu-nosmmynetworkplaces">ADMX_StartMenu/NoSMMyNetworkPlaces</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nosmmypictures" id="admx-startmenu-nosmmypictures">ADMX_StartMenu/NoSMMyPictures</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nosearchcomminstartmenu" id="admx-startmenu-nosearchcomminstartmenu">ADMX_StartMenu/NoSearchCommInStartMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nosearchcomputerlinkinstartmenu" id="admx-startmenu-nosearchcomputerlinkinstartmenu">ADMX_StartMenu/NoSearchComputerLinkInStartMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nosearcheverywherelinkinstartmenu" id="admx-startmenu-nosearcheverywherelinkinstartmenu">ADMX_StartMenu/NoSearchEverywhereLinkInStartMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nosearchfilesinstartmenu" id="admx-startmenu-nosearchfilesinstartmenu">ADMX_StartMenu/NoSearchFilesInStartMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nosearchinternetinstartmenu" id="admx-startmenu-nosearchinternetinstartmenu">ADMX_StartMenu/NoSearchInternetInStartMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nosearchprogramsinstartmenu" id="admx-startmenu-nosearchprogramsinstartmenu">ADMX_StartMenu/NoSearchProgramsInStartMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nosetfolders" id="admx-startmenu-nosetfolders">ADMX_StartMenu/NoSetFolders</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nosettaskbar" id="admx-startmenu-nosettaskbar">ADMX_StartMenu/NoSetTaskbar</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nostartmenudownload" id="admx-startmenu-nostartmenudownload">ADMX_StartMenu/NoStartMenuDownload</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nostartmenuhomegroup" id="admx-startmenu-nostartmenuhomegroup">ADMX_StartMenu/NoStartMenuHomegroup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nostartmenurecordedtv" id="admx-startmenu-nostartmenurecordedtv">ADMX_StartMenu/NoStartMenuRecordedTV</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nostartmenusubfolders" id="admx-startmenu-nostartmenusubfolders">ADMX_StartMenu/NoStartMenuSubFolders</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nostartmenuvideos" id="admx-startmenu-nostartmenuvideos">ADMX_StartMenu/NoStartMenuVideos</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nostartpage" id="admx-startmenu-nostartpage">ADMX_StartMenu/NoStartPage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-notaskbarclock" id="admx-startmenu-notaskbarclock">ADMX_StartMenu/NoTaskBarClock</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-notaskgrouping" id="admx-startmenu-notaskgrouping">ADMX_StartMenu/NoTaskGrouping</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-notoolbarsontaskbar" id="admx-startmenu-notoolbarsontaskbar">ADMX_StartMenu/NoToolbarsOnTaskbar</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-notraycontextmenu" id="admx-startmenu-notraycontextmenu">ADMX_StartMenu/NoTrayContextMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-notrayitemsdisplay" id="admx-startmenu-notrayitemsdisplay">ADMX_StartMenu/NoTrayItemsDisplay</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nouninstallfromstart" id="admx-startmenu-nouninstallfromstart">ADMX_StartMenu/NoUninstallFromStart</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nouserfolderonstartmenu" id="admx-startmenu-nouserfolderonstartmenu">ADMX_StartMenu/NoUserFolderOnStartMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nousernameonstartmenu" id="admx-startmenu-nousernameonstartmenu">ADMX_StartMenu/NoUserNameOnStartMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-nowindowsupdate" id="admx-startmenu-nowindowsupdate">ADMX_StartMenu/NoWindowsUpdate</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-powerbuttonaction" id="admx-startmenu-powerbuttonaction">ADMX_StartMenu/PowerButtonAction</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-quicklaunchenabled" id="admx-startmenu-quicklaunchenabled">ADMX_StartMenu/QuickLaunchEnabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-removeundockpcbutton" id="admx-startmenu-removeundockpcbutton">ADMX_StartMenu/RemoveUnDockPCButton</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-showappsviewonstart" id="admx-startmenu-showappsviewonstart">ADMX_StartMenu/ShowAppsViewOnStart</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-showrunasdifferentuserinstart" id="admx-startmenu-showrunasdifferentuserinstart">ADMX_StartMenu/ShowRunAsDifferentUserInStart</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-showruninstartmenu" id="admx-startmenu-showruninstartmenu">ADMX_StartMenu/ShowRunInStartMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-showstartondisplaywithforegroundonwinkey" id="admx-startmenu-showstartondisplaywithforegroundonwinkey">ADMX_StartMenu/ShowStartOnDisplayWithForegroundOnWinKey</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-startmenulogoff" id="admx-startmenu-startmenulogoff">ADMX_StartMenu/StartMenuLogOff</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-startmenu.md#admx-startmenu-startpinappswheninstalled" id="admx-startmenu-startpinappswheninstalled">ADMX_StartMenu/StartPinAppsWhenInstalled</a>
  </dd>
</dl>

### ADMX_SystemRestore policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-systemrestore.md#admx-systemrestore-sr-disableconfig" ID="admx-systemrestore-sr-disableconfig">ADMX_SystemRestore/SR_DisableConfig</a>
  </dd>
</dl>

### ADMX_Taskbar policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-disablenotificationcenter" ID="admx-taskbar-disablenotificationcenter">ADMX_Taskbar/DisableNotificationCenter</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-enablelegacyballoonnotifications" ID="admx-taskbar-enablelegacyballoonnotifications">ADMX_Taskbar/EnableLegacyBalloonNotifications</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-hidescahealth" ID="admx-taskbar-hidescahealth">ADMX_Taskbar/HideSCAHealth</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-hidescanetwork" ID="admx-taskbar-hidescanetwork">ADMX_Taskbar/HideSCANetwork</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-hidescapower" ID="admx-taskbar-hidescapower">ADMX_Taskbar/HideSCAPower</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-hidescavolume" ID="admx-taskbar-hidescavolume">ADMX_Taskbar/HideSCAVolume</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-noballoonfeatureadvertisements" ID="admx-taskbar-noballoonfeatureadvertisements">ADMX_Taskbar/NoBalloonFeatureAdvertisements</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-nopinningstoretotaskbar" ID="admx-taskbar-nopinningstoretotaskbar">ADMX_Taskbar/NoPinningStoreToTaskbar</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-nopinningtodestinations" ID="admx-taskbar-nopinningtodestinations">ADMX_Taskbar/NoPinningToDestinations</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-nopinningtotaskbar" ID="admx-taskbar-nopinningtotaskbar">ADMX_Taskbar/NoPinningToTaskbar</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-noremotedestinations" ID="admx-taskbar-noremotedestinations">ADMX_Taskbar/NoRemoteDestinations</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-nosystraysystempromotion" ID="admx-taskbar-nosystraysystempromotion">ADMX_Taskbar/NoSystraySystemPromotion</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-showwindowsstoreappsontaskbar" ID="admx-taskbar-showwindowsstoreappsontaskbar">ADMX_Taskbar/ShowWindowsStoreAppsOnTaskbar</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-taskbarlockall" ID="admx-taskbar-taskbarlockall">ADMX_Taskbar/TaskbarLockAll</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-taskbarnoaddremovetoolbar" ID="admx-taskbar-taskbarnoaddremovetoolbar">ADMX_Taskbar/TaskbarNoAddRemoveToolbar</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-taskbarnodragtoolbar" ID="admx-taskbar-taskbarnodragtoolbar">ADMX_Taskbar/TaskbarNoDragToolbar</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-taskbarnomultimon" ID="admx-taskbar-taskbarnomultimon">ADMX_Taskbar/TaskbarNoMultimon</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-taskbarnonotification" ID="admx-taskbar-taskbarnonotification">ADMX_Taskbar/TaskbarNoNotification</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-taskbarnopinnedlist" ID="admx-taskbar-taskbarnopinnedlist">ADMX_Taskbar/TaskbarNoPinnedList</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-taskbarnoredock" ID="admx-taskbar-taskbarnoredock">ADMX_Taskbar/TaskbarNoRedock</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-taskbarnoresize" ID="admx-taskbar-taskbarnoresize">ADMX_Taskbar/TaskbarNoResize</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-taskbar.md#admx-taskbar-taskbarnothumbnail" ID="admx-taskbar-taskbarnothumbnail">ADMX_Taskbar/TaskbarNoThumbnail</a>
  </dd>
</dl>

### ADMX_tcpip policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-tcpip.md#admx-tcpip-6to4-router-name" id="admx-tcpip-6to4-router-name">ADMX_tcpip/6to4_Router_Name</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tcpip.md#admx-tcpip-6to4-router-name-resolution-interval" id="admx-tcpip-6to4-router-name-resolution-interval">ADMX_tcpip/6to4_Router_Name_Resolution_Interval</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tcpip.md#admx-tcpip-6to4-state" id="admx-tcpip-6to4-state">ADMX_tcpip/6to4_State</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tcpip.md#admx-tcpip-iphttps-clientstate" id="admx-tcpip-iphttps-clientstate">ADMX_tcpip/IPHTTPS_ClientState</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tcpip.md#admx-tcpip-ip-stateless-autoconfiguration-limits-state" id="admx-tcpip-ip-stateless-autoconfiguration-limits-state">ADMX_tcpip/IP_Stateless_Autoconfiguration_Limits_State</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tcpip.md#admx-tcpip-isatap-router-name" id="admx-tcpip-isatap-router-name">ADMX_tcpip/ISATAP_Router_Name</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tcpip.md#admx-tcpip-isatap-state" id="admx-tcpip-isatap-state">ADMX_tcpip/ISATAP_State</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tcpip.md#admx-tcpip-teredo-client-port" id="admx-tcpip-teredo-client-port">ADMX_tcpip/Teredo_Client_Port</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tcpip.md#admx-tcpip-teredo-default-qualified" id="admx-tcpip-teredo-default-qualified">ADMX_tcpip/Teredo_Default_Qualified</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tcpip.md#admx-tcpip-teredo-refresh-rate" id="admx-tcpip-teredo-refresh-rate">ADMX_tcpip/Teredo_Refresh_Rate</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tcpip.md#admx-tcpip-teredo-server-name" id="admx-tcpip-teredo-server-name">ADMX_tcpip/Teredo_Server_Name</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tcpip.md#admx-tcpip-teredo-state" id="admx-tcpip-teredo-state">ADMX_tcpip/Teredo_State</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tcpip.md#admx-tcpip-windows-scaling-heuristics-state" id="admx-tcpip-windows-scaling-heuristics-state">ADMX_tcpip/Windows_Scaling_Heuristics_State</a>
  </dd>
</dl>

### ADMX_Thumbnails policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-thumbnails.md#admx-thumbnails-disablethumbnails" id="admx-thumbnails-disablethumbnails">ADMX_Thumbnails/DisableThumbnails</a>
  </dd>  
  <dd>
    <a href="./policy-csp-admx-thumbnails.md#admx-thumbnails-disablethumbnailsonnetworkfolders" id="admx-thumbnails-disablethumbnailsonnetworkfolders">ADMX_Thumbnails/DisableThumbnailsOnNetworkFolders</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-thumbnails.md#admx-thumbnails-disablethumbsdbonnetworkfolders" id="admx-thumbnails-disablethumbsdbonnetworkfolders">ADMX_Thumbnails/DisableThumbsDBOnNetworkFolders</a>
  </dd>
</dl>

### ADMX_TPM policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-tpm.md#admx-tpm-blockedcommandslist-name" id="admx-tpm-blockedcommandslist-name">ADMX_TPM/BlockedCommandsList_Name</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tpm.md#admx-tpm-cleartpmifnotready-name" id="admx-tpm-cleartpmifnotready-name">ADMX_TPM/ClearTPMIfNotReady_Name</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tpm.md#admx-tpm-ignoredefaultlist-name" id="admx-tpm-ignoredefaultlist-name">ADMX_TPM/IgnoreDefaultList_Name</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tpm.md#admx-tpm-ignorelocallist-name" id="admx-tpm-ignorelocallist-name">ADMX_TPM/IgnoreLocalList_Name</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tpm.md#admx-tpm-osmanagedauth-name" id="admx-tpm-osmanagedauth-name">ADMX_TPM/OSManagedAuth_Name</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tpm.md#admx-tpm-optintodsha-name" id="admx-tpm-optintodsha-name">ADMX_TPM/OptIntoDSHA_Name</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tpm.md#admx-tpm-standarduserauthorizationfailureduration-name" id="admx-tpm-standarduserauthorizationfailureduration-name">ADMX_TPM/StandardUserAuthorizationFailureDuration_Name</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tpm.md#admx-tpm-standarduserauthorizationfailureindividualthreshold-name" id="admx-tpm-standarduserauthorizationfailureindividualthreshold-name">ADMX_TPM/StandardUserAuthorizationFailureIndividualThreshold_Name</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tpm.md#admx-tpm-standarduserauthorizationfailuretotalthreshold-name" id="admx-tpm-standarduserauthorizationfailuretotalthreshold-name">ADMX_TPM/StandardUserAuthorizationFailureTotalThreshold_Name</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-tpm.md#admx-tpm-uselegacydap-name" id="admx-tpm-uselegacydap-name">ADMX_TPM/UseLegacyDAP_Name</a>
  </dd>
</dl>

### ADMX_UserExperienceVirtualization policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-calculator" id="admx-userexperiencevirtualization-calculator">ADMX_UserExperienceVirtualization/Calculator</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-configuresyncmethod" id="admx-userexperiencevirtualization-configuresyncmethod">ADMX_UserExperienceVirtualization/ConfigureSyncMethod</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-configurevdi" id="admx-userexperiencevirtualization-configurevdi">ADMX_UserExperienceVirtualization/ConfigureVdi</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-contactitdescription" id="admx-userexperiencevirtualization-contactitdescription">ADMX_UserExperienceVirtualization/ContactITDescription</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-contactiturl" id="admx-userexperiencevirtualization-contactiturl">ADMX_UserExperienceVirtualization/ContactITUrl</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-disablewin8sync" id="admx-userexperiencevirtualization-disablewin8sync">ADMX_UserExperienceVirtualization/DisableWin8Sync</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-disablewindowsossettings" id="admx-userexperiencevirtualization-disablewindowsossettings">ADMX_UserExperienceVirtualization/DisableWindowsOSSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-enableuev" id="admx-userexperiencevirtualization-enableuev">ADMX_UserExperienceVirtualization/EnableUEV</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-finance" id="admx-userexperiencevirtualization-finance">ADMX_UserExperienceVirtualization/Finance</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-firstusenotificationenabled" id="admx-userexperiencevirtualization-firstusenotificationenabled">ADMX_UserExperienceVirtualization/FirstUseNotificationEnabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-games" id="admx-userexperiencevirtualization-games">ADMX_UserExperienceVirtualization/Games</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-internetexplorer8" id="admx-userexperiencevirtualization-internetexplorer8">ADMX_UserExperienceVirtualization/InternetExplorer8</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-internetexplorer9" id="admx-userexperiencevirtualization-internetexplorer9">ADMX_UserExperienceVirtualization/InternetExplorer9</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-internetexplorer10" id="admx-userexperiencevirtualization-internetexplorer10">ADMX_UserExperienceVirtualization/InternetExplorer10</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-internetexplorer11" id="admx-userexperiencevirtualization-internetexplorer11">ADMX_UserExperienceVirtualization/InternetExplorer11</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-internetexplorercommon" id="admx-userexperiencevirtualization-internetexplorercommon">ADMX_UserExperienceVirtualization/InternetExplorerCommon</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-maps" id="admx-userexperiencevirtualization-maps">ADMX_UserExperienceVirtualization/Maps</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-maxpackagesizeinbytes" id="admx-userexperiencevirtualization-maxpackagesizeinbytes">ADMX_UserExperienceVirtualization/MaxPackageSizeInBytes</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010access" id="admx-userexperiencevirtualization-microsoftoffice2010access">ADMX_UserExperienceVirtualization/MicrosoftOffice2010Access</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010common" id="admx-userexperiencevirtualization-microsoftoffice2010common">ADMX_UserExperienceVirtualization/MicrosoftOffice2010Common</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010excel" id="admx-userexperiencevirtualization-microsoftoffice2010excel">ADMX_UserExperienceVirtualization/MicrosoftOffice2010Excel</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010infopath" id="admx-userexperiencevirtualization-microsoftoffice2010infopath">ADMX_UserExperienceVirtualization/MicrosoftOffice2010InfoPath</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010lync" id="admx-userexperiencevirtualization-microsoftoffice2010lync">ADMX_UserExperienceVirtualization/MicrosoftOffice2010Lync</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010onenote" id="admx-userexperiencevirtualization-microsoftoffice2010onenote">ADMX_UserExperienceVirtualization/MicrosoftOffice2010OneNote</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010outlook" id="admx-userexperiencevirtualization-microsoftoffice2010outlook">ADMX_UserExperienceVirtualization/MicrosoftOffice2010Outlook</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010powerpoint" id="admx-userexperiencevirtualization-microsoftoffice2010powerpoint">ADMX_UserExperienceVirtualization/MicrosoftOffice2010PowerPoint</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010project" id="admx-userexperiencevirtualization-microsoftoffice2010project">ADMX_UserExperienceVirtualization/MicrosoftOffice2010Project</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010publisher" id="admx-userexperiencevirtualization-microsoftoffice2010publisher">ADMX_UserExperienceVirtualization/MicrosoftOffice2010Publisher</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010sharepointdesigner" id="admx-userexperiencevirtualization-microsoftoffice2010sharepointdesigner">ADMX_UserExperienceVirtualization/MicrosoftOffice2010SharePointDesigner</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010sharepointworkspace" id="admx-userexperiencevirtualization-microsoftoffice2010sharepointworkspace">ADMX_UserExperienceVirtualization/MicrosoftOffice2010SharePointWorkspace</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010visio" id="admx-userexperiencevirtualization-microsoftoffice2010visio">ADMX_UserExperienceVirtualization/MicrosoftOffice2010Visio</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2010word" id="admx-userexperiencevirtualization-microsoftoffice2010word">ADMX_UserExperienceVirtualization/MicrosoftOffice2010Word</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013access" id="admx-userexperiencevirtualization-microsoftoffice2013access">ADMX_UserExperienceVirtualization/MicrosoftOffice2013Access</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013accessbackup" id="admx-userexperiencevirtualization-microsoftoffice2013accessbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2013AccessBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013common" id="admx-userexperiencevirtualization-microsoftoffice2013common">ADMX_UserExperienceVirtualization/MicrosoftOffice2013Common</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013commonbackup" id="admx-userexperiencevirtualization-microsoftoffice2013commonbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2013CommonBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013excel" id="admx-userexperiencevirtualization-microsoftoffice2013excel">ADMX_UserExperienceVirtualization/MicrosoftOffice2013Excel</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013excelbackup" id="admx-userexperiencevirtualization-microsoftoffice2013excelbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2013ExcelBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013infopath" id="admx-userexperiencevirtualization-microsoftoffice2013infopath">ADMX_UserExperienceVirtualization/MicrosoftOffice2013InfoPath</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013infopathbackup" id="admx-userexperiencevirtualization-microsoftoffice2013infopathbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2013InfoPathBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013lync" id="admx-userexperiencevirtualization-microsoftoffice2013lync">ADMX_UserExperienceVirtualization/MicrosoftOffice2013Lync</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013lyncbackup" id="admx-userexperiencevirtualization-microsoftoffice2013lyncbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2013LyncBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013onedriveforbusiness" id="admx-userexperiencevirtualization-microsoftoffice2013onedriveforbusiness">ADMX_UserExperienceVirtualization/MicrosoftOffice2013OneDriveForBusiness</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013onenote" id="admx-userexperiencevirtualization-microsoftoffice2013onenote">ADMX_UserExperienceVirtualization/MicrosoftOffice2013OneNote</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013onenotebackup" id="admx-userexperiencevirtualization-microsoftoffice2013onenotebackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2013OneNoteBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013outlook" id="admx-userexperiencevirtualization-microsoftoffice2013outlook">ADMX_UserExperienceVirtualization/MicrosoftOffice2013Outlook</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013outlookbackup" id="admx-userexperiencevirtualization-microsoftoffice2013outlookbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2013OutlookBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013powerpoint" id="admx-userexperiencevirtualization-microsoftoffice2013powerpoint">ADMX_UserExperienceVirtualization/MicrosoftOffice2013PowerPoint</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013powerpointbackup" id="admx-userexperiencevirtualization-microsoftoffice2013powerpointbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2013PowerPointBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013project" id="admx-userexperiencevirtualization-microsoftoffice2013project">ADMX_UserExperienceVirtualization/MicrosoftOffice2013Project</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013projectbackup" id="admx-userexperiencevirtualization-microsoftoffice2013projectbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2013ProjectBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013publisher" id="admx-userexperiencevirtualization-microsoftoffice2013publisher">ADMX_UserExperienceVirtualization/MicrosoftOffice2013Publisher</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013publisherbackup" id="admx-userexperiencevirtualization-microsoftoffice2013publisherbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2013PublisherBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013sharepointdesigner" id="admx-userexperiencevirtualization-microsoftoffice2013sharepointdesigner">ADMX_UserExperienceVirtualization/MicrosoftOffice2013SharePointDesigner</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013sharepointdesignerbackup" id="admx-userexperiencevirtualization-microsoftoffice2013sharepointdesignerbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2013SharePointDesignerBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013uploadcenter" id="admx-userexperiencevirtualization-microsoftoffice2013uploadcenter">ADMX_UserExperienceVirtualization/MicrosoftOffice2013UploadCenter</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013visio" id="admx-userexperiencevirtualization-microsoftoffice2013visio">ADMX_UserExperienceVirtualization/MicrosoftOffice2013Visio</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013visiobackup" id="admx-userexperiencevirtualization-microsoftoffice2013visiobackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2013VisioBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013word" id="admx-userexperiencevirtualization-microsoftoffice2013word">ADMX_UserExperienceVirtualization/MicrosoftOffice2013Word</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2013wordbackup" id="admx-userexperiencevirtualization-microsoftoffice2013wordbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2013WordBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016access" id="admx-userexperiencevirtualization-microsoftoffice2016access">ADMX_UserExperienceVirtualization/MicrosoftOffice2016Access</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016accessbackup" id="admx-userexperiencevirtualization-microsoftoffice2016accessbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2016AccessBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016common" id="admx-userexperiencevirtualization-microsoftoffice2016common">ADMX_UserExperienceVirtualization/MicrosoftOffice2016Common</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016commonbackup" id="admx-userexperiencevirtualization-microsoftoffice2016commonbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2016CommonBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016excel" id="admx-userexperiencevirtualization-microsoftoffice2016excel">ADMX_UserExperienceVirtualization/MicrosoftOffice2016Excel</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016excelbackup" id="admx-userexperiencevirtualization-microsoftoffice2016excelbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2016ExcelBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016lync" id="admx-userexperiencevirtualization-microsoftoffice2016lync">ADMX_UserExperienceVirtualization/MicrosoftOffice2016Lync</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016lyncbackup" id="admx-userexperiencevirtualization-microsoftoffice2016lyncbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2016LyncBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016onedriveforbusiness" id="admx-userexperiencevirtualization-microsoftoffice2016onedriveforbusiness">ADMX_UserExperienceVirtualization/MicrosoftOffice2016OneDriveForBusiness</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016onenote" id="admx-userexperiencevirtualization-microsoftoffice2016onenote">ADMX_UserExperienceVirtualization/MicrosoftOffice2016OneNote</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016onenotebackup" id="admx-userexperiencevirtualization-microsoftoffice2016onenotebackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2016OneNoteBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016outlook" id="admx-userexperiencevirtualization-microsoftoffice2016outlook">ADMX_UserExperienceVirtualization/MicrosoftOffice2016Outlook</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016outlookbackup" id="admx-userexperiencevirtualization-microsoftoffice2016outlookbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2016OutlookBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016powerpoint" id="admx-userexperiencevirtualization-microsoftoffice2016powerpoint">ADMX_UserExperienceVirtualization/MicrosoftOffice2016PowerPoint</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016powerpointbackup" id="admx-userexperiencevirtualization-microsoftoffice2016powerpointbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2016PowerPointBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016project" id="admx-userexperiencevirtualization-microsoftoffice2016project">ADMX_UserExperienceVirtualization/MicrosoftOffice2016Project</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016projectbackup" id="admx-userexperiencevirtualization-microsoftoffice2016projectbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2016ProjectBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016publisher" id="admx-userexperiencevirtualization-microsoftoffice2016publisher">ADMX_UserExperienceVirtualization/MicrosoftOffice2016Publisher</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016publisherbackup" id="admx-userexperiencevirtualization-microsoftoffice2016publisherbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2016PublisherBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016uploadcenter" id="admx-userexperiencevirtualization-microsoftoffice2016uploadcenter">ADMX_UserExperienceVirtualization/MicrosoftOffice2016UploadCenter</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016visio" id="admx-userexperiencevirtualization-microsoftoffice2016visio">ADMX_UserExperienceVirtualization/MicrosoftOffice2016Visio</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016visiobackup" id="admx-userexperiencevirtualization-microsoftoffice2016visiobackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2016VisioBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016word" id="admx-userexperiencevirtualization-microsoftoffice2016word">ADMX_UserExperienceVirtualization/MicrosoftOffice2016Word</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice2016wordbackup" id="admx-userexperiencevirtualization-microsoftoffice2016wordbackup">ADMX_UserExperienceVirtualization/MicrosoftOffice2016WordBackup</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365access2013" id="admx-userexperiencevirtualization-microsoftoffice365access2013">ADMX_UserExperienceVirtualization/MicrosoftOffice365Access2013</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365access2016" id="admx-userexperiencevirtualization-microsoftoffice365access2016">ADMX_UserExperienceVirtualization/MicrosoftOffice365Access2016</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365common2013" id="admx-userexperiencevirtualization-microsoftoffice365common2013">ADMX_UserExperienceVirtualization/MicrosoftOffice365Common2013</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365common2016" id="admx-userexperiencevirtualization-microsoftoffice365common2016">ADMX_UserExperienceVirtualization/MicrosoftOffice365Common2016</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365excel2013" id="admx-userexperiencevirtualization-microsoftoffice365excel2013">ADMX_UserExperienceVirtualization/MicrosoftOffice365Excel2013</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365excel2016" id="admx-userexperiencevirtualization-microsoftoffice365excel2016">ADMX_UserExperienceVirtualization/MicrosoftOffice365Excel2016</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365infopath2013" id="admx-userexperiencevirtualization-microsoftoffice365infopath2013">ADMX_UserExperienceVirtualization/MicrosoftOffice365InfoPath2013</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365lync2013" id="admx-userexperiencevirtualization-microsoftoffice365lync2013">ADMX_UserExperienceVirtualization/MicrosoftOffice365Lync2013</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365lync2016" id="admx-userexperiencevirtualization-microsoftoffice365lync2016">ADMX_UserExperienceVirtualization/MicrosoftOffice365Lync2016</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365onenote2013" id="admx-userexperiencevirtualization-microsoftoffice365onenote2013">ADMX_UserExperienceVirtualization/MicrosoftOffice365OneNote2013</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365onenote2016" id="admx-userexperiencevirtualization-microsoftoffice365onenote2016">ADMX_UserExperienceVirtualization/MicrosoftOffice365OneNote2016</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365outlook2013" id="admx-userexperiencevirtualization-microsoftoffice365outlook2013">ADMX_UserExperienceVirtualization/MicrosoftOffice365Outlook2013</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365outlook2016" id="admx-userexperiencevirtualization-microsoftoffice365outlook2016">ADMX_UserExperienceVirtualization/MicrosoftOffice365Outlook2016</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365powerpoint2013" id="admx-userexperiencevirtualization-microsoftoffice365powerpoint2013">ADMX_UserExperienceVirtualization/MicrosoftOffice365PowerPoint2013</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365powerpoint2016" id="admx-userexperiencevirtualization-microsoftoffice365powerpoint2016">ADMX_UserExperienceVirtualization/MicrosoftOffice365PowerPoint2016</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365project2013" id="admx-userexperiencevirtualization-microsoftoffice365project2013">ADMX_UserExperienceVirtualization/MicrosoftOffice365Project2013</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365project2016" id="admx-userexperiencevirtualization-microsoftoffice365project2016">ADMX_UserExperienceVirtualization/MicrosoftOffice365Project2016</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365publisher2013" id="admx-userexperiencevirtualization-microsoftoffice365publisher2013">ADMX_UserExperienceVirtualization/MicrosoftOffice365Publisher2013</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365publisher2016" id="admx-userexperiencevirtualization-microsoftoffice365publisher2016">ADMX_UserExperienceVirtualization/MicrosoftOffice365Publisher2016</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365sharepointdesigner2013" id="admx-userexperiencevirtualization-microsoftoffice365sharepointdesigner2013">ADMX_UserExperienceVirtualization/MicrosoftOffice365SharePointDesigner2013</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365visio2013" id="admx-userexperiencevirtualization-microsoftoffice365visio2013">ADMX_UserExperienceVirtualization/MicrosoftOffice365Visio2013</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365visio2016" id="admx-userexperiencevirtualization-microsoftoffice365visio2016">ADMX_UserExperienceVirtualization/MicrosoftOffice365Visio2016</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365word2013" id="admx-userexperiencevirtualization-microsoftoffice365word2013">ADMX_UserExperienceVirtualization/MicrosoftOffice365Word2013</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-microsoftoffice365word2016" id="admx-userexperiencevirtualization-microsoftoffice365word2016">ADMX_UserExperienceVirtualization/MicrosoftOffice365Word2016</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-music" id="admx-userexperiencevirtualization-music">ADMX_UserExperienceVirtualization/Music</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-news" id="admx-userexperiencevirtualization-news">ADMX_UserExperienceVirtualization/News</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-notepad" id="admx-userexperiencevirtualization-notepad">ADMX_UserExperienceVirtualization/Notepad</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-reader" id="admx-userexperiencevirtualization-reader">ADMX_UserExperienceVirtualization/Reader</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-repositorytimeout" id="admx-userexperiencevirtualization-repositorytimeout">ADMX_UserExperienceVirtualization/RepositoryTimeout</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-settingsstoragepath" id="admx-userexperiencevirtualization-settingsstoragepath">ADMX_UserExperienceVirtualization/SettingsStoragePath</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-settingstemplatecatalogpath" id="admx-userexperiencevirtualization-settingstemplatecatalogpath">ADMX_UserExperienceVirtualization/SettingsTemplateCatalogPath</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-sports" id="admx-userexperiencevirtualization-sports">ADMX_UserExperienceVirtualization/Sports</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-syncenabled" id="admx-userexperiencevirtualization-syncenabled">ADMX_UserExperienceVirtualization/SyncEnabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-syncovermeterednetwork" id="admx-userexperiencevirtualization-syncovermeterednetwork">ADMX_UserExperienceVirtualization/SyncOverMeteredNetwork</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-syncovermeterednetworkwhenroaming" id="admx-userexperiencevirtualization-syncovermeterednetworkwhenroaming">ADMX_UserExperienceVirtualization/SyncOverMeteredNetworkWhenRoaming</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-syncproviderpingenabled" id="admx-userexperiencevirtualization-syncproviderpingenabled">ADMX_UserExperienceVirtualization/SyncProviderPingEnabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-syncunlistedwindows8apps" id="admx-userexperiencevirtualization-syncunlistedwindows8apps">ADMX_UserExperienceVirtualization/SyncUnlistedWindows8Apps</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-travel" id="admx-userexperiencevirtualization-travel">ADMX_UserExperienceVirtualization/Travel</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-trayiconenabled" id="admx-userexperiencevirtualization-trayiconenabled">ADMX_UserExperienceVirtualization/TrayIconEnabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-video" id="admx-userexperiencevirtualization-video">ADMX_UserExperienceVirtualization/Video</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-weather" id="admx-userexperiencevirtualization-weather">ADMX_UserExperienceVirtualization/Weather</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userexperiencevirtualization.md#admx-userexperiencevirtualization-wordpad" id="admx-userexperiencevirtualization-wordpad">ADMX_UserExperienceVirtualization/Wordpad</a>
  </dd>
</dl>

### ADMX_UserProfiles policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-userprofiles.md#admx-userprofiles-cleanupprofiles" id="admx-userprofiles-cleanupprofiles">ADMX_UserProfiles/CleanupProfiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userprofiles.md#admx-userprofiles-dontforceunloadhive" id="admx-userprofiles-dontforceunloadhive">ADMX_UserProfiles/DontForceUnloadHive</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userprofiles.md#admx-userprofiles-leaveappmgmtdata" id="admx-userprofiles-leaveappmgmtdata">ADMX_UserProfiles/LeaveAppMgmtData</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userprofiles.md#admx-userprofiles-limitsize" id="admx-userprofiles-limitsize">ADMX_UserProfiles/LimitSize</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userprofiles.md#admx-userprofiles-profileerroraction" id="admx-userprofiles-profileerroraction">ADMX_UserProfiles/ProfileErrorAction</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userprofiles.md#admx-userprofiles-slowlinktimeout" id="admx-userprofiles-slowlinktimeout">ADMX_UserProfiles/SlowLinkTimeOut</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userprofiles.md#admx-userprofiles-user-home" id="admx-userprofiles-user-home">ADMX_UserProfiles/USER_HOME</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-userprofiles.md#admx-userprofiles-userinfoaccessaction" id="admx-userprofiles-userinfoaccessaction">ADMX_UserProfiles/UserInfoAccessAction</a>
  </dd>
</dl>

### ADMX_W32Time policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-w32time.md#admx-w32time-policy-config" id="admx-w32time-policy-config">ADMX_W32Time/W32TIME_POLICY_CONFIG</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-w32time.md#admx-w32time-policy-configure-ntpclient" id="admx-w32time-policy-configure-ntpclient">ADMX_W32Time/W32TIME_POLICY_CONFIGURE_NTPCLIENT</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-w32time.md#admx-w32time-policy-enable-ntpclient" id="admx-w32time-policy-enable-ntpclient">ADMX_W32Time/W32TIME_POLICY_ENABLE_NTPCLIENT</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-w32time.md#admx-w32time-policy-enable-ntpserver" id="admx-w32time-policy-enable-ntpserver">ADMX_W32Time/W32TIME_POLICY_ENABLE_NTPSERVER</a>
  </dd>
</dl>

### ADMX_WCM policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-wcm.md#admx-wcm-wcm-disablepowermanagement" id="admx-wcm-wcm-disablepowermanagement">ADMX_WCM/WCM_DisablePowerManagement</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-wcm.md#admx-wcm-wcm-enablesoftdisconnect" id="admx-wcm-wcm-enablesoftdisconnect">ADMX_WCM/WCM_EnableSoftDisconnect</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-wcm.md#admx-wcm-wcm-minimizeconnections" id="admx-wcm-wcm-minimizeconnections">ADMX_WCM/WCM_MinimizeConnections</a>
  </dd>
</dl>

### ADMX_WinCal policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-wincal.md#admx-wincal-turnoffwincal-1" id="admx-wincal-turnoffwincal-1">ADMX_WinCal/TurnOffWinCal_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-wincal.md#admx-wincal-turnoffwincal-2" id="admx-wincal-turnoffwincal-2">ADMX_WinCal/TurnOffWinCal_2</a>
  </dd>
</dl>

### ADMX_WindowsAnytimeUpgrade policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-windowsanytimeupgrade.md#admx-windowsanytimeupgrade-disabled" id="admx-windowsanytimeupgrade-disabled">ADMX_WindowsAnytimeUpgrade/Disabled</a>
  </dd>
</dl>

### ADMX_WindowsConnectNow policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-windowsconnectnow.md#admx-windowsconnectnow-wcn-disablewcnui-1" id="admx-windowsconnectnow-wcn-disablewcnui-1">ADMX_WindowsConnectNow/WCN_DisableWcnUi_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsconnectnow.md#admx-windowsconnectnow-wcn-disablewcnui-2" id="admx-windowsconnectnow-wcn-disablewcnui-2">ADMX_WindowsConnectNow/WCN_DisableWcnUi_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsconnectnow.md#admx-windowsconnectnow-wcn-enableregistrar" id="admx-windowsconnectnow-wcn-enableregistrar">ADMX_WindowsConnectNow/WCN_EnableRegistrar</a>
  </dd>
</dl>


### ADMX_WindowsExplorer policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-checksamesourceandtargetforfranddfs" id="admx-windowsexplorer-checksamesourceandtargetforfranddfs">ADMX_WindowsExplorer/CheckSameSourceAndTargetForFRAndDFS</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-classicshell" id="admx-windowsexplorer-classicshell">ADMX_WindowsExplorer/ClassicShell</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-confirmfiledelete" id="admx-windowsexplorer-confirmfiledelete">ADMX_WindowsExplorer/ConfirmFileDelete</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-defaultlibrarieslocation" id="admx-windowsexplorer-defaultlibrarieslocation">ADMX_WindowsExplorer/DefaultLibrariesLocation</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-disablebinddirectlytopropertysetstorage" id="admx-windowsexplorer-disablebinddirectlytopropertysetstorage">ADMX_WindowsExplorer/DisableBindDirectlyToPropertySetStorage</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-disableindexedlibraryexperience" id="admx-windowsexplorer-disableindexedlibraryexperience">ADMX_WindowsExplorer/DisableIndexedLibraryExperience</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-disableknownfolders" id="admx-windowsexplorer-disableknownfolders">ADMX_WindowsExplorer/DisableKnownFolders</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-disablesearchboxsuggestions" id="admx-windowsexplorer-disablesearchboxsuggestions">ADMX_WindowsExplorer/DisableSearchBoxSuggestions</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-enableshellshortcuticonremotepath" id="admx-windowsexplorer-enableshellshortcuticonremotepath">ADMX_WindowsExplorer/EnableShellShortcutIconRemotePath</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-enablesmartscreen" id="admx-windowsexplorer-enablesmartscreen">ADMX_WindowsExplorer/EnableSmartScreen</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-enforceshellextensionsecurity" id="admx-windowsexplorer-enforceshellextensionsecurity">ADMX_WindowsExplorer/EnforceShellExtensionSecurity</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-explorerribbonstartsminimized" id="admx-windowsexplorer-explorerribbonstartsminimized">ADMX_WindowsExplorer/ExplorerRibbonStartsMinimized</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-hidecontentviewmodesnippets" id="admx-windowsexplorer-hidecontentviewmodesnippets">ADMX_WindowsExplorer/HideContentViewModeSnippets</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchpreview-internet" id="admx-windowsexplorer-iz-policy-opensearchpreview-internet">ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_Internet</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchpreview-internetlockdown" id="admx-windowsexplorer-iz-policy-opensearchpreview-internetlockdown">ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_InternetLockdown</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchpreview-intranet" id="admx-windowsexplorer-iz-policy-opensearchpreview-intranet">ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_Intranet</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchpreview-intranetlockdown" id="admx-windowsexplorer-iz-policy-opensearchpreview-intranetlockdown">ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_IntranetLockdown</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchpreview-localmachine" id="admx-windowsexplorer-iz-policy-opensearchpreview-localmachine">ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_LocalMachine</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchpreview-localmachinelockdown" id="admx-windowsexplorer-iz-policy-opensearchpreview-localmachinelockdown">ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_LocalMachineLockdown</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchpreview-restricted" id="admx-windowsexplorer-iz-policy-opensearchpreview-restricted">ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_Restricted</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchpreview-restrictedlockdown" id="admx-windowsexplorer-iz-policy-opensearchpreview-restrictedlockdown">ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_RestrictedLockdown</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchpreview-trusted" id="admx-windowsexplorer-iz-policy-opensearchpreview-trusted">ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_Trusted</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchpreview-trustedlockdown" id="admx-windowsexplorer-iz-policy-opensearchpreview-trustedlockdown">ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_TrustedLockdown</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchquery-internet" id="admx-windowsexplorer-iz-policy-opensearchquery-internet">ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_Internet</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchquery-internetlockdown" id="admx-windowsexplorer-iz-policy-opensearchquery-internetlockdown">ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_InternetLockdown</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchquery-intranet" id="admx-windowsexplorer-iz-policy-opensearchquery-intranet">ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_Intranet</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchquery-intranetlockdown" id="admx-windowsexplorer-iz-policy-opensearchquery-intranetlockdown">ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_IntranetLockdown</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchquery-localmachine" id="admx-windowsexplorer-iz-policy-opensearchquery-localmachine">ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_LocalMachine</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchquery-localmachinelockdown" id="admx-windowsexplorer-iz-policy-opensearchquery-localmachinelockdown">ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_LocalMachineLockdown</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchquery-restricted" id="admx-windowsexplorer-iz-policy-opensearchquery-restricted">ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_Restricted</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchquery-restrictedlockdown" id="admx-windowsexplorer-iz-policy-opensearchquery-restrictedlockdown">ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_RestrictedLockdown</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchquery-trusted" id="admx-windowsexplorer-iz-policy-opensearchquery-trusted">ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_Trusted</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-iz-policy-opensearchquery-trustedlockdown" id="admx-windowsexplorer-iz-policy-opensearchquery-trustedlockdown">ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_TrustedLockdown</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-linkresolveignorelinkinfo" id="admx-windowsexplorer-linkresolveignorelinkinfo">ADMX_WindowsExplorer/LinkResolveIgnoreLinkInfo</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-maxrecentdocs" id="admx-windowsexplorer-maxrecentdocs">ADMX_WindowsExplorer/MaxRecentDocs</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nobackbutton" id="admx-windowsexplorer-nobackbutton">ADMX_WindowsExplorer/NoBackButton</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nocdburning" id="admx-windowsexplorer-nocdburning">ADMX_WindowsExplorer/NoCDBurning</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nocachethumbnailpictures" id="admx-windowsexplorer-nocachethumbnailpictures">ADMX_WindowsExplorer/NoCacheThumbNailPictures</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nochangeanimation" id="admx-windowsexplorer-nochangeanimation">ADMX_WindowsExplorer/NoChangeAnimation</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nochangekeyboardnavigationindicators" id="admx-windowsexplorer-nochangekeyboardnavigationindicators">ADMX_WindowsExplorer/NoChangeKeyboardNavigationIndicators</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nodfstab" id="admx-windowsexplorer-nodfstab">ADMX_WindowsExplorer/NoDFSTab</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nodrives" id="admx-windowsexplorer-nodrives">ADMX_WindowsExplorer/NoDrives</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-noentirenetwork" id="admx-windowsexplorer-noentirenetwork">ADMX_WindowsExplorer/NoEntireNetwork</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nofilemru" id="admx-windowsexplorer-nofilemru">ADMX_WindowsExplorer/NoFileMRU</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nofilemenu" id="admx-windowsexplorer-nofilemenu">ADMX_WindowsExplorer/NoFileMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nofolderoptions" id="admx-windowsexplorer-nofolderoptions">ADMX_WindowsExplorer/NoFolderOptions</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nohardwaretab" id="admx-windowsexplorer-nohardwaretab">ADMX_WindowsExplorer/NoHardwareTab</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nomanagemycomputerverb" id="admx-windowsexplorer-nomanagemycomputerverb">ADMX_WindowsExplorer/NoManageMyComputerVerb</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nomycomputershareddocuments" id="admx-windowsexplorer-nomycomputershareddocuments">ADMX_WindowsExplorer/NoMyComputerSharedDocuments</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nonetconnectdisconnect" id="admx-windowsexplorer-nonetconnectdisconnect">ADMX_WindowsExplorer/NoNetConnectDisconnect</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nonewappalert" id="admx-windowsexplorer-nonewappalert">ADMX_WindowsExplorer/NoNewAppAlert</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-noplacesbar" id="admx-windowsexplorer-noplacesbar">ADMX_WindowsExplorer/NoPlacesBar</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-norecyclefiles" id="admx-windowsexplorer-norecyclefiles">ADMX_WindowsExplorer/NoRecycleFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-norunasinstallprompt" id="admx-windowsexplorer-norunasinstallprompt">ADMX_WindowsExplorer/NoRunAsInstallPrompt</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nosearchinternettryharderbutton" id="admx-windowsexplorer-nosearchinternettryharderbutton">ADMX_WindowsExplorer/NoSearchInternetTryHarderButton</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nosecuritytab" id="admx-windowsexplorer-nosecuritytab">ADMX_WindowsExplorer/NoSecurityTab</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-noshellsearchbutton" id="admx-windowsexplorer-noshellsearchbutton">ADMX_WindowsExplorer/NoShellSearchButton</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nostrcmplogical" id="admx-windowsexplorer-nostrcmplogical">ADMX_WindowsExplorer/NoStrCmpLogical</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-noviewcontextmenu" id="admx-windowsexplorer-noviewcontextmenu">ADMX_WindowsExplorer/NoViewContextMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-noviewondrive" id="admx-windowsexplorer-noviewondrive">ADMX_WindowsExplorer/NoViewOnDrive</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-nowindowshotkeys" id="admx-windowsexplorer-nowindowshotkeys">ADMX_WindowsExplorer/NoWindowsHotKeys</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-noworkgroupcontents" id="admx-windowsexplorer-noworkgroupcontents">ADMX_WindowsExplorer/NoWorkgroupContents</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-placesbar" id="admx-windowsexplorer-placesbar">ADMX_WindowsExplorer/PlacesBar</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-promptrunasinstallnetpath" id="admx-windowsexplorer-promptrunasinstallnetpath">ADMX_WindowsExplorer/PromptRunasInstallNetPath</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-recyclebinsize" id="admx-windowsexplorer-recyclebinsize">ADMX_WindowsExplorer/RecycleBinSize</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-shellprotocolprotectedmodetitle-1" id="admx-windowsexplorer-shellprotocolprotectedmodetitle-1">ADMX_WindowsExplorer/ShellProtocolProtectedModeTitle_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-shellprotocolprotectedmodetitle-2" id="admx-windowsexplorer-shellprotocolprotectedmodetitle-2">ADMX_WindowsExplorer/ShellProtocolProtectedModeTitle_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-showhibernateoption" id="admx-windowsexplorer-showhibernateoption">ADMX_WindowsExplorer/ShowHibernateOption</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-showsleepoption" id="admx-windowsexplorer-showsleepoption">ADMX_WindowsExplorer/ShowSleepOption</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-tryharderpinnedlibrary" id="admx-windowsexplorer-tryharderpinnedlibrary">ADMX_WindowsExplorer/TryHarderPinnedLibrary</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsexplorer.md#admx-windowsexplorer-tryharderpinnedopensearch" id="admx-windowsexplorer-tryharderpinnedopensearch">ADMX_WindowsExplorer/TryHarderPinnedOpenSearch</a>
  </dd>
</dl>

### ADMX_WindowsMediaDRM policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-windowsmediadrm.md#admx-windowsmediadrm-disableonline" id="admx-windowsmediadrm-disableonline">ADMX_WindowsMediaDRM/DisableOnline</a>
  </dd>
</dl>

### ADMX_WindowsMediaPlayer policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-configurehttpproxysettings" id="admx-windowsmediaplayer-configurehttpproxysettings">ADMX_WindowsMediaPlayer/ConfigureHTTPProxySettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-configuremmsproxysettings" id="admx-windowsmediaplayer-configuremmsproxysettings">ADMX_WindowsMediaPlayer/ConfigureMMSProxySettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-configurertspproxysettings" id="admx-windowsmediaplayer-configurertspproxysettings">ADMX_WindowsMediaPlayer/ConfigureRTSPProxySettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-disableautoupdate" id="admx-windowsmediaplayer-disableautoupdate">ADMX_WindowsMediaPlayer/DisableAutoUpdate</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-disablenetworksettings" id="admx-windowsmediaplayer-disablenetworksettings">ADMX_WindowsMediaPlayer/DisableNetworkSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-disablesetupfirstuseconfiguration" id="admx-windowsmediaplayer-disablesetupfirstuseconfiguration">ADMX_WindowsMediaPlayer/DisableSetupFirstUseConfiguration</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-donotshowanchor" id="admx-windowsmediaplayer-donotshowanchor">ADMX_WindowsMediaPlayer/DoNotShowAnchor</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-dontuseframeinterpolation" id="admx-windowsmediaplayer-dontuseframeinterpolation">ADMX_WindowsMediaPlayer/DontUseFrameInterpolation</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-enablescreensaver" id="admx-windowsmediaplayer-enablescreensaver">ADMX_WindowsMediaPlayer/EnableScreenSaver</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-hideprivacytab" id="admx-windowsmediaplayer-hideprivacytab">ADMX_WindowsMediaPlayer/HidePrivacyTab</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-hidesecuritytab" id="admx-windowsmediaplayer-hidesecuritytab">ADMX_WindowsMediaPlayer/HideSecurityTab</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-networkbuffering" id="admx-windowsmediaplayer-networkbuffering">ADMX_WindowsMediaPlayer/NetworkBuffering</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-policycodecupdate" id="admx-windowsmediaplayer-policycodecupdate">ADMX_WindowsMediaPlayer/PolicyCodecUpdate</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-preventcddvdmetadataretrieval" id="admx-windowsmediaplayer-preventcddvdmetadataretrieval">ADMX_WindowsMediaPlayer/PreventCDDVDMetadataRetrieval</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-preventlibrarysharing" id="admx-windowsmediaplayer-preventlibrarysharing">ADMX_WindowsMediaPlayer/PreventLibrarySharing</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-preventmusicfilemetadataretrieval" id="admx-windowsmediaplayer-preventmusicfilemetadataretrieval">ADMX_WindowsMediaPlayer/PreventMusicFileMetadataRetrieval</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-preventquicklaunchshortcut" id="admx-windowsmediaplayer-preventquicklaunchshortcut">ADMX_WindowsMediaPlayer/PreventQuickLaunchShortcut</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-preventradiopresetsretrieval" id="admx-windowsmediaplayer-preventradiopresetsretrieval">ADMX_WindowsMediaPlayer/PreventRadioPresetsRetrieval</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-preventwmpdesktopshortcut" id="admx-windowsmediaplayer-preventwmpdesktopshortcut">ADMX_WindowsMediaPlayer/PreventWMPDeskTopShortcut</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-skinlockdown" id="admx-windowsmediaplayer-skinlockdown">ADMX_WindowsMediaPlayer/SkinLockDown</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsmediaplayer.md#admx-windowsmediaplayer-windowsstreamingmediaprotocols" id="admx-windowsmediaplayer-windowsstreamingmediaprotocols">ADMX_WindowsMediaPlayer/WindowsStreamingMediaProtocols</a>
  </dd>
</dl>

### ADMX_WindowsRemoteManagement policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-windowsremotemanagement.md#admx-windowsremotemanagement-disallowkerberos-1" id="admx-windowsremotemanagement-disallowkerberos-1">ADMX_WindowsRemoteManagement/DisallowKerberos_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsremotemanagement.md#admx-windowsremotemanagement-disallowkerberos-2" id="admx-windowsremotemanagement-disallowkerberos-2">ADMX_WindowsRemoteManagement/DisallowKerberos_2</a>
  </dd>
</dl>

### ADMX_WindowsStore policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-windowsstore.md#admx-windowsstore-disableautodownloadwin8" id="admx-windowsstore-disableautodownloadwin8">ADMX_WindowsStore/DisableAutoDownloadWin8</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsstore.md#admx-windowsstore-disableosupgrade-1" id="admx-windowsstore-disableosupgrade-1">ADMX_WindowsStore/DisableOSUpgrade_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsstore.md#admx-windowsstore-disableosupgrade-2" id="admx-windowsstore-disableosupgrade-2">ADMX_WindowsStore/DisableOSUpgrade_2</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsstore.md#admx-windowsstore-removewindowsstore-1" id="admx-windowsstore-removewindowsstore-1">ADMX_WindowsStore/RemoveWindowsStore_1</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-windowsstore.md#admx-windowsstore-removewindowsstore-2" id="admx-windowsstore-removewindowsstore-2">ADMX_WindowsStore/RemoveWindowsStore_2</a>
  </dd>
</dl>

### ADMX_WinInit policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-wininit.md#admx-wininit-disablenamedpipeshutdownpolicydescription" id="admx-wininit-disablenamedpipeshutdownpolicydescription">ADMX_WinInit/DisableNamedPipeShutdownPolicyDescription</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-wininit.md#admx-wininit-hiberboot" id="admx-wininit-hiberboot">ADMX_WinInit/Hiberboot</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-wininit.md#admx-wininit-shutdowntimeouthungsessionsdescription" id="admx-wininit-shutdowntimeouthungsessionsdescription">ADMX_WinInit/ShutdownTimeoutHungSessionsDescription</a>
  </dd>
</dl>

### ADMX_WinLogon policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-winlogon.md#admx-winlogon-customshell" id="admx-winlogon-customshell">ADMX_WinLogon/CustomShell</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-winlogon.md#admx-winlogon-displaylastlogoninfodescription" id="admx-winlogon-displaylastlogoninfodescription">ADMX_WinLogon/DisplayLastLogonInfoDescription</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-winlogon.md#admx-winlogon-logonhoursnotificationpolicydescription" id="admx-winlogon-logonhoursnotificationpolicydescription">ADMX_WinLogon/LogonHoursNotificationPolicyDescription</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-winlogon.md#admx-winlogon-logonhourspolicydescription" id="admx-winlogon-logonhourspolicydescription">ADMX_WinLogon/LogonHoursPolicyDescription</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-winlogon.md#admx-winlogon-reportcachedlogonpolicydescription" id="admx-winlogon-reportcachedlogonpolicydescription">ADMX_WinLogon/ReportCachedLogonPolicyDescription</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-winlogon.md#admx-winlogon-softwaresasgeneration" id="admx-winlogon-softwaresasgeneration">ADMX_WinLogon/SoftwareSASGeneration</a>
  </dd>
</dl>

### ADMX_wlansvc policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-wlansvc.md#admx-wlansvc-setcost" id="admx-wlansvc-setcost">ADMX_wlansvc/SetCost</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-wlansvc.md#admx-wlansvc-setpinenforced" id="admx-wlansvc-setpinenforced">ADMX_wlansvc/SetPINEnforced</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-wlansvc.md#admx-wlansvc-setpinpreferred" id="admx-wlansvc-setpinpreferred">ADMX_wlansvc/SetPINPreferred</a>
  </dd>
</dl>

### ADMX_WPN policies  

<dl>
  <dd>
    <a href="./policy-csp-admx-wpn.md#admx-wpn-nocallsduringquiethours" id="admx-wpn-nocallsduringquiethours">ADMX_WPN/NoCallsDuringQuietHours</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-wpn.md#admx-wpn-nolockscreentoastnotification" id="admx-wpn-nolockscreentoastnotification">ADMX_WPN/NoLockScreenToastNotification</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-wpn.md#admx-wpn-noquiethours" id="admx-wpn-noquiethours">ADMX_WPN/NoQuietHours</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-wpn.md#admx-wpn-notoastnotification" id="admx-wpn-notoastnotification">ADMX_WPN/NoToastNotification</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-wpn.md#admx-wpn-quiethoursdailybeginminute" id="admx-wpn-quiethoursdailybeginminute">ADMX_WPN/QuietHoursDailyBeginMinute</a>
  </dd>
  <dd>
    <a href="./policy-csp-admx-wpn.md#admx-wpn-quiethoursdailyendminute" id="admx-wpn-quiethoursdailyendminute">ADMX_WPN/QuietHoursDailyEndMinute</a>
  </dd>
</dl>

### ApplicationDefaults policies

<dl>
  <dd>
    <a href="./policy-csp-applicationdefaults.md#applicationdefaults-defaultassociationsconfiguration" id="applicationdefaults-defaultassociationsconfiguration">ApplicationDefaults/DefaultAssociationsConfiguration</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationdefaults.md#applicationdefaults-enableappurihandlers" id="applicationdefaults-enableappurihandlers">ApplicationDefaults/EnableAppUriHandlers</a>
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
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-blocknonadminuserinstall"id="applicationmanagement-blocknonadminuserinstall">ApplicationManagement/BlockNonAdminUserInstall</a> 
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-disablestoreoriginatedapps" id="applicationmanagement-disablestoreoriginatedapps">ApplicationManagement/DisableStoreOriginatedApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-launchappafterlogon" id="applicationmanagement-launchappafterlogon">ApplicationManagement/LaunchAppAfterLogOn</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-msiallowusercontroloverinstall" id="applicationmanagement-msiallowusercontroloverinstall">ApplicationManagement/MSIAllowUserControlOverInstall</a>
  </dd>
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-msialwaysinstallwithelevatedprivileges" id="applicationmanagement-msialwaysinstallwithelevatedprivileges">ApplicationManagement/MSIAlwaysInstallWithElevatedPrivileges</a>
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
  <dd>
    <a href="./policy-csp-applicationmanagement.md#applicationmanagement-scheduleforcerestartforupdatefailures" id="applicationmanagement-scheduleforcerestartforupdatefailures">ApplicationManagement/ScheduleForceRestartForUpdateFailures</a>
  </dd>
</dl>

### AppRuntime policies

<dl>
  <dd>
    <a href="./policy-csp-appruntime.md#appruntime-allowmicrosoftaccountstobeoptional" id="appruntime-allowmicrosoftaccountstobeoptional">AppRuntime/AllowMicrosoftAccountsToBeOptional</a>
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
    <a href="./policy-csp-appvirtualization.md#appvirtualization-streamingallowcertificatefilterforclient-ssl" id="appvirtualization-streamingallowcertificatefilterforclient-ssl">AppVirtualization/StreamingAllowCertificateFilterForClient_SSL</a>
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

### Audit policies  

<dl>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogonlogoff-auditaccountlockout"id="audit-accountlogonlogoff-auditaccountlockout">Audit/AccountLogonLogoff_AuditAccountLockout</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogonlogoff-auditgroupmembership"id="audit-accountlogonlogoff-auditgroupmembership">Audit/AccountLogonLogoff_AuditGroupMembership</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogonlogoff-auditipsecextendedmode"id="audit-accountlogonlogoff-auditipsecextendedmode">Audit/AccountLogonLogoff_AuditIPsecExtendedMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogonlogoff-auditipsecmainmode"id="audit-accountlogonlogoff-auditipsecmainmode">Audit/AccountLogonLogoff_AuditIPsecMainMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogonlogoff-auditipsecquickmode"id="audit-accountlogonlogoff-auditipsecquickmode">Audit/AccountLogonLogoff_AuditIPsecQuickMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogonlogoff-auditlogoff"id="audit-accountlogonlogoff-auditlogoff">Audit/AccountLogonLogoff_AuditLogoff</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogonlogoff-auditlogon"id="audit-accountlogonlogoff-auditlogon">Audit/AccountLogonLogoff_AuditLogon</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogonlogoff-auditnetworkpolicyserver"id="audit-accountlogonlogoff-auditnetworkpolicyserver">Audit/AccountLogonLogoff_AuditNetworkPolicyServer</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogonlogoff-auditotherlogonlogoffevents"id="audit-accountlogonlogoff-auditotherlogonlogoffevents">Audit/AccountLogonLogoff_AuditOtherLogonLogoffEvents</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogonlogoff-auditspeciallogon"id="audit-accountlogonlogoff-auditspeciallogon">Audit/AccountLogonLogoff_AuditSpecialLogon</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogonlogoff-audituserdeviceclaims"id="audit-accountlogonlogoff-audituserdeviceclaims">Audit/AccountLogonLogoff_AuditUserDeviceClaims</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogon-auditcredentialvalidation"id="audit-accountlogon-auditcredentialvalidation">Audit/AccountLogon_AuditCredentialValidation</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogon-auditkerberosauthenticationservice"id="audit-accountlogon-auditkerberosauthenticationservice">Audit/AccountLogon_AuditKerberosAuthenticationService</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogon-auditkerberosserviceticketoperations"id="audit-accountlogon-auditkerberosserviceticketoperations">Audit/AccountLogon_AuditKerberosServiceTicketOperations</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountlogon-auditotheraccountlogonevents"id="audit-accountlogon-auditotheraccountlogonevents">Audit/AccountLogon_AuditOtherAccountLogonEvents</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountmanagement-auditapplicationgroupmanagement"id="audit-accountmanagement-auditapplicationgroupmanagement">Audit/AccountManagement_AuditApplicationGroupManagement</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountmanagement-auditcomputeraccountmanagement"id="audit-accountmanagement-auditcomputeraccountmanagement">Audit/AccountManagement_AuditComputerAccountManagement</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountmanagement-auditdistributiongroupmanagement"id="audit-accountmanagement-auditdistributiongroupmanagement">Audit/AccountManagement_AuditDistributionGroupManagement</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountmanagement-auditotheraccountmanagementevents"id="audit-accountmanagement-auditotheraccountmanagementevents">Audit/AccountManagement_AuditOtherAccountManagementEvents</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountmanagement-auditsecuritygroupmanagement"id="audit-accountmanagement-auditsecuritygroupmanagement">Audit/AccountManagement_AuditSecurityGroupManagement</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-accountmanagement-audituseraccountmanagement"id="audit-accountmanagement-audituseraccountmanagement">Audit/AccountManagement_AuditUserAccountManagement</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-dsaccess-auditdetaileddirectoryservicereplication"id="audit-dsaccess-auditdetaileddirectoryservicereplication">Audit/DSAccess_AuditDetailedDirectoryServiceReplication</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-dsaccess-auditdirectoryserviceaccess"id="audit-dsaccess-auditdirectoryserviceaccess">Audit/DSAccess_AuditDirectoryServiceAccess</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-dsaccess-auditdirectoryservicechanges"id="audit-dsaccess-auditdirectoryservicechanges">Audit/DSAccess_AuditDirectoryServiceChanges</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-dsaccess-auditdirectoryservicereplication"id="audit-dsaccess-auditdirectoryservicereplication">Audit/DSAccess_AuditDirectoryServiceReplication</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-detailedtracking-auditdpapiactivity"id="audit-detailedtracking-auditdpapiactivity">Audit/DetailedTracking_AuditDPAPIActivity</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-detailedtracking-auditpnpactivity"id="audit-detailedtracking-auditpnpactivity">Audit/DetailedTracking_AuditPNPActivity</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-detailedtracking-auditprocesscreation"id="audit-detailedtracking-auditprocesscreation">Audit/DetailedTracking_AuditProcessCreation</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-detailedtracking-auditprocesstermination"id="audit-detailedtracking-auditprocesstermination">Audit/DetailedTracking_AuditProcessTermination</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-detailedtracking-auditrpcevents"id="audit-detailedtracking-auditrpcevents">Audit/DetailedTracking_AuditRPCEvents</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-detailedtracking-audittokenrightadjusted"id="audit-detailedtracking-audittokenrightadjusted">Audit/DetailedTracking_AuditTokenRightAdjusted</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-auditapplicationgenerated"id="audit-objectaccess-auditapplicationgenerated">Audit/ObjectAccess_AuditApplicationGenerated</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-auditcentralaccesspolicystaging"id="audit-objectaccess-auditcentralaccesspolicystaging">Audit/ObjectAccess_AuditCentralAccessPolicyStaging</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-auditcertificationservices"id="audit-objectaccess-auditcertificationservices">Audit/ObjectAccess_AuditCertificationServices</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-auditdetailedfileshare"id="audit-objectaccess-auditdetailedfileshare">Audit/ObjectAccess_AuditDetailedFileShare</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-auditfileshare"id="audit-objectaccess-auditfileshare">Audit/ObjectAccess_AuditFileShare</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-auditfilesystem"id="audit-objectaccess-auditfilesystem">Audit/ObjectAccess_AuditFileSystem</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-auditfilteringplatformconnection"id="audit-objectaccess-auditfilteringplatformconnection">Audit/ObjectAccess_AuditFilteringPlatformConnection</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-auditfilteringplatformpacketdrop"id="audit-objectaccess-auditfilteringplatformpacketdrop">Audit/ObjectAccess_AuditFilteringPlatformPacketDrop</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-audithandlemanipulation"id="audit-objectaccess-audithandlemanipulation">Audit/ObjectAccess_AuditHandleManipulation</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-auditkernelobject"id="audit-objectaccess-auditkernelobject">Audit/ObjectAccess_AuditKernelObject</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-auditotherobjectaccessevents"id="audit-objectaccess-auditotherobjectaccessevents">Audit/ObjectAccess_AuditOtherObjectAccessEvents</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-auditregistry"id="audit-objectaccess-auditregistry">Audit/ObjectAccess_AuditRegistry</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-auditremovablestorage"id="audit-objectaccess-auditremovablestorage">Audit/ObjectAccess_AuditRemovableStorage</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-objectaccess-auditsam"id="audit-objectaccess-auditsam">Audit/ObjectAccess_AuditSAM</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-policychange-auditauthenticationpolicychange"id="audit-policychange-auditauthenticationpolicychange">Audit/PolicyChange_AuditAuthenticationPolicyChange</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-policychange-auditauthorizationpolicychange"id="audit-policychange-auditauthorizationpolicychange">Audit/PolicyChange_AuditAuthorizationPolicyChange</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-policychange-auditfilteringplatformpolicychange"id="audit-policychange-auditfilteringplatformpolicychange">Audit/PolicyChange_AuditFilteringPlatformPolicyChange</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-policychange-auditmpssvcrulelevelpolicychange"id="audit-policychange-auditmpssvcrulelevelpolicychange">Audit/PolicyChange_AuditMPSSVCRuleLevelPolicyChange</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-policychange-auditotherpolicychangeevents"id="audit-policychange-auditotherpolicychangeevents">Audit/PolicyChange_AuditOtherPolicyChangeEvents</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-policychange-auditpolicychange"id="audit-policychange-auditpolicychange">Audit/PolicyChange_AuditPolicyChange</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-privilegeuse-auditnonsensitiveprivilegeuse"id="audit-privilegeuse-auditnonsensitiveprivilegeuse">Audit/PrivilegeUse_AuditNonSensitivePrivilegeUse</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-privilegeuse-auditotherprivilegeuseevents"id="audit-privilegeuse-auditotherprivilegeuseevents">Audit/PrivilegeUse_AuditOtherPrivilegeUseEvents</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-privilegeuse-auditsensitiveprivilegeuse"id="audit-privilegeuse-auditsensitiveprivilegeuse">Audit/PrivilegeUse_AuditSensitivePrivilegeUse</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-system-auditipsecdriver"id="audit-system-auditipsecdriver">Audit/System_AuditIPsecDriver</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-system-auditothersystemevents"id="audit-system-auditothersystemevents">Audit/System_AuditOtherSystemEvents</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-system-auditsecuritystatechange"id="audit-system-auditsecuritystatechange">Audit/System_AuditSecurityStateChange</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-system-auditsecuritysystemextension"id="audit-system-auditsecuritysystemextension">Audit/System_AuditSecuritySystemExtension</a>
  </dd>
  <dd>
    <a href="./policy-csp-audit.md#audit-system-auditsystemintegrity"id="audit-system-auditsystemintegrity">Audit/System_AuditSystemIntegrity</a>
  </dd>
</dl>

### Authentication policies

<dl>
  <dd>
    <a href="./policy-csp-authentication.md#authentication-allowaadpasswordreset" id="authentication-allowaadpasswordreset">Authentication/AllowAadPasswordReset</a>
  </dd>
  <dd>
    <a href="./policy-csp-authentication.md#authentication-alloweapcertsso" id="authentication-alloweapcertsso">Authentication/AllowEAPCertSSO</a>
  </dd>
  <dd>
    <a href="./policy-csp-authentication.md#authentication-allowfastreconnect" id="authentication-allowfastreconnect">Authentication/AllowFastReconnect</a>
  </dd>
  <dd>
    <a href="./policy-csp-authentication.md#authentication-allowfidodevicesignon" id="authentication-allowfidodevicesignon">Authentication/AllowFidoDeviceSignon</a>
  </dd>
  <dd>
    <a href="./policy-csp-authentication.md#authentication-allowsecondaryauthenticationdevice" id="authentication-allowsecondaryauthenticationdevice">Authentication/AllowSecondaryAuthenticationDevice</a>
  </dd>
  <dd>
    <a href="./policy-csp-authentication.md#authentication-enablefastfirstsignin" id="authentication-enablefastfirstsignin">Authentication/EnableFastFirstSignIn</a> (Preview mode only)
  </dd>
  <dd>
    <a href="./policy-csp-authentication.md#authentication-enablewebsignin" id="authentication-enablewebsignin">Authentication/EnableWebSignIn</a> (Preview mode only)
  </dd>
  <dd>
    <a href="./policy-csp-authentication.md#authentication-preferredaadtenantdomainname" id="authentication-preferredaadtenantdomainname">Authentication/PreferredAadTenantDomainName</a>
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

### BitLocker policies

<dl>
  <dd>
    <a href="./policy-csp-bitlocker.md#bitlocker-encryptionmethod" id="bitlocker-encryptionmethod">BitLocker/EncryptionMethod</a>
  </dd>
</dl>

### BITS policies

<dl>
  <dd>
    <a href="./policy-csp-bits.md#bits-bandwidththrottlingendtime" id="bits-bandwidththrottlingendtime">BITS/BandwidthThrottlingEndTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-bits.md#bits-bandwidththrottlingstarttime" id="bits-bandwidththrottlingstarttime">BITS/BandwidthThrottlingStartTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-bits.md#bits-bandwidththrottlingtransferrate" id="bits-bandwidththrottlingtransferrate">BITS/BandwidthThrottlingTransferRate</a>
  </dd>
  <dd>
    <a href="./policy-csp-bits.md#bits-costednetworkbehaviorbackgroundpriority" id="bits-costednetworkbehaviorbackgroundpriority">BITS/CostedNetworkBehaviorBackgroundPriority</a>
  </dd>
  <dd>
    <a href="./policy-csp-bits.md#bits-costednetworkbehaviorforegroundpriority" id="bits-costednetworkbehaviorforegroundpriority">BITS/CostedNetworkBehaviorForegroundPriority</a>
  </dd>
  <dd>
    <a href="./policy-csp-bits.md#bits-jobinactivitytimeout" id="bits-jobinactivitytimeout">BITS/JobInactivityTimeout</a>
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
    <a href="./policy-csp-bluetooth.md#bluetooth-allowpromptedproximalconnections" id="bluetooth-allowpromptedproximalconnections">Bluetooth/AllowPromptedProximalConnections</a>
  </dd>
  <dd>
    <a href="./policy-csp-bluetooth.md#bluetooth-localdevicename" id="bluetooth-localdevicename">Bluetooth/LocalDeviceName</a>
  </dd>
  <dd>
    <a href="./policy-csp-bluetooth.md#bluetooth-servicesallowedlist" id="bluetooth-servicesallowedlist">Bluetooth/ServicesAllowedList</a>
  </dd>
   <dd>
    <a href="./policy-csp-bluetooth.md#bluetooth-setminimumencryptionkeysize"id=bluetooth-setminimumencryptionkeysize>Bluetooth/SetMinimumEncryptionKeySize</a>
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
    <a href="./policy-csp-browser.md#browser-allowconfigurationupdateforbookslibrary" id="browser-allowconfigurationupdateforbookslibrary">Browser/AllowConfigurationUpdateForBooksLibrary</a>
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
    <a href="./policy-csp-browser.md#browser-allowfullscreenmode" id="browser-allowfullscreenmode">Browser/AllowFullScreenMode</a>
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
    <a href="./policy-csp-browser.md#browser-allowprelaunch" id="browser-allowprelaunch">Browser/AllowPrelaunch</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowprinting" id="browser-allowprinting">Browser/AllowPrinting</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowsavinghistory" id="browser-allowsavinghistory">Browser/AllowSavingHistory</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowsearchenginecustomization" id="browser-allowsearchenginecustomization">Browser/AllowSearchEngineCustomization</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowsearchsuggestionsinaddressbar" id="browser-allowsearchsuggestionsinaddressbar">Browser/AllowSearchSuggestionsinAddressBar</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowsideloadingofextensions" id="browser-allowsideloadingofextensions">Browser/AllowSideloadingOfExtensions</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowsmartscreen" id="browser-allowsmartscreen">Browser/AllowSmartScreen</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowtabpreloading" id="browser-allowtabpreloading">Browser/AllowTabPreloading</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-allowwebcontentonnewtabpage" id="browser-allowwebcontentonnewtabpage">Browser/AllowWebContentOnNewTabPage</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-alwaysenablebookslibrary" id="browser-alwaysenablebookslibrary">Browser/AlwaysEnableBooksLibrary</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-clearbrowsingdataonexit" id="browser-clearbrowsingdataonexit">Browser/ClearBrowsingDataOnExit</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-configureadditionalsearchengines" id="browser-configureadditionalsearchengines">Browser/ConfigureAdditionalSearchEngines</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-configurefavoritesbar" id="browser-configurefavoritesbar">Browser/ConfigureFavoritesBar</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-configurehomebutton" id="browser-configurehomebutton">Browser/ConfigureHomeButton</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-configurekioskmode" id="browser-configurekioskmode">Browser/ConfigureKioskMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-configurekioskresetafteridletimeout" id="browser-configurekioskresetafteridletimeout">Browser/ConfigureKioskResetAfterIdleTimeout</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-configureopenmicrosoftedgewith" id="browser-configureopenmicrosoftedgewith">Browser/ConfigureOpenMicrosoftEdgeWith</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-configuretelemetryformicrosoft365analytics" id="browser-configuretelemetryformicrosoft365analytics">Browser/ConfigureTelemetryForMicrosoft365Analytics</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-disablelockdownofstartpages" id="browser-disablelockdownofstartpages">Browser/DisableLockdownOfStartPages</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-enableextendedbookstelemetry" id="browser-enableextendedbookstelemetry">Browser/EnableExtendedBooksTelemetry</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-enterprisemodesitelist" id="browser-enterprisemodesitelist">Browser/EnterpriseModeSiteList</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-enterprisesitelistserviceurl" id="browser-enterprisesitelistserviceurl">Browser/EnterpriseSiteListServiceUrl</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-homepages" id="browser-homepages">Browser/HomePages</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-lockdownfavorites" id="browser-lockdownfavorites">Browser/LockdownFavorites</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-preventaccesstoaboutflagsinmicrosoftedge" id="browser-preventaccesstoaboutflagsinmicrosoftedge">Browser/PreventAccessToAboutFlagsInMicrosoftEdge</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-preventcerterroroverrides" id="browser-preventcerterroroverrides">Browser/PreventCertErrorOverrides</a>
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
    <a href="./policy-csp-browser.md#browser-provisionfavorites" id="browser-provisionfavorites">Browser/ProvisionFavorites</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-sendintranettraffictointernetexplorer" id="browser-sendintranettraffictointernetexplorer">Browser/SendIntranetTraffictoInternetExplorer</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-setdefaultsearchengine" id="browser-setdefaultsearchengine">Browser/SetDefaultSearchEngine</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-sethomebuttonurl" id="browser-sethomebuttonurl">Browser/SetHomeButtonURL</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-setnewtabpageurl" id="browser-setnewtabpageurl">Browser/SetNewTabPageURL</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-showmessagewhenopeningsitesininternetexplorer" id="browser-showmessagewhenopeningsitesininternetexplorer">Browser/ShowMessageWhenOpeningSitesInInternetExplorer</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-syncfavoritesbetweenieandmicrosoftedge" id="browser-syncfavoritesbetweenieandmicrosoftedge">Browser/SyncFavoritesBetweenIEAndMicrosoftEdge</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-unlockhomebutton" id="browser-unlockhomebutton">Browser/UnlockHomeButton</a>
  </dd>
  <dd>
    <a href="./policy-csp-browser.md#browser-usesharedfolderforbooks" id="browser-usesharedfolderforbooks">Browser/UseSharedFolderForBooks</a>
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
    <a href="./policy-csp-cellular.md#cellular-letappsaccesscellulardata" id="cellular-letappsaccesscellulardata">Cellular/LetAppsAccessCellularData</a>
  </dd>
  <dd>
    <a href="./policy-csp-cellular.md#cellular-letappsaccesscellulardata-forceallowtheseapps" id="cellular-letappsaccesscellulardata-forceallowtheseapps">Cellular/LetAppsAccessCellularData_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-cellular.md#cellular-letappsaccesscellulardata-forcedenytheseapps" id="cellular-letappsaccesscellulardata-forcedenytheseapps">Cellular/LetAppsAccessCellularData_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-cellular.md#cellular-letappsaccesscellulardata-userincontroloftheseapps" id="cellular-letappsaccesscellulardata-userincontroloftheseapps">Cellular/LetAppsAccessCellularData_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-cellular.md#cellular-showappcellularaccessui" id="cellular-showappcellularaccessui">Cellular/ShowAppCellularAccessUI</a>
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
    <a href="./policy-csp-connectivity.md#connectivity-allowphonepclinking" id="connectivity-allowphonepclinking">Connectivity/AllowPhonePCLinking</a>
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
    <a href="./policy-csp-connectivity.md#connectivity-diableprintingoverhttp" id="connectivity-disableprintingoverhttp">Connectivity/DiablePrintingOverHTTP</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-disabledownloadingofprintdriversoverhttp" id="connectivity-disabledownloadingofprintdriversoverhttp">Connectivity/DisableDownloadingOfPrintDriversOverHTTP</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-disableinternetdownloadforwebpublishingandonlineorderingwizards" id="connectivity-disableinternetdownloadforwebpublishingandonlineorderingwizards">Connectivity/DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-disallownetworkconnectivityactivetests" id="connectivity-disallownetworkconnectivityactivetests">Connectivity/DisallowNetworkConnectivityActiveTests</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-hardeneduncpaths" id="connectivity-hardeneduncpaths">Connectivity/HardenedUNCPaths</a>
  </dd>
  <dd>
    <a href="./policy-csp-connectivity.md#connectivity-prohibitinstallationandconfigurationofnetworkbridge" id="connectivity-prohibitinstallationandconfigurationofnetworkbridge">Connectivity/ProhibitInstallationAndConfigurationOfNetworkBridge</a>
  </dd>
</dl>

### ControlPolicyConflict policies

<dl>
  <dd>
    <a href="./policy-csp-controlpolicyconflict.md#controlpolicyconflict-mdmwinsovergp" id="controlpolicyconflict-mdmwinsovergp">ControlPolicyConflict/MDMWinsOverGP</a>
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
    <a href="./policy-csp-credentialproviders.md#credentialproviders-disableautomaticredeploymentcredentials" id="credentialproviders-disableautomaticredeploymentcredentials">CredentialProviders/DisableAutomaticReDeploymentCredentials</a>
  </dd>
</dl>

### CredentialsDelegation policies

<dl>
  <dd>
    <a href="./policy-csp-credentialsdelegation.md#credentialsdelegation-remotehostallowsdelegationofnonexportablecredentials" id="credentialsdelegation-remotehostallowsdelegationofnonexportablecredentials">CredentialsDelegation/RemoteHostAllowsDelegationOfNonExportableCredentials</a>
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
    <a href="./policy-csp-defender.md#defender-checkforsignaturesbeforerunningscan" id="defender-checkforsignaturesbeforerunningscan">Defender/CheckForSignaturesBeforeRunningScan</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-cloudblocklevel" id="defender-cloudblocklevel">Defender/CloudBlockLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-cloudextendedtimeout" id="defender-cloudextendedtimeout">Defender/CloudExtendedTimeout</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-controlledfolderaccessallowedapplications" id="defender-controlledfolderaccessallowedapplications">Defender/ControlledFolderAccessAllowedApplications</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-controlledfolderaccessprotectedfolders" id="defender-controlledfolderaccessprotectedfolders">Defender/ControlledFolderAccessProtectedFolders</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-daystoretaincleanedmalware" id="defender-daystoretaincleanedmalware">Defender/DaysToRetainCleanedMalware</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-disablecatchupfullscan" id="defender-disablecatchupfullscan">Defender/DisableCatchupFullScan</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-disablecatchupquickscan" id="defender-disablecatchupquickscan">Defender/DisableCatchupQuickScan</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-enablecontrolledfolderaccess" id="defender-enablecontrolledfolderaccess">Defender/EnableControlledFolderAccess</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-enablelowcpupriority" id="defender-enablelowcpupriority">Defender/EnableLowCPUPriority</a>
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
    <a href="./policy-csp-defender.md#defender-signatureupdatefallbackorder" id="defender-signatureupdatefallbackorder">Defender/SignatureUpdateFallbackOrder</a>
  </dd>
  <dd>
    <a href="./policy-csp-defender.md#defender-signatureupdatefilesharessources" id="defender-signatureupdatefilesharessources">Defender/SignatureUpdateFileSharesSources</a>
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
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-docachehost" id="deliveryoptimization-docachehost">DeliveryOptimization/DOCacheHost</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-docachehostsource" id="deliveryoptimization-docachehostsource">DeliveryOptimization/DOCacheHostSource</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dodelaybackgrounddownloadfromhttp" id="deliveryoptimization-dodelaybackgrounddownloadfromhttp">DeliveryOptimization/DODelayBackgroundDownloadFromHttp</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dodelayforegrounddownloadfromhttp" id="deliveryoptimization-dodelayforegrounddownloadfromhttp">DeliveryOptimization/DODelayForegroundDownloadFromHttp</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dodelaycacheserverfallbackbackground" id="deliveryoptimization-dodelaycacheserverfallbackbackground">DeliveryOptimization/DODelayCacheServerFallbackBackground</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dodelaycacheserverfallbackforeground" id="deliveryoptimization-dodelaycacheserverfallbackforeground">DeliveryOptimization/DODelayCacheServerFallbackForeground</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dodownloadmode" id="deliveryoptimization-dodownloadmode">DeliveryOptimization/DODownloadMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dogroupid" id="deliveryoptimization-dogroupid">DeliveryOptimization/DOGroupId</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dogroupidsource" id="deliveryoptimization-dogroupidsource">DeliveryOptimization/DOGroupIdSource</a>
  </dd>
    <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-domaxbackgrounddownloadbandwidth" id="deliveryoptimization-domaxbackgrounddownloadbandwidth">DeliveryOptimization/DOMaxBackgroundDownloadBandwidth</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-domaxcacheage" id="deliveryoptimization-domaxcacheage">DeliveryOptimization/DOMaxCacheAge</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-domaxcachesize" id="deliveryoptimization-domaxcachesize">DeliveryOptimization/DOMaxCacheSize</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-domaxdownloadbandwidth" id="deliveryoptimization-domaxdownloadbandwidth">DeliveryOptimization/DOMaxDownloadBandwidth</a> (deprecated)
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-domaxforegrounddownloadbandwidth" id="deliveryoptimization-domaxforegrounddownloadbandwidth">DeliveryOptimization/DOMaxForegroundDownloadBandwidth</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-domaxuploadbandwidth" id="deliveryoptimization-domaxuploadbandwidth">DeliveryOptimization/DOMaxUploadBandwidth</a> (deprecated)
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
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dopercentagemaxbackgroundbandwidth" id="deliveryoptimization-dopercentagemaxbackgroundbandwidth">DeliveryOptimization/DOPercentageMaxBackgroundBandwidth</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dopercentagemaxdownloadbandwidth" id="deliveryoptimization-dopercentagemaxdownloadbandwidth">DeliveryOptimization/DOPercentageMaxDownloadBandwidth</a> (deprecated)
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dopercentagemaxforegroundbandwidth" id="deliveryoptimization-dopercentagemaxforegroundbandwidth">DeliveryOptimization/DOPercentageMaxForegroundBandwidth</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dorestrictpeerselectionby" id="deliveryoptimization-dorestrictpeerselectionby">DeliveryOptimization/DORestrictPeerSelectionBy</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dosethourstolimitbackgrounddownloadbandwidth" id="deliveryoptimization-dosethourstolimitbackgrounddownloadbandwidth">DeliveryOptimization/DOSetHoursToLimitBackgroundDownloadBandwidth</a>
  </dd>
  <dd>
    <a href="./policy-csp-deliveryoptimization.md#deliveryoptimization-dosethourstolimitforegrounddownloadbandwidth" id="deliveryoptimization-dosethourstolimitforegrounddownloadbandwidth">DeliveryOptimization/DOSetHoursToLimitForegroundDownloadBandwidth</a>
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
    <a href="./policy-csp-deviceguard.md#deviceguard-configuresystemguardlaunch" id="deviceguard-configuresystemguardlaunch">DeviceGuard/ConfigureSystemGuardLaunch</a>
  </dd>
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

### DeviceHealthMonitoring policies

<dl>
  <dd>
    <a href="./policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-allowdevicehealthmonitoring" id="devicehealthmonitoring-allowdevicehealthmonitoring">DeviceHealthMonitoring/AllowDeviceHealthMonitoring</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-configdevicehealthmonitoringscope" id="devicehealthmonitoring-configdevicehealthmonitoringscope">DeviceHealthMonitoring/ConfigDeviceHealthMonitoringScope</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-configdevicehealthmonitoringuploaddestination" id="devicehealthmonitoring-configdevicehealthmonitoringuploaddestination">DeviceHealthMonitoring/ConfigDeviceHealthMonitoringUploadDestination</a>
  </dd>
</dl>

### DeviceInstallation policies

<dl>
  <dd>
    <a href="./policy-csp-deviceinstallation.md#deviceinstallationallowinstallationofmatchingdeviceids" id="deviceinstallation-allowinstallationofmatchingdeviceids">DeviceInstallation/AllowInstallationOfMatchingDeviceIDs</a>
  </dd>
  <dd>
    <a href="./policy-csp-deviceinstallation.md#deviceinstallationallowinstallationofmatchingdevicesetupclasses" id="deviceinstallation-allowinstallationofmatchingdevicesetupclasses">DeviceInstallation/AllowInstallationOfMatchingDeviceSetupClasses</a>
  </dd>
  <dd>
    <a href="./policy-csp-deviceinstallation.md#deviceinstallationallowinstallationofmatchingdeviceinstanceids"id="deviceinstallation-allowinstallationofmatchingdeviceinstanceids">DeviceInstallation/AllowInstallationOfMatchingDeviceInstanceIDs</a>
  </dd>
  <dd>
    <a href="./policy-csp-deviceinstallation.md#deviceinstallationpreventdevicemetadatafromnetwork" id="deviceinstallation-preventdevicemetadatafromnetwork">DeviceInstallation/PreventDeviceMetadataFromNetwork</a>
  </dd>
  <dd>
    <a href="./policy-csp-deviceinstallation.md#deviceinstallationpreventinstallationofdevicesnotdescribedbyotherpolicysettings" id="deviceinstallation-preventinstallationofdevicesnotdescribedbyotherpolicysettings">DeviceInstallation/PreventInstallationOfDevicesNotDescribedByOtherPolicySettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-deviceinstallation.md#deviceinstallationpreventinstallationofmatchingdeviceids" id="deviceinstallation-preventinstallationofmatchingdeviceids">DeviceInstallation/PreventInstallationOfMatchingDeviceIDs</a>
  </dd>
  <dd>
    <a href="./policy-csp-deviceinstallation.md#deviceinstallationpreventinstallationofmatchingdeviceinstanceids"id="deviceinstallation-preventinstallationofmatchingdeviceinstanceids">DeviceInstallation/PreventInstallationOfMatchingDeviceInstanceIDs</a>
  </dd>
  <dd>
    <a href="./policy-csp-deviceinstallation.md#deviceinstallationpreventinstallationofmatchingdevicesetupclasses" id="deviceinstallation-preventinstallationofmatchingdevicesetupclasses">DeviceInstallation/PreventInstallationOfMatchingDeviceSetupClasses</a>
  </dd>
</dl>

### DeviceLock policies

<dl>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-allowidlereturnwithoutpassword" id="devicelock-allowidlereturnwithoutpassword">DeviceLock/AllowIdleReturnWithoutPassword</a>
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
    <a href="./policy-csp-devicelock.md#devicelock-maxdevicepasswordfailedattempts" id="devicelock-maxdevicepasswordfailedattempts">DeviceLock/MaxDevicePasswordFailedAttempts</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-maxinactivitytimedevicelock" id="devicelock-maxinactivitytimedevicelock">DeviceLock/MaxInactivityTimeDeviceLock</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-mindevicepasswordcomplexcharacters" id="devicelock-mindevicepasswordcomplexcharacters">DeviceLock/MinDevicePasswordComplexCharacters</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-mindevicepasswordlength" id="devicelock-mindevicepasswordlength">DeviceLock/MinDevicePasswordLength</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-minimumpasswordage" id="devicelock-minimumpasswordage">DeviceLock/MinimumPasswordAge</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-preventenablinglockscreencamera" id="devicelock-preventenablinglockscreencamera">DeviceLock/PreventEnablingLockScreenCamera</a>
  </dd>
  <dd>
    <a href="./policy-csp-devicelock.md#devicelock-preventlockscreenslideshow" id="devicelock-preventlockscreenslideshow">DeviceLock/PreventLockScreenSlideShow</a>
  </dd>
</dl>

### Display policies

<dl>
  <dd>
    <a href="./policy-csp-display.md#display-disableperprocessdpiforapps" id="display-disableperprocessdpiforapps">Display/DisablePerProcessDpiForApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-display.md#display-enableperprocessdpi" id="display-enableperprocessdpi">Display/EnablePerProcessDpi</a>
  </dd>
  <dd>
    <a href="./policy-csp-display.md#display-enableperprocessdpiforapps" id="display-enableperprocessdpiforapps">Display/EnablePerProcessDpiForApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-display.md#display-turnoffgdidpiscalingforapps" id="display-turnoffgdidpiscalingforapps">Display/TurnOffGdiDPIScalingForApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-display.md#display-turnongdidpiscalingforapps" id="display-turnongdidpiscalingforapps">Display/TurnOnGdiDPIScalingForApps</a>
  </dd>
</dl>

### DmaGuard policies

<dl>
  <dd>
    <a href="./policy-csp-dmaguard.md#dmaguard-deviceenumerationpolicy" id="dmaguard-deviceenumerationpolicy">DmaGuard/DeviceEnumerationPolicy</a>
  </dd>
</dl>

### Education policies

<dl>
  <dd>
    <a href="./policy-csp-education.md#education-allowgraphingcalculator"id="education-allowgraphingcalculator">Education/AllowGraphingCalculator</a>
  </dd>
  <dd>
    <a href="./policy-csp-education.md#education-defaultprintername" id="education-defaultprintername">Education/DefaultPrinterName</a>
  </dd>
  <dd>
    <a href="./policy-csp-education.md#education-preventaddingnewprinters" id="education-preventaddingnewprinters">Education/PreventAddingNewPrinters</a>
  </dd>
  <dd>
    <a href="./policy-csp-education.md#education-printernames" id="education-printernames">Education/PrinterNames</a>
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
    <a href="./policy-csp-experience.md#experience-allowclipboardhistory" id="experience-allowclipboardhistory">Experience/AllowClipboardHistory</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowcortana" id="experience-allowcortana">Experience/AllowCortana</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowdevicediscovery" id="experience-allowdevicediscovery">Experience/AllowDeviceDiscovery</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowfindmydevice" id="experience-allowfindmydevice">Experience/AllowFindMyDevice</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowmanualmdmunenrollment" id="experience-allowmanualmdmunenrollment">Experience/AllowManualMDMUnenrollment</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowsaveasofofficefiles" id="experience-allowsaveasofofficefiles">Experience/AllowSaveAsOfOfficeFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowsharingofofficefiles" id="experience-allowsharingofofficefiles">Experience/AllowSharingOfOfficeFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowsyncmysettings" id="experience-allowsyncmysettings">Experience/AllowSyncMySettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowtailoredexperienceswithdiagnosticdata" id="experience-allowtailoredexperienceswithdiagnosticdata">Experience/AllowTailoredExperiencesWithDiagnosticData</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-allowthirdpartysuggestionsinwindowsspotlight" id="experience-allowthirdpartysuggestionsinwindowsspotlight">Experience/AllowThirdPartySuggestionsInWindowsSpotlight</a>
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
    <a href="./policy-csp-experience.md#experience-allowwindowsspotlightonsettings" id="experience-allowwindowsspotlightonsettings">Experience/AllowWindowsSpotlightOnSettings</a>
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
    <a href="./policy-csp-experience.md#experience-disablecloudoptimizedcontent" id="experience-disablecloudoptimizedcontent">Experience/DisableCloudOptimizedContent</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-donotshowfeedbacknotifications" id="experience-donotshowfeedbacknotifications">Experience/DoNotShowFeedbackNotifications</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-donotsyncbrowsersetting" id="experience-donotsyncbrowsersetting">Experience/DoNotSyncBrowserSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-preventusersfromturningonbrowsersyncing" id="experience-preventusersfromturningonbrowsersyncing">Experience/PreventUsersFromTurningOnBrowserSyncing</a>
  </dd>
  <dd>
    <a href="./policy-csp-experience.md#experience-showlockonusertile" id="experience-showlockonusertile">Experience/ShowLockOnUserTile</a>
  </dd>
</dl>

### ExploitGuard policies

<dl>
  <dd>
    <a href="./policy-csp-exploitguard.md#exploitguard-exploitprotectionsettings" id="exploitguard-exploitprotectionsettings">ExploitGuard/ExploitProtectionSettings</a>
  </dd>
</dl>

### FileExplorer policies

<dl>
  <dd>
    <a href="./policy-csp-fileexplorer.md#fileexplorer-turnoffdataexecutionpreventionforexplorer" id="fileexplorer-turnoffdataexecutionpreventionforexplorer">FileExplorer/TurnOffDataExecutionPreventionForExplorer</a>
  </dd>
  <dd>
    <a href="./policy-csp-fileexplorer.md#fileexplorer-turnoffheapterminationoncorruption" id="fileexplorer-turnoffheapterminationoncorruption">FileExplorer/TurnOffHeapTerminationOnCorruption</a>
  </dd>
</dl>

### Games policies

<dl>
  <dd>
    <a href="./policy-csp-games.md#games-allowadvancedgamingservices" id="games-allowadvancedgamingservices">Games/AllowAdvancedGamingServices</a>
  </dd>
</dl>

### Handwriting policies

<dl>
  <dd>
    <a href="./policy-csp-handwriting.md#handwriting-paneldefaultmodedocked" id="handwriting-paneldefaultmodedocked">Handwriting/PanelDefaultModeDocked</a>
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
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowautocomplete" id="internetexplorer-allowautocomplete">InternetExplorer/AllowAutoComplete</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowcertificateaddressmismatchwarning" id="internetexplorer-allowcertificateaddressmismatchwarning">InternetExplorer/AllowCertificateAddressMismatchWarning</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowdeletingbrowsinghistoryonexit" id="internetexplorer-allowdeletingbrowsinghistoryonexit">InternetExplorer/AllowDeletingBrowsingHistoryOnExit</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowenhancedprotectedmode" id="internetexplorer-allowenhancedprotectedmode">InternetExplorer/AllowEnhancedProtectedMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowenhancedsuggestionsinaddressbar" id="internetexplorer-allowenhancedsuggestionsinaddressbar">InternetExplorer/AllowEnhancedSuggestionsInAddressBar</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowenterprisemodefromtoolsmenu" id="internetexplorer-allowenterprisemodefromtoolsmenu">InternetExplorer/AllowEnterpriseModeFromToolsMenu</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowenterprisemodesitelist" id="internetexplorer-allowenterprisemodesitelist">InternetExplorer/AllowEnterpriseModeSiteList</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowfallbacktossl3" id="internetexplorer-allowfallbacktossl3">InternetExplorer/AllowFallbackToSSL3</a>
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
    <a href="./policy-csp-internetexplorer.md#internetexplorer-allowsoftwarewhensignatureisinvalid" id="internetexplorer-allowsoftwarewhensignatureisinvalid">InternetExplorer/AllowSoftwareWhenSignatureIsInvalid</a>
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
    <a href="./policy-csp-internetexplorer.md#internetexplorer-checkservercertificaterevocation" id="internetexplorer-checkservercertificaterevocation">InternetExplorer/CheckServerCertificateRevocation</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-checksignaturesondownloadedprograms" id="internetexplorer-checksignaturesondownloadedprograms">InternetExplorer/CheckSignaturesOnDownloadedPrograms</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-consistentmimehandlinginternetexplorerprocesses" id="internetexplorer-consistentmimehandlinginternetexplorerprocesses">InternetExplorer/ConsistentMimeHandlingInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableactivexversionlistautodownload" id="internetexplorer-disableactivexversionlistautodownload">InternetExplorer/DisableActiveXVersionListAutoDownload</a>
  </dd><br/>  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableadobeflash" id="internetexplorer-disableadobeflash">InternetExplorer/DisableAdobeFlash</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablebypassofsmartscreenwarnings" id="internetexplorer-disablebypassofsmartscreenwarnings">InternetExplorer/DisableBypassOfSmartScreenWarnings</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablebypassofsmartscreenwarningsaboutuncommonfiles" id="internetexplorer-disablebypassofsmartscreenwarningsaboutuncommonfiles">InternetExplorer/DisableBypassOfSmartScreenWarningsAboutUncommonFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablecompatview" id="internetexplorer-disablecompatview">InternetExplorer/DisableCompatView</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableconfiguringhistory" id="internetexplorer-disableconfiguringhistory">InternetExplorer/DisableConfiguringHistory</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablecrashdetection" id="internetexplorer-disablecrashdetection">InternetExplorer/DisableCrashDetection</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablecustomerexperienceimprovementprogramparticipation" id="internetexplorer-disablecustomerexperienceimprovementprogramparticipation">InternetExplorer/DisableCustomerExperienceImprovementProgramParticipation</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disabledeletinguservisitedwebsites" id="internetexplorer-disabledeletinguservisitedwebsites">InternetExplorer/DisableDeletingUserVisitedWebsites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableenclosuredownloading" id="internetexplorer-disableenclosuredownloading">InternetExplorer/DisableEnclosureDownloading</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableencryptionsupport" id="internetexplorer-disableencryptionsupport">InternetExplorer/DisableEncryptionSupport</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablefeedsbackgroundsync" id="internetexplorer-disablefeedsbackgroundsync">InternetExplorer/DisableFeedsBackgroundSync</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablefirstrunwizard" id="internetexplorer-disablefirstrunwizard">InternetExplorer/DisableFirstRunWizard</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableflipaheadfeature" id="internetexplorer-disableflipaheadfeature">InternetExplorer/DisableFlipAheadFeature</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablegeolocation" id="internetexplorer-disablegeolocation">InternetExplorer/DisableGeolocation</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablehomepagechange" id="internetexplorer-disablehomepagechange">InternetExplorer/DisableHomePageChange</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableignoringcertificateerrors" id="internetexplorer-disableignoringcertificateerrors">InternetExplorer/DisableIgnoringCertificateErrors</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableinprivatebrowsing" id="internetexplorer-disableinprivatebrowsing">InternetExplorer/DisableInPrivateBrowsing</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableprocessesinenhancedprotectedmode" id="internetexplorer-disableprocessesinenhancedprotectedmode">InternetExplorer/DisableProcessesInEnhancedProtectedMode</a>
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
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablesecuritysettingscheck" id="internetexplorer-disablesecuritysettingscheck">InternetExplorer/DisableSecuritySettingsCheck</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disableupdatecheck" id="internetexplorer-disableupdatecheck">InternetExplorer/DisableUpdateCheck</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-disablewebaddressautocomplete" id="internetexplorer-disablewebaddressautocomplete">InternetExplorer/DisableWebAddressAutoComplete</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-donotallowactivexcontrolsinprotectedmode" id="internetexplorer-donotallowactivexcontrolsinprotectedmode">InternetExplorer/DoNotAllowActiveXControlsInProtectedMode</a>
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
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowcopypasteviascript" id="internetexplorer-internetzoneallowcopypasteviascript">InternetExplorer/InternetZoneAllowCopyPasteViaScript</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowdraganddropcopyandpastefiles" id="internetexplorer-internetzoneallowdraganddropcopyandpastefiles">InternetExplorer/InternetZoneAllowDragAndDropCopyAndPasteFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowfontdownloads" id="internetexplorer-internetzoneallowfontdownloads">InternetExplorer/InternetZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowlessprivilegedsites" id="internetexplorer-internetzoneallowlessprivilegedsites">InternetExplorer/InternetZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowloadingofxamlfiles" id="internetexplorer-internetzoneallowloadingofxamlfiles">InternetExplorer/InternetZoneAllowLoadingOfXAMLFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallownetframeworkreliantcomponents" id="internetexplorer-internetzoneallownetframeworkreliantcomponents">InternetExplorer/InternetZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowonlyapproveddomainstouseactivexcontrols" id="internetexplorer-internetzoneallowonlyapproveddomainstouseactivexcontrols">InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowonlyapproveddomainstousetdcactivexcontrol" id="internetexplorer-internetzoneallowonlyapproveddomainstousetdcactivexcontrol">InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowscriptinitiatedwindows" id="internetexplorer-internetzoneallowscriptinitiatedwindows">InternetExplorer/InternetZoneAllowScriptInitiatedWindows</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowscriptingofinternetexplorerwebbrowsercontrols" id="internetexplorer-internetzoneallowscriptingofinternetexplorerwebbrowsercontrols">InternetExplorer/InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowscriptlets" id="internetexplorer-internetzoneallowscriptlets">InternetExplorer/InternetZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowsmartscreenie" id="internetexplorer-internetzoneallowsmartscreenie">InternetExplorer/InternetZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowupdatestostatusbarviascript" id="internetexplorer-internetzoneallowupdatestostatusbarviascript">InternetExplorer/InternetZoneAllowUpdatesToStatusBarViaScript</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowuserdatapersistence" id="internetexplorer-internetzoneallowuserdatapersistence">InternetExplorer/InternetZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneallowvbscripttorunininternetexplorer" id="internetexplorer-internetzoneallowvbscripttorunininternetexplorer">InternetExplorer/InternetZoneAllowVBScriptToRunInInternetExplorer</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzonedonotrunantimalwareagainstactivexcontrols" id="internetexplorer-internetzonedonotrunantimalwareagainstactivexcontrols">InternetExplorer/InternetZoneDoNotRunAntimalwareAgainstActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzonedownloadsignedactivexcontrols" id="internetexplorer-internetzonedownloadsignedactivexcontrols">InternetExplorer/InternetZoneDownloadSignedActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzonedownloadunsignedactivexcontrols" id="internetexplorer-internetzonedownloadunsignedactivexcontrols">InternetExplorer/InternetZoneDownloadUnsignedActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneenablecrosssitescriptingfilter" id="internetexplorer-internetzoneenablecrosssitescriptingfilter">InternetExplorer/InternetZoneEnableCrossSiteScriptingFilter</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneenabledraggingofcontentfromdifferentdomainsacrosswindows" id="internetexplorer-internetzoneenabledraggingofcontentfromdifferentdomainsacrosswindows">InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneenabledraggingofcontentfromdifferentdomainswithinwindows" id="internetexplorer-internetzoneenabledraggingofcontentfromdifferentdomainswithinwindows">InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneenablemimesniffing" id="internetexplorer-internetzoneenablemimesniffing">InternetExplorer/InternetZoneEnableMIMESniffing</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneenableprotectedmode" id="internetexplorer-internetzoneenableprotectedmode">InternetExplorer/InternetZoneEnableProtectedMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneincludelocalpathwhenuploadingfilestoserver" id="internetexplorer-internetzoneincludelocalpathwhenuploadingfilestoserver">InternetExplorer/InternetZoneIncludeLocalPathWhenUploadingFilesToServer</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneinitializeandscriptactivexcontrols" id="internetexplorer-internetzoneinitializeandscriptactivexcontrols">InternetExplorer/InternetZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneinitializeandscriptactivexcontrolsnotmarkedsafe" id="internetexplorer-internetzoneinitializeandscriptactivexcontrolsnotmarkedsafe">InternetExplorer/InternetZoneInitializeAndScriptActiveXControlsNotMarkedSafe</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzonejavapermissions" id="internetexplorer-internetzonejavapermissions">InternetExplorer/InternetZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzonelaunchingapplicationsandfilesiniframe" id="internetexplorer-internetzonelaunchingapplicationsandfilesiniframe">InternetExplorer/InternetZoneLaunchingApplicationsAndFilesInIFRAME</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzonelogonoptions" id="internetexplorer-internetzonelogonoptions">InternetExplorer/InternetZoneLogonOptions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzonenavigatewindowsandframes" id="internetexplorer-internetzonenavigatewindowsandframes">InternetExplorer/InternetZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzonerunnetframeworkreliantcomponentssignedwithauthenticode" id="internetexplorer-internetzonerunnetframeworkreliantcomponentssignedwithauthenticode">InternetExplorer/InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneshowsecuritywarningforpotentiallyunsafefiles" id="internetexplorer-internetzoneshowsecuritywarningforpotentiallyunsafefiles">InternetExplorer/InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-internetzoneusepopupblocker" id="internetexplorer-internetzoneusepopupblocker">InternetExplorer/InternetZoneUsePopupBlocker</a>
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
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzonedonotrunantimalwareagainstactivexcontrols" id="internetexplorer-intranetzonedonotrunantimalwareagainstactivexcontrols">InternetExplorer/IntranetZoneDoNotRunAntimalwareAgainstActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzoneinitializeandscriptactivexcontrols" id="internetexplorer-intranetzoneinitializeandscriptactivexcontrols">InternetExplorer/IntranetZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-intranetzonejavapermissions" id="internetexplorer-intranetzonejavapermissions">InternetExplorer/IntranetZoneJavaPermissions</a>
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
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezonedonotrunantimalwareagainstactivexcontrols" id="internetexplorer-localmachinezonedonotrunantimalwareagainstactivexcontrols">InternetExplorer/LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezoneinitializeandscriptactivexcontrols" id="internetexplorer-localmachinezoneinitializeandscriptactivexcontrols">InternetExplorer/LocalMachineZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-localmachinezonejavapermissions" id="internetexplorer-localmachinezonejavapermissions">InternetExplorer/LocalMachineZoneJavaPermissions</a>
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
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzonejavapermissions" id="internetexplorer-lockeddowninternetzonejavapermissions">InternetExplorer/LockedDownInternetZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowninternetzonenavigatewindowsandframes" id="internetexplorer-lockeddowninternetzonenavigatewindowsandframes">InternetExplorer/LockedDownInternetZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownintranetjavapermissions" id="internetexplorer-lockeddownintranetjavapermissions">InternetExplorer/LockedDownIntranetJavaPermissions</a>
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
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownlocalmachinezonejavapermissions" id="internetexplorer-lockeddownlocalmachinezonejavapermissions">InternetExplorer/LockedDownLocalMachineZoneJavaPermissions</a>
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
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddownrestrictedsiteszonejavapermissions" id="internetexplorer-lockeddownrestrictedsiteszonejavapermissions">InternetExplorer/LockedDownRestrictedSitesZoneJavaPermissions</a>
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
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszonejavapermissions" id="internetexplorer-lockeddowntrustedsiteszonejavapermissions">InternetExplorer/LockedDownTrustedSitesZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-lockeddowntrustedsiteszonenavigatewindowsandframes" id="internetexplorer-lockeddowntrustedsiteszonenavigatewindowsandframes">InternetExplorer/LockedDownTrustedSitesZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-mkprotocolsecurityrestrictioninternetexplorerprocesses" id="internetexplorer-mkprotocolsecurityrestrictioninternetexplorerprocesses">InternetExplorer/MKProtocolSecurityRestrictionInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-mimesniffingsafetyfeatureinternetexplorerprocesses" id="internetexplorer-mimesniffingsafetyfeatureinternetexplorerprocesses">InternetExplorer/MimeSniffingSafetyFeatureInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-newtabdefaultpage" id="internetexplorer-newtabdefaultpage">InternetExplorer/NewTabDefaultPage</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-notificationbarinternetexplorerprocesses" id="internetexplorer-notificationbarinternetexplorerprocesses">InternetExplorer/NotificationBarInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-preventmanagingsmartscreenfilter" id="internetexplorer-preventmanagingsmartscreenfilter">InternetExplorer/PreventManagingSmartScreenFilter</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-preventperuserinstallationofactivexcontrols" id="internetexplorer-preventperuserinstallationofactivexcontrols">InternetExplorer/PreventPerUserInstallationOfActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-protectionfromzoneelevationinternetexplorerprocesses" id="internetexplorer-protectionfromzoneelevationinternetexplorerprocesses">InternetExplorer/ProtectionFromZoneElevationInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-removerunthistimebuttonforoutdatedactivexcontrols" id="internetexplorer-removerunthistimebuttonforoutdatedactivexcontrols">InternetExplorer/RemoveRunThisTimeButtonForOutdatedActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictactivexinstallinternetexplorerprocesses" id="internetexplorer-restrictactivexinstallinternetexplorerprocesses">InternetExplorer/RestrictActiveXInstallInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictfiledownloadinternetexplorerprocesses" id="internetexplorer-restrictfiledownloadinternetexplorerprocesses">InternetExplorer/RestrictFileDownloadInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowaccesstodatasources" id="internetexplorer-restrictedsiteszoneallowaccesstodatasources">InternetExplorer/RestrictedSitesZoneAllowAccessToDataSources</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowactivescripting" id="internetexplorer-restrictedsiteszoneallowactivescripting">InternetExplorer/RestrictedSitesZoneAllowActiveScripting</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowautomaticpromptingforactivexcontrols" id="internetexplorer-restrictedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowautomaticpromptingforfiledownloads" id="internetexplorer-restrictedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowbinaryandscriptbehaviors" id="internetexplorer-restrictedsiteszoneallowbinaryandscriptbehaviors">InternetExplorer/RestrictedSitesZoneAllowBinaryAndScriptBehaviors</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowcopypasteviascript" id="internetexplorer-restrictedsiteszoneallowcopypasteviascript">InternetExplorer/RestrictedSitesZoneAllowCopyPasteViaScript</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowdraganddropcopyandpastefiles" id="internetexplorer-restrictedsiteszoneallowdraganddropcopyandpastefiles">InternetExplorer/RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowfiledownloads" id="internetexplorer-restrictedsiteszoneallowfiledownloads">InternetExplorer/RestrictedSitesZoneAllowFileDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowfontdownloads" id="internetexplorer-restrictedsiteszoneallowfontdownloads">InternetExplorer/RestrictedSitesZoneAllowFontDownloads</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowlessprivilegedsites" id="internetexplorer-restrictedsiteszoneallowlessprivilegedsites">InternetExplorer/RestrictedSitesZoneAllowLessPrivilegedSites</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowloadingofxamlfiles" id="internetexplorer-restrictedsiteszoneallowloadingofxamlfiles">InternetExplorer/RestrictedSitesZoneAllowLoadingOfXAMLFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowmetarefresh" id="internetexplorer-restrictedsiteszoneallowmetarefresh">InternetExplorer/RestrictedSitesZoneAllowMETAREFRESH</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallownetframeworkreliantcomponents" id="internetexplorer-restrictedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/RestrictedSitesZoneAllowNETFrameworkReliantComponents</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowonlyapproveddomainstouseactivexcontrols" id="internetexplorer-restrictedsiteszoneallowonlyapproveddomainstouseactivexcontrols">InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowonlyapproveddomainstousetdcactivexcontrol" id="internetexplorer-restrictedsiteszoneallowonlyapproveddomainstousetdcactivexcontrol">InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowscriptinitiatedwindows" id="internetexplorer-restrictedsiteszoneallowscriptinitiatedwindows">InternetExplorer/RestrictedSitesZoneAllowScriptInitiatedWindows</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowscriptingofinternetexplorerwebbrowsercontrols" id="internetexplorer-restrictedsiteszoneallowscriptingofinternetexplorerwebbrowsercontrols">InternetExplorer/RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowscriptlets" id="internetexplorer-restrictedsiteszoneallowscriptlets">InternetExplorer/RestrictedSitesZoneAllowScriptlets</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowsmartscreenie" id="internetexplorer-restrictedsiteszoneallowsmartscreenie">InternetExplorer/RestrictedSitesZoneAllowSmartScreenIE</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowupdatestostatusbarviascript" id="internetexplorer-restrictedsiteszoneallowupdatestostatusbarviascript">InternetExplorer/RestrictedSitesZoneAllowUpdatesToStatusBarViaScript</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowuserdatapersistence" id="internetexplorer-restrictedsiteszoneallowuserdatapersistence">InternetExplorer/RestrictedSitesZoneAllowUserDataPersistence</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneallowvbscripttorunininternetexplorer" id="internetexplorer-restrictedsiteszoneallowvbscripttorunininternetexplorer">InternetExplorer/RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszonedonotrunantimalwareagainstactivexcontrols" id="internetexplorer-restrictedsiteszonedonotrunantimalwareagainstactivexcontrols">InternetExplorer/RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszonedownloadsignedactivexcontrols" id="internetexplorer-restrictedsiteszonedownloadsignedactivexcontrols">InternetExplorer/RestrictedSitesZoneDownloadSignedActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszonedownloadunsignedactivexcontrols" id="internetexplorer-restrictedsiteszonedownloadunsignedactivexcontrols">InternetExplorer/RestrictedSitesZoneDownloadUnsignedActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneenablecrosssitescriptingfilter" id="internetexplorer-restrictedsiteszoneenablecrosssitescriptingfilter">InternetExplorer/RestrictedSitesZoneEnableCrossSiteScriptingFilter</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneenabledraggingofcontentfromdifferentdomainsacrosswindows" id="internetexplorer-restrictedsiteszoneenabledraggingofcontentfromdifferentdomainsacrosswindows">InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneenabledraggingofcontentfromdifferentdomainswithinwindows" id="internetexplorer-restrictedsiteszoneenabledraggingofcontentfromdifferentdomainswithinwindows">InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneenablemimesniffing" id="internetexplorer-restrictedsiteszoneenablemimesniffing">InternetExplorer/RestrictedSitesZoneEnableMIMESniffing</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneincludelocalpathwhenuploadingfilestoserver" id="internetexplorer-restrictedsiteszoneincludelocalpathwhenuploadingfilestoserver">InternetExplorer/RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneinitializeandscriptactivexcontrols" id="internetexplorer-restrictedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/RestrictedSitesZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszonejavapermissions" id="internetexplorer-restrictedsiteszonejavapermissions">InternetExplorer/RestrictedSitesZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszonelaunchingapplicationsandfilesiniframe" id="internetexplorer-restrictedsiteszonelaunchingapplicationsandfilesiniframe">InternetExplorer/RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszonelogonoptions" id="internetexplorer-restrictedsiteszonelogonoptions">InternetExplorer/RestrictedSitesZoneLogonOptions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszonenavigatewindowsandframes" id="internetexplorer-restrictedsiteszonenavigatewindowsandframes">InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFrames</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszonerunactivexcontrolsandplugins" id="internetexplorer-restrictedsiteszonerunactivexcontrolsandplugins">InternetExplorer/RestrictedSitesZoneRunActiveXControlsAndPlugins</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszonerunnetframeworkreliantcomponentssignedwithauthenticode" id="internetexplorer-restrictedsiteszonerunnetframeworkreliantcomponentssignedwithauthenticode">InternetExplorer/RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszonescriptactivexcontrolsmarkedsafeforscripting" id="internetexplorer-restrictedsiteszonescriptactivexcontrolsmarkedsafeforscripting">InternetExplorer/RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszonescriptingofjavaapplets" id="internetexplorer-restrictedsiteszonescriptingofjavaapplets">InternetExplorer/RestrictedSitesZoneScriptingOfJavaApplets</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneshowsecuritywarningforpotentiallyunsafefiles" id="internetexplorer-restrictedsiteszoneshowsecuritywarningforpotentiallyunsafefiles">InternetExplorer/RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneturnonprotectedmode" id="internetexplorer-restrictedsiteszoneturnonprotectedmode">InternetExplorer/RestrictedSitesZoneTurnOnProtectedMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-restrictedsiteszoneusepopupblocker" id="internetexplorer-restrictedsiteszoneusepopupblocker">InternetExplorer/RestrictedSitesZoneUsePopupBlocker</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-scriptedwindowsecurityrestrictionsinternetexplorerprocesses" id="internetexplorer-scriptedwindowsecurityrestrictionsinternetexplorerprocesses">InternetExplorer/ScriptedWindowSecurityRestrictionsInternetExplorerProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-searchproviderlist" id="internetexplorer-searchproviderlist">InternetExplorer/SearchProviderList</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-securityzonesuseonlymachinesettings" id="internetexplorer-securityzonesuseonlymachinesettings">InternetExplorer/SecurityZonesUseOnlyMachineSettings</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-specifyuseofactivexinstallerservice" id="internetexplorer-specifyuseofactivexinstallerservice">InternetExplorer/SpecifyUseOfActiveXInstallerService</a>
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
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszonedonotrunantimalwareagainstactivexcontrols" id="internetexplorer-trustedsiteszonedonotrunantimalwareagainstactivexcontrols">InternetExplorer/TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszoneinitializeandscriptactivexcontrols" id="internetexplorer-trustedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/TrustedSitesZoneInitializeAndScriptActiveXControls</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszonejavapermissions" id="internetexplorer-trustedsiteszonejavapermissions">InternetExplorer/TrustedSitesZoneJavaPermissions</a>
  </dd>
  <dd>
    <a href="./policy-csp-internetexplorer.md#internetexplorer-trustedsiteszonenavigatewindowsandframes" id="internetexplorer-trustedsiteszonenavigatewindowsandframes">InternetExplorer/TrustedSitesZoneNavigateWindowsAndFrames</a>
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
  <dd>
    <a href="./policy-csp-kerberos.md#kerberos-upnnamehints" id="kerberos-upnnamehints">Kerberos/UPNNameHints</a>
  </dd>
</dl>

### KioskBrowser policies

<dl>
  <dd>
    <a href="./policy-csp-kioskbrowser.md#kioskbrowser-blockedurlexceptions" id="kioskbrowser-blockedurlexceptions">KioskBrowser/BlockedUrlExceptions</a>
  </dd>
  <dd>
    <a href="./policy-csp-kioskbrowser.md#kioskbrowser-blockedurls" id="kioskbrowser-blockedurls">KioskBrowser/BlockedUrls</a>
  </dd>
  <dd>
    <a href="./policy-csp-kioskbrowser.md#kioskbrowser-defaulturl" id="kioskbrowser-defaulturl">KioskBrowser/DefaultURL</a>
  </dd>
  <dd>
    <a href="./policy-csp-kioskbrowser.md#kioskbrowser-enableendsessionbutton" id="kioskbrowser-enableendsessionbutton">KioskBrowser/EnableEndSessionButton</a>
  </dd>
  <dd>
    <a href="./policy-csp-kioskbrowser.md#kioskbrowser-enablehomebutton" id="kioskbrowser-enablehomebutton">KioskBrowser/EnableHomeButton</a>
  </dd>
  <dd>
    <a href="./policy-csp-kioskbrowser.md#kioskbrowser-enablenavigationbuttons" id="kioskbrowser-enablenavigationbuttons">KioskBrowser/EnableNavigationButtons</a>
  </dd>
  <dd>
    <a href="./policy-csp-kioskbrowser.md#kioskbrowser-restartonidletime" id="kioskbrowser-restartonidletime">KioskBrowser/RestartOnIdleTime</a>
  </dd>
</dl>

### LanmanWorkstation policies

<dl>
  <dd>
    <a href="./policy-csp-lanmanworkstation.md#lanmanworkstation-enableinsecureguestlogons" id="lanmanworkstation-enableinsecureguestlogons">LanmanWorkstation/EnableInsecureGuestLogons</a>
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

### LocalPoliciesSecurityOptions policies

<dl>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-accounts-blockmicrosoftaccounts" id="localpoliciessecurityoptions-accounts-blockmicrosoftaccounts">LocalPoliciesSecurityOptions/Accounts_BlockMicrosoftAccounts</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-accounts-limitlocalaccountuseofblankpasswordstoconsolelogononly" id="localpoliciessecurityoptions-accounts-limitlocalaccountuseofblankpasswordstoconsolelogononly">LocalPoliciesSecurityOptions/Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-accounts-renameadministratoraccount" id="localpoliciessecurityoptions-accounts-renameadministratoraccount">LocalPoliciesSecurityOptions/Accounts_RenameAdministratorAccount</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-accounts-renameguestaccount" id="localpoliciessecurityoptions-accounts-renameguestaccount">LocalPoliciesSecurityOptions/Accounts_RenameGuestAccount</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-devices-allowundockwithouthavingtologon" id="localpoliciessecurityoptions-devices-allowundockwithouthavingtologon">LocalPoliciesSecurityOptions/Devices_AllowUndockWithoutHavingToLogon</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-devices-allowedtoformatandejectremovablemedia" id="localpoliciessecurityoptions-devices-allowedtoformatandejectremovablemedia">LocalPoliciesSecurityOptions/Devices_AllowedToFormatAndEjectRemovableMedia</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-devices-preventusersfrominstallingprinterdriverswhenconnectingtosharedprinters" id="localpoliciessecurityoptions-devices-preventusersfrominstallingprinterdriverswhenconnectingtosharedprinters">LocalPoliciesSecurityOptions/Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-devices-restrictcdromaccesstolocallyloggedonuseronly" id="localpoliciessecurityoptions-devices-restrictcdromaccesstolocallyloggedonuseronly">LocalPoliciesSecurityOptions/Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-interactivelogon-displayuserinformationwhenthesessionislocked" id="localpoliciessecurityoptions-interactivelogon-displayuserinformationwhenthesessionislocked">LocalPoliciesSecurityOptions/InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-interactivelogon-donotdisplaylastsignedin" id="localpoliciessecurityoptions-interactivelogon-donotdisplaylastsignedin">LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayLastSignedIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-interactivelogon-donotdisplayusernameatsignin" id="localpoliciessecurityoptions-interactivelogon-donotdisplayusernameatsignin">LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayUsernameAtSignIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-interactivelogon-donotrequirectrlaltdel" id="localpoliciessecurityoptions-interactivelogon-donotrequirectrlaltdel">LocalPoliciesSecurityOptions/InteractiveLogon_DoNotRequireCTRLALTDEL</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-interactivelogon-machineinactivitylimit" id="localpoliciessecurityoptions-interactivelogon-machineinactivitylimit">LocalPoliciesSecurityOptions/InteractiveLogon_MachineInactivityLimit</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-interactivelogon-messagetextforusersattemptingtologon" id="localpoliciessecurityoptions-interactivelogon-messagetextforusersattemptingtologon">LocalPoliciesSecurityOptions/InteractiveLogon_MessageTextForUsersAttemptingToLogOn</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-interactivelogon-messagetitleforusersattemptingtologon" id="localpoliciessecurityoptions-interactivelogon-messagetitleforusersattemptingtologon">LocalPoliciesSecurityOptions/InteractiveLogon_MessageTitleForUsersAttemptingToLogOn</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-interactivelogon-smartcardremovalbehavior" id="localpoliciessecurityoptions-interactivelogon-smartcardremovalbehavior">LocalPoliciesSecurityOptions/InteractiveLogon_SmartCardRemovalBehavior</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-microsoftnetworkclient-digitallysigncommunicationsifserveragrees" id="localpoliciessecurityoptions-microsoftnetworkclient-digitallysigncommunicationsifserveragrees">LocalPoliciesSecurityOptions/MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-microsoftnetworkclient-sendunencryptedpasswordtothirdpartysmbservers" id="localpoliciessecurityoptions-microsoftnetworkclient-sendunencryptedpasswordtothirdpartysmbservers">LocalPoliciesSecurityOptions/MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-microsoftnetworkserver-digitallysigncommunicationsalways" id="localpoliciessecurityoptions-microsoftnetworkserver-digitallysigncommunicationsalways">LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsAlways</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-microsoftnetworkserver-digitallysigncommunicationsifclientagrees" id="localpoliciessecurityoptions-microsoftnetworkserver-digitallysigncommunicationsifclientagrees">LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networkaccess-donotallowanonymousenumerationofsamaccounts" id="localpoliciessecurityoptions-networkaccess-donotallowanonymousenumerationofsamaccounts">LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networkaccess-donotallowanonymousenumerationofsamaccountsandshares" id="localpoliciessecurityoptions-networkaccess-donotallowanonymousenumerationofsamaccountsandshares">LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networkaccess-restrictanonymousaccesstonamedpipesandshares" id="localpoliciessecurityoptions-networkaccess-restrictanonymousaccesstonamedpipesandshares">LocalPoliciesSecurityOptions/NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networkaccess-restrictclientsallowedtomakeremotecallstosam" id="localpoliciessecurityoptions-networkaccess-restrictclientsallowedtomakeremotecallstosam">LocalPoliciesSecurityOptions/NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networksecurity-allowlocalsystemtousecomputeridentityforntlm" id="localpoliciessecurityoptions-networksecurity-allowlocalsystemtousecomputeridentityforntlm">LocalPoliciesSecurityOptions/NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networksecurity-allowpku2uauthenticationrequests" id="localpoliciessecurityoptions-networksecurity-allowpku2uauthenticationrequests">LocalPoliciesSecurityOptions/NetworkSecurity_AllowPKU2UAuthenticationRequests</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networksecurity-donotstorelanmanagerhashvalueonnextpasswordchange" id="localpoliciessecurityoptions-networksecurity-donotstorelanmanagerhashvalueonnextpasswordchange">LocalPoliciesSecurityOptions/NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networksecurity-lanmanagerauthenticationlevel" id="localpoliciessecurityoptions-networksecurity-lanmanagerauthenticationlevel">LocalPoliciesSecurityOptions/NetworkSecurity_LANManagerAuthenticationLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networksecurity-minimumsessionsecurityforntlmsspbasedclients" id="localpoliciessecurityoptions-networksecurity-minimumsessionsecurityforntlmsspbasedclients">LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networksecurity-minimumsessionsecurityforntlmsspbasedservers" id="localpoliciessecurityoptions-networksecurity-minimumsessionsecurityforntlmsspbasedservers">LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networksecurity-restrictntlm-addremoteserverexceptionsforntlmauthentication" id="localpoliciessecurityoptions-networksecurity-restrictntlm-addremoteserverexceptionsforntlmauthentication">LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networksecurity-restrictntlm-auditincomingntlmtraffic" id="localpoliciessecurityoptions-networksecurity-restrictntlm-auditincomingntlmtraffic">LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networksecurity-restrictntlm-incomingntlmtraffic" id="localpoliciessecurityoptions-networksecurity-restrictntlm-incomingntlmtraffic">LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-networksecurity-restrictntlm-outgoingntlmtraffictoremoteservers" id="localpoliciessecurityoptions-networksecurity-restrictntlm-outgoingntlmtraffictoremoteservers">LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-shutdown-allowsystemtobeshutdownwithouthavingtologon" id="localpoliciessecurityoptions-shutdown-allowsystemtobeshutdownwithouthavingtologon">LocalPoliciesSecurityOptions/Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-shutdown-clearvirtualmemorypagefile" id="localpoliciessecurityoptions-shutdown-clearvirtualmemorypagefile">LocalPoliciesSecurityOptions/Shutdown_ClearVirtualMemoryPageFile</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-useraccountcontrol-allowuiaccessapplicationstopromptforelevation" id="localpoliciessecurityoptions-useraccountcontrol-allowuiaccessapplicationstopromptforelevation">LocalPoliciesSecurityOptions/UserAccountControl_AllowUIAccessApplicationsToPromptForElevation</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-useraccountcontrol-behavioroftheelevationpromptforadministrators" id="localpoliciessecurityoptions-useraccountcontrol-behavioroftheelevationpromptforadministrators">LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForAdministrators</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-useraccountcontrol-behavioroftheelevationpromptforstandardusers" id="localpoliciessecurityoptions-useraccountcontrol-behavioroftheelevationpromptforstandardusers">LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-useraccountcontrol-detectapplicationinstallationsandpromptforelevation" id="localpoliciessecurityoptions-useraccountcontrol-detectapplicationinstallationsandpromptforelevation">LocalPoliciesSecurityOptions/UserAccountControl_DetectApplicationInstallationsAndPromptForElevation</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-useraccountcontrol-onlyelevateexecutablefilesthataresignedandvalidated" id="localpoliciessecurityoptions-useraccountcontrol-onlyelevateexecutablefilesthataresignedandvalidated">LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-useraccountcontrol-onlyelevateuiaccessapplicationsthatareinstalledinsecurelocations" id="localpoliciessecurityoptions-useraccountcontrol-onlyelevateuiaccessapplicationsthatareinstalledinsecurelocations">LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-useraccountcontrol-runalladministratorsinadminapprovalmode" id="localpoliciessecurityoptions-useraccountcontrol-runalladministratorsinadminapprovalmode">LocalPoliciesSecurityOptions/UserAccountControl_RunAllAdministratorsInAdminApprovalMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-useraccountcontrol-switchtothesecuredesktopwhenpromptingforelevation" id="localpoliciessecurityoptions-useraccountcontrol-switchtothesecuredesktopwhenpromptingforelevation">LocalPoliciesSecurityOptions/UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-useraccountcontrol-useadminapprovalmode" id="localpoliciessecurityoptions-useraccountcontrol-useadminapprovalmode">LocalPoliciesSecurityOptions/UserAccountControl_UseAdminApprovalMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-localpoliciessecurityoptions.md#localpoliciessecurityoptions-useraccountcontrol-virtualizefileandregistrywritefailurestoperuserlocations" id="localpoliciessecurityoptions-useraccountcontrol-virtualizefileandregistrywritefailurestoperuserlocations">LocalPoliciesSecurityOptions/UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations</a>
  </dd>
</dl>

### LocalUsersAndGroups policies

<dl>
  <dd>
    <a href="./policy-csp-localusersandgroups.md#localusersandgroups-configure" id="localusersandgroups-configure">LocalUsersAndGroups/Configure</a>
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
    <a href="./policy-csp-messaging.md#messaging-allowmessagesync" id="messaging-allowmessagesync">Messaging/AllowMessageSync</a>
  </dd>
</dl>

### MixedReality policies  

<dl>
  <dd>
    <a href="./policy-csp-mixedreality.md#mixedreality-aadgroupmembershipcachevalidityindays" id="mixedreality-aadgroupmembershipcachevalidityindays">MixedReality/AADGroupMembershipCacheValidityInDays</a>
  </dd>
  <dd>
    <a href="./policy-csp-mixedreality.md#mixedreality-brightnessbuttondisabled" id="mixedreality-brightnessbuttondisabled">MixedReality/BrightnessButtonDisabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-mixedreality.md#mixedreality-fallbackdiagnostics" id="mixedreality-fallbackdiagnostics">MixedReality/FallbackDiagnostics</a>
  </dd>
  <dd>
    <a href="./policy-csp-mixedreality.md#mixedreality-microphonedisabled" id="mixedreality-microphonedisabled">MixedReality/MicrophoneDisabled</a>
  </dd>
  <dd>
    <a href="./policy-csp-mixedreality.md#mixedreality-volumebuttondisabled" id="mixedreality-volumebuttondisabled">MixedReality/VolumeButtonDisabled</a>
  </dd>
</dl>

### MSSecurityGuide policies

<dl>
  <dd>
    <a href="./policy-csp-mssecurityguide.md#mssecurityguide-applyuacrestrictionstolocalaccountsonnetworklogon" id="mssecurityguide-applyuacrestrictionstolocalaccountsonnetworklogon">MSSecurityGuide/ApplyUACRestrictionsToLocalAccountsOnNetworkLogon</a>
  </dd>
  <dd>
    <a href="./policy-csp-mssecurityguide.md#mssecurityguide-configuresmbv1clientdriver" id="mssecurityguide-configuresmbv1clientdriver">MSSecurityGuide/ConfigureSMBV1ClientDriver</a>
  </dd>
  <dd>
    <a href="./policy-csp-mssecurityguide.md#mssecurityguide-configuresmbv1server" id="mssecurityguide-configuresmbv1server">MSSecurityGuide/ConfigureSMBV1Server</a>
  </dd>
  <dd>
    <a href="./policy-csp-mssecurityguide.md#mssecurityguide-enablestructuredexceptionhandlingoverwriteprotection" id="mssecurityguide-enablestructuredexceptionhandlingoverwriteprotection">MSSecurityGuide/EnableStructuredExceptionHandlingOverwriteProtection</a>
  </dd>
  <dd>
    <a href="./policy-csp-mssecurityguide.md#mssecurityguide-turnonwindowsdefenderprotectionagainstpotentiallyunwantedapplications" id="mssecurityguide-turnonwindowsdefenderprotectionagainstpotentiallyunwantedapplications">MSSecurityGuide/TurnOnWindowsDefenderProtectionAgainstPotentiallyUnwantedApplications</a>
  </dd>
  <dd>
    <a href="./policy-csp-mssecurityguide.md#mssecurityguide-wdigestauthentication" id="mssecurityguide-wdigestauthentication">MSSecurityGuide/WDigestAuthentication</a>
  </dd>
</dl>

### MSSLegacy policies

<dl>
  <dd>
    <a href="./policy-csp-msslegacy.md#msslegacy-allowicmpredirectstooverrideospfgeneratedroutes" id="msslegacy-allowicmpredirectstooverrideospfgeneratedroutes">MSSLegacy/AllowICMPRedirectsToOverrideOSPFGeneratedRoutes</a>
  </dd>
  <dd>
    <a href="./policy-csp-msslegacy.md#msslegacy-allowthecomputertoignorenetbiosnamereleaserequestsexceptfromwinsservers" id="msslegacy-allowthecomputertoignorenetbiosnamereleaserequestsexceptfromwinsservers">MSSLegacy/AllowTheComputerToIgnoreNetBIOSNameReleaseRequestsExceptFromWINSServers</a>
  </dd>
  <dd>
    <a href="./policy-csp-msslegacy.md#msslegacy-ipsourceroutingprotectionlevel" id="msslegacy-ipsourceroutingprotectionlevel">MSSLegacy/IPSourceRoutingProtectionLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-msslegacy.md#msslegacy-ipv6sourceroutingprotectionlevel" id="msslegacy-ipv6sourceroutingprotectionlevel">MSSLegacy/IPv6SourceRoutingProtectionLevel</a>
  </dd>
</dl>

### Multitasking policies  

<dl>
  <dd>
    <a href="./policy-csp-multitasking.md#multitasking-browseralttabblowout" id="multitasking-browseralttabblowout">Multitasking/BrowserAltTabBlowout</a>
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
    <a href="./policy-csp-notifications.md#notifications-disallowcloudnotification" id="notifications-disallowcloudnotification">Notifications/DisallowCloudNotification</a>
  </dd>
  <dd>
    <a href="./policy-csp-notifications.md#notifications-disallownotificationmirroring" id="notifications-disallownotificationmirroring">Notifications/DisallowNotificationMirroring</a>
  </dd>
  <dd>
    <a href="./policy-csp-notifications.md#notifications-disallowtilenotification" id="notifications-disallowtilenotification">Notifications/DisallowTileNotification</a>
  </dd>
</dl>

### Power policies

<dl>
  <dd>
    <a href="./policy-csp-power.md#power-allowstandbystateswhensleepingonbattery" id="power-allowstandbystateswhensleepingonbattery">Power/AllowStandbyStatesWhenSleepingOnBattery</a>
  </dd>
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
    <a href="./policy-csp-power.md#power-energysaverbatterythresholdonbattery"
    id="power-energysaverbatterythresholdonbattery">Power/EnergySaverBatteryThresholdOnBattery</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-energysaverbatterythresholdpluggedin"
    id="power-energysaverbatterythresholdpluggedin">Power/EnergySaverBatteryThresholdPluggedIn</a>
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
    <a href="./policy-csp-power.md#power-selectlidcloseactiononbattery"
    id="power-selectlidcloseactiononbattery">Power/SelectLidCloseActionOnBattery</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-selectlidcloseactionpluggedin"
    id="power-selectlidcloseactionpluggedin">Power/SelectLidCloseActionPluggedIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-selectpowerbuttonactiononbattery"
    id="power-selectpowerbuttonactiononbattery">Power/SelectPowerButtonActionOnBattery</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-selectpowerbuttonactionpluggedin"
    id="power-selectpowerbuttonactionpluggedin">Power/SelectPowerButtonActionPluggedIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-selectsleepbuttonactiononbattery"
    id="power-selectsleepbuttonactiononbattery">Power/SelectSleepButtonActionOnBattery</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-selectsleepbuttonactionpluggedin"
    id="power-selectsleepbuttonactionpluggedin">Power/SelectSleepButtonActionPluggedIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-standbytimeoutonbattery" id="power-standbytimeoutonbattery">Power/StandbyTimeoutOnBattery</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-standbytimeoutpluggedin" id="power-standbytimeoutpluggedin">Power/StandbyTimeoutPluggedIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-turnoffhybridsleeponbattery"
    id="power-turnoffhybridsleeponbattery">Power/TurnOffHybridSleepOnBattery</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-turnoffhybridsleeppluggedin"
    id="power-turnoffhybridsleeppluggedin">Power/TurnOffHybridSleepPluggedIn</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-unattendedsleeptimeoutonbattery"
    id="power-unattendedsleeptimeoutonbattery">Power/UnattendedSleepTimeoutOnBattery</a>
  </dd>
  <dd>
    <a href="./policy-csp-power.md#power-unattendedsleeptimeoutpluggedin"
    id="power-unattendedsleeptimeoutpluggedin">Power/UnattendedSleepTimeoutPluggedIn</a>
  </dd>
</dl>

### Printers policies

<dl>
  <dd>
    <a href="./policy-csp-printers.md#printers-pointandprintrestrictions" id="printers-pointandprintrestrictions">Printers/PointAndPrintRestrictions</a>
  </dd>
  <dd>
    <a href="./policy-csp-printers.md#printers-pointandprintrestrictions-user" id="printers-pointandprintrestrictions-user">Printers/PointAndPrintRestrictions_User</a>
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
    <a href="./policy-csp-privacy.md#privacy-allowcrossdeviceclipboard" id="privacy-allowcrossdeviceclipboard">Privacy/AllowCrossDeviceClipboard</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-allowinputpersonalization" id="privacy-allowinputpersonalization">Privacy/AllowInputPersonalization</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-disableadvertisingid" id="privacy-disableadvertisingid">Privacy/DisableAdvertisingId</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-disableprivacyexperience" id="privacy-disableprivacyexperience">Privacy/DisablePrivacyExperience</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-enableactivityfeed" id="privacy-enableactivityfeed">Privacy/EnableActivityFeed</a>
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
    <a href="./policy-csp-privacy.md#privacy-letappsaccessbackgroundspatialperception"id="privacy-letappsaccessbackgroundspatialperception">Privacy/LetAppsAccessBackgroundSpatialPerception</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessbackgroundspatialperception-forceallowtheseapps"id="privacy-letappsaccessbackgroundspatialperception-forceallowtheseapps">Privacy/LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessbackgroundspatialperception-forcedenytheseapps"id="privacy-letappsaccessbackgroundspatialperception-forcedenytheseapps">Privacy/LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessbackgroundspatialperception-userincontroloftheseapps"id="privacy-letappsaccessbackgroundspatialperception-userincontroloftheseapps">Privacy/LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps</a>
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
    <a href="./policy-csp-privacy.md#privacy-letappsaccessgazeinput" id="privacy-letappsaccessgazeinput">Privacy/LetAppsAccessGazeInput</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessgazeinput-forceallowtheseapps" id="privacy-letappsaccessgazeinput-forceallowtheseapps">Privacy/LetAppsAccessGazeInput_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessgazeinput-forcedenytheseapps" id="privacy-letappsaccessgazeinput-forcedenytheseapps">Privacy/LetAppsAccessGazeInput_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsaccessgazeinput-userincontroloftheseapps" id="privacy-letappsaccessgazeinput-userincontroloftheseapps">Privacy/LetAppsAccessGazeInput_UserInControlOfTheseApps</a>
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
    <a href="./policy-csp-privacy.md#privacy-letappsactivatewithvoice" id="privacy-letappsactivatewithvoice">Privacy/LetAppsActivateWithVoice</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-letappsactivatewithvoiceabovelock" id="privacy-letappsactivatewithvoiceabovelock">Privacy/LetAppsActivateWithVoiceAboveLock</a>
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
  <dd>
    <a href="./policy-csp-privacy.md#privacy-publishuseractivities" id="privacy-publishuseractivities">Privacy/PublishUserActivities</a>
  </dd>
  <dd>
    <a href="./policy-csp-privacy.md#privacy-uploaduseractivities" id="privacy-uploaduseractivities">Privacy/UploadUserActivities</a>
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
    <a href="./policy-csp-remotemanagement.md#remotemanagement-allowbasicauthentication-client" id="remotemanagement-allowbasicauthentication-client">RemoteManagement/AllowBasicAuthentication_Client</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-allowbasicauthentication-service" id="remotemanagement-allowbasicauthentication-service">RemoteManagement/AllowBasicAuthentication_Service</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-allowcredsspauthenticationclient" id="remotemanagement-allowcredsspauthenticationclient">RemoteManagement/AllowCredSSPAuthenticationClient</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-allowcredsspauthenticationservice" id="remotemanagement-allowcredsspauthenticationservice">RemoteManagement/AllowCredSSPAuthenticationService</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-allowremoteservermanagement" id="remotemanagement-allowremoteservermanagement">RemoteManagement/AllowRemoteServerManagement</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-allowunencryptedtraffic-client" id="remotemanagement-allowunencryptedtraffic-client">RemoteManagement/AllowUnencryptedTraffic_Client</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-allowunencryptedtraffic-service" id="remotemanagement-allowunencryptedtraffic-service">RemoteManagement/AllowUnencryptedTraffic_Service</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-disallowdigestauthentication" id="remotemanagement-disallowdigestauthentication">RemoteManagement/DisallowDigestAuthentication</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-disallownegotiateauthenticationclient" id="remotemanagement-disallownegotiateauthenticationclient">RemoteManagement/DisallowNegotiateAuthenticationClient</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-disallownegotiateauthenticationservice" id="remotemanagement-disallownegotiateauthenticationservice">RemoteManagement/DisallowNegotiateAuthenticationService</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-disallowstoringofrunascredentials" id="remotemanagement-disallowstoringofrunascredentials">RemoteManagement/DisallowStoringOfRunAsCredentials</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-specifychannelbindingtokenhardeninglevel" id="remotemanagement-specifychannelbindingtokenhardeninglevel">RemoteManagement/SpecifyChannelBindingTokenHardeningLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-trustedhosts" id="remotemanagement-trustedhosts">RemoteManagement/TrustedHosts</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-turnoncompatibilityhttplistener" id="remotemanagement-turnoncompatibilityhttplistener">RemoteManagement/TurnOnCompatibilityHTTPListener</a>
  </dd>
  <dd>
    <a href="./policy-csp-remotemanagement.md#remotemanagement-turnoncompatibilityhttpslistener" id="remotemanagement-turnoncompatibilityhttpslistener">RemoteManagement/TurnOnCompatibilityHTTPSListener</a>
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
    <a href="./policy-csp-remoteshell.md#remoteshell-allowremoteshellaccess" id="remoteshell-allowremoteshellaccess">RemoteShell/AllowRemoteShellAccess</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteshell.md#remoteshell-maxconcurrentusers" id="remoteshell-maxconcurrentusers">RemoteShell/MaxConcurrentUsers</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteshell.md#remoteshell-specifyidletimeout" id="remoteshell-specifyidletimeout">RemoteShell/SpecifyIdleTimeout</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteshell.md#remoteshell-specifymaxmemory" id="remoteshell-specifymaxmemory">RemoteShell/SpecifyMaxMemory</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteshell.md#remoteshell-specifymaxprocesses" id="remoteshell-specifymaxprocesses">RemoteShell/SpecifyMaxProcesses</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteshell.md#remoteshell-specifymaxremoteshells" id="remoteshell-specifymaxremoteshells">RemoteShell/SpecifyMaxRemoteShells</a>
  </dd>
  <dd>
    <a href="./policy-csp-remoteshell.md#remoteshell-specifyshelltimeout" id="remoteshell-specifyshelltimeout">RemoteShell/SpecifyShellTimeout</a>
  </dd>
</dl>

### RestrictedGroups policies

<dl>
  <dd>
    <a href="./policy-csp-restrictedgroups.md#restrictedgroups-configuregroupmembership" id="restrictedgroups-configuregroupmembership">RestrictedGroups/ConfigureGroupMembership</a>
  </dd>
</dl>

### Search policies

<dl>
  <dd>
    <a href="./policy-csp-search.md#search-allowcloudsearch" id="search-allowcloudsearch">Search/AllowCloudSearch</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-allowfindmyfiles" id="search-allowfindmyfiles">Search/AllowFindMyFiles</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-allowindexingencryptedstoresoritems" id="search-allowindexingencryptedstoresoritems">Search/AllowIndexingEncryptedStoresOrItems</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-allowsearchtouselocation" id="search-allowsearchtouselocation">Search/AllowSearchToUseLocation</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-allowstoringimagesfromvisionsearch" id="search-allowstoringimagesfromvisionsearch">Search/AllowStoringImagesFromVisionSearch</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-allowusingdiacritics" id="search-allowusingdiacritics">Search/AllowUsingDiacritics</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-allowwindowsindexer" id="search-allowwindowsindexer">Search/AllowWindowsIndexer</a>
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
    <a href="./policy-csp-search.md#search-donotusewebresults" id="search-donotusewebresults">Search/DoNotUseWebResults</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-preventindexinglowdiskspacemb" id="search-preventindexinglowdiskspacemb">Search/PreventIndexingLowDiskSpaceMB</a>
  </dd>
  <dd>
    <a href="./policy-csp-search.md#search-preventremotequeries" id="search-preventremotequeries">Search/PreventRemoteQueries</a>
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
    <a href="./policy-csp-security.md#security-allowremoveprovisioningpackage" id="security-allowremoveprovisioningpackage">Security/AllowRemoveProvisioningPackage</a>
  </dd>
  <dd>
    <a href="./policy-csp-security.md#security-cleartpmifnotready" id="security-cleartpmifnotready">Security/ClearTPMIfNotReady</a>
  </dd>
  <dd>
    <a href="./policy-csp-security.md#security-configurewindowspasswords" id="security-configurewindowspasswords">Security/ConfigureWindowsPasswords</a>
  </dd>
  <dd>
    <a href="./policy-csp-security.md#security-preventautomaticdeviceencryptionforazureadjoineddevices" id="security-preventautomaticdeviceencryptionforazureadjoineddevices">Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices</a>
  </dd>
  <dd>
    <a href="./policy-csp-security.md#security-recoveryenvironmentauthentication" id="security-recoveryenvironmentauthentication">Security/RecoveryEnvironmentAuthentication</a>
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

### ServiceControlManager policies
<dl>
  <dd>
    <a href="./policy-csp-servicecontrolmanager.md#servicecontrolmanager-svchostprocessmitigation" id="servicecontrolmanager-svchostprocessmitigation">ServiceControlManager/SvchostProcessMitigation</a>
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
    <a href="./policy-csp-settings.md#settings-allowlanguage" id="settings-allowlanguage">Settings/AllowLanguage</a>
  </dd>
  <dd>
    <a href="./policy-csp-settings.md#settings-allowonlinetips" id="settings-allowonlinetips">Settings/AllowOnlineTips</a>
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

### Windows Defender SmartScreen policies

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
    <a href="./policy-csp-start.md#start-disablecontextmenus" id="start-disablecontextmenus">Start/DisableContextMenus</a>
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
    <a href="./policy-csp-start.md#start-hidepeoplebar" id="start-hidepeoplebar">Start/HidePeopleBar</a>
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
    <a href="./policy-csp-storage.md#storage-allowdiskhealthmodelupdates" id="storage-allowdiskhealthmodelupdates">Storage/AllowDiskHealthModelUpdates</a>
  </dd>
  <dd>
    <a href="./policy-csp-storage.md#storage-allowstoragesenseglobal"id="storage-allowstoragesenseglobal">Storage/AllowStorageSenseGlobal</a>
  </dd>
  <dd>
    <a href="./policy-csp-storage.md#storage-allowstoragesensetemporaryfilescleanup"id="storage-allowstoragesensetemporaryfilescleanup">Storage/AllowStorageSenseTemporaryFilesCleanup</a>
  </dd>
  <dd>
    <a href="./policy-csp-storage.md#storage-configstoragesensecloudcontentdehydrationthreshold"id="storage-configstoragesensecloudcontentdehydrationthreshold">Storage/ConfigStorageSenseCloudContentDehydrationThreshold</a>
  </dd>
  <dd>
    <a href="./policy-csp-storage.md#storage-configstoragesensedownloadscleanupthreshold"id="storage-configstoragesensedownloadscleanupthreshold">Storage/ConfigStorageSenseDownloadsCleanupThreshold</a>
  </dd>
  <dd>
    <a href="./policy-csp-storage.md#storage-configstoragesenseglobalcadence"id="storage-configstoragesenseglobalcadence">Storage/ConfigStorageSenseGlobalCadence</a>
  </dd>
  <dd>
    <a href="./policy-csp-storage.md#storage-configstoragesenserecyclebincleanupthreshold"id="storage-configstoragesenserecyclebincleanupthreshold">Storage/ConfigStorageSenseRecycleBinCleanupThreshold</a>
  <dd>
    <a href="./policy-csp-storage.md#storage-enhancedstoragedevices" id="storage-enhancedstoragedevices">Storage/EnhancedStorageDevices</a>
  </dd>
  <dd>
    <a href="./policy-csp-storage.md#storage-removablediskdenywriteaccess" id="storage-removablediskdenywriteaccess">Storage/RemovableDiskDenyWriteAccess</a>
  </dd>
</dl>

### System policies

<dl>
  <dd>
    <a href="./policy-csp-system.md#system-allowbuildpreview" id="system-allowbuildpreview">System/AllowBuildPreview</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-allowcommercialdatapipeline" id="system-allowcommercialdatapipeline">System/AllowCommercialDataPipeline</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-allowdevicenameindiagnosticdata" id="system-allowdevicenameindiagnosticdata">System/AllowDeviceNameInDiagnosticData</a>
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
    <a href="./policy-csp-system.md#system-configuremicrosoft365uploadendpoint" id="system-configuremicrosoft365uploadendpoint">System/ConfigureMicrosoft365UploadEndpoint</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-configuretelemetryoptinchangenotification" id="system-configuretelemetryoptinchangenotification">System/ConfigureTelemetryOptInChangeNotification</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-configuretelemetryoptinsettingsux" id="system-configuretelemetryoptinsettingsux">System/ConfigureTelemetryOptInSettingsUx</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-disabledevicedelete" id="system-disabledevicedelete">System/DisableDeviceDelete</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-disablediagnosticdataviewer" id="system-disablediagnosticdataviewer">System/DisableDiagnosticDataViewer</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-disableenterpriseauthproxy" id="system-disableenterpriseauthproxy">System/DisableEnterpriseAuthProxy</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-disableonedrivefilesync" id="system-disableonedrivefilesync">System/DisableOneDriveFileSync</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-disablesystemrestore" id="system-disablesystemrestore">System/DisableSystemRestore</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-feedbackhubalwayssavediagnosticslocally" id="system-feedbackhubalwayssavediagnosticslocally">System/FeedbackHubAlwaysSaveDiagnosticsLocally</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-limitenhanceddiagnosticdatawindowsanalytics" id="system-limitenhanceddiagnosticdatawindowsanalytics">System/LimitEnhancedDiagnosticDataWindowsAnalytics</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-telemetryproxy" id="system-telemetryproxy">System/TelemetryProxy</a>
  </dd>
  <dd>
    <a href="./policy-csp-system.md#system-turnofffilehistory" id="system-turnofffilehistory">System/TurnOffFileHistory</a>
  </dd>
</dl>

### SystemServices policies

<dl>
  <dd>
    <a href="./policy-csp-systemservices.md#systemservices-configurehomegrouplistenerservicestartupmode" id="systemservices-configurehomegrouplistenerservicestartupmode">SystemServices/ConfigureHomeGroupListenerServiceStartupMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-systemservices.md#systemservices-configurehomegroupproviderservicestartupmode" id="systemservices-configurehomegroupproviderservicestartupmode">SystemServices/ConfigureHomeGroupProviderServiceStartupMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-systemservices.md#systemservices-configurexboxaccessorymanagementservicestartupmode" id="systemservices-configurexboxaccessorymanagementservicestartupmode">SystemServices/ConfigureXboxAccessoryManagementServiceStartupMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-systemservices.md#systemservices-configurexboxliveauthmanagerservicestartupmode" id="systemservices-configurexboxliveauthmanagerservicestartupmode">SystemServices/ConfigureXboxLiveAuthManagerServiceStartupMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-systemservices.md#systemservices-configurexboxlivegamesaveservicestartupmode" id="systemservices-configurexboxlivegamesaveservicestartupmode">SystemServices/ConfigureXboxLiveGameSaveServiceStartupMode</a>
  </dd>
  <dd>
    <a href="./policy-csp-systemservices.md#systemservices-configurexboxlivenetworkingservicestartupmode" id="systemservices-configurexboxlivenetworkingservicestartupmode">SystemServices/ConfigureXboxLiveNetworkingServiceStartupMode</a>
  </dd>
</dl>

### TaskManager policies

<dl>
  <dd>
    <a href="./policy-csp-taskmanager.md#taskmanager-allowendtask" id="taskmanager-allowendtask">TaskManager/AllowEndTask</a>
  </dd>
</dl>

### TaskScheduler policies

<dl>
  <dd>
    <a href="./policy-csp-taskscheduler.md#taskscheduler-enablexboxgamesavetask" id="taskscheduler-enablexboxgamesavetask">TaskScheduler/EnableXboxGameSaveTask</a>
  </dd>
</dl>

### TextInput policies

<dl>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-allowhardwarekeyboardtextsuggestions" id="textinput-allowhardwarekeyboardtextsuggestions">TextInput/AllowHardwareKeyboardTextSuggestions</a>
  </dd>
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
    <a href="./policy-csp-textinput.md#textinput-allowlinguisticdatacollection" id="textinput-allowlinguisticdatacollection">TextInput/AllowLinguisticDataCollection</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-configurejapaneseimeversion"id="textinput-configurejapaneseimeversion">TextInput/ConfigureJapaneseIMEVersion</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-configuresimplifiedchineseimeversion"id="textinput-configuresimplifiedchineseimeversion">TextInput/ConfigureSimplifiedChineseIMEVersion</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-configuretraditionalchineseimeversion"id="textinput-configuretraditionalchineseimeversion">TextInput/ConfigureTraditionalChineseIMEVersion</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-enabletouchkeyboardautoinvokeindesktopmode" id="textinput-enabletouchkeyboardautoinvokeindesktopmode">TextInput/EnableTouchKeyboardAutoInvokeInDesktopMode</a>
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
  <dd>
    <a href="./policy-csp-textinput.md#textinput-forcetouchkeyboarddockedstate" id="textinput-forcetouchkeyboarddockedstate">TextInput/ForceTouchKeyboardDockedState</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-touchkeyboarddictationbuttonavailability" id="textinput-touchkeyboarddictationbuttonavailability">TextInput/TouchKeyboardDictationButtonAvailability</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-touchkeyboardemojibuttonavailability" id="textinput-touchkeyboardemojibuttonavailability">TextInput/TouchKeyboardEmojiButtonAvailability</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-touchkeyboardfullmodeavailability" id="textinput-touchkeyboardfullmodeavailability">TextInput/TouchKeyboardFullModeAvailability</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-touchkeyboardhandwritingmodeavailability" id="textinput-touchkeyboardhandwritingmodeavailability">TextInput/TouchKeyboardHandwritingModeAvailability</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-touchkeyboardnarrowmodeavailability" id="textinput-touchkeyboardnarrowmodeavailability">TextInput/TouchKeyboardNarrowModeAvailability</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-touchkeyboardsplitmodeavailability" id="textinput-touchkeyboardsplitmodeavailability">TextInput/TouchKeyboardSplitModeAvailability</a>
  </dd>
  <dd>
    <a href="./policy-csp-textinput.md#textinput-touchkeyboardwidemodeavailability" id="textinput-touchkeyboardwidemodeavailability">TextInput/TouchKeyboardWideModeAvailability</a>
  </dd>
</dl>

### TimeLanguageSettings policies

<dl>
  <dd>
    <a href="./policy-csp-timelanguagesettings.md#timelanguagesettings-configuretimezone" id="timelanguagesettings-configuretimezone">TimeLanguageSettings/ConfigureTimeZone</a>
  </dd>
</dl>

### Troubleshooting policies

<dl>
   <dd>
    <a href="./policy-csp-troubleshooting.md#troubleshooting-allowrecommendations" id="troubleshooting-allowrecommendations">Troubleshooting/AllowRecommendations</a>
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
    <a href="./policy-csp-update.md#update-allowautowindowsupdatedownloadovermeterednetwork" id="update-allowautowindowsupdatedownloadovermeterednetwork">Update/AllowAutoWindowsUpdateDownloadOverMeteredNetwork</a>
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
    <a href="./policy-csp-update.md#update-autorestartdeadlineperiodindaysforfeatureupdates" id="update-autorestartdeadlineperiodindaysforfeatureupdates">Update/AutoRestartDeadlinePeriodInDaysForFeatureUpdates</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-autorestartnotificationschedule" id="update-autorestartnotificationschedule">Update/AutoRestartNotificationSchedule</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-autorestartrequirednotificationdismissal" id="update-autorestartrequirednotificationdismissal">Update/AutoRestartRequiredNotificationDismissal</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-automaticmaintenancewakeup" id="update-automaticmaintenancewakeup">Update/AutomaticMaintenanceWakeUp</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-branchreadinesslevel" id="update-branchreadinesslevel">Update/BranchReadinessLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-configuredeadlineforfeatureupdates" id="update-configuredeadlineforfeatureupdates">Update/ConfigureDeadlineForFeatureUpdates</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-configuredeadlineforqualityupdates" id="update-configuredeadlineforqualityupdates">Update/ConfigureDeadlineForQualityUpdates</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-configuredeadlinegraceperiod" id="update-configuredeadlinegraceperiod">Update/ConfigureDeadlineGracePeriod</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-configuredeadlinenoautoreboot" id="update-configuredeadlinenoautoreboot">Update/ConfigureDeadlineNoAutoReboot</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-configurefeatureupdateuninstallperiod" id="update-configurefeatureupdateuninstallperiod">Update/ConfigureFeatureUpdateUninstallPeriod</a>
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
    <a href="./policy-csp-update.md#update-disabledualscan" id="update-disabledualscan">Update/DisableDualScan</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-disablewufbsafeguards" id="update-disablewufbsafeguards">Update/DisableWUfBSafeguards</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-engagedrestartdeadline" id="update-engagedrestartdeadline">Update/EngagedRestartDeadline</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-engagedrestartdeadlineforfeatureupdates" id="update-engagedrestartdeadlineforfeatureupdates">Update/EngagedRestartDeadlineForFeatureUpdates</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-engagedrestartsnoozeschedule" id="update-engagedrestartsnoozeschedule">Update/EngagedRestartSnoozeSchedule</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-engagedrestartsnoozescheduleforfeatureupdates" id="update-engagedrestartsnoozescheduleforfeatureupdates">Update/EngagedRestartSnoozeScheduleForFeatureUpdates</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-engagedrestarttransitionschedule" id="update-engagedrestarttransitionschedule">Update/EngagedRestartTransitionSchedule</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-engagedrestarttransitionscheduleforfeatureupdates" id="update-engagedrestarttransitionscheduleforfeatureupdates">Update/EngagedRestartTransitionScheduleForFeatureUpdates</a>
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
    <a href="./policy-csp-update.md#update-managepreviewbuilds" id="update-managepreviewbuilds">Update/ManagePreviewBuilds</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-pausedeferrals" id="update-pausedeferrals">Update/PauseDeferrals</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-pausefeatureupdates" id="update-pausefeatureupdates">Update/PauseFeatureUpdates</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-pausefeatureupdatesstarttime" id="update-pausefeatureupdatesstarttime">Update/PauseFeatureUpdatesStartTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-pausequalityupdates" id="update-pausequalityupdates">Update/PauseQualityUpdates</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-pausequalityupdatesstarttime" id="update-pausequalityupdatesstarttime">Update/PauseQualityUpdatesStartTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-phoneupdaterestrictions" id="update-phoneupdaterestrictions">Update/PhoneUpdateRestrictions</a>
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
    <a href="./policy-csp-update.md#update-setdisablepauseuxaccess" id="update-setdisablepauseuxaccess">Update/SetDisablePauseUXAccess</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-setdisableuxwuaccess" id="update-setdisableuxwuaccess">Update/SetDisableUXWUAccess</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-setedurestart" id="update-setedurestart">Update/SetEDURestart</a>
  </dd>
  <dd> 
    <a href="./policy-csp-update.md#update-setproxybehaviorforupdatedetection"id="update-setproxybehaviorforupdatedetection">Update/SetProxyBehaviorForUpdateDetection</a> 
  </dd>
  <dd> 
    <a href="./policy-csp-update.md#update-targetreleaseversion"id="update-targetreleaseversion">Update/TargetReleaseVersion</a> 
  </dd>
  <dd>
  <dd>
    <a href="./policy-csp-update.md#update-updatenotificationlevel" id="update-updatenotificationlevel">Update/UpdateNotificationLevel</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-updateserviceurl" id="update-updateserviceurl">Update/UpdateServiceUrl</a>
  </dd>
  <dd>
    <a href="./policy-csp-update.md#update-updateserviceurlalternate" id="update-updateserviceurlalternate">Update/UpdateServiceUrlAlternate</a>
  </dd>
</dl>

### UserRights policies

<dl>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-accesscredentialmanagerastrustedcaller" id="userrights-accesscredentialmanagerastrustedcaller">UserRights/AccessCredentialManagerAsTrustedCaller</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-accessfromnetwork" id="userrights-accessfromnetwork">UserRights/AccessFromNetwork</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-actaspartoftheoperatingsystem" id="userrights-actaspartoftheoperatingsystem">UserRights/ActAsPartOfTheOperatingSystem</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-allowlocallogon" id="userrights-allowlocallogon">UserRights/AllowLocalLogOn</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-backupfilesanddirectories" id="userrights-backupfilesanddirectories">UserRights/BackupFilesAndDirectories</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-changesystemtime" id="userrights-changesystemtime">UserRights/ChangeSystemTime</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-createglobalobjects" id="userrights-createglobalobjects">UserRights/CreateGlobalObjects</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-createpagefile" id="userrights-createpagefile">UserRights/CreatePageFile</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-createpermanentsharedobjects" id="userrights-createpermanentsharedobjects">UserRights/CreatePermanentSharedObjects</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-createsymboliclinks" id="userrights-createsymboliclinks">UserRights/CreateSymbolicLinks</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-createtoken" id="userrights-createtoken">UserRights/CreateToken</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-debugprograms" id="userrights-debugprograms">UserRights/DebugPrograms</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-denyaccessfromnetwork" id="userrights-denyaccessfromnetwork">UserRights/DenyAccessFromNetwork</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-denylocallogon" id="userrights-denylocallogon">UserRights/DenyLocalLogOn</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-denyremotedesktopserviceslogon" id="userrights-denyremotedesktopserviceslogon">UserRights/DenyRemoteDesktopServicesLogOn</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-enabledelegation" id="userrights-enabledelegation">UserRights/EnableDelegation</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-generatesecurityaudits" id="userrights-generatesecurityaudits">UserRights/GenerateSecurityAudits</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-impersonateclient" id="userrights-impersonateclient">UserRights/ImpersonateClient</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-increaseschedulingpriority" id="userrights-increaseschedulingpriority">UserRights/IncreaseSchedulingPriority</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-loadunloaddevicedrivers" id="userrights-loadunloaddevicedrivers">UserRights/LoadUnloadDeviceDrivers</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-lockmemory" id="userrights-lockmemory">UserRights/LockMemory</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-manageauditingandsecuritylog" id="userrights-manageauditingandsecuritylog">UserRights/ManageAuditingAndSecurityLog</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-managevolume" id="userrights-managevolume">UserRights/ManageVolume</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-modifyfirmwareenvironment" id="userrights-modifyfirmwareenvironment">UserRights/ModifyFirmwareEnvironment</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-modifyobjectlabel" id="userrights-modifyobjectlabel">UserRights/ModifyObjectLabel</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-profilesingleprocess" id="userrights-profilesingleprocess">UserRights/ProfileSingleProcess</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-remoteshutdown" id="userrights-remoteshutdown">UserRights/RemoteShutdown</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-restorefilesanddirectories" id="userrights-restorefilesanddirectories">UserRights/RestoreFilesAndDirectories</a>
  </dd>
  <dd>
    <a href="./policy-csp-userrights.md#userrights-takeownership" id="userrights-takeownership">UserRights/TakeOwnership</a>
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

### WindowsConnectionManager policies

<dl>
  <dd>
    <a href="./policy-csp-windowsconnectionmanager.md#windowsconnectionmanager-prohitconnectiontonondomainnetworkswhenconnectedtodomainauthenticatednetwork" id="windowsconnectionmanager-prohitconnectiontonondomainnetworkswhenconnectedtodomainauthenticatednetwork">WindowsConnectionManager/ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork</a>
  </dd>
</dl>

### WindowsDefenderSecurityCenter policies

<dl>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-companyname" id="windowsdefendersecuritycenter-companyname">WindowsDefenderSecurityCenter/CompanyName</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-disableaccountprotectionui" id="windowsdefendersecuritycenter-disableaccountprotectionui">WindowsDefenderSecurityCenter/DisableAccountProtectionUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-disableappbrowserui" id="windowsdefendersecuritycenter-disableappbrowserui">WindowsDefenderSecurityCenter/DisableAppBrowserUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-disablecleartpmbutton" id="windowsdefendersecuritycenter-disablecleartpmbutton">WindowsDefenderSecurityCenter/DisableClearTpmButton</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-disabledevicesecurityui" id="windowsdefendersecuritycenter-disabledevicesecurityui">WindowsDefenderSecurityCenter/DisableDeviceSecurityUI</a>
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
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-disabletpmfirmwareupdatewarning" id="windowsdefendersecuritycenter-disabletpmfirmwareupdatewarning">WindowsDefenderSecurityCenter/DisableTpmFirmwareUpdateWarning</a>
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
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-hideransomwaredatarecovery" id="windowsdefendersecuritycenter-hideransomwaredatarecovery">WindowsDefenderSecurityCenter/HideRansomwareDataRecovery</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-hidesecureboot" id="windowsdefendersecuritycenter-hidesecureboot">WindowsDefenderSecurityCenter/HideSecureBoot</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-hidetpmtroubleshooting" id="windowsdefendersecuritycenter-hidetpmtroubleshooting">WindowsDefenderSecurityCenter/HideTPMTroubleshooting</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowsdefendersecuritycenter.md#windowsdefendersecuritycenter-hidewindowssecuritynotificationareacontrol" id="windowsdefendersecuritycenter-hidewindowssecuritynotificationareacontrol">WindowsDefenderSecurityCenter/HideWindowsSecurityNotificationAreaControl</a>
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
    <a href="./policy-csp-windowslogon.md#windowslogon-allowautomaticrestartsignon" id="windowslogon-allowautomaticrestartsignon">WindowsLogon/AllowAutomaticRestartSignOn</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowslogon.md#windowslogon-configautomaticrestartsignon" id="windowslogon-configautomaticrestartsignon">WindowsLogon/ConfigAutomaticRestartSignOn</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowslogon.md#windowslogon-disablelockscreenappnotifications" id="windowslogon-disablelockscreenappnotifications">WindowsLogon/DisableLockScreenAppNotifications</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowslogon.md#windowslogon-dontdisplaynetworkselectionui" id="windowslogon-dontdisplaynetworkselectionui">WindowsLogon/DontDisplayNetworkSelectionUI</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowslogon.md#windowslogon-enablefirstlogonanimation" id="#windowslogon-enablefirstlogonanimation">WindowsLogon/EnableFirstLogonAnimation</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowslogon.md#windowslogon-enumeratelocalusersondomainjoinedcomputers" id="windowslogon-enumeratelocalusersondomainjoinedcomputers">WindowsLogon/EnumerateLocalUsersOnDomainJoinedComputers</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowslogon.md#windowslogon-hidefastuserswitching" id="windowslogon-hidefastuserswitching">WindowsLogon/HideFastUserSwitching</a>
  </dd>
  </dl>

### WindowsPowerShell policies

<dl>
  <dd>
    <a href="./policy-csp-windowspowershell.md#windowspowershell-turnonpowershellscriptblocklogging" id="windowspowershell-turnonpowershellscriptblocklogging">WindowsPowerShell/TurnOnPowerShellScriptBlockLogging</a>
  </dd>
</dl>

### WindowsSandbox policies  

<dl>
  <dd>
    <a href="./policy-csp-windowssandbox.md#windowssandbox-allowaudioinput" id="windowssandbox-allowaudioinput">WindowsSandbox/AllowAudioInput</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowssandbox.md#windowssandbox-allowclipboardredirection" id="windowssandbox-allowclipboardredirection">WindowsSandbox/AllowClipboardRedirection</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowssandbox.md#windowssandbox-allownetworking" id="windowssandbox-allownetworking">WindowsSandbox/AllowNetworking</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowssandbox.md#windowssandbox-allowprinterredirection" id="windowssandbox-allowprinterredirection">WindowsSandbox/AllowPrinterRedirection</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowssandbox.md#windowssandbox-allowvgpu" id="windowssandbox-allowvgpu">WindowsSandbox/AllowVGPU</a>
  </dd>
  <dd>
    <a href="./policy-csp-windowssandbox.md#windowssandbox-allowvideoinput" id="windowssandbox-allowvideoinput">WindowsSandbox/AllowVideoInput</a>
  </dd>
</dl>

### WirelessDisplay policies

<dl>
  <dd>
    <a href="./policy-csp-wirelessdisplay.md#wirelessdisplay-allowmdnsadvertisement" id="wirelessdisplay-allowmdnsadvertisement">WirelessDisplay/AllowMdnsAdvertisement</a>
  </dd>
  <dd>
    <a href="./policy-csp-wirelessdisplay.md#wirelessdisplay-allowmdnsdiscovery" id="wirelessdisplay-allowmdnsdiscovery">WirelessDisplay/AllowMdnsDiscovery</a>
  </dd>
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
    <a href="./policy-csp-wirelessdisplay.md#wirelessdisplay-allowprojectiontopcoverinfrastructure" id="wirelessdisplay-allowprojectiontopcoverinfrastructure">WirelessDisplay/AllowProjectionToPCOverInfrastructure</a>
  </dd>
  <dd>
    <a href="./policy-csp-wirelessdisplay.md#wirelessdisplay-allowuserinputfromwirelessdisplayreceiver" id="wirelessdisplay-allowuserinputfromwirelessdisplayreceiver">WirelessDisplay/AllowUserInputFromWirelessDisplayReceiver</a>
  </dd>
  <dd>
    <a href="./policy-csp-wirelessdisplay.md#wirelessdisplay-requirepinforpairing" id="wirelessdisplay-requirepinforpairing">WirelessDisplay/RequirePinForPairing</a>
  </dd>
</dl>

## Policies in Policy CSP supported by Group Policy and ADMX-backed policies in Policy CSP
- [Policies in Policy CSP supported by Group Policy](policy-csps-supported-by-group-policy.md)
- [ADMX-backed policies in Policy CSP](policy-csps-admx-backed.md)

> [!NOTE]
> Not all Policies in Policy CSP supported by Group Policy are ADMX-backed. For more details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

## Policies in Policy CSP supported by HoloLens devices
- [Policies in Policy CSP supported by HoloLens 2](policy-csps-supported-by-hololens2.md)  
- [Policies in Policy CSP supported by HoloLens (1st gen) Commercial Suite](policy-csps-supported-by-hololens-1st-gen-commercial-suite.md)  
- [Policies in Policy CSP supported by HoloLens (1st gen) Development Edition](policy-csps-supported-by-hololens-1st-gen-development-edition.md)

## Policies in Policy CSP supported by Windows 10 IoT
- [Policies in Policy CSP supported by Windows 10 IoT Enterprise](policy-csps-supported-by-iot-enterprise.md)
- [Policies in Policy CSP supported by Windows 10 IoT Core](policy-csps-supported-by-iot-core.md)

## Policies in Policy CSP supported by Microsoft Surface Hub
- [Policies in Policy CSP supported by Microsoft Surface Hub](policy-csps-supported-by-surface-hub.md)

## Policies in Policy CSP that can be set using Exchange ActiveSync (EAS)
- [Policies in Policy CSP that can be set using Exchange ActiveSync (EAS)](policy-csps-that-can-be-set-using-eas.md)

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)
