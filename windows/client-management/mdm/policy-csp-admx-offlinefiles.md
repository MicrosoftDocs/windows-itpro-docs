---
title: Policy CSP - ADMX_OfflineFiles
description: Policy CSP - ADMX_OfflineFiles
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/21/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_OfflineFiles
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_OfflineFiles policies  

<dl>
  <dd>
    <a href="#admx-offlinefiles-pol-alwayspinsubfolders">ADMX_OfflineFiles/Pol_AlwaysPinSubFolders</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-assignedofflinefiles-1">ADMX_OfflineFiles/Pol_AssignedOfflineFiles_1</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-assignedofflinefiles-2">ADMX_OfflineFiles/Pol_AssignedOfflineFiles_2</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-backgroundsyncsettings">ADMX_OfflineFiles/Pol_BackgroundSyncSettings</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-cachesize">ADMX_OfflineFiles/Pol_CacheSize</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-customgoofflineactions-1">ADMX_OfflineFiles/Pol_CustomGoOfflineActions_1</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-customgoofflineactions-2">ADMX_OfflineFiles/Pol_CustomGoOfflineActions_2</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-defcachesize">ADMX_OfflineFiles/Pol_DefCacheSize</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-enabled">ADMX_OfflineFiles/Pol_Enabled</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-encryptofflinefiles">ADMX_OfflineFiles/Pol_EncryptOfflineFiles</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-eventlogginglevel-1">ADMX_OfflineFiles/Pol_EventLoggingLevel_1</a>
  </dd>
    <dd>
    <a href="#admx-offlinefiles-pol-eventlogginglevel-2">ADMX_OfflineFiles/Pol_EventLoggingLevel_2</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-exclusionlistsettings">ADMX_OfflineFiles/Pol_ExclusionListSettings</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-extexclusionlist">ADMX_OfflineFiles/Pol_ExtExclusionList</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-goofflineaction-1">ADMX_OfflineFiles/Pol_GoOfflineAction_1</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-goofflineaction-2">ADMX_OfflineFiles/Pol_GoOfflineAction_2</a>
  </dd>
    <dd>
    <a href="#admx-offlinefiles-pol-nocacheviewer-1">ADMX_OfflineFiles/Pol_NoCacheViewer_1</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-nocacheviewer-2">ADMX_OfflineFiles/Pol_NoCacheViewer_2</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-noconfigcache-1">ADMX_OfflineFiles/Pol_NoConfigCache_1</a>
  </dd>
    <dd>
    <a href="#admx-offlinefiles-pol-noconfigcache-2">ADMX_OfflineFiles/Pol_NoConfigCache_2</a>
  </dd>
    <dd>
    <a href="#admx-offlinefiles-pol-nomakeavailableoffline-1">ADMX_OfflineFiles/Pol_NoMakeAvailableOffline_1</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-nomakeavailableoffline-2">ADMX_OfflineFiles/Pol_NoMakeAvailableOffline_2</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-nopinfiles-1">ADMX_OfflineFiles/Pol_NoPinFiles_1</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-nopinfiles-2">ADMX_OfflineFiles/Pol_NoPinFiles_2</a>
  </dd>
    <dd>
    <a href="#admx-offlinefiles-pol-noreminders-1">ADMX_OfflineFiles/Pol_NoReminders_1</a>
  </dd>
    <dd>
    <a href="#admx-offlinefiles-pol-noreminders-2">ADMX_OfflineFiles/Pol_NoReminders_2</a>
  </dd>
    <dd>
    <a href="#admx-offlinefiles-pol-onlinecachingsettings">ADMX_OfflineFiles/Pol_OnlineCachingSettings</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-purgeatlogoff">ADMX_OfflineFiles/Pol_PurgeAtLogoff</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-quickadimpin">ADMX_OfflineFiles/Pol_QuickAdimPin</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-reminderfreq-1">ADMX_OfflineFiles/Pol_ReminderFreq_1</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-reminderfreq-2">ADMX_OfflineFiles/Pol_ReminderFreq_2</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-reminderinittimeout-1">ADMX_OfflineFiles/Pol_ReminderInitTimeout_1</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-reminderinittimeout-2">ADMX_OfflineFiles/Pol_ReminderInitTimeout_2</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-remindertimeout-1">ADMX_OfflineFiles/Pol_ReminderTimeout_1</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-remindertimeout-2">ADMX_OfflineFiles/Pol_ReminderTimeout_2</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-slowlinksettings">ADMX_OfflineFiles/Pol_SlowLinkSettings</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-slowlinkspeed">ADMX_OfflineFiles/Pol_SlowLinkSpeed</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-syncatlogoff-1">ADMX_OfflineFiles/Pol_SyncAtLogoff_1</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-syncatlogoff-2">ADMX_OfflineFiles/Pol_SyncAtLogoff_2</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-syncatlogon-1">ADMX_OfflineFiles/Pol_SyncAtLogon_1</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-syncatlogon-2">ADMX_OfflineFiles/Pol_SyncAtLogon_2</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-syncatsuspend-1">ADMX_OfflineFiles/Pol_SyncAtSuspend_1</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-syncatsuspend-2">ADMX_OfflineFiles/Pol_SyncAtSuspend_2</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-synconcostednetwork">ADMX_OfflineFiles/Pol_SyncOnCostedNetwork</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-workofflinedisabled-1">ADMX_OfflineFiles/Pol_WorkOfflineDisabled_1</a>
  </dd>
  <dd>
    <a href="#admx-offlinefiles-pol-workofflinedisabled-2">ADMX_OfflineFiles/Pol_WorkOfflineDisabled_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-alwayspinsubfolders"></a>**ADMX_OfflineFiles/Pol_AlwaysPinSubFolders**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting makes subfolders available offline whenever their parent folder is made available offline.

