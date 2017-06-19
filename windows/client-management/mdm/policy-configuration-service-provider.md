---
title: Policy CSP
description: Policy CSP
ms.assetid: 4F3A1134-D401-44FC-A583-6EDD3070BA4F
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
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

<!--StartPolicies-->
<hr/>

## Policies  

<!--StartPolicy-->
<a href="" id="abovelock-allowactioncenternotifications"></a>**AboveLock/AllowActionCenterNotifications**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

<p style="margin-left: 20px">Specifies whether to allow Action Center notifications above the device lock screen.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="abovelock-allowcortanaabovelock"></a>**AboveLock/AllowCortanaAboveLock**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether or not the user can interact with Cortana using speech while the system is locked. If you enable or don’t configure this setting, the user can interact with Cortana using speech while the system is locked. If you disable this setting, the system will need to be unlocked for the user to interact with Cortana using speech.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="abovelock-allowtoasts"></a>**AboveLock/AllowToasts**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether to allow toast notifications above the device lock screen.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="accounts-allowaddingnonmicrosoftaccountsmanually"></a>**Accounts/AllowAddingNonMicrosoftAccountsManually**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether user is allowed to add non-MSA email accounts.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

> [!NOTE]
> This policy will only block UI/UX-based methods for adding non-Microsoft accounts. Even if this policy is enforced, you can still provision non-MSA accounts using the [EMAIL2 CSP](email2-csp.md).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="accounts-allowmicrosoftaccountconnection"></a>**Accounts/AllowMicrosoftAccountConnection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether the user is allowed to use an MSA account for non-email related connection authentication and services.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="accounts-allowmicrosoftaccountsigninassistant"></a>**Accounts/AllowMicrosoftAccountSignInAssistant**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins the ability to disable the "Microsoft Account Sign-In Assistant" (wlidsvc) NT service.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disabled.
-   1 (default) – Manual start.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="accounts-domainnamesforemailsync"></a>**Accounts/DomainNamesForEmailSync**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies a list of the domains that are allowed to sync email on the device.

<p style="margin-left: 20px">The data type is a string.

<p style="margin-left: 20px">The default value is an empty string, which allows all email accounts on the device to sync email. Otherwise, the string should contain a pipe-separated list of domains that are allowed to sync email on the device. For example, "contoso.com|fabrikam.net|woodgrove.gov".

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="activexcontrols-approvedinstallationsites"></a>**ActiveXControls/ApprovedInstallationSites**  

<!--StartDescription-->
This policy setting determines which ActiveX installation sites standard users in your organization can use to install ActiveX controls on their computers. When this setting is enabled, the administrator can create a list of approved Activex Install sites specified by host URL.

If you enable this setting, the administrator can create a list of approved ActiveX Install sites specified by host URL.

If you disable or do not configure this policy setting, ActiveX controls prompt the user for administrative credentials before installation.

Note: Wild card characters cannot be used when specifying the host URLs.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Approved Installation Sites for ActiveX Controls*
-   GP name: *ApprovedActiveXInstallSites*
-   GP path: *Windows Components/ActiveX Installer Service*
-   GP ADMX file name: *ActiveXInstallService.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowappvclient"></a>**AppVirtualization/AllowAppVClient**  

<!--StartDescription-->
This policy setting allows you to enable or disable Microsoft Application Virtualization (App-V) feature. Reboot is needed for disable to take effect.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable App-V Client*
-   GP name: *EnableAppV*
-   GP path: *System/App-V*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowdynamicvirtualization"></a>**AppVirtualization/AllowDynamicVirtualization**  

<!--StartDescription-->
Enables Dynamic Virtualization of supported shell extensions, browser helper objects, and ActiveX controls.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable Dynamic Virtualization*
-   GP name: *Virtualization_JITVEnable*
-   GP path: *System/App-V/Virtualization*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowpackagecleanup"></a>**AppVirtualization/AllowPackageCleanup**  

<!--StartDescription-->
Enables automatic cleanup of appv packages that were added after Windows10 anniversary release.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable automatic cleanup of unused appv packages*
-   GP name: *PackageManagement_AutoCleanupEnable*
-   GP path: *System/App-V/Package Management*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowpackagescripts"></a>**AppVirtualization/AllowPackageScripts**  

<!--StartDescription-->
Enables scripts defined in the package manifest of configuration files that should run.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable Package Scripts*
-   GP name: *Scripting_Enable_Package_Scripts*
-   GP path: *System/App-V/Scripting*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowpublishingrefreshux"></a>**AppVirtualization/AllowPublishingRefreshUX**  

<!--StartDescription-->
Enables a UX to display to the user when a publishing refresh is performed on the client.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable Publishing Refresh UX*
-   GP name: *Enable_Publishing_Refresh_UX*
-   GP path: *System/App-V/Publishing*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowreportingserver"></a>**AppVirtualization/AllowReportingServer**  

<!--StartDescription-->
Reporting Server URL: Displays the URL of reporting server.

Reporting Time: When the client data should be reported to the server. Acceptable range is 0~23, corresponding to the 24 hours in a day. A good practice is, don't set this time to a busy hour, e.g. 9AM.

Delay reporting for the random minutes: The maximum minutes of random delay on top of the reporting time. For a busy system, the random delay will help reduce the server load.

Repeat reporting for every (days): The periodical interval in days for sending the reporting data.

Data Cache Limit: This value specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The default value is 20 MB. The size applies to the cache in memory. When the limit is reached, the log file will roll over. When a new record is to be added (bottom of the list), one or more of the oldest records (top of the list) will be deleted to make room. A warning will be logged to the Client log and the event log the first time this occurs, and will not be logged again until after the cache has been successfully cleared on transmission and the log has filled up again.

Data Block Size: This value specifies the maximum size in bytes to transmit to the server at once on a reporting upload, to avoid permanent transmission failures when the log has reached a significant size. The  default value is 65536. When transmitting report data to the server, one block at a time of application records that is less than or equal to the block size in bytes of XML data will be removed from the cache and sent to the server. Each block will have the general Client data and global package list data prepended, and these will not factor into the block size calculations; the potential exists for an extremely large package list to result in transmission failures over low bandwidth or unreliable connections.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Reporting Server*
-   GP name: *Reporting_Server_Policy*
-   GP path: *System/App-V/Reporting*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowroamingfileexclusions"></a>**AppVirtualization/AllowRoamingFileExclusions**  

<!--StartDescription-->
Specifies the file paths relative to %userprofile% that do not roam with a user's profile. Example usage: /FILEEXCLUSIONLIST='desktop;my pictures'.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Roaming File Exclusions*
-   GP name: *Integration_Roaming_File_Exclusions*
-   GP path: *System/App-V/Integration*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowroamingregistryexclusions"></a>**AppVirtualization/AllowRoamingRegistryExclusions**  

<!--StartDescription-->
Specifies the registry paths that do not roam with a user profile. Example usage: /REGISTRYEXCLUSIONLIST=software\classes;software\clients.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Roaming Registry Exclusions*
-   GP name: *Integration_Roaming_Registry_Exclusions*
-   GP path: *System/App-V/Integration*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowstreamingautoload"></a>**AppVirtualization/AllowStreamingAutoload**  

<!--StartDescription-->
Specifies how new packages should be loaded automatically by App-V on a specific computer.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Specify what to load in background (aka AutoLoad)*
-   GP name: *Steaming_Autoload*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-clientcoexistenceallowmigrationmode"></a>**AppVirtualization/ClientCoexistenceAllowMigrationmode**  

<!--StartDescription-->
Migration mode allows the App-V client to modify shortcuts and FTA's for packages created using a previous version of App-V.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable Migration Mode*
-   GP name: *Client_Coexistence_Enable_Migration_mode*
-   GP path: *System/App-V/Client Coexistence*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-integrationallowrootglobal"></a>**AppVirtualization/IntegrationAllowRootGlobal**  

<!--StartDescription-->
Specifies the location where symbolic links are created to the current version of a per-user published package. Shortcuts, file type associations, etc. are created pointing to this path. If empty, symbolic links are not used during publishing. Example: %localappdata%\Microsoft\AppV\Client\Integration.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Integration Root User*
-   GP name: *Integration_Root_User*
-   GP path: *System/App-V/Integration*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-integrationallowrootuser"></a>**AppVirtualization/IntegrationAllowRootUser**  

<!--StartDescription-->
Specifies the location where symbolic links are created to the current version of a globally published package. Shortcuts, file type associations, etc. are created pointing to this path. If empty, symbolic links are not used during publishing. Example: %allusersprofile%\Microsoft\AppV\Client\Integration.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Integration Root Global*
-   GP name: *Integration_Root_Global*
-   GP path: *System/App-V/Integration*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-publishingallowserver1"></a>**AppVirtualization/PublishingAllowServer1**  

<!--StartDescription-->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Publishing Server 1 Settings*
-   GP name: *Publishing_Server1_Policy*
-   GP path: *System/App-V/Publishing*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-publishingallowserver2"></a>**AppVirtualization/PublishingAllowServer2**  

<!--StartDescription-->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Publishing Server 2 Settings*
-   GP name: *Publishing_Server2_Policy*
-   GP path: *System/App-V/Publishing*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-publishingallowserver3"></a>**AppVirtualization/PublishingAllowServer3**  

<!--StartDescription-->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Publishing Server 3 Settings*
-   GP name: *Publishing_Server3_Policy*
-   GP path: *System/App-V/Publishing*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-publishingallowserver4"></a>**AppVirtualization/PublishingAllowServer4**  

<!--StartDescription-->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Publishing Server 4 Settings*
-   GP name: *Publishing_Server4_Policy*
-   GP path: *System/App-V/Publishing*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-publishingallowserver5"></a>**AppVirtualization/PublishingAllowServer5**  

<!--StartDescription-->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Publishing Server 5 Settings*
-   GP name: *Publishing_Server5_Policy*
-   GP path: *System/App-V/Publishing*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowcertificatefilterforclient_ssl"></a>**AppVirtualization/StreamingAllowCertificateFilterForClient_SSL**  

<!--StartDescription-->
Specifies the path to a valid certificate in the certificate store.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Certificate Filter For Client SSL*
-   GP name: *Streaming_Certificate_Filter_For_Client_SSL*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowhighcostlaunch"></a>**AppVirtualization/StreamingAllowHighCostLaunch**  

<!--StartDescription-->
This setting controls whether virtualized applications are launched on Windows 8 machines connected via a metered network connection (e.g. 4G).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow First Time Application Launches if on a High Cost Windows 8 Metered Connection*
-   GP name: *Streaming_Allow_High_Cost_Launch*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowlocationprovider"></a>**AppVirtualization/StreamingAllowLocationProvider**  

<!--StartDescription-->
Specifies the CLSID for a compatible implementation of the IAppvPackageLocationProvider interface.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Location Provider*
-   GP name: *Streaming_Location_Provider*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowpackageinstallationroot"></a>**AppVirtualization/StreamingAllowPackageInstallationRoot**  

<!--StartDescription-->
Specifies directory where all new applications and updates will be installed.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Package Installation Root*
-   GP name: *Streaming_Package_Installation_Root*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowpackagesourceroot"></a>**AppVirtualization/StreamingAllowPackageSourceRoot**  

<!--StartDescription-->
Overrides source location for downloading package content.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Package Source Root*
-   GP name: *Streaming_Package_Source_Root*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowreestablishmentinterval"></a>**AppVirtualization/StreamingAllowReestablishmentInterval**  

<!--StartDescription-->
Specifies the number of seconds between attempts to reestablish a dropped session.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Reestablishment Interval*
-   GP name: *Streaming_Reestablishment_Interval*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowreestablishmentretries"></a>**AppVirtualization/StreamingAllowReestablishmentRetries**  

<!--StartDescription-->
Specifies the number of times to retry a dropped session.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Reestablishment Retries*
-   GP name: *Streaming_Reestablishment_Retries*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingsharedcontentstoremode"></a>**AppVirtualization/StreamingSharedContentStoreMode**  

<!--StartDescription-->
Specifies that streamed package contents will be not be saved to the local hard disk.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Shared Content Store (SCS) mode*
-   GP name: *Streaming_Shared_Content_Store_Mode*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingsupportbranchcache"></a>**AppVirtualization/StreamingSupportBranchCache**  

<!--StartDescription-->
If enabled, the App-V client will support BrancheCache compatible HTTP streaming. If BranchCache support is not desired, this should be disabled. The client can then apply HTTP optimizations which are incompatible with BranchCache

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable Support for BranchCache*
-   GP name: *Streaming_Support_Branch_Cache*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingverifycertificaterevocationlist"></a>**AppVirtualization/StreamingVerifyCertificateRevocationList**  

<!--StartDescription-->
Verifies Server certificate revocation status before streaming using HTTPS.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Verify certificate revocation list*
-   GP name: *Streaming_Verify_Certificate_Revocation_List*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-virtualcomponentsallowlist"></a>**AppVirtualization/VirtualComponentsAllowList**  

<!--StartDescription-->
Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Virtual Component Process Allow List*
-   GP name: *Virtualization_JITVAllowList*
-   GP path: *System/App-V/Virtualization*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="applicationdefaults-defaultassociationsconfiguration"></a>**ApplicationDefaults/DefaultAssociationsConfiguration**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy allows an administrator to set default file type and protocol associations. When set, default associations will be applied on sign-in to the PC. The association file can be created using the DISM tool (dism /online /export-defaultappassociations:appassoc.xml), and then needs to be  base64 encoded before being added to SyncML.
 
<p style="margin-left: 20px">If policy is enabled and the client machine is Azure Active Directory joined, the associations assigned in SyncML will be processed and default associations will be applied.

<p style="margin-left: 20px">To create create the SyncML, follow these steps:
<ol>
<li>Install a few apps and change your defaults.</li>
<li>From an elevated prompt, run "dism /online /export-defaultappassociations:appassoc.xml"</li>
<li>Take the XML output and put it through your favorite base64 encoder app.</li>
<li>Paste the base64 encoded XML into the SyncML</li>
</ol>

<p style="margin-left: 20px">Here is an example output from the dism default association export command:

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<DefaultAssociations>
  <Association Identifier=".htm" ProgId="AppX4hxtad77fbk3jkkeerkrm0ze94wjf3s9" ApplicationName="Microsoft Edge" />
  <Association Identifier=".html" ProgId="AppX4hxtad77fbk3jkkeerkrm0ze94wjf3s9" ApplicationName="Microsoft Edge" />
  <Association Identifier=".pdf" ProgId="AppXd4nrz8ff68srnhf9t5a8sbjyar1cr723" ApplicationName="Microsoft Edge" />
  <Association Identifier="http" ProgId="AppXq0fevzme2pys62n3e0fbqa7peapykr8v" ApplicationName="Microsoft Edge" />
  <Association Identifier="https" ProgId="AppX90nv6nhay5n6a98fnetv7tpk64pp35es" ApplicationName="Microsoft Edge" />
</DefaultAssociations
```

<p style="margin-left: 20px">Here is the base64 encoded result:

``` syntax
PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxEZWZhdWx0QXNzb2NpYXRpb25zPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iLmh0bSIgUHJvZ0lkPSJBcHBYNGh4dGFkNzdmYmszamtrZWVya3JtMHplOTR3amYzczkiIEFwcGxpY2F0aW9uTmFtZT0iTWljcm9zb2Z0IEVkZ2UiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIuaHRtbCIgUHJvZ0lkPSJBcHBYNGh4dGFkNzdmYmszamtrZWVya3JtMHplOTR3amYzczkiIEFwcGxpY2F0aW9uTmFtZT0iTWljcm9zb2Z0IEVkZ2UiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIucGRmIiBQcm9nSWQ9IkFwcFhkNG5yejhmZjY4c3JuaGY5dDVhOHNianlhcjFjcjcyMyIgQXBwbGljYXRpb25OYW1lPSJNaWNyb3NvZnQgRWRnZSIgLz4NCiAgPEFzc29jaWF0aW9uIElkZW50aWZpZXI9Imh0dHAiIFByb2dJZD0iQXBwWHEwZmV2em1lMnB5czYybjNlMGZicWE3cGVhcHlrcjh2IiBBcHBsaWNhdGlvbk5hbWU9Ik1pY3Jvc29mdCBFZGdlIiAvPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iaHR0cHMiIFByb2dJZD0iQXBwWDkwbnY2bmhheTVuNmE5OGZuZXR2N3RwazY0cHAzNWVzIiBBcHBsaWNhdGlvbk5hbWU9Ik1pY3Jvc29mdCBFZGdlIiAvPg0KPC9EZWZhdWx0QXNzb2NpYXRpb25zPg0KDQo=
```

<p style="margin-left: 20px">Here is the SyncMl example:

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
<SyncBody>
    <Replace>
      <CmdID>101</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./Vendor/MSFT/Policy/Config/ApplicationDefaults/DefaultAssociationsConfiguration</LocURI>
        </Target>
        <Data>PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxEZWZhdWx0QXNzb2NpYXRpb25zPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iLmh0bSIgUHJvZ0lkPSJBcHBYNGh4dGFkNzdmYmszamtrZWVya3JtMHplOTR3amYzczkiIEFwcGxpY2F0aW9uTmFtZT0iTWljcm9zb2Z0IEVkZ2UiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIuaHRtbCIgUHJvZ0lkPSJBcHBYNGh4dGFkNzdmYmszamtrZWVya3JtMHplOTR3amYzczkiIEFwcGxpY2F0aW9uTmFtZT0iTWljcm9zb2Z0IEVkZ2UiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIucGRmIiBQcm9nSWQ9IkFwcFhkNG5yejhmZjY4c3JuaGY5dDVhOHNianlhcjFjcjcyMyIgQXBwbGljYXRpb25OYW1lPSJNaWNyb3NvZnQgRWRnZSIgLz4NCiAgPEFzc29jaWF0aW9uIElkZW50aWZpZXI9Imh0dHAiIFByb2dJZD0iQXBwWHEwZmV2em1lMnB5czYybjNlMGZicWE3cGVhcHlrcjh2IiBBcHBsaWNhdGlvbk5hbWU9Ik1pY3Jvc29mdCBFZGdlIiAvPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iaHR0cHMiIFByb2dJZD0iQXBwWDkwbnY2bmhheTVuNmE5OGZuZXR2N3RwazY0cHAzNWVzIiBBcHBsaWNhdGlvbk5hbWU9Ik1pY3Jvc29mdCBFZGdlIiAvPg0KPC9EZWZhdWx0QXNzb2NpYXRpb25zPg0KDQo=
</Data>
      </Item>
    </Replace>
  <Final/>
  </SyncBody>
</SyncML>
```

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="applicationmanagement-allowalltrustedapps"></a>**ApplicationManagement/AllowAllTrustedApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether non Windows Store apps are allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Explicit deny.
-   1 – Explicit allow unlock.
-   65535 (default) – Not configured.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="applicationmanagement-allowappstoreautoupdate"></a>**ApplicationManagement/AllowAppStoreAutoUpdate**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether automatic update of apps from Windows Store are allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="applicationmanagement-allowdeveloperunlock"></a>**ApplicationManagement/AllowDeveloperUnlock**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether developer unlock is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Explicit deny.
-   1 – Explicit allow unlock.
-   65535 (default) – Not configured.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="applicationmanagement-allowgamedvr"></a>**ApplicationManagement/AllowGameDVR**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

