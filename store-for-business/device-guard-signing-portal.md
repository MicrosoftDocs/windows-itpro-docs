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
ms.date: 07/21/2021
---

# Device Guard signing

**Applies to**

-   Windows 10
-   Windows 10 Mobile

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

Device Guard signing is a Device Guard feature that gives admins a single place to sign catalog files and code integrity policies. After admins have created catalog files for unsigned apps and signed the catalog files, they can add the signers to a code integrity policy. You can merge the code integrity policy with your existing policy to include your custom signing certificate. This allows you to trust the catalog files.

Device Guard is a feature set that consists of both hardware and software system integrity hardening features. These features use new virtualization-based security options and the trust-nothing mobile device operating system model. A key feature in this model is called configurable code integrity, which allows your organization to choose exactly which software or trusted software publishers are allowed to run code on your client machines. Also, Device Guard offers organizations a way to sign existing line-of-business (LOB) applications so that they can trust their own code, without the requirement that the application be repackaged. Also, this same method of signing allows organizations to trust individual third-party applications. For more information, see [Device Guard deployment guide](/windows/device-security/device-guard/device-guard-deployment-guide).

## In this section

| Topic | Description |
| ----- | ----------- |
| [Add unsigned app to code integrity policy](add-unsigned-app-to-code-integrity-policy.md) | When you want to add an unsigned app to a code integrity policy, you need to start with a code integrity policy created from a reference device. Then, create the catalog files for your unsigned app, sign the catalog files, and then merge the default policy that includes your signing certificate with existing code integrity policies. |
| [Sign code integrity policy with Device Guard signing](sign-code-integrity-policy-with-device-guard-signing.md) | Signing code integrity policies prevents policies from being tampered with after they're deployed. You can sign code integrity policies with the Device Guard signing portal. |

## Device Guard Signing Service (v2) PowerShell Commands

> [!NOTE]
> [.. common ..] are parameters common across all commands that are documented below the command definitions.

**Get-DefaultPolicy** Gets the default .xml policy file associated with the current tenant.

- Usage:

```powershell
Get-DefaultPolicy -OutFile filename [-PassThru] [.. common ..]
```

- Parameters:

     **OutFile** - string, mandatory - The filename where the default policy file should be persisted to disk. The file name should be an .xml file. If the file already            exists, it will be overwritten (note: create the folder first).
      
     **PassThru** - switch, optional - If present, returns an XmlDocument object returning the default policy file.
      
- Command running time: 

     The average running time is under 20 seconds but may be up to 3 minutes.
      
**Get-RootCertificate** Gets the root certificate for the current tenant. All Authenticode and policy signing certificates will eventually chain up to this root certificate.

- Usage:

     ```powershell
     Get-RootCertificate -OutFile filename [-PassThru] [.. common ..]
     ```
     
- Parameters:

     **OutFile** - string, mandatory - The filename where the root certificate file should be persisted to disk. The file name should be a .cer file. If the file already          exists, it will be overwritten (note: create the folder first).
     
     **PassThru** - switch, optional - If present, returns an X509Certificate2 object returning the default 
     policy file.

- Command running time: 

     The average running time is under 20 seconds but may be up to 3 minutes.

**Get-SigningHistory** Gets information for the latest 100 files signed by the current tenant. Results are returned as a collection with elements in reverse chronological order (most recent to least recent).

- Usage:

     ```powershell
     Get-SigningHistory -OutFile filename [-PassThru] [.. common ..]
     ```

- Parameters:

  **OutFile** - string, mandatory - The filename where the signing history file should be persisted to disk. The file name should be a .xml file. If the file already exists,  it will be overwritten (note: create the folder first).

  **PassThru** - switch, optional - If present, returns XML objects returning the XML file.

- Command running time: 

  The average running time is under 10 seconds.