This setting automatically extends the "make available offline" setting to all new and existing subfolders of a folder. Users do not have the option of excluding subfolders.

If you enable this setting, when you make a folder available offline, all folders within that folder are also made available offline. Also, new folders that you create within a folder that is available offline are made available offline when the parent folder is synchronized.

If you disable this setting or do not configure it, the system asks users whether they want subfolders to be made available offline when they make a parent folder available offline.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Subfolders always available offline*
-   GP name: *Pol_AlwaysPinSubFolders*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-assignedofflinefiles-1"></a>**ADMX_OfflineFiles/Pol_AssignedOfflineFiles_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting lists network files and folders that are always available for offline use. This ensures that the specified files and folders are available offline to users of the computer.

If you enable this policy setting, the files you enter are always available offline to users of the computer. To specify a file or folder, click Show. In the Show Contents dialog box in the Value Name column, type the fully qualified UNC path to the file or folder. Leave the Value column field blank.

If you disable this policy setting, the list of files or folders made always available offline (including those inherited from lower precedence GPOs) is deleted and no files or folders are made available for offline use by Group Policy (though users can still specify their own files and folders for offline use).

If you do not configure this policy setting, no files or folders are made available for offline use by Group Policy.

> [!NOTE]
> This setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy settings will be combined and all specified files will be available for offline use.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify administratively assigned Offline Files*
-   GP name: *Pol_AssignedOfflineFiles_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-assignedofflinefiles-2"></a>**ADMX_OfflineFiles/Pol_AssignedOfflineFiles_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting lists network files and folders that are always available for offline use. This ensures that the specified files and folders are available offline to users of the computer.

If you enable this policy setting, the files you enter are always available offline to users of the computer. To specify a file or folder, click Show. In the Show Contents dialog box in the Value Name column, type the fully qualified UNC path to the file or folder. Leave the Value column field blank.

If you disable this policy setting, the list of files or folders made always available offline (including those inherited from lower precedence GPOs) is deleted and no files or folders are made available for offline use by Group Policy (though users can still specify their own files and folders for offline use).

If you do not configure this policy setting, no files or folders are made available for offline use by Group Policy.

> [!NOTE]
> This setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy settings will be combined and all specified files will be available for offline use.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify administratively assigned Offline Files*
-   GP name: *Pol_AssignedOfflineFiles_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-backgroundsyncsettings"></a>**ADMX_OfflineFiles/Pol_BackgroundSyncSettings**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls when background synchronization occurs while operating in slow-link mode, and applies to any user who logs onto the specified machine while this policy is in effect. To control slow-link mode, use the "Configure slow-link mode" policy setting.

If you enable this policy setting, you can control when Windows synchronizes in the background while operating in slow-link mode. Use  the 'Sync Interval' and 'Sync Variance' values to override the default sync interval and variance settings. Use 'Blockout Start Time' and 'Blockout Duration' to set a period of time where background sync is disabled. Use the 'Maximum Allowed Time Without A Sync' value to ensure that all  network folders on the machine are synchronized with the server on a regular basis.

You can also configure Background Sync for network shares that are in user selected Work Offline mode. This mode is in effect when a user selects the Work Offline button for a specific share. When selected, all configured settings will apply to shares in user selected Work Offline mode as well.

If you disable or do not configure this policy setting, Windows performs a background sync of offline folders in the slow-link mode at a default interval with the start of the sync varying between 0 and 60 additional minutes. In Windows 7 and Windows Server 2008 R2, the default sync interval is 360 minutes. In Windows 8 and Windows Server 2012, the default sync interval is 120 minutes.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Background Sync*
-   GP name: *Pol_BackgroundSyncSettings*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-cachesize"></a>**ADMX_OfflineFiles/Pol_CacheSize**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting limits the amount of disk space that can be used to store offline files. This includes the space used by automatically cached files and files that are specifically made available offline. Files can be automatically cached if the user accesses a file on an automatic caching network share.

This setting also disables the ability to adjust, through the Offline Files control panel applet, the disk space limits on the Offline Files cache. This prevents users from trying to change the option while a policy setting controls it.

If you enable this policy setting, you can specify the disk space limit (in megabytes) for offline files and also specify how much of that disk space can be used by automatically cached files.

If you disable this policy setting, the system limits the space that offline files occupy to 25 percent of the total space on the drive where the Offline Files cache is located.  The limit for automatically cached files is 100 percent of the total disk space limit.

If you do not configure this policy setting, the system limits the space that offline files occupy to 25 percent of the total space on the drive where the Offline Files cache is located. The limit for automatically cached files is 100 percent of the total disk space limit.  However, the users can change these values using the Offline Files control applet.

If you enable this setting and specify a total size limit greater than the size of the drive hosting the Offline Files cache, and that drive is the system drive, the total size limit is automatically adjusted downward to 75 percent of the size of the drive.  If the cache is located on a drive other than the system drive, the limit is automatically adjusted downward to 100 percent of the size of the drive.

If you enable this setting and specify a total size limit less than the amount of space currently used by the Offline Files cache, the total size limit is automatically adjusted upward to the amount of space currently used by offline files.  The cache is then considered full.