<p style="margin-left: 20px">Specifies whether DVR and broadcasting is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="applicationmanagement-allowshareduserappdata"></a>**ApplicationManagement/AllowSharedUserAppData**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether multiple users of the same app can share data.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="applicationmanagement-allowstore"></a>**ApplicationManagement/AllowStore**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether app store is allowed at the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="applicationmanagement-applicationrestrictions"></a>**ApplicationManagement/ApplicationRestrictions**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop. For desktop devices, use the [AppLocker CSP](applocker-csp.md) instead.

 
<p style="margin-left: 20px">An XML blob that specifies the application restrictions company want to put to the device. It could be an app allow list, app disallow list, allowed publisher IDs, and so on. For a list of Windows apps and product IDs, see [inbox apps](applocker-csp.md#inboxappsandcomponents). For more information about the XML, see the [ApplicationRestrictions XSD](applicationrestrictions-xsd.md).

> [!NOTE]
> When you upgrade Windows Phone 8.1 devices to Windows 10 Mobile with a list of allowed apps, some Windows inbox apps get blocked causing unexpected behavior. To work around this issue, you must include the [inbox apps](applocker-csp.md#inboxappsandcomponents) that you need to your list of allowed apps.
>
> Here's additional guidance for the upgrade process:
>
>  -   Use Windows 10 product IDs for the apps listed in [inbox apps](applocker-csp.md#inboxappsandcomponents).
>  -   Use the new Microsoft publisher name (PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US") and Publisher="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" if you are using the publisher policy. Do not remove the Windows  Phone 8.1 publisher if you are using it.
>  -   In the SyncML, you must use lowercase product ID.
>  -   Do not duplicate a product ID. Messaging and Skype Video use the same product ID. Duplicates cause an error.
>  -   You cannot disable or enable **Contact Support** and **Windows Feedback** apps using ApplicationManagement/ApplicationRestrictions policy, although these are listed in the [inbox apps](applocker-csp.md#inboxappsandcomponents).


<p style="margin-left: 20px">An application that is running may not be immediately terminated.

<p style="margin-left: 20px">Value type is chr.

<p style="margin-left: 20px">Value evaluation rule - The information for PolicyManager is opaque. There is no most restricted value evaluation. Whenever there is a change to the value, the device parses the node value and enforces specified policies.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="applicationmanagement-disablestoreoriginatedapps"></a>**ApplicationManagement/DisableStoreOriginatedApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Boolean value that disables the launch of all apps from Windows Store that came pre-installed or were downloaded.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Enable launch of apps.
-   1 – Disable launch of apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="applicationmanagement-requireprivatestoreonly"></a>**ApplicationManagement/RequirePrivateStoreOnly**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows disabling of the retail catalog and only enables the Private store.

> [!IMPORTANT]
> This node must be accessed using the following paths:
>
> -   **./User/Vendor/MSFT/Policy/Config/ApplicationManagement/RequirePrivateStoreOnly** to set the policy.
> -   **./User/Vendor/MSFT/Policy/Result/ApplicationManagement/RequirePrivateStoreOnly** to get the result.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Allow both public and Private store.
-   1 – Only Private store is enabled.

<p style="margin-left: 20px">This is a per user policy.

<p style="margin-left: 20px">Most restricted value is 1.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="applicationmanagement-restrictappdatatosystemvolume"></a>**ApplicationManagement/RestrictAppDataToSystemVolume**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether application data is restricted to the system drive.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not restricted.
-   1 – Restricted.

<p style="margin-left: 20px">Most restricted value is 1.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="applicationmanagement-restrictapptosystemvolume"></a>**ApplicationManagement/RestrictAppToSystemVolume**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether the installation of applications is restricted to the system drive.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not restricted.
-   1 – Restricted.

<p style="margin-left: 20px">Most restricted value is 1.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="attachmentmanager-donotpreservezoneinformation"></a>**AttachmentManager/DoNotPreserveZoneInformation**  

<!--StartDescription-->
This policy setting allows you to manage whether Windows marks file attachments with information about their zone of origin (such as restricted, Internet, intranet, local). This requires NTFS in order to function correctly, and will fail without notice on FAT32. By not preserving the zone information, Windows cannot make proper risk assessments.

If you enable this policy setting, Windows does not mark file attachments with their zone information.

If you disable this policy setting, Windows marks file attachments with their zone information.

If you do not configure this policy setting, Windows marks file attachments with their zone information.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Do not preserve zone information in file attachments*
-   GP name: *AM_MarkZoneOnSavedAtttachments*
-   GP path: *Windows Components/Attachment Manager*
-   GP ADMX file name: *AttachmentManager.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="attachmentmanager-hidezoneinfomechanism"></a>**AttachmentManager/HideZoneInfoMechanism**  

<!--StartDescription-->
This policy setting allows you to manage whether users can manually remove the zone information from saved file attachments by clicking the Unblock button in the file's property sheet or by using a check box in the security warning dialog. Removing the zone information allows users to open potentially dangerous file attachments that Windows has blocked users from opening.

If you enable this policy setting, Windows hides the check box and Unblock button.

If you disable this policy setting, Windows shows the check box and Unblock button.

If you do not configure this policy setting, Windows hides the check box and Unblock button.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Hide mechanisms to remove zone information*
-   GP name: *AM_RemoveZoneInfo*
-   GP path: *Windows Components/Attachment Manager*
-   GP ADMX file name: *AttachmentManager.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="attachmentmanager-notifyantivirusprograms"></a>**AttachmentManager/NotifyAntivirusPrograms**  

<!--StartDescription-->
This policy setting allows you to manage the behavior for notifying registered antivirus programs. If multiple programs are registered, they will all be notified. If the registered antivirus program already performs on-access checks or scans files as they arrive on the computer's email server, additional calls would be redundant.

If you enable this policy setting, Windows tells the registered antivirus program to scan the file when a user opens a file attachment. If the antivirus program fails, the attachment is blocked from being opened.

If you disable this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.

If you do not configure this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Notify antivirus programs when opening attachments*
-   GP name: *AM_CallIOfficeAntiVirus*
-   GP path: *Windows Components/Attachment Manager*
-   GP ADMX file name: *AttachmentManager.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="authentication-alloweapcertsso"></a>**Authentication/AllowEAPCertSSO**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows an EAP cert-based authentication for a single sign on (SSO) to access internal resources.

> [!IMPORTANT]
> This node must be accessed using the following paths:
>
> -   **./User/Vendor/MSFT/Policy/Config/Authentication/AllowEAPCertSSO** to set the policy.
> -   **./User/Vendor/MSFT/Policy/Result/Authentication/AllowEAPCertSSO** to get the result.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="authentication-allowfastreconnect"></a>**Authentication/AllowFastReconnect**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows EAP Fast Reconnect from being attempted for EAP Method TLS.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="authentication-allowsecondaryauthenticationdevice"></a>**Authentication/AllowSecondaryAuthenticationDevice**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows secondary authentication devices to work with Windows.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">The default for this policy must be on for consumer devices (defined as local or Microsoft account connected device) and off for enterprise devices (such as cloud domain-joined, cloud domain-joined in an on-premise only environment, cloud domain-joined in a hybrid environment, and BYOD).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="autoplay-disallowautoplayfornonvolumedevices"></a>**Autoplay/DisallowAutoplayForNonVolumeDevices**  

<!--StartDescription-->
This policy setting disallows AutoPlay for MTP devices like cameras or phones.

If you enable this policy setting, AutoPlay is not allowed for MTP devices like cameras or phones.

If you disable or do not configure this policy setting, AutoPlay is enabled for non-volume devices.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Disallow Autoplay for non-volume devices*
-   GP name: *NoAutoplayfornonVolume*
-   GP path: *Windows Components/AutoPlay Policies*
-   GP ADMX file name: *AutoPlay.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="autoplay-setdefaultautorunbehavior"></a>**Autoplay/SetDefaultAutoRunBehavior**  

<!--StartDescription-->
This policy setting sets the default behavior for Autorun commands.

Autorun commands are generally stored in autorun.inf files. They often launch the installation program or other routines.

Prior to Windows Vista, when media containing an autorun command is inserted, the system will automatically execute the program without user intervention.

This creates a major security concern as code may be executed without user's knowledge. The default behavior starting with Windows Vista is to prompt the user whether autorun command is to be run. The autorun command is represented as a handler in the Autoplay dialog.

If you enable this policy setting, an Administrator can change the default Windows Vista or later behavior for autorun to:

a) Completely disable autorun commands, or
b) Revert back to pre-Windows Vista behavior of automatically executing the autorun command.

If you disable or not configure this policy setting, Windows Vista or later will prompt the user whether autorun command is to be run.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Set the default behavior for AutoRun*
-   GP name: *NoAutorun*
-   GP path: *Windows Components/AutoPlay Policies*
-   GP ADMX file name: *AutoPlay.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="autoplay-turnoffautoplay"></a>**Autoplay/TurnOffAutoPlay**  

<!--StartDescription-->
This policy setting allows you to turn off the Autoplay feature.

Autoplay begins reading from a drive as soon as you insert media in the drive. As a result, the setup file of programs and the music on audio media start immediately.

Prior to Windows XP SP2, Autoplay is disabled by default on removable drives, such as the floppy disk drive (but not the CD-ROM drive), and on network drives.

Starting with Windows XP SP2, Autoplay is enabled for removable drives as well, including Zip drives and some USB mass storage devices.

If you enable this policy setting, Autoplay is disabled on CD-ROM and removable media drives, or disabled on all drives.

This policy setting disables Autoplay on additional types of drives. You cannot use this setting to enable Autoplay on drives on which it is disabled by default.

If you disable or do not configure this policy setting, AutoPlay is enabled.

Note: This policy setting appears in both the Computer Configuration and User Configuration folders. If the policy settings conflict, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off Autoplay*
-   GP name: *Autorun*
-   GP path: *Windows Components/AutoPlay Policies*
-   GP ADMX file name: *AutoPlay.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="bitlocker-encryptionmethod"></a>**Bitlocker/EncryptionMethod**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies the BitLocker Drive Encryption method and cipher strength.

<p style="margin-left: 20px">The following list shows the supported values:

-   3- AES 128-bit
-   4- AES 256
-   6 -XTS 128
-   7 - XTS 256

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="bluetooth-allowadvertising"></a>**Bluetooth/AllowAdvertising**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether the device can send out Bluetooth advertisements.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed. When set to 0, the device will not send out advertisements. To verify, use any Bluetooth LE app and enable it to do advertising. Then, verify that the advertisement is not received by the peripheral.
-   1 (default) – Allowed. When set to 1, the device will send out advertisements. To verify, use any Bluetooth LE app and enable it to do advertising. Then, verify that the advertisement is received by the peripheral.

<p style="margin-left: 20px">If this is not set or it is deleted, the default value of 1 (Allow) is used.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="bluetooth-allowdiscoverablemode"></a>**Bluetooth/AllowDiscoverableMode**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether other Bluetooth-enabled devices can discover the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed. When set to 0, other devices will not be able to detect the device. To verify, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel, and verify that you cannot see the name of the device.
-   1 (default) – Allowed. When set to 1, other devices will be able to detect the device. To verify, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel and verify that you can discover it.

<p style="margin-left: 20px">If this is not set or it is deleted, the default value of 1 (Allow) is used.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="bluetooth-allowprepairing"></a>**Bluetooth/AllowPrepairing**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether to allow specific bundled Bluetooth peripherals to automatically pair with the host device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default)– Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="bluetooth-localdevicename"></a>**Bluetooth/LocalDeviceName**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Sets the local Bluetooth device name.

<p style="margin-left: 20px">If this is set, the value that it is set to will be used as the Bluetooth device name. To verify the policy is set, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel, and verify that the value that was specified.

<p style="margin-left: 20px">If this policy is not set or it is deleted, the default local radio name is used.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="bluetooth-servicesallowedlist"></a>**Bluetooth/ServicesAllowedList**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Set a list of allowable services and profiles. String hex formatted array of Bluetooth service UUIDs in canonical format, delimited by semicolons. For example, {782AFCFC-7CAA-436C-8BF0-78CD0FFBD4AF}.

<p style="margin-left: 20px">The default value is an empty string.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowaddressbardropdown"></a>**Browser/AllowAddressBarDropdown**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether to allow the address bar drop-down functionality in Microsoft Edge. If you want to minimize network connections from Microsoft Edge to Microsoft services, we recommend disabling this functionality. 

> [!NOTE]
> Disabling this setting turns off the address bar drop-down functionality. Because search suggestions are shown in the drop-down list, this setting takes precedence over the Browser/AllowSearchSuggestionsinAddressBar setting.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed. Address bar drop-down is disabled, which also disables the user-defined setting, "Show search and site suggestions as I type." 
-   1 (default) – Allowed. Address bar drop-down is enabled.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowautofill"></a>**Browser/AllowAutofill**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether autofill on websites is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">To verify AllowAutofill is set to 0 (not allowed):

1.  Open Microsoft Edge or Microsoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Save form entries** is greyed out.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowbrowser"></a>**Browser/AllowBrowser**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop. For desktop devices, use the [AppLocker CSP](applocker-csp.md) instead.


<p style="margin-left: 20px">Specifies whether the browser is allowed on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">When this policy is set to 0 (not allowed), the Microsoft Edge for Windows 10 Mobile tile will appear greyed out, and clicking on the tile will display a message indicating theat Internet browsing has been disabled by your administrator.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowcookies"></a>**Browser/AllowCookies**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether cookies are allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">To verify AllowCookies is set to 0 (not allowed):

1.  Open Microsoft Edge or Microsoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Cookies** is greyed out.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowdevelopertools"></a>**Browser/AllowDeveloperTools**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies whether employees can use F12 Developer Tools on Microsoft Edge. Turning this setting on, or not configuring it, lets employees use F12 Developer Tools. Turning this setting off stops employees from using F12 Developer Tools.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowdonottrack"></a>**Browser/AllowDoNotTrack**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether Do Not Track headers are allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">Most restricted value is 1.

<p style="margin-left: 20px">To verify AllowDoNotTrack is set to 0 (not allowed):

1.  Open Microsoft Edge or Microsoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Send Do Not Track requests** is greyed out.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowextensions"></a>**Browser/AllowExtensions**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Microsoft Edge extensions are allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowflash"></a>**Browser/AllowFlash**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10. Specifies whether Adobe Flash can run in Microsoft Edge.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowflashclicktorun"></a>**Browser/AllowFlashClickToRun**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether users must take an action, such as clicking the content or a Click-to-Run button, before seeing content in Adobe Flash.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Adobe Flash content is automatically loaded and run by Microsoft Edge.
-   1 (default) – Users must click the content, click a Click-to-Run button, or have the site appear on an auto-allow list before Microsoft Edge loads and runs Adobe Flash content.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowinprivate"></a>**Browser/AllowInPrivate**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether InPrivate browsing is allowed on corporate networks.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowmicrosoftcompatibilitylist"></a>**Browser/AllowMicrosoftCompatibilityList**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether to use the Microsoft compatibility list in Microsoft Edge. The Microsoft compatibility list is a Microsoft-provided list that enables sites with known compatibility issues to display properly. 
By default, the Microsoft compatibility list is enabled and can be viewed by visiting "about:compat". 

<p style="margin-left: 20px">If you enable or don’t configure this setting, Microsoft Edge periodically downloads the latest version of the compatibility list from Microsoft, applying the updates during browser navigation. Visiting any site on the compatibility list prompts the employee to use Internet Explorer 11 (or enables/disables certain browser features on mobile), where the site is automatically rendered as though it’s run in the version of Internet Explorer necessary for it to display properly. If you disable this setting, the compatibility list isn’t used during browser navigation.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not enabled.
-   1 (default) – Enabled.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowpasswordmanager"></a>**Browser/AllowPasswordManager**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether saving and managing passwords locally on the device is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">To verify AllowPasswordManager is set to 0 (not allowed):

1.  Open Microsoft Edge or Microsoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the settings **Offer to save password** and **Manage my saved passwords** are greyed out.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowpopups"></a>**Browser/AllowPopups**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether pop-up blocker is allowed or enabled.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Pop-up blocker is not allowed. It means that pop-up browser windows are allowed.
-   1 – Pop-up blocker is allowed or enabled. It means that pop-up browser windows are blocked.

<p style="margin-left: 20px">Most restricted value is 1.

<p style="margin-left: 20px">To verify AllowPopups is set to 0 (not allowed):

1.  Open Microsoft Edge.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Block pop-ups** is greyed out.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowsearchenginecustomization"></a>**Browser/AllowSearchEngineCustomization**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows search engine customization for MDM-enrolled devices. Users can change their default search engine. 
  
<p style="margin-left: 20px">If this setting is turned on or not configured, users can add new search engines and change the default used in the address bar from within Microsoft Edge settings. If this setting is disabled, users will be unable to add search engines or change the default used in the address bar. This policy applies only on domain-joined machines or when the device is MDM-enrolled. For more information, see Microsoft browser extension policy (aka.ms/browserpolicy). 

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowsearchsuggestionsinaddressbar"></a>**Browser/AllowSearchSuggestionsinAddressBar**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether search suggestions are allowed in the address bar.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-allowsmartscreen"></a>**Browser/AllowSmartScreen**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether Windows Defender SmartScreen is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 1.

<p style="margin-left: 20px">To verify AllowSmartScreen is set to 0 (not allowed):

1.  Open Microsoft Edge or Microsoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Help protect me from malicious sites and download with SmartScreen Filter** is greyed out.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-clearbrowsingdataonexit"></a>**Browser/ClearBrowsingDataOnExit**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether to clear browsing data on exiting Microsoft Edge.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – (default) Browsing data is not cleared on exit. The type of browsing data to clear can be configured by the employee in the Clear browsing data options under Settings.
-   1 – Browsing data is cleared on exit.

<p style="margin-left: 20px">Most restricted value is 1.

<p style="margin-left: 20px">To verify that browsing data is cleared on exit (ClearBrowsingDataOnExit is set to 1): 

1.  Open Microsoft Edge and browse to websites.
2.  Close the Microsoft Edge window.
3.  Open Microsoft Edge and start typing the same URL in address bar. Verify that it does not auto-complete from history.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-configureadditionalsearchengines"></a>**Browser/ConfigureAdditionalSearchEngines**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows you to add up to 5 additional search engines for MDM-enrolled devices. 
 
<p style="margin-left: 20px">If this policy is enabled, you can add up to 5 additional search engines for your employees. For each additional search engine you want to add, specify a link to the OpenSearch XML file that contains, at a minimum, the short name and the URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see [Search provider discovery](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/dev-guide/browser/search-provider-discovery/).
Employees cannot remove these search engines, but they can set any one as the default. This setting does not affect the default search engine. 

<p style="margin-left: 20px">If this setting is not configured, the search engines used are the ones that are specified in the App settings. If this setting is disabled, the search engines you added will be deleted from your employee's machine.
 
> [!IMPORTANT]
> Due to Protected Settings (aka.ms/browserpolicy), this setting will apply only on domain-joined machines or when the device is MDM-enrolled. 

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Additional search engines are not allowed.
-   1 – Additional search engines are allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-disablelockdownofstartpages"></a>**Browser/DisableLockdownOfStartPages**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Boolean value that specifies whether the lockdown on the Start pages is disabled. This policy works with the Browser/HomePages policy, which locks down the Start pages that the users cannot modify. You can use the DisableLockdownOfStartPages policy to allow users to modify the Start pages when the Browser/HomePages policy is in effect. 
  
> [!NOTE]
> This policy has no effect when the Browser/HomePages policy is not configured. 
 
> [!IMPORTANT]
> This setting can be used only with domain-joined or MDM-enrolled devices. For more information, see the Microsoft browser extension policy (aka.ms/browserpolicy).

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Enable lockdown of the Start pages according to the settings specified in the Browser/HomePages policy. Users cannot change the Start pages. 
-   1  – Disable lockdown of the Start pages and allow users to modify them.  

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-enterprisemodesitelist"></a>**Browser/EnterpriseModeSiteList**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 
<p style="margin-left: 20px">Allows the user to specify an URL of an enterprise site list.

<p style="margin-left: 20px">The following list shows the supported values:

-   Not configured. The device checks for updates from Microsoft Update.
-   Set to a URL location of the enterprise site list.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-enterprisesitelistserviceurl"></a>**Browser/EnterpriseSiteListServiceUrl**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!IMPORTANT]
> This policy (introduced in Windows 10, version 1507) was deprecated in Windows 10, version 1511 by [Browser/EnterpriseModeSiteList](#browser-enterprisemodesitelist).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-firstrunurl"></a>**Browser/FirstRunURL**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies the URL that Microsoft Edge for Windows 10 Mobile. will use when it is opened the first time.

<p style="margin-left: 20px">The data type is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the string should contain the URL of the webpage users will see the first time Microsoft Edge is run. For example, “contoso.com”.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-homepages"></a>**Browser/HomePages**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only available for Windows 10 for desktop and not supported in Windows 10 Mobile.

<p style="margin-left: 20px">Specifies your Start pages for MDM-enrolled devices. Turning this setting on lets you configure one or more corporate Start pages. If this setting is turned on, you must also include URLs to the pages, separating multiple pages by using the XML-escaped characters **&lt;** and **&gt;**. For example, "&lt;support.contoso.com&gt;&lt;support.microsoft.com&gt;"

<p style="margin-left: 20px">Starting in Windows 10, version 1607, this policy will be enforced so that the Start pages specified by this policy cannot be changed by the users.

<p style="margin-left: 20px">Starting in Windows 10, version 1703, if you don’t want to send traffic to Microsoft, you can use the "&lt;about:blank&gt;" value, which is honored for both domain- and non-domain-joined machines, when it’s the only configured URL. 

> [!NOTE]
> Turning this setting off, or not configuring it, sets your default Start pages to the webpages specified in App settings.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-preventaccesstoaboutflagsinmicrosoftedge"></a>**Browser/PreventAccessToAboutFlagsInMicrosoftEdge**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether users can access the about:flags page, which is used to change developer settings and to enable experimental features.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Users can access the about:flags page in Microsoft Edge.
-   1 – Users can't access the about:flags page in Microsoft Edge.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-preventfirstrunpage"></a>**Browser/PreventFirstRunPage**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether to enable or disable the First Run webpage. On the first explicit user-launch of Microsoft Edge, a First Run webpage hosted on Microsoft.com opens automatically via a FWLINK. This policy allows enterprises (such as those enrolled in a zero-emissions configuration) to prevent this page from opening.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Employees see the First Run webpage. 
-   1 – Employees don't see the First Run webpage.

<p style="margin-left: 20px">Most restricted value is 1.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-preventlivetiledatacollection"></a>**Browser/PreventLiveTileDataCollection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether Microsoft can collect information to create a Live Tile when pinning a site to Start from Microsoft Edge.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Microsoft servers will be contacted if a site is pinned to Start from Microsoft Edge.
-   1 – Microsoft servers will not be contacted if a site is pinned to Start from Microsoft Edge.

<p style="margin-left: 20px">Most restricted value is 1.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-preventsmartscreenpromptoverride"></a>**Browser/PreventSmartScreenPromptOverride**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether users can override the Windows Defender SmartScreen Filter warnings about potentially malicious websites.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Off.
-   1 – On.

<p style="margin-left: 20px">Turning this setting on stops users from ignoring the Windows Defender SmartScreen Filter warnings and blocks them from going to the site. Turning this setting off, or not configuring it, lets users ignore the Windows Defender SmartScreen Filter warnings about potentially malicious websites and to continue to the site.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-preventsmartscreenpromptoverrideforfiles"></a>**Browser/PreventSmartScreenPromptOverrideForFiles**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether users can override the Windows Defender SmartScreen Filter warnings about downloading unverified files. Turning this setting on stops users from ignoring the Windows Defender SmartScreen Filter warnings and blocks them from downloading unverified files. Turning this setting off, or not configuring it, lets users ignore the Windows Defender SmartScreen Filter warnings about unverified files and lets them continue the download process.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Off.
-   1 – On.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-preventusinglocalhostipaddressforwebrtc"></a>**Browser/PreventUsingLocalHostIPAddressForWebRTC**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies whether a user's localhost IP address is displayed while making phone calls using the WebRTC protocol. Turning this setting on hides an user’s localhost IP address while making phone calls using WebRTC. Turning this setting off, or not configuring it, shows an <p style="margin-left: 20px">user’s localhost IP address while making phone calls using WebRTC.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – The localhost IP address is shown.
-   1 – The localhost IP address is hidden.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-sendintranettraffictointernetexplorer"></a>**Browser/SendIntranetTraffictoInternetExplorer**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies whether to send intranet traffic over to Internet Explorer.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Intranet traffic is sent to Internet Explorer.
-   1 – Intranet traffic is sent to Microsoft Edge.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-setdefaultsearchengine"></a>**Browser/SetDefaultSearchEngine**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows you configure the default search engine for your employees. By default, your employees can change the default search engine at any time. If you want to prevent your employees from changing the default search engine that you set, you can do so by configuring the AllowSearchEngineCustomization policy.

<p style="margin-left: 20px">You must specify a link to the OpenSearch XML file that contains, at a minimum, the short name and the URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see [Search provider discovery](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/dev-guide/browser/search-provider-discovery/). If you want your employees to use the Microsoft Edge factory settings for the default search engine for their market, set the string EDGEDEFAULT; otherwise, if you want your employees to use Bing as the default search engine, set the string EDGEBING. 
 
<p style="margin-left: 20px">If this setting is not configured, the default search engine is set to the one specified in App settings and can be changed by your employees. If this setting is disabled, the policy-set search engine will be removed, and, if it is the current default, the default will be set back to the factory Microsoft Edge search engine for the market.   
 
> [!IMPORTANT]
> This setting can be used only with domain-joined or MDM-enrolled devices. For more information, see the Microsoft browser extension policy (aka.ms/browserpolicy).

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) - The default search engine is set to the one specified in App settings.
-   1 - Allows you to configure the default search engine for your employees.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-showmessagewhenopeningsitesininternetexplorer"></a>**Browser/ShowMessageWhenOpeningSitesInInternetExplorer**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether users should see a full interstitial page in Microsoft Edge when opening sites that are configured to open in Internet Explorer using the Enterprise Site List.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Interstitial pages are not shown.
-   1 – Interstitial pages are shown.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="browser-syncfavoritesbetweenieandmicrosoftedge"></a>**Browser/SyncFavoritesBetweenIEAndMicrosoftEdge**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether favorites are kept in sync between Internet Explorer and Microsoft Edge. Changes to favorites in one browser are reflected in the other, including: additions, deletions, modifications, and ordering.

> [!NOTE]  
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.  
>
> Enabling this setting stops Microsoft Edge favorites from syncing between connected Windows 10 devices.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Synchronization is off.
-   1 – Synchronization is on.

<p style="margin-left: 20px">To verify that favorites are in synchronized between Internet Explorer and Microsoft Edge:

<ol>
<li>Open Internet Explorer and add some favorites.
<li>Open Microsoft Edge, then select Hub > Favorites.
<li>Verify that the favorites added to Internet Explorer show up in the favorites list in Microsoft Edge.
</ol>

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="camera-allowcamera"></a>**Camera/AllowCamera**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Disables or enables the camera.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allowbluetooth"></a>**Connectivity/AllowBluetooth**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows the user to enable Bluetooth or restrict access.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disallow Bluetooth. If this is set to 0, the radio in the Bluetooth control panel will be greyed out and the user will not be able to turn Bluetooth on.
-   1 – Reserved. If this is set to 1, the radio in the Bluetooth control panel will be functional and the user will be able to turn Bluetooth on.

> [!NOTE]
>  This value is not supported in Windows Phone 8.1 MDM and EAS, Windows 10 for desktop, or Windows 10 Mobile.

-   2 (default) – Allow Bluetooth. If this is set to 2, the radio in the Bluetooth control panel will be functional and the user will be able to turn Bluetooth on.

<p style="margin-left: 20px">If this is not set or it is deleted, the default value of 2 (Allow) is used.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allowcellulardata"></a>**Connectivity/AllowCellularData**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows the cellular data channel on the device. Device reboot is not required to enforce the policy.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Do not allow the cellular data channel. The user can turn it on. This value is not supported in Windows 10, version 1511.
-   1 (default) – Allow the cellular data channel. The user can turn it off.
-   2 - Allow the cellular data channel. The user cannot turn it off.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allowcellulardataroaming"></a>**Connectivity/AllowCellularDataRoaming**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows or disallows cellular data roaming on the device. Device reboot is not required to enforce the policy.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Do not allow cellular data roaming. The user can turn it on. This value is not supported in Windows 10, version 1511.
-   1 (default) – Allow cellular data roaming.
-   2 - Allow cellular data roaming on. The user cannot turn it off.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">To validate, the enterprise can confirm by observing the roaming enable switch in the UX. It will be inactive if the roaming policy is being enforced by the enterprise policy.

<p style="margin-left: 20px">To validate on mobile devices, do the following:

1.  Go to Cellular & SIM.
2.  Click on the SIM (next to the signal strength icon) and select **Properties**.
3.  On the Properties page, select **Data roaming options**.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allowconnecteddevices"></a>**Connectivity/AllowConnectedDevices**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins the ability to disable the Connected Devices Platform (CDP) component. CDP enables discovery and connection to other devices (either proximally with BT/LAN or through the cloud) to support remote app launching, remote messaging, remote app sessions, and other cross-device experiences.

<p style="margin-left: 20px">The following list shows the supported values:

-   1 (default) - Allow (CDP service available).
-   0 - Disable (CDP service not available).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allownfc"></a>**Connectivity/AllowNFC**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows near field communication (NFC) on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Do not allow NFC capabilities.
-   1 (default) – Allow NFC capabilities.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allowusbconnection"></a>**Connectivity/AllowUSBConnection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Enables USB connection between the device and a computer to sync files with the device or to use developer tools to deploy or debug applications. Changing this policy does not affect USB charging.

<p style="margin-left: 20px">Both Media Transfer Protocol (MTP) and IP over USB are disabled when this policy is enforced.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allowvpnovercellular"></a>**Connectivity/AllowVPNOverCellular**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies what type of underlying connections VPN is allowed to use.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – VPN is not allowed over cellular.
-   1 (default) – VPN can use any connection, including cellular.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allowvpnroamingovercellular"></a>**Connectivity/AllowVPNRoamingOverCellular**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Prevents the device from connecting to VPN when the device roams over cellular networks.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-hardeneduncpaths"></a>**Connectivity/HardenedUNCPaths**  

<!--StartDescription-->
This policy setting configures secure access to UNC paths.

If you enable this policy, Windows only allows access to the specified UNC paths after fulfilling additional security requirements.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Hardened UNC Paths*
-   GP name: *Pol_HardenedPaths*
-   GP path: *Network/Network Provider*
-   GP ADMX file name: *networkprovider.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="credentialproviders-allowpinlogon"></a>**CredentialProviders/AllowPINLogon**  

<!--StartDescription-->
This policy setting allows you to control whether a domain user can sign in using a convenience PIN.

If you enable this policy setting, a domain user can set up and sign in with a convenience PIN.

If you disable or don't configure this policy setting, a domain user can't set up and use a convenience PIN.

Note: The user's domain password will be cached in the system vault when using this feature.

To configure Windows Hello for Business, use the Administrative Template policies under Windows Hello for Business.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on convenience PIN sign-in*
-   GP name: *AllowDomainPINLogon*
-   GP path: *System/Logon*
-   GP ADMX file name: *credentialproviders.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="credentialproviders-blockpicturepassword"></a>**CredentialProviders/BlockPicturePassword**  

<!--StartDescription-->
This policy setting allows you to control whether a domain user can sign in using a picture password.

If you enable this policy setting, a domain user can't set up or sign in with a picture password.

If you disable or don't configure this policy setting, a domain user can set up and use a picture password.

Note that the user's domain password will be cached in the system vault when using this feature.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off picture password sign-in*
-   GP name: *BlockDomainPicturePassword*
-   GP path: *System/Logon*
-   GP ADMX file name: *credentialproviders.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="credentialsui-disablepasswordreveal"></a>**CredentialsUI/DisablePasswordReveal**  

<!--StartDescription-->
This policy setting allows you to configure the display of the password reveal button in password entry user experiences.

If you enable this policy setting, the password reveal button will not be displayed after a user types a password in the password entry text box.

If you disable or do not configure this policy setting, the password reveal button will be displayed after a user types a password in the password entry text box.

By default, the password reveal button is displayed after a user types a password in the password entry text box. To display the password, click the password reveal button.

The policy applies to all Windows components and applications that use the Windows system controls, including Internet Explorer.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Do not display the password reveal button*
-   GP name: *DisablePasswordReveal*
-   GP path: *Windows Components/Credential User Interface*
-   GP ADMX file name: *credui.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="credentialsui-enumerateadministrators"></a>**CredentialsUI/EnumerateAdministrators**  

<!--StartDescription-->
This policy setting controls whether administrator accounts are displayed when a user attempts to elevate a running application. By default, administrator accounts are not displayed when the user attempts to elevate a running application.

If you enable this policy setting, all local administrator accounts on the PC will be displayed so the user can choose one and enter the correct password.

If you disable this policy setting, users will always be required to type a user name and password to elevate.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enumerate administrator accounts on elevation*
-   GP name: *EnumerateAdministrators*
-   GP path: *Windows Components/Credential User Interface*
-   GP ADMX file name: *credui.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="cryptography-allowfipsalgorithmpolicy"></a>**Cryptography/AllowFipsAlgorithmPolicy**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows or disallows the Federal Information Processing Standard (FIPS) policy.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1– Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="cryptography-tlsciphersuites"></a>**Cryptography/TLSCipherSuites**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Lists the Cryptographic Cipher Algorithms allowed for SSL connections. Format is a semicolon delimited list. Last write win.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="dataprotection-allowdirectmemoryaccess"></a>**DataProtection/AllowDirectMemoryAccess**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">This policy setting allows you to block direct memory access (DMA) for all hot pluggable PCI downstream ports until a user logs into Windows. Once a user logs in, Windows will enumerate the PCI devices connected to the host plug PCI ports. Every time the user locks the machine, DMA will be blocked on hot plug PCI ports with no children devices until the user logs in again. Devices which were already enumerated when the machine was unlocked will continue to function until unplugged. This policy setting is only enforced when BitLocker or device encryption is enabled.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="dataprotection-legacyselectivewipeid"></a>**DataProtection/LegacySelectiveWipeID**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!IMPORTANT]
> This policy may change in a future release. It may be used for testing purposes, but should not be used in a production environment at this time.

 
<p style="margin-left: 20px">Setting used by Windows 8.1 Selective Wipe.

> [!NOTE]
> This policy is not recommended for use in Windows 10.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="datausage-setcost3g"></a>**DataUsage/SetCost3G**  

<!--StartDescription-->
This policy setting configures the cost of 3G connections on the local machine.

If this policy setting is enabled, a drop-down list box presenting possible cost values will be active.  Selecting one of the following values from the list will set the cost of all 3G connections on the local machine:

- Unrestricted: Use of this connection is unlimited and not restricted by usage charges and capacity constraints.

- Fixed: Use of this connection is not restricted by usage charges and capacity constraints up to a certain data limit.

- Variable: This connection is costed on a per byte basis.

If this policy setting is disabled or is not configured, the cost of 3G connections is Fixed by default.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Set 3G Cost*
-   GP name: *SetCost3G*
-   GP path: *Network/WWAN Service/WWAN Media Cost*
-   GP ADMX file name: *wwansvc.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="datausage-setcost4g"></a>**DataUsage/SetCost4G**  

<!--StartDescription-->
This policy setting configures the cost of 4G connections on the local machine.

If this policy setting is enabled, a drop-down list box presenting possible cost values will be active. Selecting one of the following values from the list will set the cost of all 4G connections on the local machine:

- Unrestricted: Use of this connection is unlimited and not restricted by usage charges and capacity constraints.

- Fixed: Use of this connection is not restricted by usage charges and capacity constraints up to a certain data limit.

- Variable: This connection is costed on a per byte basis.

If this policy setting is disabled or is not configured, the cost of 4G connections is Fixed by default.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Set 4G Cost*
-   GP name: *SetCost4G*
-   GP path: *Network/WWAN Service/WWAN Media Cost*
-   GP ADMX file name: *wwansvc.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-allowarchivescanning"></a>**Defender/AllowArchiveScanning**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows scanning of archives.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-allowbehaviormonitoring"></a>**Defender/AllowBehaviorMonitoring**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Allows or disallows Windows Defender Behavior Monitoring functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-allowcloudprotection"></a>**Defender/AllowCloudProtection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-allowemailscanning"></a>**Defender/AllowEmailScanning**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows scanning of email.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-allowfullscanonmappednetworkdrives"></a>**Defender/AllowFullScanOnMappedNetworkDrives**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows a full scan of mapped network drives.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-allowfullscanremovabledrivescanning"></a>**Defender/AllowFullScanRemovableDriveScanning**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows a full scan of removable drives.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-allowioavprotection"></a>**Defender/AllowIOAVProtection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Allows or disallows Windows Defender IOAVP Protection functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-allowintrusionpreventionsystem"></a>**Defender/AllowIntrusionPreventionSystem**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows Windows Defender Intrusion Prevention functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-allowonaccessprotection"></a>**Defender/AllowOnAccessProtection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows Windows Defender On Access Protection functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-allowrealtimemonitoring"></a>**Defender/AllowRealtimeMonitoring**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows Windows Defender Realtime Monitoring functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-allowscanningnetworkfiles"></a>**Defender/AllowScanningNetworkFiles**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Allows or disallows a scanning of network files.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-allowscriptscanning"></a>**Defender/AllowScriptScanning**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows Windows Defender Script Scanning functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-allowuseruiaccess"></a>**Defender/AllowUserUIAccess**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows user access to the Windows Defender UI. If disallowed, all Windows Defender notifications will also be suppressed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-avgcpuloadfactor"></a>**Defender/AvgCPULoadFactor**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Represents the average CPU load factor for the Windows Defender scan (in percent).

<p style="margin-left: 20px">Valid values: 0–100

<p style="margin-left: 20px">The default value is 50.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-daystoretaincleanedmalware"></a>**Defender/DaysToRetainCleanedMalware**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Time period (in days) that quarantine items will be stored on the system.

<p style="margin-left: 20px">Valid values: 0–90

<p style="margin-left: 20px">The default value is 0, which keeps items in quarantine, and does not automatically remove them.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-excludedextensions"></a>**Defender/ExcludedExtensions**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">llows an administrator to specify a list of file type extensions to ignore during a scan. Each file type in the list must be separated by a **|**. For example, "lib|obj".

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-excludedpaths"></a>**Defender/ExcludedPaths**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows an administrator to specify a list of directory paths to ignore during a scan. Each path in the list must be separated by a **|**. For example, "C:\\Example|C:\\Example1".

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-excludedprocesses"></a>**Defender/ExcludedProcesses**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows an administrator to specify a list of files opened by processes to ignore during a scan.

> [!IMPORTANT]
> The process itself is not excluded from the scan, but can be by using the **Defender/ExcludedPaths** policy to exclude its path.

 
<p style="margin-left: 20px">Each file type must be separated by a **|**. For example, "C:\\Example.exe|C:\\Example1.exe".

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-puaprotection"></a>**Defender/PUAProtection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the level of detection for potentially unwanted applications (PUAs). Windows Defender alerts you when potentially unwanted software is being downloaded or attempts to install itself on your computer.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – PUA Protection off. Windows Defender will not protect against potentially unwanted applications.
-   1 – PUA Protection on. Detected items are blocked. They will show in history along with other threats.
-   2 – Audit mode. Windows Defender will detect potentially unwanted applications, but take no action. You can review information about the applications Windows Defender would have taken action against by searching for events created by Windows Defender in the Event Viewer.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-realtimescandirection"></a>**Defender/RealTimeScanDirection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Controls which sets of files should be monitored.

> [!NOTE]
> If **AllowOnAccessProtection** is not allowed, then this configuration can be used to monitor specific files.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Monitor all files (bi-directional).
-   1 – Monitor incoming files.
-   2 – Monitor outgoing files.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-scanparameter"></a>**Defender/ScanParameter**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Selects whether to perform a quick scan or full scan.

<p style="margin-left: 20px">The following list shows the supported values:

-   1 (default) – Quick scan
-   2 – Full scan

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-schedulequickscantime"></a>**Defender/ScheduleQuickScanTime**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Selects the time of day that the Windows Defender quick scan should run.

> [!NOTE]
> The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.

 
<p style="margin-left: 20px">Valid values: 0–1380

<p style="margin-left: 20px">For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM.

<p style="margin-left: 20px">The default value is 120

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-schedulescanday"></a>**Defender/ScheduleScanDay**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Selects the day that the Windows Defender scan should run.

> [!NOTE]
> The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Every day
-   1 – Monday
-   2 – Tuesday
-   3 – Wednesday
-   4 – Thursday
-   5 – Friday
-   6 – Saturday
-   7 – Sunday
-   8 – No scheduled scan

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-schedulescantime"></a>**Defender/ScheduleScanTime**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Selects the time of day that the Windows Defender scan should run.

> [!NOTE]
> The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.


<p style="margin-left: 20px">Valid values: 0–1380.

<p style="margin-left: 20px">For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM.

<p style="margin-left: 20px">The default value is 120.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-signatureupdateinterval"></a>**Defender/SignatureUpdateInterval**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Specifies the interval (in hours) that will be used to check for signatures, so instead of using the ScheduleDay and ScheduleTime the check for new signatures will be set according to the interval.

<p style="margin-left: 20px">Valid values: 0–24.

<p style="margin-left: 20px">A value of 0 means no check for new signatures, a value of 1 means to check every hour, a value of 2 means to check every two hours, and so on, up to a value of 24, which means to check every day.

<p style="margin-left: 20px">The default value is 8.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-submitsamplesconsent"></a>**Defender/SubmitSamplesConsent**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Checks for the user consent level in Windows Defender to send data. If the required consent has already been granted, Windows Defender submits them. If not, (and if the user has specified never to ask), the UI is launched to ask for user consent (when **Defender/AllowCloudProtection** is allowed) before sending data.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Always prompt.
-   1 (default) – Send safe samples automatically.
-   2 – Never send.
-   3 – Send all samples automatically.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="defender-threatseveritydefaultaction"></a>**Defender/ThreatSeverityDefaultAction**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.
 

<p style="margin-left: 20px">Allows an administrator to specify any valid threat severity levels and the corresponding default action ID to take.

<p style="margin-left: 20px">This value is a list of threat severity level IDs and corresponding actions, separated by a**|** using the format "*threat level*=*action*|*threat level*=*action*". For example "1=6|2=2|4=10|5=3

<p style="margin-left: 20px">The following list shows the supported values for threat severity levels:

-   1 – Low severity threats
-   2 – Moderate severity threats
-   4 – High severity threats
-   5 – Severe threats

<p style="margin-left: 20px">The following list shows the supported values for possible actions:

-   1 – Clean
-   2 – Quarantine
-   3 – Remove
-   6 – Allow
-   8 – User defined
-   10 – Block

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-doabsolutemaxcachesize"></a>**DeliveryOptimization/DOAbsoluteMaxCacheSize**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the maximum size in GB of Delivery Optimization cache. This policy overrides the DOMaxCacheSize policy. The value 0 (zero) means "unlimited" cache. Delivery Optimization will clear the cache when the device is running low on disk space.

<p style="margin-left: 20px">The default value is 10.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-doallowvpnpeercaching"></a>**DeliveryOptimization/DOAllowVPNPeerCaching**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether the device is allowed to participate in Peer Caching while connected via VPN to the domain network. This means the device can download from or upload to other domain network devices, either on VPN or on the corporate domain network.

<p style="margin-left: 20px">The default value is 0 (FALSE).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-dodownloadmode"></a>**DeliveryOptimization/DODownloadMode**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies the download method that Delivery Optimization can use in downloads of Windows Updates, Apps and App updates.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 –HTTP only, no peering.
-   1 (default) – HTTP blended with peering behind the same NAT.
-   2 – HTTP blended with peering across a private group. Peering occurs on devices in the same Active Directory Site (if it exists) or the same domain by default. When this option is selected, peering will cross NATs. To create a custom group use Group ID in combination with Mode 2.
-   3 – HTTP blended with Internet peering.
-   99 - Simple download mode with no peering. Delivery Optimization downloads using HTTP only and does not attempt to contact the Delivery Optimization cloud services. Added in Windows 10, version 1607.
-   100 - Bypass mode. Do not use Delivery Optimization and use BITS instead. Added in Windows 10, version 1607.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-dogroupid"></a>**DeliveryOptimization/DOGroupId**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">This Policy specifies an arbitrary group ID that the device belongs to. Use this if you need to create a single group for Local Network Peering for branches that are on different domains or are not on the same LAN. Note that this is a best effort optimization and should not be relied on for an authentication of identity.

> [!NOTE]
> You must use a GUID as the group ID.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-domaxcacheage"></a>**DeliveryOptimization/DOMaxCacheAge**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies the maximum time in seconds that each file is held in the Delivery Optimization cache after downloading successfully. The value 0 (zero) means "unlimited"; Delivery Optimization will hold the files in the cache longer and make the files available for uploads to other devices, as long as the cache size has not exceeded. The value 0 is new in Windows 10, version 1607.

<p style="margin-left: 20px">The default value is 259200 seconds (3 days).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-domaxcachesize"></a>**DeliveryOptimization/DOMaxCacheSize**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 
<p style="margin-left: 20px">Specifies the maximum cache size that Delivery Optimization can utilize, as a percentage of disk size (1-100).

<p style="margin-left: 20px">The default value is 20.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-domaxdownloadbandwidth"></a>**DeliveryOptimization/DOMaxDownloadBandwidth**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.
 

<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the maximum download bandwidth in KiloBytes/second that the device can use across all concurrent download activities using Delivery Optimization.

<p style="margin-left: 20px">The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-domaxuploadbandwidth"></a>**DeliveryOptimization/DOMaxUploadBandwidth**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 
<p style="margin-left: 20px">Specifies the maximum upload bandwidth in KiloBytes/second that a device will use across all concurrent upload activity using Delivery Optimization.

<p style="margin-left: 20px">The default value is 0, which permits unlimited possible bandwidth (optimized for minimal usage of upload bandwidth).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-dominbackgroundqos"></a>**DeliveryOptimization/DOMinBackgroundQos**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the minimum download QoS (Quality of Service or speed) in KiloBytes/sec for background downloads. This policy affects the blending of peer and HTTP sources. Delivery Optimization complements the download from the HTTP source to achieve the minimum QoS value set.

<p style="margin-left: 20px">The default value is 500.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-dominbatterypercentageallowedtoupload"></a>**DeliveryOptimization/DOMinBatteryPercentageAllowedToUpload**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Business, Enterprise, and Education editions and not supported in Windows 10 Mobile.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies any value between 1 and 100 (in percentage) to allow the device to upload data to LAN and Group peers while on battery power. Uploads will automatically pause when the battery level drops below the set minimum battery level. The recommended value to set is 40 (for 40%) if you allow uploads on battery.

<p style="margin-left: 20px">The default value is 0. The value 0 (zero) means "not limited" and the cloud service default value will be used.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-domindisksizeallowedtopeer"></a>**DeliveryOptimization/DOMinDiskSizeAllowedToPeer**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Business, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the required minimum disk size (capacity in GB) for the device to use Peer Caching. The value 0 means "not-limited" which means the cloud service set default value will be used. Recommended values: 64 GB to 256 GB.

> [!NOTE]
> If the DOMofidyCacheDrive policy is set, the disk size check will apply to the new working directory specified by this policy.

<p style="margin-left: 20px">The default value is 32 GB.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-dominfilesizetocache"></a>**DeliveryOptimization/DOMinFileSizeToCache**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Business, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the minimum content file size in MB enabled to use Peer Caching. The value 0 means "unlimited" which means the cloud service set default value will be used. Recommended values: 1 MB to 100,000 MB.

<p style="margin-left: 20px">The default value is 100 MB.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-dominramallowedtopeer"></a>**DeliveryOptimization/DOMinRAMAllowedToPeer**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Business, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the minimum RAM size in GB required to use Peer Caching. The value 0 means "not-limited" which means the cloud service set default value will be used. For example if the minimum set is 1 GB, then devices with 1 GB or higher available RAM will be allowed to use Peer caching. Recommended values: 1 GB to 4 GB.

<p style="margin-left: 20px">The default value is 4 GB.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-domodifycachedrive"></a>**DeliveryOptimization/DOModifyCacheDrive**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the drive that Delivery Optimization should use for its cache. The drive location can be specified using environment variables, drive letter or using a full path.

<p style="margin-left: 20px">By default, %SystemDrive% is used to store the cache.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-domonthlyuploaddatacap"></a>**DeliveryOptimization/DOMonthlyUploadDataCap**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the maximum total bytes in GB that Delivery Optimization is allowed to upload to Internet peers in each calendar month.

<p style="margin-left: 20px">The value 0 (zero) means "unlimited"; No monthly upload limit is applied if 0 is set.

<p style="margin-left: 20px">The default value is 20.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deliveryoptimization-dopercentagemaxdownloadbandwidth"></a>**DeliveryOptimization/DOPercentageMaxDownloadBandwidth**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the maximum download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth.

<p style="margin-left: 20px">The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="desktop-preventuserredirectionofprofilefolders"></a>**Desktop/PreventUserRedirectionOfProfileFolders**  

<!--StartDescription-->
Prevents users from changing the path to their profile folders.

By default, a user can change the location of their individual profile folders like Documents, Music etc. by typing a new path in the Locations tab of the folder's Properties dialog box.

If you enable this setting, users are unable to type a new location in the Target box.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prohibit User from manually redirecting Profile Folders*
-   GP name: *DisablePersonalDirChange*
-   GP path: *Desktop*
-   GP ADMX file name: *desktop.admx*

<!--EndADMX-->
<!--EndPolicy-->

<!--StartPolicy-->
<a href="" id="deviceguard-enablevirtualizationbasedsecurity"></a>**DeviceGuard/EnableVirtualizationBasedSecurity**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
 
<p style="margin-left: 20px">Added in the next major update to Windows 10. Turns On Virtualization Based Security(VBS) at the next reboot. Virtualization Based Security uses the Windows Hypervisor to provide support for security services. Value type is integer. Supported values:
<ul>
<li>0 (default) - disable Virtualization Based Security</li>
<li>1 - enable Virtualization Based Security</li>
</ul>

<!--EndDescription-->
<!--EndPolicy-->

<!--StartPolicy-->
<a href="" id="deviceguard-requireplatformsecurityfeatures"></a>**DeviceGuard/RequirePlatformSecurityFeatures**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->Added in the next major update to Windows 10. Specifies the platform security level at the next reboot. Value type is integer. Supported values:
<ul>
<li>1 (default) - Turns on VBS with Secure Boot. </li>
<li>3 - Turns on VBS with Secure Boot and DMA. DMA requires hardware support.</li>
</ul>
 
<p style="margin-left: 20px">

<!--EndDescription-->
<!--EndPolicy-->

<!--StartPolicy-->
<a href="" id="deviceguard-lsacfgflags"></a>**DeviceGuard/LsaCfgFlags**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
 
<p style="margin-left: 20px">Added in the next major update to Windows 10. This setting lets users turn on Credential Guard with virtualization-based security to help protect credentials at next reboot. Value type is integer. Supported values:
<ul>
<li>0 (default) - (Disabled) Turns off Credential Guard remotely if configured previously without UEFI Lock</li>
<li>1 - (Enabled with UEFI lock) Turns on CredentialGuard with UEFI lock</li>
<li>2 - (Enabled without lock) Turns on CredentialGuard without UEFI lock</li>

</ul>

<!--EndDescription-->
<!--EndPolicy-->

<!--StartPolicy-->
<a href="" id="deviceinstallation-preventinstallationofmatchingdeviceids"></a>**DeviceInstallation/PreventInstallationOfMatchingDeviceIDs**  

<!--StartDescription-->
This policy setting allows you to specify a list of Plug and Play hardware IDs and compatible IDs for devices that Windows is prevented from installing. This policy setting takes precedence over any other policy setting that allows Windows to install a device.

If you enable this policy setting, Windows is prevented from installing a device whose hardware ID or compatible ID appears in the list you create. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.

If you disable or do not configure this policy setting, devices can be installed and updated as allowed or prevented by other policy settings.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prevent installation of devices that match any of these device IDs*
-   GP name: *DeviceInstall_IDs_Deny*
-   GP path: *System/Device Installation/Device Installation Restrictions*
-   GP ADMX file name: *deviceinstallation.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="deviceinstallation-preventinstallationofmatchingdevicesetupclasses"></a>**DeviceInstallation/PreventInstallationOfMatchingDeviceSetupClasses**  

<!--StartDescription-->
This policy setting allows you to specify a list of device setup class globally unique identifiers (GUIDs) for device drivers that Windows is prevented from installing. This policy setting takes precedence over any other policy setting that allows Windows to install a device.

If you enable this policy setting, Windows is prevented from installing or updating device drivers whose device setup class GUIDs appear in the list you create. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.

If you disable or do not configure this policy setting, Windows can install and update devices as allowed or prevented by other policy settings.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prevent installation of devices using drivers that match these device setup classes*
-   GP name: *DeviceInstall_Classes_Deny*
-   GP path: *System/Device Installation/Device Installation Restrictions*
-   GP ADMX file name: *deviceinstallation.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-allowidlereturnwithoutpassword"></a>**DeviceLock/AllowIdleReturnWithoutPassword**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 
<p style="margin-left: 20px">Specifies whether the user must input a PIN or password when the device resumes from an idle state.

> [!NOTE]
> This policy must be wrapped in an Atomic command.

 
<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-allowscreentimeoutwhilelockeduserconfig"></a>**DeviceLock/AllowScreenTimeoutWhileLockedUserConfig**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 
<p style="margin-left: 20px">Specifies whether to show a user-configurable setting to control the screen timeout while on the lock screen of Windows 10 Mobile devices.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

> [!IMPORTANT]
> If this policy is set to 1 (Allowed), the value set by **DeviceLock/ScreenTimeOutWhileLocked** is ignored. To ensure enterprise control over the screen timeout, set this policy to 0 (Not allowed) and use **DeviceLock/ScreenTimeOutWhileLocked** to set the screen timeout period.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-allowsimpledevicepassword"></a>**DeviceLock/AllowSimpleDevicePassword**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether PINs or passwords such as "1111" or "1234" are allowed. For the desktop, it also controls the use of picture passwords.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-alphanumericdevicepasswordrequired"></a>**DeviceLock/AlphanumericDevicePasswordRequired**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Determines the type of PIN or password required. This policy only applies if the **DeviceLock/DevicePasswordEnabled** policy is set to 0 (required).

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions (Home, Pro, Enterprise, and Education).


<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Alphanumeric PIN or password required.
-   1 – Numeric PIN or password required.
-   2 (default) – Users can choose: Numeric PIN or password, or Alphanumeric PIN or password.

> [!NOTE]
> If **AlphanumericDevicePasswordRequired** is set to 1 or 2, then MinDevicePasswordLength = 0 and MinDevicePasswordComplexCharacters = 1.
>
> If **AlphanumericDevicePasswordRequired** is set to 0, then MinDevicePasswordLength = 4 and MinDevicePasswordComplexCharacters = 2.

 

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-devicepasswordenabled"></a>**DeviceLock/DevicePasswordEnabled**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether device lock is enabled.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions.
 

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Enabled
-   1 – Disabled

> [!IMPORTANT]
> The **DevicePasswordEnabled** setting must be set to 0 (device password is enabled) for the following policy settings to take effect:
>
> -   AllowSimpleDevicePassword
> -   MinDevicePasswordLength
> -   AlphanumericDevicePasswordRequired
> -   MaxDevicePasswordFailedAttempts
> -   MaxInactivityTimeDeviceLock
> -   MinDevicePasswordComplexCharacters
&nbsp;

> [!IMPORTANT]
> If **DevicePasswordEnabled** is set to 0 (device password is enabled), then the following policies are set:
>
> -   MinDevicePasswordLength is set to 4
> -   MinDevicePasswordComplexCharacters is set to 1
>
> If **DevicePasswordEnabled** is set to 1 (device password is disabled), then the following DeviceLock policies are set to 0:
>
> -   MinDevicePasswordLength
> -   MinDevicePasswordComplexCharacters

> [!Important]
> **DevicePasswordEnabled** should not be set to Enabled (0) when WMI is used to set the EAS DeviceLock policies given that it is Enabled by default in Policy CSP for back compat with Windows 8.x. If **DevicePasswordEnabled** is set to Enabled(0) then Policy CSP will return an error stating that **DevicePasswordEnabled** already exists. Windows 8.x did not support DevicePassword policy. When disabling **DevicePasswordEnabled** (1) then this should be the only policy set from the DeviceLock group of policies listed below:
> - **DevicePasswordEnabled** is the parent policy of the following:
> 	- AllowSimpleDevicePassword
>	- MinDevicePasswordLength
>	- AlphanumericDevicePasswordRequired
>		- MinDevicePasswordComplexCharacters 
>	- DevicePasswordExpiration
>	- DevicePasswordHistory
>   - MaxDevicePasswordFailedAttempts
>   - MaxInactivityTimeDeviceLock

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-devicepasswordexpiration"></a>**DeviceLock/DevicePasswordExpiration**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies when the password expires (in days).

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 730.
-   0 (default) - Passwords do not expire.

<p style="margin-left: 20px">If all policy values = 0 then 0; otherwise, Min policy value is the most secure value.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-devicepasswordhistory"></a>**DeviceLock/DevicePasswordHistory**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies how many passwords can be stored in the history that can’t be used.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 50.
-   0 (default)

<p style="margin-left: 20px">The value includes the user's current password. This means that with a setting of 1 the user cannot reuse their current password when choosing a new password, while a setting of 5 means that a user cannot set their new password to their current password or any of their previous four passwords.

<p style="margin-left: 20px">Max policy value is the most restricted.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-enforcelockscreenandlogonimage"></a>**DeviceLock/EnforceLockScreenAndLogonImage**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the default lock screen and logon image shown when no user is signed in. It also sets the specified image for all users, which replaces the default image. The same image is used for both the lock and logon screens. Users will not be able to change this image.

> [!NOTE]
> This policy is only enforced in Windows 10 Enterprise and Education editions and not supported in Windows 10 Home and Pro.


<p style="margin-left: 20px">Value type is a string, which is the full image filepath and filename.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-enforcelockscreenprovider"></a>**DeviceLock/EnforceLockScreenProvider**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Restricts lock screen image to a specific lock screen provider. Users will not be able change this provider.

> [!NOTE]
> This policy is only enforced in Windows 10 for mobile devices.


<p style="margin-left: 20px">Value type is a string, which is the AppID.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-maxdevicepasswordfailedattempts"></a>**DeviceLock/MaxDevicePasswordFailedAttempts**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
The number of authentication failures allowed before the device will be wiped. A value of 0 disables device wipe functionality.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">This policy has different behaviors on the mobile device and desktop.

-   On a mobile device, when the user reaches the value set by this policy, then the device is wiped.
-   On a desktop, when the user reaches the value set by this policy, it is not wiped. Instead, the desktop is put on BitLocker recovery mode, which makes the data inaccessible but recoverable. If BitLocker is not enabled, then the policy cannot be enforced.

    Prior to reaching the failed attempts limit, the user is sent to the lock screen and warned that more failed attempts will lock their computer. When the user reaches the limit, the device automatically reboots and shows the BitLocker recovery page. This page prompts the user for the BitLocker recovery key.

<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 4 &lt;= X &lt;= 16 for desktop and 0 &lt;= X &lt;= 999 for mobile devices.
-   0 (default) - The device is never wiped after an incorrect PIN or password is entered.

<p style="margin-left: 20px">Most secure value is 0 if all policy values = 0; otherwise, Min policy value is the most secure value.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-maxinactivitytimedevicelock"></a>**DeviceLock/MaxInactivityTimeDeviceLock**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked. Users can select any existing timeout value less than the specified maximum time in the Settings app. Note the Lumia 950 and 950XL have a maximum timeout value of 5 minutes, regardless of the value set by this policy.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 999.
-   0 (default) - No timeout is defined. The default of "0" is Windows Phone 7.5 parity and is interpreted by as "No timeout is defined."

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-maxinactivitytimedevicelockwithexternaldisplay"></a>**DeviceLock/MaxInactivityTimeDeviceLockWithExternalDisplay**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked while connected to an external display.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 999.
-   0 (default) - No timeout is defined. The default of "0" is Windows Phone 7.5 parity and is interpreted by as "No timeout is defined."

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-mindevicepasswordcomplexcharacters"></a>**DeviceLock/MinDevicePasswordComplexCharacters**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">The number of complex element types (uppercase and lowercase letters, numbers, and punctuation) required for a strong PIN or password.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions.

<p style="margin-left: 20px">PIN enforces the following behavior for desktop and mobile devices:

-   1 - Digits only
-   2 - Digits and lowercase letters are required
-   3 - Digits, lowercase letters, and uppercase letters are required
-   4 - Digits, lowercase letters, uppercase letters, and special characters are required

<p style="margin-left: 20px">The default value is 1. The following list shows the supported values and actual enforced values:

<table style="margin-left: 20px">
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Account Type</th>
<th>Supported Values</th>
<th>Actual Enforced Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>Mobile</p></td>
<td style="vertical-align:top"><p>1,2,3,4</p></td>
<td style="vertical-align:top"><p>Same as the value set</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Desktop Local Accounts</p></td>
<td style="vertical-align:top"><p> 1,2,3</p></td>
<td style="vertical-align:top"><p>3</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Desktop Microsoft Accounts</p></td>
<td style="vertical-align:top"><p>1,2</p></td>
<td style="vertical-align:top"><p2</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Desktop Domain Accounts</p></td>
<td style="vertical-align:top"><p>Not supported</p></td>
<td style="vertical-align:top">Not supported</p></td>
</tr>
</tbody>
</table>


<p style="margin-left: 20px">Enforced values for Local and Microsoft Accounts:

-   Local accounts support values of 1, 2, and 3, however they always enforce a value of 3.
-   Passwords for local accounts must meet the following minimum requirements:

    -   Not contain the user's account name or parts of the user's full name that exceed two consecutive characters
    -   Be at least six characters in length
    -   Contain characters from three of the following four categories:

        -   English uppercase characters (A through Z)
        -   English lowercase characters (a through z)
        -   Base 10 digits (0 through 9)
        -   Special characters (!, $, \#, %, etc.)

<p style="margin-left: 20px">The enforcement of policies for Microsoft accounts happen on the server, and the server requires a password length of 8 and a complexity of 2. A complexity value of 3 or 4 is unsupported and setting this value on the server makes Microsoft accounts non-compliant.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx) and [KB article](https://support.office.com/article/This-device-doesn-t-meet-the-security-requirements-set-by-your-email-administrator-87132fc7-2c7f-4a71-9de0-779ff81c86ca).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-mindevicepasswordlength"></a>**DeviceLock/MinDevicePasswordLength**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies the minimum number or characters required in the PIN or password.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 4 &lt;= X &lt;= 16 for mobile devices and desktop. However, local accounts will always enforce a minimum password length of 6.
-   Not enforced.
-   The default value is 4 for mobile devices and desktop devices.

<p style="margin-left: 20px">Max policy value is the most restricted.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx) and [KB article](https://support.office.com/article/This-device-doesn-t-meet-the-security-requirements-set-by-your-email-administrator-87132fc7-2c7f-4a71-9de0-779ff81c86ca).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-preventlockscreenslideshow"></a>**DeviceLock/PreventLockScreenSlideShow**  

<!--StartDescription-->
Disables the lock screen slide show settings in PC Settings and prevents a slide show from playing on the lock screen.

By default, users can enable a slide show that will run after they lock the machine.

If you enable this setting, users will no longer be able to modify slide show settings in PC Settings, and no slide show will ever start.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prevent enabling lock screen slide show*
-   GP name: *CPL_Personalization_NoLockScreenSlideshow*
-   GP path: *Control Panel/Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="devicelock-screentimeoutwhilelocked"></a>**DeviceLock/ScreenTimeoutWhileLocked**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.
 
<p style="margin-left: 20px">Allows an enterprise to set the duration in seconds for the screen timeout while on the lock screen of Windows 10 Mobile devices.

<p style="margin-left: 20px">Minimum supported value is 10.

<p style="margin-left: 20px">Maximum supported value is 1800.

<p style="margin-left: 20px">The default value is 10.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="display-turnoffgdidpiscalingforapps"></a>**Display/TurnOffGdiDPIScalingForApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">GDI DPI Scaling enables applications that are not DPI aware to become per monitor DPI aware.

<p style="margin-left: 20px">This policy setting lets you specify legacy applications that have GDI DPI Scaling turned off.

<p style="margin-left: 20px">If you enable this policy setting, GDI DPI Scaling is turned off for all applications in the list, even if they are enabled by using ApplicationCompatibility database, ApplicationCompatibility UI System (Enhanced) setting, or an application manifest.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, GDI DPI Scaling might still be turned on for legacy applications.

<p style="margin-left: 20px">If GDI DPI Scaling is configured to both turn off and turn on an application, the application will be turned off.

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Configure the setting for an app which has GDI DPI scaling enabled via MDM or any other supported mechanisms.
2.   Run the app and observe blurry text.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="display-turnongdidpiscalingforapps"></a>**Display/TurnOnGdiDPIScalingForApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">GDI DPI Scaling enables applications that are not DPI aware to become per monitor DPI aware.

<p style="margin-left: 20px">This policy setting lets you specify legacy applications that have GDI DPI Scaling turned on.

<p style="margin-left: 20px">If you enable this policy setting, GDI DPI Scaling is turned on for all legacy applications in the list.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, GDI DPI Scaling will not be enabled for an application except when an application is enabled by using ApplicationCompatibility database, ApplicationCompatibility UI System (Enhanced) setting, or an application manifest.

<p style="margin-left: 20px">If GDI DPI Scaling is configured to both turn off and turn on an application, the application will be turned off.

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Configure the setting for an app which uses GDI.
2.   Run the app and observe crisp text.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="enterprisecloudprint-cloudprintoauthauthority"></a>**EnterpriseCloudPrint/CloudPrintOAuthAuthority**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the authentication endpoint for acquiring OAuth tokens.

<p style="margin-left: 20px">The datatype is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain the URL of an endpoint. For example, "https:<span></span>//azuretenant.contoso.com/adfs".

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="enterprisecloudprint-cloudprintoauthclientid"></a>**EnterpriseCloudPrint/CloudPrintOAuthClientId**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the GUID of a client application authorized to retrieve OAuth tokens from the OAuthAuthority.

<p style="margin-left: 20px">The datatype is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain a GUID. For example, "E1CF1107-FF90-4228-93BF-26052DD2C714".

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="enterprisecloudprint-cloudprintresourceid"></a>**EnterpriseCloudPrint/CloudPrintResourceId**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the per-user resource URL for which access is requested by the enterprise cloud print client during OAuth authentication.

<p style="margin-left: 20px">The datatype is a string. 

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain a URL. For example, "http:<span></span>//MicrosoftEnterpriseCloudPrint/CloudPrint".

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="enterprisecloudprint-cloudprinterdiscoveryendpoint"></a>**EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the per-user end point for discovering cloud printers.

<p style="margin-left: 20px">The datatype is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain the URL of an endpoint. For example, "https:<span></span>//cloudprinterdiscovery.contoso.com".

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="enterprisecloudprint-discoverymaxprinterlimit"></a>**EnterpriseCloudPrint/DiscoveryMaxPrinterLimit**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Defines the maximum number of printers that should be queried from a discovery end point.

<p style="margin-left: 20px">The datatype is an integer. 

<p style="margin-left: 20px">For Windows Mobile, the default value is 20.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="enterprisecloudprint-mopriadiscoveryresourceid"></a>**EnterpriseCloudPrint/MopriaDiscoveryResourceId**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the per-user resource URL for which access is requested by the Mopria discovery client during OAuth authentication.

<p style="margin-left: 20px">The datatype is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain a URL. For example, "http:<span></span>//MopriaDiscoveryService/CloudPrint".

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="errorreporting-customizeconsentsettings"></a>**ErrorReporting/CustomizeConsentSettings**  

<!--StartDescription-->
This policy setting determines the consent behavior of Windows Error Reporting for specific event types.

If you enable this policy setting, you can add specific event types to a list by clicking Show, and typing event types in the Value Name column of the Show Contents dialog box. Event types are those for generic, non-fatal errors: crash, no response, and kernel fault errors. For each specified event type, you can set a consent level of 0, 1, 2, 3, or 4.

- 0 (Disable): Windows Error Reporting sends no data to Microsoft for this event type.

- 1 (Always ask before sending data): Windows prompts the user for consent to send reports.

- 2 (Send parameters): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and Windows prompts the user for consent to send any additional data requested by Microsoft.

- 3 (Send parameters and safe additional data): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, as well as data which Windows has determined (within a high probability) does not contain personally identifiable data, and prompts the user for consent to send any additional data requested by Microsoft.

- 4 (Send all data): Any data requested by Microsoft is sent automatically.

If you disable or do not configure this policy setting, then the default consent settings that are applied are those specified by the user in Control Panel, or in the Configure Default Consent policy setting.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Customize consent settings*
-   GP name: *WerConsentCustomize_2*
-   GP path: *Windows Components/Windows Error Reporting/Consent*
-   GP ADMX file name: *ErrorReporting.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="errorreporting-disablewindowserrorreporting"></a>**ErrorReporting/DisableWindowsErrorReporting**  

<!--StartDescription-->
This policy setting turns off Windows Error Reporting, so that reports are not collected or sent to either Microsoft or internal servers within your organization when software unexpectedly stops working or fails.

If you enable this policy setting, Windows Error Reporting does not send any problem information to Microsoft. Additionally, solution information is not available in Security and Maintenance in Control Panel.

If you disable or do not configure this policy setting, the Turn off Windows Error Reporting policy setting in Computer Configuration/Administrative Templates/System/Internet Communication Management/Internet Communication settings takes precedence. If Turn off Windows Error Reporting is also either disabled or not configured, user settings in Control Panel for Windows Error Reporting are applied.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Disable Windows Error Reporting*
-   GP name: *WerDisable_2*
-   GP path: *Windows Components/Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="errorreporting-displayerrornotification"></a>**ErrorReporting/DisplayErrorNotification**  

<!--StartDescription-->
This policy setting controls whether users are shown an error dialog box that lets them report an error.

If you enable this policy setting, users are notified in a dialog box that an error has occurred, and can display more details about the error. If the Configure Error Reporting policy setting is also enabled, the user can also report the error.

If you disable this policy setting, users are not notified that errors have occurred. If the Configure Error Reporting policy setting is also enabled, errors are reported, but users receive no notification. Disabling this policy setting is useful for servers that do not have interactive users.

If you do not configure this policy setting, users can change this setting in Control Panel, which is set to enable notification by default on computers that are running Windows XP Personal Edition and Windows XP Professional Edition, and disable notification by default on computers that are running Windows Server.

See also the Configure Error Reporting policy setting.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Display Error Notification*
-   GP name: *PCH_ShowUI*
-   GP path: *Windows Components/Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="errorreporting-donotsendadditionaldata"></a>**ErrorReporting/DoNotSendAdditionalData**  

<!--StartDescription-->
This policy setting controls whether additional data in support of error reports can be sent to Microsoft automatically.

If you enable this policy setting, any additional data requests from Microsoft in response to a Windows Error Reporting report are automatically declined, without notification to the user.

If you disable or do not configure this policy setting, then consent policy settings in Computer Configuration/Administrative Templates/Windows Components/Windows Error Reporting/Consent take precedence.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Do not send additional data*
-   GP name: *WerNoSecondLevelData_2*
-   GP path: *Windows Components/Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="errorreporting-preventcriticalerrordisplay"></a>**ErrorReporting/PreventCriticalErrorDisplay**  

<!--StartDescription-->
This policy setting prevents the display of the user interface for critical errors.

If you enable this policy setting, Windows Error Reporting does not display any GUI-based error messages or dialog boxes for critical errors.

If you disable or do not configure this policy setting, Windows Error Reporting displays the user interface for critical errors.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prevent display of the user interface for critical errors*
-   GP name: *WerDoNotShowUI*
-   GP path: *Windows Components/Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="eventlogservice-controleventlogbehavior"></a>**EventLogService/ControlEventLogBehavior**  

<!--StartDescription-->
This policy setting controls Event Log behavior when the log file reaches its maximum size.

If you enable this policy setting and a log file reaches its maximum size, new events are not written to the log and are lost.

If you disable or do not configure this policy setting and a log file reaches its maximum size, new events overwrite old events.

Note: Old events may or may not be retained according to the "Backup log automatically when full" policy setting.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Control Event Log behavior when the log file reaches its maximum size*
-   GP name: *Channel_Log_Retention_1*
-   GP path: *Windows Components/Event Log Service/Application*
-   GP ADMX file name: *eventlog.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="eventlogservice-specifymaximumfilesizeapplicationlog"></a>**EventLogService/SpecifyMaximumFileSizeApplicationLog**  

<!--StartDescription-->
This policy setting specifies the maximum size of the log file in kilobytes.

If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes) in kilobyte increments.

If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog and it defaults to 20 megabytes.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Specify the maximum log file size (KB)*
-   GP name: *Channel_LogMaxSize_1*
-   GP path: *Windows Components/Event Log Service/Application*
-   GP ADMX file name: *eventlog.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="eventlogservice-specifymaximumfilesizesecuritylog"></a>**EventLogService/SpecifyMaximumFileSizeSecurityLog**  

<!--StartDescription-->
This policy setting specifies the maximum size of the log file in kilobytes.

If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes) in kilobyte increments.

If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog and it defaults to 20 megabytes.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Specify the maximum log file size (KB)*
-   GP name: *Channel_LogMaxSize_2*
-   GP path: *Windows Components/Event Log Service/Security*
-   GP ADMX file name: *eventlog.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="eventlogservice-specifymaximumfilesizesystemlog"></a>**EventLogService/SpecifyMaximumFileSizeSystemLog**  

<!--StartDescription-->
This policy setting specifies the maximum size of the log file in kilobytes.

If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes) in kilobyte increments.

