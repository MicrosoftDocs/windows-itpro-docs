---
title: Understand WDAC policy rules and file rules (Windows 10)
description: Windows Defender Application Control (WDAC) provides control over a computer running Windows 10 by using policies that specify whether a driver or application is trusted and can be run. A policy includes *policy rules* that control options.
keywords: whitelisting, security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 03/04/2020
---

# Understand WDAC policy rules and file rules

**Applies to:**

-   Windows 10
-   Windows Server 2016 and above

Windows Defender Application Control (WDAC) provides control over a computer running Windows 10 by using policies that specify whether a driver or application is trusted and can be run. A policy includes *policy rules* that control options such as audit mode or whether user mode code integrity (UMCI) is enabled in a WDAC policy, and *file rules* (or *file rule levels*) that specify the level at which applications will be identified and trusted.

## Windows Defender Application Control policy rules

To modify the policy rule options of an existing WDAC policy XML, use [Set-RuleOption](https://docs.microsoft.com/powershell/module/configci/set-ruleoption). The following examples show how to use this cmdlet to add and remove a rule option on an existing WDAC policy:

-   To ensure that UMCI is enabled for a WDAC policy that was created with the `-UserPEs` (user mode) option, add rule option 0 to an existing policy by running the following command:

    `Set-RuleOption -FilePath <Path to policy XML> -Option 0`

    Note that a policy that was created without the `-UserPEs` option is empty of user mode executables, that is, applications. If you enable UMCI (Option 0) for such a policy and then attempt to run an application, Windows Defender Application Control will see that the application is not on its list (which is empty of applications), and respond. In audit mode, the response is logging an event, and in enforced mode, the response is blocking the application. To create a policy that includes user mode executables (applications), when you run `New-CIPolicy`, include the `-UserPEs` option. 

-   To disable UMCI on an existing WDAC policy, delete rule option 0 by running the following command:

    `Set-RuleOption -FilePath <Path to policy XML> -Option 0 -Delete`

You can set several rule options within a WDAC policy. Table 1 describes each rule option. 

> [!NOTE]
> We recommend that you use **Enabled:Audit Mode** initially because it allows you to test new WDAC policies before you enforce them. With audit mode, no application is blocked—instead the policy logs an event whenever an application outside the policy is started. To allow these applications, you can capture the policy information from the event log, and then merge that information into the existing policy. When the **Enabled:Audit Mode** is deleted, the policy runs in enforced mode.

**Table 1. Windows Defender Application Control policy - policy rule options**

| Rule option | Description |
|------------ | ----------- |
| **0 Enabled:UMCI** | WDAC policies restrict both kernel-mode and user-mode binaries. By default, only kernel-mode binaries are restricted. Enabling this rule option validates user mode executables and scripts. |
| **1 Enabled:Boot Menu Protection** | This option is not currently supported. |
| **2 Required:WHQL** | By default, legacy drivers that are not Windows Hardware Quality Labs (WHQL) signed are allowed to execute. Enabling this rule requires that every executed driver is WHQL signed and removes legacy driver support. Going forward, every new Windows 10–compatible driver must be WHQL certified. |
| **3 Enabled:Audit Mode (Default)** | Enables the execution of binaries outside of the WDAC policy but logs each occurrence in the CodeIntegrity event log, which can be used to update the existing policy before enforcement. To begin enforcing a WDAC policy, delete this option. |
| **4 Disabled:Flight Signing** | If enabled, WDAC policies will not trust flightroot-signed binaries. This would be used in the scenario in which organizations only want to run released binaries, not flighted builds. |
| **5 Enabled:Inherit Default Policy** | This option is reserved for future use and currently has no effect. |
| **6 Enabled:Unsigned System Integrity Policy (Default)** | Allows the policy to remain unsigned. When this option is removed, the policy must be signed and have UpdatePolicySigners added to the policy to enable future policy modifications. |
| **7 Allowed:Debug Policy Augmented** | This option is not currently supported. |
| **8 Required:EV Signers** | In addition to being WHQL signed, this rule requires that drivers must have been submitted by a partner that has an Extended Verification (EV) certificate. All future Windows 10 and later drivers will meet this requirement. |
| **9 Enabled:Advanced Boot Options Menu** | The F8 preboot menu is disabled by default for all WDAC policies. Setting this rule option allows the F8 menu to appear to physically present users. |
| **10 Enabled:Boot Audit on Failure** | Used when the WDAC policy is in enforcement mode. When a driver fails during startup, the WDAC policy will be placed in audit mode so that Windows will load. Administrators can validate the reason for the failure in the CodeIntegrity event log. |
| **11 Disabled:Script Enforcement** | This option disables script enforcement options. Unsigned PowerShell scripts and interactive PowerShell are no longer restricted to [Constrained Language Mode](https://docs.microsoft.com/powershell/module/microsoft.powershell.core/about/about_language_modes). NOTE: This option is supported on 1709, 1803, and 1809 builds with the 2019 10C LCU or higher, as well as on devices with the Windows 10 May 2019 Update (1903) and higher. Using it on pre-1903 versions of Windows 10 without the 10C or later LCU is not supported and may have unintended results. |
| **12 Required:Enforce Store Applications** | If this rule option is enabled, WDAC policies will also apply to Universal Windows applications. |
| **13 Enabled:Managed Installer** | Use this option to automatically allow applications installed by a software distribution solution, such as Microsoft Endpoint Configuration Manager, that has been defined as a managed installer. |
| **14 Enabled:Intelligent Security Graph Authorization** | Use this option to automatically allow applications with "known good" reputation as defined by Microsoft’s Intelligent Security Graph (ISG). |
| **15 Enabled:Invalidate EAs on Reboot** | When the Intelligent Security Graph option (14) is used, WDAC sets an extended file attribute that indicates that the file was authorized to run. This option will cause WDAC to periodically re-validate the reputation for files that were authorized by the ISG.| 
| **16 Enabled:Update Policy No Reboot** | Use this option to allow future WDAC policy updates to apply without requiring a system reboot. NOTE: This option is only supported on Windows 10, version 1709, and above.|
| **17 Enabled:Allow Supplemental Policies** | Use this option on a base policy to allow supplemental policies to expand it. NOTE: This option is only supported on Windows 10, version 1903, and above. |
| **18 Disabled:Runtime FilePath Rule Protection** | Disable default FilePath rule protection (apps and executables allowed based on file path rules must come from a file path that’s only writable by an administrator) for any FileRule that allows a file based on FilePath. NOTE: This option is only supported on Windows 10, version 1903, and above. |
| **19 Enabled:Dynamic Code Security** | Enables policy enforcement for .NET applications and dynamically-loaded libraries. NOTE: This option is only supported on Windows 10, version 1803, and above. |

## Windows Defender Application Control file rule levels

File rule levels allow administrators to specify the level at which they want to trust their applications. This level of trust could be as fine-tuned as the hash of each binary or as general as a CA certificate. You specify file rule levels both when you create a new WDAC policy from a scan and when you create a policy from audit events. In addition, to combine rule levels found in multiple policies, you can merge the policies. When merged, WDAC policies combine their file rules, so that any application that would be allowed by either of the original policies will be allowed by the combined policy. 

Each file rule level has its benefit and disadvantage. Use Table 2 to select the appropriate protection level for your available administrative resources and Windows Defender Application Control deployment scenario.

**Table 2. Windows Defender Application Control policy - file rule levels**

| Rule level | Description |
|----------- | ----------- |
| **Hash** | Specifies individual hash values for each discovered binary. Although this level is specific, it can cause additional administrative overhead to maintain the current product versions’ hash values. Each time a binary is updated, the hash value changes, therefore requiring a policy update. |
| **FileName** | Specifies individual binary file names. Although the hash values for an application are modified when updated, the file names are typically not. This offers less specific security than the hash level but does not typically require a policy update when any binary is modified. |
| **FilePath** | Beginning with Windows 10 version 1903, this specifies rules that allow execution of binaries contained under specific file path locations. Additional information about FilePath level rules can be found below. |
| **SignedVersion** | This combines the publisher rule with a version number. This option allows anything from the specified publisher, with a version at or above the specified version number, to run. |
| **Publisher** | This is a combination of the PcaCertificate level (typically one certificate below the root) and the common name (CN) of the leaf certificate. This rule level allows organizations to trust a certificate from a major CA (such as Symantec), but only if the leaf certificate is from a specific company (such as Intel, for device drivers). |
| **FilePublisher** | This is a combination of the “FileName” attribute of the signed file, plus “Publisher” (PCA certificate with CN of leaf), plus a minimum version number. This option trusts specific files from the specified publisher, with a version at or above the specified version number. |
| **LeafCertificate** | Adds trusted signers at the individual signing certificate level. The benefit of using this level versus the individual hash level is that new versions of the product will have different hash values but typically the same signing certificate. Using this level, no policy update would be needed to run the new version of the application. However, leaf certificates have much shorter validity periods than CA certificates, so additional administrative overhead is associated with updating the WDAC policy when these certificates expire. |
| **PcaCertificate** | Adds the highest available certificate in the provided certificate chain to signers. This is typically one certificate below the root certificate, because the scan does not validate anything beyond the certificates included in the provided signature (it does not go online or check local root stores). |
| **RootCertificate** | Currently unsupported. |
| **WHQL** | Trusts binaries if they have been validated and signed by WHQL. This is primarily for kernel binaries. |
| **WHQLPublisher** | This is a combination of the WHQL and the CN on the leaf certificate and is primarily for kernel binaries. |
| **WHQLFilePublisher** | Specifies that the binaries are validated and signed by WHQL, with a specific publisher (WHQLPublisher), and that the binary is the specified version or newer. This is primarily for kernel binaries. |

> [!NOTE]
> When you create WDAC policies with [New-CIPolicy](https://docs.microsoft.com/powershell/module/configci/new-cipolicy), you can specify a primary file rule level by including the **-Level** parameter. For discovered binaries that cannot be trusted based on the primary file rule criteria, use the **-Fallback** parameter. For example, if the primary file rule level is PCACertificate but you would like to trust the unsigned applications as well, using the Hash rule level as a fallback adds the hash values of binaries that did not have a signing certificate.

> [!NOTE]
> WDAC only supports signer rules for RSA certificate signing keys with a maximum of 4096 bits.

## Example of file rule levels in use

For example, consider some IT professionals in a department that runs many servers. They decide they want their servers to run only software signed by the providers of their software and drivers, that is, the companies that provide their hardware, operating system, antivirus, and other important software. They know that their servers also run an internally written application that is unsigned but is rarely updated. They want to allow this application to run.

To create the WDAC policy, they build a reference server on their standard hardware, and install all of the software that their servers are known to run. Then they run [New-CIPolicy](https://docs.microsoft.com/powershell/module/configci/new-cipolicy) with **-Level Publisher** (to allow software from their software providers, the "Publishers") and **-Fallback Hash** (to allow the internal, unsigned application). They enable the policy in auditing mode and gather information about any necessary software that was not included on the reference server. They merge WDAC policies into the original policy to allow that additional software to run. Then they enable the WDAC policy in enforced mode for their servers.

As part of normal operations, they will eventually install software updates, or perhaps add software from the same software providers. Because the "Publisher" remains the same on those updates and software, they will not need to update their WDAC policy. If they come to a time when the internally-written, unsigned application must be updated, they must also update the WDAC policy so that the hash in the policy matches the hash of the updated internal application.

They could also choose to create a catalog that captures information about the unsigned internal application, then sign and distribute the catalog. Then the internal application could be handled by WDAC policies in the same way as any other signed application. An update to the internal application would only require that the catalog be regenerated, signed, and distributed (no restarts would be required).

## More information about filepath rules

Filepath rules do not provide the same security guarantees that explicit signer rules do, as they are based on mutable access permissions. Filepath rules are best suited for environments where most users are running as standard rather than admin. IT Pros should take care while crafting path rules to allow paths that they know are likely to remain to be admin-writeable only and deny execution from sub-directories where standard users can modify ACLs on the folder. 

By default, WDAC performs a user-writeability check at runtime which ensures that the current permissions on the specified filepath and its parent directories (recursively) do not allow standard users write access. 

There is a defined list of SIDs which WDAC recognizes as admins. If a filepath allows write permissions for any SID not in this list, the filepath is considered to be user-writeable even if the additional SID is associated to a custom admin user. To handle these special cases, you can override WDAC's runtime admin-writeable check with the **Disabled:Runtime FilePath Rule Protection** option described above. 

WDAC's list of well-known admin SIDs are: <br>
S-1-3-0; S-1-5-18; S-1-5-19; S-1-5-20; S-1-5-32-544; S-1-5-32-549; S-1-5-32-550; S-1-5-32-551; S-1-5-32-577; S-1-5-32-559; S-1-5-32-568; S-1-15-2-1430448594-2639229838-973813799-439329657-1197984847-4069167804-1277922394; S-1-15-2-95739096-486727260-2033287795-3853587803-1685597119-444378811-2746676523. 

When generating filepath rules using [New-CIPolicy](https://docs.microsoft.com/powershell/module/configci/new-cipolicy), a unique, fully-qualified path rule is generated for every file discovered in the scanned path(s). To create rules that instead allow all files under a specified folder path, use [New-CIPolicyRule](https://docs.microsoft.com/powershell/module/configci/new-cipolicyrule) to define rules containing wildcards using the [-FilePathRules](https://docs.microsoft.com/powershell/module/configci/new-cipolicyrule#parameters) switch. 

Wildcards can be used at the beginning or end of a path rule; only one wildcard is allowed per path rule. Wildcards placed at the end of a path authorize all files in that path and its subdirectories recursively (ex. `C:\\*` would include `C:\foo\\*` ). Wildcards placed at the beginning of a path will allow the exact specified filename under any path (ex. `*\bar.exe` would allow `C:\bar.exe` and `C:\foo\bar.exe`). Wildcards in the middle of a path are not supported (ex. `C:\\*\foo.exe`). Without a wildcard, the rule will allow only a specific file (ex. `C:\foo\bar.exe`). <br/> The use of macros is also supported and useful in scenarios where the system drive is different from the `C:\` drive. Supported macros: `%OSDRIVE%`, `%WINDIR%`, `%SYSTEM32%`.

> [!NOTE]
> Due to an existing bug, you can not combine Path-based ALLOW rules with any DENY rules in a single policy. Instead, either separate DENY rules into a separate Base policy or move the Path-based ALLOW rules into a supplemental policy as described in [Deploy multiple WDAC policies.](deploy-multiple-windows-defender-application-control-policies.md)

## Windows Defender Application Control filename rules

File name rule levels provide administrators to specify the file attributes off which to base a file name rule. File name rules do not provide the same security guarantees that explicit signer rules do, as they are based on mutable access permissions. Specification of the file name level occurs when creating new policy rules. In addition, to combine file name levels found in multiple policies, you can merge multiple policies. 

Use Table 3 to select the appropriate file name level for your available administrative resources and Windows Defender Application Control deployment scenario.

**Table 3. Windows Defender Application Control policy - filename levels**

| Rule level | Description |
|----------- | ----------- |
| **File Description** |  Specifies the file description provided by the developer of the binary. |
| **Internal Name** |  Specifies the internal name of the binary. |
| **Original File Name** | Specifies the original file name, or the name with which the file was first created, of the binary. |
| **Package Family Name** |  Specifies the package family name of the binary. The package family name consists of two parts: the name of the file and the publisher ID. |
| **Product Name** |  Specifies the name of the product with which the binary ships. |
