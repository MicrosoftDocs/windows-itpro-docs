---
title: Migrate Application Settings
description: Learn how to author a custom migration .xml file that migrates the settings of an application that isn't migrated by default using MigApp.xml.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 12/05/2023
ms.topic: article
ms.technology: itpro-deploy
---

# Migrate Application Settings

You can create a custom **.xml** file to migrate specific line-of-business application settings or to change the default migration behavior of the User State Migration Tool (USMT). For ScanState and LoadState to use this file, you must specify the custom **.xml** file on both command lines.

This article defines how to author a custom migration **.xml** file that migrates the settings of an application that isn't migrated by default using `MigApp.xml`. You should migrate the settings after you install the application, but before the user runs the application for the first time.

This article doesn't contain information about how to migrate applications that store settings in an application-specific store, only the applications that store the information in files or in the registry. It also doesn't contain information about how to migrate the data that users create using the application. For example, if the application creates .doc files using a specific template, this article doesn't discuss how to migrate the .doc files and templates themselves.

## Before you begin

You should identify a test computer that contains the operating system of your source computers, and the application whose settings you want to migrate. For example, if you're planning on migrating from Windows 10 to Windows 11, install Windows 10 on your test computer and then install the application.

## Step 1: Verify that the application is installed on the source computer, and that it's the same version as the version to be installed on the destination computer

Before USMT migrates the settings, you need it to check whether the application is installed on the source computer, and that it's the correct version. If the application isn't installed on the source computer, you probably don't want USMT to spend time searching for the application's settings. More importantly, if USMT collects settings for an application that isn't installed, it could migrate settings that cause the destination computer to function incorrectly. You should also investigate whether there's more than one version of the application because the new version could store the settings in a different location.  Mismatched application versions could lead to unexpected results on the destination computer.

There are many ways to detect if an application is installed. The best practice is to check for an application uninstall key in the registry, and then search the computer for the executable file that installed the application. It's important that you check for both of these items, because sometimes different versions of the same application share the same uninstall key. Even if the key is there, it could correspond to a different version of the application that you want.

### Check the registry for an application uninstall key

When many applications are installed (especially those installed using the Microsoft® Windows® Installer technology), an application uninstall key is created under:

`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall`

For example, when Adobe Acrobat Reader 7 is installed, it creates a key named:

`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall \{AC76BA86-7AD7-1033-7B44-A70000000000}`

Therefore, if a computer contains this key, then Adobe Acrobat Reader 7 is installed on the computer. You can check for the existence of a registry key using the `DoesObjectExist` helper function.

Usually, you can find this key by searching under

`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall`

for the name of the application, the name of the application executable file, or for the name of the company that makes the application. You can use the Registry Editor, `Regedit.exe` located in the `%SystemRoot%`, to search the registry.

### Check the file system for the application executable file

You should also check the application binaries for the executable that installed the application. To check for application binaries, determine where the application is installed and what the name of the executable is. Most applications store the installation location of the application binaries in the registry. You should search the registry on one of the following items until you find the registry value that contains the installation path:

- The name of the application.
- The name of the application executable.
- The name of the company that makes the application.

Once the path to the application executable is determined, you can use the `DoesFileVersionMatch` helper function to check for the correct version of the application executable. For an example of how to use the `DoesFileVersionMatch` helper function, see the Windows Live™ Messenger section of the `MigApp.xml` file.

## Step 2: Identify settings to collect and determine where each setting is stored on the computer

Next, you should go through the user interface and make a list of all of the available settings. You can reduce the list if there are settings that you don't want to migrate. To determine where each setting is stored, change the setting. As the setting is changed, monitor the activity on the registry and the file system. You don't need to migrate the binary files and registry settings that are created when the application is installed. When the application is reinstalled onto the destination computer, it recreates those settings. You only need to migrate the settings that are customized.

### How to determine where each setting is stored

