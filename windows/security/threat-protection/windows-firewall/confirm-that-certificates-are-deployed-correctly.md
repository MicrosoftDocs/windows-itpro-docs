---
title: Confirm That Certificates Are Deployed Correctly (Windows 10)
description: Confirm That Certificates Are Deployed Correctly
ms.assetid: de0c8dfe-16b0-4d3b-8e8f-9282f6a65eee
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: securit
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Confirm That Certificates Are Deployed Correctly

**Applies to**
-   Windows 10
-   Windows Server 2016

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
