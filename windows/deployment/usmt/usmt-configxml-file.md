---
title: Config.xml File (Windows 10)
description: Config.xml File
ms.assetid: 9dc98e76-5155-4641-bcb3-81915db538e8
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Config.xml File


## Config.xml File


The Config.xml file is an optional User State Migration Tool (USMT) 10.0 file that you can create using the **/genconfig** option with the ScanState.exe tool. If you want to include all of the default components, and do not want to change the default store-creation or profile-migration behavior, you do not need to create a Config.xml file.

However, if you are satisfied with the default migration behavior defined in the MigApp.xml, MigUser.xml and MigDocs.xml files, but you want to exclude certain components, you can create and modify a Config.xml file and leave the other .xml files unchanged. For example, you must create and modify the Config.xml file if you want to exclude any of the operating-system settings that are migrated. It is necessary to create and modify this file if you want to change any of the default store-creation or profile-migration behavior.

The Config.xml file has a different format than the other migration .xml files, because it does not contain any migration rules. It contains only a list of the operating-system components, applications, user documents that can be migrated, as well as user-profile policy and error-control policy. For this reason, excluding components using the Config.xml file is easier than modifying the migration .xml files, because you do not need to be familiar with the migration rules and syntax. However, you cannot use wildcard characters in this file.

For more information about using the Config.xml file with other migration files, such as the MigDocs.xml and MigApps.xml files, see [Understanding Migration XML Files](understanding-migration-xml-files.md).

**Note**  
To exclude a component from the Config.xml file, set the **migrate** value to **"no"**. Deleting the XML tag for the component from the Config.xml file will not exclude the component from your migration.

 

## In This Topic


In USMT there are new migration policies that can be configured in the Config.xml file. For example, you can configure additional **&lt;ErrorControl&gt;**, **&lt;ProfileControl&gt;**, and **&lt;HardLinkStoreControl&gt;** options. The following elements and parameters are for use in the Config.xml file only.

