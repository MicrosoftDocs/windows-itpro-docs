---
title: Compatibility Fix Database Management Strategies and Deployment (Windows 10)
manager: aaroncz
ms.author: frankroj
description: Learn how to deploy your compatibility fixes into an application-installation package or through a centralized compatibility-fix database.
ms.service: windows-client
author: frankroj
ms.date: 10/28/2022
ms.topic: conceptual
ms.subservice: itpro-deploy
---

# Compatibility Fix Database Management Strategies and Deployment

**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

To use fixes in application-compatibility mitigation strategy, define a strategy to manage your custom compatibility-fix database. Typically, you can use one of the two following approaches:

-   Deploying your compatibility fixes as part of an application-installation package.

-   Deploying your compatibility fixes through a centralized compatibility-fix database.

Microsoft provides general recommends the following remedies for improving the management of your custom compatibility-fix databases.

> [!NOTE]
> These recommendations are not based on irrespective of the approach you decide to use. The following are the general recommendations.

-   **Define standards for when you will apply compatibility fixes**

    Ensure that the standards and scenarios for using compatibility fixes are defined, based on your specific business and technology needs.

-   **Define standards for your custom compatibility-fix databases**

     Compatibility fixes must include a version check, so that mapping to particular applications becomes easy. Ensure that your compatibility fixes always, so that the fix won't be applied to newer versions of your applications.

-   **Define your resources responsible for addressing questions and enforcing your standards**

    Ensure you determine who will be responsible for staying current with the technology and standards that are related to your compatibility fixes and custom compatibility-fix databases. As your databases are managed over time, ensure that someone in your organization stays current with the relevant technology.

## Strategies for Deploying Your Compatibility Fixes


We recommend the usage of one of the two strategies to deploy your compatibility fixes into your organization. They are:

-   Deploying your compatibility fixes as part of an application-installation package.

-   Deploying your compatibility fixes through a centralized compatibility-fix database.

Determine which method best meets your organization's deployment needs.

### Deploying Fixes as Part of an Application-Installation Package

One strategy to deploy compatibility fixes is to create a custom compatibility-fix database that contains a single entry that is applied directly to the application-installation package. While this method is the most straightforward one for deployment, it has been shown that this method can become overly complex, especially if you are fixing a large number of applications.

If the following considerations apply to your organization, you should avoid this strategy and instead consider using a centralized compatibility-fix database, as described in the next section.

-   **How many applications require compatibility fixes?**

    Custom compatibility-fix databases are actual databases. Therefore, if you have 1000 applications to be fixed, it will take longer to open and query 1000 single-row databases for a match, instead of a single database with 1000 rows.

-   **Will you be able to track which applications are installed on which computer?**

    You might determine that your initial set of compatibility fixes isn't comprehensive, and that you must deploy an updated version of the compatibility-fix database to resolve the other issues. If you deployed the initial set by using the application-installation package, you'll be required to locate each client computer that is running the application and replace the compatibility fix.

### Deploying Fixes Through a Centralized Compatibility-Fix Database

The other recommended strategy for deploying compatibility fixes into your organization is to create and manage either a single custom compatibility-fix database, or else to create and manage several custom databases for large subsets of your organization. This strategy will help to enforce your company policy and to provide consistent updates for application fixes that you discover later.

This approach tends to work best for organizations that have a well-developed deployment infrastructure in place, with centralized ownership of the process. We recommend that you consider the following before using this approach:

-   Does your organization have the tools required to deploy and update a compatibility-fix database for all of the affected computers?

    If you intend to manage a centralized compatibility-fix database, you must verify that your organization has the required tools to deploy and update all of the affected computers in your organization.

-   Do you have centralized resources that can manage and update the centralized compatibility-fix database?

    Ensure that you've identified the appropriate owners for the deployment process, for the applications, and for the database updates, in addition to determining the process by which compatibility issues can be deployed to specific computers.

### Merging Centralized Compatibility-Fix Databases

