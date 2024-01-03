---
title: Use Windows in a FIPS 140 approved mode of operation
description: Learn how to use Windows in a FIPS 140 approved mode of operation.
ms.date: 1/2/2024
ms.topic: reference
ms.author: v-rodurff
author: msrobertd
ms.reviewer: paoloma
ms.collection: tier3
---

# Use Windows in a FIPS 140 approved mode of operation

>[!IMPORTANT]
>Windows operates in a *FIPS 140 approved mode* of operation only when administrators ensure that all steps described in this topic are completed. In addition to enable the FIPS security policy setting in Windows, administrators must also ensure that validated cryptographic modules are installed in the operational environment, the security policies for the modules are followed, and applications and services use FIPS validated cryptographic algorithms only.

### Step 1: Ensure your version of Windows has FIPS 140 validated cryptographic modules

Administrators must ensure that all cryptographic modules installed in the operational environment are FIPS 140 validated. To identify which modules have been validated for a particular Microsoft product, select a product from the drop-down menus below.

[!INCLUDE [validation-selector](../includes/validation-selector.md)]

### Step 2: Ensure all security policies for all cryptographic modules are followed

Each of the cryptographic modules has a defined security policy that must be met for the module to operate in its FIPS 140 approved mode. The security policy is published in each module's public Security Policy document. To view or download the Security Policy document for a module, navigate to the listing of FIPS 140 validated modules for a given product using the drop-down menus in Step 1 and select the links to the Security Policy document for a given module.

### Step 3: Enable the FIPS security policy setting in Windows

Windows provides the following security policy setting, commonly referred to as *FIPS mode*:

> **System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing**

If you turn on FIPS mode, the Cryptographic Primitives Library `bcryptprimitives.dll` and Kernel Mode Cryptographic Primitives Library `CNG.sys` modules will run self-tests before Windows runs cryptographic operations.

>[!IMPORTANT]
>The FIPS security policy will not prevent Windows and its subsystems from using cryptographic algorithms that are not FIPS validated.

This FIPS security policy may be enabled by following the instructions in the Security Policy document for the Cryptographic Primitives Library or Kernel Mode Cryptographic Primitives Library.

For more information on the FIPS mode security policy setting, see [System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing](security-policy-settings/system-cryptography-use-fips-compliant-algorithms-for-encryption-hashing-and-signing.md).

### Step 4: Ensure that only FIPS validated cryptographic algorithms are used

It is up to the administrator to ensure that applications and services follow the security policies of validated modules, including calling only for FIPS validated cryptographic algorithms.

>[!CAUTION]
>Neither the operating system nor the cryptographic module can prevent applications and services from calling cryptographic algorithms that have not been FIPS validated, even if the FIPS security policy setting in Windows has been enabled.

If an application or service calls for a non-approved algorithm, the module will no longer be operating its FIPS approved mode. For a listing of the validated algorithms for each module, see its Security Policy document. To view or download the Security Policy document for a module, navigate to the listing of FIPS 140 validated modules for a given product using the drop-down menus in Step 1 and click on the links to the Security Policy document for a given module.