**Submit-SigningJob** Submits a file to the service for signing and timestamping. The module supports valid file type for Authenticode signing is Catalog file (.cat). Valid    file type for policy signing is binary policy files with the extension (.bin) that have been created via the ConvertFrom-CiPolicy cmdlet. Otherwise, binary policy file may not be deployed properly. 

- Usage: 

   ```powershell
   Submit-SigningJob -InFile filename -OutFile filename [-NoTimestamp][- TimeStamperUrl "timestamper url"] [-JobDescription "description"] [.. common ..]
   ```

- Parameters:

  **InFile** - string, mandatory - The file to be signed. This should be a file of the types described in description above (.cat or .bin).

  **OutFile** - string, mandatory - The output file that should be generated by the signing process. If this file already exists, it will be overwritten. (note: create the     folder first)

  **NoTimestamp** - switch, optional - If present, the signing operation will skip timestamping the output file, and it will be signed only. If not present (default) and       TimeStamperUrl presents, the output file will be both signed and timestamped. If both NoTimestamp and TimeStamperUrl not present, the signing operation will skip             timestamping the output file, and it will be signed only.

  **TimeStamperUrl** - string, optional - If this value is invalid Url (and NoTimestamp not present), the module will throw exception. To understand more about timestamping,   refer to [Timestamping](/windows/msix/package/signing-package-overview#timestamping).
  
  **JobDescription** - string, optional - A short (< 100 chars), human-readable description of this submission. If the script is being called as part of an automated build     rocess the agent may wish to pass a version number or changeset number for this field. This information will be provided as part of the results of the Get-SigningHistory     command.

**Submit-SigningV1MigrationPolicy** Submits a file to the service for signing and timestamping. The only valid file type for policy 
signing is binary policy files with the extension (.bin) that have been created via the [ConvertFromCiPolicy](/powershell/module/configci/convertfrom-cipolicy?view=windowsserver2019-ps&viewFallbackFrom=win10-ps) cmdlet. Otherwise, binary policy file may not be deployed properly. Note: Only use for V1 migration.

- Usage:

  ```powershell
  Submit-SigningV1MigrationPolicy -InFile filename -OutFile filename [-NoTimestamp][-TimeStamperUrl "timestamper url"] [-JobDescription "description"] [.. common ..]
  ```

- Parameters:

  **InFile** - string, mandatory - The file to be signed. This should be a file of the types described in  description above (.bin).

  **OutFile** - string, mandatory - The output file that should be generated by the signing process. If this file already exists, it will be overwritten.
  
  > [!NOTE]
  > Create the folder first.

  **NoTimestamp** - switch, optional - If present, the signing operation will skip timestamping the output file, and it will be signed only. If not present (default) and       TimeStamperUrl presents, the output file will be both signed and timestamped. If both NoTimestamp and TimeStamperUrl not present, the signing operation will skip             timestamping the output file, and it will be signed only.

  **TimeStamperUrl** - string, optional - If this value is invalid Url (and NoTimestamp not present), the module will throw exception. To understand more about timestamping,   refer to [Timestamping](/windows/msix/package/signing-package-overview#timestamping).

  **JobDescription** - string, optional - A short (< 100 chars), human-readable description of this submission. If the script is being called as part of an automated build     process the agent may wish to pass a version number or changeset number for this field. This information will be provided as part of the results of the Get-SigningHistory     command.

- Command running time: 

  The average running time is under 20 seconds but may be up to 3 minutes.

**Common parameters [.. common ..]**

In addition to cmdlet-specific parameters, each cmdlet understands the following common parameters.

- Usage:

  ```powershell
  ... [-NoPrompt] [-Credential $creds] [-AppId AppId] [-Verbose]
  ```

- Parameters:

  **NoPrompt** - switch, optional - If present, indicates that the script is running in a headless 
  environment and that all UI should be suppressed. If UI must be displayed (e.g., for 
  authentication) when the switch is set, the operation will instead fail.

  **Credential + AppId** - PSCredential - A login credential (username and password) and AppId.


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