If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog and it defaults to 20 megabytes.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Specify the maximum log file size (KB)*
-   GP name: *Channel_LogMaxSize_4*
-   GP path: *Windows Components/Event Log Service/System*
-   GP ADMX file name: *eventlog.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowcopypaste"></a>**Experience/AllowCopyPaste**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

<p style="margin-left: 20px">Specifies whether copy and paste is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowcortana"></a>**Experience/AllowCortana**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether Cortana is allowed on the device. If you enable or don’t configure this setting, Cortana is allowed on the device. If you disable this setting, Cortana is turned off. When Cortana is off, users will still be able to use search to find items on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">Benefit to the customer:

<p style="margin-left: 20px">Before this setting, enterprise customers could not set up Cortana during out-of-box experience (OOBE) at all, even though Cortana is the “voice” that walks you through OOBE. By sending AllowCortana in initial enrollment, enterprise customers can allow their employees to see the Cortana consent page. This enables them to choose to use Cortana and make their lives easier and more productive.

<p style="margin-left: 20px">Sample scenario:

<p style="margin-left: 20px">An enterprise employee customer is going through OOBE and enjoys Cortana’s help in this process. The customer is happy to learn during OOBE that Cortana can help them be more productive, and chooses to set up Cortana before OOBE finishes. When their setup is finished, they are immediately ready to engage with Cortana to help manage their schedule and more.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowdevicediscovery"></a>**Experience/AllowDeviceDiscovery**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows users to turn on/off device discovery UX.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">When set to 0 , the projection pane is disabled. The Win+P and Win+K shortcut keys will not work on.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowmanualmdmunenrollment"></a>**Experience/AllowManualMDMUnenrollment**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether to allow the user to delete the workplace account using the workplace control panel.

> [!NOTE]
> The MDM server can always remotely delete the account.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowsimerrordialogpromptwhennosim"></a>**Experience/AllowSIMErrorDialogPromptWhenNoSIM**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies whether to display dialog prompt when no SIM card is detected.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – SIM card dialog prompt is not displayed.
-   1 (default) – SIM card dialog prompt is displayed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowscreencapture"></a>**Experience/AllowScreenCapture**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies whether screen capture is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowsyncmysettings"></a>**Experience/AllowSyncMySettings**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows or disallows all Windows sync settings on the device. For information about what settings are sync'ed, see [About sync setting on Windows 10 devices](http://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices).

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Sync settings is not allowed.
-   1 (default) – Sync settings allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowtailoredexperienceswithdiagnosticdata"></a>**Experience/AllowTailoredExperiencesWithDiagnosticData**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy allows you to prevent Windows from using diagnostic data to provide customized experiences to the user. If you enable this policy setting, Windows will not use diagnostic data from this device to customize content shown on the lock screen, Windows tips, Microsoft consumer features, or other related features. If these features are enabled, users will still see recommendations, tips and offers, but they may be less relevant. If you disable or do not configure this policy setting, Microsoft will use diagnostic data to provide personalized recommendations, tips, and offers to tailor Windows for the user's needs and make it work better for them.

<p style="margin-left: 20px">Diagnostic data can include browser, app and feature usage, depending on the "Diagnostic and usage data" setting value.

> **Note** This setting does not control Cortana cutomized experiences because there are separate policies to configure it.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowtaskswitcher"></a>**Experience/AllowTaskSwitcher**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows task switching on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Task switching not allowed.
-   1 (default) – Task switching allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowthirdpartysuggestionsinwindowsspotlight"></a>**Experience/AllowThirdPartySuggestionsInWindowsSpotlight**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only available for Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education.


<p style="margin-left: 20px">Specifies whether to allow app and content suggestions from third-party software publishers in Windows spotlight features like lock screen spotlight, suggested apps in the Start menu, and Windows tips. Users may still see suggestions for Microsoft features, apps, and services.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Third-party suggestions not allowed.
-   1 (default) – Third-party suggestions allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowvoicerecording"></a>**Experience/AllowVoiceRecording**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies whether voice recording is allowed for apps.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowwindowsconsumerfeatures"></a>**Experience/AllowWindowsConsumerFeatures**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">This policy allows IT admins to turn on experiences that are typically for consumers only, such as Start suggestions, Membership notifications, Post-OOBE app install and redirect tiles.

> [!IMPORTANT]
> This node must be accessed using the following paths:
>
> -   **./User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsConsumerFeatures** to set the policy.
> -   **./User/Vendor/MSFT/Policy/Result/Experience/AllowWindowsConsumerFeatures** to get the result.

 
<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowwindowsspotlight"></a>**Experience/AllowWindowsSpotlight**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only available for Windows 10 Enterprise and Windows 10 Education.


<p style="margin-left: 20px">Specifies whether to turn off all Windows spotlight features at once. If you enable this policy setting, Windows spotlight on lock screen, Windows Tips, Microsoft consumer features and other related features will be turned off. You should enable this policy setting if your goal is to minimize network traffic from target devices. If you disable or do not configure this policy setting, Windows spotlight features are allowed and may be controlled individually using their corresponding policy settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowwindowsspotlightonactioncenter"></a>**Experience/AllowWindowsSpotlightOnActionCenter**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy allows administrators to prevent Windows spotlight notifications from being displayed in the Action Center. If you enable this policy, Windows spotlight notifications will no longer be displayed in the Action Center. If you disable or do not configure this policy, Microsoft may display notifications in the Action Center that will suggest apps or features to help users be more productive on Windows.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowwindowsspotlightwindowswelcomeexperience"></a>**Experience/AllowWindowsSpotlightWindowsWelcomeExperience**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy setting lets you turn off the Windows spotlight Windows welcome experience feature. 
The Windows welcome experience feature introduces onboard users to Windows; for example, launching Microsoft Edge with a webpage that highlights new features. If you enable this policy, the Windows welcome experience will no longer be displayed when there are updates and changes to Windows and its apps. If you disable or do not configure this policy, the Windows welcome experience will be launched to inform onboard users about what's new, changed, and suggested.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-allowwindowstips"></a>**Experience/AllowWindowsTips**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Enables or disables Windows Tips / soft landing.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disabled.
-   1 (default) – Enabled.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-configurewindowsspotlightonlockscreen"></a>**Experience/ConfigureWindowsSpotlightOnLockScreen**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only available for Windows 10 Enterprise and Windows 10 Education.


<p style="margin-left: 20px">Allows IT admins to specify whether spotlight should be used on the user's lock screen. If your organization does not have an Enterprise spotlight content service, then this policy will behave the same as a setting of 1.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – None.
-   1 (default) – Windows spotlight enabled.
-   2 – placeholder only for future extension. Using this value has no effect.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="experience-donotshowfeedbacknotifications"></a>**Experience/DoNotShowFeedbackNotifications**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Prevents devices from showing feedback questions from Microsoft.

<p style="margin-left: 20px">If you enable this policy setting, users will no longer see feedback notifications through the Feedback hub app. If you disable or do not configure this policy setting, users may see notifications through the Feedback hub app asking users for feedback.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users can control how often they receive feedback questions.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Feedback notifications are not disabled. The actual state of feedback notifications on the device will then depend on what GP has configured or what the user has configured locally.
-   1 – Feedback notifications are disabled.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="games-allowadvancedgamingservices"></a>**Games/AllowAdvancedGamingServices**  

<!--StartDescription-->
<p style="margin-left: 20px">Placeholder only. Currently not supported.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-addsearchprovider"></a>**InternetExplorer/AddSearchProvider**  

<!--StartDescription-->
This policy setting allows you to add a specific list of search providers to the user's default list of search providers. Normally, search providers can be added from third-party toolbars or in Setup. The user can also add a search provider from the provider's website.

If you enable this policy setting, the user can add and remove search providers, but only from the set of search providers specified in the list of policy keys for search providers (found under [HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\SearchScopes]). Note: This list can be created from a custom administrative template file. For information about creating this custom administrative template file, see the Internet Explorer documentation on search providers.

If you disable or do not configure this policy setting, the user can configure their list of search providers unless another policy setting restricts such configuration.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Add a specific list of search providers to the user's list of search providers*
-   GP name: *AddSearchProvider*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowactivexfiltering"></a>**InternetExplorer/AllowActiveXFiltering**  

<!--StartDescription-->
This policy setting controls the ActiveX Filtering feature for websites that are running ActiveX controls. The user can choose to turn off ActiveX Filtering for specific websites so that ActiveX controls can run properly.

If you enable this policy setting, ActiveX Filtering is enabled by default for the user. The user cannot turn off ActiveX Filtering, although they may add per-site exceptions.

If you disable or do not configure this policy setting, ActiveX Filtering is not enabled by default for the user. The user can turn ActiveX Filtering on or off.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on ActiveX Filtering*
-   GP name: *TurnOnActiveXFiltering*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowaddonlist"></a>**InternetExplorer/AllowAddOnList**  

<!--StartDescription-->
This policy setting allows you to manage a list of add-ons to be allowed or denied by Internet Explorer. Add-ons in this case are controls like ActiveX Controls, Toolbars, and Browser Helper Objects (BHOs) which are specifically written to extend or enhance the functionality of the browser or web pages.

This list can be used with the 'Deny all add-ons unless specifically allowed in the Add-on List' policy setting, which defines whether add-ons not listed here are assumed to be denied.

If you enable this policy setting, you can enter a list of add-ons to be allowed or denied by Internet Explorer. For each entry that you add to the list, enter the following information:

Name of the Value - the CLSID (class identifier) for the add-on you wish to add to the list.  The CLSID should be in brackets for example, {000000000-0000-0000-0000-0000000000000}'. The CLSID for an add-on can be obtained by reading the OBJECT tag from a Web page on which the add-on is referenced.

Value - A number indicating whether Internet Explorer should deny or allow the add-on to be loaded. To specify that an add-on should be denied enter a 0 (zero) into this field. To specify that an add-on should be allowed, enter a 1 (one) into this field. To specify that an add-on should be allowed and also permit the user to manage the add-on through Add-on Manager, enter a 2 (two) into this field.

