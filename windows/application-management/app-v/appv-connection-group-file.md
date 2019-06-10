---
title: About the connection group file (Windows 10)
description: A summary of what the connection group file is and how to configure it.
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/25/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# About the connection group file

>Applies to: Windows 10, version 1607

## Connection group file overview

### What is a connection group?

A connection group is an App-V feature that can group packages together to create a virtual environment where applications within that package group can interact with each other.

For example, let's say you want to use plug-ins with Microsoft Office. You can create one package that contains the plug-ins and another package that contains Office, and then add both packages to the same connection group to enable Office to use those plug-ins.

### How a connection group file works

When you apply an App-V connection group file, all packages specified in the file will be combined at runtime into a single virtual environment. Use the Microsoft Application Virtualization (App-V) connection group file to configure existing App-V connection groups.

An example file path for a package file would be %APPDATA%\Microsoft\AppV\Client\Catalog\PackageGroups\{6CCC7575-162E-4152-9407-ED411DA138F4}\{4D1E16E1-8EF8-41ED-92D5-8910A8527F96}.

## Structure of the connection group XML file

This section will tell you more about the components of the connection group XML file.

### Parameters that define the connection group

The following table describes the parameters in the XML file that define the connection group itself, not the packages.

|Field|Description|
|-----|-----------|
|Schema name|Name of the schema.</br>If you want to use the “optional packages” and “use any version” features described in this table, you must specify the following schema in the XML file:</br>`xmlns="https://schemas.microsoft.com/appv/2014/virtualapplicationconnectiongroup"`|
|AppConnectionGroupId|Unique GUID identifier for this connection group. The connection group state is associated with this identifier. Specify this identifier only when you create the connection group.</br>You can create a new GUID by entering **[Guid]::NewGuid()**.|
|VersionId|Version GUID identifier for this version of the connection group.</br>When you update a connection group (for example, by adding or updating a new package), you must update the version GUID to reflect the new version.|
|DisplayName|Display name of the connection group.|
|Priority|Optional priority field for the connection group.</br>A value of **0** indicates the highest priority.</br>If a priority is required but has not been configured, the package will fail because it can't determine the correct connection group to use.|

### Parameters that define the packages in the connection group

In the **&lt;Packages&gt;** section of the connection group XML file, you list the member packages in the connection group by specifying each package’s unique package identifier and version identifier, as described in the following table. The first package in the list has the highest precedence.

|Field|Description|
|---|---|
|PackageId|Unique GUID identifier for this package. This GUID doesn’t change when newer versions of the package are published.|
|VersionId|Unique GUID identifier for the version of the package. </br>If you specify “*” for the package version, the GUID of the latest available package version is dynamically inserted.|
|IsOptional|Parameter that enables you to make a package optional within the connection group. Valid entries are:</br>- “**true**”—package is optional in the connection group</br>- “**false**”—package is required in the connection group|

### App-V example connection group XML file

The following example connection group XML file shows examples of the fields listed in the previous tables.

```XML
<?xml version="1.0" encoding="UTF-16"?>
<appv:AppConnectionGroup
xmlns="http://schemas.microsoft.com/appv/2014/virtualapplicationconnectiongroup"
xmlns:appv="http://schemas.microsoft.com/appv/2014/virtualapplicationconnectiongroup"
  AppConnectionGroupId="61BE9B14-D2B4-41CE-A6E3-A1B658DE7000"
  VersionId="E6B6AA57-F2A7-49C9-ADF8-F2B5B3C8A42F"
  Priority="0"
  DisplayName="Sample Connection Group">
  <appv:Packages>
    <appv:Package
      PackageId="1DC709C8-309F-4AB4-BD47-F75926D04276"
      VersionId="*"
      IsOptional=”true”
    />
    <appv:Package
      PackageId="04220DCA-EE77-42BE-A9F5-96FD8E8593F2"
      VersionId="E15EFFE9-043D-4C01-BC52-AD2BD1E8BAFA"
      IsOptional=”false”
    />
  </appv:Packages>
```

## Configuring the priority of packages in a connection group

Package precedence is configured using the package list order. The first package in the document has the highest precedence. Subsequent packages in the list have descending priority.

Package precedence is the resolution for otherwise inevitable resource collisions during virtual environment initialization. For example, if two packages that are opening in the same virtual environment define the same registry DWORD value, the package with the highest precedence determines the value that is set.

You can use the connection group file to configure each connection group by using the following methods:

- Specify runtime priorities for connection groups. To edit priority by using the App-V Management Console, select the connection group and then select **Edit**.

   > [!NOTE]
    >A package only requires priority if it's associated with more than one connection group.
- Specify package precedence within the connection group.

The priority field is required when a running virtual application initiates from a native application request, such as Microsoft Windows Explorer. The App-V client uses the priority to determine which connection group virtual environment the application should run in. This situation occurs if a virtual application is part of multiple connection groups.

If a virtual application is opened using another virtual application, the client will use the original virtual application's virtual environment. The priority field is not used in this case.

The following is an example of priority configuration:

The virtual application Microsoft Outlook is running in virtual environment **XYZ**. When you open an attached Microsoft Word document, a virtualized version Microsoft Word opens in the virtual environment **XYZ**, regardless of the virtualized Microsoft Word’s associated connection groups or runtime priorities.

## Supported virtual application connection configurations

App-V supports the following application connection configurations.

- **An .exe file and plug-in (.dll)**. For example, you might want to distribute Microsoft Office to all users, but only distribute a Microsoft Excel plug-in to a small subset of those users.

    Enable the connection group for the appropriate users. Update each package individually as required.

- **An .exe file and a middleware application**. This is for cases where you have an application that requires a middleware application, or several applications that all depend on the same middleware runtime version.

    All computers that require one or more of the applications receive the connection groups with the application and middleware application runtime. You can optionally combine multiple middleware applications into a single connection group.

    |Example|Example description|
    |---|---|
    |Virtual application connection group for the financial division|- Middleware application 1</br>- Middleware application 2</br>- Middleware application 3</br>- Middleware application runtime|
    |Virtual application connection group for HR division|- Middleware application 5</br>- Middleware application 6</br>- Middleware application runtime|

- **An. exe file and an .exe file**. This is for cases where you have an application that relies on another application, but you want to keep the packages separate for operational efficiencies, licensing restrictions, or rollout timelines.

    For example, if you are deploying Microsoft Lync 2010, you can use three packages:
  
    - Microsoft Office 2010
    - Microsoft Communicator 2007
    - Microsoft Lync 2010
  
  You can manage the deployment with the following connection groups:

    - Microsoft Office 2010 and Microsoft Communicator 2007
    - Microsoft Office 2010 and Microsoft Lync 2010
  
  After deployment, you can either create a single new Microsoft Office 2010 + Microsoft Lync 2010 package or keep and maintain them as separate packages and deploy them with a connection group.





## Related topics

- [Managing connection groups](appv-managing-connection-groups.md)