If you enable this setting and specify an auto-cached space limit greater than the total size limit, the auto-cached limit is automatically adjusted downward to equal the total size limit.

This setting replaces the Default Cache Size setting used by pre-Windows Vista systems.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Limit disk space used by Offline Files*
-   GP name: *Pol_CacheSize*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-customgoofflineactions-1"></a>**ADMX_OfflineFiles/Pol_CustomGoOfflineActions_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether network files remain available if the computer is suddenly disconnected from the server hosting the files.

This setting also disables the "When a network connection is lost" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

If you enable this setting, you can use the "Action" box to specify how computers in the group respond.

- "Work offline" indicates that the computer can use local copies of network files while the server is inaccessible.

- "Never go offline" indicates that network files are not available while the server is inaccessible.

If you disable this setting or select the "Work offline" option, users can work offline if disconnected.

If you do not configure this setting, users can work offline by default, but they can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer  Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To configure this setting without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, click Advanced, and then select an option in the "When a network connection is lost" section.

Also, see the "Non-default server disconnect actions" setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Action on server disconnect*
-   GP name: *Pol_CustomGoOfflineActions_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-customgoofflineactions-2"></a>**ADMX_OfflineFiles/Pol_CustomGoOfflineActions_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether network files remain available if the computer is suddenly disconnected from the server hosting the files.

This setting also disables the "When a network connection is lost" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

If you enable this setting, you can use the "Action" box to specify how computers in the group respond.

- "Work offline" indicates that the computer can use local copies of network files while the server is inaccessible.

- "Never go offline" indicates that network files are not available while the server is inaccessible.

If you disable this setting or select the "Work offline" option, users can work offline if disconnected.

If you do not configure this setting, users can work offline by default, but they can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer  Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To configure this setting without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, click Advanced, and then select an option in the "When a network connection is lost" section.

Also, see the "Non-default server disconnect actions" setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Action on server disconnect*
-   GP name: *Pol_CustomGoOfflineActions_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-defcachesize"></a>**ADMX_OfflineFiles/Pol_DefCacheSize**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Limits the percentage of the computer's disk space that can be used to store automatically cached offline files.

This setting also disables the "Amount of disk space to use for temporary offline files" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

Automatic caching can be set on any network share. When a user opens a file on the share, the system automatically stores a copy of the file on the user's computer.

This setting does not limit the disk space available for files that user's make available offline manually.

If you enable this setting, you can specify an automatic-cache disk space limit.

If you disable this setting, the system limits the space that automatically cached files occupy to 10 percent of the space on the system drive.

If you do not configure this setting, disk space for automatically cached files is limited to 10 percent of the system drive by default, but users can change it.

> [!TIP]
> To change the amount of disk space used for automatic caching without specifying a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then use the slider bar associated with the "Amount of disk space to use for temporary offline files" option.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Default cache size*
-   GP name: *Pol_DefCacheSize*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-enabled"></a>**ADMX_OfflineFiles/Pol_Enabled**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build.This policy setting determines whether the Offline Files feature is enabled. Offline Files saves a copy of network files on the user's computer for use when the computer is not connected to the network.

If you enable this policy setting, Offline Files is enabled and users cannot disable it.

If you disable this policy setting, Offline Files is disabled and users cannot enable it.

If you do not configure this policy setting, Offline Files is enabled on Windows client computers, and disabled on computers running Windows Server, unless changed by the user.

> [!NOTE]
> Changes to this policy setting do not take effect until the affected computer is restarted.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Allow or Disallow use of the Offline Files feature*
-   GP name: *Pol_Enabled*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-encryptofflinefiles"></a>**ADMX_OfflineFiles/Pol_EncryptOfflineFiles**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether offline files are encrypted.

Offline files are locally cached copies of files from a network share. Encrypting this cache reduces the likelihood that a user could access files from the Offline Files cache without proper permissions.

If you enable this policy setting, all files in the Offline Files cache are encrypted.  This includes existing files as well as files added later. The cached copy on the local computer is affected, but the associated network copy is not. The user cannot unencrypt Offline Files through the user interface.

If you disable this policy setting, all files in the Offline Files cache are unencrypted. This includes existing files as well as files added later, even if the files were stored using NTFS encryption or BitLocker Drive Encryption while on the server. The cached copy on the local computer is affected, but the associated network copy is not. The user cannot encrypt Offline Files through the user interface.

If you do not configure this policy setting, encryption of the Offline Files cache is controlled by the user through the user interface. The current cache state is retained, and if the cache is only partially encrypted, the operation completes so that it is fully encrypted. The cache does not return to the unencrypted state. The user must be an administrator on the local computer to encrypt or decrypt the Offline Files cache.

> [!NOTE]
> By default, this cache is protected on NTFS partitions by ACLs.

This setting is applied at user logon. If this setting is changed after user logon then user logoff and logon is required for this setting to take effect.
<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Encrypt the Offline Files cache*
-   GP name: *Pol_EncryptOfflineFiles*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-eventlogginglevel-1"></a>**ADMX_OfflineFiles/Pol_EventLoggingLevel_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines which events the Offline Files feature records in the event log.

Offline Files records events in the Application log in Event Viewer when it detects errors. By default, Offline Files records an event only when the offline files storage cache is corrupted. However, you can use this setting to specify additional events you want Offline Files to record.

To use this setting, in the "Enter" box, select the number corresponding to the events you want the system to log. The levels are cumulative; that is, each level includes the events in all preceding levels.

