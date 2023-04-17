---
title: Confirm That Certificates Are Deployed Correctly (Windows)
description: Learn how to confirm that a Group Policy is being applied as expected and that the certificates are being properly installed on the workstations.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 01/24/2023
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
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

``` cmd
gpupdate /target:computer /force
```

After Group Policy is refreshed, you can see which GPOs are currently applied to the device.

## To verify that a certificate is installed

1.  Open the Certificates console
1.  In the navigation pane, expand **Trusted Root Certification Authorities**, and then click **Certificates**

    The CA that you created appears in the list.
