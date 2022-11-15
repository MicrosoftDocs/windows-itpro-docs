---
title: Add unsigned app to code integrity policy (Windows 10)
description: When you want to add an unsigned app to a code integrity policy, you need to start with a code integrity policy created from a reference device.
ms.assetid: 580E18B1-2FFD-4EE4-8CC5-6F375BE224EA
ms.reviewer: 
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store, security
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 07/21/2021
---

# Add unsigned app to code integrity policy

> [!IMPORTANT]
> Microsoft Store for Business and Microsoft Store for Education will be retired in the first quarter of 2023. You can continue to use the current capabilities of free apps until that time. For more information about this change, see [Update to Endpoint Manager integration with the Microsoft Store on Windows](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/update-to-endpoint-manager-integration-with-the-microsoft-store/ba-p/3585077) and [FAQ: Supporting Microsoft Store experiences on managed devices](https://techcommunity.microsoft.com/t5/windows-management/faq-supporting-microsoft-store-experiences-on-managed-devices/m-p/3585286).

> [!IMPORTANT]
> We are introducing a new version of the Device Guard Signing Service (DGSS) to be more automation friendly. The new version of the service (DGSS v2) is now available. As announced earlier, you will have until June 9, 2021 to transition to DGSS v2. On June 9, 2021, the existing web-based mechanisms for the current version of the DGSS service will be retired and will no longer be available for use. Please make plans to migrate to the new version of the service by June 9, 2021.
>
> Following are the major changes we are making to the service:
>
> - The method for consuming the service will change to a more automation-friendly method based on PowerShell cmdlets. These cmdlets are available as a NuGet download at [https://www.nuget.org/packages/Microsoft.Acs.Dgss.Client/](https://www.nuget.org/packages/Microsoft.Acs.Dgss.Client/).
> - In order to achieve desired isolation, you will be required to get a new CI policy from DGSS v2 (and optionally sign it).
> - DGSS v2 will not have support for downloading leaf certificates used to sign your files (however, the root certificate will still be available to download).  Note that the certificate used to sign a file can be easily extracted from the signed file itself.  As a result, after DGSS v1 is retired, you will no longer be able to download the leaf certificates used to sign your files.
>
> The following functionality will be available via these PowerShell cmdlets:
> 
> - Get a CI policy
> - Sign a CI policy
> - Sign a catalog
> - Download root cert
> - Download history of your signing operations
>
> For any questions, please contact us at DGSSMigration@microsoft.com.

**Applies to**

- Windows 10

When you want to add an unsigned app to a code integrity policy, you need to start with a code integrity policy created from a reference device. Then, create the catalog files for your unsigned app, sign the catalog files, and then merge the default policy that includes your signing certificate with existing code integrity policies.

## Create a code integrity policy based on a reference device

To add an unsigned app to a code integrity policy, your code integrity policy must be created from golden image machine. For more information, see [Create a Device Guard code integrity policy based on a reference device](/windows/device-security/device-guard/device-guard-deployment-guide).

## Create catalog files for your unsigned app

Creating catalog files starts the process for adding an unsigned app to a code integrity policy.

Before you get started, be sure to review these best practices and requirements:

### Requirements

- You'll use Package Inspector during this process.
- Only perform this process with a code integrity policy running in audit mode. You should not perform this process on a system running an enforced Device Guard policy.

### Best practices

- **Naming convention** -- Using a naming convention makes it easier to find deployed catalog files. We'll use \*-Contoso.cat as the naming convention in this topic. For more information, see the section Inventorying catalog files by using Microsoft Endpoint Manager in the [Device Guard deployment guide](/windows/device-security/device-guard/device-guard-deployment-guide).
- **Where to deploy code integrity policy** -- The [code integrity policy that you created](#create-a-code-integrity-policy-based-on-a-reference-device) should be deployed to the system on which you are running Package Inspector. This will ensure that the code integrity policy binaries are trusted.

Copy the commands for each step into an elevated Windows PowerShell session. You'll use Package Inspector to find and trust all binaries in the app.

### To create catalog files for your unsigned app

1. Start Package Inspector to scan the C drive.

    `PackageInspector.exe Start C:`

2. Copy the installation media to the C drive.

    Copying the installation media to the C drive ensures that Package Inspector finds and catalogs the installer. If you skip this step, the code integrity policy may trust the application to run, but not trust it to be installed.

3. Install and start the app.

    All binaries that are used while Package Inspector is running will be part of the catalog files. After the installation, start the app and make sure that any product updates are installed and any downloadable content was found during the scan. Then, close and restart the app to make sure that the scan found all binaries.

4. Stop the scan and create definition and catalog files.

    After app install is complete, stop the Package Inspector scan and create catalog and definition files on your desktop.

    `$ExamplePath=$env:userprofile+"\Desktop"`

    `$CatFileName=$ExamplePath+"\LOBApp-Contoso.cat"`

    `$CatDefName=$ExamplePath+"\LOBApp.cdf"`

    `PackageInspector.exe Stop C: -Name $CatFileName -cdfpath $CatDefName`

The Package Inspector scan catalogs the hash values for each binary file that is finds. If the app that was scanned are updated, do this process again to trust the new binaries hash values.

After you're done, the files are saved to your desktop. You still need to sign the catalog file so that it will be trusted within the code integrity policy.

## Catalog signing with Device Guard signing portal

To sign catalog files with the Device Guard signing portal, you need to be signed up with the Microsoft Store for Business.

Catalog signing is a vital step to adding your unsigned apps to your code integrity policy.

### To sign a catalog file with Device Guard signing portal

1. Sign in to the [Microsoft Store for Business](https://businessstore.microsoft.com) or [Store for Education](https://educationstore.microsoft.com).
2. Click **Settings**, click **Store settings**, and then click **Device Guard**.
3. Click **Upload** to upload your unsigned catalog files. These are the catalog files you created earlier in [Create catalog files for your unsigned app](#create-catalog-files-for-your-unsigned-app).
4. After the files are uploaded, click **Sign** to sign the catalog files.
5. Click Download to download each item:
   - signed catalog file
   - default policy
   - root certificate for your organization

     When you use the Device Guard signing portal to sign a catalog file, the signing certificate is added to the default policy. When you download the signed catalog file, you should also download the default policy and merge this code integrity policy with your existing code integrity policies to protect machines running the catalog file. You need to do this step to trust and run your catalog files. For more information, see the Merging code integrity policies in the [Device Guard deployment guide](/windows/device-security/device-guard/device-guard-deployment-guide).

6. Open the root certificate that you downloaded, and follow the steps in **Certificate Import wizard** to install the certificate in your machine's certificate store.
7. Deploy signed catalogs to your managed devices. For more information, see Deploy catalog files with Group Policy, or Deploy catalog files with Microsoft Endpoint Manager in the [Device Guard deployment guide](/windows/device-security/device-guard/device-guard-deployment-guide).
