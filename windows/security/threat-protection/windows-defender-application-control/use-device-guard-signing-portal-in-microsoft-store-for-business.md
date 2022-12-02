---
title: Use the Device Guard Signing Service v2 (Windows)
description: You can sign catalog files and WDAC policies with the Device Guard signing service.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.topic: conceptual
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
manager: aaroncz
ms.date: 11/30/2022
ms.technology: itpro-security
---

# Optional: Use the Device Guard Signing Service v2

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!IMPORTANT]
> Microsoft Store for Business and Microsoft Store for Education will be retired in the first quarter of 2023. For more information about this change, see [Evolving the Microsoft Store for Business and Education](https://aka.ms/windows/msfb_evolution).
>
> You can continue to use the current Device Guard Signing Service v2 (DGSS) capabilities until that time. DGSS will be replaced by the [Azure Code Signing service (ACS)](https://aka.ms/AzureCodeSigning) and will support your Windows Defender Application Control (WDAC) policy and catalog file signing needs.

The Device Guard Signing Service v2 (DGSS) is a code signing service that comes with your existing Microsoft Store for Business and Education tenant account. You can use the DGSS to sign catalog files and Windows Defender Application Control (WDAC) policies

## Set up permissions for DGSS signing in the Microsoft Store for Business and Education

To use DGSS, you need to assign yourself a role with the right permissions. The least privileged role with DGSS signing privilege is the **Device Guard signer** role. **Global Administrator** and **Billing account owner** can also sign with the DGSS.

## Install the DGSS client NuGet package

Download and install the [DGSS client utilities and PowerShell cmdlets NuGet package](https://www.nuget.org/packages/Microsoft.Acs.Dgss.Client/).

1. Download the [latest recommended version of nuget.exe](https://dist.nuget.org/win-x86-commandline/latest/nuget.exe).
2. From an elevated PowerShell or command window, run the following command:

    ```powershell
    nuget.exe install Microsoft.Acs.Dgss.Client
    ```

3. Import the DGSS PowerShell module from the location where the Microsoft.Acs.Dgss.Client was installed in the previous step.

    ```powershell
    # Update the path to the Microsoft.Acs.Dgss.Client.dll if needed
    Import-Module $env:USERPROFILE\Downloads\Microsoft.Acs.Dgss.Client.1.0.11\PowerShell\Microsoft.Acs.Dgss.Client.dll
    ```

## DGSS PowerShell Commands

> [!NOTE]
> [... common ...] are parameters common across all commands and are documented below the command definitions.

### Get-DefaultPolicy

Gets the default .xml policy file associated with the current tenant.

**Usage:**

  ```powershell
  Get-DefaultPolicy -OutFile filename [-PassThru] [... common ...]
  ```

**Parameters:**

- **OutFile** - string, mandatory - The filename where the default policy file should be persisted to disk. The file name should be an .xml file. If the file already exists, it will be overwritten. NOTE: The destination folder must already exist.
- **PassThru** - switch, optional - If present, returns an XmlDocument object returning the default policy file.

**Command running time:** The average running time is under 20 seconds but may be up to 3 minutes.

### Get-RootCertificate

Gets the root certificate for the current tenant. All Authenticode and policy signing certificates will eventually chain up to this root certificate.

**Usage:**

  ```powershell
  Get-RootCertificate -OutFile filename [-PassThru] [... common ...]
  ```

**Parameters:**

- **OutFile** - string, mandatory - The filename where the root certificate file should be persisted to disk. The file name should be a .cer file. If the file already exists, it will be overwritten. NOTE: The destination folder must already exist.
- **PassThru** - switch, optional - If present, returns an X509Certificate2 object returning the default policy file.

**Command running time:** The average running time is under 20 seconds but may be up to 3 minutes.

### Get-SigningHistory

Gets information for the latest 100 files signed by the current tenant. Results are returned as a collection with elements in reverse chronological order (most recent to least recent).

**Usage:**

  ```powershell
  Get-SigningHistory -OutFile filename [-PassThru] [... common ...]
  ```

**Parameters:**

- **OutFile** - string, mandatory - The filename where the signing history file should be persisted to disk. The file name should be an .xml file. If the file already exists,  it will be overwritten. NOTE: The destination folder must already exist.
- **PassThru** - switch, optional - If present, returns XML objects returning the XML file.

**Command running time:** The average running time is under 10 seconds.

### Submit-SigningJob

Submits a file to the service for signing and timestamping. The module supports valid file type for Authenticode signing is Catalog file (.cat). Valid file type for policy signing is binary policy files with the extension (.bin) that have been created via the ConvertFrom-CiPolicy cmdlet. Otherwise, binary policy file may not be deployed properly.

**Usage:**

  ```powershell
  Submit-SigningJob -InFile filename -OutFile filename [-NoTimestamp][- TimeStamperUrl "timestamper url"] [-JobDescription "description"] [... common ...]
  ```

**Parameters:**

- **InFile** - string, mandatory - The file to be signed, which must be a valid catalog file (.cat) or WDAC policy file with binary extension (.bin).
- **OutFile** - string, mandatory - The output file that should be generated by the signing process. If this file already exists, it will be overwritten. NOTE: The destination folder must already exist.
- **NoTimestamp** - switch, optional - If present, the signing operation will skip timestamping the output file, and it will be signed only. If not present (default) and TimeStamperUrl is present, the output file will be both signed and timestamped. If both NoTimestamp and TimeStamperUrl aren't present, the signing operation will skip timestamping the output file, and it will be signed only.
- **TimeStamperUrl** - string, optional - If this value is an invalid URL (and NoTimestamp not present), the module will throw an exception. To understand more about timestamping, see [Timestamping](/windows/msix/package/signing-package-overview#timestamping).
- **JobDescription** - string, optional - A short (< 100 chars), human-readable description of this submission. If the script is being called as part of an automated build process, you may want the process to pass a version number or changeset number for this field. This information will be provided as part of the results of the Get-SigningHistory command.

### Submit-SigningV1MigrationPolicy

Submits a file to the service for signing and timestamping. The only valid file type for policy signing is binary policy files with the extension (.bin) that have been created via the [ConvertFromCiPolicy](/powershell/module/configci/convertfrom-cipolicy) cmdlet. Otherwise, binary policy file may not be deployed properly. Note: Only use for DGSS V1 migration.

**Usage:**

  ```powershell
  Submit-SigningV1MigrationPolicy -InFile filename -OutFile filename [-NoTimestamp][-TimeStamperUrl "timestamper url"] [-JobDescription "description"] [... common ...]
  ```

**Parameters:**

- **InFile** - string, mandatory - The file to be signed, which must be a WDAC policy file with binary extension (.bin).
- **OutFile** - string, mandatory - The output file that should be generated by the signing process. If this file already exists, it will be overwritten. NOTE: The destination folder must already exist.
- **NoTimestamp** - switch, optional - If present, the signing operation will skip timestamping the output file, and it will be signed only. If not present (default) and TimeStamperUrl is present, the output file will be both signed and timestamped. If both NoTimestamp and TimeStamperUrl aren't present, the signing operation will skip timestamping the output file, and it will be signed only.
- **TimeStamperUrl** - string, optional - If this value is an invalid URL (and NoTimestamp not present), the module will throw exception. To understand more about timestamping, see [Timestamping](/windows/msix/package/signing-package-overview#timestamping).
- **JobDescription** - string, optional - A short (< 100 chars), human-readable description of this submission. If the script is being called as part of an automated build process, you may want the process to pass a version number or changeset number for this field. This information will be provided as part of the results of the Get-SigningHistory command.

**Command running time:** The average running time is under 20 seconds but may be up to 3 minutes.

### Common parameters [... common ...]

In addition to cmdlet-specific parameters, each cmdlet understands the following common parameters.

**Usage:**

  ```powershell
  ... [-NoPrompt] [-Credential $creds] [-AppId AppId] [-Verbose]
  ```

**Parameters:**

- **NoPrompt** - switch, optional - If present, indicates that the script is running in a headless environment and that all UI should be suppressed. If UI must be displayed (for example, for authentication) when the switch is set, the operation will instead fail.
- **Credential + AppId** - PSCredential - A sign-in credential (username and password) and AppId.

## File and size limits

When you're uploading files for DGSS signing, there are a few limits for files and file size:

| Description                                           | Limit    |
|-------------------------------------------------------|----------|
| Maximum size for a policy or catalog file             | 3.5 MB   |
| Maximum size for multiple files (uploaded in a group) | 4 MB     |
| Maximum number of files per upload                    | 15 files |

## File types

Catalog and policy files submitted to DGSS for signing must use specific file extensions:

| File          | Required file extension |
|---------------|--------------------|
| catalog files | .cat               |
| policy files  | .bin               |

## DGSS signing certificates

All certificates generated by the DGSS are unique per customer and are independent of the Microsoft production code signing certificate authorities. All Certification Authority (CA) keys are stored within the cryptographic boundary of Federal Information Processing Standards (FIPS) publication 140-2 compliant hardware security modules. After initial generation, root certificate keys and top level CA keys are removed from the online signing service, encrypted, and stored offline.
