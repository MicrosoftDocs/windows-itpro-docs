---
title: Understand Windows Defender Application Control (WDAC) policy rules and file rules (Windows)
description: Learn how WDAC policy rules and file rules can control your Windows 10 and Windows 11 computers.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: jgeurten
ms.reviewer: jsuther1974
ms.author: vinpa
manager: aaroncz
ms.date: 04/05/2023
ms.technology: itpro-security
ms.topic: article
---

# Understand Windows Defender Application Control (WDAC) policy rules and file rules

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and later

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [WDAC feature availability](feature-availability.md).

Windows Defender Application Control (WDAC) can control what runs on Windows 10, Windows 11, and Windows Server 2016 and later, by setting policies that specify whether a driver or application is trusted. A policy includes *policy rules* that control options such as audit mode, and *file rules* (or *file rule levels*) that specify how applications are identified and trusted.

## Windows Defender Application Control policy rules

To modify the policy rule options of an existing WDAC policy XML, use the [WDAC Policy Wizard](/windows/security/threat-protection/windows-defender-application-control/wdac-wizard) or the [Set-RuleOption](/powershell/module/configci/set-ruleoption) PowerShell cmdlet.

You can set several rule options within a WDAC policy. Table 1 describes each rule option, and whether supplemental policies can set them. Some rule options are reserved for future work or not supported.

> [!NOTE]
> We recommend that you use **Enabled:Audit Mode** initially because it allows you to test new WDAC policies before you enforce them. With audit mode, no application is blocked—instead the policy logs an event whenever an application outside the policy is started. To allow these applications, you can capture the policy information from the event log, and then merge that information into the existing policy. When the **Enabled:Audit Mode** is deleted, the policy runs in enforced mode.

### Table 1. Windows Defender Application Control policy - policy rule options

