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
ms.collection: M365-security-compliance
author: jgeurten
ms.reviewer: jsuther1974
ms.author: vinpa
manager: aaroncz
ms.date: 08/29/2022
ms.technology: itpro-security
---

# Understand Windows Defender Application Control (WDAC) policy rules and file rules

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](feature-availability.md).

Windows Defender Application Control (WDAC) can control what runs on Windows 10 and Windows 11, by setting policies that specify whether a driver or application is trusted. A policy includes *policy rules* that control options such as audit mode, and *file rules* (or *file rule levels*) that specify how applications are identified and trusted.

Windows Defender Application Control is used to restrict devices to run only approved apps, while the operating system is hardened against kernel memory attacks using [hypervisor-protected code integrity (HVCI)](/windows/security/threat-protection/device-guard/introduction-to-device-guard-virtualization-based-security-and-windows-defender-application-control).

## Windows Defender Application Control policy rules

To modify the policy rule options of an existing Windows Defender Application Control policy XML, use [Set-RuleOption](/powershell/module/configci/set-ruleoption). The following examples show how to use this cmdlet to add and remove a rule option on an existing WDAC policy:

- To ensure that UMCI is enabled for a WDAC policy that was created with the `-UserPEs` (user mode) option, add rule option 0 to an existing policy, by running the following command:

    `Set-RuleOption -FilePath <Path to policy XML> -Option 0`

    A policy created without the `-UserPEs` option has no rules for user mode code. If you enable UMCI (Option 0) for such a policy, WDAC will block all applications, and even critical Windows user session code. In audit mode, WDAC simply logs an event, but when enforced, all user mode code will be blocked. To create a policy that includes user mode executables (applications), run `New-CIPolicy` with the `-UserPEs` option.

- To disable UMCI on an existing WDAC policy, delete rule option 0 by running the following command:

    `Set-RuleOption -FilePath <Path to policy XML> -Option 0 -Delete`

You can set several rule options within a WDAC policy. Table 1 describes each rule option, and whether they have supplemental policies. However, option 5 isn't implemented as it's reserved for future work, and option 7 isn't supported.

> [!NOTE]
> We recommend that you use **Enabled:Audit Mode** initially because it allows you to test new Windows Defender Application Control policies before you enforce them. With audit mode, no application is blocked—instead the policy logs an event whenever an application outside the policy is started. To allow these applications, you can capture the policy information from the event log, and then merge that information into the existing policy. When the **Enabled:Audit Mode** is deleted, the policy runs in enforced mode.

### Table 1. Windows Defender Application Control policy - policy rule options