- "0" records an error when the offline storage cache is corrupted.

- "1" also records an event when the server hosting the offline file is disconnected from the network.

- "2" also records events when the local computer is connected and disconnected from the network.

- "3" also records an event when the server hosting the offline file is reconnected to the network.

> [!NOTE]
> This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Event logging level*
-   GP name: *Pol_EventLoggingLevel_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-eventlogginglevel-2"></a>**ADMX_OfflineFiles/Pol_EventLoggingLevel_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines which events the Offline Files feature records in the event log.

Offline Files records events in the Application log in Event Viewer when it detects errors. By default, Offline Files records an event only when the offline files storage cache is corrupted. However, you can use this setting to specify additional events you want Offline Files to record.

To use this setting, in the "Enter" box, select the number corresponding to the events you want the system to log. The levels are cumulative; that is, each level includes the events in all preceding levels.

- "0" records an error when the offline storage cache is corrupted.

- "1" also records an event when the server hosting the offline file is disconnected from the network.

- "2" also records events when the local computer is connected and disconnected from the network.

- "3" also records an event when the server hosting the offline file is reconnected to the network.

> [!NOTE]
> This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Event logging level*
-   GP name: *Pol_EventLoggingLevel_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-exclusionlistsettings"></a>**ADMX_OfflineFiles/Pol_ExclusionListSettings**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting enables administrators to block certain file types from being created in the folders that have been made available offline.

If you enable this policy setting, a user will be unable to create files with the specified file extensions in any of the folders that have been made available offline.

If you disable or do not configure this policy setting, a user can create a file of any type in the folders that have been made available offline.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Enable file screens*
-   GP name: *Pol_ExclusionListSettings*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-extexclusionlist"></a>**ADMX_OfflineFiles/Pol_ExtExclusionList**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Lists types of files that cannot be used offline.

This setting lets you exclude certain types of files from automatic and manual caching for offline use. The system does not cache files of the type specified in this setting even when they reside on a network share configured for automatic caching. Also, if users try to make a file of this type available offline, the operation will fail and the following message will be displayed in the Synchronization Manager progress dialog box: "Files of this type cannot be made available offline."

This setting is designed to protect files that cannot be separated, such as database components.

To use this setting, type the file name extension in the "Extensions" box. To type more than one extension, separate the extensions with a semicolon (;).

> [!NOTE]
> To make changes to this setting effective, you must log off and log on again.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Files not cached*
-   GP name: *Pol_ExtExclusionList*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-goofflineaction-1"></a>**ADMX_OfflineFiles/Pol_GoOfflineAction_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether network files remain available if the computer is suddenly disconnected from the server hosting the files.

This setting also disables the "When a network connection is lost" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

If you enable this setting, you can use the "Action" box to specify how computers in the group respond.

- "Work offline" indicates that the computer can use local copies of network files while the server is inaccessible.

- "Never go offline" indicates that network files are not available while the server is inaccessible.

If you disable this setting or select the "Work offline" option, users can work offline if disconnected.

If you do not configure this setting, users can work offline by default, but they can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer  Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To configure this setting without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, click Advanced, and then select an option in the "When a network connection is lost" section.

Also, see the "Non-default server disconnect actions" setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Action on server disconnect*
-   GP name: *Pol_GoOfflineAction_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-goofflineaction-2"></a>**ADMX_OfflineFiles/Pol_GoOfflineAction_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether network files remain available if the computer is suddenly disconnected from the server hosting the files.

This setting also disables the "When a network connection is lost" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

If you enable this setting, you can use the "Action" box to specify how computers in the group respond.

- "Work offline" indicates that the computer can use local copies of network files while the server is inaccessible.

- "Never go offline" indicates that network files are not available while the server is inaccessible.

If you disable this setting or select the "Work offline" option, users can work offline if disconnected.

If you do not configure this setting, users can work offline by default, but they can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer  Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To configure this setting without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, click Advanced, and then select an option in the "When a network connection is lost" section.

Also, see the "Non-default server disconnect actions" setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Action on server disconnect*
-   GP name: *Pol_GoOfflineAction_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-nocacheviewer-1"></a>**ADMX_OfflineFiles/Pol_NoCacheViewer_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting disables the Offline Files folder.

This setting disables the "View Files" button on the Offline Files tab. As a result, users cannot use the Offline Files folder to view or open copies of network files stored on their computer. Also, they cannot use the folder to view characteristics of offline files, such as their server status, type, or location.

This setting does not prevent users from working offline or from saving local copies of files available offline. Also, it does not prevent them from using other programs, such as Windows Explorer, to view their offline files.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To view the Offline Files Folder, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then click "View Files."

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prevent use of Offline Files folder*
-   GP name: *Pol_NoCacheViewer_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-nocacheviewer-2"></a>**ADMX_OfflineFiles/Pol_NoCacheViewer_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting disables the Offline Files folder.

This setting disables the "View Files" button on the Offline Files tab. As a result, users cannot use the Offline Files folder to view or open copies of network files stored on their computer. Also, they cannot use the folder to view characteristics of offline files, such as their server status, type, or location.

This setting does not prevent users from working offline or from saving local copies of files available offline. Also, it does not prevent them from using other programs, such as Windows Explorer, to view their offline files.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To view the Offline Files Folder, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then click "View Files."

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prevent use of Offline Files folder*
-   GP name: *Pol_NoCacheViewer_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-noconfigcache-1"></a>**ADMX_OfflineFiles/Pol_NoConfigCache_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting prevents users from enabling, disabling, or changing the configuration of Offline Files.

