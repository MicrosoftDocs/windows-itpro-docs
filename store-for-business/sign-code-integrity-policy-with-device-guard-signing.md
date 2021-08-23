---
title: Sign code integrity policy with Device Guard signing (Windows 10)
description: Signing code integrity policies prevents policies from being tampered with after they're deployed. You can sign code integrity policies with the Device Guard signing portal.
ms.assetid: 63B56B8B-2A40-44B5-B100-DC50C43D20A9
ms.reviewer: 
manager: dansimp
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store, security
author: TrudyHa
ms.author: TrudyHa
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 07/21/2021
---

# Sign code integrity policy with Device Guard signing

> [!IMPORTANT]
> Microsoft Store for Business and Microsoft Store for Education will be retired in the first quarter of 2023. You can continue to use the current capabilities of free apps until that time. For more information about this change, see [Evolving the Microsoft Store for Business and Education](https://aka.ms/windows/msfb_evolution).


> [!IMPORTANT]
> We are introducing a new version of the Device Guard Signing Service (DGSS) to be more automation friendly. The new version of the service (DGSS v2) is now available. As announced earlier, you will have until June 9, 2021 to transition to DGSS v2. On June 9, 2021, the existing web-based mechanisms for the current version of the DGSS service will be retired and will no longer be available for use. Please make plans to migrate to the new version of the service by June 9, 2021.
>
> Following are the major changes we are making to the service: 
> - The method for consuming the service will change to a more automation-friendly method based on PowerShell cmdlets. These cmdlets are available as a NuGet download, https://www.nuget.org/packages/Microsoft.Acs.Dgss.Client/.
> - In order to achieve desired isolation, you will be required to get a new CI policy from DGSS v2 (and optionally sign it). 
> -	DGSS v2 will not have support for downloading leaf certificates used to sign your files (however, the root certificate will still be available to download).  Note that the certificate used to sign a file can be easily extracted from the signed file itself.  As a result, after DGSS v1 is retired, you will no longer be able to download the leaf certificates used to sign your files.
>
> The following functionality will be available via these PowerShell cmdlets:
> - Get a CI policy
> - Sign a CI policy
> - Sign a catalog 
> - Download root cert
> - Download history of your signing operations 
>
> For any questions, please contact us at DGSSMigration@microsoft.com. 


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Signing code integrity policies prevents policies from being tampered with after they're deployed. You can sign code integrity policies with the Device Guard signing portal.

## Sign your code integrity policy
Before you get started, be sure to review these best practices:

**Best practices**

- Test your code integrity policies on a group of devices before deploying them to a large group of devices.
- Use rule options 9 and 10 during testing. For more information, see the section Code integrity policy rules in the [Device Guard deployment guide](/windows/device-security/device-guard/device-guard-deployment-guide).

**To sign a code integrity policy**

1.  Sign in to the [Microsoft Store for Business](https://businessstore.microsoft.com) or [Microsoft Store for Education](https://educationstore.microsoft.com).
2.  Click **Manage**, click **Store settings**, and then click **Device Guard**.
3.  Click **Upload** to upload your code integrity policy.
4.  After the files are uploaded, click **Sign** to sign the code integrity policy.
5.  Click **Download** to download the signed code integrity policy.

    When you sign a code integrity policy with the Device Guard signing portal, the signing certificate is added to the policy. This means you can't modify this policy. If you need to make changes, make them to an unsigned version of the policy, and then resign the policy.
