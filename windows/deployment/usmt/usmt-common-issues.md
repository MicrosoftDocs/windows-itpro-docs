---
title: Common Issues (Windows 10)
description: Common Issues
ms.assetid: 5a37e390-8617-4768-9eee-50397fbbb2e1
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.date: 09/19/2017
author: lomayor
ms.topic: article
---

# Common Issues


The following sections discuss common issues that you might see when you run the User State Migration Tool (USMT) 10.0 tools. USMT produces log files that describe in further detail any errors that occurred during the migration process. These logs can be used to troubleshoot migration failures.

## In This Topic


[User Account Problems](#user)

[Command-line Problems](#command)

[XML File Problems](#xml)

[Migration Problems](#migration)

[Offline Migration Problems](#bkmk-offline)

[Hard Link Migration Problems](#bkmk-hardlink)

[USMT does not migrate the Start layout](#usmt-does-not-migrate-the-start-layout)

## General Guidelines for Identifying Migration Problems


When you encounter a problem or error message during migration, you can use the following general guidelines to help determine the source of the problem:

-   Examine the ScanState, LoadState, and UsmtUtils logs to obtain the exact USMT error messages and Windows® application programming interface (API) error messages. For more information about USMT return codes and error messages, see [Return Codes](usmt-return-codes.md). For more information about Windows API error messages, type **nethelpmsg** on the command line.

    In most cases, the ScanState and LoadState logs indicate why a USMT migration is failing. We recommend that you use the **/v***:5* option when testing your migration. This verbosity level can be adjusted in a production migration; however, reducing the verbosity level might make it more difficult to diagnose failures that are encountered during production migrations. You can use a verbosity level higher than 5 if you want the log files output to go to a debugger.

    **Note**  
    Running the ScanState and LoadState tools with the **/v***:5* option creates a detailed log file. Although this option makes the log file large, the extra detail can help you determine where migration errors occurred.

     

-   Use the **/Verify** option in the UsmtUtils tool to determine whether any files in a compressed migration store are corrupted. For more information, see [Verify the Condition of a Compressed Migration Store](verify-the-condition-of-a-compressed-migration-store.md).

-   Use the **/Extract** option in the UsmtUtils tool to extract files from a compressed migration store. For more information, see [Extract Files from a Compressed USMT Migration Store](usmt-extract-files-from-a-compressed-migration-store.md).

-   Create a progress log using the **/Progress** option to monitor your migration.

-   For the source and destination computers, obtain operating system information, and versions of applications such as Internet Explorer and any other relevant programs. Then verify the exact steps that are needed to reproduce the problem. This information might help you to understand what is wrong and to reproduce the issue in your testing environment.

-   Log off after you run the LoadState tool. Some settings—for example, fonts, desktop backgrounds, and screen-saver settings—will not take effect until the next time the end user logs on.

-   Close all applications before running ScanState or LoadState tools. If some applications are running during the ScanState or LoadState process, USMT might not migrate some data. For example, if Microsoft Outlook® is open, USMT might not migrate PST files.

    **Note**  
    USMT will fail if it cannot migrate a file or setting unless you specify the **/c** option. When you specify the **/c** option, USMT ignores errors. However, it logs an error when it encounters a file that is in use that did not migrate.

     

## <a href="" id="user"></a>User Account Problems


The following sections describe common user account problems. Expand the section to see recommended solutions.

### I'm having problems creating local accounts on the destination computer.

**Resolution:** For more information about creating accounts and migrating local accounts, see [Migrate User Accounts](usmt-migrate-user-accounts.md).

### Not all of the user accounts were migrated to the destination computer.

**Causes/Resolutions** There are two possible causes for this problem:

When running the ScanState tool on Windows Vista, or the ScanState and LoadState tools on Windows 7, Windows 8, or Windows 10, you must run them in Administrator mode from an account with administrative credentials to ensure that all specified users are migrated. To run in Administrator mode:

1.  Click **Start**.

2.  Click **All Programs**.

3.  Click **Accessories**.

4.  Right-click **Command Prompt**.

5.  Click **Run as administrator**.

Then specify your LoadState or ScanState command. If you do not run USMT in Administrator mode, only the user profile that is logged on will be included in the migration.

Any user accounts on the computer that have not been used will not be migrated. For example, if you add User1 to the computer, but User1 never logs on, then USMT will not migrate the User1 account.

### User accounts that I excluded were migrated to the destination computer.

**Cause:** The command that you specified might have had conflicting **/ui** and **/ue** options. If a user is specified with the **/ui** option and is also specified to be excluded with either the **/ue** or **/uel** options, the user will be included in the migration. For example, if you specify `/ui:domain1\* /ue:domain1\user1`, then User1 will be migrated because the **/ui** option takes precedence.

**Resolution:** For more information about how to use the **/ui** and **/ue** options together, see the examples in the [ScanState Syntax](usmt-scanstate-syntax.md) topic.

### I am using the /uel option, but many accounts are still being included in the migration.

**Cause** The **/uel** option depends on the last modified date of the users' NTUser.dat file. There are scenarios in which this last modified date might not match the users' last logon date.

**Resolution** This is a limitation of the **/uel** option. You might need to exclude these users manually with the **/ue** option.

### The LoadState tool reports an error as return code 71 and fails to restore a user profile during a migration test.

**Cause:** During a migration test, if you run the ScanState tool on your test computer and then delete user profiles in order to test the LoadState tool on the same computer, you may have a conflicting key present in the registry. Using the **net use** command to remove a user profile will delete folders and files associated with that profile, but will not remove the registry key.

**Resolution:** To delete a user profile, use the **User Accounts** item in Control Panel. To correct an incomplete deletion of a user profile:

1.  Open the registry editor by typing `regedit` at an elevated command prompt.

2.  Navigate to `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList`.

    Each user profile is stored in a System Identifier key under `ProfileList`.

3.  Delete the key for the user profile you are trying to remove.

### Files that were not encrypted before the migration are now encrypted with the account used to run the LoadState tool.

**Cause:** The ScanState tool was run using the **/EFS: copyraw** option to migrate encrypted files and Encrypting File System (EFS) certificates. The encryption attribute was set on a folder that was migrated, but the attribute was removed from file contents of that folder prior to migration.

**Resolution:** Before using the ScanState tool for a migration that includes encrypted files and EFS certificates, you can run the Cipher tool at the command prompt to review and change encryption settings on files and folders. You must remove the encryption attribute from folders that contain unencrypted files or encrypt the contents of all files within an encrypted folder.

To remove encryption from files that have already been migrated incorrectly, you must log on to the computer with the account that you used to run the LoadState tool and then remove the encryption from the affected files.

### The LoadState tool reports an error as return code 71 and a Windows Error 2202 in the log file.

**Cause:** The computer name was changed during an offline migration of a local user profile.

**Resolution:** You can use the **/mu** option when you run the LoadState tool to specify a new name for the user. For example,

``` syntax
loadstate /i:migapp.xml /i:migdocs.xml \\server\share\migration\mystore 
/progress:prog.log /l:load.log /mu:fareast\user1:farwest\user1
```

## <a href="" id="command"></a>Command-line Problems


The following sections describe common command-line problems. Expand the section to see recommended solutions.

### I received the following error message: "Usage Error: You cannot specify a file path with any of the command-line options that exceeds 256 characters."

**Cause:** You might receive this error message in some cases even if you do not specify a long store or file path, because the path length is calculated based on the absolute path. For example, if you run the **scanstate.exe /o store** command from C:\\Program Files\\USMT40, then each character in "`C:\Program Files\USMT40`" will be added to the length of "store" to get the length of the path.

**Resolution:** Ensure that the total path length—the store path plus the current directory—does not exceed 256 characters.

### I received the following error message: "USMT was unable to create the log file(s). Ensure that you have write access to the log directory."

**Cause:** If you are running the ScanState or LoadState tools from a shared network resource, you will receive this error message if you do not specify **/l**.

**Resolution:** To fix this issue in this scenario, specify the **/l:scan.log** or **/l:load.log** option.

## <a href="" id="xml"></a>XML File Problems


The following sections describe common XML file problems. Expand the section to see recommended solutions.

### I used the /genconfig option to create a Config.xml file, but I see only a few applications and components that are in MigApp.xml. Why does Config.xml not contain all of the same applications?

**Cause:** Config.xml will contain only operating system components, applications, and the user document sections that are in both of the .xml files and are installed on the computer when you run the **/genconfig** option. Otherwise, these applications and components will not appear in the Config.xml file.

**Resolution:** Install all of the desired applications on the computer before running the **/genconfig** option. Then run ScanState with all of the .xml files. For example, run the following:

`scanstate /genconfig:config.xml /i:migdocs.xml /i:migapp.xml /v:5 /l:scanstate.log`

### I am having problems with a custom .xml file that I authored, and I cannot verify that the syntax is correct.

**Resolution:** You can load the XML schema (MigXML.xsd), included with USMT, into your XML authoring tool. For examples, see the [Visual Studio Development Center](https://go.microsoft.com/fwlink/p/?LinkId=74513). Then, load your .xml file in the authoring tool to see if there is a syntax error. In addition, see [USMT XML Reference](usmt-xml-reference.md) for more information about using the XML elements.

### <a href="" id="i-am-using-a-migxml-helper-function--but-the-migration-isn-t-working-the-way-i-expected-it-to---how-do-i-troubleshoot-this-issue-"></a>I am using a MigXML helper function, but the migration isn’t working the way I expected it to.  How do I troubleshoot this issue?

**Cause:** Typically, this issue is caused by incorrect syntax used in a helper function. You receive a Success return code, but the files you wanted to migrate did not get collected or applied, or weren’t collected or applied in the way you expected.

**Resolution:** You should search the ScanState or LoadState log for either the component name which contains the MigXML helper function, or the MigXML helper function title, so that you can locate the related warning in the log file.

## <a href="" id="migration"></a>Migration Problems


The following sections describe common migration problems. Expand the section to see recommended solutions.

### Files that I specified to exclude are still being migrated.

**Cause:** There might be another rule that is including the files. If there is a more specific rule or a conflicting rule, the files will be included in the migration.

**Resolution:** For more information, see [Conflicts and Precedence](usmt-conflicts-and-precedence.md) and the Diagnostic Log section in [Log Files](usmt-log-files.md).

### I specified rules to move a folder to a specific location on the destination computer, but it has not migrated correctly.

**Cause:** There might be an error in the XML syntax.

**Resolution:** You can use the USMT XML schema (MigXML.xsd) to write and validate migration .xml files. Also see the XML examples in the following topics:

[Conflicts and Precedence](usmt-conflicts-and-precedence.md)

[Exclude Files and Settings](usmt-exclude-files-and-settings.md)

[Reroute Files and Settings](usmt-reroute-files-and-settings.md)

[Include Files and Settings](usmt-include-files-and-settings.md)

[Custom XML Examples](usmt-custom-xml-examples.md)

### After LoadState completes, the new desktop background does not appear on the destination computer.

There are three typical causes for this issue.

**Cause \#1:**: Some settings such as fonts, desktop backgrounds, and screen-saver settings are not applied by LoadState until after the destination computer has been restarted.

**Resolution:** To fix this issue, log off, and then log back on to see the migrated desktop background.

**Cause \#2:** If the source computer was running Windows® XP and the desktop background was stored in the *Drive*:\\WINDOWS\\Web\\Wallpaper folder—the default folder where desktop backgrounds are stored in Windows XP—the desktop background will not be migrated. Instead, the destination computer will have the default Windows® desktop background. This will occur even if the desktop background was a custom picture that was added to the \\WINDOWS\\Web\\Wallpaper folder. However, if the end user sets a picture as the desktop background that was saved in another location, for example, My Pictures, then the desktop background will migrate.

**Resolution:** Ensure that the desktop background images that you want to migrate are not in the \\WINDOWS\\Web\\Wallpaper folder on the source computer.

**Cause \#3:** If ScanState was not run on Windows XP from an account with administrative credentials, some operating system settings will not migrate. For example, desktop background settings, screen-saver selections, modem options, media-player settings, and Remote Access Service (RAS) connection phone book (.pbk) files and settings will not migrate.

**Resolution:** Run the ScanState and LoadState tools from within an account with administrative credentials.

### <a href="" id="i-included-migapp-xml-in-the-migration--but-some-pst-files-aren-t-migrating-"></a>I included MigApp.xml in the migration, but some PST files aren’t migrating.

**Cause:** The MigApp.xml file migrates only the PST files that are linked to Outlook profiles.

**Resolution:** To migrate PST files that are not linked to Outlook profiles, you must create a separate migration rule to capture these files.

### USMT does not migrate the Start layout

**Description:** You are using USMT to migrate profiles from one installation of Windows 10 to another installation of Windows 10 on different hardware. After migration, the user signs in on the new device and does not have the Start menu layout they had previously configured.

**Cause:** A code change in the Start Menu with Windows 10 version 1607 and later is incompatible with this USMT function.

**Resolution:** The following workaround is available:

1. With the user signed in, back up the Start layout using the following Windows PowerShell command. You can specify a different path if desired:

    ```
    Export-StartLayout -Path "C:\Layout\user1.xml"
    ```
2. Migrate the user's profile with USMT.
3. Before the user signs in on the new device, import the Start layout using the following Windows PowerShell command:

    ```
    Import-StartLayout –LayoutPath "C:\Layout\user1.xml" –MountPath %systemdrive%
    ```

This workaround changes the Default user's Start layout. The workaround does not scale to a mass migrations or multiuser devices, but it can potentially unblock some scenarios. If other users will sign on to the device you should delete layoutmodification.xml from the Default user profile. Otherwise, all users who sign on to that device will use the imported Start layout.

## <a href="" id="bkmk-offline"></a>Offline Migration Problems


The following sections describe common offline migration problems. Expand the section to see recommended solutions.

### Some of my system settings do not migrate in an offline migration.

**Cause:** Some system settings, such as desktop backgrounds and network printers, are not supported in an offline migration. For more information, see [What Does USMT Migrate?](usmt-what-does-usmt-migrate.md)

**Resolution:** In an offline migration, these system settings must be restored manually.

### The ScanState tool fails with return code 26.

**Cause:** A common cause of return code 26 is that a temp profile is active on the source computer. This profile maps to c:\\users\\temp. The ScanState log shows a MigStartupOfflineCaught exception that includes the message "User profile duplicate SID error".

**Resolution:** You can reboot the computer to get rid of the temp profile or you can set MIG\_FAIL\_ON\_PROFILE\_ERROR=0 to skip the error and exclude the temp profile.

### Include and Exclude rules for migrating user profiles do not work the same offline as they do online.

**Cause:** When offline, the DNS server cannot be queried to resolve the user name and SID mapping.

**Resolution:** Use a Security Identifier (SID) to include a user when running the ScanState tool. For example:

``` syntax
Scanstate /ui:S1-5-21-124525095-708259637-1543119021*
```

The wild card (\*) at the end of the SID will migrate the *SID*\_Classes key as well.

You can also use patterns for SIDs that identify generic users or groups. For example, you can use the */ue:\*-500* option to exclude the local administrator accounts. For more information about Windows SIDs, see [this Microsoft Web site](https://go.microsoft.com/fwlink/p/?LinkId=190277).

### My script to wipe the disk fails after running the ScanState tool on a 64-bit system.

**Cause:** The HKLM registry hive is not unloaded after the ScanState tool has finished running.

**Resolution:** Reboot the computer or unload the registry hive at the command prompt after the ScanState tool has finished running. For example, at a command prompt, type:

``` syntax
reg.exe unload hklm\$dest$software
```

## <a href="" id="bkmk-hardlink"></a>Hard-Link Migration Problems


The following sections describe common hard-link migration problems. Expand the section to see recommended solutions.

### EFS files are not restored to the new partition.

**Cause:** EFS files cannot be moved to a new partition with a hard link. The **/efs:hardlink** command-line option is only applicable to files migrated on the same partition.

**Resolution:** Use the **/efs:copyraw** command-line option to copy EFS files during the migration instead of creating hard links, or manually copy the EFS files from the hard-link store.

### The ScanState tool cannot delete a previous hard-link migration store.

**Cause:** The migration store contains hard links to locked files.

**Resolution:** Use the UsmtUtils tool to delete the store or change the store name. For example, at a command prompt, type:

``` syntax
USMTutils /rd <storedir>
```

You should also reboot the machine.





## Related topics


[User State Migration Tool (USMT) Troubleshooting](usmt-troubleshooting.md)

[Frequently Asked Questions](usmt-faq.md)

[Return Codes](usmt-return-codes.md)

[UsmtUtils Syntax](usmt-utilities.md)

 

 