This setting removes the Offline Files tab from the Folder Options dialog box. It also removes the Settings item from the Offline Files context menu and disables the Settings button on the Offline Files Status dialog box. As a result, users cannot view or change the options on the Offline Files tab or Offline Files dialog box.

This is a comprehensive setting that locks down the configuration you establish by using other settings in this folder.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> This setting provides a quick method for locking down the default settings for Offline Files. To accept the defaults, just enable this setting. You do not have to disable any other settings in this folder.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit user configuration of Offline Files*
-   GP name: *Pol_NoConfigCache_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-noconfigcache-2"></a>**ADMX_OfflineFiles/Pol_NoConfigCache_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting prevents users from enabling, disabling, or changing the configuration of Offline Files.

This setting removes the Offline Files tab from the Folder Options dialog box. It also removes the Settings item from the Offline Files context menu and disables the Settings button on the Offline Files Status dialog box. As a result, users cannot view or change the options on the Offline Files tab or Offline Files dialog box.

This is a comprehensive setting that locks down the configuration you establish by using other settings in this folder.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> This setting provides a quick method for locking down the default settings for Offline Files. To accept the defaults, just enable this setting. You do not have to disable any other settings in this folder.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit user configuration of Offline Files*
-   GP name: *Pol_NoConfigCache_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-nomakeavailableoffline-1"></a>**ADMX_OfflineFiles/Pol_NoMakeAvailableOffline_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting prevents users from making network files and folders available offline.

If you enable this policy setting, users cannot designate files to be saved on their computer for offline use. However, Windows will still cache local copies of files that reside on network shares designated for automatic caching.

If you disable or do not configure this policy setting, users can manually specify files and folders that they want to make available offline.

> [!NOTE]
> - This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy setting in Computer Configuration takes precedence.
> - The "Make Available Offline" command is called "Always available offline" on computers running Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, or Windows Vista.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Remove "Make Available Offline" command*
-   GP name: *Pol_NoMakeAvailableOffline_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-nomakeavailableoffline-2"></a>**ADMX_OfflineFiles/Pol_NoMakeAvailableOffline_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting prevents users from making network files and folders available offline.

If you enable this policy setting, users cannot designate files to be saved on their computer for offline use. However, Windows will still cache local copies of files that reside on network shares designated for automatic caching.

If you disable or do not configure this policy setting, users can manually specify files and folders that they want to make available offline.

> [!NOTE]
> - This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy setting in Computer Configuration takes precedence.
> - The "Make Available Offline" command is called "Always available offline" on computers running Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, or Windows Vista.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Remove "Make Available Offline" command*
-   GP name: *Pol_NoMakeAvailableOffline_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-nopinfiles-1"></a>**ADMX_OfflineFiles/Pol_NoPinFiles_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to manage a list of files and folders for which you want to block the "Make Available Offline" command.

If you enable this policy setting, the "Make Available Offline" command is not available for the files and folders that you list. To specify these files and folders, click Show. In the Show Contents dialog box, in the Value Name column box, type the fully qualified UNC path to the file or folder. Leave the Value column field blank.

If you disable this policy setting, the list of files and folders is deleted, including any lists inherited from lower precedence GPOs, and the "Make Available Offline" command is displayed for all files and folders.

If you do not configure this policy setting, the "Make Available Offline" command is available for all files and folders.

> [!NOTE]
> - This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy settings are combined, and the "Make Available Offline" command is unavailable for all specified files and folders.
> - The "Make Available Offline" command is called "Always available offline" on computers running Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, or Windows Vista.
> - This policy setting does not prevent files from being automatically cached if the network share is configured for "Automatic Caching." It only affects the display of the "Make Available Offline" command in File Explorer.
> - If the "Remove 'Make Available Offline' command" policy setting is enabled, this setting has no effect.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Remove "Make Available Offline" for these files and folders*
-   GP name: *Pol_NoPinFiles_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-nopinfiles-2"></a>**ADMX_OfflineFiles/Pol_NoPinFiles_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to manage a list of files and folders for which you want to block the "Make Available Offline" command.

If you enable this policy setting, the "Make Available Offline" command is not available for the files and folders that you list. To specify these files and folders, click Show. In the Show Contents dialog box, in the Value Name column box, type the fully qualified UNC path to the file or folder. Leave the Value column field blank.

If you disable this policy setting, the list of files and folders is deleted, including any lists inherited from lower precedence GPOs, and the "Make Available Offline" command is displayed for all files and folders.

If you do not configure this policy setting, the "Make Available Offline" command is available for all files and folders.

> [!NOTE]
> - This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy settings are combined, and the "Make Available Offline" command is unavailable for all specified files and folders.
> - The "Make Available Offline" command is called "Always available offline" on computers running Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, or Windows Vista.
> - This policy setting does not prevent files from being automatically cached if the network share is configured for "Automatic Caching." It only affects the display of the "Make Available Offline" command in File Explorer.
> - If the "Remove 'Make Available Offline' command" policy setting is enabled, this setting has no effect.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Remove "Make Available Offline" for these files and folders*
-   GP name: *Pol_NoPinFiles_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-noreminders-1"></a>**ADMX_OfflineFiles/Pol_NoReminders_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Hides or displays reminder balloons, and prevents users from changing the setting.

