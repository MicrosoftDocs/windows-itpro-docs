---
title: Offline Migration Reference (Windows 10)
description: Offline Migration Reference
ms.assetid: f347547c-d601-4c3e-8f2d-0138edeacfda
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: lomayor
ms.date: 04/19/2017
ms.topic: article
---

# Offline Migration Reference


Offline migration enables the ScanState tool to run inside a different Windows® operating system than the Windows operating system from which ScanState is gathering files and settings. There are two primary offline scenarios:

-   **Windows PE.** The ScanState tool can be run from within Windows PE, gathering files and settings from the offline Windows operating system on that machine.

-   **Windows.old.** The ScanState tool can now gather files and settings from the Windows.old directory that is created during Windows installation on a partition that contains a previous installation of Windows. For example, the ScanState tool can run in Windows 10, gathering files from a previous Windows 7or Windows 8 installation contained in the Windows.old directory.

When you use User State Migration Tool (USMT) 10.0 to gather and restore user state, offline migration reduces the cost of deployment by:

-   **Reducing complexity.** In computer-refresh scenarios, migrations from the Windows.old directory reduce complexity by eliminating the need for the ScanState tool to be run before the operating system is deployed. Also, migrations from the Windows.old directory enable ScanState and LoadState to be run successively.

-   **Improving performance.** When USMT runs in an offline Windows Preinstallation Environment (WinPE) environment, it has better access to the hardware resources. This may increase performance on older machines with limited hardware resources and numerous installed software applications.

-   **New recovery scenario.** In scenarios where a machine no longer restarts properly, it might be possible to gather user state with the ScanState tool from within WinPE.

## In This Topic


