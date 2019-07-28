---
title: App-V Application WMI Class
description: App-V Application WMI Class
author: dansimp
ms.assetid: b79b0d5a-ba57-442f-8bb4-d7154fc056f9
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# App-V Application WMI Class


In the Application Virtualization (App-V) Client, the **Application** class is a Windows Management Instrumentation (WMI) class that represents all the virtual applications on the client.

The following syntax is simplified from Managed Object Format (MOF) code. The code includes all the inherited properties.

## Syntax


``` syntax
class Application
{
      string Name;
      string Version;
      string PackageGUID;
      datetime LastLaunchOnSystem;
      uint32 GlobalRunningCount;
      boolean Loading;
      string OriginalOsdPath;
      string CachedOsdPath;
};
```

## Requirements


## Properties


<a href="" id="name"></a>**Name**  
Data type: **String**

Access type: Read-only

Qualifiers: Key

The display name of the virtual application.

<a href="" id="version"></a>**Version**  
Data type: **String**

Access type: Read-only

Qualifiers: Key

The version of the virtual application.

<a href="" id="packageguid"></a>**PackageGUID**  
Data type: **String**

Access type: Read-only

Qualifiers: None

The GUID of the package that the virtual application is associated with.

<a href="" id="lastlaunchonsystem"></a>**LastLaunchOnSystem**  
Data type: **DateTime**

Access type: Read-only

Qualifiers: None

The last date and time that the virtual application was launched.

<a href="" id="globalrunningcount"></a>**GlobalRunningCount**  
Data type: **UInt32**

Access type: Read-only

Qualifiers: None

A count of the running instances of the virtual application that were started directly.

<a href="" id="loading"></a>**Loading**  
Data type: **Boolean**

Access type: Read-only

Qualifiers: None

**true** if the virtual application is being started; otherwise **false**.

<a href="" id="originalosdpath"></a>**OriginalOsdPath**  
Data type: **String**

Access type: Read-only

Qualifiers: None

The original file path of the OSD file that was registered with the App-V Client.

<a href="" id="cachedosdpath"></a>**CachedOsdPath**  
Data type: **String**

Access type: Read-only

Qualifiers: None

The file path of the OSD file if the App-V Client has cached the OSD file locally.

 

 





