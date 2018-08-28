---
title: UEFI CSP
description: The Uefi CSP interfaces to UEFI's Device Firmware Configuration Interface (DFCI) to make BIOS configuration changes.
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: MariciaAlforque
ms.date: 02/01/2018
---

# UEFI CSP


The UEFI configuration service provider (CSP) interfaces to UEFI's Device Firmware Configuration Interface (DFCI) to make BIOS configuration changes. This CSP was added in Windows 10, next major version.

> [!Note]  
> The UEFI CSP version published in Windows 10, version 1803 was replaced with this entirely different version.

The following diagram shows the UEFI CSP in tree format.

![Uefi CSP diagram](images/provisioning-csp-uefi.png)

The following list describes the characteristics and parameters.

<a href="" id="uefi"></a>**./Vendor/MSFT/Uefi**  
Root node.

<a href="" id="deviceidentifier"></a>**DeviceIdentifier**  
Retrieves XML from UEFI that describes the device identifier.

Supported operation is Get.

<a href="" id="identity"></a>**Identity**  
Node for identity certificate operations.

Supported operation is Get.

<a href="" id="identity-current"></a>**Identity/Current**  
Retrieves XML from UEFI that describes the current UEFI identity certificate information.

Supported operation is Get.

<a href="" id="identity-apply"></a>**Identity/Apply**  
Applies an identity information package to UEFI. Input is the signed package in base64 encoded format.

Value type is Base64. Supported operation is Replace.

<a href="" id="identity-result"></a>**Identity/Result**  
Retrieves the binary result package of the previous Identity/Apply operation.

Supported operation is Get.

<a href="" id="permissions"></a>**Permissions**  
Node for settings permission operations..

<a href="" id="permissions-current"></a>**Permissions/Current**  
Retrieves XML from UEFI which describes the current UEFI settings permissions.

Supported operation is Get.

<a href="" id="permissions-apply"></a>**Permissions/Apply**  
Apply a permissions information package to UEFI. Input is the signed package in base64 encoded format.

Value type is Base64. Supported operation is Replace.

<a href="" id="permissions-result"></a>**Permissions/Result**  
Retrieves the binary result package of the previous Permissions/Apply operation.  This binary package contains XML describing the action taken for each individual permission.

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
