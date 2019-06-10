---
title: DeviceManageability CSP
description: The DeviceManageability configuration service provider (CSP) is used retrieve the general information about MDM configuration capabilities on the device. This CSP was added in Windows 10, version 1607.
ms.assetid: FE563221-D5B5-4EFD-9B60-44FE4066B0D2
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 11/01/2017
---

# DeviceManageability CSP


The DeviceManageability configuration service provider (CSP) is used retrieve the general information about MDM configuration capabilities on the device. This CSP was added in Windows 10, version 1607.

For performance reasons DeviceManageability CSP directly reads the CSP version from the registry. Specifically, the value csp\_version is used to determine each of the CSP versions. The csp\_version is a value under each of the CSP registration keys. To have consistency on the CSP version, the CSP GetProperty implementation for CFGMGR\_PROPERTY\_SEMANTICTYPE has to be updated to read from the registry as well, so that the both paths return the same information. 

The following diagram shows the DeviceManageability configuration service provider in a tree format.

![devicemanageability csp diagram](images/provisioning-csp-devicemanageability.png)

<a href="" id="--device-vendor-msft-devicemanageability"></a>**./Device/Vendor/MSFT/DeviceManageability**  
Root node to group information about runtime MDM configuration capability on the target device.

<a href="" id="capabilities"></a>**Capabilities**  
Interior node.

<a href="" id="capabilities-cspversions"></a>**Capabilities/CSPVersions**  
Returns the versions of all configuration service providers supported on the device for the MDM service.

<a href="" id="capabilities"></a>**Provider**  
Added in Windows 10, version 1709. Interior node.

<a href="" id="capabilities-cspversions"></a>**Provider/_ProviderID_**  
Added in Windows 10, version 1709. Provider ID of the configuration source. ProviderID should be unique among the different config sources.

<a href="" id="capabilities-cspversions"></a>**Provider/_ProviderID_/ConfigInfo**  
Added in Windows 10, version 1709. Configuration information string value set by the configuration source. Recommended to be used during sync session.

ConfigInfo value can only be set by the provider that owns the ProviderID. The value is readable by other config sources.

Data type is string. Supported operations are Add, Get, Delete, and Replace.

<a href="" id="capabilities-cspversions"></a>**Provider/_ProviderID_/EnrollmentInfo**  
Added in Windows 10, version 1709. Enrollment information string value set by the configuration source and sent during MDM enrollment. It is readable by MDM server during sync session.

Data type is string. Supported operations are Add, Get, Delete, and Replace. 