| Rule option | Description | Valid supplemental option |
|------------ | ----------- | ----------- |
| **0 Enabled:UMCI** | WDAC policies restrict both kernel-mode and user-mode binaries. By default, only kernel-mode binaries are restricted. Enabling this rule option validates user mode executables and scripts. | No |
| **1 Enabled:Boot Menu Protection** | This option isn't currently supported. | No |
| **2 Required:WHQL** | By default, legacy drivers that aren't Windows Hardware Quality Labs (WHQL) signed are allowed to execute. Enabling this rule requires that every executed driver is WHQL signed and removes legacy driver support. Kernel drivers built for Windows 10 should be WHQL certified. | No |
| **3 Enabled:Audit Mode (Default)** | Instructs WDAC to log information about applications, binaries, and scripts that would have been blocked, if the policy was enforced. You can use this option to identify the potential impact of your WDAC policy, and use the audit events to refine the policy before enforcement. To enforce a WDAC policy, delete this option. | No |
| **4 Disabled:Flight Signing** | If enabled, WDAC policies won't trust flightroot-signed binaries. This option would be used by organizations that only want to run released binaries, not pre-release Windows builds. | No |
| **5 Enabled:Inherit Default Policy** | This option is reserved for future use and currently has no effect. | Yes |
| **6 Enabled:Unsigned System Integrity Policy (Default)** | Allows the policy to remain unsigned. When this option is removed, the policy must be signed. The certificates that are trusted for future policy updates must be identified in the UpdatePolicySigners section. | Yes |
| **7 Allowed:Debug Policy Augmented** | This option isn't currently supported. | Yes |
| **8 Required:EV Signers** | This option isn't currently supported. | No |
| **9 Enabled:Advanced Boot Options Menu** | The F8 preboot menu is disabled by default for all WDAC policies. Setting this rule option allows the F8 menu to appear to physically present users. | No |
| **10 Enabled:Boot Audit on Failure** | Used when the WDAC policy is in enforcement mode. When a driver fails during startup, the WDAC policy will be placed in audit mode so that Windows will load. Administrators can validate the reason for the failure in the CodeIntegrity event log. | No |
| **11 Disabled:Script Enforcement** | This option disables script enforcement options, covering PowerShell, Windows Based Script Host (wscript.exe), Windows Console Based Script Host (cscript.exe), HTA files run in Microsoft HTML Application Host (mshta.exe), and MSXML. For more information on script enforcement, see [Script enforcement with WDAC](/windows/security/threat-protection/windows-defender-application-control/design/script-enforcement). <br/> NOTE: This option isn't supported on Windows Server 2016 and shouldn't be used on that operating system. | No |
| **12 Required:Enforce Store Applications** | If this rule option is enabled, WDAC policies will also apply to Universal Windows applications. | No |
| **13 Enabled:Managed Installer** | Use this option to automatically allow applications installed by a managed installer. For more information, see [Authorize apps deployed with a WDAC managed installer](configure-authorized-apps-deployed-with-a-managed-installer.md) | Yes |
| **14 Enabled:Intelligent Security Graph Authorization** | Use this option to automatically allow applications with "known good" reputation as defined by Microsoft's Intelligent Security Graph (ISG). | Yes |
| **15 Enabled:Invalidate EAs on Reboot** | When the Intelligent Security Graph option (14) is used, WDAC sets an extended file attribute that indicates that the file was authorized to run. This option will cause WDAC to periodically revalidate the reputation for files that were authorized by the ISG.| No |
| **16 Enabled:Update Policy No Reboot** | Use this option to allow future WDAC policy updates to apply without requiring a system reboot.<br/> NOTE: This option is only supported on Windows 10, version 1709 and above.| No |
| **17 Enabled:Allow Supplemental Policies** | Use this option on a base policy to allow supplemental policies to expand it.<br/> NOTE: This option is only supported on Windows 10, version 1903 and above. | No |
| **18 Disabled:Runtime FilePath Rule Protection** | This option disables the default runtime check that only allows FilePath rules for paths that are only writable by an administrator.<br/> NOTE: This option is only supported on Windows 10, version 1903 and above. | Yes |
| **19 Enabled:Dynamic Code Security** | Enables policy enforcement for .NET applications and dynamically loaded libraries.<br/> NOTE: This option is only supported on Windows 10, version 1803 and above. | No |
| **20 Enabled:Revoked Expired As Unsigned** | Use this option to treat binaries signed with expired and/or revoked certificates as "Unsigned binaries" for user-mode process/components, under enterprise signing scenarios. | No |

## Windows Defender Application Control file rule levels

File rule levels allow administrators to specify the level at which they want to trust their applications. This level of trust could be as granular as the hash of each binary, or as general as a CA certificate. You specify file rule levels when using WDAC PowerShell cmdlets to create and modify policies.

Each file rule level has its benefit and disadvantage. Use Table 2 to select the appropriate protection level for your available administrative resources and Windows Defender Application Control deployment scenario.

### Table 2. Windows Defender Application Control policy - file rule levels