1. Download a file and registry monitoring tool, such as [Process Monitor (Procmon)](/sysinternals/downloads/procmon), from the [Sysinternals Web site](/sysinternals/).

1. Shut down as many applications as possible to limit the registry and file system activity on the computer.

1. Filter the output of the tools so it only displays changes being made by the application.

     > [!NOTE]
     >
     > Most applications store their settings under the user profile. That is, the settings stored in the file system are under the `%UserProfile%` directory, and the settings stored in the registry are under the `HKEY_CURRENT_USER` hive. For these applications, you can filter the output of the file and registry monitoring tools to show activity only under these locations. This filtering considerably reduces the amount of output that needs to be examined.

1. Start the monitoring tool(s), change a setting, and look for registry and file system writes that occurred when you changed the setting. Make sure the changes you make actually take effect. For example, if you're changing a setting in Microsoft Word by selecting a check box in the **Options** dialog box, the change typically doesn't take effect until you close the dialog box by selecting **OK**.

1. When the setting is changed, note the changes to the file system and registry. There could be more than one file or registry values for each setting. You should identify the minimal set of file and registry changes that are required to change this setting. This set of files and registry keys is what you need to migrate in order to migrate the setting.

     > [!NOTE]
     >
     > Changing an application setting invariably leads to writing to registry keys. If possible, filter the output of the file and registry monitor tool to display only writes to files and registry keys/values.

## Step 3: Identify how to apply the gathered settings

If the version of the application on the source computer is the same as the one on the destination computer, then you don't have to modify the collected files and registry keys. By default, USMT migrates the files and registry keys from the source location to the corresponding location on the destination computer. For example, if a file was collected from the `C:\Documents and Settings\User1\My Documents` folder and the profile directory on the destination computer is located at `D:\Users\User1`, then USMT automatically migrates the file to `D:\Users\User1\My Documents`. However, you may need to modify the location of some settings in the following three cases:

### Case 1: The version of the application on the destination computer is newer than the one on the source computer

In this case, the newer version of the application may be able to read the settings from the source computer without modification. That is, the data collected from an older version of the application is sometimes compatible with the newer version of the application. However, you may need to modify the setting location if either of the following conditions is true:

- **The newer version of the application has the ability to import settings from an older version.** This mapping usually happens the first time a user runs the newer version after the settings are migrated. Some applications import settings automatically after settings are migrated. However, other applications only import settings if the application was upgraded from the older version. When the application is upgraded, a set of files and/or registry keys is installed that indicates the older version of the application was previously installed. If you perform a clean installation of the newer version, the computer doesn't contain these files and registry keys. If the files and registry keys aren't present, the mapping doesn't occur. In order to trick the newer version of the application into initiating this import process, your migration script may need to create these files and/or registry keys on the destination computer.

    To identify which files and/or registry keys/values need to be created so that the import works:

    1. Upgrade the older version of the application to the newer one.
    1. Monitor the changes made to the file system and registry by using the same process described in [How to determine where each setting is stored](#how-to-determine-where-each-setting-is-stored).

    Once you know the set of files that the computer needs, you can use the **&lt;addObjects&gt;** element to add them to the destination computer.

- **The newer version of the application can't read settings from the source computer and it's also unable to import the settings into the new format.** In this case, create a mapping for each setting from the old locations to the new locations. To create the mapping, determine where the newer version stores each setting using the process described in [How to determine where each setting is stored](#how-to-determine-where-each-setting-is-stored). After creating the mapping, apply the settings to the new location on the destination computer using the **&lt;locationModify&gt;** element, and the `RelativeMove` and `ExactMove` helper functions.

### Case 2: The destination computer already contains settings for the application

We recommend that you migrate the settings after you install the application, but before the user runs the application for the first time. We recommend this process because this process ensures that there are no settings on the destination computer when you migrate the settings. If you must install the application before the migration, you should delete any existing settings using the **&lt;destinationCleanup&gt;** element. If for any reason you want to preserve the settings that are on the destination computer, you can use the **&lt;merge&gt;** element and `DestinationPriority` helper function.

### Case 3: The application overwrites settings when installed

We recommend that you migrate the settings after you install the application, but before the user runs the application for the first time. We recommend this process because this process ensures that there are no settings on the destination computer when you migrate the settings. Also, when some applications are installed, they overwrite any existing settings that are on the computer. In this scenario, if you migrated the data before you installed the application, your customized settings would be overwritten. This scenario is common for applications that store settings in locations that are outside of the user profile (typically these settings are settings that apply to all users). These universal settings are sometimes overwritten when an application is installed, and they're replaced by default values. To avoid this problem, you must install these applications before migrating the files and settings to the destination computer. By default with USMT, data from the source computer overwrites data that already exists in the same location on the destination computer.

## Step 4: Create the migration XML component for the application

After completing steps 1 through 3, create a custom migration **.xml** file that migrates the application based on the information that you now have. You can use the `MigApp.xml` file as a model because it contains examples of many of the concepts discussed in this article. You can also see [Custom XML Examples](usmt-custom-xml-examples.md) for another sample **.xml** file.

> [!NOTE]
>
> We recommend creating a separate **.xml** file instead of adding a script to the `MigApp.xml` file. A separate **.xml** file is recommended because the `MigApp.xml` file is a large file and it's difficult to read and edit. In addition, if USMT is reinstalled, the `MigApp.xml` file is overwritten with the default version of the file and the customized version is lost.

> [!IMPORTANT]
>
> Some applications store information in the user profile, such as application installation paths, the computer name, etc., shouldn't be migrated. You should make sure to exclude these files and registry keys from the migration.

Your script should do the following actions:

1. Check if the correct version of the application is installed:

    - Search for the installation uninstall key under `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall` using the `DoesObjectExist` helper function.

    - Check for the correct version of the application executable file using the `DoesFileVersionMatch` helper function.

2. If the correct version of the application is installed, then ensure that each setting is migrated to the appropriate location on the destination computer.

    - If the versions of the applications are the same on both the source and destination computers, migrate each setting using the **&lt;include&gt;** and **&lt;exclude&gt;** elements.

    - If the version of the application on the destination computer is newer than the one on the source computer, and the application can't import the settings, your script should either:
        1. Add the set of files that trigger the import using the **&lt;addObjects&gt;** element
        2. Create a mapping that applies the old settings to the correct location on the destination computer using the **&lt;locationModify&gt;** element, and the `RelativeMove` and `ExactMove` helper functions.

    - If you must install the application before migrating the settings, delete any settings that are already on the destination computer using the **&lt;destinationCleanup&gt;** element.

For information about the **.xml** elements and helper functions, see [XML Elements Library](usmt-xml-elements-library.md).

## Step 5: Test the application settings migration

On a test computer, install the operating system that will be installed on the destination computers. For example, if you're planning on migrating from Windows 10 to Windows 11, install Windows 11, and then install the application in Windows 11. Next, run LoadState on the test computer and verify that all settings migrate. Make corrections if necessary and repeat the process until all the necessary settings are migrated correctly.

To speed up the time it takes to collect and migrate the data, you can migrate only one user at a time. You can also exclude all other components from the migration except the application that you're testing. To specify only **User1** in the migration, enter:

```cmd
/ue:*\* /ui:user1
```

For more information, see the [Exclude files and settings](usmt-exclude-files-and-settings.md) article and the [User options](usmt-scanstate-syntax.md#user-options) section in the [ScanState syntax](usmt-scanstate-syntax.md) article. To troubleshoot a problem, check the progress log, the ScanState log, and the LoadState log. The logs contain warnings and errors that could point to problems with the migration.

## Related articles

- [USMT XML reference](usmt-xml-reference.md)
- [Conflicts and precedence](usmt-conflicts-and-precedence.md)
- [XML elements library](usmt-xml-elements-library.md)
- [Log files](usmt-log-files.md)