[&lt;Policies&gt;](#bkmk-policies)

[&lt;ErrorControl&gt;](#bkmk-errorcontrol)

[&lt;fatal&gt;](#bkmk-fatal)

[&lt;fileError&gt;](#bkmk-fileerror)

[&lt;nonfatal&gt;](#bkmk-nonfatal)

[&lt;registryError&gt;](#bkmk-registryerror)

[&lt;HardLinkStoreControl&gt;](#bkmk-hardlinkstorecontrol)

[&lt;fileLocked&gt;](#bkmk-filelock)

[&lt;createHardLink&gt;](#bkmk-createhardlink)

[&lt;errorHardLink&gt;](#bkmk-errorhardlink)

[&lt;ProfileControl&gt;](#bkmk-profilecontrol)

[&lt;localGroups&gt;](#bkmk-localgroups)

[&lt;mappings&gt;](#bkmk-mappings)

[&lt;changeGroup&gt;](#bkmk-changegrou)

[&lt;include&gt;](#bkmk-include)

[&lt;exclude&gt;](#bkmk-exclude)

[Sample Config.xml File](#bkmk-sampleconfigxjmlfile)

## <a href="" id="bkmk-policies"></a>&lt;Policies&gt;


The **&lt;Policies&gt;** element contains elements that describe the policies that USMT follows while creating a migration store. Valid children of the **&lt;Policies&gt;** element are **&lt;ErrorControl&gt;** and **&lt;HardLinkStoreControl&gt;**. The **&lt;Policies&gt;** element is a child of **&lt;Configuration&gt;**.

Syntax: `<Policies> </Policies>`

## <a href="" id="bkmk-errorcontrol"></a>&lt;ErrorControl&gt;


The **&lt;ErrorControl&gt;** element is an optional element you can configure in the Config.xml file. The configurable **&lt;ErrorControl&gt;** rules support only the environment variables for the operating system that is running and the currently logged-on user. As a workaround, you can specify a path using the (\*) wildcard character.

-   **Number of occurrences**: Once for each component

-   **Parent elements**: The **&lt;Policies&gt;** element

-   **Child elements**: The **&lt;fileError&gt;** and **&lt;registryError&gt;** element

Syntax: `<ErrorControl></ErrorControl>`

The following example specifies that all locked files, regardless of their location (including files in C:\\Users), should be ignored. However, the migration fails if any file in C:\\Users cannot be accessed because of any other reason. In the example below, the **&lt;ErrorControl&gt;** element ignores any problems in migrating registry keys that match the supplied pattern, and it resolves them to an **Access denied** error.

Additionally, the order in the **&lt;ErrorControl&gt;** section implies priority. In this example, the first **&lt;nonFatal&gt;** tag takes precedence over the second **&lt;fatal&gt;** tag. This precedence is applied, regardless of how many tags are listed.

``` syntax
<ErrorControl>
  <fileError>
    <nonFatal errorCode="33">* [*]</nonFatal>
    <fatal errorCode="any">C:\Users\* [*]</fatal>
  </fileError>
  <registryError>
    <nonFatal errorCode="5">HKCU\SOFTWARE\Microsoft\* [*]</nonFatal>
  </registryError>
</ErrorControl>
```

**Important**  
The configurable **&lt;ErrorControl&gt;** rules support only the environment variables for the operating system that is running and the currently logged-on user. As a workaround, you can specify a path using the (\*) wildcard character.

 

### <a href="" id="bkmk-fatal"></a>&lt;fatal&gt;

The **&lt;fatal&gt;** element is not required.

-   **Number of occurrences**: Once for each component

-   **Parent elements**: **&lt;fileError&gt;** and **&lt;registryError&gt;**

-   **Child elements**: None.

Syntax: `<fatal errorCode="any">`*&lt;pattern&gt;*`</fatal>`

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Required</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>errorCode</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>&quot;any&quot; or &quot;<em>specify system error message here</em>&quot;</p></td>
</tr>
</tbody>
</table>

 

You use the **&lt;fatal&gt;** element to specify that errors matching a specific pattern should cause USMT to halt the migration.

## <a href="" id="bkmk-fileerror"></a>&lt;fileError&gt;


The **&lt;fileError&gt;** element is not required.

-   **Number of occurrences**: Once for each component

-   **Parent elements**: **&lt;ErrorControl&gt;**

-   **Child elements**: **&lt;nonFatal&gt;** and **&lt;fatal&gt;**

Syntax: `<fileError></fileError>`

You use the **&lt;fileError&gt;** element to represent the behavior associated with file errors.

## <a href="" id="bkmk-nonfatal"></a>&lt;nonFatal&gt;


The **&lt;nonFatal&gt;** element is not required.

-   **Number of occurrences**: Once for each component

-   **Parent elements**: The **&lt;fileError&gt;** and **&lt;registryError&gt;** elements.

-   **Child elements**: None.

Syntax: `<nonfatal errorCode="any">`*&lt;pattern&gt;*`</nonFatal>`

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Required</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>&lt;errorCode&gt;</strong></p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>&quot;any&quot; or &quot;<em>specify system error message here</em>&quot;. If system error messages are not specified, the default behavior applies the parameter to all system error messages.</p></td>
</tr>
</tbody>
</table>

 

You use the **&lt;nonFatal&gt;** element to specify that errors matching a specific pattern should not cause USMT to halt the migration.

## <a href="" id="bkmk-registryerror"></a>&lt;registryError&gt;


The <strong>&lt;registryError&gt;</strong>element is not required.

-   **Number of occurrences**: Once for each component

-   **Parent elements**: **&lt;ErrorControl&gt;**

-   **Child elements**: **&lt;nonfatal&gt;** and **&lt;fatal&gt;**

Syntax: `<registryError></registryError>`

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Required</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>&lt;errorCode&gt;</strong></p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>&quot;any&quot; or &quot;<em>specify system error message here</em>&quot;. If system error messages are not specified, the default behavior applies the parameter to all system error messages.</p></td>
</tr>
</tbody>
</table>

 

You use the **&lt;registryError&gt;** element to specify that errors matching a specific pattern should not cause USMT to halt the migration.

## <a href="" id="bkmk-hardlinkstorecontrol"></a>&lt;HardLinkStoreControl&gt;


The **&lt;HardLinkStoreControl&gt;** element contains elements that describe how to handle files during the creation of a hard-link migration store. Its only valid child is **&lt;fileLocked&gt;**.

Syntax: `<HardLinkStoreControl> </HardLinkStoreControl>`

-   **Number of occurrences**: Once for each component

-   **Parent elements**: **&lt;Policies&gt;**

-   **Child elements**: **&lt;fileLocked&gt;**

Syntax: `<HardLinkStoreControl></HardLinkStoreControl>`

The **&lt;HardLinkStoreControl&gt;** sample code below specifies that hard links can be created to locked files only if the locked file resides somewhere under C:\\Users\\. Otherwise, a file-access error occurs when a locked file is encountered that cannot be copied, even though is technically possible for the link to be created.

**Important**  
The **&lt;ErrorControl&gt;** section can be configured to conditionally ignore file access errors, based on the file’s location.

 

``` syntax
<Policy>
   <HardLinkStoreControl>
      <fileLocked>
         <createHardLink>C:\Users\*</createHardLink>
         <errorHardLink>C:\*</errorHardLink>
      </fileLocked>
   </HardLinkStoreControl>
   <ErrorControl>
      […]
   </ErrorControl>
</Policy>
```

## <a href="" id="bkmk-filelock"></a>&lt;fileLocked&gt;


The **&lt;fileLocked&gt;** element contains elements that describe how to handle files that are locked for editing. The rules defined by the **&lt;fileLocked&gt;** element are processed in the order in which they appear in the XML file.

Syntax: `<fileLocked></fileLocked>`

## <a href="" id="bkmk-createhardlink"></a>&lt;createHardLink&gt;


The **&lt;createHardLink&gt;** element defines a standard MigXML pattern that describes file paths where hard links should be created, even if the file is locked for editing by another application.

Syntax: `<createHardLink>`*&lt;pattern&gt;*`</createHardLink>`

## <a href="" id="bkmk-errorhardlink"></a>&lt;errorHardLink&gt;


The **&lt;errorHardLink&gt;** element defines a standard MigXML pattern that describes file paths where hard links should not be created if the file is locked for editing by another application. USMT will attempt to copy files under these paths into the migration store. However, if that is not possible, **Error\_Locked** is thrown. This is a standard Windows application programming interface (API) error that can be captured by the **&lt;ErrorControl&gt;** section to either cause USMT to skip the file or abort the migration.

Syntax: `<errorHardLink>`*&lt;pattern&gt;*`</errorHardLink>`

## <a href="" id="bkmk-profilecontrol"></a>&lt;ProfileControl&gt;


This element is used to contain other elements that establish rules for migrating profiles, users, and policies around local group membership during the migration. **&lt;ProfileMigration&gt;** is a child of **&lt;Configuration&gt;**.

Syntax: &lt;`ProfileControl> </ProfileControl>`

## <a href="" id="bkmk-localgroups"></a>&lt;localGroups&gt;


This element is used to contain other elements that establish rules for how to migrate local groups. **&lt;localGroups&gt;** is a child of **&lt;ProfileControl&gt;**.

Syntax: `<localGroups> </localGroups>`

## <a href="" id="bkmk-mappings"></a>&lt;mappings&gt;


This element is used to contain other elements that establish mappings between groups.

Syntax: `<mappings> </mappings>`

## <a href="" id="bkmk-changegrou"></a>&lt;changeGroup&gt;


This element describes the source and destination groups for a local group membership change during the migration. It is a child of **&lt;localGroups&gt;**. The following parameters are defined:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Required</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>From</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>A valid local group on the source machine that contains users selected for migration on the command line.</p></td>
</tr>
<tr class="even">
<td align="left"><p>To</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>A local group that the users are to be moved to during the migration.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>appliesTo</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>nonmigratedUsers, migratedUsers, AllUsers. This value defines which users the change group operation should apply to.</p></td>
</tr>
</tbody>
</table>

 

The valid and required children of **&lt;changeGroup&gt;** are **&lt;include&gt;** and **&lt;exclude&gt;**. Although both can be children at the same time, only one is required.

Syntax: `<changeGroup From="Group1" To= "Group2"> </changeGroup>`

## <a href="" id="bkmk-include"></a>&lt;include&gt;


This element specifies that its required child, *&lt;pattern&gt;*, should be included in the migration.

Syntax: `<include>``</include>`

## <a href="" id="bkmk-exclude"></a>&lt;exclude&gt;


This element specifies that its required child, *&lt;pattern&gt;*, should be excluded from the migration.

Syntax: `<exclude>`` </exclude>`

## <a href="" id="bkmk-sampleconfigxjmlfile"></a>Sample Config.xml File


Refer to the following sample Config.xml file for additional details about items you can choose to exclude from a migration.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<Configuration>
  <Applications/>
  <Documents/>
  <WindowsComponents>
    <component displayname="Tablet PC Settings" migrate="yes" ID="tablet_pc_settings">
      <component displayname="Accessories" migrate="yes" ID="tablet_pc_settings\tablet_pc_accessories">
        <component displayname="Microsoft-Windows-TabletPC-StickyNotes" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-tabletpc-stickynotes/microsoft-windows-tabletpc-stickynotes/settings"/>
        <component displayname="Microsoft-Windows-TabletPC-SnippingTool" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-tabletpc-snippingtool/microsoft-windows-tabletpc-snippingtool/settings"/>
        <component displayname="Microsoft-Windows-TabletPC-Journal" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-tabletpc-journal/microsoft-windows-tabletpc-journal/settings"/>
      </component>
      <component displayname="Input Panel" migrate="yes" ID="tablet_pc_settings\tablet_pc_input_panel">
        <component displayname="Microsoft-Windows-TabletPC-InputPanel" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-tabletpc-inputpanel/microsoft-windows-tabletpc-inputpanel/settings"/>
      </component>
      <component displayname="General Options" migrate="yes" ID="tablet_pc_settings\tablet_pc_general_options">
        <component displayname="Microsoft-Windows-TabletPC-UIHub" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-tabletpc-uihub/microsoft-windows-tabletpc-uihub/settings"/>
        <component displayname="Microsoft-Windows-TabletPC-Platform-Input-Core" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-tabletpc-platform-input-core/microsoft-windows-tabletpc-platform-input-core/settings"/>
      </component>
      <component displayname="Handwriting Recognition" migrate="yes" ID="tablet_pc_settings\handwriting_recognition">
        <component displayname="Microsoft-Windows-TabletPC-InputPersonalization" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-tabletpc-inputpersonalization/microsoft-windows-tabletpc-inputpersonalization/settings"/>
      </component>
    </component>
    <component displayname="Sound and Speech Recognition" migrate="yes" ID="sound_and_speech_recognition">
      <component displayname="Speech Recognition" migrate="yes" ID="sound_and_speech_recognition\speech_recognition">
        <component displayname="Microsoft-Windows-SpeechCommon" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-speechcommon/microsoft-windows-speechcommon/settings"/>
      </component>
    </component>
    <component displayname="Hardware" migrate="yes" ID="hardware">
      <component displayname="Phone and Modem" migrate="yes" ID="hardware\phone_and_modem">
        <component displayname="Microsoft-Windows-TapiSetup" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-tapisetup/microsoft-windows-tapisetup/settings"/>
      </component>
      <component displayname="Printers and Faxes" migrate="yes" ID="hardware\printers_and_faxes">
        <component displayname="Microsoft-Windows-Printing-Spooler-Core" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-printing-spooler-core/microsoft-windows-printing-spooler-core/settings"/>
        <component displayname="Microsoft-Windows-Printing-Spooler-Networkclient" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-printing-spooler-networkclient/microsoft-windows-printing-spooler-networkclient/settings"/>
        <component displayname="Microsoft-Windows-Printing-Spooler-Core-Localspl" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-printing-spooler-core-localspl/microsoft-windows-printing-spooler-core-localspl/settings"/>
      </component>
    </component>
    <component displayname="Programs" migrate="yes" ID="programs">
      <component displayname="Media Player Settings" migrate="yes" ID="programs\media_player_settings">
        <component displayname="Microsoft-Windows-MediaPlayer-Migration" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-mediaplayer-migration/microsoft-windows-mediaplayer-migration/settings"/>
      </component>
    </component>
    <component displayname="Communications and Sync" migrate="yes" ID="communications_and_sync">
      <component displayname="Windows Mail" migrate="yes" ID="communications_and_sync\windows_mail">
        <component displayname="Microsoft-Windows-WAB" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-wab/microsoft-windows-wab/settings"/>
        <component displayname="Microsoft-Windows-Mail" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-mail/microsoft-windows-mail/settings"/>
      </component>
    </component>
    <component displayname="Microsoft-Windows-Migration-DisplayGroups" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-migration-displaygroups/microsoft-windows-migration-displaygroups/settings"/>
    <component displayname="Performance and Maintenance" migrate="yes" ID="performance_and_maintenance">
      <component displayname="Diagnostics" migrate="yes" ID="performance_and_maintenance\diagnostics">
        <component displayname="Microsoft-Windows-RemoteAssistance-Exe" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-remoteassistance-exe/microsoft-windows-remoteassistance-exe/settings"/>
        <component displayname="Microsoft-Windows-Feedback-Service" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-feedback-service/microsoft-windows-feedback-service/settings"/>
      </component>
      <component displayname="Error Reporting" migrate="yes" ID="performance_and_maintenance\error_reporting">
        <component displayname="Microsoft-Windows-ErrorReportingCore" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-errorreportingcore/microsoft-windows-errorreportingcore/settings"/>
      </component>
    </component>
    <component displayname="Network and Internet" migrate="yes" ID="network_and_internet">
      <component displayname="Offline Files" migrate="yes" ID="network_and_internet\offline_files">
        <component displayname="Microsoft-Windows-OfflineFiles-Core" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-offlinefiles-core/microsoft-windows-offlinefiles-core/settings"/>
      </component>
      <component displayname="Internet Options" migrate="yes" ID="network_and_internet\internet_options">
        <component displayname="Microsoft-Windows-ieframe" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-ieframe/microsoft-windows-ieframe/settings"/>
        <component displayname="Microsoft-Windows-IE-InternetExplorer" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-ie-internetexplorer/microsoft-windows-ie-internetexplorer/settings"/>
        <component displayname="Microsoft-Windows-IE-Feeds-Platform" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-ie-feeds-platform/microsoft-windows-ie-feeds-platform/settings"/>
        <component displayname="Microsoft-Windows-IE-ClientNetworkProtocolImplementation" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-ie-clientnetworkprotocolimplementation/microsoft-windows-ie-clientnetworkprotocolimplementation/settings"/>
      </component>
      <component displayname="Networking Connections" migrate="yes" ID="network_and_internet\networking_connections">
        <component displayname="Microsoft-Windows-Wlansvc" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-wlansvc/microsoft-windows-wlansvc/settings"/>
        <component displayname="Microsoft-Windows-RasConnectionManager" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-rasconnectionmanager/microsoft-windows-rasconnectionmanager/settings"/>
        <component displayname="Microsoft-Windows-RasApi" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-rasapi/microsoft-windows-rasapi/settings"/>
        <component displayname="Microsoft-Windows-PeerToPeerCollab" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-peertopeercollab/microsoft-windows-peertopeercollab/settings"/>
        <component displayname="Microsoft-Windows-MPR" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-mpr/microsoft-windows-mpr/settings"/>
        <component displayname="Microsoft-Windows-Dot3svc" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-dot3svc/microsoft-windows-dot3svc/settings"/>
      </component>
    </component>
    <component displayname="Date, Time, Language and Region" migrate="yes" ID="date_time_language_and_region">
      <component displayname="Regional Language Options" migrate="yes" ID="date_time_language_and_region\regional_language_options">
        <component displayname="Microsoft-Windows-TableDrivenTextService-Migration" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-tabledriventextservice-migration/microsoft-windows-tabledriventextservice-migration/settings"/>
        <component displayname="Microsoft-Windows-TextServicesFramework-Migration" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-textservicesframework-migration/microsoft-windows-textservicesframework-migration/settings"/>
        <component displayname="Microsoft-Windows-MUI-Settings" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-mui-settings/microsoft-windows-mui-settings/settings"/>
        <component displayname="Microsoft-Windows-International-Core" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-international-core/microsoft-windows-international-core/settings"/>
        <component displayname="Microsoft-Windows-IME-Traditional-Chinese-Core" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-ime-traditional-chinese-core/microsoft-windows-ime-traditional-chinese-core/settings"/>
        <component displayname="Microsoft-Windows-IME-Simplified-Chinese-Core" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-ime-simplified-chinese-core/microsoft-windows-ime-simplified-chinese-core/settings"/>
        <component displayname="Microsoft-Windows-Desktop_Technologies-Text_Input_Services-IME-Japanese-Core" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-desktop_technologies-text_input_services-ime-japanese-core/microsoft-windows-desktop_technologies-text_input_services-ime-japanese-core/settings"/>
      </component>
    </component>
    <component displayname="Security" migrate="yes" ID="security">
      <component displayname="Microsoft-Windows-Rights-Management-Client-v1-API" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-rights-management-client-v1-api/microsoft-windows-rights-management-client-v1-api/settings"/>
      <component displayname="Security Options" migrate="yes" ID="security\security_options">
        <component displayname="Microsoft-Windows-Credential-Manager" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-credential-manager/microsoft-windows-credential-manager/settings"/>
      </component>
    </component>
    <component displayname="Appearance and Display" migrate="yes" ID="appearance_and_display">
      <component displayname="Windows Games Settings" migrate="yes" ID="appearance_and_display\windows_games_settings">
        <component displayname="Microsoft-Windows-GameExplorer" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-gameexplorer/microsoft-windows-gameexplorer/settings"/>
      </component>
      <component displayname="Taskbar and Start Menu" migrate="yes" ID="appearance_and_display\taskbar_and_start_menu">
        <component displayname="Microsoft-Windows-stobject" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-stobject/microsoft-windows-stobject/settings"/>
        <component displayname="Microsoft-Windows-explorer" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-explorer/microsoft-windows-explorer/settings"/>
      </component>
      <component displayname="Personalized Settings" migrate="yes" ID="appearance_and_display\personalized_settings">
        <component displayname="Microsoft-Windows-uxtheme" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-uxtheme/microsoft-windows-uxtheme/settings"/>
        <component displayname="Microsoft-Windows-themeui" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-themeui/microsoft-windows-themeui/settings"/>
        <component displayname="Microsoft-Windows-shmig" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-shmig/microsoft-windows-shmig/settings"/>
        <component displayname="Microsoft-Windows-shell32" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-shell32/microsoft-windows-shell32/settings"/>
        <component displayname="Microsoft-Windows-CommandPrompt" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-commandprompt/microsoft-windows-commandprompt/settings"/>
      </component>
    </component>
    <component displayname="Additional Options" migrate="yes" ID="additional_options">
      <component displayname="Help Settings" migrate="yes" ID="additional_options\help_settings">
        <component displayname="Microsoft-Windows-Help-Client" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-help-client/microsoft-windows-help-client/settings"/>
      </component>
      <component displayname="Windows Core Settings" migrate="yes" ID="additional_options\windows_core_settings">
        <component displayname="Microsoft-Windows-Win32k-Settings" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-win32k-settings/microsoft-windows-win32k-settings/settings"/>
        <component displayname="Microsoft-Windows-Web-Services-for-Management-Core" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-web-services-for-management-core/microsoft-windows-web-services-for-management-core/settings"/>
        <component displayname="Microsoft-Windows-UPnPSSDP" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-upnpssdp/microsoft-windows-upnpssdp/settings"/>
        <component displayname="Microsoft-Windows-UPnPDeviceHost" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-upnpdevicehost/microsoft-windows-upnpdevicehost/settings"/>
        <component displayname="Microsoft-Windows-UPnPControlPoint" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-upnpcontrolpoint/microsoft-windows-upnpcontrolpoint/settings"/>
        <component displayname="Microsoft-Windows-TerminalServices-RemoteConnectionManager" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-terminalservices-remoteconnectionmanager/microsoft-windows-terminalservices-remoteconnectionmanager/settings"/>
        <component displayname="Microsoft-Windows-TerminalServices-Drivers" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-terminalservices-drivers/microsoft-windows-terminalservices-drivers/settings"/>
        <component displayname="Microsoft-Windows-SQMApi" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-sqmapi/microsoft-windows-sqmapi/settings"/>
        <component displayname="Microsoft-Windows-RPC-Remote" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-rpc-remote/microsoft-windows-rpc-remote/settings"/>
        <component displayname="Microsoft-Windows-RPC-Local" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-rpc-local/microsoft-windows-rpc-local/settings"/>
        <component displayname="Microsoft-Windows-RPC-HTTP" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-rpc-http/microsoft-windows-rpc-http/settings"/>
        <component displayname="Microsoft-Windows-Rasppp" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-rasppp/microsoft-windows-rasppp/settings"/>
        <component displayname="Microsoft-Windows-RasMprDdm" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-rasmprddm/microsoft-windows-rasmprddm/settings"/>
        <component displayname="Microsoft-Windows-RasBase" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-rasbase/microsoft-windows-rasbase/settings"/>
        <component displayname="Microsoft-Windows-Microsoft-Data-Access-Components-(MDAC)-ODBC-DriverManager-Dll" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-microsoft-data-access-components-(mdac)-odbc-drivermanager-dll/microsoft-windows-microsoft-data-access-components-(mdac)-odbc-drivermanager-dll/settings"/>
        <component displayname="Microsoft-Windows-ICM-Profiles" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-icm-profiles/microsoft-windows-icm-profiles/settings"/>
        <component displayname="Microsoft-Windows-feclient" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-feclient/microsoft-windows-feclient/settings"/>
        <component displayname="Microsoft-Windows-dpapi-keys" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-dpapi-keys/microsoft-windows-dpapi-keys/settings"/>
        <component displayname="Microsoft-Windows-Crypto-keys" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-crypto-keys/microsoft-windows-crypto-keys/settings"/>
        <component displayname="Microsoft-Windows-COM-DTC-Setup" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-com-dtc-setup/microsoft-windows-com-dtc-setup/settings"/>
        <component displayname="Microsoft-Windows-COM-ComPlus-Setup" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-com-complus-setup/microsoft-windows-com-complus-setup/settings"/>
        <component displayname="Microsoft-Windows-COM-Base" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-com-base/microsoft-windows-com-base/settings"/>
        <component displayname="Microsoft-Windows-CAPI2-certs" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-capi2-certs/microsoft-windows-capi2-certs/settings"/>
      </component>
    </component>
    <component displayname="Accessibility" migrate="yes" ID="accessibility">
      <component displayname="Accessibility Settings" migrate="yes" ID="accessibility\accessibility_settings">
        <component displayname="Microsoft-Windows-accessibilitycpl" migrate="yes" ID="http://www.microsoft.com/migration/1.0/migxmlext/cmi/microsoft-windows-accessibilitycpl/microsoft-windows-accessibilitycpl/settings"/>
      </component>
    </component>
  </WindowsComponents>
  <Policies>
    <ErrorControl>
      <!--   Example:

          <fileError>
            <nonFatal errorCode="33">* [*]</nonFatal>
            <fatal errorCode="any">C:\Users\* [*]</fatal>
          </fileError>
          <registryError>
            <nonFatal errorCode="5">* [*]</nonFatal>
          </registryError>
      -->
    </ErrorControl>
    <HardLinkStoreControl>
      <!--   Example:

          <fileLocked>
            <createHardLink>c:\Users\* [*]</createHardLink>
            <errorHardLink>C:\* [*]</errorHardLink>
          </fileLocked>
      -->
    </HardLinkStoreControl>
  </Policies>
  <ProfileControl>
    <!--   Example:

          <localGroups>
            <mappings>
              <changeGroup from="Administrators" to="Users" appliesTo="MigratedUsers">
                <include>
                  <pattern>DomainName1\Username</pattern>
                </include>
                <exclude>
                  <pattern>DomainName2\Username</pattern>
                </exclude>
              </changeGroup>
            </mappings>
          </localGroups>
          
      -->
  </ProfileControl>
</Configuration>
```

## Related topics


[USMT XML Reference](usmt-xml-reference.md)

 

 