| Rule level | Description |
|----------- | ----------- |
| **Hash** | Specifies individual [Authenticode/PE image hash values](#more-information-about-hashes) for each discovered binary. This level is the most specific level, and requires more effort to maintain the current product versions' hash values. Each time a binary is updated, the hash value changes, therefore requiring a policy update. |
| **FileName** | Specifies the original filename for each binary. Although the hash values for an application are modified when updated, the file names are typically not. This level offers less specific security than the hash level, but it doesn't typically require a policy update when any binary is modified. |
| **FilePath** | Beginning with Windows 10 version 1903, this level allows binaries to run from specific file path locations. FilePath rules only apply to user mode binaries and can't be used to allow kernel mode drivers. More information about FilePath level rules can be found below. |
| **SignedVersion** | This level combines the publisher rule with a version number. It allows anything to run from the specified publisher with a version at or above the specified version number. |
| **Publisher** | This level combines the PcaCertificate level (typically one certificate below the root) and the common name (CN) of the leaf certificate. You can use this rule level to trust a certificate issued by a particular CA and issued to a specific company you trust (such as Intel, for device drivers). |
| **FilePublisher** | This level combines the "FileName" attribute of the signed file, plus "Publisher" (PCA certificate with CN of leaf), plus a minimum version number. This option trusts specific files from the specified publisher, with a version at or above the specified version number. |
| **LeafCertificate** | Adds trusted signers at the individual signing certificate level. The benefit of using this level versus the individual hash level is that new versions of the product will have different hash values but typically the same signing certificate. When this level is used, no policy update would be needed to run the new version of the application. However, leaf certificates have much shorter validity periods than other certificate levels, so the Windows Defender Application Control policy must be updated whenever these certificates change. |
| **PcaCertificate** | Adds the highest available certificate in the provided certificate chain to signers. This level is typically one certificate below the root certificate because the scan doesn't validate anything beyond the certificates included in the provided signature (it doesn't go online or check local root stores). |
| **RootCertificate** | Currently unsupported. |
| **WHQL** | Trusts binaries if they've been validated and signed by WHQL. This level is primarily for kernel binaries. |
| **WHQLPublisher** | This level combines the WHQL level and the CN on the leaf certificate, and is primarily for kernel binaries. |
| **WHQLFilePublisher** | Specifies that the binaries are validated and signed by WHQL, with a specific publisher (WHQLPublisher), and that the binary is the specified version or newer. This level is primarily for kernel binaries. |

> [!NOTE]
> When you create Windows Defender Application Control policies with [New-CIPolicy](/powershell/module/configci/new-cipolicy), you can specify a primary file rule level, by including the **-Level** parameter. For discovered binaries that cannot be trusted based on the primary file rule criteria, use the **-Fallback** parameter. For example, if the primary file rule level is PCACertificate, but you would like to trust the unsigned applications as well, using the Hash rule level as a fallback adds the hash values of binaries that did not have a signing certificate.

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

To create the Windows Defender Application Control policy, they build a reference server on their standard hardware, and install all of the software that their servers are known to run. Then they run [New-CIPolicy](/powershell/module/configci/new-cipolicy) with **-Level Publisher** (to allow software from their software providers, the "Publishers") and **-Fallback Hash** (to allow the internal, unsigned application). They deploy the policy in auditing mode to determine the potential impact from enforcing the policy. With the help of the audit data, they update their WDAC policies to include any other software they want to run. Then they enable the WDAC policy in enforced mode for their servers.

As part of normal operations, they'll eventually install software updates, or perhaps add software from the same software providers. Because the "Publisher" remains the same on those updates and software, they won't need to update their WDAC policy. If the unsigned, internal application is updated, they must also update the WDAC policy to allow the new version.

## File rule precedence order

Windows Defender Application Control has a built-in file rule conflict logic that translates to precedence order. It will first process all explicit deny rules it finds. Then, it will process all explicit allow rules. If no deny or allow rule exists, WDAC will check for [Managed Installer EA](deployment/deploy-wdac-policies-with-memcm.md). Lastly, if none of these sets exist, WDAC will fall back on [ISG](use-windows-defender-application-control-with-intelligent-security-graph.md).

> [!NOTE]
> For others to better understand the WDAC policies that have been deployed, we recommend maintaining separate ALLOW and DENY policies on Windows 10, version 1903 and later.

## More information about filepath rules

Filepath rules don't provide the same security guarantees that explicit signer rules do, since they're based on mutable access permissions. Filepath rules are best suited for environments where most users are running as standard rather than admin. Path rules are best suited to allow paths that you expect will remain admin-writeable only. You may want to avoid path rules for directories where standard users can modify ACLs on the folder.

By default, Windows Defender Application Control performs a user-writeability check at runtime that ensures that the current permissions on the specified filepath and its parent directories (recursively) don't allow standard users write access.

There's a defined list of SIDs that WDAC recognizes as admins. If a filepath allows write permissions for any SID not in this list, the filepath is considered to be user-writeable, even if the SID is associated to a custom admin user. To handle these special cases, you can override WDAC's runtime admin-writeable check with the **Disabled:Runtime FilePath Rule Protection** option described above.

