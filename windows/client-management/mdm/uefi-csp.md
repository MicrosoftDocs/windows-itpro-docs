---
title: UEFI CSP
description: The Uefi CSP interfaces to UEFI's Device Firmware Configuration Interface (DFCI) to make BIOS configuration changes.
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 10/02/2018
---

# UEFI CSP


The UEFI configuration service provider (CSP) interfaces to UEFI's Device Firmware Configuration Interface (DFCI) to make BIOS configuration changes. This CSP was added in Windows 10, version 1809.

> [!Note]  
> The UEFI CSP version published in Windows 10, version 1803 is replaced with this one (version 1809).

> [!Note]  
> The production UEFI CSP is present in 1809, but it depends upon the Device Firmware Configuration Interface (DFCI) and UEFI firmware to comply with this interface.  The specification for this interface and compatible firmware is not yet available.

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
Retrieves XML from UEFI that describes the current UEFI settings permissions.

Supported operation is Get.

<a href="" id="permissions-apply"></a>**Permissions/Apply**  
Apply a permissions information package to UEFI. Input is the signed package in base64 encoded format.

Value type is Base64. Supported operation is Replace.

<a href="" id="permissions-result"></a>**Permissions/Result**  
Retrieves the binary result package of the previous Permissions/Apply operation.  This binary package contains XML describing the action taken for each individual permission.

Supported operation is Get.

<a href="" id="settings"></a>**Settings**  
Node for device settings operations.

<a href="" id="settings-current"></a>**Settings/Current**  
Retrieves XML from UEFI that describes the current UEFI settings.

Supported operation is Get.

<a href="" id="settings-apply"></a>**Settings/Apply**  
Apply a settings information package to UEFI. Input is the signed package in base64 encoded format.

Value type is Base64. Supported operation is Replace.

<a href="" id="settings-result"></a>**Settings/Result**  
Retrieves the binary result package of the previous Settings/Apply operation. This binary package contains XML describing the action taken for each individual setting.

Supported operation is Get.

<a href="" id="identity2"></a>**Identity2**  
Node for identity certificate operations. Alternate endpoint for sending a second identity package without an OS restart.

<a href="" id="identity2-apply"></a>**Identity2/Apply**  
Apply an identity information package to UEFI. Input is the signed package in base64 encoded format. Alternate location for sending two identity packages in the same session.

Value type is Base64. Supported operation is Replace.

<a href="" id="identity2-result"></a>**Identity2/Result**  
Retrieves the binary result package of the previous Identity2/Apply operation.

Supported operation is Get.

<a href="" id="permissions2"></a>**Permissions2**  
Node for settings permission operations. Alternate endpoint for sending a second permission package without an OS restart.

<a href="" id="permissions2-apply"></a>**Permissions2/Apply**  
Apply a permissions information package to UEFI. Input is the signed package in base64 encoded format.  Alternate location for sending two permissions information packages in the same session.

Value type is Base64. Supported operation is Replace.

<a href="" id="permissions2-result"></a>**Permissions2/Result**  
Retrieves the binary result package from the previous Permissions2/Apply operation.  This binary package contains XML describing the action taken for each individual permission.

Supported operation is Get.

<a href="" id="settings2"></a>**Settings2**  
Nodefor device settings operations. Alternate endpoint for sending a second settings package without an OS restart.

<a href="" id="settings2-apply"></a>**Settings2/Apply**  
Apply a settings information package to UEFI. Input is the signed package in base64 encoded format. Alternate location for sending two settings information packages in the same session.

Value type is Base64. Supported operation is Replace.

<a href="" id="settings2-result"></a>**Settings2/Result**  
Retrieves the binary result package of previous Settings2/Apply operation. This binary package contains XML describing the action taken for each individual setting.

Supported operation is Get.