Reminder balloons appear above the Offline Files icon in the notification area to notify users when they have lost the connection to a networked file and are working on a local copy of the file. Users can then decide how to proceed.

If you enable this setting, the system hides the reminder balloons, and prevents users from displaying them.

If you disable the setting, the system displays the reminder balloons and prevents users from hiding them.

If this setting is not configured, reminder balloons are displayed by default when you enable offline files, but users can change the setting.

To prevent users from changing the setting while a setting is in effect, the system disables the "Enable reminders" option on the Offline Files tab

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To display or hide reminder balloons without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, and then click the Offline Files tab. This setting corresponds to the "Enable reminders" check box.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off reminder balloons*
-   GP name: *Pol_NoReminders_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-noreminders-2"></a>**ADMX_OfflineFiles/Pol_NoReminders_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Hides or displays reminder balloons, and prevents users from changing the setting.

Reminder balloons appear above the Offline Files icon in the notification area to notify users when they have lost the connection to a networked file and are working on a local copy of the file. Users can then decide how to proceed.

If you enable this setting, the system hides the reminder balloons, and prevents users from displaying them.

If you disable the setting, the system displays the reminder balloons and prevents users from hiding them.

If this setting is not configured, reminder balloons are displayed by default when you enable offline files, but users can change the setting.

To prevent users from changing the setting while a setting is in effect, the system disables the "Enable reminders" option on the Offline Files tab

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To display or hide reminder balloons without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, and then click the Offline Files tab. This setting corresponds to the "Enable reminders" check box.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off reminder balloons*
-   GP name: *Pol_NoReminders_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-onlinecachingsettings"></a>**ADMX_OfflineFiles/Pol_OnlineCachingSettings**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether files read from file shares over a slow network are transparently cached in the Offline Files cache for future reads. When a user tries to access a file that has been transparently cached, Windows reads from the cached copy after verifying its integrity. This improves end-user response times and decreases bandwidth consumption over WAN links.

The cached files are temporary and are not available to the user when offline. The cached files are not kept in sync with the version on the server, and the most current version from the server is always available for subsequent reads.

This policy setting is triggered by the configured round trip network latency value. We recommend using this policy  setting when the network connection to the server is slow. For example, you can configure a value of 60 ms as the round trip latency of the network above which files should be transparently cached in the Offline Files cache. If the round trip latency of the network is less than 60ms, reads to remote files will not be cached.

If you enable this policy setting, transparent caching is enabled and configurable.

If you disable or do not configure this policy setting, remote files will be not be transparently cached on client computers.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Enable Transparent Caching*
-   GP name: *Pol_OnlineCachingSettings*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-alwayspinsubfolders"></a>**ADMX_OfflineFiles/Pol_AlwaysPinSubFolders**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting makes subfolders available offline whenever their parent folder is made available offline.

This setting automatically extends the "make available offline" setting to all new and existing subfolders of a folder. Users do not have the option of excluding subfolders.

If you enable this setting, when you make a folder available offline, all folders within that folder are also made available offline. Also, new folders that you create within a folder that is available offline are made available offline when the parent folder is synchronized.

If you disable this setting or do not configure it, the system asks users whether they want subfolders to be made available offline when they make a parent folder available offline.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Subfolders always available offline*
-   GP name: *Pol_AlwaysPinSubFolders*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-purgeatlogoff"></a>**ADMX_OfflineFiles/Pol_PurgeAtLogoff**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting deletes local copies of the user's offline files when the user logs off.

This setting specifies that automatically and manually cached offline files are retained only while the user is logged on to the computer. When the user logs off, the system deletes all local copies of offline files.

If you disable this setting or do not configure it, automatically and manually cached copies are retained on the user's computer for later offline use.

> [!CAUTION]
> Files are not synchronized before they are deleted. Any changes to local files since the last synchronization are lost.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *At logoff, delete local copy of user’s offline files*
-   GP name: *Pol_PurgeAtLogoff*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-quickadimpin"></a>**ADMX_OfflineFiles/Pol_QuickAdimPin**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to turn on economical application of administratively assigned Offline Files.

If you enable or do not configure this policy setting, only new files and folders in administratively assigned folders are synchronized at logon. Files and folders that are already available offline are skipped and are synchronized later.

If you disable this policy setting, all administratively assigned folders are synchronized at logon.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on economical application of administratively assigned Offline Files*
-   GP name: *Pol_QuickAdimPin*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-reminderfreq-1"></a>**ADMX_OfflineFiles/Pol_ReminderFreq_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines how often reminder balloon updates appear.

If you enable this setting, you can select how often reminder balloons updates appear and also prevent users from changing this setting.

Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they are updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the update interval.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To set reminder balloon frequency without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, and then click the Offline Files tab. This setting corresponds to the "Display reminder balloons every ... minutes" option.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Reminder balloon frequency*
-   GP name: *Pol_ReminderFreq_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-reminderfreq-2"></a>**ADMX_OfflineFiles/Pol_ReminderFreq_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines how often reminder balloon updates appear.