| Rule option | Description | Valid supplemental option |
|------------ | ----------- | ----------- |
| **0 Enabled:UMCI** | WDAC policies restrict both kernel-mode and user-mode binaries. By default, only kernel-mode binaries are restricted. Enabling this rule option validates user mode executables and scripts. | No |
| **1 Enabled:Boot Menu Protection** | This option isn't currently supported. | No |
| **2 Required:WHQL** | By default, kernel drivers that aren't Windows Hardware Quality Labs (WHQL) signed are allowed to run. Enabling this rule requires that every driver is WHQL signed and removes legacy driver support. Kernel drivers built for Windows 10 should be WHQL certified. | No |
| **3 Enabled:Audit Mode (Default)** | Instructs WDAC to log information about applications, binaries, and scripts that would have been blocked, if the policy was enforced. You can use this option to identify the potential impact of your WDAC policy, and use the audit events to refine the policy before enforcement. To enforce a WDAC policy, delete this option. | No |
| **4 Disabled:Flight Signing** | If enabled, binaries from Windows Insider builds aren't trusted. This option is useful for organizations that only want to run released binaries, not pre-release Windows builds. | No |
| **5 Enabled:Inherit Default Policy** | This option is reserved for future use and currently has no effect. | Yes |
| **6 Enabled:Unsigned System Integrity Policy (Default)** | Allows the policy to remain unsigned. When this option is removed, the policy must be signed and any supplemental policies must also be signed. The certificates that are trusted for future policy updates must be identified in the UpdatePolicySigners section. Certificates that are trusted for supplemental policies must be identified in the SupplementalPolicySigners section. | Yes |
| **7 Allowed:Debug Policy Augmented** | This option isn't currently supported. | Yes |
| **8 Required:EV Signers** | This option isn't currently supported. | No |
| **9 Enabled:Advanced Boot Options Menu** | The F8 preboot menu is disabled by default for all WDAC policies. Setting this rule option allows the F8 menu to appear to physically present users. | No |
| **10 Enabled:Boot Audit on Failure** | Used when the WDAC policy is in enforcement mode. When a boot-critical driver fails during startup, the WDAC policy is placed in audit mode so that Windows loads. Administrators can validate the reason for the failure in the CodeIntegrity event log. | No |
| **11 Disabled:Script Enforcement** | This option disables script enforcement options, covering PowerShell, Windows Based Script Host (wscript.exe), Windows Console Based Script Host (cscript.exe), HTA files run in Microsoft HTML Application Host (mshta.exe), and MSXML. For more information on script enforcement, see [Script enforcement with WDAC](/windows/security/threat-protection/windows-defender-application-control/design/script-enforcement). <br/> NOTE: This option isn't supported on Windows Server 2016 and shouldn't be used on that operating system. | No |
| **12 Required:Enforce Store Applications** | If this rule option is enabled, WDAC policies also apply to Universal Windows applications. | No |
| **13 Enabled:Managed Installer** | Use this option to automatically allow applications installed by a managed installer. For more information, see [Authorize apps deployed with a WDAC managed installer](configure-authorized-apps-deployed-with-a-managed-installer.md) | Yes |
| **14 Enabled:Intelligent Security Graph Authorization** | Use this option to automatically allow applications with "known good" reputation as defined by Microsoft's Intelligent Security Graph (ISG). | Yes |
| **15 Enabled:Invalidate EAs on Reboot** | When the Intelligent Security Graph option (14) is used, WDAC sets an extended file attribute that indicates that the file was authorized to run. This option causes WDAC to periodically revalidate the reputation for files previously authorized by the ISG.| No |
| **16 Enabled:Update Policy No Reboot** | Use this option to allow future WDAC policy updates to apply without requiring a system reboot.<br/> NOTE: This option is only supported on Windows 10, version 1709 and later, or Windows Server 2019 and later.| No |
| **17 Enabled:Allow Supplemental Policies** | Use this option on a base policy to allow supplemental policies to expand it.<br/> NOTE: This option is only supported on Windows 10, version 1903 and later, or Windows Server 2022 and later. | No |
| **18 Disabled:Runtime FilePath Rule Protection** | This option disables the default runtime check that only allows FilePath rules for paths that are only writable by an administrator.<br/> NOTE: This option is only supported on Windows 10, version 1903 and later, or Windows Server 2022 and later. | Yes |
| **19 Enabled:Dynamic Code Security** | Enables policy enforcement for .NET applications and dynamically loaded libraries.<br/> NOTE: This option is only supported on Windows 10, version 1803 and later, or Windows Server 2019 and later. | No |
| **20 Enabled:Revoked Expired As Unsigned** | Use this option to treat binaries signed with revoked certificates, or expired certificates with the Lifetime Signing EKU on the signature, as "Unsigned binaries" for user-mode process/components, under enterprise signing scenarios. | No |

## Windows Defender Application Control file rule levels

File rule levels allow administrators to specify the level at which they want to trust their applications. This level of trust could be as granular as the hash of each binary, or as general as a CA certificate. You specify file rule levels when using the WDAC Wizard or WDAC PowerShell cmdlets to create and modify policies.

Each file rule level has advantages and disadvantages. Use Table 2 to select the appropriate protection level for your available administrative resources and WDAC deployment scenario.

### Table 2. Windows Defender Application Control policy - file rule levels

