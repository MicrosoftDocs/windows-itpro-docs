---
title: Compatibility Fix Database Management Strategies and Deployment (Windows 10)
ms.assetid: fdfbf02f-c4c4-4739-a400-782204fd3c6c
ms.reviewer: 
manager: laurawi
ms.author: greglin
description: 
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Compatibility Fix Database Management Strategies and Deployment


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

After you determine that you will use compatibility fixes in your application-compatibility mitigation strategy, you must define a strategy to manage your custom compatibility-fix database. Typically, you can use one of two approaches:

-   Deploying your compatibility fixes as part of an application-installation package.

-   Deploying your compatibility fixes through a centralized compatibility-fix database.

Regardless of which approach you decide to use in your organization, Microsoft provides the following general recommendations for improving the management of your custom compatibility-fix databases:

-   **Define standards for when you will apply compatibility fixes.**

    You must define the standards and scenarios for using compatibility fixes, based on your specific business and technology needs.

-   **Define standards for your custom compatibility-fix databases.**

    You must define how to associate your compatibility fixes to particular applications. For example, you might want to ensure that your compatibility fixes always include a version check, so that a fix will not be applied to newer versions of your applications.

-   **Define your resources responsible for addressing questions and enforcing your standards.**

    You must determine who will be responsible for staying current with the technology and standards related to your compatibility fixes and custom compatibility-fix databases. As your databases are managed over time, you must ensure that someone in your organization stays current with the relevant technology.

## Strategies for Deploying Your Compatibility Fixes


We recommend that you use one of two strategies to deploy your compatibility fixes into your organization. They are:

-   Deploying your compatibility fixes as part of an application-installation package.

-   Deploying your compatibility fixes through a centralized compatibility-fix database.

You must determine which method best meets your organization's deployment needs.

### Deploying Fixes as Part of an Application-Installation Package

One strategy for deploying compatibility fixes is to create a custom compatibility-fix database that contains a single entry that is applied directly to the application-installation package. While this is the most straightforward method of deployment, it has been shown that this method can become overly complex, especially if you are fixing a large number of applications.

If the following considerations apply to your organization, you should avoid this strategy and instead consider using a centralized compatibility-fix database, as described in the next section.

-   **How many applications require compatibility fixes?**

    Custom compatibility-fix databases are actual databases. Therefore, if you have 1000 applications to be fixed, it will take longer to open and query 1000 single-row databases for a match, instead of a single database with 1000 rows.

-   **Will you be able to track which applications are installed on which computer?**

    You might determine that your initial set of compatibility fixes is not comprehensive, and that you must deploy an updated version of the compatibility-fix database to resolve the additional issues. If you deployed the initial set by using the application-installation package, you will be required to locate each client computer that is running the application and replace the compatibility fix.

### Deploying Fixes Through a Centralized Compatibility-Fix Database

The other recommended strategy for deploying compatibility fixes into your organization is to create and manage either a single custom compatibility-fix database, or else to create and manage several custom databases for large subsets of your organization. This strategy will help to enforce your company policy and to provide consistent updates for application fixes that you discover later.

This approach tends to work best for organizations that have a well-developed deployment infrastructure in place, with centralized ownership of the process. We recommend that you consider the following before using this approach:

-   Does your organization have the tools required to deploy and update a compatibility-fix database for all of the effected computers?

    If you intend to manage a centralized compatibility-fix database, you must verify that your organization has the required tools to deploy and update all of the affected computers in your organization.

-   Do you have centralized resources that can manage and update the centralized compatibility-fix database?

    You must ensure that you have identified the appropriate owners for the deployment process, for the applications, and for the database updates, in addition to determining the process by which compatibility issues can be deployed to specific computers.

### Merging Centralized Compatibility-Fix Databases

If you decide to use the centralized compatibility-fix database deployment strategy, you can merge any of your individual compatibility-fix databases. This enables you to create a single custom compatibility-fix database that can be used to search for and determine whether Windows® should apply a fix to a specific executable (.exe) file. We recommend merging your databases based on the following process.

**To merge your custom-compatibility databases**

1.  Verify that your application-compatibility testers are performing their tests on computers with the latest version of your compatibility-fix database. For example, Custom DB1.

2.  If the tester determines that an application requires an additional compatibility fix that is not a part of the original compatibility-fix database, he or she must create a new custom compatibility database with all of the required information for that single fix. For example, Custom DB2.

3.  The tester applies the new Custom DB2 information to the application and then tests for both the functionality and integration, to ensure that the compatibility issues are addressed.

4.  After the application passes all of the required functionality and integration tests, the tester can send Custom DB2 to the team that manages the central compatibility-fix database.

5.  The team that manages the centralized database opens Custom DB1 and uses the Compatibility Administrator to include the new compatibility fixes that were included in Custom DB2.

    **Note**  
    Custom DB1 contains a unique GUID that makes updating the database easier. For example, if you install a new version of the custom compatibility-fix database that uses the same GUID as the previous version, the computer will automatically uninstall the old version.



6.  The centralized management team then redeploys the new version of Custom DB1 to all of the end users in your organization.

### Deploying Your Custom Compatibility-Fix Databases

Deploying your custom compatibility-fix database into your organization requires you to perform the following actions:

1.  Store your custom compatibility-fix database (.sdb file) in a location that is accessible to all of your organization’s computers.

2.  Use the Sdbinst.exe command-line tool to install the custom compatibility-fix database locally.

In order to meet the two requirements above, we recommend that you use one of the following two methods:

-   **Using a Windows Installer package and a custom script**

    You can package your .sdb file and a custom deployment script into an .msi file, and then deploy the .msi file into your organization.

    **Important**  
    You must ensure that you mark your custom script so that it does not impersonate the calling user. For example, if you use Microsoft® Visual Basic® Scripting Edition (VBScript), the custom action type would be:



~~~
```
msidbCustomActionTypeVBScript + msidbCustomActionTypeInScript + msidbCustomActionTypeNoImpersonate = 0x0006 + 0x0400 + 0x0800 = 0x0C06 = 3078 decimal)
```
~~~

-   **Using a network share and a custom script**

You can store your .sdb file on your network share and then call to a script that resides on your specified computers.

**Important**  
You must ensure that you call the script at a time when it will receive elevated rights. For example, you should call the script by using computer startup scripts instead of a user logon script. You must also ensure that the installation of the custom compatibility-fix database occurs with Administrator rights.



### Example Script for an Installation of the .sdb File based on an .msi File

The following examples show an installation of a custom compatibility-fix database based on an .msi file.

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

Most of your testing of application-compatibility issues will happen prior to the deployment of a new Windows operating system into your environment. As such, a common approach is to include the custom compatibility-fix database, which includes all of your known issues, in your corporate image. Then, as you update your compatibility-fix database, you can provide the updates by using one of the two mechanisms described in the "Deploying Your Custom Compatibility Fix Databases" section earlier in this topic.

## Related topics
[Managing Application-Compatibility Fixes and Custom Fix Databases](managing-application-compatibility-fixes-and-custom-fix-databases.md)
