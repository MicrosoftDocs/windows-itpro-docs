---
title: USMT Best Practices (Windows 10)
description: USMT Best Practices
ms.assetid: e3cb1e78-4230-4eae-b179-e6e9160542d2
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

# USMT Best Practices


This topic discusses general and security-related best practices when using User State Migration Tool (USMT) 10.0.

## General Best Practices


-   **Install applications before running the LoadState tool**

    Though it is not always essential, it is best practice to install all applications on the destination computer before restoring the user state. This helps ensure that migrated settings are preserved.

-   **Do not use MigUser.xml and MigDocs.xml together**

    If you use both .xml files, some migrated files may be duplicated if conflicting instructions are given about target locations. You can use the **/genmigxml** command-line option to determine which files will be included in your migration, and to determine if any modifications are necessary. For more information, see [Identify File Types, Files, and Folders](usmt-identify-file-types-files-and-folders.md).

-   **Use MigDocs.xml for a better migration experience**

    If your data set is unknown or if many files are stored outside of the standard user-profile folders, the MigDocs.xml file is a better choice than the MigUser.xml file, because the MigDocs.xml file will gather a broader scope of data. The MigDocs.xml file migrates folders of data based on location, and on registered file type by querying the registry for registered application extensions. The MigUser.xml file migrates only the files with the specified file extensions.

-   **Close all applications before running either the ScanState or LoadState tools**

    Although using the **/vsc** switch can allow the migration of many files that are open with another application it is a best practice to close all applications in order to ensure all files and settings migrate. Without the **/vsc** or **/c** switch USMT will fail when it cannot migrate a file or setting. When you use the **/c** option USMT will ignore any files or settings that it cannot migrate and log an error each time.

-   **Log off after you run the LoadState**

    Some settings, such as fonts, wallpaper, and screensaver settings, will not take effect until the next time the user logs on. For this reason, you should log off after you run the LoadState tool.

-   **Managed environment**

    To create a managed environment, you can move all of the end user’s documents into My Documents (%CSIDL\_PERSONAL%). We recommend that you migrate files into the smallest-possible number of folders on the destination computer. This will help you to clean up files on the destination computer, if the LoadState command fails before completion.

-   **Chkdsk.exe**

    We recommend that you run Chkdsk.exe before running the ScanState and LoadState tools. Chkdsk.exe creates a status report for a hard disk drive and lists and corrects common errors. For more information about the Chkdsk.exe tool, see [Chkdsk](https://go.microsoft.com/fwlink/p/?LinkId=140244).

-   **Migrate in groups**

    If you decide to perform the migration while users are using the network, it is best to migrate user accounts in groups. To minimize the impact on network performance, determine the size of the groups based on the size of each user account. Migrating in phases also allows you to make sure each phase is successful before starting the next phase. Using this method, you can make any necessary modifications to your plan between groups.

## Security Best Practices


As the authorized administrator, it is your responsibility to protect the privacy of the users and maintain security during and after the migration. In particular, you must consider the following issues:

-   **Encrypting File System (EFS)**

    Take extreme caution when migrating encrypted files, because the end user does not need to be logged on to capture the user state. By default, USMT fails if an encrypted file is found. For more information about EFS best practices, see this article in the [Microsoft Knowledge Base](https://go.microsoft.com/fwlink/p/?linkid=163). For specific instructions about EFS best practices, see [Migrate EFS Files and Certificates](usmt-migrate-efs-files-and-certificates.md).

    **Important**  
    If you migrate an encrypted file without also migrating the certificate, end users will not be able to access the file after the migration.

     

-   **Encrypt the store**

    Consider using the **/encrypt** option with the ScanState command and the **/decrypt** option with the LoadState command. However, use extreme caution with this set of options, because anyone who has access to the ScanState command-line script also has access to the encryption key.

-   **Virus Scan**

    We recommend that you scan both the source and destination computers for viruses before running USMT. In addition, you should scan the destination computer image. To help protect data from viruses, we strongly recommend running an antivirus utility before migration.

-   **Maintain security of the file server and the deployment server**

    We recommend that you manage the security of the file and deployment servers. It is important to make sure that the file server where you save the store is secure. You must also secure the deployment server, to ensure that the user data that is in the log files is not exposed. We also recommend that you only transmit data over a secure Internet connection, such as a virtual private network. For more information about network security, see [Microsoft Security Compliance Manager](https://go.microsoft.com/fwlink/p/?LinkId=215657).

-   **Password Migration**

    To ensure the privacy of the end users, USMT does not migrate passwords, including those for applications such as Windows Live™ Mail, Microsoft Internet Explorer®, as well as Remote Access Service (RAS) connections and mapped network drives. It is important to make sure that end users know their passwords.

-   **Local Account Creation**

    Before you migrate local accounts, see the Migrating Local Accounts section in the [Identify Users](usmt-identify-users.md) topic.

## <a href="" id="bkmk-bestpractices"></a>XML File Best Practices


-   **Specify the same set of mig\*.xml files in both the ScanState and the LoadState tools**

    If you used a particular set of mig\*.xml files in the ScanState tool, either called through the "/auto" option, or individually through the "/i" option, then you should use same option to call the exact same mig\*.xml files in the LoadState tool.

-   **The &lt;CustomFileName&gt; in the migration urlid should match the name of the file**

    Although it is not a requirement, it is good practice for &lt;CustomFileName&gt; to match the name of the file. For example, the following is from the MigApp.xml file:

    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    <migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/migapp">
    ```

-   **Use the XML Schema (MigXML.xsd) when authoring .xml files to validate syntax**

    The MigXML.xsd schema file should not be included on the command line or in any of the .xml files.

-   **Use the default migration XML files as models**

    To create a custom .xml file, you can use the migration .xml files as models to create your own. If you need to migrate user data files, model your custom .xml file on MigUser.xml. To migrate application settings, model your custom .xml file on the MigApp.xml file.

-   **Consider the impact on performance when using the &lt;context&gt; parameter**

    Your migration performance can be affected when you use the &lt;context&gt; element with the &lt;component&gt; element; for example, as in when you want to encapsulate logical units of file- or path-based &lt;include&gt; and &lt;exclude&gt; rules.

    In the **User** context, a rule is processed one time for each user on the system.

    In the **System** context, a rule is processed one time for the system.

    In the **UserAndSystem** context, a rule is processed one time for each user on the system and one time for the system.

    **Note**  
    The number of times a rule is processed does not affect the number of times a file is migrated. The USMT migration engine ensures that each file migrates only once.

     

-   **We recommend that you create a separate .xml file instead of adding your .xml code to one of the existing migration .xml files**

    For example, if you have code that migrates the settings for an application, you should not just add the code to the MigApp.xml file.

-   **You should not create custom .xml files to alter the operating system settings that are migrated**

    These settings are migrated by manifests and you cannot modify those files. If you want to exclude certain operating system settings from the migration, you should create and modify a Config.xml file.

-   **You can use the asterisk (\*) wildcard character in any migration XML file that you create**

    **Note**  
    The question mark is not valid as a wildcard character in USMT .xml files.

     

## Related topics


[Migration Store Encryption](usmt-migration-store-encryption.md)

[Plan Your Migration](usmt-plan-your-migration.md)

 

 