If you decide to use the centralized compatibility-fix database deployment strategy, you can merge any of your individual compatibility-fix databases. This provision enables you to create a single custom compatibility-fix database that can be used to search for and determine whether Windows&reg; should apply a fix to a specific executable (.exe) file. We recommend merging your databases based on the following process.

**To merge your custom-compatibility databases**

1.  Verify that your application-compatibility testers are performing their tests on computers with the latest version of your compatibility-fix database. For example, Custom DB1.

2.  If the tester determines that an application requires an extra compatibility fix that isn't a part of the original compatibility-fix database, the tester must create a new custom compatibility database with all of the required information for that single fix, for example, Custom DB2.

3.  The tester applies the new Custom DB2 information to the application and then tests for both the functionality and integration, to ensure that the compatibility issues are addressed.

4.  After the application passes all of the required functionality and integration tests, the tester can send Custom DB2 to the team that manages the central compatibility-fix database.

5.  The team that manages the centralized database opens Custom DB1 and uses the Compatibility Administrator to include the new compatibility fixes that were included in Custom DB2.

    > [!NOTE]  
    > Custom DB1 contains a unique GUID that makes updating the database easier. For example, if you install a new version of the custom compatibility-fix database that uses the same GUID as the previous version, the computer will automatically uninstall the old version.



6.  The centralized management team then redeploys the new version of Custom DB1 to all of the end users in your organization.

### Deploying Your Custom Compatibility-Fix Databases

Deploying your custom compatibility-fix database into your organization requires you to perform the following actions:

1.  Store your custom compatibility-fix database (.sib file) in a location that is accessible to all of your organization's computers.

2.  Use the Sdbinst.exe command-line tool to install the custom compatibility-fix database locally.

In order to meet the two requirements above, we recommend that you use one of the following two methods:

-   **Using a Windows Installer package and a custom script**

    You can package your .sib file and a custom deployment script into a file with the .msi extension, and then deploy the .msi file into your organization.

    > [!IMPORTANT]
    > Ensure that you mark your custom script so that it does not impersonate the calling user. For example, if you use Microsoft&reg; Visual Basic&reg; Scripting Edition (VBScript), the custom action type would be:
    >`msidbCustomActionTypeVBScript + msidbCustomActionTypeInScript + msidbCustomActionTypeNoImpersonate = 0x0006 + 0x0400 + 0x0800 = 0x0C06 = 3078 decimal)`


-   **Using a network share and a custom script**

You can store the .sib file on your network share, and then call to a script available on your specified computers.

> [!IMPORTANT]  
> Ensure that you call the script at a time when it can receive elevated rights. For example, you should call the script by using computer startup scripts instead of a user logon script. You must also ensure that the installation of the custom compatibility-fix database occurs with Administrator rights.



### Example Script for installation of .sib File based on .msi File

The following examples show an installation of a custom compatibility-fix database based on a .msi file.

```
'InstallSDB.vbs
Function Install
Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "sdbinst.exe -q " & CHR(34) & "%ProgramFiles%\MyOrganizationSDB\MyOrg.sdb" & CHR(34), 0, true
WshShell.Run "cmd.exe /c " & CHR(34) & "del " & CHR(34) & "%ProgramFiles%\MyOrganizationSDB\MyOrg.sdb" & CHR(34) & CHR(34), 0
WshShell.Run "reg.exe delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{guidFromMyOrgsSdb}.sdb /f", 0
End Function

Function UnInstall
Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "sdbinst.exe -q -u -g {guidFromMyOrgsSdb}", 0
End Function
```

### Initial Deployment and Updates

Application-compatibility is tested, from which issues are reported, even before a new Windows operating system is deployed. To handle these issues, include the custom compatibility-fix database, which includes all of your known issues, in your corporate image. Later, update your compatibility-fix database; provide the updates by using one of the two mechanisms that are described in the "Deploying Your Custom Compatibility Fix Databases" section.

## Related articles
[Managing Application-Compatibility Fixes and Custom Fix Databases](managing-application-compatibility-fixes-and-custom-fix-databases.md)