If you enable this setting, you can select how often reminder balloons updates appear and also prevent users from changing this setting.

Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they are updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the update interval.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To set reminder balloon frequency without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, and then click the Offline Files tab. This setting corresponds to the "Display reminder balloons every ... minutes" option.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Reminder balloon frequency*
-   GP name: *Pol_ReminderFreq_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-reminderinittimeout-1"></a>**ADMX_OfflineFiles/Pol_ReminderInitTimeout_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines how long the first reminder balloon for a network status change is displayed.

Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they are updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the duration of the first reminder.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Initial reminder balloon lifetime*
-   GP name: *Pol_ReminderInitTimeout_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-reminderinittimeout-2"></a>**ADMX_OfflineFiles/Pol_ReminderInitTimeout_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines how long the first reminder balloon for a network status change is displayed.

Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they are updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the duration of the first reminder.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Initial reminder balloon lifetime*
-   GP name: *Pol_ReminderInitTimeout_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-remindertimeout-1"></a>**ADMX_OfflineFiles/Pol_ReminderTimeout_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines how long updated reminder balloons are displayed.

Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they are updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the duration of the update reminder.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Reminder balloon lifetime*
-   GP name: *Pol_ReminderTimeout_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-remindertimeout-2"></a>**ADMX_OfflineFiles/Pol_ReminderTimeout_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines how long updated reminder balloons are displayed.

Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they are updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the duration of the update reminder.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Reminder balloon lifetime*
-   GP name: *Pol_ReminderTimeout_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-slowlinksettings"></a>**ADMX_OfflineFiles/Pol_SlowLinkSettings**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls the network latency and throughput thresholds that will cause a client computers to transition files and folders that are already available offline to the slow-link mode so that the user's access to this data is not degraded due to network slowness. When Offline Files is operating in the slow-link mode, all network file requests are satisfied from the Offline Files cache. This is similar to a user working offline.

If you enable this policy setting, Offline Files uses the slow-link mode if the network throughput between the client and the server is below (slower than) the Throughput threshold parameter, or if the round-trip network latency is above (slower than) the Latency threshold parameter.

You can configure the slow-link mode by specifying threshold values for Throughput (in bits per second) and/or Latency (in milliseconds) for specific UNC paths. We recommend that you always specify a value for Latency, since the round-trip network latency detection is faster. You can use wildcard characters (*) for specifying UNC paths. If you do not specify a Latency or Throughput value, computers running Windows Vista or Windows Server 2008 will not use the slow-link mode.

If you do not configure this policy setting, computers running Windows Vista or Windows Server 2008 will not transition a shared folder to the slow-link mode. Computers running Windows 7 or Windows Server 2008 R2 will use the default latency value of 80 milliseconds when transitioning a folder to the slow-link mode. Computers running Windows 8 or Windows Server 2012 will use the default latency value of 35 milliseconds when transitioning a folder to the slow-link mode. To avoid extra charges on cell phone or broadband plans, it may be necessary to configure the latency threshold to be lower than the round-trip network latency.

In Windows Vista or Windows Server 2008, once transitioned to slow-link mode, users will continue to operate in slow-link mode until the user clicks the Work Online button on the toolbar in Windows Explorer. Data will only be synchronized to the server if the user manually initiates synchronization by using Sync Center.

In Windows 7, Windows Server 2008 R2, Windows 8 or Windows Server 2012, when operating in slow-link mode Offline Files synchronizes the user's files in the background at regular intervals, or as configured by the "Configure Background Sync" policy. While in slow-link mode, Windows periodically checks the connection to the folder and brings the folder back online if network speeds improve.

In Windows 8 or Windows Server 2012, set the Latency threshold to 1ms to keep users always working offline in slow-link mode.

If you disable this policy setting, computers will not use the slow-link mode.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure slow-link mode*
-   GP name: *Pol_SlowLinkSettings*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-slowlinkspeed"></a>**ADMX_OfflineFiles/Pol_SlowLinkSpeed**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures the threshold value at which Offline Files considers a network connection to be "slow". Any network speed below this value is considered to be slow.

When a connection is considered slow, Offline Files automatically adjust its behavior to avoid excessive synchronization traffic and will not automatically reconnect to a server when the presence of a server is detected.

If you enable this setting, you can configure the threshold value that will be used to determine a slow network connection.

If this setting is disabled or not configured, the default threshold value of 64,000 bps is used to determine if a network connection is considered to be slow.

> [!NOTE]
> Use the following formula when entering the slow link value: [ bps / 100]. For example, if you want to set a threshold value of 128,000 bps, enter a value of 1280.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Slow link speed*
-   GP name: *Pol_SlowLinkSpeed*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-syncatlogoff-1"></a>**ADMX_OfflineFiles/Pol_SyncAtLogoff_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether offline files are fully synchronized when users log off.

This setting also disables the "Synchronize all offline files before logging off" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

If you enable this setting, offline files are fully synchronized. Full synchronization ensures that offline files are complete and current.

If you disable this setting, the system only performs a quick synchronization. Quick synchronization ensures that files are complete, but does not ensure that they are current.

If you do not configure this setting, the system performs a quick synchronization by default, but users can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To change the synchronization method without changing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then select the "Synchronize all offline files before logging off" option.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Synchronize all offline files before logging off*
-   GP name: *Pol_SyncAtLogoff_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-syncatlogoff-2"></a>**ADMX_OfflineFiles/Pol_SyncAtLogoff_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether offline files are fully synchronized when users log off.

This setting also disables the "Synchronize all offline files before logging off" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

If you enable this setting, offline files are fully synchronized. Full synchronization ensures that offline files are complete and current.

If you disable this setting, the system only performs a quick synchronization. Quick synchronization ensures that files are complete, but does not ensure that they are current.