WDAC's list of well-known admin SIDs are:

S-1-3-0; S-1-5-18; S-1-5-19; S-1-5-20; S-1-5-32-544; S-1-5-32-549; S-1-5-32-550; S-1-5-32-551; S-1-5-32-577; S-1-5-32-559; S-1-5-32-568; S-1-15-2-1430448594-2639229838-973813799-439329657-1197984847-4069167804-1277922394; S-1-15-2-95739096-486727260-2033287795-3853587803-1685597119-444378811-2746676523.

When filepath rules are being generated using [New-CIPolicy](/powershell/module/configci/new-cipolicy), a unique, fully qualified path rule is generated for every file discovered in the scanned path(s). To create rules that instead allow all files under a specified folder path, use [New-CIPolicyRule](/powershell/module/configci/new-cipolicyrule) to define rules containing wildcards, using the [-FilePathRules](/powershell/module/configci/new-cipolicyrule#parameters) switch.

Wildcards can be used at the beginning or end of a path rule; only one wildcard is allowed per path rule. Wildcards placed at the end of a path authorize all files in that path and its subdirectories recursively (ex. `C:\*` would include `C:\foo\*` ). Wildcards placed at the beginning of a path will allow the exact specified filename under any path (ex. `*\bar.exe` would allow `C:\bar.exe` and `C:\foo\bar.exe`). Wildcards in the middle of a path aren't supported (ex. `C:\*\foo.exe`). Without a wildcard, the rule will allow only a specific file (ex. `C:\foo\bar.exe`).

You can also use the following macros when the exact volume may vary: `%OSDRIVE%`, `%WINDIR%`, `%SYSTEM32%`.

> [!NOTE]
> When authoring WDAC policies with Microsoft Configuration Manager (MEMCM), you can instruct MEMCM to create rules for specified files and folders. These rules **aren't** WDAC filepath rules. Rather, MEMCM performs a one-time scan of the specified files and folders and builds rules for any binaries found in those locations at the time of that scan. File changes to those specified files and folders after that scan won't be allowed unless the MEMCM policy is reapplied.

> [!NOTE]
> There is currently a bug where MSIs cannot be allow listed in file path rules. MSIs must be allow listed using other rule types, for example, publisher rules or file attribute rules.

## More information about hashes

WDAC uses the [Authenticode/PE image hash algorithm](https://download.microsoft.com/download/9/c/5/9c5b2167-8017-4bae-9fde-d599bac8184a/Authenticode_PE.docx) when calculating the hash of a file. Unlike the more popular, but less secure, [flat file hash](/powershell/module/microsoft.powershell.utility/get-filehash), the Authenticode hash calculation omits the file's checksum and the Certificate Table and the Attribute Certificate Table. Therefore, the Authenticode hash of a file doesn't change when the file is re-signed or timestamped, or the digital signature is removed from the file. With the help of the Authenticode hash, WDAC provides added security and less management overhead so customers don't need to revise the policy hash rules when the digital signature on the file is updated.

The Authenticode/PE image hash can be calculated for digitally signed and unsigned files.

### Why does scan create four hash rules per XML file?

The PowerShell cmdlet will produce an Authenticode Sha1 Hash, Sha256 Hash, Sha1 Page Hash, Sha256 Page Hash.
During validation, CI will choose which hashes to calculate, depending on how the file is signed.  For example, if the file is page-hash signed the entire file wouldn't get paged in to do a full sha256 authenticode, and we would just match using the first page hash.

In the cmdlets, rather than try to predict which hash CI will use, we pre-calculate and use the four hashes (sha1/sha2 authenticode, and sha1/sha2 of first page).  This method is also resilient, if the signing status of the file changes and necessary for deny rules to ensure that changing/stripping the signature doesn't result in a different hash than what was in the policy being used by CI.

### Why does scan create eight hash rules for certain XML files?

Separate rules are created for UMCI and KMCI. In some cases, files that are purely user-mode or purely kernel-mode may still generate both sets, since CI can't always precisely determine what is purely user vs. kernel mode, and errs on the side of caution.

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
