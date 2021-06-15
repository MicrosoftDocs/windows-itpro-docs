---
title: Device Guard signing (Windows 10)
description: Device Guard signing is a Device Guard feature that is available in the Microsoft Store for Business and Microsoft Store for Education.
ms.assetid: 8D9CD2B9-5FC6-4C3D-AA96-F135AFEEBB78
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
ms.date: 10/17/2017
---

# Device Guard signing

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

Device Guard signing is a Device Guard feature that is available in Microsoft Store for Business and Education. It gives admins a single place to sign catalog files and code integrity policies. After admins have created catalog files for unsigned apps and signed the catalog files, they can add the signers to a code integrity policy. You can merge the code integrity policy with your existing policy to include your custom signing certificate. This allows you to trust the catalog files.

Device Guard is a feature set that consists of both hardware and software system integrity hardening features. These features use new virtualization-based security options and the trust-nothing mobile device operating system model. A key feature in this model is called configurable code integrity, which allows your organization to choose exactly which software or trusted software publishers are allowed to run code on your client machines. Also, Device Guard offers organizations a way to sign existing line-of-business (LOB) applications so that they can trust their own code, without the requirement that the application be repackaged. Also, this same method of signing allows organizations to trust individual third-party applications. For more information, see [Device Guard deployment guide](/windows/device-security/device-guard/device-guard-deployment-guide).

## In this section

| Topic | Description |
| ----- | ----------- |
| [Add unsigned app to code integrity policy](add-unsigned-app-to-code-integrity-policy.md) | When you want to add an unsigned app to a code integrity policy, you need to start with a code integrity policy created from a reference device. Then, create the catalog files for your unsigned app, sign the catalog files, and then merge the default policy that includes your signing certificate with existing code integrity policies. |
| [Sign code integrity policy with Device Guard signing](sign-code-integrity-policy-with-device-guard-signing.md) | Signing code integrity policies prevents policies from being tampered with after they're deployed. You can sign code integrity policies with the Device Guard signing portal. |

## File and size limits
When you're uploading files for Device Guard signing, there are a few limits for files and file size:

| Description                                           | Limit    |
|-------------------------------------------------------|----------|
| Maximum size for a policy or catalog file             | 3.5 MB   |
| Maximum size for multiple files (uploaded in a group) | 4 MB     |
| Maximum number of files per upload                    | 15 files |

 ## File types
Catalog and policy files have required files types.

| File          | Required file type |
|---------------|--------------------|
| catalog files | .cat               |
| policy files  | .bin               |

 ## Store for Business roles and permissions
Signing code integrity policies and access to Device Guard portal requires the Device Guard signer role.

## Device Guard signing certificates
All certificates generated by the Device Guard signing service are unique per customer and are independent of the Microsoft production code signing certificate authorities. All Certification Authority (CA) keys are stored within the cryptographic boundary of Federal Information Processing Standards (FIPS) publication 140-2 compliant hardware security modules. After initial generation, root certificate keys and top level CA keys are removed from the online signing service, encrypted, and stored offline.
