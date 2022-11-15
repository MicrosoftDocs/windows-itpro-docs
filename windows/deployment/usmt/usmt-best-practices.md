---
title: USMT Best Practices (Windows 10)
description: This article discusses general and security-related best practices when using User State Migration Tool (USMT) 10.0.
ms.custom: seo-marvel-apr2020
ms.reviewer: 
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# USMT best practices

This article discusses general and security-related best practices when using User State Migration Tool (USMT) 10.0.

## General best practices

- **Install applications before running the LoadState tool**

    Though it isn't always essential, it's best practice to install all applications on the destination computer before restoring the user state. Installing applications before restoring user state helps ensure that migrated settings are preserved.

- **Don't use MigUser.xml and MigDocs.xml together**

    If you use both .xml files, some migrated files may be duplicated if conflicting instructions are given about target locations. You can use the `/genmigxml` command-line option to determine which files will be included in your migration, and to determine if any modifications are necessary. For more information, see [Identify file types, files, and folders](usmt-identify-file-types-files-and-folders.md).

- **Use MigDocs.xml for a better migration experience**

    If your data set is unknown or if many files are stored outside of the standard user-profile folders, the `MigDocs.xml` file is a better choice than the `MigUser.xml` file, because the `MigDocs.xml` file will gather a broader scope of data. The `MigDocs.xml` file migrates folders of data based on location, and on registered file type by querying the registry for registered application extensions. The `MigUser.xml` file migrates only the files with the specified file extensions.

- **Close all applications before running either the ScanState or LoadState tools**

    Although using the `/vsc` switch can allow the migration of many files that are open with another application, it's a best practice to close all applications in order to ensure all files and settings migrate. Without the `/vsc` or `/c` switch USMT will fail when it can't migrate a file or setting. When you use the `/c` option, USMT will ignore any files or settings that it can't migrate and log an error each time.

- **Log off after you run the LoadState**

    Some settings, such as fonts, wallpaper, and screensaver settings, won't take effect until the next time the user logs on. For this reason, you should sign out after you run the LoadState tool.

- **Managed environment**

    To create a managed environment, you can move all of the end user's documents into My Documents (%CSIDL\_PERSONAL%). We recommend that you migrate files into the smallest-possible number of folders on the destination computer. Minimizing folders will help you to clean up files on the destination computer, if the `LoadState.exe` command fails before completion.

- **Chkdsk.exe**

    We recommend that you run **Chkdsk.exe** before running the ScanState and LoadState tools. **Chkdsk.exe** creates a status report for a hard disk drive and lists and corrects common errors. For more information about the **Chkdsk.exe** tool, see [Chkdsk](/previous-versions/windows/it-pro/windows-xp/bb490876(v=technet.10)).

- **Migrate in groups**

    If you decide to perform the migration while users are using the network, it's best to migrate user accounts in groups. To minimize the impact on network performance, determine the size of the groups based on the size of each user account. Migrating in phases also allows you to make sure each phase is successful before starting the next phase. Using this method, you can make any necessary modifications to your plan between groups.

## Security best practices

As the authorized administrator, it is your responsibility to protect the privacy of the users and maintain security during and after the migration. In particular, you must consider the following issues:

- **Encrypting File System (EFS)**

    Take extreme caution when migrating encrypted files, because the end user doesn't need to be logged on to capture the user state. By default, USMT fails if an encrypted file is found. For specific instructions about EFS best practices, see [Migrate EFS Files and Certificates](usmt-migrate-efs-files-and-certificates.md).

    > [!NOTE]
    > If you migrate an encrypted file without also migrating the certificate, end users will not be able to access the file after the migration.

- **Encrypt the store**

    Consider using the `/encrypt` option with the `ScanState.exe` command and the `/decrypt` option with the `LoadState.exe` command. However, use extreme caution with this set of options, because anyone who has access to the `ScanState.exe` command-line script also has access to the encryption key.

- **Virus Scan**

    We recommend that you scan both the source and destination computers for viruses before running USMT. In addition, you should scan the destination computer image. To help protect data from viruses, we strongly recommend running an antivirus utility before migration.

- **Maintain security of the file server and the deployment server**

    We recommend that you manage the security of the file and deployment servers. It's important to make sure that the file server where you save the store is secure. You must also secure the deployment server, to ensure that the user data that is in the log files isn't exposed. We also recommend that you only transmit data over a secure Internet connection, such as a virtual private network. For more information about network security, see [Microsoft Security Compliance Manager](https://go.microsoft.com/fwlink/p/?LinkId=215657).

- **Password Migration**

    To ensure the privacy of the end users, USMT doesn't migrate passwords, including passwords for applications such as Windows Live™ Mail, Microsoft Internet Explorer®, and Remote Access Service (RAS) connections and mapped network drives. It's important to make sure that end users know their passwords.

- **Local Account Creation**

    Before you migrate local accounts, see the Migrating Local Accounts section in the [Identify Users](usmt-identify-users.md) article.

## XML file best practices

- **Specify the same set of mig\*.xml files in both the ScanState and the LoadState tools**

    If you used a particular set of mig\*.xml files in the ScanState tool, either called through the `/auto` option, or individually through the `/i` option, then you should use same option to call the exact same mig\*.xml files in the LoadState tool.

- **The &lt;CustomFileName&gt; in the migration urlid should match the name of the file**

    Although it isn't a requirement, it's good practice for **&lt;CustomFileName&gt;** to match the name of the file. For example, the following example is from the `MigApp.xml` file:

    ``` xml
    <?xml version="1.0" encoding="UTF-8"?>
    <migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/migapp">
    ```

- **Use the XML Schema (MigXML.xsd) when authoring .xml files to validate syntax**

    The `MigXML.xsd` schema file shouldn't be included on the command line or in any of the .xml files.

- **Use the default migration XML files as models**

    To create a custom .xml file, you can use the migration .xml files as models to create your own. If you need to migrate user data files, model your custom .xml file on `MigUser.xml`. To migrate application settings, model your custom .xml file on the `MigApp.xml` file.

- **Consider the impact on performance when using the &lt;context&gt; parameter**

    Your migration performance can be affected when you use the **&lt;context&gt;** element with the **&lt;component&gt;** element; for example, as in when you want to encapsulate logical units of file- or path-based **&lt;include&gt;** and **&lt;exclude&gt;** rules.

    In the **User** context, a rule is processed one time for each user on the system.

    In the **System** context, a rule is processed one time for the system.

    In the **UserAndSystem** context, a rule is processed one time for each user on the system and one time for the system.

    > [!NOTE]
    > The number of times a rule is processed does not affect the number of times a file is migrated. The USMT migration engine ensures that each file migrates only once.

- **We recommend that you create a separate .xml file instead of adding your .xml code to one of the existing migration .xml files**

    For example, if you have code that migrates the settings for an application, you shouldn't just add the code to the `MigApp.xml` file.

- **You should not create custom .xml files to alter the operating system settings that are migrated**

    These settings are migrated by manifests and you can't modify those files. If you want to exclude certain operating system settings from the migration, you should create and modify a `Config.xml` file.

- **You can use the asterisk (\*) wildcard character in any migration XML file that you create**

    > [!NOTE]
    > The question mark is not valid as a wildcard character in USMT .xml files.

## Related articles

[Migration store encryption](usmt-migration-store-encryption.md)

[Plan your migration](usmt-plan-your-migration.md)