| Rule level | Description |
|----------- | ----------- |
| **Hash** | Specifies individual [Authenticode/PE image hash values](#more-information-about-hashes) for each discovered binary. This level is the most specific level, and requires more effort to maintain the current product versions' hash values. Each time a binary is updated, the hash value changes, therefore requiring a policy update. |
| **FileName** | Specifies the original filename for each binary. Although the hash values for an application are modified when updated, the file names are typically not. This level offers less specific security than the hash level, but it doesn't typically require a policy update when any binary is modified. |
| **FilePath** | Beginning with Windows 10 version 1903, this level allows binaries to run from specific file path locations. FilePath rules only apply to user mode binaries and can't be used to allow kernel mode drivers. More information about FilePath level rules can be found later in this article. |
| **SignedVersion** | This level combines the publisher rule with a version number. It allows anything to run from the specified publisher with a version at or above the specified version number. |
| **Publisher** | This level combines the PcaCertificate level (typically one certificate below the root) and the common name (CN) of the leaf certificate. You can use this rule level to trust a certificate issued by a particular CA and issued to a specific company you trust (such as Intel, for device drivers). |
| **FilePublisher** | This level combines the "FileName" attribute of the signed file, plus "Publisher" (PCA certificate with CN of leaf), plus a minimum version number. This option trusts specific files from the specified publisher, with a version at or above the specified version number. |
| **LeafCertificate** | Adds trusted signers at the individual signing certificate level. The benefit of using this level versus the individual hash level is that new versions of the product will have different hash values but typically the same signing certificate. When this level is used, no policy update would be needed to run the new version of the application. However, leaf certificates typically have shorter validity periods than other certificate levels, so the WDAC policy must be updated whenever these certificates change. |
| **PcaCertificate** | Adds the highest available certificate in the provided certificate chain to signers. This level is typically one certificate below the root because the scan doesn't resolve the complete certificate chain via the local root stores or with an online check. |
| **RootCertificate** | Not supported. |
| **WHQL** | Only trusts binaries that have been submitted to Microsoft and signed by the Windows Hardware Qualification Lab (WHQL). This level is primarily for kernel binaries. |
| **WHQLPublisher** | This level combines the WHQL level and the CN on the leaf certificate, and is primarily for kernel binaries. |
| **WHQLFilePublisher** | This level combines the "FileName" attribute of the signed file, plus "WHQLPublisher", plus a minimum version number. This level is primarily for kernel binaries. |

> [!NOTE]
> When you create WDAC policies with [New-CIPolicy](/powershell/module/configci/new-cipolicy), you can specify a primary file rule level, by including the **-Level** parameter. For discovered binaries that cannot be trusted based on the primary file rule criteria, use the **-Fallback** parameter. For example, if the primary file rule level is PCACertificate, but you would like to trust the unsigned applications as well, using the Hash rule level as a fallback adds the hash values of binaries that did not have a signing certificate.

> [!NOTE]
>
> - WDAC only supports signer rules for RSA certificate signing keys with a maximum of 4096 bits.
> - The code uses CN for the CertSubject and CertIssuer fields in the policy. You can use the inbox certutil to look at the underlying format to ensure UTF-8 is not being used for the CN. For example, you can use printable string, IA5, or BMP.

> [!NOTE]
> When applicable, minimum and maximum version numbers in a file rule are referenced as MinimumFileVersion and MaximumFileVersion respectively in the policy XML.
>
> - Both MinimumFileVersion and MaximumFileVersion specified: For Allow rules, file with version **greater than or equal** to MinimumFileVersion and **less than or equal** to MaximumFileVersion are allowed. For Deny rules, file with version **greater than or equal** to MinimumFileVersion and **less than or equal** to MaximumFileVersion are denied.
> - MinimumFileVersion specified without MaximumFileVersion: For Allow rules, file with version **greater than or equal** to the specified version are allowed to run. For Deny rules, file with version **less than or equal** to the specified version are blocked.
> - MaximumFileVersion specified without MinimumFileVersion: For Allow rules, file with version **less than or equal** to the specified version are allowed to run. For Deny rules, file with version **greater than or equal** to the specified version are blocked.

## Example of file rule levels in use

For example, consider an IT professional in a department that runs many servers. They only want to run software signed by the companies that provide their hardware, operating system, antivirus, and other important software. They know that their servers also run an internally written application that is unsigned but is rarely updated. They want to allow this application to run.

To create the WDAC policy, they build a reference server on their standard hardware, and install all of the software that their servers are known to run. Then they run [New-CIPolicy](/powershell/module/configci/new-cipolicy) with **-Level Publisher** (to allow software from their software providers, the "Publishers") and **-Fallback Hash** (to allow the internal, unsigned application). They deploy the policy in auditing mode to determine the potential impact from enforcing the policy. With the help of the audit data, they update their WDAC policies to include any other software they want to run. Then they enable the WDAC policy in enforced mode for their servers.

As part of normal operations, they'll eventually install software updates, or perhaps add software from the same software providers. Because the "Publisher" remains the same on those updates and software, they won't need to update their WDAC policy. If the unsigned, internal application is updated, they must also update the WDAC policy to allow the new version.

## File rule precedence order

WDAC has a built-in file rule conflict logic that translates to precedence order. It first processes all explicit deny rules it finds. Then, it processes any explicit allow rules. If no deny or allow rule exists, WDAC checks for a [Managed Installer claim](deployment/deploy-wdac-policies-with-memcm.md) if allowed by the policy. Lastly, WDAC falls back to the [ISG](use-windows-defender-application-control-with-intelligent-security-graph.md) if allowed by the policy.

> [!NOTE]
> To make it easier to reason over your WDAC policies, we recommend maintaining separate ALLOW and DENY policies on Windows versions that support [multiple WDAC policies](/windows/security/threat-protection/windows-defender-application-control/deploy-multiple-windows-defender-application-control-policies).

## More information about filepath rules

Filepath rules don't provide the same security guarantees that explicit signer rules do, since they're based on mutable access permissions. Filepath rules are best suited for environments where most users are running as standard rather than admin. Path rules are best suited to allow paths that you expect to remain admin-writeable only. You may want to avoid path rules for directories where standard users can modify ACLs on the folder.

### User-writable filepaths

By default, WDAC performs a user-writeability check at runtime that ensures that the current permissions on the specified filepath and its parent directories (recursively) don't allow standard users write access.

There's a defined list of SIDs that WDAC recognizes as admins. If a filepath allows write permissions for any SID not in this list, the filepath is considered to be user-writeable, even if the SID is associated to a custom admin user. To handle these special cases, you can override WDAC's runtime admin-writeable check with the **Disabled:Runtime FilePath Rule Protection** option described earlier.

WDAC's list of well-known admin SIDs are:

S-1-3-0; S-1-5-18; S-1-5-19; S-1-5-20; S-1-5-32-544; S-1-5-32-549; S-1-5-32-550; S-1-5-32-551; S-1-5-32-577; S-1-5-32-559; S-1-5-32-568; S-1-15-2-1430448594-2639229838-973813799-439329657-1197984847-4069167804-1277922394; S-1-15-2-95739096-486727260-2033287795-3853587803-1685597119-444378811-2746676523.

When filepath rules are generated using [New-CIPolicy](/powershell/module/configci/new-cipolicy), a unique, fully qualified path rule is generated for every file discovered in the scanned path(s). To create rules that instead allow all files under a specified folder path, use [New-CIPolicyRule](/powershell/module/configci/new-cipolicyrule) to define rules containing wildcards, using the [-FilePathRules](/powershell/module/configci/new-cipolicyrule#parameters) switch.

### Using wildcards in WDAC filepath rules

The following wildcards can be used in WDAC filepath rules:

| Wildcard character | Meaning | Supported operating systems |
|------------ | ----------- | ----------- |
| **`*`** | Matches zero or more characters. | Windows 11, Windows 10, and Windows Server 2022 |
| **`?`** | Matches a single character. | Windows 11 only |

You can also use the following macros when the exact volume may vary: `%OSDRIVE%`, `%WINDIR%`, `%SYSTEM32%`. These macros can be used in combination with the wildcards above.

> [!NOTE]
> On Windows 11, you can use one or more wildcards anywhere within a filepath rule.
>
> On all other Windows and Windows Server versions, **only one** wildcard is allowed per path rule **and it must be at the beginning or end of a path rule**.

#### Example filepath rules with wildcards

| Examples | Description | Supported operating systems |
|------------ | ----------- | ----------- |
| **C:\\Windows\\\*** <br> **D:\\EnterpriseApps\\MyApp\\\*** <br> **%OSDRIVE%\\Windows\\\*** | Wildcards placed at the end of a path authorize all files in the immediate path and its subdirectories recursively. | Windows 11, Windows 10, and Windows Server 2022 |
| **\*\\bar.exe** | Wildcards placed at the beginning of a path allow the exact specified filename in any location. | Windows 11, Windows 10, and Windows Server 2022 |
| **C:\\\*\\CCMCACHE\\\*\\7z????-x64.exe** <br> **%OSDRIVE%\\\*\\CCMCACHE\\\*\\7z????-x64.exe** | Wildcards used in the middle of a path allow all files that match that pattern. Consider carefully all the possible matches, particularly if your policy disables the admin-writeable check with the **Disabled:Runtime FilePath Rule Protection** option. In this example, both of these hypothetical paths would match: <br> *`C:\WINDOWS\CCMCACHE\12345\7zabcd-x64.exe`* <br> *`C:\USERS\WDACUSER\Downloads\Malware\CCMCACHE\Pwned\7zhaha-x64.exe`* | Windows 11 only |

Without a wildcard, the filepath rule allows only a specific file (ex. `C:\foo\bar.exe`).

> [!NOTE]
> When authoring WDAC policies with Configuration Manager, there is an option to create rules for specified files and folders. These rules **aren't** WDAC filepath rules. Rather, Configuration Manager performs a one-time scan of the specified files and folders and builds rules for any binaries found in those locations at the time of that scan. File changes to those specified files and folders after that scan won't be allowed unless the Configuration Manager policy is reapplied.

## More information about hashes

WDAC uses the [Authenticode/PE image hash algorithm](https://download.microsoft.com/download/9/c/5/9c5b2167-8017-4bae-9fde-d599bac8184a/Authenticode_PE.docx) when calculating the hash of a file. Unlike the more commonly known [flat file hash](/powershell/module/microsoft.powershell.utility/get-filehash), the Authenticode hash calculation omits the file's checksum, the Certificate Table, and the Attribute Certificate Table. Therefore, the Authenticode hash of a file doesn't change when the file's signatures and timestamps are altered, or when a digital signature is removed from the file. With the help of the Authenticode hash, WDAC provides added security and less management overhead so customers don't need to revise the policy hash rules when the digital signature on the file is updated.

The Authenticode/PE image hash can be calculated for digitally signed and unsigned files.

### Why does scan create four hash rules per XML file?

The PowerShell cmdlet produces an Authenticode Sha1 Hash, Sha256 Hash, Sha1 Page Hash, Sha256 Page Hash.
During validation, WDAC selects which hashes are calculated based on how the file is signed and the scenario in which the file is used.  For example, if the file is page-hash signed, WDAC validates each page of the file and avoids loading the entire file in memory to calculate the full sha256 authenticode hash.

In the cmdlets, rather than try to predict which hash will be used, we pre-calculate and use the four hashes (sha1/sha2 authenticode, and sha1/sha2 of first page).  This method is also resilient to changes in how the file is signed since your WDAC policy has more than one hash available for the file already.

### Why does scan create eight hash rules for certain XML files?

Separate rules are created for UMCI and KMCI. If the cmdlets can't determine that a file will only run in user-mode or in the kernel, then rules are created for both signing scenarios out of an abundance of caution. If you know that a particular file will only load in either user-mode or kernel, then you can safely remove the extra rules.

## Windows Defender Application Control filename rules

File name rule levels let you specify file attributes to base a rule on. File name rules provide the same security guarantees that explicit signer rules do, as they're based on non-mutable file attributes. Specification of the file name level occurs when creating new policy rules.

Use Table 3 to select the appropriate file name level for your use cases. For instance, an LOB or production application and its binaries may all share the same product name. This option lets you easily create targeted policies based on the Product Name filename rule level.

### Table 3. Windows Defender Application Control policy - filename levels

| Rule level | Description |
|----------- | ----------- |
| **File Description** |  Specifies the file description provided by the developer of the binary. |
| **Internal Name** |  Specifies the internal name of the binary. |
| **Original File Name** | Specifies the original file name, or the name with which the file was first created, of the binary. |
| **Package Family Name** |  Specifies the package family name of the binary. The package family name consists of two parts: the name of the file and the publisher ID. |
| **Product Name** |  Specifies the name of the product with which the binary ships. |
