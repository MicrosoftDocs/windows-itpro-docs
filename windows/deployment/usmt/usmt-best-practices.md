---
title: USMT Best Practices
description: This article discusses general and security-related best practices when using User State Migration Tool (USMT).
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

# USMT best practices

This article discusses general and security-related best practices when using User State Migration Tool (USMT).

## General best practices

- **Install applications before running the LoadState tool.**

  Though it isn't always essential, it's best practice to install all applications on the destination computer before restoring the user state. Installing applications before restoring user state helps ensure that migrated settings are preserved.

- **Don't use MigUser.xml and MigDocs.xml together.**

  If both `MigUser.xml` and `MigDocs.xml` are used together, some migrated files can be duplicated if conflicting instructions are given about target locations. The `/genmigxml` command-line option can be used to determine which files are included in the migration, and to determine if any modifications are necessary. For more information, see [Identify file types, files, and folders](usmt-identify-file-types-files-and-folders.md).

- **Use MigDocs.xml for a better migration experience.**

  If the data set is unknown or if many files are stored outside of the standard user-profile folders, the `MigDocs.xml` file is a better choice than the `MigUser.xml` file, because the `MigDocs.xml` file gathers a broader scope of data. The `MigDocs.xml` file migrates folders of data based on location, and on registered file type by querying the registry for registered application extensions. The `MigUser.xml` file migrates only the files with the specified file extensions.

- **Close all applications before running either the ScanState or LoadState tools.**

  Although using the `/vsc` switch can allow the migration of many files that are open with another application, it's a best practice to close all applications in order to ensure all files and settings migrate. Without the `/vsc` or `/c` switch, USMT fails when it can't migrate a file or setting. When the `/c` option is used, USMT ignores any files or settings that it can't migrate and log an error each time.

- **Log off after running the LoadState.**

  Some settings, such as fonts, wallpaper, and screensaver settings, won't take effect until the next time the user logs on. For this reason, sign out after running the **LoadState** tool.

- **Managed environment.**

  To create a managed environment, all of the end user's documents can be moved into the **Documents** folder (%CSIDL\_PERSONAL%). Microsoft recommends migrating files into the smallest-possible number of folders on the destination computer. Minimizing folders helps to clean up files on the destination computer if the `LoadState.exe` command fails before completion.

- **Chkdsk.exe.**

  Microsoft recommends running **Chkdsk.exe** before running the **ScanState** and **LoadState** tools. **Chkdsk.exe** creates a status report for a hard disk drive and lists and corrects common errors. For more information about the **Chkdsk.exe** tool, see [Chkdsk](/windows-server/administration/windows-commands/chkdsk).

- **Migrate in groups.**

  If the migration is performed while users are using the network, it's best to migrate user accounts in groups. To minimize the effect on network performance, determine the size of the groups based on the size of each user account. Migrating in phases also allows making sure each phase is successful before starting the next phase. When this method is, any necessary modifications can be made to the plan between groups.

## Security best practices

As the authorized administrator, it's the responsibility to protect the privacy of the users and maintain security during and after the migration. In particular, the following issues must be considered:

- **Encrypting File System (EFS).**

  Take extreme caution when migrating encrypted files, because the end user doesn't need to be logged on to capture the user state. By default, USMT fails if an encrypted file is found. For specific instructions about EFS best practices, see [Migrate EFS Files and Certificates](usmt-migrate-efs-files-and-certificates.md).

  > [!NOTE]
  >
  > If an encrypted file is migrated without also migrating the certificate, end users won't be able to access the file after the migration.

- **Encrypt the store.**

  Consider using the `/encrypt` option with the `ScanState.exe` command and the `/decrypt` option with the `LoadState.exe` command. However, use extreme caution with this set of options, because anyone who has access to the `ScanState.exe` command-line script also has access to the encryption key.

- **Virus Scan.**

  Microsoft recommends to scan both the source and destination computers for viruses before running USMT. In addition, the destination computer image should be scanned. To help protect data from viruses, Microsoft strongly recommends running an antivirus utility before migration.

- **Maintain security of the file server and the deployment server.**

  Microsoft recommends managing the security of the file and deployment servers. It's important to make sure that the file server where the store is saved is secure. The deployment server must also be secured to ensure that the user data that is in the log files isn't exposed. Microsoft also recommends to only transmit data over a secure network connection, such as a virtual private network. For more information about network security, see [Microsoft Security Compliance Manager](https://www.microsoft.com/download/details.aspx?id=53353).

- **Password Migration.**

  To ensure the privacy of the end users, USMT doesn't migrate passwords, including passwords for applications or mapped network drives. It's important to make sure that end users know their passwords.

- **Local Account Creation.**

  Before local accounts are migrated, see the Migrating Local Accounts section in the [Identify Users](usmt-identify-users.md) article.

## XML file best practices

- **Specify the same set of mig\*.xml files in both the ScanState and the LoadState tools.**

  If a particular set of mig\*.xml files are used with the **ScanState** tool, either called through the `/auto` option, or individually through the `/i` option, then the same option should be used to call the exact same mig\*.xml files in the **LoadState** tool.

- **The \<CustomFileName\> in the migration urlid should match the name of the file.**

  Although it isn't a requirement, it's good practice for **\<CustomFileName\>** to match the name of the file. For example, the following example is from the `MigApp.xml` file:

  ```xml
  <?xml version="1.0" encoding="UTF-8"?>
  <migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/migapp">
  ```

- **Use the XML Schema (MigXML.xsd) when authoring .xml files to validate syntax.**

  The `MigXML.xsd` schema file shouldn't be included on the command line or in any of the **.xml** files.

- **Use the default migration XML files as models.**

  To create a custom **.xml** file, migration **.xml** files can be used as models to create customized versions. If user data files need to be migrated, model the custom **.xml** file on `MigUser.xml`. To migrate application settings, model the custom **.xml** file on the `MigApp.xml` file.

- **Consider the impact on performance when using the \<context\> parameter.**

  The migration performance can be affected when the **\<context\>** element is used with the **\<component\>** element. For example, when encapsulating logical units of file- or path-based **\<include\>** and **\<exclude\>** rules.

  In the **User** context, a rule is processed one time for each user on the system.

  In the **System** context, a rule is processed one time for the system.

  In the **UserAndSystem** context, a rule is processed one time for each user on the system and one time for the system.

  > [!NOTE]
  >
  > The number of times a rule is processed doesn't affect the number of times a file is migrated. The USMT migration engine ensures that each file migrates only once.

- **Microsoft recommends to create a separate .xml file instead of adding .xml code to one of the existing migration .xml files.**

  For example, for code that migrates the settings for an application, the code shouldn't just be added to the `MigApp.xml` file.

- **Custom .xml files shouldn't be created to alter the operating system settings that are migrated.**

  Manifest files determine what settings are migrated. Manifest files can't be modified. Since manifest files can't be modified, to exclude certain operating system settings from the migration, create and modify a `Config.xml` file instead.

- **The asterisk (\*) wildcard character can be used in any migration XML file that is created.**

  > [!NOTE]
  >
  > The question mark isn't valid as a wildcard character in USMT **.xml** files.

## Related articles

- [Migration store encryption](usmt-migration-store-encryption.md).
- [Plan the migration](usmt-plan-your-migration.md).