If you do not configure this setting, the system performs a quick synchronization by default, but users can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To change the synchronization method without changing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then select the "Synchronize all offline files before logging off" option.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Synchronize all offline files before logging off*
-   GP name: *Pol_SyncAtLogoff_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-syncatlogon-1"></a>**ADMX_OfflineFiles/Pol_SyncAtLogon_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether offline files are fully synchronized when users log on.

This setting also disables the "Synchronize all offline files before logging on" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

If you enable this setting, offline files are fully synchronized at logon. Full synchronization ensures that offline files are complete and current. Enabling this setting automatically enables logon synchronization in Synchronization Manager.

If this setting is disabled and Synchronization Manager is configured for logon synchronization, the system performs only a quick synchronization. Quick synchronization ensures that files are complete but does not ensure that they are current.

If you do not configure this setting and Synchronization Manager is configured for logon synchronization, the system performs a quick synchronization by default, but users can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To change the synchronization method without setting a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then select the "Synchronize all offline files before logging on" option.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Synchronize all offline files when logging on*
-   GP name: *Pol_SyncAtLogon_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-syncatlogon-2"></a>**ADMX_OfflineFiles/Pol_SyncAtLogon_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether offline files are fully synchronized when users log on.

This setting also disables the "Synchronize all offline files before logging on" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

If you enable this setting, offline files are fully synchronized at logon. Full synchronization ensures that offline files are complete and current. Enabling this setting automatically enables logon synchronization in Synchronization Manager.

If this setting is disabled and Synchronization Manager is configured for logon synchronization, the system performs only a quick synchronization. Quick synchronization ensures that files are complete but does not ensure that they are current.

If you do not configure this setting and Synchronization Manager is configured for logon synchronization, the system performs a quick synchronization by default, but users can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To change the synchronization method without setting a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then select the "Synchronize all offline files before logging on" option.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Synchronize all offline files when logging on*
-   GP name: *Pol_SyncAtLogon_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-syncatsuspend-1"></a>**ADMX_OfflineFiles/Pol_SyncAtSuspend_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether offline files are synchronized before a computer is suspended.

If you enable this setting, offline files are synchronized whenever the computer is suspended. Setting the synchronization action to "Quick" ensures only that all files in the cache are complete. Setting the synchronization action to "Full" ensures that all cached files and folders are up-to-date with the most current version.

If you disable or do not configuring this setting, files are not synchronized when the computer is suspended.

> [!NOTE]
> If the computer is suspended by closing the display on a portable computer, files are not synchronized. If multiple users are logged on to the computer at the time the computer is suspended, a synchronization is not performed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Synchronize offline files before suspend*
-   GP name: *Pol_SyncAtSuspend_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-syncatsuspend-2"></a>**ADMX_OfflineFiles/Pol_SyncAtSuspend_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether offline files are synchronized before a computer is suspended.

If you enable this setting, offline files are synchronized whenever the computer is suspended. Setting the synchronization action to "Quick" ensures only that all files in the cache are complete. Setting the synchronization action to "Full" ensures that all cached files and folders are up-to-date with the most current version.

If you disable or do not configuring this setting, files are not synchronized when the computer is suspended.

> [!NOTE]
> If the computer is suspended by closing the display on a portable computer, files are not synchronized. If multiple users are logged on to the computer at the time the computer is suspended, a synchronization is not performed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Synchronize offline files before suspend*
-   GP name: *Pol_SyncAtSuspend_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-synconcostednetwork"></a>**ADMX_OfflineFiles/Pol_SyncOnCostedNetwork**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether offline files are synchronized in the background when it could result in extra charges on cell phone or broadband plans.

If you enable this setting, synchronization can occur in the background when the user's network is roaming, near, or over the plan's data limit.  This may result in extra charges on cell phone or broadband plans.

If this setting is disabled or not configured, synchronization will not run in the background on network folders when the user's network is roaming, near, or over the plan's data limit. The network folder must also be in "slow-link" mode, as specified by the "Configure slow-link mode" policy to avoid network usage.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Enable file synchronization on costed networks*
-   GP name: *Pol_SyncOnCostedNetwork*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-workofflinedisabled-1"></a>**ADMX_OfflineFiles/Pol_WorkOfflineDisabled_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting removes the "Work offline" command from Explorer, preventing users from manually changing whether Offline Files is in online mode or offline mode.

If you enable this policy setting, the "Work offline" command is not displayed in File Explorer.

If you disable or do not configure this policy setting, the "Work offline" command is displayed in File Explorer.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Remove "Work offline" command*
-   GP name: *Pol_WorkOfflineDisabled_1*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-offlinefiles-pol-workofflinedisabled-2"></a>**ADMX_OfflineFiles/Pol_WorkOfflineDisabled_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting removes the "Work offline" command from Explorer, preventing users from manually changing whether Offline Files is in online mode or offline mode.

If you enable this policy setting, the "Work offline" command is not displayed in File Explorer.

If you disable or do not configure this policy setting, the "Work offline" command is displayed in File Explorer.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Remove "Work offline" command*
-   GP name: *Pol_WorkOfflineDisabled_2*
-   GP path: *Network\Offline Files*
-   GP ADMX file name: *OfflineFiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607
- 2 - Available in Windows 10, version 1703
- 3 - Available in Windows 10, version 1709
- 4 - Available in Windows 10, version 1803
- 5 - Available in Windows 10, version 1809
- 6 - Available in Windows 10, version 1903
- 7 - Available in Windows 10, version 1909
- 8 - Available in Windows 10, version 2004
- 9 - Available in Windows 10, version 20H2

<!--/Policies-->

