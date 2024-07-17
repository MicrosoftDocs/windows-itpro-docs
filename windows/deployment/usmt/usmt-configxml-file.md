---
title: Config.xml File
description: Learn how the Config.xml file is an optional User State Migration Tool (USMT) file that can be created using the /genconfig option with the ScanState.exe tool.
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 01/09/2024
ms.topic: conceptual
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Config.xml File

The `Config.xml` file is an optional User State Migration Tool (USMT) file that can be created using the `/genconfig` option with the **ScanState** tool. If all of the default components should be included and no changes need to be made to the default store-creation or profile-migration behavior, a `Config.xml` file doesn't need to be created.

However, if the default migration behavior defined in the `MigApp.xml`, `MigUser.xml` and `MigDocs.xml` files is satisfactory, but certain components need to be excluded, a `Config.xml` file can be created and modified while leaving the other **.xml** files unchanged. For example, a `Config.xml` file must be created to exclude any of the operating-system settings that are migrated. It's necessary to create and modify the `Config.xml` file to change any of the default store-creation or profile-migration behavior.

The `Config.xml` file has a different format than the other migration **.xml** files, because it doesn't contain any migration rules. It contains only a list of the operating-system components, applications, user documents that can be migrated, and user-profile policy and error-control policy. For this reason, excluding components using the `Config.xml` file is easier than modifying the migration **.xml** files, because familiarization with the migration rules and syntax isn't needed. However, wildcard characters can't be used in this file.

For more information about using the `Config.xml` file with other migration files, such as the `MigDocs.xml` and `MigApps.xml` files, see [Understanding Migration XML Files](understanding-migration-xml-files.md).

> [!NOTE]
>
> To exclude a component from the `Config.xml` file, set the **migrate** value to **no**. Deleting the XML tag for the component from the `Config.xml` file doesn't exclude the component from the migration.

## Migration Policies

In USMT, there are migration policies that can be configured in the `Config.xml` file. For example, **\<ErrorControl\>**, **\<ProfileControl\>**, and **\<HardLinkStoreControl\>** options can be configured. The following elements and parameters are for use in the `Config.xml` file only.

### \<Policies\>

The **\<Policies\>** element contains elements that describe the policies that USMT follows while creating a migration store. Valid children of the **\<Policies\>** element are **\<ErrorControl\>** and **\<HardLinkStoreControl\>**. The **\<Policies\>** element is a child of **\<Configuration\>**.

Syntax:

```xml
<Policies> </Policies>
```

### \<ErrorControl\>

The **\<ErrorControl\>** element is an optional element that can be configured in the `Config.xml` file. The configurable **\<ErrorControl\>** rules support only the environment variables for the operating system that is running and the currently logged-on user. As a workaround, a path can be specified using the (\*) wildcard character.

- **Number of occurrences**: Once for each component

- **Parent elements**: The **\<Policies\>** element

- **Child elements**: The **\<fileError\>** and **\<registryError\>** element

Syntax:

```xml
<ErrorControl> </ErrorControl>
```

The following example specifies that all locked files, regardless of their location (including files in C:\\Users), should be ignored. However, the migration fails if any file in C:\\Users can't be accessed because of any other reason. In the following example, the **\<ErrorControl\>** element ignores any problems in migrating registry keys that match the supplied pattern, and it resolves them to an **Access denied** error.

Additionally, the order in the **\<ErrorControl\>** section implies priority. In this example, the first **\<nonFatal\>** tag takes precedence over the second **\<fatal\>** tag. This precedence is applied, regardless of how many tags are listed.

