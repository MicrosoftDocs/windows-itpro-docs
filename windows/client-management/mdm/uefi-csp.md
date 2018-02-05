---
title: UEFI CSP
description: The Uefi CSP interfaces to UEFI's Device Firmware Configuration Interface (DFCI) to make BIOS configuration changes.
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 02/01/2018
---

# UEFI CSP


> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The UEFI configuration service provider (CSP) interfaces to UEFI's Device Firmware Configuration Interface (DFCI) to make BIOS configuration changes. This CSP was added in Windows 10, next major update.

The following diagram shows the UEFI CSP in tree format.

![Uefi CSP diagram](images/provisioning-csp-uefi.png)

The following list describes the characteristics and parameters.

<a href="" id="uefi"></a>**./Vendor/MSFT/Uefi**  
Root node.

<a href="" id="uefideviceidentifier"></a>**UefiDeviceIdentifier**  
Retrieves XML from UEFI which describes the device identifier.

Supported operation is Get.

<a href="" id="identityinfo"></a>**IdentityInfo**  
Node for provisioned signers operations.


<a href="" id="identityinfo-current"></a>**IdentityInfo/Current**  
Retrieves XML from UEFI which describes the current UEFI identity information.

Supported operation is Get.

<a href="" id="identityinfo-apply"></a>**IdentityInfo/Apply**  
Apply an identity information package to UEFI. Input is the signed package in base64 encoded format.

Supported operation is Replace.

<a href="" id="identityinfo-applyresult"></a>**IdentityInfo/ApplyResult**  
Retrieves XML describing the results of previous ApplyIdentityInfo operation.

Supported operation is Get.

<a href="" id="authinfo"></a>**AuthInfo**  
Node for permission information operations.

<a href="" id="authinfo-current"></a>**AuthInfo/Current**  
Retrieves XML from UEFI which describes the current UEFI permission/authentication information.

Supported operation is Get.

<a href="" id="authinfo-apply"></a>**AuthInfo/Apply**  
Apply a permission/authentication information package to UEFI. Input is the signed package in base64 encoded format.

Supported operation is Replace.

<a href="" id="authinfo-applyresult"></a>**AuthInfo/ApplyResult**  
Retrieves XML describing the results of previous ApplyAuthInfo operation.

Supported operation is Get.

<a href="" id="config"></a>**Config**  
Node for device configuration

<a href="" id="config-current"></a>**Config/Current**  
Retrieves XML from UEFI which describes the current UEFI configuration.

Supported operation is Get.

<a href="" id="config-apply"></a>**Config/Apply**  
Apply a configuration package to UEFI. Input is the signed package in base64 encoded format.

Supported operation is Replace.

<a href="" id="config-applyresult"></a>**Config/ApplyResult**  
Retrieves XML describing the results of previous ApplyConfig operation.

Supported operation is Get.