-   [What Will Migrate Offline?](#bkmk-whatwillmigrate)

-   [What Offline Environments are Supported?](#bkmk-offlineenvironments)

-   [User-Group Membership and Profile Control](#bkmk-usergroupmembership)

-   [Command-Line Options](#bkmk-commandlineoptions)

-   [Environment Variables](#bkmk-environmentvariables)

-   [Offline.xml Elements](#bkmk-offlinexml)

## <a href="" id="bkmk-whatwillmigrate"></a>What Will Migrate Offline?


The following user data and settings migrate offline, similar to an online migration:

-   Data and registry keys specified in MigXML

-   User accounts

-   Application settings

-   Limited set of operating-system settings

-   EFS files

-   Internet Explorer® Favorites

For exceptions to what you can migrate offline, see [What Does USMT Migrate?](usmt-what-does-usmt-migrate.md)

## <a href="" id="bkmk-offlineenvironments"></a>What Offline Environments are Supported?


The following table defines the supported combination of online and offline operating systems in USMT.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Running Operating System</th>
<th align="left">Offline Operating System</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>WinPE 5.0 or greater, with the MSXML library</p></td>
<td align="left"><p>Windows Vista, Windows 7, Windows 8, Windows 10</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 7, Windows 8, Windows 10</p></td>
<td align="left"><p>Windows.old directory</p></td>
</tr>
</tbody>
</table>

 

**Note**  
It is possible to run the ScanState tool while the drive remains encrypted by suspending Windows BitLocker Drive Encryption before booting into WinPE. For more information, see [this Microsoft site](https://go.microsoft.com/fwlink/p/?LinkId=190314).

 

## <a href="" id="bkmk-usergroupmembership"></a>User-Group Membership and Profile Control


User-group membership is not preserved during offline migrations. You must configure a **&lt;ProfileControl&gt;** section in the Config.xml file to specify the groups that the migrated users should be made members of. The following example places all migrated users into the Users group:

``` syntax
<Configuration>
<ProfileControl>
    <localGroups>
      <mappings>
         <changeGroup from="*" to="Users" appliesTo="MigratedUsers">
            <include>
            <pattern>*</pattern>
            </include>
         </changeGroup>
      </mappings>
   </localGroups>
  </ProfileControl>
</Configuration>
```

For information about the format of a Config.xml file, see [Config.xml File](usmt-configxml-file.md).

## <a href="" id="bkmk-commandlineoptions"></a>Command-Line Options


An offline migration can either be enabled by using a configuration file on the command line, or by using one of the following command line options:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Component</th>
<th align="left">Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>ScanState.exe</p></td>
<td align="left"><p><strong>/offline:</strong><em>&lt;path to offline.xml&gt;</em></p></td>
<td align="left"><p>This command-line option enables the offline-migration mode and requires a path to an Offline.xml configuration file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ScanState.exe</p></td>
<td align="left"><p><strong>/offlineWinDir:</strong><em>&lt;Windows directory&gt;</em></p></td>
<td align="left"><p>This command-line option enables the offline-migration mode and starts the migration from the location specified. It is only for use in WinPE offline scenarios where the migration is occurring from a Windows directory.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ScanState.exe</p></td>
<td align="left"><p><strong>/OfflineWinOld:</strong><em>&lt;Windows.old directory&gt;</em></p></td>
<td align="left"><p>This command-line option enables the offline migration mode and starts the migration from the location specified. It is only intended to be used in Windows.old migration scenarios, where the migration is occurring from a Windows.old directory.</p></td>
</tr>
</tbody>
</table>

 

You can use only one of the **/offline**,**/offlineWinDir** , or **/OfflineWinOld** command-line options at a time; USMT does not support using more than one together.

## <a href="" id="bkmk-environmentvariables"></a>Environment Variables


The following system environment variables are necessary in the scenarios outlined below.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Variable</th>
<th align="left">Value</th>
<th align="left">Scenario</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>USMT_WORKING_DIR</p></td>
<td align="left"><p>Full path to a working directory</p></td>
<td align="left"><p>Required when USMT binaries are located on read-only media, which does not support the creation of log files or temporary storage. To set the system environment variable, at a command prompt type the following:</p>
<pre class="syntax" space="preserve"><code>Set USMT_WORKING_DIR=[path to working directory]</code></pre></td>
</tr>
<tr class="even">
<td align="left"><p>MIG_OFFLINE_PLATFORM_ARCH</p></td>
<td align="left"><p>32 or 64</p></td>
<td align="left"><p>While operating offline, this environment variable defines the architecture of the offline system, if the system does not match the WinPE and Scanstate.exe architecture. This environment variable enables the 32-bit ScanState application to gather data from a computer with 64-bit architecture, or the 64-bit ScanState application to gather data from a computer with 32-bit architecture. This is required when auto-detection of the offline architecture doesn’t function properly, for example, when the source system is running a 64-bit version of Windows XP. For example, to set this system environment variable for a 32-bit architecture, at a command prompt type the following:</p>
<pre class="syntax" space="preserve"><code>Set MIG_OFFLINE_PLATFORM_ARCH=32</code></pre></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-offlinexml"></a>Offline.xml Elements


Use an offline.xml file when running the ScanState tool on a computer that has multiple Windows directories. The offline.xml file specifies which directories to scan for windows files. An offline.xml file can be used with the /offline option as an alternative to specifying a single Windows directory path with the /offlineDir option.

### <a href="" id="-offline-"></a>&lt;offline&gt;

This element contains other elements that define how an offline migration is to be performed.

Syntax: &lt;offline&gt; &lt;/offline&gt;

### <a href="" id="-windir-"></a>&lt;winDir&gt;

This element is a required child of **&lt;offline&gt;** and contains information about how the offline volume can be selected. The migration will be performed from the first element of **&lt;winDir&gt;** that contains a valid Windows system volume.

Syntax: &lt; winDir &gt; &lt;/ winDir &gt;

### <a href="" id="-path-"></a>&lt;path&gt;

This element is a required child of **&lt;winDir&gt;** and contains a file path pointing to a valid Windows directory. Relative paths are interpreted from the ScanState tool’s working directory.

Syntax: &lt;path&gt; c:\\windows &lt;/path&gt;

-or-

Syntax, when used with the **&lt;mappings&gt;** element: &lt;path&gt; C:\\, D:\\ &lt;/path&gt;

### <a href="" id="-mappings-"></a>&lt;mappings&gt;

This element is an optional child of **&lt;offline&gt;**. When specified, the **&lt;mappings&gt;** element will override the automatically detected WinPE drive mappings. Each child **&lt;path&gt;** element will provide a mapping from one system volume to another. Additionally, mappings between folders can be provided, since an entire volume can be mounted to a specific folder.

Syntax: &lt;mappings&gt; &lt;/mappings&gt;

### <a href="" id="-failonmultiplewindir-"></a>&lt;failOnMultipleWinDir&gt;

This element is an optional child of **&lt;offline&gt;**. The **&lt;failOnMultipleWinDir&gt;** element allows the user to specify that the migration should fail when USMT detects that there are multiple instances of Windows installed on the source machine. When the **&lt;failOnMultipleWinDir&gt;** element isn’t present, the default behavior is that the migration does not fail.

Syntax: &lt;failOnMultipleWinDir&gt;1&lt;/failOnMultipleWinDir&gt; or Syntax: &lt;failOnMultipleWinDir&gt;0&lt;/failOnMultipleWinDir&gt;

### Offline .xml Example

The following XML example illustrates some of the elements discussed earlier in this topic.

``` syntax
<offline>
     <winDir>
          <path>C:\Windows</path> 
          <path>D:\Windows</path> 
          <path>E:\</path> 
     </winDir>
     <failOnMultipleWinDir>1</failOnMultipleWinDir>
</offline>
```

## Related topics


[Plan Your Migration](usmt-plan-your-migration.md)

 

 





