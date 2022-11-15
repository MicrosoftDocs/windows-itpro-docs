---
title: Confirm That Certificates Are Deployed Correctly (Windows)
description: Learn how to confirm that a Group Policy is being applied as expected and that the certificates are being properly installed on the workstations.
ms.assetid: de0c8dfe-16b0-4d3b-8e8f-9282f6a65eee
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: securit
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/07/2021
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Confirm That Certificates Are Deployed Correctly


After configuring your certificates and autoenrollment in Group Policy, you can confirm that the policy is being applied as expected, and that the certificates are being properly installed on the workstation devices.

In these procedures, you refresh Group Policy on a client device, and then confirm that the certificate is deployed correctly.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

In this topic:

-   [Refresh Group Policy on a device](#to-refresh-group-policy-on-a-device)

-   [Verify that a certificate is installed](#to-verify-that-a-certificate-is-installed)

## To refresh Group Policy on a device

 From an elevated command prompt, run the following command:

``` syntax
gpupdate /target:computer /force
```

After Group Policy is refreshed, you can see which GPOs are currently applied to the device.

## To verify that a certificate is installed

1.  Open the Cerificates console.

2.  In the navigation pane, expand **Trusted Root Certification Authorities**, and then click **Certificates**.

    The CA that you created appears in the list.