If you disable this policy setting, the list is deleted. The 'Deny all add-ons unless specifically allowed in the Add-on List' policy setting will still determine whether add-ons not in this list are assumed to be denied.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Add-on List*
-   GP name: *AddonManagement_AddOnList*
-   GP path: *Windows Components/Internet Explorer/Security Features/Add-on Management*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowenhancedprotectedmode"></a>**InternetExplorer/AllowEnhancedProtectedMode**  

<!--StartDescription-->
Enhanced Protected Mode provides additional protection against malicious websites by using 64-bit processes on 64-bit versions of Windows. For computers running at least Windows 8, Enhanced Protected Mode also limits the locations Internet Explorer can read from in the registry and the file system.

If you enable this policy setting, Enhanced Protected Mode will be turned on. Any zone that has Protected Mode enabled will use Enhanced Protected Mode. Users will not be able to disable Enhanced Protected Mode.

If you disable this policy setting, Enhanced Protected Mode will be turned off. Any zone that has Protected Mode enabled will use the version of Protected Mode introduced in Internet Explorer 7 for Windows Vista.

If you do not configure this policy, users will be able to turn on or turn off Enhanced Protected Mode on the Advanced tab of the Internet Options dialog.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on Enhanced Protected Mode*
-   GP name: *Advanced_EnableEnhancedProtectedMode*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Advanced Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowenterprisemodefromtoolsmenu"></a>**InternetExplorer/AllowEnterpriseModeFromToolsMenu**  

<!--StartDescription-->
This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.

If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.

If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Let users turn on and use Enterprise Mode from the Tools menu*
-   GP name: *EnterpriseModeEnable*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowenterprisemodesitelist"></a>**InternetExplorer/AllowEnterpriseModeSiteList**  

<!--StartDescription-->
This policy setting lets you specify where to find the list of websites you want opened using Enterprise Mode IE, instead of Standard mode, because of compatibility issues. Users can't edit this list.

If you enable this policy setting, Internet Explorer downloads the website list from your location (HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\Main\EnterpriseMode), opening all listed websites using Enterprise Mode IE.

If you disable or don't configure this policy setting, Internet Explorer opens all websites using Standards mode.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Use the Enterprise Mode IE website list*
-   GP name: *EnterpriseModeSiteList*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowinternetexplorer7policylist "></a>**InternetExplorer/AllowInternetExplorer7PolicyList **  

<!--StartDescription-->
This policy setting allows you to add specific sites that must be viewed in Internet Explorer 7 Compatibility View.

If you enable this policy setting, the user can add and remove sites from the list, but the user cannot remove the entries that you specify.

If you disable or do not configure this policy setting, the user can add and remove sites from the list.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Use Policy List of Internet Explorer 7 sites*
-   GP name: *CompatView_UsePolicyList*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowinternetexplorerstandardsmode"></a>**InternetExplorer/AllowInternetExplorerStandardsMode**  

<!--StartDescription-->
This policy setting controls how Internet Explorer displays local intranet content. Intranet content is defined as any webpage that belongs to the local intranet security zone.

If you enable this policy setting, Internet Explorer uses the current user agent string for local intranet content. Additionally, all local intranet Standards Mode pages appear in the Standards Mode available with the latest version of Internet Explorer. The user cannot change this behavior through the Compatibility View Settings dialog box.

If you disable this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended) for local intranet content. Additionally, all local intranet Standards Mode pages appear in Internet Explorer 7 Standards Mode. The user cannot change this behavior through the Compatibility View Settings dialog box.

If you do not configure this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended) for local intranet content. Additionally, all local intranet Standards Mode pages appear in Internet Explorer 7 Standards Mode. This option results in the greatest compatibility with existing webpages, but newer content written to common Internet standards may be displayed incorrectly. This option matches the default behavior of Internet Explorer.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on Internet Explorer Standards Mode for local intranet*
-   GP name: *CompatView_IntranetSites*
-   GP path: *Windows Components/Internet Explorer/Compatibility View*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowinternetzonetemplate"></a>**InternetExplorer/AllowInternetZoneTemplate**  

<!--StartDescription-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Internet Zone Template*
-   GP name: *IZ_PolicyInternetZoneTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowintranetzonetemplate"></a>**InternetExplorer/AllowIntranetZoneTemplate**  

<!--StartDescription-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Intranet Zone Template*
-   GP name: *IZ_PolicyIntranetZoneTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowlocalmachinezonetemplate"></a>**InternetExplorer/AllowLocalMachineZoneTemplate**  

<!--StartDescription-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Local Machine Zone Template*
-   GP name: *IZ_PolicyLocalMachineZoneTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowlockeddowninternetzonetemplate"></a>**InternetExplorer/AllowLockedDownInternetZoneTemplate**  

<!--StartDescription-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Locked-Down Internet Zone Template*
-   GP name: *IZ_PolicyInternetZoneLockdownTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowlockeddownintranetzonetemplate"></a>**InternetExplorer/AllowLockedDownIntranetZoneTemplate**  

<!--StartDescription-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Locked-Down Intranet Zone Template*
-   GP name: *IZ_PolicyIntranetZoneLockdownTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowlockeddownlocalmachinezonetemplate"></a>**InternetExplorer/AllowLockedDownLocalMachineZoneTemplate**  

<!--StartDescription-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Locked-Down Local Machine Zone Template*
-   GP name: *IZ_PolicyLocalMachineZoneLockdownTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowlockeddownrestrictedsiteszonetemplate"></a>**InternetExplorer/AllowLockedDownRestrictedSitesZoneTemplate**  

<!--StartDescription-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Locked-Down Restricted Sites Zone Template*
-   GP name: *IZ_PolicyRestrictedSitesZoneLockdownTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowonewordentry"></a>**InternetExplorer/AllowOneWordEntry**  

<!--StartDescription-->
This policy allows the user to go directly to an intranet site for a one-word entry in the Address bar.

If you enable this policy setting, Internet Explorer goes directly to an intranet site for a one-word entry in the Address bar, if it is available.

If you disable or do not configure this policy setting, Internet Explorer does not go directly to an intranet site for a one-word entry in the Address bar.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Go to an intranet site for a one-word entry in the Address bar*
-   GP name: *UseIntranetSiteForOneWordEntry*
-   GP path: *Windows Components/Internet Explorer/Internet Settings/Advanced settings/Browsing*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowsitetozoneassignmentlist"></a>**InternetExplorer/AllowSiteToZoneAssignmentList**  

<!--StartDescription-->
This policy setting allows you to manage a list of sites that you want to associate with a particular security zone. These zone numbers have associated security settings that apply to all of the sites in the zone.

Internet Explorer has 4 security zones, numbered 1-4, and these are used by this policy setting to associate sites to zones. They are: (1) Intranet zone, (2) Trusted Sites zone, (3) Internet zone, and (4) Restricted Sites zone. Security settings can be set for each of these zones through other policy settings, and their default settings are: Trusted Sites zone (Low template), Intranet zone (Medium-Low template), Internet zone (Medium template), and Restricted Sites zone (High template). (The Local Machine zone and its locked down equivalent have special security settings that protect your local computer.)

If you enable this policy setting, you can enter a list of sites and their related zone numbers. The association of a site with a zone will ensure that the security settings for the specified zone are applied to the site. For each entry that you add to the list, enter the following information:

Valuename  A host for an intranet site, or a fully qualified domain name for other sites. The valuename may also includea specificprotocol. For example, if you enter http://www.contoso.comas the valuename, other protocols are not affected.If you enter just www.contoso.com,then all protocolsare affected for that site, including http, https, ftp, and so on. The site may also be expressed as an IP address (e.g., 127.0.0.1) or range (e.g., 127.0.0.1-10). To avoid creating conflicting policies, do not include additional characters after the domain such as trailing slashes or URL path. For example, policy settings for www.contoso.com and www.contoso.com/mail would be treated as the same policy setting by Internet Explorer, and would therefore be in conflict.

Value - A number indicating the zone with which this site should be associated for security settings. The Internet Explorer zones described above are 1-4.

If you disable or do not configure this policy, users may choose their own site-to-zone assignments.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Site to Zone Assignment List*
-   GP name: *IZ_Zonemaps*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowsuggestedsites"></a>**InternetExplorer/AllowSuggestedSites**  

<!--StartDescription-->
This policy setting controls the Suggested Sites feature, which recommends websites based on the users browsing activity. Suggested Sites reports a users browsing history to Microsoft to suggest sites that the user might want to visit.

If you enable this policy setting, the user is not prompted to enable Suggested Sites. The users browsing history is sent to Microsoft to produce suggestions.

If you disable this policy setting, the entry points and functionality associated with this feature are turned off.

If you do not configure this policy setting, the user can turn on and turn off the Suggested Sites feature.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on Suggested Sites*
-   GP name: *EnableSuggestedSites*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowtrustedsiteszonetemplate"></a>**InternetExplorer/AllowTrustedSitesZoneTemplate**  

<!--StartDescription-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Trusted Sites Zone Template*
-   GP name: *IZ_PolicyTrustedSitesZoneTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowslockeddowntrustedsiteszonetemplate"></a>**InternetExplorer/AllowsLockedDownTrustedSitesZoneTemplate**  

<!--StartDescription-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Locked-Down Trusted Sites Zone Template*
-   GP name: *IZ_PolicyTrustedSitesZoneLockdownTemplate*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-allowsrestrictedsiteszonetemplate"></a>**InternetExplorer/AllowsRestrictedSitesZoneTemplate**  

<!--StartDescription-->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

If you disable this template policy setting, no security level is configured.

If you do not configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It is recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Restricted Sites Zone Template*
-   GP name: *IZ_PolicyRestrictedSitesZoneTemplate*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-disableadobeflash"></a>**InternetExplorer/DisableAdobeFlash**  

<!--StartDescription-->
This policy setting turns off Adobe Flash in Internet Explorer and prevents applications from using Internet Explorer technology to instantiate Flash objects.

If you enable this policy setting, Flash is turned off for Internet Explorer, and applications cannot use Internet Explorer technology to instantiate Flash objects. In the Manage Add-ons dialog box, the Flash status will be 'Disabled', and users cannot enable Flash. If you enable this policy setting, Internet Explorer will ignore settings made for Adobe Flash through the "Add-on List" and "Deny all add-ons unless specifically allowed in the Add-on List" policy settings.

If you disable, or do not configure this policy setting, Flash is turned on for Internet Explorer, and applications can use Internet Explorer technology to instantiate Flash objects. Users can enable or disable Flash in the Manage Add-ons dialog box.

Note that Adobe Flash can still be disabled through the "Add-on List" and "Deny all add-ons unless specifically allowed in the Add-on List" policy settings, even if this policy setting is disabled, or not configured. However, if Adobe Flash is disabled through the "Add-on List" and "Deny all add-ons unless specifically allowed in the Add-on List" policy settings and not through this policy setting, all applications that use Internet Explorer technology to instantiate Flash object can still do so. For more information, see "Group Policy Settings in Internet Explorer 10" in the Internet Explorer TechNet library.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off Adobe Flash in Internet Explorer and prevent applications from using Internet Explorer technology to instantiate Flash objects*
-   GP name: *DisableFlashInIE*
-   GP path: *Windows Components/Internet Explorer/Security Features/Add-on Management*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-disablebypassofsmartscreenwarnings"></a>**InternetExplorer/DisableBypassOfSmartScreenWarnings**  

<!--StartDescription-->
This policy setting determines whether the user can bypass warnings from SmartScreen Filter. SmartScreen Filter prevents the user from browsing to or downloading from sites that are known to host malicious content. SmartScreen Filter also prevents the execution of files that are known to be malicious.

If you enable this policy setting, SmartScreen Filter warnings block the user.

If you disable or do not configure this policy setting, the user can bypass SmartScreen Filter warnings.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prevent bypassing SmartScreen Filter warnings*
-   GP name: *DisableSafetyFilterOverride*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-disablebypassofsmartscreenwarningsaboutuncommonfiles"></a>**InternetExplorer/DisableBypassOfSmartScreenWarningsAboutUncommonFiles**  

<!--StartDescription-->
This policy setting determines whether the user can bypass warnings from SmartScreen Filter. SmartScreen Filter warns the user about executable files that Internet Explorer users do not commonly download from the Internet.

If you enable this policy setting, SmartScreen Filter warnings block the user.

If you disable or do not configure this policy setting, the user can bypass SmartScreen Filter warnings.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prevent bypassing SmartScreen Filter warnings about files that are not commonly downloaded from the Internet*
-   GP name: *DisableSafetyFilterOverrideForAppRepUnknown*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-disablecustomerexperienceimprovementprogramparticipation"></a>**InternetExplorer/DisableCustomerExperienceImprovementProgramParticipation**  

<!--StartDescription-->
This policy setting prevents the user from participating in the Customer Experience Improvement Program (CEIP).

If you enable this policy setting, the user cannot participate in the CEIP, and the Customer Feedback Options command does not appear on the Help menu.

If you disable this policy setting, the user must participate in the CEIP, and the Customer Feedback Options command does not appear on the Help menu.

If you do not configure this policy setting, the user can choose to participate in the CEIP.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prevent participation in the Customer Experience Improvement Program*
-   GP name: *SQM_DisableCEIP*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-disableenclosuredownloading"></a>**InternetExplorer/DisableEnclosureDownloading**  

<!--StartDescription-->
This policy setting prevents the user from having enclosures (file attachments) downloaded from a feed to the user's computer.

If you enable this policy setting, the user cannot set the Feed Sync Engine to download an enclosure through the Feed property page. A developer cannot change the download setting through the Feed APIs.

If you disable or do not configure this policy setting, the user can set the Feed Sync Engine to download an enclosure through the Feed property page. A developer can change the download setting through the Feed APIs.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prevent downloading of enclosures*
-   GP name: *Disable_Downloading_of_Enclosures*
-   GP path: *Windows Components/RSS Feeds*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-disableencryptionsupport"></a>**InternetExplorer/DisableEncryptionSupport**  

<!--StartDescription-->
This policy setting allows you to turn off support for Transport Layer Security (TLS) 1.0, TLS 1.1, TLS 1.2, Secure Sockets Layer (SSL) 2.0, or SSL 3.0 in the browser. TLS and SSL are protocols that help protect communication between the browser and the target server. When the browser attempts to set up a protected communication with the target server, the browser and server negotiate which protocol and version to use. The browser and server attempt to match each others list of supported protocols and versions, and they select the most preferred match.

If you enable this policy setting, the browser negotiates or does not negotiate an encryption tunnel by using the encryption methods that you select from the drop-down list.

If you disable or do not configure this policy setting, the user can select which encryption method the browser supports.

Note: SSL 2.0 is off by default and is no longer supported starting with Windows 10 Version 1607. SSL 2.0 is an outdated security protocol, and enabling SSL 2.0 impairs the performance and functionality of TLS 1.0.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off encryption support*
-   GP name: *Advanced_SetWinInetProtocols*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Advanced Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-disablefirstrunwizard"></a>**InternetExplorer/DisableFirstRunWizard**  

<!--StartDescription-->
This policy setting prevents Internet Explorer from running the First Run wizard the first time a user starts the browser after installing Internet Explorer or Windows.

If you enable this policy setting, you must make one of the following choices:
Skip the First Run wizard, and go directly to the user's home page.
Skip the First Run wizard, and go directly to the "Welcome to Internet Explorer" webpage.

Starting with Windows 8, the "Welcome to Internet Explorer" webpage is not available. The user's home page will display regardless of which option is chosen.

If you disable or do not configure this policy setting, Internet Explorer may run the First Run wizard the first time the browser is started after installation.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prevent running First Run wizard*
-   GP name: *NoFirstRunCustomise*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-disableflipaheadfeature"></a>**InternetExplorer/DisableFlipAheadFeature**  

<!--StartDescription-->
This policy setting determines whether a user can swipe across a screen or click Forward to go to the next pre-loaded page of a website.

Microsoft collects your browsing history to improve how flip ahead with page prediction works. This feature isn't available for Internet Explorer for the desktop.

If you enable this policy setting, flip ahead with page prediction is turned off and the next webpage isn't loaded into the background.

If you disable this policy setting, flip ahead with page prediction is turned on and the next webpage is loaded into the background.

If you don't configure this setting, users can turn this behavior on or off, using the Settings charm.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off the flip ahead with page prediction feature*
-   GP name: *Advanced_DisableFlipAhead*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Advanced Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-disablehomepagechange"></a>**InternetExplorer/DisableHomePageChange**  

<!--StartDescription-->
The Home page specified on the General tab of the Internet Options dialog box is the default Web page that Internet Explorer loads whenever it is run.

If you enable this policy setting, a user cannot set a custom default home page. You must specify which default home page should load on the user machine. For machines with at least Internet Explorer 7, the home page can be set within this policy to override other home page policies.

If you disable or do not configure this policy setting, the Home page box is enabled and users can choose their own home page.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Disable changing home page settings*
-   GP name: *RestrictHomePage*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-disableproxychange"></a>**InternetExplorer/DisableProxyChange**  

<!--StartDescription-->
This policy setting specifies if a user can change proxy settings.

If you enable this policy setting, the user will not be able to configure proxy settings.

If you disable or do not configure this policy setting, the user can configure proxy settings.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prevent changing proxy settings*
-   GP name: *RestrictProxy*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-disablesearchproviderchange"></a>**InternetExplorer/DisableSearchProviderChange**  

<!--StartDescription-->
This policy setting prevents the user from changing the default search provider for the Address bar and the toolbar Search box.

If you enable this policy setting, the user cannot change the default search provider.

If you disable or do not configure this policy setting, the user can change the default search provider.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prevent changing the default search provider*
-   GP name: *NoSearchProvider*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-disablesecondaryhomepagechange"></a>**InternetExplorer/DisableSecondaryHomePageChange**  

<!--StartDescription-->
Secondary home pages are the default Web pages that Internet Explorer loads in separate tabs from the home page whenever the browser is run. This policy setting allows you to set default secondary home pages.

If you enable this policy setting, you can specify which default home pages should load as secondary home pages. The user cannot set custom default secondary home pages.

If you disable or do not configure this policy setting, the user can add secondary home pages.

Note: If the Disable Changing Home Page Settings policy is enabled, the user cannot add secondary home pages.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Disable changing secondary home page settings*
-   GP name: *SecondaryHomePages*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-disableupdatecheck"></a>**InternetExplorer/DisableUpdateCheck**  

<!--StartDescription-->
Prevents Internet Explorer from checking whether a new version of the browser is available.

If you enable this policy, it prevents Internet Explorer from checking to see whether it is the latest available browser version and notifying users if a new version is available.

If you disable this policy or do not configure it, Internet Explorer checks every 30 days by default, and then notifies users if a new version is available.

This policy is intended to help the administrator maintain version control for Internet Explorer by preventing users from being notified about new versions of the browser.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Disable Periodic Check for Internet Explorer software updates*
-   GP name: *NoUpdateCheck*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-donotallowuserstoaddsites"></a>**InternetExplorer/DoNotAllowUsersToAddSites**  

<!--StartDescription-->
Prevents users from adding or removing sites from security zones. A security zone is a group of Web sites with the same security level.

If you enable this policy, the site management settings for security zones are disabled. (To see the site management settings for security zones, in the Internet Options dialog box, click the Security tab, and then click the Sites button.)

If you disable this policy or do not configure it, users can add Web sites to or remove sites from the Trusted Sites and Restricted Sites zones, and alter settings for the Local Intranet zone.

This policy prevents users from changing site management settings for security zones established by the administrator.

Note:  The "Disable the Security page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Security tab from the interface, takes precedence over this policy. If it is enabled, this policy is ignored.

Also, see the "Security zones: Use only machine settings" policy.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Security Zones: Do not allow users to add/delete sites*
-   GP name: *Security_zones_map_edit*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-donotallowuserstochangepolicies"></a>**InternetExplorer/DoNotAllowUsersToChangePolicies**  

<!--StartDescription-->
Prevents users from changing security zone settings. A security zone is a group of Web sites with the same security level.

If you enable this policy, the Custom Level button and security-level slider on the Security tab in the Internet Options dialog box are disabled.

If you disable this policy or do not configure it, users can change the settings for security zones.

This policy prevents users from changing security zone settings established by the administrator.

Note: The "Disable the Security page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Security tab from Internet Explorer in Control Panel, takes precedence over this policy. If it is enabled, this policy is ignored.

Also, see the "Security zones: Use only machine settings" policy.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Security Zones: Do not allow users to change policies*
-   GP name: *Security_options_edit*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-donotblockoutdatedactivexcontrols"></a>**InternetExplorer/DoNotBlockOutdatedActiveXControls**  

<!--StartDescription-->
This policy setting determines whether Internet Explorer blocks specific outdated ActiveX controls. Outdated ActiveX controls are never blocked in the Intranet Zone.

If you enable this policy setting, Internet Explorer stops blocking outdated ActiveX controls.

If you disable or don't configure this policy setting, Internet Explorer continues to block specific outdated ActiveX controls.

For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off blocking of outdated ActiveX controls for Internet Explorer*
-   GP name: *VerMgmtDisable*
-   GP path: *Windows Components/Internet Explorer/Security Features/Add-on Management*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-donotblockoutdatedactivexcontrolsonspecificdomains"></a>**InternetExplorer/DoNotBlockOutdatedActiveXControlsOnSpecificDomains**  

<!--StartDescription-->
This policy setting allows you to manage a list of domains on which Internet Explorer will stop blocking outdated ActiveX controls. Outdated ActiveX controls are never blocked in the Intranet Zone.

If you enable this policy setting, you can enter a custom list of domains for which outdated ActiveX controls won't be blocked in Internet Explorer. Each domain entry must be formatted like one of the following:

1. "domain.name.TLD". For example, if you want to include *.contoso.com/*, use "contoso.com"
2. "hostname". For example, if you want to include http://example, use "example"
3. "file:///path/filename.htm". For example, use "file:///C:/Users/contoso/Desktop/index.htm"

If you disable or don't configure this policy setting, the list is deleted and Internet Explorer continues to block specific outdated ActiveX controls on all domains in the Internet Zone.

For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off blocking of outdated ActiveX controls for Internet Explorer on specific domains*
-   GP name: *VerMgmtDomainAllowlist*
-   GP path: *Windows Components/Internet Explorer/Security Features/Add-on Management*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-includealllocalsites"></a>**InternetExplorer/IncludeAllLocalSites**  

<!--StartDescription-->
This policy setting controls whether local sites which are not explicitly mapped into any Security Zone are forced into the local Intranet security zone.

If you enable this policy setting, local sites which are not explicitly mapped into a zone are considered to be in the Intranet Zone.

If you disable this policy setting, local sites which are not explicitly mapped into a zone will not be considered to be in the Intranet Zone (so would typically be in the Internet Zone).

If you do not configure this policy setting, users choose whether to force local sites into the Intranet Zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Intranet Sites: Include all local (intranet) sites not listed in other zones*
-   GP name: *IZ_IncludeUnspecifiedLocalSites*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-includeallnetworkpaths"></a>**InternetExplorer/IncludeAllNetworkPaths**  

<!--StartDescription-->
This policy setting controls whether URLs representing UNCs are mapped into the local Intranet security zone.

If you enable this policy setting, all network paths are mapped into the Intranet Zone.

If you disable this policy setting, network paths are not necessarily mapped into the Intranet Zone (other rules might map one there).

If you do not configure this policy setting, users choose whether network paths are mapped into the Intranet Zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Intranet Sites: Include all network paths (UNCs)*
-   GP name: *IZ_UNCAsIntranet*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-internetzoneallowaccesstodatasources"></a>**InternetExplorer/InternetZoneAllowAccessToDataSources**  

<!--StartDescription-->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-internetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/InternetZoneAllowAutomaticPromptingForActiveXControls**  

<!--StartDescription-->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-internetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/InternetZoneAllowAutomaticPromptingForFileDownloads**  

<!--StartDescription-->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-internetzoneallowfontdownloads"></a>**InternetExplorer/InternetZoneAllowFontDownloads**  

<!--StartDescription-->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-internetzoneallowlessprivilegedsites"></a>**InternetExplorer/InternetZoneAllowLessPrivilegedSites**  

<!--StartDescription-->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Restricted Sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.  The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-internetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/InternetZoneAllowNETFrameworkReliantComponents**  

<!--StartDescription-->
This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will execute unsigned managed components.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-internetzoneallowscriptlets"></a>**InternetExplorer/InternetZoneAllowScriptlets**  

<!--StartDescription-->
This policy setting allows you to manage whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-internetzoneallowsmartscreenie"></a>**InternetExplorer/InternetZoneAllowSmartScreenIE**  

<!--StartDescription-->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-internetzoneallowuserdatapersistence"></a>**InternetExplorer/InternetZoneAllowUserDataPersistence**  

<!--StartDescription-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-internetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/InternetZoneInitializeAndScriptActiveXControls**  

<!--StartDescription-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-internetzonenavigatewindowsandframes"></a>**InternetExplorer/InternetZoneNavigateWindowsAndFrames**  

<!--StartDescription-->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_1*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-intranetzoneallowaccesstodatasources"></a>**InternetExplorer/IntranetZoneAllowAccessToDataSources**  

<!--StartDescription-->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-intranetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/IntranetZoneAllowAutomaticPromptingForActiveXControls**  

<!--StartDescription-->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-intranetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/IntranetZoneAllowAutomaticPromptingForFileDownloads**  

<!--StartDescription-->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, users will receive a file download dialog for automatic download attempts.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-intranetzoneallowfontdownloads"></a>**InternetExplorer/IntranetZoneAllowFontDownloads**  

<!--StartDescription-->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-intranetzoneallowlessprivilegedsites"></a>**InternetExplorer/IntranetZoneAllowLessPrivilegedSites**  

<!--StartDescription-->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Restricted Sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.  The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-intranetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/IntranetZoneAllowNETFrameworkReliantComponents**  

<!--StartDescription-->
This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will execute unsigned managed components.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-intranetzoneallowscriptlets"></a>**InternetExplorer/IntranetZoneAllowScriptlets**  

<!--StartDescription-->
This policy setting allows you to manage whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-intranetzoneallowsmartscreenie"></a>**InternetExplorer/IntranetZoneAllowSmartScreenIE**  

<!--StartDescription-->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-intranetzoneallowuserdatapersistence"></a>**InternetExplorer/IntranetZoneAllowUserDataPersistence**  

<!--StartDescription-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-intranetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/IntranetZoneInitializeAndScriptActiveXControls**  

<!--StartDescription-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-intranetzonenavigatewindowsandframes"></a>**InternetExplorer/IntranetZoneNavigateWindowsAndFrames**  

<!--StartDescription-->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_3*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-localmachinezoneallowaccesstodatasources"></a>**InternetExplorer/LocalMachineZoneAllowAccessToDataSources**  

<!--StartDescription-->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-localmachinezoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForActiveXControls**  

<!--StartDescription-->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-localmachinezoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForFileDownloads**  

<!--StartDescription-->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, users will receive a file download dialog for automatic download attempts.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-localmachinezoneallowfontdownloads"></a>**InternetExplorer/LocalMachineZoneAllowFontDownloads**  

<!--StartDescription-->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-localmachinezoneallowlessprivilegedsites"></a>**InternetExplorer/LocalMachineZoneAllowLessPrivilegedSites**  

<!--StartDescription-->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-localmachinezoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LocalMachineZoneAllowNETFrameworkReliantComponents**  

<!--StartDescription-->
This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-localmachinezoneallowscriptlets"></a>**InternetExplorer/LocalMachineZoneAllowScriptlets**  

<!--StartDescription-->
This policy setting allows you to manage whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-localmachinezoneallowsmartscreenie"></a>**InternetExplorer/LocalMachineZoneAllowSmartScreenIE**  

<!--StartDescription-->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-localmachinezoneallowuserdatapersistence"></a>**InternetExplorer/LocalMachineZoneAllowUserDataPersistence**  

<!--StartDescription-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-localmachinezoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LocalMachineZoneInitializeAndScriptActiveXControls**  

<!--StartDescription-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, users are queried whether to allow the control to be loaded with parameters or scripted.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-localmachinezonenavigatewindowsandframes"></a>**InternetExplorer/LocalMachineZoneNavigateWindowsAndFrames**  

<!--StartDescription-->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_9*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownInternetZoneAllowAccessToDataSources**  

<!--StartDescription-->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls**  

<!--StartDescription-->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads**  

<!--StartDescription-->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowfontdownloads"></a>**InternetExplorer/LockedDownInternetZoneAllowFontDownloads**  

<!--StartDescription-->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownInternetZoneAllowLessPrivilegedSites**  

<!--StartDescription-->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownInternetZoneAllowNETFrameworkReliantComponents**  

<!--StartDescription-->
This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowscriptlets"></a>**InternetExplorer/LockedDownInternetZoneAllowScriptlets**  

<!--StartDescription-->
This policy setting allows you to manage whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowsmartscreenie"></a>**InternetExplorer/LockedDownInternetZoneAllowSmartScreenIE**  

<!--StartDescription-->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowninternetzoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownInternetZoneAllowUserDataPersistence**  

<!--StartDescription-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowninternetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownInternetZoneInitializeAndScriptActiveXControls**  

<!--StartDescription-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowninternetzonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownInternetZoneNavigateWindowsAndFrames**  

<!--StartDescription-->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_2*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Internet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownIntranetZoneAllowAccessToDataSources**  

<!--StartDescription-->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls**  

<!--StartDescription-->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads**  

<!--StartDescription-->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowfontdownloads"></a>**InternetExplorer/LockedDownIntranetZoneAllowFontDownloads**  

<!--StartDescription-->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownIntranetZoneAllowLessPrivilegedSites**  

<!--StartDescription-->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownIntranetZoneAllowNETFrameworkReliantComponents**  

<!--StartDescription-->
This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowscriptlets"></a>**InternetExplorer/LockedDownIntranetZoneAllowScriptlets**  

<!--StartDescription-->
This policy setting allows you to manage whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowsmartscreenie"></a>**InternetExplorer/LockedDownIntranetZoneAllowSmartScreenIE**  

<!--StartDescription-->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownintranetzoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownIntranetZoneAllowUserDataPersistence**  

<!--StartDescription-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownintranetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownIntranetZoneInitializeAndScriptActiveXControls**  

<!--StartDescription-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownintranetzonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownIntranetZoneNavigateWindowsAndFrames**  

<!--StartDescription-->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_4*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Intranet Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowAccessToDataSources**  

<!--StartDescription-->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls**  

<!--StartDescription-->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads**  

<!--StartDescription-->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowfontdownloads"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowFontDownloads**  

<!--StartDescription-->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowLessPrivilegedSites**  

<!--StartDescription-->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents**  

<!--StartDescription-->
This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowscriptlets"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowScriptlets**  

<!--StartDescription-->
This policy setting allows you to manage whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowsmartscreenie"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowSmartScreenIE**  

<!--StartDescription-->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowUserDataPersistence**  

<!--StartDescription-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownLocalMachineZoneInitializeAndScriptActiveXControls**  

<!--StartDescription-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownlocalmachinezonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownLocalMachineZoneNavigateWindowsAndFrames**  

<!--StartDescription-->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_10*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Local Machine Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowAccessToDataSources**  

<!--StartDescription-->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls**  

<!--StartDescription-->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads**  

<!--StartDescription-->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowfontdownloads"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowFontDownloads**  

<!--StartDescription-->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, users are queried whether to allow HTML fonts to download.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowLessPrivilegedSites**  

<!--StartDescription-->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents**  

<!--StartDescription-->
This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowscriptlets"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowScriptlets**  

<!--StartDescription-->
This policy setting allows you to manage whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowsmartscreenie"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowSmartScreenIE**  

<!--StartDescription-->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowUserDataPersistence**  

<!--StartDescription-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls**  

<!--StartDescription-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddownrestrictedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownRestrictedSitesZoneNavigateWindowsAndFrames**  

<!--StartDescription-->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

If you enable this policy setting, users can open additional windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow additional windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open other windows and frames from other domains or access applications from different domains.

If you do not configure this policy setting, users cannot open other windows and frames from different domains or access applications from different domains.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_8*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowAccessToDataSources**  

<!--StartDescription-->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls**  

<!--StartDescription-->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads**  

<!--StartDescription-->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowfontdownloads"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowFontDownloads**  

<!--StartDescription-->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowLessPrivilegedSites**  

<!--StartDescription-->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents**  

<!--StartDescription-->
This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowscriptlets"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowScriptlets**  

<!--StartDescription-->
This policy setting allows you to manage whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowsmartscreenie"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowSmartScreenIE**  

<!--StartDescription-->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowUserDataPersistence**  

<!--StartDescription-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls**  

<!--StartDescription-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-lockeddowntrustedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownTrustedSitesZoneNavigateWindowsAndFrames**  

<!--StartDescription-->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_6*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Locked-Down Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/RestrictedSitesZoneAllowAccessToDataSources**  

<!--StartDescription-->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls**  

<!--StartDescription-->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads**  

<!--StartDescription-->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowfontdownloads"></a>**InternetExplorer/RestrictedSitesZoneAllowFontDownloads**  

<!--StartDescription-->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, users are queried whether to allow HTML fonts to download.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/RestrictedSitesZoneAllowLessPrivilegedSites**  

<!--StartDescription-->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-restrictedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/RestrictedSitesZoneAllowNETFrameworkReliantComponents**  

<!--StartDescription-->
This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will not execute unsigned managed components.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowscriptlets"></a>**InternetExplorer/RestrictedSitesZoneAllowScriptlets**  

<!--StartDescription-->
This policy setting allows you to manage whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowsmartscreenie"></a>**InternetExplorer/RestrictedSitesZoneAllowSmartScreenIE**  

<!--StartDescription-->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-restrictedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/RestrictedSitesZoneAllowUserDataPersistence**  

<!--StartDescription-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-restrictedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/RestrictedSitesZoneInitializeAndScriptActiveXControls**  

<!--StartDescription-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-restrictedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFrames**  

<!--StartDescription-->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

If you enable this policy setting, users can open additional windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow additional windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open other windows and frames from other domains or access applications from different domains.

If you do not configure this policy setting, users cannot open other windows and frames from different domains or access applications from different domains.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_7*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Restricted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-searchproviderlist"></a>**InternetExplorer/SearchProviderList**  

<!--StartDescription-->
This policy setting allows you to restrict the search providers that appear in the Search box in Internet Explorer to those defined in the list of policy keys for search providers (found under [HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\SearchScopes]). Normally, search providers can be added from third-party toolbars or in Setup, but the user can also add them from a search provider's website.

If you enable this policy setting, the user cannot configure the list of search providers on his or her computer, and any default providers installed do not appear (including providers installed from other applications). The only providers that appear are those in the list of policy keys for search providers. Note: This list can be created through a custom administrative template file. For information about creating this custom administrative template file, see the Internet Explorer documentation on search providers.

If you disable or do not configure this policy setting, the user can configure his or her list of search providers.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Restrict search providers to a specific list*
-   GP name: *SpecificSearchProvider*
-   GP path: *Windows Components/Internet Explorer*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-trustedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/TrustedSitesZoneAllowAccessToDataSources**  

<!--StartDescription-->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

If you disable this policy setting, users cannot load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

If you do not configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Access data sources across domains*
-   GP name: *IZ_PolicyAccessDataSourcesAcrossDomains_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-trustedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForActiveXControls**  

<!--StartDescription-->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

If you do not configure this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for ActiveX controls*
-   GP name: *IZ_PolicyNotificationBarActiveXURLaction_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-trustedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForFileDownloads**  

<!--StartDescription-->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

If you enable this setting, users will receive a file download dialog for automatic download attempts.

If you disable or do not configure this setting, users will receive a file download dialog for automatic download attempts.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Automatic prompting for file downloads*
-   GP name: *IZ_PolicyNotificationBarDownloadURLaction_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-trustedsiteszoneallowfontdownloads"></a>**InternetExplorer/TrustedSitesZoneAllowFontDownloads**  

<!--StartDescription-->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

If you disable this policy setting, HTML fonts are prevented from downloading.

If you do not configure this policy setting, HTML fonts can be downloaded automatically.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow font downloads*
-   GP name: *IZ_PolicyFontDownload_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-trustedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/TrustedSitesZoneAllowLessPrivilegedSites**  

<!--StartDescription-->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Restricted Sites, can navigate into this zone.

If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.  The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

If you do not configure this policy setting, a warning is issued to the user that potentially risky navigation is about to occur.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Web sites in less privileged Web content zones can navigate into this zone*
-   GP name: *IZ_PolicyZoneElevationURLaction_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-trustedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/TrustedSitesZoneAllowNETFrameworkReliantComponents**  

<!--StartDescription-->
This policy setting allows you to manage whether .NET Framework components that are not signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

If you disable this policy setting, Internet Explorer will not execute unsigned managed components.

If you do not configure this policy setting, Internet Explorer will execute unsigned managed components.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Run .NET Framework-reliant components not signed with Authenticode*
-   GP name: *IZ_PolicyUnsignedFrameworkComponentsURLaction_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-trustedsiteszoneallowscriptlets"></a>**InternetExplorer/TrustedSitesZoneAllowScriptlets**  

<!--StartDescription-->
This policy setting allows you to manage whether the user can run scriptlets.

If you enable this policy setting, the user can run scriptlets.

If you disable this policy setting, the user cannot run scriptlets.

If you do not configure this policy setting, the user can enable or disable scriptlets.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow scriptlets*
-   GP name: *IZ_Policy_AllowScriptlets_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-trustedsiteszoneallowsmartscreenie"></a>**InternetExplorer/TrustedSitesZoneAllowSmartScreenIE**  

<!--StartDescription-->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.

If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on SmartScreen Filter scan*
-   GP name: *IZ_Policy_Phishing_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-trustedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/TrustedSitesZoneAllowUserDataPersistence**  

<!--StartDescription-->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you disable this policy setting, users cannot preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

If you do not configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Userdata persistence*
-   GP name: *IZ_PolicyUserdataPersistence_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-trustedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/TrustedSitesZoneInitializeAndScriptActiveXControls**  

<!--StartDescription-->
This policy setting allows you to manage ActiveX controls not marked as safe.

If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.

If you do not configure this policy setting, users are queried whether to allow the control to be loaded with parameters or scripted.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Initialize and script ActiveX controls not marked as safe*
-   GP name: *IZ_PolicyScriptActiveXNotMarkedSafe_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="internetexplorer-trustedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/TrustedSitesZoneNavigateWindowsAndFrames**  

<!--StartDescription-->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

If you disable this policy setting, users cannot open windows and frames to access applications from different domains.

If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Navigate windows and frames across different domains*
-   GP name: *IZ_PolicyNavigateSubframesAcrossDomains_5*
-   GP path: *Windows Components/Internet Explorer/Internet Control Panel/Security Page/Trusted Sites Zone*
-   GP ADMX file name: *inetres.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="kerberos-allowforestsearchorder"></a>**Kerberos/AllowForestSearchOrder**  

<!--StartDescription-->
This policy setting defines the list of trusting forests that the Kerberos client searches when attempting to resolve two-part service principal names (SPNs).

If you enable this policy setting, the Kerberos client searches the forests in this list, if it is unable to resolve a two-part SPN. If a match is found, the Kerberos client requests a referral ticket to the appropriate domain.

If you disable or do not configure this policy setting, the Kerberos client does not search the listed forests to resolve the SPN. If the Kerberos client is unable to resolve the SPN because the name is not found, NTLM authentication might be used.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *None*
-   GP name: *ForestSearch*
-   GP ADMX file name: *Kerberos.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="kerberos-kerberosclientsupportsclaimscompoundarmor"></a>**Kerberos/KerberosClientSupportsClaimsCompoundArmor**  

<!--StartDescription-->
This policy setting controls whether a device will request claims and compound authentication for Dynamic Access Control and Kerberos armoring using Kerberos authentication with domains that support these features.
If you enable this policy setting, the client computers will request claims, provide information required to create compounded authentication and armor Kerberos messages in domains which support claims and compound authentication for Dynamic Access Control and Kerberos armoring.

If you disable or do not configure this policy setting, the client devices will not request claims, provide information required to create compounded authentication and armor Kerberos messages. Services hosted on the device will not be able to retrieve claims for clients using Kerberos protocol transition.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Kerberos client support for claims, compound authentication and Kerberos armoring*
-   GP name: *EnableCbacAndArmor*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="kerberos-requirekerberosarmoring"></a>**Kerberos/RequireKerberosArmoring**  

<!--StartDescription-->
This policy setting controls whether a computer requires that Kerberos message exchanges be armored when communicating with a domain controller.

Warning: When a domain does not support Kerberos armoring by enabling "Support Dynamic Access Control and Kerberos armoring", then all authentication for all its users will fail from computers with this policy setting enabled.

If you enable this policy setting, the client computers in the domain enforce the use of Kerberos armoring in only authentication service (AS) and ticket-granting service (TGS) message exchanges with the domain controllers.

Note: The Kerberos Group Policy "Kerberos client support for claims, compound authentication and Kerberos armoring" must also be enabled to support Kerberos armoring.

If you disable or do not configure this policy setting, the client computers in the domain enforce the use of Kerberos armoring when possible as supported by the target domain.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Fail authentication requests when Kerberos armoring is not available*
-   GP name: *ClientRequireFast*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="kerberos-requirestrictkdcvalidation"></a>**Kerberos/RequireStrictKDCValidation**  

<!--StartDescription-->
This policy setting controls the Kerberos client's behavior in validating the KDC certificate for smart card and system certificate logon.

If you enable this policy setting, the Kerberos client requires that the KDC's X.509 certificate contains the KDC key purpose object identifier in the Extended Key Usage (EKU) extensions, and that the KDC's X.509 certificate contains a dNSName subjectAltName (SAN) extension that matches the DNS name of the domain. If the computer is joined to a domain, the Kerberos client requires that the KDC's X.509 certificate must be signed by a Certificate Authority (CA) in the NTAuth store. If the computer is not joined to a domain, the Kerberos client allows the root CA certificate on the smart card to be used in the path validation of the KDC's X.509 certificate.

If you disable or do not configure this policy setting, the Kerberos client requires only that the KDC certificate contain the Server Authentication purpose object identifier in the EKU extensions which can be issued to any server.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Require strict KDC validation*
-   GP name: *ValidateKDC*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="kerberos-setmaximumcontexttokensize"></a>**Kerberos/SetMaximumContextTokenSize**  

<!--StartDescription-->
This policy setting allows you to set the value returned to applications which request the maximum size of the SSPI context token buffer size.

The size of the context token buffer determines the maximum size of SSPI context tokens an application expects and allocates. Depending upon authentication request processing and group memberships, the buffer might be smaller than the actual size of the SSPI context token.

If you enable this policy setting, the Kerberos client or server uses the configured value, or the locally allowed maximum value, whichever is smaller.

If you disable or do not configure this policy setting, the Kerberos client or server uses the locally configured value or the default value.

Note: This policy setting configures the existing MaxTokenSize registry value in HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\Kerberos\Parameters, which was added in Windows XP and Windows Server 2003, with a default value of 12,000 bytes. Beginning with Windows 8 the default is 48,000 bytes. Due to HTTP's base64 encoding of authentication context tokens, it is not advised to set this value more than 48,000 bytes.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Set maximum Kerberos SSPI context token buffer size*
-   GP name: *MaxTokenSize*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="licensing-allowwindowsentitlementreactivation"></a>**Licensing/AllowWindowsEntitlementReactivation**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Enables or Disable Windows license reactivation on managed devices.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disable Windows license reactivation on managed devices.
-   1 (default) – Enable Windows license reactivation on managed devices.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="licensing-disallowkmsclientonlineavsvalidation"></a>**Licensing/DisallowKMSClientOnlineAVSValidation**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Enabling this setting prevents this computer from sending data to Microsoft regarding its activation state.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Disabled.
-   1 – Enabled.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="location-enablelocation"></a>**Location/EnableLocation**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Optional policy that allows for IT admin to preconfigure whether or not Location Service's Device Switch is enabled or disabled for the device. Setting this policy is not required for Location Services to function. This policy controls a device wide state that affects all users, apps, and services ability to find the device's latitude and longitude on a map. There is a separate user switch that defines whether the location service is allowed to retrieve a position for the current user. In order to retrieve a position for a specific user, both the Device Switch and the User Switch must be enabled. If either is disabled, positions cannot be retrieved for the user. The user can later change both the User Switch and the Device Switch through the user interface on the Settings -> Privacy -> Location page.

> [!IMPORTANT]
> This policy is not intended to ever be set, pushed, or refreshed more than one time after the first boot of the device because it is meant as initial configuration. Refreshing this policy might result in the Location Service's Device Switch changing state to something the user did not select, which is not an intended use for this policy.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Disabled.
-   1 – Enabled.

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Verify that Settings -> Privacy -> Location -> Location for this device is On/Off as expected.
2.   Use Windows Maps Application (or similar) to see if a location can or cannot be obtained.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="lockdown-allowedgeswipe"></a>**LockDown/AllowEdgeSwipe**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the user to invoke any system user interface by swiping in from any screen edge using touch.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 - disallow edge swipe.
-   1 (default, not configured) - allow edge swipe.

<p style="margin-left: 20px">The easiest way to verify the policy is to restart the explorer process or to reboot after the policy is applied. And then try to swipe from the right edge of the screen. The desired result is for Action Center to not be invoked by the swipe. You can also enter tablet mode and attempt to swipe from the top of the screen to rearrange. That will also be disabled.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="maps-allowofflinemapsdownloadovermeteredconnection"></a>**Maps/AllowOfflineMapsDownloadOverMeteredConnection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the download and update of map data over metered connections.

<p style="margin-left: 20px">The following list shows the supported values:

-   65535 (default) – Not configured. User's choice.
-   0 – Disabled. Force disable auto-update over metered connection.
-   1 – Enabled. Force enable auto-update over metered connection.

<p style="margin-left: 20px">After the policy is applied, you can verify the settings in the user interface in **System** &gt; **Offline Maps**.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="maps-enableofflinemapsautoupdate"></a>**Maps/EnableOfflineMapsAutoUpdate**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Disables the automatic download and update of map data.

<p style="margin-left: 20px">The following list shows the supported values:

-   65535 (default) – Not configured. User's choice.
-   0 – Disabled. Force off auto-update.
-   1 – Enabled. Force on auto-update.

<p style="margin-left: 20px">After the policy is applied, you can verify the settings in the user interface in **System** &gt; **Offline Maps**.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="messaging-allowmms"></a>**Messaging/AllowMMS**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Enables or disables the MMS send/receive functionality on the device. For enterprises, this policy can be used to disable MMS on devices as part of the auditing or management requirement.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 - Disabled.
-   1 (default) - Enabled.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="messaging-allowmessagesync"></a>**Messaging/AllowMessageSync**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Enables text message back up and restore and Messaging Everywhere. This policy allows an organization to disable these features to avoid information being stored on servers outside of their control.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 - message sync is not allowed and cannot be changed by the user.
-   1 - message sync is allowed. The user can change this setting.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="messaging-allowrcs"></a>**Messaging/AllowRCS**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Enables or disables the RCS send/receive functionality on the device. For enterprises, this policy can be used to disable RCS on devices as part of the auditing or management requirement.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 - Disabled.
-   1 (default) - Enabled.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="networkisolation-enterprisecloudresources"></a>**NetworkIsolation/EnterpriseCloudResources**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Contains a list of Enterprise resource domains hosted in the cloud that need to be protected. Connections to these resources are considered enterprise data. If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the **EnterpriseInternalProxyServers** policy. This domain list is a pipe-separated list of cloud resources. Each cloud resource can also be paired optionally with an internal proxy server by using a trailing comma followed by the proxy address. For example, **&lt;*cloudresource*&gt;|&lt;*cloudresource*&gt;|&lt;*cloudresource*&gt;,&lt;*proxy*&gt;|&lt;*cloudresource*&gt;|&lt;*cloudresource*&gt;,&lt;*proxy*&gt;|**.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="networkisolation-enterpriseiprange"></a>**NetworkIsolation/EnterpriseIPRange**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Sets the enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected. These locations will be considered a safe destination for enterprise data to be shared to. This is a comma-separated list of IPv4 and IPv6 ranges. For example:

``` syntax
10.0.0.0-10.255.255.255,157.54.0.0-157.54.255.255,
192.168.0.0-192.168.255.255,2001:4898::-2001:4898:7fff:ffff:ffff:ffff:ffff:ffff,
2001:4898:dc05::-2001:4898:dc05:ffff:ffff:ffff:ffff:ffff,
2a01:110::-2a01:110:7fff:ffff:ffff:ffff:ffff:ffff,
fd00::-fdff:ffff:ffff:ffff:ffff:ffff:ffff:ffff
       
```

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="networkisolation-enterpriseiprangesareauthoritative"></a>**NetworkIsolation/EnterpriseIPRangesAreAuthoritative**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Boolean value that tells the client to accept the configured list and not to use heuristics to attempt to find other subnets.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="networkisolation-enterpriseinternalproxyservers"></a>**NetworkIsolation/EnterpriseInternalProxyServers**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">This is the comma-separated list of internal proxy servers. For example "157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59". These proxies have been configured by the admin to connect to specific resources on the Internet. They are considered to be enterprise network locations. The proxies are only leveraged in configuring the **EnterpriseCloudResources** policy to force traffic to the matched cloud resources through these proxies.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="networkisolation-enterprisenetworkdomainnames"></a>**NetworkIsolation/EnterpriseNetworkDomainNames**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">This is the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected These locations will be considered a safe destination for enterprise data to be shared to. This is a comma-separated list of domains, for example "contoso.sharepoint.com, Fabrikam.com".

> [!NOTE]
> The client requires domain name to be canonical, otherwise the setting will be rejected by the client.
 

<p style="margin-left: 20px">Here are the steps to create canonical domain names:

1.  Transform the ASCII characters (A-Z only) to lower case. For example, Microsoft.COM -&gt; microsoft.com.
2.  Call [IdnToAscii](https://msdn.microsoft.com/library/windows/desktop/dd318149.aspx) with IDN\_USE\_STD3\_ASCII\_RULES as the flags.
3.  Call [IdnToUnicode](https://msdn.microsoft.com/library/windows/desktop/dd318151.aspx) with no flags set (dwFlags = 0).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="networkisolation-enterpriseproxyservers"></a>**NetworkIsolation/EnterpriseProxyServers**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">This is a comma-separated list of proxy servers. Any server on this list is considered non-enterprise. For example "157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59".

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="networkisolation-enterpriseproxyserversareauthoritative"></a>**NetworkIsolation/EnterpriseProxyServersAreAuthoritative**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Boolean value that tells the client to accept the configured list of proxies and not try to detect other work proxies.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="networkisolation-neutralresources"></a>**NetworkIsolation/NeutralResources**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">List of domain names that can used for work or personal resource.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="notifications-disallownotificationmirroring"></a>**Notifications/DisallowNotificationMirroring**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Boolean value that turns off notification mirroring.

> [!IMPORTANT]
> This node must be accessed using the following paths:
>
> -   **./User/Vendor/MSFT/Policy/Config/Notifications/DisallowNotificationMirroring** to set the policy.
> -   **./User/Vendor/MSFT/Policy/Result/Notifications/DisallowNotificationMirroring** to get the result.


<p style="margin-left: 20px">For each user logged into the device, if you enable this policy (set value to 1) the app and system notifications received by this user on this device will not get mirrored to other devices of the same logged in user. If you disable or do not configure this policy (set value to 0) the notifications received by this user on this device will be mirrored to other devices of the same logged in user. This feature can be turned off by apps that do not want to participate in Notification Mirroring. This feature can also be turned off by the user in the Cortana setting page.

<p style="margin-left: 20px">No reboot or service restart is required for this policy to take effect.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default)– enable notification mirroring.
-   1 – disable notification mirroring.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="power-allowstandbywhensleepingpluggedin"></a>**Power/AllowStandbyWhenSleepingPluggedIn**  

<!--StartDescription-->
This policy setting manages whether or not Windows is allowed to use standby states when putting the computer in a sleep state.

If you enable or do not configure this policy setting, Windows uses standby states to put the computer in a sleep state.

If you disable this policy setting, standby states (S1-S3) are not allowed.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow standby states (S1-S3) when sleeping (plugged in)*
-   GP name: *AllowStandbyStatesAC_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->

<!--StartPolicy-->
<a href="" id="power-displayofftimeoutonbattery"></a>**Power/DisplayOffTimeoutOnBattery**  

<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Turn off the display (on battery). This policy setting allows you to specify the period of inactivity before Windows turns off the display.

<p style="margin-left: 20px">If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows turns off the display.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users control this setting.

<p style="margin-left: 20px">If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the display from turning off. The "Prevent enabling lock screen slide show" (DeviceLock/PreventLockScreenSlideShow) policy setting can be used to disable the slide show feature.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off the display (on battery)*
-   GP name: *VideoPowerDownTimeOutDC_2*
-   GP path: *System/Power Management/Video and Display Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->

<!--StartPolicy-->
<a href="" id="power-displayofftimeoutpluggedin"></a>**Power/DisplayOffTimeoutPluggedIn**  

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Turn off the display (plugged in). This policy setting allows you to specify the period of inactivity before Windows turns off the display.

<p style="margin-left: 20px">If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows turns off the display.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users control this setting.

<p style="margin-left: 20px">If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the display from turning off. The "Prevent enabling lock screen slide show" (DeviceLock/PreventLockScreenSlideShow) policy setting can be used to disable the slide show feature.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off the display (plugged in)*
-   GP name: *VideoPowerDownTimeOutAC_2*
-   GP path: *System/Power Management/Video and Display Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->

<!--StartPolicy-->
<a href="" id="power-hibernatetimeoutonbattery"></a>**Power/HibernateTimeoutOnBattery**  

<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Specify the system hibernate timeout (on battery). This policy setting allows you to specify the period of inactivity before Windows transitions the system to hibernate.

<p style="margin-left: 20px">If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to hibernate.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users control this setting.


<p style="margin-left: 20px">If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occuring. The "Prevent enabling lock screen slide show" (DeviceLock/PreventLockScreenSlideShow) policy setting can be used to disable the slide show feature.
<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Specify the system hibernate timeout (on battery)*
-   GP name: *DCHibernateTimeOut_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->

<!--StartPolicy-->
<a href="" id="power-hibernatetimeoutpluggedin"></a>**Power/HibernateTimeoutPluggedIn**  

<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Specify the system hibernate timeout (plugged in). This policy setting allows you to specify the period of inactivity before Windows transitions the system to hibernate.

<p style="margin-left: 20px">If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to hibernate.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users control this setting.

<p style="margin-left: 20px">If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occuring. The "Prevent enabling lock screen slide show" (DeviceLock/PreventLockScreenSlideShow) policy setting can be used to disable the slide show feature.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Specify the system hibernate timeout (plugged in)*
-   GP name: *ACHibernateTimeOut_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->

<!--StartPolicy-->
<a href="" id="power-requirepasswordwhencomputerwakesonbattery"></a>**Power/RequirePasswordWhenComputerWakesOnBattery**  

<!--StartDescription-->
This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.

If you enable or do not configure this policy setting, the user is prompted for a password when the system resumes from sleep.

If you disable this policy setting, the user is not prompted for a password when the system resumes from sleep.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Require a password when a computer wakes (on battery)*
-   GP name: *DCPromptForPasswordOnResume_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="power-requirepasswordwhencomputerwakespluggedin"></a>**Power/RequirePasswordWhenComputerWakesPluggedIn**  

<!--StartDescription-->
This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.

If you enable or do not configure this policy setting, the user is prompted for a password when the system resumes from sleep.

If you disable this policy setting, the user is not prompted for a password when the system resumes from sleep.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Require a password when a computer wakes (plugged in)*
-   GP name: *ACPromptForPasswordOnResume_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->

<!--StartPolicy-->
<a href="" id="power-standbytimeoutonbattery"></a>**Power/StandbyTimeoutOnBattery**  

<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Specify the system sleep timeout (on battery). This policy setting allows you to specify the period of inactivity before Windows transitions the system to sleep.

<p style="margin-left: 20px">If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to sleep.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users control this setting.

<p style="margin-left: 20px">If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occuring. The "Prevent enabling lock screen slide show" (DeviceLock/PreventLockScreenSlideShow) policy setting can be used to disable the slide show feature.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Specify the system sleep timeout (on battery)*
-   GP name: *DCStandbyTimeOut_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->

<!--StartPolicy-->
<a href="" id="power-standbytimeoutpluggedin"></a>**Power/StandbyTimeoutPluggedIn**  

<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Specify the system sleep timeout (plugged in). This policy setting allows you to specify the period of inactivity before Windows transitions the system to sleep.

<p style="margin-left: 20px">If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to sleep.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users control this setting.

<p style="margin-left: 20px">If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occuring. The "Prevent enabling lock screen slide show" (DeviceLock/PreventLockScreenSlideShow) policy setting can be used to disable the slide show feature.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Specify the system sleep timeout (plugged in)*
-   GP name: *ACStandbyTimeOut_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->

<!--StartPolicy-->
<a href="" id="printers-pointandprintrestrictions"></a>**Printers/PointAndPrintRestrictions**  

<!--StartDescription-->
This policy setting controls the client Point and Print behavior, including the security prompts for Windows Vista computers. The policy setting applies only to non-Print Administrator clients, and only to computers that are members of a domain.

If you enable this policy setting:
-Windows XP and later clients will only download print driver components from a list of explicitly named servers. If a compatible print driver is available on the client, a printer connection will be made. If a compatible print driver is not available on the client, no connection will be made.
-You can configure Windows Vista clients so that security warnings and elevated command prompts do not appear when users Point and Print, or when printer connection drivers need to be updated.

If you do not configure this policy setting:
-Windows Vista client computers can point and print to any server.
-Windows Vista computers will show a warning and an elevated command prompt when users create a printer connection to any server using Point and Print.
-Windows Vista computers will show a warning and an elevated command prompt when an existing printer connection driver needs to be updated.
-Windows Server 2003 and Windows XP client computers can create a printer connection to any server in their forest using Point and Print.

If you disable this policy setting:
-Windows Vista client computers can create a printer connection to any server using Point and Print.
-Windows Vista computers will not show a warning or an elevated command prompt when users create a printer connection to any server using Point and Print.
-Windows Vista computers will not show a warning or an elevated command prompt when an existing printer connection driver needs to be updated.
-Windows Server 2003 and Windows XP client computers can create a printer connection to any server using Point and Print.
-The "Users can only point and print to computers in their forest" setting applies only to Windows Server 2003 and Windows XP SP1 (and later service packs).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Point and Print Restrictions*
-   GP name: *PointAndPrint_Restrictions_Win7*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="printers-pointandprintrestrictions_user"></a>**Printers/PointAndPrintRestrictions_User**  

<!--StartDescription-->
This policy setting controls the client Point and Print behavior, including the security prompts for Windows Vista computers. The policy setting applies only to non-Print Administrator clients, and only to computers that are members of a domain.

If you enable this policy setting:
-Windows XP and later clients will only download print driver components from a list of explicitly named servers. If a compatible print driver is available on the client, a printer connection will be made. If a compatible print driver is not available on the client, no connection will be made.
-You can configure Windows Vista clients so that security warnings and elevated command prompts do not appear when users Point and Print, or when printer connection drivers need to be updated.

If you do not configure this policy setting:
-Windows Vista client computers can point and print to any server.
-Windows Vista computers will show a warning and an elevated command prompt when users create a printer connection to any server using Point and Print.
-Windows Vista computers will show a warning and an elevated command prompt when an existing printer connection driver needs to be updated.
-Windows Server 2003 and Windows XP client computers can create a printer connection to any server in their forest using Point and Print.

If you disable this policy setting:
-Windows Vista client computers can create a printer connection to any server using Point and Print.
-Windows Vista computers will not show a warning or an elevated command prompt when users create a printer connection to any server using Point and Print.
-Windows Vista computers will not show a warning or an elevated command prompt when an existing printer connection driver needs to be updated.
-Windows Server 2003 and Windows XP client computers can create a printer connection to any server using Point and Print.
-The "Users can only point and print to computers in their forest" setting applies only to Windows Server 2003 and Windows XP SP1 (and later service packs).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Point and Print Restrictions*
-   GP name: *PointAndPrint_Restrictions*
-   GP ADMX file name: *Printing.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="printers-publishprinters"></a>**Printers/PublishPrinters**  

<!--StartDescription-->
Determines whether the computer's shared printers can be published in Active Directory.

If you enable this setting or do not configure it, users can use the "List in directory" option in the Printer's Properties' Sharing tab to publish shared printers in Active Directory.

If you disable this setting, this computer's shared printers cannot be published in Active Directory, and the "List in directory" option is not available.

Note: This settings takes priority over the setting "Automatically publish new printers in the Active Directory".

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow printers to be published*
-   GP name: *PublishPrinters*
-   GP path: *Printers*
-   GP ADMX file name: *Printing2.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-allowautoacceptpairingandprivacyconsentprompts"></a>**Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows or disallows the automatic acceptance of the pairing and privacy user consent dialog when launching apps.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default)– Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-allowinputpersonalization"></a>**Privacy/AllowInputPersonalization**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Updated in the next major update of Windows 10. Allows the usage of cloud based speech services for Cortana, dictation, or Store applications. Setting this policy to 1, lets Microsoft use the user's voice data to improve cloud speech services for all users.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.
 

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-disableadvertisingid"></a>**Privacy/DisableAdvertisingId**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Enables or disables the Advertising ID.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disabled.
-   1 – Enabled.
-   65535 (default)- Not configured.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessaccountinfo"></a>**Privacy/LetAppsAccessAccountInfo**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access account information.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessaccountinfo-forceallowtheseapps"></a>**Privacy/LetAppsAccessAccountInfo_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are allowed access to account information. This setting overrides the default LetAppsAccessAccountInfo policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessaccountinfo-forcedenytheseapps"></a>**Privacy/LetAppsAccessAccountInfo_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are denied access to account information. This setting overrides the default LetAppsAccessAccountInfo policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessaccountinfo-userincontroloftheseapps"></a>**Privacy/LetAppsAccessAccountInfo_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. The user is able to control the account information privacy setting for the listed Windows apps. This setting overrides the default LetAppsAccessAccountInfo policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscalendar"></a>**Privacy/LetAppsAccessCalendar**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access the calendar.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscalendar-forceallowtheseapps"></a>**Privacy/LetAppsAccessCalendar_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are allowed access to the calendar. This setting overrides the default LetAppsAccessCalendar policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscalendar-forcedenytheseapps"></a>**Privacy/LetAppsAccessCalendar_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are denied access to the calendar. This setting overrides the default LetAppsAccessCalendar policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscalendar-userincontroloftheseapps"></a>**Privacy/LetAppsAccessCalendar_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. The user is able to control the calendar privacy setting for the listed Windows apps. This setting overrides the default LetAppsAccessCalendar policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscallhistory"></a>**Privacy/LetAppsAccessCallHistory**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access call history.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscallhistory-forceallowtheseapps"></a>**Privacy/LetAppsAccessCallHistory_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are allowed access to call history. This setting overrides the default LetAppsAccessCallHistory policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscallhistory-forcedenytheseapps"></a>**Privacy/LetAppsAccessCallHistory_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are denied access to call history. This setting overrides the default LetAppsAccessCallHistory policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscallhistory-userincontroloftheseapps"></a>**Privacy/LetAppsAccessCallHistory_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. The user is able to control the call history privacy setting for the listed Windows apps. This setting overrides the default LetAppsAccessCallHistory policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscamera"></a>**Privacy/LetAppsAccessCamera**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access the camera.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscamera-forceallowtheseapps"></a>**Privacy/LetAppsAccessCamera_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to the camera. This setting overrides the default LetAppsAccessCamera policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscamera-forcedenytheseapps"></a>**Privacy/LetAppsAccessCamera_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to the camera. This setting overrides the default LetAppsAccessCamera policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscamera-userincontroloftheseapps"></a>**Privacy/LetAppsAccessCamera_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the camera privacy setting for the listed apps. This setting overrides the default LetAppsAccessCamera policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscontacts"></a>**Privacy/LetAppsAccessContacts**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access contacts.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscontacts-forceallowtheseapps"></a>**Privacy/LetAppsAccessContacts_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to contacts. This setting overrides the default LetAppsAccessContacts policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscontacts-forcedenytheseapps"></a>**Privacy/LetAppsAccessContacts_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to contacts. This setting overrides the default LetAppsAccessContacts policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscontacts-userincontroloftheseapps"></a>**Privacy/LetAppsAccessContacts_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the contacts privacy setting for the listed apps. This setting overrides the default LetAppsAccessContacts policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessemail"></a>**Privacy/LetAppsAccessEmail**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access email.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessemail-forceallowtheseapps"></a>**Privacy/LetAppsAccessEmail_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to email. This setting overrides the default LetAppsAccessEmail policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessemail-forcedenytheseapps"></a>**Privacy/LetAppsAccessEmail_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to email. This setting overrides the default LetAppsAccessEmail policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessemail-userincontroloftheseapps"></a>**Privacy/LetAppsAccessEmail_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the email privacy setting for the listed apps. This setting overrides the default LetAppsAccessEmail policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesslocation"></a>**Privacy/LetAppsAccessLocation**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access location.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesslocation-forceallowtheseapps"></a>**Privacy/LetAppsAccessLocation_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to location. This setting overrides the default LetAppsAccessLocation policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesslocation-forcedenytheseapps"></a>**Privacy/LetAppsAccessLocation_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to location. This setting overrides the default LetAppsAccessLocation policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesslocation-userincontroloftheseapps"></a>**Privacy/LetAppsAccessLocation_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the location privacy setting for the listed apps. This setting overrides the default LetAppsAccessLocation policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmessaging"></a>**Privacy/LetAppsAccessMessaging**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can read or send messages (text or MMS).

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmessaging-forceallowtheseapps"></a>**Privacy/LetAppsAccessMessaging_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed to read or send messages (text or MMS). This setting overrides the default LetAppsAccessMessaging policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmessaging-forcedenytheseapps"></a>**Privacy/LetAppsAccessMessaging_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are not allowed to read or send messages (text or MMS). This setting overrides the default LetAppsAccessMessaging policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmessaging-userincontroloftheseapps"></a>**Privacy/LetAppsAccessMessaging_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the messaging privacy setting for the listed apps. This setting overrides the default LetAppsAccessMessaging policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmicrophone"></a>**Privacy/LetAppsAccessMicrophone**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access the microphone.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmicrophone-forceallowtheseapps"></a>**Privacy/LetAppsAccessMicrophone_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to the microphone. This setting overrides the default LetAppsAccessMicrophone policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmicrophone-forcedenytheseapps"></a>**Privacy/LetAppsAccessMicrophone_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to the microphone. This setting overrides the default LetAppsAccessMicrophone policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmicrophone-userincontroloftheseapps"></a>**Privacy/LetAppsAccessMicrophone_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the microphone privacy setting for the listed apps. This setting overrides the default LetAppsAccessMicrophone policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmotion"></a>**Privacy/LetAppsAccessMotion**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access motion data.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmotion-forceallowtheseapps"></a>**Privacy/LetAppsAccessMotion_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to motion data. This setting overrides the default LetAppsAccessMotion policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmotion-forcedenytheseapps"></a>**Privacy/LetAppsAccessMotion_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to motion data. This setting overrides the default LetAppsAccessMotion policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmotion-userincontroloftheseapps"></a>**Privacy/LetAppsAccessMotion_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the motion privacy setting for the listed apps. This setting overrides the default LetAppsAccessMotion policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessnotifications"></a>**Privacy/LetAppsAccessNotifications**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access notifications.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessnotifications-forceallowtheseapps"></a>**Privacy/LetAppsAccessNotifications_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to notifications. This setting overrides the default LetAppsAccessNotifications policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessnotifications-forcedenytheseapps"></a>**Privacy/LetAppsAccessNotifications_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to notifications. This setting overrides the default LetAppsAccessNotifications policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessnotifications-userincontroloftheseapps"></a>**Privacy/LetAppsAccessNotifications_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the notifications privacy setting for the listed apps. This setting overrides the default LetAppsAccessNotifications policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessphone"></a>**Privacy/LetAppsAccessPhone**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can make phone calls.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessphone-forceallowtheseapps"></a>**Privacy/LetAppsAccessPhone_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed to make phone calls. This setting overrides the default LetAppsAccessPhone policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessphone-forcedenytheseapps"></a>**Privacy/LetAppsAccessPhone_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are not allowed to make phone calls. This setting overrides the default LetAppsAccessPhone policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessphone-userincontroloftheseapps"></a>**Privacy/LetAppsAccessPhone_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the phone call privacy setting for the listed apps. This setting overrides the default LetAppsAccessPhone policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessradios"></a>**Privacy/LetAppsAccessRadios**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps have access to control radios.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessradios-forceallowtheseapps"></a>**Privacy/LetAppsAccessRadios_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to control radios. This setting overrides the default LetAppsAccessRadios policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessradios-forcedenytheseapps"></a>**Privacy/LetAppsAccessRadios_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to control radios. This setting overrides the default LetAppsAccessRadios policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessradios-userincontroloftheseapps"></a>**Privacy/LetAppsAccessRadios_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the radios privacy setting for the listed apps. This setting overrides the default LetAppsAccessRadios policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstasks"></a>**Privacy/LetAppsAccessTasks**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether Windows apps can access tasks.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstasks-forceallowtheseapps"></a>**Privacy/LetAppsAccessTasks_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to tasks. This setting overrides the default LetAppsAccessTasks policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstasks-forcedenytheseapps"></a>**Privacy/LetAppsAccessTasks_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to tasks. This setting overrides the default LetAppsAccessTasks policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstasks-userincontroloftheseapps"></a>**Privacy/LetAppsAccessTasks_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the tasks privacy setting for the listed apps. This setting overrides the default LetAppsAccessTasks policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstrusteddevices"></a>**Privacy/LetAppsAccessTrustedDevices**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access trusted devices.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstrusteddevices-forceallowtheseapps"></a>**Privacy/LetAppsAccessTrustedDevices_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to trusted devices. This setting overrides the default LetAppsAccessTrustedDevices policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstrusteddevices-forcedenytheseapps"></a>**Privacy/LetAppsAccessTrustedDevices_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to trusted devices. This setting overrides the default LetAppsAccessTrustedDevices policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstrusteddevices-userincontroloftheseapps"></a>**Privacy/LetAppsAccessTrustedDevices_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the 'trusted devices' privacy setting for the listed apps. This setting overrides the default LetAppsAccessTrustedDevices policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsgetdiagnosticinfo"></a>**Privacy/LetAppsGetDiagnosticInfo**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Force allow, force deny or give user control of apps that can get diagnostic information about other running apps.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsgetdiagnosticinfo-forceallowtheseapps"></a>**Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to diagnostic information about other running apps. This setting overrides the default LetAppsGetDiagnosticInfo policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsgetdiagnosticinfo-forcedenytheseapps"></a>**Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to diagnostic information about other running apps. This setting overrides the default LetAppsGetDiagnosticInfo policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsgetdiagnosticinfo-userincontroloftheseapps"></a>**Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the 'get diagnostic info' privacy setting for the listed apps. This setting overrides the default LetAppsGetDiagnosticInfo policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsruninbackground"></a>**Privacy/LetAppsRunInBackground**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether Windows apps can run in the background.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control (default).
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.
> [!WARNING]
> Be careful when determining which apps should have their background activity disabled. Communication apps normally update tiles and notifications through background processes. Turning off background activity for these types of apps could cause text message, email, and voicemail notifications to not function. This could also cause background email syncing to not function properly.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsruninbackground-forceallowtheseapps"></a>**Privacy/LetAppsRunInBackground_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are able to run in the background. This setting overrides the default LetAppsRunInBackground policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsruninbackground-forcedenytheseapps"></a>**Privacy/LetAppsRunInBackground_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied the ability to run in the background. This setting overrides the default LetAppsRunInBackground policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsruninbackground-userincontroloftheseapps"></a>**Privacy/LetAppsRunInBackground_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the background apps privacy setting for the listed apps. This setting overrides the default LetAppsRunInBackground policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappssyncwithdevices"></a>**Privacy/LetAppsSyncWithDevices**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can sync with devices.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappssyncwithdevices-forceallowtheseapps"></a>**Privacy/LetAppsSyncWithDevices_ForceAllowTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to sync with devices. This setting overrides the default LetAppsSyncWithDevices policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappssyncwithdevices-forcedenytheseapps"></a>**Privacy/LetAppsSyncWithDevices_ForceDenyTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to sync with devices. This setting overrides the default LetAppsSyncWithDevices policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappssyncwithdevices-userincontroloftheseapps"></a>**Privacy/LetAppsSyncWithDevices_UserInControlOfTheseApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the 'sync with devices' privacy setting for the listed apps. This setting overrides the default LetAppsSyncWithDevices policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="remoteassistance-customizewarningmessages"></a>**RemoteAssistance/CustomizeWarningMessages**  

<!--StartDescription-->
This policy setting lets you customize warning messages.

The "Display warning message before sharing control" policy setting allows you to specify a custom message to display before a user shares control of his or her computer.

The "Display warning message before connecting" policy setting allows you to specify a custom message to display before a user allows a connection to his or her computer.

If you enable this policy setting, the warning message you specify overrides the default message that is seen by the novice.

If you disable this policy setting, the user sees the default warning message.

If you do not configure this policy setting, the user sees the default warning message.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Customize warning messages*
-   GP name: *RA_Options*
-   GP path: *System/Remote Assistance*
-   GP ADMX file name: *remoteassistance.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="remoteassistance-sessionlogging"></a>**RemoteAssistance/SessionLogging**  

<!--StartDescription-->
This policy setting allows you to turn logging on or off. Log files are located in the user's Documents folder under Remote Assistance.

If you enable this policy setting, log files are generated.

If you disable this policy setting, log files are not generated.

If you do not configure this setting, application-based settings are used.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on session logging*
-   GP name: *RA_Logging*
-   GP path: *System/Remote Assistance*
-   GP ADMX file name: *remoteassistance.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="remoteassistance-solicitedremoteassistance"></a>**RemoteAssistance/SolicitedRemoteAssistance**  

<!--StartDescription-->
This policy setting allows you to turn on or turn off Solicited (Ask for) Remote Assistance on this computer.

If you enable this policy setting, users on this computer can use email or file transfer to ask someone for help. Also, users can use instant messaging programs to allow connections to this computer, and you can configure additional Remote Assistance settings.

If you disable this policy setting, users on this computer cannot use email or file transfer to ask someone for help. Also, users cannot use instant messaging programs to allow connections to this computer.

If you do not configure this policy setting, users can turn on or turn off Solicited (Ask for) Remote Assistance themselves in System Properties in Control Panel. Users can also configure Remote Assistance settings.

If you enable this policy setting, you have two ways to allow helpers to provide Remote Assistance: "Allow helpers to only view the computer" or "Allow helpers to remotely control the computer."

The "Maximum ticket time" policy setting sets a limit on the amount of time that a Remote Assistance invitation created by using email or file transfer can remain open.

The "Select the method for sending email invitations" setting specifies which email standard to use to send Remote Assistance invitations. Depending on your email program, you can use either the Mailto standard (the invitation recipient connects through an Internet link) or the SMAPI (Simple MAPI) standard (the invitation is attached to your email message). This policy setting is not available in Windows Vista since SMAPI is the only method supported.

If you enable this policy setting you should also enable appropriate firewall exceptions to allow Remote Assistance communications.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Configure Solicited Remote Assistance*
-   GP name: *RA_Solicit*
-   GP path: *System/Remote Assistance*
-   GP ADMX file name: *remoteassistance.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="remoteassistance-unsolicitedremoteassistance"></a>**RemoteAssistance/UnsolicitedRemoteAssistance**  

<!--StartDescription-->
This policy setting allows you to turn on or turn off Offer (Unsolicited) Remote Assistance on this computer.

If you enable this policy setting, users on this computer can get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.

If you disable this policy setting, users on this computer cannot get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.

If you do not configure this policy setting, users on this computer cannot get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.

If you enable this policy setting, you have two ways to allow helpers to provide Remote Assistance: "Allow helpers to only view the computer" or "Allow helpers to remotely control the computer." When you configure this policy setting, you also specify the list of users or user groups that are allowed to offer remote assistance.

To configure the list of helpers, click "Show." In the window that opens, you can enter the names of the helpers. Add each user or group one by one. When you enter the name of the helper user or user groups, use the following format:

<Domain Name>\<User Name> or

<Domain Name>\<Group Name>

If you enable this policy setting, you should also enable firewall exceptions to allow Remote Assistance communications. The firewall exceptions required for Offer (Unsolicited) Remote Assistance depend on the version of Windows you are running.

Windows Vista and later

Enable the Remote Assistance exception for the domain profile. The exception must contain:
Port 135:TCP
%WINDIR%\System32\msra.exe
%WINDIR%\System32\raserver.exe

Windows XP with Service Pack 2 (SP2) and Windows XP Professional x64 Edition with Service Pack 1 (SP1)

Port 135:TCP
%WINDIR%\PCHealth\HelpCtr\Binaries\Helpsvc.exe
%WINDIR%\PCHealth\HelpCtr\Binaries\Helpctr.exe
%WINDIR%\System32\Sessmgr.exe

For computers running Windows Server 2003 with Service Pack 1 (SP1)

Port 135:TCP
%WINDIR%\PCHealth\HelpCtr\Binaries\Helpsvc.exe
%WINDIR%\PCHealth\HelpCtr\Binaries\Helpctr.exe
Allow Remote Desktop Exception

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Configure Offer Remote Assistance*
-   GP name: *RA_Unsolicit*
-   GP ADMX file name: *remoteassistance.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="remotedesktopservices-allowuserstoconnectremotely"></a>**RemoteDesktopServices/AllowUsersToConnectRemotely**  

<!--StartDescription-->
This policy setting allows you to configure remote access to computers by using Remote Desktop Services.

If you enable this policy setting, users who are members of the Remote Desktop Users group on the target computer can connect remotely to the target computer by using Remote Desktop Services.

If you disable this policy setting, users cannot connect remotely to the target computer by using Remote Desktop Services. The target computer will maintain any current connections, but will not accept any new incoming connections.

If you do not configure this policy setting, Remote Desktop Services uses the Remote Desktop setting on the target computer to determine whether the remote connection is allowed. This setting is found on the Remote tab in the System properties sheet. By default, remote connections are not allowed.

Note: You can limit which clients are able to connect remotely by using Remote Desktop Services by configuring the policy setting at Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Security\Require user authentication for remote connections by using Network Level Authentication.

You can limit the number of users who can connect simultaneously by configuring the policy setting at Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections\Limit number of connections, or by configuring the policy setting Maximum Connections by using the Remote Desktop Session Host WMI Provider.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow users to connect remotely by using Remote Desktop Services*
-   GP name: *TS_DISABLE_CONNECTIONS*
-   GP path: *Windows Components/Remote Desktop Services/Remote Desktop Session Host/Connections*
-   GP ADMX file name: *terminalserver.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="remotedesktopservices-clientconnectionencryptionlevel"></a>**RemoteDesktopServices/ClientConnectionEncryptionLevel**  

<!--StartDescription-->
Specifies whether to require the use of a specific encryption level to secure communications between client computers and RD Session Host servers during Remote Desktop Protocol (RDP) connections. This policy only applies when you are using native RDP encryption. However, native RDP encryption (as opposed to SSL encryption) is not recommended. This policy does not apply to SSL encryption.

If you enable this policy setting, all communications between clients and RD Session Host servers during remote connections must use the encryption method specified in this setting. By default, the encryption level is set to High. The following encryption methods are available:

* High: The High setting encrypts data sent from the client to the server and from the server to the client by using strong 128-bit encryption. Use this encryption level in environments that contain only 128-bit clients (for example, clients that run Remote Desktop Connection). Clients that do not support this encryption level cannot connect to RD Session Host servers.

* Client Compatible: The Client Compatible setting encrypts data sent between the client and the server at the maximum key strength supported by the client. Use this encryption level in environments that include clients that do not support 128-bit encryption.

* Low: The Low setting encrypts only data sent from the client to the server by using 56-bit encryption.

If you disable or do not configure this setting, the encryption level to be used for remote connections to RD Session Host servers is not enforced through Group Policy.

Important

FIPS compliance can be configured through the System cryptography. Use FIPS compliant algorithms for encryption, hashing, and signing settings in Group Policy (under Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options.) The FIPS compliant setting encrypts and decrypts data sent from the client to the server and from the server to the client, with the Federal Information Processing Standard (FIPS) 140 encryption algorithms, by using Microsoft cryptographic modules. Use this encryption level when communications between clients and RD Session Host servers requires the highest level of encryption.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Set client connection encryption level*
-   GP name: *TS_ENCRYPTION_POLICY*
-   GP path: *Windows Components/Remote Desktop Services/Remote Desktop Session Host/Security*
-   GP ADMX file name: *terminalserver.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="remotedesktopservices-donotallowdriveredirection"></a>**RemoteDesktopServices/DoNotAllowDriveRedirection**  

<!--StartDescription-->
This policy setting specifies whether to prevent the mapping of client drives in a Remote Desktop Services session (drive redirection).

By default, an RD Session Host server maps client drives automatically upon connection. Mapped drives appear in the session folder tree in File Explorer or Computer in the format <driveletter> on <computername>. You can use this policy setting to override this behavior.

If you enable this policy setting, client drive redirection is not allowed in Remote Desktop Services sessions, and Clipboard file copy redirection is not allowed on computers running Windows Server 2003, Windows 8, and Windows XP.

If you disable this policy setting, client drive redirection is always allowed. In addition, Clipboard file copy redirection is always allowed if Clipboard redirection is allowed.

If you do not configure this policy setting, client drive redirection and Clipboard file copy redirection are not specified at the Group Policy level.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Do not allow drive redirection*
-   GP name: *TS_CLIENT_DRIVE_M*
-   GP path: *Windows Components/Remote Desktop Services/Remote Desktop Session Host/Device and Resource Redirection*
-   GP ADMX file name: *terminalserver.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="remotedesktopservices-donotallowpasswordsaving"></a>**RemoteDesktopServices/DoNotAllowPasswordSaving**  

<!--StartDescription-->
Controls whether passwords can be saved on this computer from Remote Desktop Connection.

If you enable this setting the password saving checkbox in Remote Desktop Connection will be disabled and users will no longer be able to save passwords. When a user opens an RDP file using Remote Desktop Connection and saves his settings, any password that previously existed in the RDP file will be deleted.

If you disable this setting or leave it not configured, the user will be able to save passwords using Remote Desktop Connection.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Do not allow passwords to be saved*
-   GP name: *TS_CLIENT_DISABLE_PASSWORD_SAVING_2*
-   GP path: *Windows Components/Remote Desktop Services/Remote Desktop Connection Client*
-   GP ADMX file name: *terminalserver.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="remotedesktopservices-promptforpassworduponconnection"></a>**RemoteDesktopServices/PromptForPasswordUponConnection**  

<!--StartDescription-->
This policy setting specifies whether Remote Desktop Services always prompts the client for a password upon connection.

You can use this setting to enforce a password prompt for users logging on to Remote Desktop Services, even if they already provided the password in the Remote Desktop Connection client.

By default, Remote Desktop Services allows users to automatically log on by entering a password in the Remote Desktop Connection client.

If you enable this policy setting, users cannot automatically log on to Remote Desktop Services by supplying their passwords in the Remote Desktop Connection client. They are prompted for a password to log on.

If you disable this policy setting, users can always log on to Remote Desktop Services automatically by supplying their passwords in the Remote Desktop Connection client.

If you do not configure this policy setting, automatic logon is not specified at the Group Policy level.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Always prompt for password upon connection*
-   GP name: *TS_PASSWORD*
-   GP path: *Windows Components/Remote Desktop Services/Remote Desktop Session Host/Security*
-   GP ADMX file name: *terminalserver.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="remotedesktopservices-requiresecurerpccommunication"></a>**RemoteDesktopServices/RequireSecureRPCCommunication**  

<!--StartDescription-->
Specifies whether a Remote Desktop Session Host server requires secure RPC communication with all clients or allows unsecured communication.

You can use this setting to strengthen the security of RPC communication with clients by allowing only authenticated and encrypted requests.

If the status is set to Enabled, Remote Desktop Services accepts requests from RPC clients that support secure requests, and does not allow unsecured communication with untrusted clients.

If the status is set to Disabled, Remote Desktop Services always requests security for all RPC traffic. However, unsecured communication is allowed for RPC clients that do not respond to the request.

If the status is set to Not Configured, unsecured communication is allowed.

Note: The RPC interface is used for administering and configuring Remote Desktop Services.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Require secure RPC communication*
-   GP name: *TS_RPC_ENCRYPTION*
-   GP path: *Windows Components/Remote Desktop Services/Remote Desktop Session Host/Security*
-   GP ADMX file name: *terminalserver.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="remoteprocedurecall-rpcendpointmapperclientauthentication"></a>**RemoteProcedureCall/RPCEndpointMapperClientAuthentication**  

<!--StartDescription-->
This policy setting controls whether RPC clients authenticate with the Endpoint Mapper Service when the call they are making contains authentication information.   The Endpoint Mapper Service on computers running Windows NT4 (all service packs) cannot process authentication information supplied in this manner.

If you disable this policy setting, RPC clients will not authenticate to the Endpoint Mapper Service, but they will be able to communicate with the Endpoint Mapper Service on Windows NT4 Server.

If you enable this policy setting, RPC clients will authenticate to the Endpoint Mapper Service for calls that contain authentication information.  Clients making such calls will not be able to communicate with the Windows NT4 Server Endpoint Mapper Service.

If you do not configure this policy setting, it remains disabled.  RPC clients will not authenticate to the Endpoint Mapper Service, but they will be able to communicate with the Windows NT4 Server Endpoint Mapper Service.

Note: This policy will not be applied until the system is rebooted.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable RPC Endpoint Mapper Client Authentication*
-   GP name: *RpcEnableAuthEpResolution*
-   GP path: *System/Remote Procedure Call*
-   GP ADMX file name: *rpc.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="remoteprocedurecall-restrictunauthenticatedrpcclients"></a>**RemoteProcedureCall/RestrictUnauthenticatedRPCClients**  

<!--StartDescription-->
This policy setting controls how the RPC server runtime handles unauthenticated RPC clients connecting to RPC servers.

This policy setting impacts all RPC applications.  In a domain environment this policy setting should be used with caution as it can impact a wide range of functionality including group policy processing itself.  Reverting a change to this policy setting can require manual intervention on each affected machine.  This policy setting should never be applied to a domain controller.

If you disable this policy setting, the RPC server runtime uses the value of "Authenticated" on Windows Client, and the value of "None" on Windows Server versions that support this policy setting.

If you do not configure this policy setting, it remains disabled.  The RPC server runtime will behave as though it was enabled with the value of "Authenticated" used for Windows Client and the value of "None" used for Server SKUs that support this policy setting.

If you enable this policy setting, it directs the RPC server runtime to restrict unauthenticated RPC clients connecting to RPC servers running on a machine. A client will be considered an authenticated client if it uses a named pipe to communicate with the server or if it uses RPC Security. RPC Interfaces that have specifically requested to be accessible by unauthenticated clients may be exempt from this restriction, depending on the selected value for this policy setting.

--  "None" allows all RPC clients to connect to RPC Servers running on the machine on which the policy setting is applied.

--  "Authenticated" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied. Exemptions are granted to interfaces that have requested them.

--  "Authenticated without exceptions" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied.  No exceptions are allowed.

Note: This policy setting will not be applied until the system is rebooted.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Restrict Unauthenticated RPC clients*
-   GP name: *RpcRestrictRemoteClients*
-   GP path: *System/Remote Procedure Call*
-   GP ADMX file name: *rpc.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="search-allowindexingencryptedstoresoritems"></a>**Search/AllowIndexingEncryptedStoresOrItems**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows or disallows the indexing of items. This switch is for the Windows Search Indexer, which controls whether it will index items that are encrypted, such as the Windows Information Protection (WIP) protected files.

<p style="margin-left: 20px">When the policy is enabled, WIP protected items are indexed and the metadata about them are stored in an unencrypted location. The metadata includes things like file path and date modified.

<p style="margin-left: 20px">When the policy is disabled, the WIP protected items are not indexed and do not show up in the results in Cortana or file explorer. There may also be a performance impact on photos and Groove apps if there are a lot of WIP protected media files on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="search-allowsearchtouselocation"></a>**Search/AllowSearchToUseLocation**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether search can leverage location information.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="search-allowusingdiacritics"></a>**Search/AllowUsingDiacritics**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows the use of diacritics.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="search-alwaysuseautolangdetection"></a>**Search/AlwaysUseAutoLangDetection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether to always use automatic language detection when indexing content and properties.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="search-disablebackoff"></a>**Search/DisableBackoff**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">If enabled, the search indexer backoff feature will be disabled. Indexing will continue at full speed even when system activity is high. If disabled, backoff logic will be used to throttle back indexing activity when system activity is high. Default is disabled.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Disable.
-   1 – Enable.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="search-disableremovabledriveindexing"></a>**Search/DisableRemovableDriveIndexing**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">This policy setting configures whether or not locations on removable drives can be added to libraries.

<p style="margin-left: 20px">If you enable this policy setting, locations on removable drives cannot be added to libraries. In addition, locations on removable drives cannot be indexed.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, locations on removable drives can be added to libraries. In addition, locations on removable drives can be indexed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Disable.
-   1 – Enable.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="search-preventindexinglowdiskspacemb"></a>**Search/PreventIndexingLowDiskSpaceMB**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Enabling this policy prevents indexing from continuing after less than the specified amount of hard drive space is left on the same drive as the index location. Select between 0 and 1.

<p style="margin-left: 20px">Enable this policy if computers in your environment have extremely limited hard drive space.

<p style="margin-left: 20px">When this policy is disabled or not configured, Windows Desktop Search automatically manages your index size.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disable.
-   1 (default) – Enable.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="search-preventremotequeries"></a>**Search/PreventRemoteQueries**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">If enabled, clients will be unable to query this computer's index remotely. Thus, when they are browsing network shares that are stored on this computer, they will not search them using the index. If disabled, client search requests will use this computer's index..

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disable.
-   1 (default) – Enable.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="search-safesearchpermissions"></a>**Search/SafeSearchPermissions**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies what level of safe search (filtering adult content) is required.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Strict, highest filtering against adult content.
-   1 (default) – Moderate filtering against adult content (valid search results will not be filtered).

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="security-allowaddprovisioningpackage"></a>**Security/AllowAddProvisioningPackage**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether to allow the runtime configuration agent to install provisioning packages.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="security-allowautomaticdeviceencryptionforazureadjoineddevices"></a>**Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy has been deprecated in Windows 10, version 1607

<br>

> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies whether to allow automatic device encryption during OOBE when the device is Azure AD joined.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="security-allowmanualrootcertificateinstallation"></a>**Security/AllowManualRootCertificateInstallation**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies whether the user is allowed to manually install root and intermediate CA certificates.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="security-allowremoveprovisioningpackage"></a>**Security/AllowRemoveProvisioningPackage**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether to allow the runtime configuration agent to remove provisioning packages.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="security-antitheftmode"></a>**Security/AntiTheftMode**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 
<p style="margin-left: 20px">Allows or disallow Anti Theft Mode on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Don't allow Anti Theft Mode.
-   1 (default) – Anti Theft Mode will follow the default device configuration (region-dependent).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="security-preventautomaticdeviceencryptionforazureadjoineddevices"></a>**Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607 to replace the deprecated policy **Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices**.

<p style="margin-left: 20px">Specifies whether to allow automatic device encryption during OOBE when the device is Azure AD joined.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Encryption enabled.
-   1 – Encryption disabled.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="security-requiredeviceencryption"></a>**Security/RequireDeviceEncryption**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile. In Windows 10 for desktop, you can query encryption status by using the [DeviceStatus CSP](devicestatus-csp.md) node **DeviceStatus/Compliance/EncryptionCompliance**.

<p style="margin-left: 20px">Allows enterprise to turn on internal storage encryption.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Encryption is not required.
-   1 – Encryption is required.

<p style="margin-left: 20px">Most restricted value is 1.

> [!IMPORTANT]
> If encryption has been enabled, it cannot be turned off by using this policy.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="security-requireprovisioningpackagesignature"></a>**Security/RequireProvisioningPackageSignature**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether provisioning packages must have a certificate signed by a device trusted authority.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not required.
-   1 – Required.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="security-requireretrievehealthcertificateonboot"></a>**Security/RequireRetrieveHealthCertificateOnBoot**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether to retrieve and post TCG Boot logs, and get or cache an encrypted or signed Health Attestation Report from the Microsoft Health Attestation Service (HAS) when a device boots or reboots.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not required.
-   1 – Required.

<p style="margin-left: 20px">Setting this policy to 1 (Required):

-   Determines whether a device is capable of Remote Device Health Attestation, by verifying if the device has TPM 2.0.
-   Improves the performance of the device by enabling the device to fetch and cache data to reduce the latency during Device Health Verification.

> [!NOTE]
> We recommend that this policy is set to Required after MDM enrollment.
 

<p style="margin-left: 20px">Most restricted value is 1.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="settings-allowautoplay"></a>**Settings/AllowAutoPlay**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows the user to change Auto Play settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

> [!NOTE]
> Setting this policy to 0 (Not allowed) does not affect the autoplay dialog box that appears when a device is connected.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="settings-allowdatasense"></a>**Settings/AllowDataSense**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows the user to change Data Sense settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="settings-allowdatetime"></a>**Settings/AllowDateTime**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows the user to change date and time settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="settings-alloweditdevicename"></a>**Settings/AllowEditDeviceName**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows editing of the device name.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="settings-allowlanguage"></a>**Settings/AllowLanguage**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows the user to change the language settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="settings-allowpowersleep"></a>**Settings/AllowPowerSleep**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows the user to change power and sleep settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="settings-allowregion"></a>**Settings/AllowRegion**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows the user to change the region settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="settings-allowsigninoptions"></a>**Settings/AllowSignInOptions**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows the user to change sign-in options.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="settings-allowvpn"></a>**Settings/AllowVPN**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows the user to change VPN settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="settings-allowworkplace"></a>**Settings/AllowWorkplace**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows user to change workplace settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="settings-allowyouraccount"></a>**Settings/AllowYourAccount**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows user to change account settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="settings-configuretaskbarcalendar"></a>**Settings/ConfigureTaskbarCalendar**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703.  Allows IT Admins to configure the default setting for showing additional calendars (besides the default calendar for the locale) in the taskbar clock and calendar flyout.  In this version of Windows 10, supported additional calendars are: Simplified or Traditional Chinese lunar calendar. Turning on one of these calendars will display Chinese lunar dates below the default calendar for the locale.  Select "Don't show additional calendars" to prevent showing other calendars besides the default calendar for the locale.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – User will be allowed to configure the setting.
-   1  – Don't show additional calendars.
-   2  - Simplified Chinese (Lunar).
-   3  - Traditional Chinese (Lunar).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="settings-pagevisibilitylist"></a>**Settings/PageVisibilityList**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703.  Allows IT Admins to either  prevent specific pages in the System Settings app from being visible or accessible, or to do so for all pages except those specified.  The mode will be specified by the policy string beginning with either the string "showonly:" or "hide:".  Pages are identified by a shortened version of their already published URIs, which is the URI minus the "ms-settings:" prefix. For example, if the URI for a settings page is "ms-settings:foo", the page identifier used in the policy will be just "foo".  Multiple page identifiers are separated by semicolons.

<p style="margin-left: 20px">The following example illustrates a policy that would allow access only to the about and bluetooth pages, which have URI "ms-settings:about" and "ms-settings:bluetooth" respectively:

<p style="margin-left: 20px">showonly:about;bluetooth

<p style="margin-left: 20px">If the policy is not specified, the behavior will be that no pages are affected. If the policy string is formatted incorrectly, it will be ignored entirely (i.e. treated as not set) to prevent the machine from becoming unserviceable if data corruption occurs. Note that if a page is already hidden for another reason, then it will remain hidden even if it is in a "showonly:" list.

<p style="margin-left: 20px">The format of the PageVisibilityList value is as follows:

-   The value is a unicode string up to 10,000 characters long, which will be used without case sensitivity.
-   There are two variants: one that shows only the given pages and one which hides the given pages.
-   The first variant starts with the string "showonly:" and the second with the string "hide:".
-	Following the variant identifier is a semicolon-delimited list of page identifiers, which must not have any extra whitespace.
-   Each page identifier is the ms-settings:xyz URI for the page, minus the ms-settings: prefix, so the identifier for the page with URI "ms-settings:wi-fi" would be just "wi-fi".

<p style="margin-left: 20px">The default value for this setting is an empty string, which is interpreted as show everything.

<p style="margin-left: 20px">Example 1, specifies that only the wifi and bluetooth pages should be shown (they have URIs ms-settings:wi-fi and ms-settings:bluetooth). All other pages (and the categories they're in) will be hidden:

<p style="margin-left: 20px">showonly:wi-fi;bluetooth

<p style="margin-left: 20px">Example 2, specifies that the wifi page should not be shown:

<p style="margin-left: 20px">hide:wifi

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Open System Settings and verfiy that the About page is visible and accessible.
2.   Configure the policy with the following string: "hide:about".
3.   Open System Settings again and verify that the About page is no longer accessible.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="smartscreen-enableappinstallcontrol"></a>**SmartScreen/EnableAppInstallControl**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to control whether users are allowed to install apps from places other than the Store.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Turns off Application Installation Control, allowing users to download and install files from anywhere on the web.
-   1 – Turns on Application Installation Control, allowing users to only install apps from the Store.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="smartscreen-enablesmartscreeninshell"></a>**SmartScreen/EnableSmartScreenInShell**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure SmartScreen for Windows.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Turns off SmartScreen in Windows.
-   1 – Turns on SmartScreen in Windows.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="smartscreen-preventoverrideforfilesinshell"></a>**SmartScreen/PreventOverrideForFilesInShell**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to control whether users can can ignore SmartScreen warnings and run malicious files.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Employees can ignore SmartScreen warnings and run malicious files.
-   1 – Employees cannot ignore SmartScreen warnings and run malicious files.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="speech-allowspeechmodelupdate"></a>**Speech/AllowSpeechModelUpdate**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether the device will receive updates to the speech recognition and speech synthesis models. A speech model contains data used by the speech engine to convert audio to text (or vice-versa). The models are periodically updated to improve accuracy and performance. Models are non-executable data files. If enabled, the device will periodically check for updated speech models and then download them from a Microsoft service using the Background Internet Transfer Service (BITS).

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-allowpinnedfolderdocuments"></a>**Start/AllowPinnedFolderDocuments**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Documents shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-allowpinnedfolderdownloads"></a>**Start/AllowPinnedFolderDownloads**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Downloads shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-allowpinnedfolderfileexplorer"></a>**Start/AllowPinnedFolderFileExplorer**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the File Explorer shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-allowpinnedfolderhomegroup"></a>**Start/AllowPinnedFolderHomeGroup**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the HomeGroup shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-allowpinnedfoldermusic"></a>**Start/AllowPinnedFolderMusic**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Music shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-allowpinnedfoldernetwork"></a>**Start/AllowPinnedFolderNetwork**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Network shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-allowpinnedfolderpersonalfolder"></a>**Start/AllowPinnedFolderPersonalFolder**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the PersonalFolder shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-allowpinnedfolderpictures"></a>**Start/AllowPinnedFolderPictures**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Pictures shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-allowpinnedfoldersettings"></a>**Start/AllowPinnedFolderSettings**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Settings shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-allowpinnedfoldervideos"></a>**Start/AllowPinnedFolderVideos**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Videos shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-forcestartsize"></a>**Start/ForceStartSize**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Forces the start screen size.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Do not force size of Start.
-   1 – Force non-fullscreen size of Start.
-   2 - Force a fullscreen size of Start.

<p style="margin-left: 20px">If there is policy configuration conflict, the latest configuration request is applied to the device.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hideapplist"></a>**Start/HideAppList**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by collapsing or removing the all apps list.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – None.
-   1 – Hide all apps list.
-   2 - Hide all apps list, and Disable "Show app list in Start menu" in Settings app.
-   3 - Hide all apps list, remove all apps button, and Disable "Show app list in Start menu" in Settings app.

<p style="margin-left: 20px">To validate on Desktop, do the following:

-   1 - Enable policy and restart explorer.exe
-   2a - If set to '1': Verify that the all apps list is collapsed, and that the Settings toggle is not grayed out.
-   2b - If set to '2': Verify that the all apps list is collapsed, and that the Settings toggle is grayed out.
-   2c - If set to '3': Verify that there is no way of opening the all apps list from Start, and that the Settings toggle is grayed out.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hidechangeaccountsettings"></a>**Start/HideChangeAccountSettings**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Change account settings" from appearing in the user tile.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the user tile, and verify that "Change account settings" is not available.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hidefrequentlyusedapps"></a>**Start/HideFrequentlyUsedApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding most used apps.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable "Show most used apps" in the Settings app.
2.   Use some apps to get them into the most used group in Start.
3.   Enable policy.
4.   Restart explorer.exe
5.   Check that  "Show most used apps" Settings toggle is grayed out.
6.   Check that most used apps do not appear in Start.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hidehibernate"></a>**Start/HideHibernate**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Hibernate" from appearing in the Power button.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Laptop, do the following:

1.   Enable policy.
2.   Open Start, click on the Power button, and verify "Hibernate" is not available.

> [!NOTE]
> This policy can only be verified on laptops as "Hibernate" does not appear on regular PC's.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hidelock"></a>**Start/HideLock**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Lock" from appearing in the user tile.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the user tile, and verify "Lock" is not available.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hidepowerbutton"></a>**Start/HidePowerButton**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding the Power button from appearing.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, and verify the power button is not available.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hiderecentjumplists"></a>**Start/HideRecentJumplists**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding recently opened items in the jumplists from appearing.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable "Show recently opened items in Jump Lists on Start of the taskbar" in Settings.
2.   Pin Photos to the taskbar, and open some images in the photos app.
3.   Right click the pinned photos app and verify that a jumplist of recently opened items pops up.
4.   Toggle "Show recently opened items in Jump Lists on Start of the taskbar" in Settings to clear jump lists.
5.   Enable policy.
6.   Restart explorer.exe
7.   Check that Settings toggle is grayed out.
8.   Repeat Step 2.
9.   Right Click pinned photos app and verify that there is no jumplist of recent items.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hiderecentlyaddedapps"></a>**Start/HideRecentlyAddedApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding recently added apps.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable "Show recently added apps" in the Settings app.
2.   Check if there are recently added apps in Start (if not, install some).
3.   Enable policy.
4.   Restart explorer.exe
5.   Check that "Show recently added apps" Settings toggle is grayed out.
6.   Check that recently added apps do not appear in Start.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hiderestart"></a>**Start/HideRestart**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Restart" and "Update and restart" from appearing in the Power button.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the Power button, and verify "Restart" and "Update and restart" are not available.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hideshutdown"></a>**Start/HideShutDown**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Shut down" and "Update and shut down" from appearing in the Power button.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the Power button, and verify "Shut down" and "Update and shut down" are not available.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hidesignout"></a>**Start/HideSignOut**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Sign out" from appearing in the user tile.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the user tile, and verify "Sign out" is not available.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hidesleep"></a>**Start/HideSleep**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Sleep" from appearing in the Power button.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the Power button, and verify that "Sleep" is not available.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hideswitchaccount"></a>**Start/HideSwitchAccount**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Switch account" from appearing in the user tile.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the user tile, and verify that "Switch account" is not available.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-hideusertile"></a>**Start/HideUserTile**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding the user tile.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Log off.
3.   Log in, and verify that the user tile is gone from Start.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-importedgeassets"></a>**Start/ImportEdgeAssets**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy imports Edge assets (e.g. .png/.jpg files) for secondary tiles into its local app data path which allows the StartLayout policy to pin Edge secondary tiles as weblink that tie to the image asset files.

> [!IMPORTANT]
> Please note that the import happens only when StartLayout policy is changed. So it is better to always change ImportEdgeAssets policy at the same time as StartLayout policy whenever there are Edge secondary tiles to be pinned from StartLayout policy.

<p style="margin-left: 20px">The value set for this policy is an XML string containing Edge assets.  An example XML string is provided in the [Microsoft Edge assets example](#microsoft-edge-assets-example) later in this topic.

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Set policy with an XML for Edge assets.
2.   Set StartLayout policy to anything so that it would trigger the Edge assets import.
3.   Sign out/in.
4.   Verify that all Edge assets defined in XML show up in %LOCALAPPDATA%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\LocalState path.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-nopinningtotaskbar"></a>**Start/NoPinningToTaskbar**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure the taskbar by disabling pinning and unpinning apps on the taskbar.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (pinning enabled).
-   1 - True (pinning disabled).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Right click on a program pinned to taskbar.
3.   Verify that "Unpin from taskbar" menu does not show.
4.   Open Start and right click on one of the app list icons.
5.   Verify that More->Pin to taskbar menu does not show.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="start-startlayout"></a>**Start/StartLayout**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!IMPORTANT]
> This node is set on a per-user basis and must be accessed using the following paths:
> -   **./User/Vendor/MSFT/Policy/Config/Start/StartLayout** to configure the policy.
> -   **./User/Vendor/MSFT/Policy/Result/Start/StartLayout** to query the current value of the policy.
>
>
> Added in Windows 10 version 1703: In addition to being able to set this node on a per user-basis, it can now also be set on a per-device basis using the following paths:
> -   **./Device/Vendor/MSFT/Policy/Config/Start/StartLayout** to configure the policy.
> -   **./Device/Vendor/MSFT/Policy/Result/Start/StartLayout** to query the current value of the policy.


<p style="margin-left: 20px">Allows you to override the default Start layout and prevents the user from changing it. If both user and device policies are set, the user policy will be used. Apps pinned to the taskbar can also be changed with this policy

<p style="margin-left: 20px">This policy is described in [Start/StartLayout Examples](#startlayout-examples) later in this topic.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="storage-enhancedstoragedevices"></a>**Storage/EnhancedStorageDevices**  

<!--StartDescription-->
This policy setting configures whether or not Windows will activate an Enhanced Storage device.

If you enable this policy setting, Windows will not activate unactivated Enhanced Storage devices.

If you disable or do not configure this policy setting, Windows will activate unactivated Enhanced Storage devices.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Do not allow Windows to activate Enhanced Storage devices*
-   GP name: *TCGSecurityActivationDisabled*
-   GP path: *System/Enhanced Storage Access*
-   GP ADMX file name: *enhancedstorage.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="system-allowbuildpreview"></a>**System/AllowBuildPreview**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy setting applies only to devices running Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education, Windows 10 Mobile, and Windows 10 Mobile Enterprise.


<p style="margin-left: 20px">This policy setting determines whether users can access the Insider build controls in the Advanced Options for Windows Update. These controls are located under "Get Insider builds," and enable users to make their devices available for downloading and installing Windows preview software.

<p style="margin-left: 20px">If you enable or do not configure this policy setting, users can download and install Windows preview software on their devices. If you disable this policy setting, the item "Get Insider builds" will be unavailable.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed. The item "Get Insider builds" is unavailable, users are unable to make their devices available for preview software.
-   1 – Allowed. Users can make their devices available for downloading and installing preview software.
-   2 (default) – Not configured. Users can make their devices available for downloading and installing preview software.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="system-allowembeddedmode"></a>**System/AllowEmbeddedMode**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether set general purpose device to be in embedded mode.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="system-allowexperimentation"></a>**System/AllowExperimentation**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is not supported in Windows 10, version 1607.

<p style="margin-left: 20px">This policy setting determines the level that Microsoft can experiment with the product to study user preferences or device behavior.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disabled.
-   1 (default) – Permits Microsoft to configure device settings only.
-   2 – Allows Microsoft to conduct full experimentations.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="system-allowfontproviders"></a>**System/AllowFontProviders**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Boolean policy setting that determines whether Windows is allowed to download fonts and font catalog data from an online font provider. If you enable this setting, Windows periodically queries an online font provider to determine whether a new font catalog is available. Windows may also download font data if needed to format or render text. If you disable this policy setting, Windows does not connect to an online font provider and only enumerates locally-installed fonts.

<p style="margin-left: 20px">Supported values:  

-   false - No traffic to fs.microsoft.com and only locally-installed fonts are available.
-   true (default) - There may be network traffic to fs.microsoft.com and downloadable fonts are available to apps that support them.

<p style="margin-left: 20px">This MDM setting corresponds to the EnableFontProviders Group Policy setting. If both the Group Policy and the MDM settings are configured, the group policy setting takes precedence. If neither is configured, the behavior depends on a DisableFontProviders registry value. In server editions, this registry value is set to 1 by default, so the default behavior is false (disabled). In all other editions, the registry value is not set by default, so the default behavior is true (enabled).

<p style="margin-left: 20px">This setting is used by lower-level components for text display and fond handling and has not direct effect on web browsers, which may download web fonts used in web content.

> [!Note]  
> Reboot is required after setting the policy; alternatively you can stop and restart the FontCache service.

<p style="margin-left: 20px">To verify if System/AllowFontProviders is set to true:  

-  After a client machine is rebooted, check whether there is any network traffic from client machine to fs.microsoft.com.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="system-allowlocation"></a>**System/AllowLocation**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether to allow app access to the Location service.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Force Location Off. All Location Privacy settings are toggled off and greyed out. Users cannot change the settings, and no apps are allowed access to the Location service, including Cortana and Search.
-   1 (default) – Location service is allowed. The user has control and can change Location Privacy settings on or off.
-   2 – Force Location On. All Location Privacy settings are toggled on and greyed out. Users cannot change the settings and all consent permissions will be automatically suppressed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">While the policy is set to 0 (Force Location Off) or 2 (Force Location On), any Location service call from an app would trigger the value set by this policy.

<p style="margin-left: 20px">When switching the policy back from 0 (Force Location Off) or 2 (Force Location On) to 1 (User Control), the app reverts to its original Location service setting.

<p style="margin-left: 20px">For example, an app's original Location setting is Off. The administrator then sets the **AllowLocation** policy to 2 (Force Location On.) The Location service starts working for that app, overriding the original setting. Later, if the administrator switches the **AllowLocation** policy back to 1 (User Control), the app will revert to using its original setting of Off.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="system-allowstoragecard"></a>**System/AllowStorageCard**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Controls whether the user is allowed to use the storage card for device storage. This setting prevents programmatic access to the storage card.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – SD card use is not allowed and USB drives are disabled. This setting does not prevent programmatic access to the storage card. 
-   1 (default) – Allow a storage card.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="system-allowtelemetry"></a>**System/AllowTelemetry**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allow the device to send diagnostic and usage telemetry data, such as Watson.

<p style="margin-left: 20px">The following tables describe the supported values:

<table style="margin-left: 20px">
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th>Windows 8.1 Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>0 – Not allowed.</p>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p> 1 – Allowed, except for Secondary Data Requests.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>2 (default) – Allowed.</p></td>
</tr>
</tbody>
</table>


<table style="margin-left: 20px">
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th>Windows 10 Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>0 – Security. Information that is required to help keep Windows more secure, including data about the Connected User Experience and Telemetry component settings, the Malicious Software Removal Tool, and Windows Defender.</p>
<div class="alert">
<strong>Note</strong>  This value is only applicable to Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile Enterprise, Windows 10 IoT Core (IoT Core), and Windows Server 2016. Using this setting on other devices is equivalent to setting the value of 1.
</div>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>1 – Basic. Basic device info, including: quality-related data, app compatibility, app usage data, and data from the Security level.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>2 – Enhanced. Additional insights, including: how Windows, Windows Server, System Center, and apps are used, how they perform, advanced reliability data, and data from both the Basic and the Security levels.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>3 – Full. All data necessary to identify and help to fix problems, plus data from the Security, Basic, and Enhanced levels.</p></td>
</tr>
</tbody>
</table>


> [!IMPORTANT]
> If you are using Windows 8.1 MDM server and set a value of 0 using the legacy AllowTelemetry policy on a Windows 10 Mobile device, then the value is not respected and the telemetry level is silently set to level 1.


<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="system-allowusertoresetphone"></a>**System/AllowUserToResetPhone**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether to allow the user to factory reset the phone by using control panel and hardware key combination.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed to reset to factory default settings.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="system-bootstartdriverinitialization"></a>**System/BootStartDriverInitialization**  

<!--StartDescription-->
N/A

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Boot-Start Driver Initialization Policy*
-   GP name: *POL_DriverLoadPolicy_Name*
-   GP path: *System/Early Launch Antimalware*
-   GP ADMX file name: *earlylauncham.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="system-disableonedrivefilesync"></a>**System/DisableOneDriveFileSync**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to prevent apps and features from working with files on OneDrive. If you enable this policy setting:

* Users cannot access OneDrive from the OneDrive app or file picker.
* Windows Store apps cannot access OneDrive using the WinRT API.
* OneDrive does not appear in the navigation pane in File Explorer.
* OneDrive files are not kept in sync with the cloud.
* Users cannot automatically upload photos and videos from the camera roll folder. 

<p style="margin-left: 20px">If you disable or do not configure this policy setting, apps and features can work with OneDrive file storage.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (sync enabled).
-   1 – True (sync disabled).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Restart machine.
3.   Verify that OneDrive.exe is not running in Task Manager.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="system-disablesystemrestore"></a>**System/DisableSystemRestore**  

<!--StartDescription-->
Allows you to disable System Restore.

This policy setting allows you to turn off System Restore.

System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files. By default, System Restore is turned on for the boot volume.

If you enable this policy setting, System Restore is turned off, and the System Restore Wizard cannot be accessed. The option to configure System Restore or create a restore point through System Protection is also disabled.

If you disable or do not configure this policy setting, users can perform System Restore and configure System Restore settings through System Protection.

Also, see the "Turn off System Restore configuration" policy setting. If the "Turn off System Restore" policy setting is disabled or not configured, the "Turn off System Restore configuration" policy setting is used to determine whether the option to configure System Restore is available.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off System Restore*
-   GP name: *SR_DisableSR*
-   GP path: *System/System Restore*
-   GP ADMX file name: *systemrestore.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="system-telemetryproxy"></a>**System/TelemetryProxy**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows you to specify the fully qualified domain name (FQDN) or IP address of a proxy server to forward Connected User Experiences and Telemetry requests. The format for this setting is *&lt;server&gt;:&lt;port&gt;*. The connection is made over a Secure Sockets Layer (SSL) connection. If the named proxy fails, or if there is no proxy specified when this policy is enabled, the Connected User Experiences and Telemetry data will not be transmitted and will remain on the local device.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, Connected User Experiences and Telemetry will go to Microsoft using the default proxy configuration.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="textinput-allowimelogging"></a>**TextInput/AllowIMELogging**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the user to turn on and off the logging for incorrect conversion and saving auto-tuning result to a file and history-based predictive input.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="textinput-allowimenetworkaccess"></a>**TextInput/AllowIMENetworkAccess**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the user to turn on Open Extended Dictionary, Internet search integration, or cloud candidate features to provide input suggestions that do not exist in the device's local dictionary.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="textinput-allowinputpanel"></a>**TextInput/AllowInputPanel**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the IT admin to disable the touch/handwriting keyboard on Windows.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="textinput-allowjapaneseimesurrogatepaircharacters"></a>**TextInput/AllowJapaneseIMESurrogatePairCharacters**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the Japanese IME surrogate pair characters.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="textinput-allowjapaneseivscharacters"></a>**TextInput/AllowJapaneseIVSCharacters**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows Japanese Ideographic Variation Sequence (IVS) characters.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="textinput-allowjapanesenonpublishingstandardglyph"></a>**TextInput/AllowJapaneseNonPublishingStandardGlyph**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the Japanese non-publishing standard glyph.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="textinput-allowjapaneseuserdictionary"></a>**TextInput/AllowJapaneseUserDictionary**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the Japanese user dictionary.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="textinput-allowkeyboardtextsuggestions"></a>**TextInput/AllowKeyboardTextSuggestions**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether text prediction is enabled or disabled for the on-screen keyboard, touch keyboard, and handwriting recognition tool. When this policy is set to disabled, text prediction is disabled. 

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disabled.
-   1 (default) – Enabled.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">To validate that text prediction is disabled on Windows 10 for desktop, do the following:

1.  Search for and launch the on-screen keyboard. Verify that text prediction is disabled by typing some text. Text prediction on the keyboard will be disabled even if the “Use Text Prediction” setting is enabled from the options button.
2.  Launch the input panel/touch keyboard by touching a text input field or launching it from the taskbar. Verify that text prediction is disabled by typing some text. Text prediction on the keyboard will be disabled even if the “Show text suggestions as I type” setting is enabled in the Settings app.
3.  Launch the handwriting tool from the touch keyboard. Verify that text prediction is disabled when you write using the tool.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="textinput-allowkoreanextendedhanja"></a>**TextInput/AllowKoreanExtendedHanja**  

<!--StartDescription-->
<p style="margin-left: 20px">This policy has been deprecated.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="textinput-allowlanguagefeaturesuninstall"></a>**TextInput/AllowLanguageFeaturesUninstall**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the uninstall of language features, such as spell checkers, on a device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="textinput-excludejapaneseimeexceptjis0208"></a>**TextInput/ExcludeJapaneseIMEExceptJIS0208**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the users to restrict character code range of conversion by setting the character filter.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – No characters are filtered.
-   1 – All characters except JIS0208 are filtered.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="textinput-excludejapaneseimeexceptjis0208andeudc"></a>**TextInput/ExcludeJapaneseIMEExceptJIS0208andEUDC**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the users to restrict character code range of conversion by setting the character filter.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – No characters are filtered.
-   1 – All characters except JIS0208 and EUDC are filtered.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="textinput-excludejapaneseimeexceptshiftjis"></a>**TextInput/ExcludeJapaneseIMEExceptShiftJIS**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the users to restrict character code range of conversion by setting the character filter.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – No characters are filtered.
-   1 – All characters except ShiftJIS are filtered.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="timelanguagesettings-allowset24hourclock"></a>**TimeLanguageSettings/AllowSet24HourClock**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows for the configuration of the default clock setting to be the 24 hour format. Selecting 'Set 24 hour Clock' enables this setting. Selecting 'Locale default setting' uses the default clock as prescribed by the current locale setting.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Locale default setting.
-   1 (default) – Set 24 hour clock.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-activehoursend"></a>**Update/ActiveHoursEnd**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the IT admin (when used with **Update/ActiveHoursStart**) to manage a range of active hours where update reboots are not scheduled. This value sets the end time. There is a 12 hour maximum from start time.

> [!NOTE]
> The default maximum difference from start time has been increased to 18 in Windows 10, version 1703. In this version of Windows 10, the maximum range of active hours can now be configured.  See **Update/ActiveHoursMaxRange** below for more information.

<p style="margin-left: 20px">Supported values are 0-23, where 0 is 12 AM, 1 is 1 AM, etc.

<p style="margin-left: 20px">The default is 17 (5 PM).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-activehoursmaxrange"></a>**Update/ActiveHoursMaxRange**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/CheckMark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows the IT admin to specify the max active hours range. This value sets max number of active hours from start time.

<p style="margin-left: 20px">Supported values are 8-18.

<p style="margin-left: 20px">The default value is 18 (hours).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-activehoursstart"></a>**Update/ActiveHoursStart**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the IT admin (when used with **Update/ActiveHoursEnd**) to manage a range of hours where update reboots are not scheduled. This value sets the start time. There is a 12 hour maximum from end time.

> [!NOTE]
> The default maximum difference from end time has been increased to 18 in Windows 10, version 1703. In this version of Windows 10, the maximum range of active hours can now be configured.  See **Update/ActiveHoursMaxRange** above for more information.

<p style="margin-left: 20px">Supported values are 0-23, where 0 is 12 AM, 1 is 1 AM, etc.

<p style="margin-left: 20px">The default value is 8 (8 AM).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-autorestartdeadlineperiodindays"></a>**Update/AutoRestartDeadlinePeriodInDays**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy defines the deadline in days after which a reboot for updates will become mandatory.

<p style="margin-left: 20px">Supported values are 2-30 days.

<p style="margin-left: 20px">The default value is 7 days.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-allowautoupdate"></a>**Update/AllowAutoUpdate**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Enables the IT admin to manage automatic update behavior to scan, download, and install updates.

<p style="margin-left: 20px">Supported operations are Get and Replace.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Notify the user before downloading the update. This policy is used by the enterprise who wants to enable the end-users to manage data usage. With this option users are notified when there are updates that apply to the device and are ready for download. Users can download and install the updates from the Windows Update control panel.
-   1 – Auto install the update and then notify the user to schedule a device restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates immediately. If the installation requires a restart, the end-user is prompted to schedule the restart time. The end-user has up to seven days to schedule the restart and after that, a restart of the device is forced. Enabling the end-user to control the start time reduces the risk of accidental data loss caused by applications that do not shutdown properly on restart.
-   2 (default) – Auto install and restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates right away. If a restart is required, then the device is automatically restarted when the device is not actively being used. This is the default behavior for unmanaged devices. Devices are updated quickly, but it increases the risk of accidental data loss caused by an application that does not shutdown properly on restart.
-   3 – Auto install and restart at a specified time. The IT specifies the installation day and time. If no day and time are specified, the default is 3 AM daily. Automatic installation happens at this time and device restart happens after a 15-minute countdown. If the user is logged in when Windows is ready to restart, the user can interrupt the 15-minute countdown to delay the restart.
-   4 – Auto install and restart without end-user control. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates right away. If a restart is required, then the device is automatically restarted when the device is not actively being used. This setting option also sets the end-user control panel to read-only.
-   5 – Turn off automatic updates.

> [!IMPORTANT]
> This option should be used only for systems under regulatory compliance, as you will not get security updates as well.
 

<p style="margin-left: 20px">If the policy is not configured, end-users get the default behavior (Auto install and restart).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-allowmuupdateservice"></a>**Update/AllowMUUpdateService**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education


<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the IT admin to manage whether to scan for app updates from Microsoft Update.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed or not configured.
-   1 – Allowed. Accepts updates received through Microsoft Update.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-allownonmicrosoftsignedupdate"></a>**Update/AllowNonMicrosoftSignedUpdate**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Allows the IT admin to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found at the UpdateServiceUrl location. This policy supports using WSUS for 3rd party software and patch distribution.

<p style="margin-left: 20px">Supported operations are Get and Replace.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed or not configured. Updates from an intranet Microsoft update service location must be signed by Microsoft.
-   1 – Allowed. Accepts updates received through an intranet Microsoft update service location, if they are signed by a certificate found in the "Trusted Publishers" certificate store of the local computer.

<p style="margin-left: 20px">This policy is specific to desktop and local publishing via WSUS for 3rd party updates (binaries and updates not hosted on Microsoft Update) and allows IT to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found on an intranet Microsoft update service location.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-allowupdateservice"></a>**Update/AllowUpdateService**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Specifies whether the device could use Microsoft Update, Windows Server Update Services (WSUS), or Windows Store.

<p style="margin-left: 20px">Even when Windows Update is configured to receive updates from an intranet update service, it will periodically retrieve information from the public Windows Update service to enable future connections to Windows Update, and other services like Microsoft Update or the Windows Store

<p style="margin-left: 20px">Enabling this policy will disable that functionality, and may cause connection to public services such as the Windows Store to stop working.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Update service is not allowed.
-   1 (default) – Update service is allowed.

> [!NOTE]
> This policy applies only when the desktop or device is configured to connect to an intranet update service using the "Specify intranet Microsoft update service location" policy.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-autorestartnotificationschedule"></a>**Update/AutoRestartNotificationSchedule**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/CheckMark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows the IT Admin to specify the period for auto-restart reminder notifications.

<p style="margin-left: 20px">Supported values are 15, 30, 60, 120, and 240 (minutes).

<p style="margin-left: 20px">The default value is 15 (minutes).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-autorestartrequirednotificationdismissal"></a>**Update/AutoRestartRequiredNotificationDismissal**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/CheckMark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows the IT Admin to specify the method by which the auto-restart required notification is dismissed.

<p style="margin-left: 20px">The following list shows the supported values:

-   1 (default) – Auto Dismissal.
-   2 – User Dismissal.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-branchreadinesslevel"></a>**Update/BranchReadinessLevel**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the IT admin to set which branch a device receives their updates from.

<p style="margin-left: 20px">The following list shows the supported values:

-   16 (default) – User gets all applicable upgrades from Current Branch (CB).
-   32 – User gets upgrades from Current Branch for Business (CBB).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-deferfeatureupdatesperiodindays"></a>**Update/DeferFeatureUpdatesPeriodInDays**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education.
<p style="margin-left: 20px">Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1607. Defers Feature Updates for the specified number of days.

<p style="margin-left: 20px">Supported values are 0-365 days.

> [!IMPORTANT]
> The default maximum number of days to defer an update has been increased from 180 (Windows 10, version 1607) to 365 in Windows 10, version 1703.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-deferqualityupdatesperiodindays"></a>**Update/DeferQualityUpdatesPeriodInDays**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1607. Defers Quality Updates for the specified number of days.

<p style="margin-left: 20px">Supported values are 0-30.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-deferupdateperiod"></a>**Update/DeferUpdatePeriod**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise
>
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#windows10version1607forupdatemanagement). You can continue to use DeferUpdatePeriod for Windows 10, version 1511 devices.


<p style="margin-left: 20px">Allows IT Admins to specify update delays for up to 4 weeks.

<p style="margin-left: 20px">Supported values are 0-4, which refers to the number of weeks to defer updates.

<p style="margin-left: 20px">In Windows 10 Mobile Enterprise version 1511 devices set to automatic updates, for DeferUpdatePeriod to work, you must set the following:

-   Update/RequireDeferUpgrade must be set to 1
-   System/AllowTelemetry must be set to 1 or higher

<p style="margin-left: 20px">If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<p style="margin-left: 20px">If the Allow Telemetry policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<table style="margin-left: 20px">
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Update category</th>
<th>Maximum deferral</th>
<th>Deferral increment</th>
<th>Update type/notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>OS upgrade</p></td>
<td style="vertical-align:top"><p>8 months</p></td>
<td style="vertical-align:top"><p>1 month</p></td>
<td style="vertical-align:top"><p>Upgrade - 3689BDC8-B205-4AF4-8D4A-A63924C5E9D5</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Update</p></td>
<td style="vertical-align:top"><p>1 month</p></td>
<td style="vertical-align:top"><p>1 week</p></td>
<td style="vertical-align:top"><div class="alert">
<strong>Note</strong>
If a machine has Microsoft Update enabled, any Microsoft Updates in these categories will also observe Defer / Pause logic.
</div>
<ul>
<li>Security Update - 0FA1201D-4330-4FA8-8AE9-B877473B6441</li>
<li>Critical Update - E6CF1350-C01B-414D-A61F-263D14D133B4</li>
<li>Update Rollup - 28BC880E-0592-4CBF-8F95-C79B17911D5F</li>
<li>Service Pack - 68C5B0A3-D1A6-4553-AE49-01D3A7827828</li>
<li>Tools - B4832BD8-E735-4761-8DAF-37F882276DAB</li>
<li>Feature Pack - B54E7D24-7ADD-428F-8B75-90A396FA584F</li>
<li>Update - CD5FFD1E-E932-4E3A-BF74-18BF0B1BBD83</li>
<li>Driver - EBFC1FC5-71A4-4F7B-9ACA-3B9A503104A0</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Other/cannot defer</p></td>
<td style="vertical-align:top"><p>No deferral</p></td>
<td style="vertical-align:top"><p>No deferral</p></td>
<td style="vertical-align:top"><p>Any update category not specifically enumerated above falls into this category.</p>
<p>Definition Update - E0789628-CE08-4437-BE74-2495B842F43B</p></td>
</tr>
</tbody>
</table>

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-deferupgradeperiod"></a>**Update/DeferUpgradePeriod**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education.
>
> Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.
>
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#windows10version1607forupdatemanagement). You can continue to use DeferUpgradePeriod for Windows 10, version 1511 devices.


<p style="margin-left: 20px">Allows IT Admins to specify additional upgrade delays for up to 8 months.

<p style="margin-left: 20px">Supported values are 0-8, which refers to the number of months to defer upgrades.

<p style="margin-left: 20px">If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<p style="margin-left: 20px">If the "Allow Telemetry" policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-detectionfrequency"></a>**Update/DetectionFrequency**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the scan frequency from every 1 - 22 hours. Default is 22 hours.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-engagedrestartdeadline"></a>**Update/EngagedRestartDeadline**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/CheckMark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows the IT Admin to specify the deadline in days before automatically scheduling and executing a pending restart outside of active hours. The deadline can be set between 2 and 30 days from the time the restart becomes pending. If configured, the pending restart will transition from Auto-restart to Engaged restart (pending user schedule) to be automatically executed within the specified period.  If no deadline is specified or deadline is set to 0, the restart will not be automatically executed and will remain Engaged restart (pending user scheduling).

<p style="margin-left: 20px">Supported values are 2-30 days.

<p style="margin-left: 20px">The default value is 0 days (not specified).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-engagedrestartsnoozeschedule"></a>**Update/EngagedRestartSnoozeSchedule**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/CheckMark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows the IT Admin to control the number of days a user can snooze Engaged restart reminder notifications.

<p style="margin-left: 20px">Supported values are 1-3 days.

<p style="margin-left: 20px">The default value is 3 days.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-engagedrestarttransitionschedule"></a>**Update/EngagedRestartTransitionSchedule**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/CheckMark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows the IT Admin to control the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. The period can be set between 2 and 30 days from the time the restart becomes pending.

<p style="margin-left: 20px">Supported values are 2-30 days.

<p style="margin-left: 20px">The default value is 7 days.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-excludewudriversinqualityupdate"></a>**Update/ExcludeWUDriversInQualityUpdate**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education.
> Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows IT Admins to exclude Windows Update (WU) drivers during updates.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Allow Windows Update drivers.
-   1 – Exclude Windows Update drivers.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-fillemptycontenturls"></a>**Update/FillEmptyContentUrls**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in the April service release of Windows 10, version 1607. Allows Windows Update Agent to determine the download URL when it is missing from the metadata.  This scenario will occur when intranet update service stores the metadata files but the download contents are stored in the ISV file cache (specified as the <a href="#update-updateserviceurlalternate">alternate download URL</a>).

> [!NOTE]
> This setting should only be used in combination with an alternate download URL and configured to use ISV file cache.  This setting is used when the intranet update service does not provide download URLs in the update metadata for files which are available on the alternate download server.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Disabled.
-   1 – Enabled.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-ignoremoappdownloadlimit"></a>**Update/IgnoreMOAppDownloadLimit**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether to ignore the MO download limit (allow unlimited downloading) over a cellular network for apps and their updates. If lower-level limits (for example, mobile caps) are required, those limits are controlled by external policies. 

> [!WARNING]
> Setting this policy might cause devices to incur costs from MO operators.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Do not ignore MO download limit for apps and their updates.
-   1 – Ignore MO download limit (allow unlimited downloading) for apps and their updates.

<p style="margin-left: 20px">To validate this policy:

1.  Enable the policy ensure the device is on a cellular network.
2.  Run the scheduled task on your device to check for app updates in the background. For example, on a mobile device, run the following commands in TShell: 
      - `regd delete HKEY_USERS\S-1-5-21-2702878673-795188819-444038987-2781\software\microsoft\windows\currentversion\windowsupdate /v LastAutoAppUpdateSearchSuccessTime /f`

      - `exec-device schtasks.exe -arguments ""/run /tn """"\Microsoft\Windows\WindowsUpdate\Automatic App Update"""" /I""`

3.   Verify that any downloads that are above the download size limit will complete without being paused.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-ignoremoupdatedownloadlimit"></a>**Update/IgnoreMOUpdateDownloadLimit**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether to ignore the MO download limit (allow unlimited downloading) over a cellular network for OS updates. If lower-level limits (for example, mobile caps) are required, those limits are controlled by external policies. 

> [!WARNING]
> Setting this policy might cause devices to incur costs from MO operators.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Do not ignore MO download limit for OS updates.
-   1 – Ignore MO download limit (allow unlimited downloading) for OS updates.

<p style="margin-left: 20px">To validate this policy:

1.  Enable the policy and ensure the device is on a cellular network.
2.  Run the scheduled task on phone to check for OS updates in the background. For example, on a mobile device, run the following commands in TShell: 
      - `exec-device schtasks.exe -arguments ""/run /tn """"\Microsoft\Windows\WindowsUpdate\AUScheduledInstall"""" /I""`

3.   Verify that any downloads that are above the download size limit will complete without being paused.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-pausedeferrals"></a>**Update/PauseDeferrals**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise
>
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#windows10version1607forupdatemanagement). You can continue to use PauseDeferrals for Windows 10, version 1511 devices.


<p style="margin-left: 20px">Allows IT Admins to pause updates and upgrades for up to 5 weeks. Paused deferrals will be reset after 5 weeks.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Deferrals are not paused.
-   1 – Deferrals are paused.

<p style="margin-left: 20px">If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<p style="margin-left: 20px">If the "Allow Telemetry" policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-pausefeatureupdates"></a>**Update/PauseFeatureUpdates**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education.
<p style="margin-left: 20px">Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows IT Admins to pause Feature Updates for up to 60 days.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Feature Updates are not paused.
-   1 – Feature Updates are paused for 60 days or until value set to back to 0, whichever is sooner.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-PauseFeatureUpdatesStartTime"></a>**Update/PauseFeatureUpdatesStartTime**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the date and time when the IT admin wants to start pausing the Feature Updates.

<p style="margin-left: 20px">Value type is string. Supported operations are Add, Get, Delete, and Replace.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-pausequalityupdates"></a>**Update/PauseQualityUpdates**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows IT Admins to pause Quality Updates.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Quality Updates are not paused.
-   1 – Quality Updates are paused for 35 days or until value set back to 0, whichever is sooner.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-PauseQualityUpdatesStartTime"></a>**Update/PauseQualityUpdatesStartTime**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the date and time when the IT admin wants to start pausing the Quality Updates.

<p style="margin-left: 20px">Value type is string. Supported operations are Add, Get, Delete, and Replace.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-requiredeferupgrade"></a>**Update/RequireDeferUpgrade**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise
>
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#windows10version1607forupdatemanagement). You can continue to use RequireDeferUpgrade for Windows 10, version 1511 devices.


<p style="margin-left: 20px">Allows the IT admin to set a device to CBB train.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – User gets upgrades from Current Branch.
-   1 – User gets upgrades from Current Branch for Business.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-requireupdateapproval"></a>**Update/RequireUpdateApproval**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

<br>

> [!NOTE]
> If you previously used the **Update/PhoneUpdateRestrictions** policy in previous versions of Windows, it has been deprecated. Please use this policy instead.


<p style="margin-left: 20px">Allows the IT admin to restrict the updates that are installed on a device to only those on an update approval list. It enables IT to accept the End User License Agreement (EULA) associated with the approved update on behalf of the end-user. EULAs are approved once an update is approved.

<p style="margin-left: 20px">Supported operations are Get and Replace.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not configured. The device installs all applicable updates.
-   1 – The device only installs updates that are both applicable and on the Approved Updates list. Set this policy to 1 if IT wants to control the deployment of updates on devices, such as when testing is required prior to deployment.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-scheduleimminentrestartwarning"></a>**Update/ScheduleImminentRestartWarning**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/CheckMark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows the IT Admin to specify the period for auto-restart imminent warning notifications.

<p style="margin-left: 20px">Supported values are 15, 30, or 60 (minutes).

<p style="margin-left: 20px">The default value is 15 (minutes).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-schedulerestartwarning"></a>**Update/ScheduleRestartWarning**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/CheckMark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows the IT Admin to specify the period for auto-restart warning reminder notifications.

<p style="margin-left: 20px">Supported values are 2, 4, 8, 12, or 24 (hours).

<p style="margin-left: 20px">The default value is 4 (hours).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-scheduledinstallday"></a>**Update/ScheduledInstallDay**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Enables the IT admin to schedule the day of the update installation.

<p style="margin-left: 20px">The data type is a integer.

<p style="margin-left: 20px">Supported operations are Add, Delete, Get, and Replace.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Every day
-   1 – Sunday
-   2 – Monday
-   3 – Tuesday
-   4 – Wednesday
-   5 – Thursday
-   6 – Friday
-   7 – Saturday

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-scheduledinstalleveryweek"></a>**Update/ScheduledInstallEveryWeek**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, the next major update. Enables the IT admin to schedule the update installation on the every week. Value type is integer. Supported values:
<ul>
<li>0 - no update in the schedule</li>
<li>1 - update is scheduled every week</li>
</ul>

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-scheduledinstallfirstweek"></a>**Update/ScheduledInstallFirstWeek**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, the next major update. Enables the IT admin to schedule the update installation on the first week of the month. Value type is integer. Supported values:
<ul>
<li>0 - no update in the schedule</li>
<li>1 - update is scheduled every first week of the month</li>
</ul>

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-scheduledinstallfourthweek"></a>**Update/ScheduledInstallFourthWeek**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, the next major update. Enables the IT admin to schedule the update installation on the fourth week of the month. Value type is integer. Supported values:
<ul>
<li>0 - no update in the schedule</li>
<li>1 - update is scheduled every fourth week of the month</li>
</ul>

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-scheduledinstallsecondweek"></a>**Update/ScheduledInstallSecondWeek**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, the next major update. Enables the IT admin to schedule the update installation on the second week of the month. Value type is integer. Supported values:
<ul>
<li>0 - no update in the schedule</li>
<li>1 - update is scheduled every second week of the month</li>
</ul>

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-scheduledinstallthirdweek"></a>**Update/ScheduledInstallThirdWeek**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, the next major update. Enables the IT admin to schedule the update installation on the third week of the month. Value type is integer. Supported values:
<ul>
<li>0 - no update in the schedule</li>
<li>1 - update is scheduled every third week of the month</li>
</ul>

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-scheduledinstalltime"></a>**Update/ScheduledInstallTime**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Enables the IT admin to schedule the time of the update installation.

<p style="margin-left: 20px">The data type is a integer.

<p style="margin-left: 20px">Supported operations are Add, Delete, Get, and Replace.

<p style="margin-left: 20px">Supported values are 0-23, where 0 = 12 AM and 23 = 11 PM.

<p style="margin-left: 20px">The default value is 3.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-setautorestartnotificationdisable"></a>**Update/SetAutoRestartNotificationDisable**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark"/><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark"/></td>
	<td><img src="images/CheckMark.png" alt="check mark"/><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows the IT Admin to disable auto-restart notifications for update installations.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Enabled
-   1 – Disabled

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-setedurestart"></a>**Update/SetEDURestart**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. For devices in a cart, this policy skips the check for battery level to ensure that the reboot will happen at ScheduledInstallTime.

<p style="margin-left: 20px">The following list shows the supported values:

- 0 - not configured
- 1 - configured

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-updateserviceurl"></a>**Update/UpdateServiceUrl**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

> [!Important]  
> Starting in Windows 10, version 1703 this policy is not supported in Windows 10 Mobile Enteprise and IoT Mobile.

<p style="margin-left: 20px">Allows the device to check for updates from a WSUS server instead of Microsoft Update. This is useful for on-premise MDMs that need to update devices that cannot connect to the Internet.

<p style="margin-left: 20px">Supported operations are Get and Replace.

<p style="margin-left: 20px">The following list shows the supported values:

-   Not configured. The device checks for updates from Microsoft Update.
-   Set to a URL, such as `http://abcd-srv:8530`. The device checks for updates from the WSUS server at the specified URL.

Example

``` syntax
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Meta>
                    <Format>chr</Format>
                    <Type>text/plain</Type>
                </Meta>
                <Target>
                    <LocURI>./Vendor/MSFT/Policy/Config/Update/UpdateServiceUrl</LocURI>
                </Target>
                <Data>http://abcd-srv:8530</Data>
            </Item>
        </Replace>
```

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="update-updateserviceurlalternate"></a>**Update/UpdateServiceUrlAlternate**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> **Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education.

<p style="margin-left: 20px">Added in the January service release of Windows 10, version 1607. Specifies an alternate intranet server to host updates from Microsoft Update. You can then use this update service to automatically update computers on your network.

<p style="margin-left: 20px">This setting lets you specify a server on your network to function as an internal update service. The Automatic Updates client will search this service for updates that apply to the computers on your network.

<p style="margin-left: 20px">To use this setting, you must set two server name values: the server from which the Automatic Updates client detects and downloads updates, and the server to which updated workstations upload statistics. You can set both values to be the same server.  An optional server name value can be specified to configure Windows Update agent, and download updates from an alternate download server instead of WSUS Server.

<p style="margin-left: 20px">Value type is string and the default value is an empty string, "". If the setting is not configured, and if Automatic Updates is not disabled by policy or user preference, the Automatic Updates client connects directly to the Windows Update site on the Internet.

> [!Note]  
> If the "Configure Automatic Updates" Group Policy is disabled, then this policy has no effect.  
> If the "Alternate Download Server" Group Policy is not set, it will use the WSUS server by default to download updates.  
> This policy is not supported on Windows RT. Setting this policy will not have any effect on Windows RT PCs.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wifi-allowwifihotspotreporting"></a>**WiFi/AllowWiFiHotSpotReporting**  

<!--StartDescription-->
<p style="margin-left: 20px">This policy has been deprecated.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wifi-allowautoconnecttowifisensehotspots"></a>**Wifi/AllowAutoConnectToWiFiSenseHotspots**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allow or disallow the device to automatically connect to Wi-Fi hotspots.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wifi-allowinternetsharing"></a>**Wifi/AllowInternetSharing**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allow or disallow internet sharing.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Do not allow the use of Internet Sharing.
-   1 (default) – Allow the use of Internet Sharing.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wifi-allowmanualwificonfiguration"></a>**Wifi/AllowManualWiFiConfiguration**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allow or disallow connecting to Wi-Fi outside of MDM server-installed networks.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – No Wi-Fi connection outside of MDM provisioned network is allowed.
-   1 (default) – Adding new network SSIDs beyond the already MDM provisioned ones is allowed.

<p style="margin-left: 20px">Most restricted value is 0.

> [!NOTE]
> Setting this policy deletes any previously installed user-configured and Wi-Fi sense Wi-Fi profiles from the device. Certain Wi-Fi profiles that are not user configured nor Wi-Fi sense might not be deleted. In addition, not all non-MDM profiles are completely deleted.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wifi-allowwifi"></a>**Wifi/AllowWiFi**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allow or disallow WiFi connection.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – WiFi connection is not allowed.
-   1 (default) – WiFi connection is allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wifi-allowwifidirect"></a>**Wifi/AllowWiFiDirect**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allow WiFi Direct connection..

- 0 - WiFi Direct connection is not allowed.
- 1 - WiFi Direct connection is allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wifi-wlanscanmode"></a>**Wifi/WLANScanMode**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allow an enterprise to control the WLAN scanning behavior and how aggressively devices should be actively scanning for Wi-Fi networks to get devices connected.

<p style="margin-left: 20px">Supported values are 0-500, where 100 = normal scan frequency and 500 = low scan frequency.

<p style="margin-left: 20px">The default value is 0.

<p style="margin-left: 20px">Supported operations are Add, Delete, Get, and Replace.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="windowsinkworkspace-allowsuggestedappsinwindowsinkworkspace"></a>**WindowsInkWorkspace/AllowSuggestedAppsInWindowsInkWorkspace**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Show recommended app suggestions in the ink workspace.

<p style="margin-left: 20px">Value type is bool. The following list shows the supported values:

-   0 - app suggestions are not allowed.
-   1 (default) -allow app suggestions.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="windowsinkworkspace-allowwindowsinkworkspace"></a>**WindowsInkWorkspace/AllowWindowsInkWorkspace**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether to allow the user to access the ink workspace.

<p style="margin-left: 20px">Value type is int. The following list shows the supported values:

-   0 - access to ink workspace is disabled. The feature is turned off.
-   1 - ink workspace is enabled (feature is turned on), but the user cannot access it above the lock screen.
-   2 (default) - ink workspace is enabled (feature is turned on), and the user is allowed to use it above the lock screen.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="windowslogon-disablelockscreenappnotifications"></a>**WindowsLogon/DisableLockScreenAppNotifications**  

<!--StartDescription-->
This policy setting allows you to prevent app notifications from appearing on the lock screen.

If you enable this policy setting, no app notifications are displayed on the lock screen.

If you disable or do not configure this policy setting, users can choose which apps display notifications on the lock screen.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off app notifications on the lock screen*
-   GP name: *DisableLockScreenAppNotifications*
-   GP path: *System/Logon*
-   GP ADMX file name: *logon.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="windowslogon-dontdisplaynetworkselectionui"></a>**WindowsLogon/DontDisplayNetworkSelectionUI**  

<!--StartDescription-->
This policy setting allows you to control whether anyone can interact with available networks UI on the logon screen.

If you enable this policy setting, the PC's network connectivity state cannot be changed without signing into Windows.

If you disable or don't configure this policy setting, any user can disconnect the PC from the network or can connect the PC to other available networks without signing into Windows.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Do not display network selection UI*
-   GP name: *DontDisplayNetworkSelectionUI*
-   GP path: *System/Logon*
-   GP ADMX file name: *logon.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="windowslogon-hidefastuserswitching"></a>**WindowsLogon/HideFastUserSwitching**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy setting allows you to hide the Switch account button on the sign-in screen, Start, and the Task Manager. If you enable this policy setting, the Switch account button is hidden from the user who is attempting to sign-in or is signed in to the computer that has this policy applied. If you disable or do not configure this policy setting, the Switch account button is accessible to the user in the three locations.

<p style="margin-left: 20px">Value type is bool. The following list shows the supported values:

-   0 (default) - Diabled (visible).
-   1 - Enabled (hidden).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Verify that the Switch account button in Start is hidden.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wirelessdisplay-allowprojectionfrompc"></a>**WirelessDisplay/AllowProjectionFromPC**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy allows you to turn off projection from a PC.  

- 0 - your PC cannot discover or project to other devices.
- 1 - your PC can discover and project to other devices

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wirelessdisplay-allowprojectionfrompcoverinfrastructure"></a>**WirelessDisplay/AllowProjectionFromPCOverInfrastructure**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy allows you to turn off projection from a PC over infrastructure.  

- 0 - your PC cannot discover or project to other infrastructure devices, although it is possible to discover and project over WiFi Direct.
- 1 - your PC can discover and project to other devices over infrastructure.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wirelessdisplay-allowprojectiontopc"></a>**WirelessDisplay/AllowProjectionToPC**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allow or disallow turning off the projection to a PC.

<p style="margin-left: 20px">If you set it to 0 (zero), your PC is not discoverable and you cannot project to it. If you set it to 1, your PC is discoverable and you can project to it above the lock screen. The user has an option to turn it always on or always off except for manual launch. In PCs that support Miracast, after the policy is applied you can verify the setting from the user interface in **Settings** &gt; **System** &gt; **Projecting to this PC**.

<p style="margin-left: 20px">Value type is integer. Valid value:

-   0 - projection to PC is not allowed. Always off and the user cannot enable it.
-   1 (default) - projection to PC is allowed. Enabled only above the lock screen.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wirelessdisplay-Allowprojectiontopcoverinfrastructure"></a>**WirelessDisplay/AllowProjectionToPCOverInfrastructure**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy setting allows you to turn off projection to a PC over infrastructure.  

- 0 - your PC is not discoverable and other devices cannot project to it over infrastructure, although it is possible to project to it over WiFi Direct.
- 1 - your PC is discoverable and other devices can project to it over infrastructure.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wirelessdisplay-allowuserinputfromwirelessdisplayreceiver"></a>**WirelessDisplay/AllowUserInputFromWirelessDisplayReceiver**  

<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wirelessdisplay-requirepinforpairing"></a>**WirelessDisplay/RequirePinForPairing**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>MobileEnterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allow or disallow requirement for a PIN for pairing.

<p style="margin-left: 20px">If you turn this on, the pairing ceremony for new devices will always require a PIN. If you turn this off or do not configure it, a PIN is not required for pairing. In PCs that support Miracast, after the policy is applied you can verify the setting from the user interface in **Settings** &gt; **System** &gt; **Projecting to this PC**.

<p style="margin-left: 20px">Value type is integer. Valid value:

-   0 (default) - PIN is not required.
-   1 - PIN is required.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.

<!--EndPolicies-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>Policies Supported by IoT Core  

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
-   [System/AllowFontProviders](#system-allowfontproviders)  
-   [Search/AllowSearchToUseLocation](#search-allowsearchtouselocation)
-   [Security/RequireDeviceEncryption](#security-requiredeviceencryption)
-   [Settings/AllowDateTime](#settings-allowdatetime)
-   [Settings/AllowVPN](#settings-allowvpn)
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
-   [ConfigOperations/ADMXInstall](#configoperations-admxinstall)  
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
-   [Defender/AllowIntrusionPreventionSystem](#defender-allowintrusionpreventionsystem)
-   [Defender/AllowIOAVProtection](#defender-allowioavprotection)
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
-   [DeviceGuard/AllowKernelControlFlowGuard](#deviceguard-allowkernelcontrolflowguard)  
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
-   [TimeLanguageSettings/Set24HourClock](#timelanguagesettings-set24hourclock)  
-   [TimeLanguageSettings/SetCountry](#timelanguagesettings-setcountry)  
-   [TimeLanguageSettings/SetLanguage](#timelanguagesettings-setlanguage)  
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

    <Base64EncodedImage>iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAYAAAB5fY51AAAABGdBTUEAALGPC/xhBQAAEmpJREFUeAHt3X3MvXVdB3BufgaCBkGI4pAySWeIvzKhLKayNq00W1YiUc6HOW096cw1XSVNR82Ws1iscvoHWWzkKFu13NpqCEONBFLQ0XwENJX8iQI+Ab/eH7lvOZz7+p7H6zzd9+u7fTjnfK/v0/U6v++Xc677Otd1xBESAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgsCKBrRX1q9s9KnD48OHHZNfOT3xf4p7ETYnLtra2DuVRIkCAwOoFslA9PPHniW8khtOXk/H6xIHVj9QICBDY1wJZiH488fHEuHRVCpy2r7HsPAECqxHI4nNk4g2JexKTpv9LweesZsR6JUBgXwpk0Tk58W+TrlJD5e7L6wsTjqHuy389dprAEgWy0JyduDUxb/qHNPCwJQ5dVwQI7CeBLDAvTnxt3pVqoP71eV5/WZQIECDQj0AWla3EmwcWmj6ffiaNHexnpFohQGBfC2QxeWji8glWqCtHlPnsiG216UuJZ+5raDtPgMB8AllETkhcnRiV6iD6GxMHRhR6VLa9d8T22lRfNZ8/34jVJkBgXwpk8Xhk4obEqHR3Nv7iDlCrYG3PtqMSf9sqs53/zTyet9OeRwIECIwVyKJxWuLm7UWk9VDHnp462Fir4E6ZbK9jYX/UKredX+d1/fJOHY8ECBBoCmSxeGzi09uLR+vhg9lw6nAjrcId5X41ZUedcHpvtlu0huG8JkDgAYEsEo9JfCIxKl2RjZ3nT7UqPdDDA89S9mcSd7XqJL++Hj7vgRqeESBAYFsgi8MpiXFfAy9JmeYZ6tnWmVrIKfyjiTs6K92f+dU8nNuqL58AgX0okEXhxMRN968Rzf9ePI6mVXNUvdQ5J3Fnq27y62oPPzSqDdsIENgnAlkMjk6MOocqmw+/dRKOKtiVxtVNnXMT9RfHVqqfAj16XDu2EyCwhwWyCNRf7S5rrRLb+W+ZlKDVziT1U/fZiVE/+/nPbD9mkraUIUBgDwpkARh3isEfT7Pbaa8zTdpGKteB+K6LAO60+3d50jyGNmk/yhEgsGECmfjn76wCjcc/nXaXGu0cnqadtHFeos6eb6XfmaY9ZQkQ2HCBrARPTHyltSIk/+8TR067m632Zmjnd1ttJb8Wsx+btk3lCRDYQIFM9rr++qi/CL4/22c6VpR6nWkWpjQ06mc8dWLribO0qw4BAhskMGYh+Fi2nzzr7qRuZ5qlvTRUV4l4X2eD92f+4yztqkOAwIYIZJ6POm5VZ53/wDy70lpcZm0z7dXJrHUeViu9eNa21SNAYI0FMuNPTtzemvnJf9G8w2+1PU+7afOaVrvJ/2LikfO0ry4BAmsokIn9rhET/+19DLnV/qxtp71aZEed5lBdXj5r++oRILCGApnUL6iZ3Uj/nfyZDrIP72qj/alOaxhsM+39fqvNoXw/kh6E85zApgpkYh+bqGtXdaX69HJmX/vW1UHlzdJ+qtVVSodPvagrOHSlTyTzqFn6UYcAgTUSyEQe9SnljX0OtWslqbxZ+ki1ug3YYPp8Xoy6EcarZulHHQIE1kQgE7wuczz8KWVnEfhonhzd51B3Gh5+nLaP1H/NcBt5/euJYxJ16kVX+kIyj5u2L+UJEFgTgUzgv+ia2cmrs8Wf3vcwG31N9QkrbbwoUVccHUx1PtZDarx5/KnBDUPPe/3E2LeP9ggQaAhkIp+eaF2G+G8a1ebKHlo8vv1y0kZT4eUdYz6UvO8dbCOv/ynRleq6WicNlvWcAIENEMjEvbhrRievDlyfvohdaPQ39hNW6j0k8Wcd9b+evGcPjzV5T+kou5P1uuHyXhMgsMYCmbnHJ1rHrv5qUUPfWTGGH0f1l7JPTtRNLYZTLaw/16qbbcMH5Xfq35In3/r62KornwCBNRLIhH31zuwdeqwL5O26201fQx/q69svu9rPxpMSb0l0nRhai+3Ic6uy/WCijsV1pV/o6lMeAQJrJpDZe2Si9Ze0v1zkcLtWjsob7DMvj0u8IdH6jeAns+3Jg3Vaz1Puw4mudGWrjnwCBNZIILP3WV0zeDtvoTdzaPVbPNl2VuJtiTow3kp/nQ0nTMqZsh9oNZT8J0zajnIECKxIIBP1ksYk/sCih9Tot7Lr5z+jUn2q+tlpxpfyj0jUca5WcmXSaUCVJbBsgczcuqnEbY0Z/NJFj6fR76jsz2Xjbyam/llN6lw4quFsu2bR+6t9AgTmEMgkPbsxieuGpJ13a56ju11VG313ZdcVQ1+XePiuRibISL06YN86BpZN30p1QP6UCZpThACBVQhkgl50/1zd9d9/XcZ4dvX64Iw6ifXdieckpr5e/OD4U//yxGBqfTV8xWA9zwkQWCOBzOBrB2fxwPPfWsYwB/obfvrSZPRyBnraedlw43n9Hx15lXXFMvZbHwQITCmQyVlni9d5Vl3p+6dsbqbiXR1X3kyNdVRKUz+ZGD5vq/5SWDdh7Uqf7GhGFgECqxbIbH1S14xN3qeWNbZG/70sWGn75xN13fnBVK8fnzg6UcfputLEp0ksy0k/swnMdRxhti7VWqDAwUbbH2rkb0R2VqA6EfaiDPZdiWMHBn1fnv/K1tbWzYmv5/lHBrYNPl3ouWeDHXm+WAEL1mJ9l916a8G6cdkD6au/LFT16ehfEl0/aP6NLFSDx6g+3OjXgtWA2bRsC9amvWOjx3tGY/NNjfy1zc5CdSDxsgywFqHhqzXcm7xXZrG6ZGgHWgtWb5eAHurPyyUL+EX7ksEX3F3rWE3rq9KChzNb81mo6kfPf5joukfiXcm/IIvVuztab32SfERHWVkbKGDB2sA3bcSQv7Ox7VAjf22ys0jVbefPT7wk8cONgX2wymSxurmx/X8b+a2FvFFc9roKWLDW9Z2ZbVytBevO2ZpbbK0sUielh7pM8wWJ5yZaP8+5O9v+JPGmLFbfyGMrfbmx4bsa+bI3TMCCtWFv2Jjhtn7mUl+jVpqyOD0lA6ivZo9NPG07xp0bVseq3pG4MAvVZ/I4Lt3RKOATVgNGNoGVCWRRqMsJd6Wl/Y+pq/MZ8uoGFFcknjgNZsrXuVhd6avTtKPs+gos7R/y+hLsqZF9M3vT9bXq6OTfswF7Wn/NvDTxznyium0DxmuISxawYC0ZfMHdfT7t11eu4fTdyVj518LhQeV1LbDXJa5KXJZF6to8zpOOa1T+YiNf9oYJWLA27A0bM9zPZXvXglUHtz89pu6iN9df+G5PfCFxQ+KaxLVZpL6Wx77S8Y2GLFgNmE3LtmBt2js2erz1Casr1YK10pSFqXWqQp/jan3CWvvTOvpE2MttOdN9b7279QmrK3WdgNlVbtPzHtfYAZ+wGjCblm3B2rR3bPR4W1/7njq62p7Z+oONPflsI1/2hglYsDbsDRsz3Ksb25fxdazR9VKzDzZ6e38jXzYBAqsSyAlIxyaGL25X5yXVeU2PWsa4qrOutOi+02ddgqZuaNGVnrDo/rW/HAGfsJbjvJRecmC7fsLyXx2d1fv8wo78vZT1jOzMyR07VMevWr897Cgua50FLFjr/O7MNrb3Nqr9UiN/r2Sf19iR92Uh7+WKp432ZRMgMKtAvg89res70XZe6xjPrN3tqtfqe1fBHjPSZ30Vvr3R9yt77EpTBAj0LZCJe11j8v5z330Nt9fod6GfcNLn6xv93pn81hUshofuNQECqxDIJH15YwJXdh3rWVhq9buoDtPfiYkvNfp926L61S4BAj0JZPI+bMQkvrG299TVrmYaC8fCPmGlv3e0+kz+fjn/bNf7IIPARglksv7eiIn8zkXtTKvPRfSXvl7S6i/571lEn9okQGABApmwRyU+OmJCv3oB3R7R6q/vvtLPWYm7G/3VzWTHXRyw7yFpjwCBeQQyac9tTOid7NfO035X3Z2Ghx+7ys6al7bPSdwx3MfA6z+YtW31CBBYoUAm8dsHJnLX04uS2dv5eF0dVF5fBGnquYnhuz9XFzvpI3ny0L760w4BAksUyOStywZftTObG49XJv97+hhWo/25F6y0e0zi4sR9rT6SX+dind7HfmiDAIEVCWQSn5T4n8SoVKcG/FriO+YZZquDOdt8VtoddTyuuq3jVufM04+6BAisiUAm8+MTtybGpY+lwAWJA7MMvdX4jG09Pe3Vp79xqX7w/YJZ+lCHAIE1FcikPjVxw7jZv739tjy+OXHmNLvTanvSNlK/xvjaxPWttoby65PhT0zavnIECGyQQCb3cYn3DE36cS/rpz6/nfiRRN2Bp5laDbUqpPyBxJmJVyT+PXFvYtL0qRR8Uqtt+XtPYGvv7ZI9GieQSV5/FazzsN6UmPYvanXn5esTdVG86xK3JOqWXHWj068k6uanXen4ZJ6SeHTi1ERdHfSsRN1gdZYz7y9NvVflSgyH8igRILDXBbJw1XGtqxOblG7JYH96r7839o8AgQ6BTP6txPMTH0qsc6qrib4mcUzHbsgiQGA/CWQhqEsMvzCxbp+46nSMWqhm+dq4n95C+0pgfwpkcTgj8dbEJKdBpFjv6VBavDTxzITjrPvzn2HnXvvH0Mkic0cgC0YdFH9e4hmJsxPHJvpOdSC/DuDX5Z3rIoNX5WD6PXmUCDxIwIL1IA4vRglk8ao7hR9M1KkEZyQelzgtUXfkOSFRi1nr39Rd2VZ/0aubvd6a+HjipsSNieuyQPV5y/o0Ke1FgdY/rr24r/ZpCQJZ1Dp/N5gFyb+1Jfjv9S56+5X+XoeyfwQIrF7AgrX698AICBCYUMCCNSGUYgQIrF7AgrX698AICBCYUMCCNSGUYgQIrF7AgrX698AICBCYUMCCNSGUYgQIrF7AgrX698AICBCYUMCCNSGUYgQIrF7AgrX698AICBCYUMCCNSGUYgQIrF7AgrX698AICBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQGDfCvw/BqwLpnvdxk0AAAAASUVORK5CYII=</Base64EncodedImage>

  </SecondaryTileAsset>

  <SecondaryTileAsset>

    <RelativeFilePath><![CDATA[PinnedTiles\30382655640\lowres.png]]></RelativeFilePath>

    <Base64EncodedImage>iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAYAAAB5fY51AAAABGdBTUEAALGPC/xhBQAAEmpJREFUeAHt3X3MvXVdB3BufgaCBkGI4pAySWeIvzKhLKayNq00W1YiUc6HOW096cw1XSVNR82Ws1iscvoHWWzkKFu13NpqCEONBFLQ0XwENJX8iQI+Ab/eH7lvOZz7+p7H6zzd9+u7fTjnfK/v0/U6v++Xc677Otd1xBESAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgsCKBrRX1q9s9KnD48OHHZNfOT3xf4p7ETYnLtra2DuVRIkCAwOoFslA9PPHniW8khtOXk/H6xIHVj9QICBDY1wJZiH488fHEuHRVCpy2r7HsPAECqxHI4nNk4g2JexKTpv9LweesZsR6JUBgXwpk0Tk58W+TrlJD5e7L6wsTjqHuy389dprAEgWy0JyduDUxb/qHNPCwJQ5dVwQI7CeBLDAvTnxt3pVqoP71eV5/WZQIECDQj0AWla3EmwcWmj6ffiaNHexnpFohQGBfC2QxeWji8glWqCtHlPnsiG216UuJZ+5raDtPgMB8AllETkhcnRiV6iD6GxMHRhR6VLa9d8T22lRfNZ8/34jVJkBgXwpk8Xhk4obEqHR3Nv7iDlCrYG3PtqMSf9sqs53/zTyet9OeRwIECIwVyKJxWuLm7UWk9VDHnp462Fir4E6ZbK9jYX/UKredX+d1/fJOHY8ECBBoCmSxeGzi09uLR+vhg9lw6nAjrcId5X41ZUedcHpvtlu0huG8JkDgAYEsEo9JfCIxKl2RjZ3nT7UqPdDDA89S9mcSd7XqJL++Hj7vgRqeESBAYFsgi8MpiXFfAy9JmeYZ6tnWmVrIKfyjiTs6K92f+dU8nNuqL58AgX0okEXhxMRN968Rzf9ePI6mVXNUvdQ5J3Fnq27y62oPPzSqDdsIENgnAlkMjk6MOocqmw+/dRKOKtiVxtVNnXMT9RfHVqqfAj16XDu2EyCwhwWyCNRf7S5rrRLb+W+ZlKDVziT1U/fZiVE/+/nPbD9mkraUIUBgDwpkARh3isEfT7Pbaa8zTdpGKteB+K6LAO60+3d50jyGNmk/yhEgsGECmfjn76wCjcc/nXaXGu0cnqadtHFeos6eb6XfmaY9ZQkQ2HCBrARPTHyltSIk/+8TR067m632Zmjnd1ttJb8Wsx+btk3lCRDYQIFM9rr++qi/CL4/22c6VpR6nWkWpjQ06mc8dWLribO0qw4BAhskMGYh+Fi2nzzr7qRuZ5qlvTRUV4l4X2eD92f+4yztqkOAwIYIZJ6POm5VZ53/wDy70lpcZm0z7dXJrHUeViu9eNa21SNAYI0FMuNPTtzemvnJf9G8w2+1PU+7afOaVrvJ/2LikfO0ry4BAmsokIn9rhET/+19DLnV/qxtp71aZEed5lBdXj5r++oRILCGApnUL6iZ3Uj/nfyZDrIP72qj/alOaxhsM+39fqvNoXw/kh6E85zApgpkYh+bqGtXdaX69HJmX/vW1UHlzdJ+qtVVSodPvagrOHSlTyTzqFn6UYcAgTUSyEQe9SnljX0OtWslqbxZ+ki1ug3YYPp8Xoy6EcarZulHHQIE1kQgE7wuczz8KWVnEfhonhzd51B3Gh5+nLaP1H/NcBt5/euJYxJ16kVX+kIyj5u2L+UJEFgTgUzgv+ia2cmrs8Wf3vcwG31N9QkrbbwoUVccHUx1PtZDarx5/KnBDUPPe/3E2LeP9ggQaAhkIp+eaF2G+G8a1ebKHlo8vv1y0kZT4eUdYz6UvO8dbCOv/ynRleq6WicNlvWcAIENEMjEvbhrRievDlyfvohdaPQ39hNW6j0k8Wcd9b+evGcPjzV5T+kou5P1uuHyXhMgsMYCmbnHJ1rHrv5qUUPfWTGGH0f1l7JPTtRNLYZTLaw/16qbbcMH5Xfq35In3/r62KornwCBNRLIhH31zuwdeqwL5O26201fQx/q69svu9rPxpMSb0l0nRhai+3Ic6uy/WCijsV1pV/o6lMeAQJrJpDZe2Si9Ze0v1zkcLtWjsob7DMvj0u8IdH6jeAns+3Jg3Vaz1Puw4mudGWrjnwCBNZIILP3WV0zeDtvoTdzaPVbPNl2VuJtiTow3kp/nQ0nTMqZsh9oNZT8J0zajnIECKxIIBP1ksYk/sCih9Tot7Lr5z+jUn2q+tlpxpfyj0jUca5WcmXSaUCVJbBsgczcuqnEbY0Z/NJFj6fR76jsz2Xjbyam/llN6lw4quFsu2bR+6t9AgTmEMgkPbsxieuGpJ13a56ju11VG313ZdcVQ1+XePiuRibISL06YN86BpZN30p1QP6UCZpThACBVQhkgl50/1zd9d9/XcZ4dvX64Iw6ifXdieckpr5e/OD4U//yxGBqfTV8xWA9zwkQWCOBzOBrB2fxwPPfWsYwB/obfvrSZPRyBnraedlw43n9Hx15lXXFMvZbHwQITCmQyVlni9d5Vl3p+6dsbqbiXR1X3kyNdVRKUz+ZGD5vq/5SWDdh7Uqf7GhGFgECqxbIbH1S14xN3qeWNbZG/70sWGn75xN13fnBVK8fnzg6UcfputLEp0ksy0k/swnMdRxhti7VWqDAwUbbH2rkb0R2VqA6EfaiDPZdiWMHBn1fnv/K1tbWzYmv5/lHBrYNPl3ouWeDHXm+WAEL1mJ9l916a8G6cdkD6au/LFT16ehfEl0/aP6NLFSDx6g+3OjXgtWA2bRsC9amvWOjx3tGY/NNjfy1zc5CdSDxsgywFqHhqzXcm7xXZrG6ZGgHWgtWb5eAHurPyyUL+EX7ksEX3F3rWE3rq9KChzNb81mo6kfPf5joukfiXcm/IIvVuztab32SfERHWVkbKGDB2sA3bcSQv7Ox7VAjf22ys0jVbefPT7wk8cONgX2wymSxurmx/X8b+a2FvFFc9roKWLDW9Z2ZbVytBevO2ZpbbK0sUielh7pM8wWJ5yZaP8+5O9v+JPGmLFbfyGMrfbmx4bsa+bI3TMCCtWFv2Jjhtn7mUl+jVpqyOD0lA6ivZo9NPG07xp0bVseq3pG4MAvVZ/I4Lt3RKOATVgNGNoGVCWRRqMsJd6Wl/Y+pq/MZ8uoGFFcknjgNZsrXuVhd6avTtKPs+gos7R/y+hLsqZF9M3vT9bXq6OTfswF7Wn/NvDTxznyium0DxmuISxawYC0ZfMHdfT7t11eu4fTdyVj518LhQeV1LbDXJa5KXJZF6to8zpOOa1T+YiNf9oYJWLA27A0bM9zPZXvXglUHtz89pu6iN9df+G5PfCFxQ+KaxLVZpL6Wx77S8Y2GLFgNmE3LtmBt2js2erz1Casr1YK10pSFqXWqQp/jan3CWvvTOvpE2MttOdN9b7279QmrK3WdgNlVbtPzHtfYAZ+wGjCblm3B2rR3bPR4W1/7njq62p7Z+oONPflsI1/2hglYsDbsDRsz3Ksb25fxdazR9VKzDzZ6e38jXzYBAqsSyAlIxyaGL25X5yXVeU2PWsa4qrOutOi+02ddgqZuaNGVnrDo/rW/HAGfsJbjvJRecmC7fsLyXx2d1fv8wo78vZT1jOzMyR07VMevWr897Cgua50FLFjr/O7MNrb3Nqr9UiN/r2Sf19iR92Uh7+WKp432ZRMgMKtAvg89res70XZe6xjPrN3tqtfqe1fBHjPSZ30Vvr3R9yt77EpTBAj0LZCJe11j8v5z330Nt9fod6GfcNLn6xv93pn81hUshofuNQECqxDIJH15YwJXdh3rWVhq9buoDtPfiYkvNfp926L61S4BAj0JZPI+bMQkvrG299TVrmYaC8fCPmGlv3e0+kz+fjn/bNf7IIPARglksv7eiIn8zkXtTKvPRfSXvl7S6i/571lEn9okQGABApmwRyU+OmJCv3oB3R7R6q/vvtLPWYm7G/3VzWTHXRyw7yFpjwCBeQQyac9tTOid7NfO035X3Z2Ghx+7ys6al7bPSdwx3MfA6z+YtW31CBBYoUAm8dsHJnLX04uS2dv5eF0dVF5fBGnquYnhuz9XFzvpI3ny0L760w4BAksUyOStywZftTObG49XJv97+hhWo/25F6y0e0zi4sR9rT6SX+dind7HfmiDAIEVCWQSn5T4n8SoVKcG/FriO+YZZquDOdt8VtoddTyuuq3jVufM04+6BAisiUAm8+MTtybGpY+lwAWJA7MMvdX4jG09Pe3Vp79xqX7w/YJZ+lCHAIE1FcikPjVxw7jZv739tjy+OXHmNLvTanvSNlK/xvjaxPWttoby65PhT0zavnIECGyQQCb3cYn3DE36cS/rpz6/nfiRRN2Bp5laDbUqpPyBxJmJVyT+PXFvYtL0qRR8Uqtt+XtPYGvv7ZI9GieQSV5/FazzsN6UmPYvanXn5esTdVG86xK3JOqWXHWj068k6uanXen4ZJ6SeHTi1ERdHfSsRN1gdZYz7y9NvVflSgyH8igRILDXBbJw1XGtqxOblG7JYH96r7839o8AgQ6BTP6txPMTH0qsc6qrib4mcUzHbsgiQGA/CWQhqEsMvzCxbp+46nSMWqhm+dq4n95C+0pgfwpkcTgj8dbEJKdBpFjv6VBavDTxzITjrPvzn2HnXvvH0Mkic0cgC0YdFH9e4hmJsxPHJvpOdSC/DuDX5Z3rIoNX5WD6PXmUCDxIwIL1IA4vRglk8ao7hR9M1KkEZyQelzgtUXfkOSFRi1nr39Rd2VZ/0aubvd6a+HjipsSNieuyQPV5y/o0Ke1FgdY/rr24r/ZpCQJZ1Dp/N5gFyb+1Jfjv9S56+5X+XoeyfwQIrF7AgrX698AICBCYUMCCNSGUYgQIrF7AgrX698AICBCYUMCCNSGUYgQIrF7AgrX698AICBCYUMCCNSGUYgQIrF7AgrX698AICBCYUMCCNSGUYgQIrF7AgrX698AICBCYUMCCNSGUYgQIrF7AgrX698AICBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQGDfCvw/BqwLpnvdxk0AAAAASUVORK5CYII=</Base64EncodedImage>

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