```xml
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

> [!IMPORTANT]
>
> The configurable **\<ErrorControl\>** rules support only the environment variables for the operating system that is running and the currently logged-on user. As a workaround, a path using the (\*) wildcard character can be specified.

### \<fatal\>

The **\<fatal\>** element isn't required.

- **Number of occurrences**: Once for each component

- **Parent elements**: **\<fileError\>** and **\<registryError\>**

- **Child elements**: None.

Syntax:

```xml
<fatal errorCode="any"> <specify pattern here> </fatal>
```

|Parameter|Required|Value|
|--- |--- |--- |
|errorCode|No|"any" or "*specify system error message here*"|

The **\<fatal\>** element can be used to specify that errors matching a specific pattern should cause USMT to halt the migration.

### \<fileError\>

The **\<fileError\>** element isn't required.

- **Number of occurrences**: Once for each component

- **Parent elements**: **\<ErrorControl\>**

- **Child elements**: **\<nonFatal\>** and **\<fatal\>**

Syntax:

```xml
<fileError> </fileError>
```

The **\<fileError\>** element can be used to represent the behavior associated with file errors.

### \<nonFatal\>

The **\<nonFatal\>** element isn't required.

- **Number of occurrences**: Once for each component

- **Parent elements**: The **\<fileError\>** and **\<registryError\>** elements.

- **Child elements**: None.

Syntax:

```xml
<nonfatal errorCode="any"> <specify pattern here> </nonFatal>
```

|Parameter|Required|Value|
|--- |--- |--- |
|**\<errorCode\>**|No|"any" or "*specify system error message*". If system error messages aren't specified, the default behavior applies the parameter to all system error messages.|

The **\<nonFatal\>** element can be used to specify that errors matching a specific pattern shouldn't cause USMT to halt the migration.

### \<registryError\>

The **\<registryError\>** element isn't required.

- **Number of occurrences**: Once for each component

- **Parent elements**: **\<ErrorControl\>**

- **Child elements**: **\<nonfatal\>** and **\<fatal\>**

Syntax:

```xml
<registryError errorcode="any"> </registryError>
```

|Parameter|Required|Value|
|--- |--- |--- |
|**\<errorCode\>**|No|"any" or "*specify system error message here*". If system error messages aren't specified, the default behavior applies the parameter to all system error messages.|

The **\<registryError\>** element can be used to specify that errors matching a specific pattern shouldn't cause USMT to halt the migration.

### \<HardLinkStoreControl\>

The **\<HardLinkStoreControl\>** element contains elements that describe how to handle files during the creation of a hard-link migration store. Its only valid child is **\<fileLocked\>**.

Syntax:

```xml
<HardLinkStoreControl> </HardLinkStoreControl>
```

- **Number of occurrences**: Once for each component

- **Parent elements**: **\<Policies\>**

- **Child elements**: **\<fileLocked\>**

Syntax:

```xml
<HardLinkStoreControl> </HardLinkStoreControl>
```

The following **\<HardLinkStoreControl\>** sample code specifies that hard links can be created to locked files only if the locked file resides somewhere under C:\\Users\\. Otherwise, a file-access error occurs when a locked file is encountered that can't be copied, even though is technically possible for the link to be created.

> [!IMPORTANT]
>
> The **\<ErrorControl\>** section can be configured to conditionally ignore file access errors, based on the file's location.

```xml
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

### \<fileLocked\>

The **\<fileLocked\>** element contains elements that describe how to handle files that are locked for editing. The rules defined by the **\<fileLocked\>** element are processed in the order in which they appear in the XML file.

Syntax:

```xml
<fileLocked> </fileLocked>
```

### \<createHardLink\>

The **\<createHardLink\>** element defines a standard MigXML pattern that describes file paths where hard links should be created, even if the file is locked for editing by another application.

Syntax:

```xml
<createHardLink> <specify pattern here> </createHardLink>
```

### \<errorHardLink\>

The **\<errorHardLink\>** element defines a standard MigXML pattern that describes file paths where hard links shouldn't be created if the file is locked for editing by another application. USMT attempts to copy files under these paths into the migration store. However, if that isn't possible, **Error\_Locked** is thrown. This error is a standard Windows application programming interface (API) error that can be captured by the **\<ErrorControl\>** section to either cause USMT to skip the file or abort the migration.

Syntax:

```xml
<errorHardLink> <specify pattern here> </errorHardLink>
```

### \<ProfileControl\>

This element is used to contain other elements that establish rules for migrating profiles, users, and policies around local group membership during the migration. **\<ProfileMigration\>** is a child of **\<Configuration\>**.

Syntax:

```xml
<ProfileControl> </ProfileControl>
```

### \<localGroups\>

This element is used to contain other elements that establish rules for how to migrate local groups. **\<localGroups\>** is a child of **\<ProfileControl\>**.

Syntax:

```xml
<localGroups> </localGroups>
```

### \<mappings\>

This element is used to contain other elements that establish mappings between groups.

Syntax:

```xml
<mappings> </mappings>
```

### \<changeGroup\>

This element describes the source and destination groups for a local group membership change during the migration. It's a child of **\<localGroups\>**. The following parameters are defined:

|Parameter|Required|Value|
|--- |--- |--- |
|From|Yes|A valid local group on the source machine that contains users selected for migration on the command line.|
|To|Yes|A local group that the users are to be moved to during the migration.|
|appliesTo|Yes|nonmigratedUsers, migratedUsers, AllUsers. This value defines which users the change group operation should apply to.|

The valid and required children of **\<changeGroup\>** are **\<include\>** and **\<exclude\>**. Although both can be children at the same time, only one is required.

Syntax:

```xml
<changeGroup From="Group1" To= "Group2"> </changeGroup>
```

### \<include\>

This element specifies that its required child, *\<pattern\>*, should be included in the migration.

Syntax:

```xml
<include> </include>
```

### \<exclude\>

This element specifies that its required child, *\<pattern\>*, should be excluded from the migration.

Syntax:

```xml
<exclude> </exclude>
```

## Sample Config.xml File

The following sample `Config.xml` file contains detailed examples about items that can be excluded from a migration.

<br>
<br>
<details>
  <summary>Expand for sample Config.xml file:</summary>

```xml
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

</details>

## Related articles

- [USMT XML reference](usmt-xml-reference.md).
