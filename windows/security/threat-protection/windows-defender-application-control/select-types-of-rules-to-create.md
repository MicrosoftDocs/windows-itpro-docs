---
title: Select the types of rules to create  (Windows 10)
description: Select the types of rules to create. 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.date: 04/20/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# Deploy Windows Defender Application Control policy rules and file rules

**Applies to:**

-   Windows 10
-   Windows Server 2016

Windows Defender Application Control (WDAC) provides control over a computer running Windows 10 by using policies that specify whether a driver or application is trusted and can be run. A policy includes *policy rules* that control options such as audit mode or whether user mode code integrity (UMCI) is enabled in a WDAC policy, and *file rules* (or *file rule levels*) that specify the level at which applications will be identified and trusted.

## Overview of the process of creating Windows Defender Application Control policies

A common system imaging practice in today’s IT organization is to establish a “golden” image as a reference for what an ideal system should look like, and then use that image to clone additional company assets. WDAC policies follow a similar methodology, that begins with the establishment of a golden computer. As with imaging, you can have multiple golden computers based on model, department, application set, and so on. Although the thought process around the creation of WDAC policies is similar to imaging, these policies should be maintained independently. Assess the necessity of additional WDAC policies based on what should be allowed to be installed and run and for whom. For more details on doing this assessment, see the [WDAC Design Guide](windows-defender-application-control-design-guide.md).

Optionally, WDAC can align with your software catalog as well as any IT department–approved applications. One straightforward method to implement WDAC is to use existing images to create one master WDAC policy. You do so by creating a WDAC policy from each image, and then by merging the policies. This way, what is installed on all of those images will be allowed to run, if the applications are installed on a computer based on a different image. Alternatively, you may choose to create a base applications policy and add policies based on the computer’s role or department. Organizations have a choice of how their policies are created, merged or serviced, and managed.

If you plan to use an internal CA to sign catalog files or WDAC policies, see the steps in [Optional: Create a code signing certificate for Windows Defender Application Control](create-code-signing-cert-for-windows-defender-application-control.md). 

## Windows Defender Application Control policy rules

To modify the policy rule options of an existing WDAC policy, use [Set-RuleOption](https://docs.microsoft.com/powershell/module/configci/set-ruleoption). Note the following examples of how to use this cmdlet to add and remove a rule option on an existing WDAC policy:

-   To ensure that UMCI is enabled for a WDAC policy that was created with the `-UserPEs` (user mode) option, add rule option 0 to an existing policy by running the following command:

    ` Set-RuleOption -FilePath <Path to policy> -Option 0`

    Note that a policy that was created without the `-UserPEs` option is empty of user mode executables, that is, applications. If you enable UMCI (Option 0) for such a policy and then attempt to run an application, Windows Defender Application Control will see that the application is not on its list (which is empty of applications), and respond. In audit mode, the response is logging an event, and in enforced mode, the response is blocking the application. To create a policy that includes user mode executables (applications), when you run `New-CIPolicy`, include the `-UserPEs` option. 

-   To disable UMCI on an existing WDAC policy, delete rule option 0 by running the following command:

    ` Set-RuleOption -FilePath <Path to policy> -Option 0 -Delete`

You can set several rule options within a WDAC policy. Table 2 describes each rule option. 

> [!NOTE] 
> We recommend that you use **Enabled:Audit Mode** initially because it allows you to test new WDAC policies before you enforce them. With audit mode, no application is blocked—instead the policy logs an event whenever an application outside the policy is started. To allow these applications, you can capture the policy information from the event log, and then merge that information into the existing policy. When the **Enabled:Audit Mode** is deleted, the policy runs in enforced mode.

**Table 2. Windows Defender Application Control policy - policy rule options**

| Rule option | Description |
|------------ | ----------- |
| **0 Enabled:UMCI** | WDAC policies restrict both kernel-mode and user-mode binaries. By default, only kernel-mode binaries are restricted. Enabling this rule option validates user mode executables and scripts. |
| **1 Enabled:Boot Menu Protection** | This option is not currently supported. |
| **2 Required:WHQL** | By default, legacy drivers that are not Windows Hardware Quality Labs (WHQL) signed are allowed to execute. Enabling this rule requires that every executed driver is WHQL signed and removes legacy driver support. Going forward, every new Windows 10–compatible driver must be WHQL certified. |
| **3 Enabled:Audit Mode (Default)** | Enables the execution of binaries outside of the WDAC policy but logs each occurrence in the CodeIntegrity event log, which can be used to update the existing policy before enforcement. To begin enforcing a WDAC policy, delete this option. |
| **4 Disabled:Flight Signing** | If enabled, WDAC policies will not trust flightroot-signed binaries. This would be used in the scenario in which organizations only want to run released binaries, not flighted builds. |
| **5 Enabled:Inherit Default Policy** | This option is not currently supported. |
| **6 Enabled:Unsigned System Integrity Policy (Default)** | Allows the policy to remain unsigned. When this option is removed, the policy must be signed and have UpdatePolicySigners added to the policy to enable future policy modifications. |
| **7 Allowed:Debug Policy Augmented** | This option is not currently supported. |
| **8 Required:EV Signers** | In addition to being WHQL signed, this rule requires that drivers must have been submitted by a partner that has an Extended Verification (EV) certificate. All future Windows 10 and later drivers will meet this requirement. |
| **9 Enabled:Advanced Boot Options Menu** | The F8 preboot menu is disabled by default for all WDAC policies. Setting this rule option allows the F8 menu to appear to physically present users. |
| **10 Enabled:Boot Audit on Failure** | Used when the WDAC policy is in enforcement mode. When a driver fails during startup, the WDAC policy will be placed in audit mode so that Windows will load. Administrators can validate the reason for the failure in the CodeIntegrity event log. |
| **11 Disabled:Script Enforcement** | This option is not currently supported. |
| **12 Required:Enforce Store Applications** | If this rule option is enabled, WDAC policies will also apply to Universal Windows applications. |
| **13 Enabled:Managed Installer** | Use this option to automatically allow applications installed by a software distribution solution, such as System Center Configuration Manager, that has been defined as a managed installer. |
| **14 Enabled:Intelligent Security Graph Authorization** | Use this option to automatically allow applications with "known good" reputation as defined by Microsoft’s Intelligent Security Graph (ISG). |
| **15 Enabled:Invalidate EAs on Reboot** | When the Intelligent Security Graph option (14) is used, WDAC sets an extended file attribute that indicates that the file was authorized to run. This option will cause WDAC to periodically re-validate the reputation for files that were authorized by the ISG.| 
| **16 Enabled:Update Policy No Reboot** | Use this option to allow future WDAC policy updates to apply without requiring a system reboot. |

## Windows Defender Application Control file rule levels

File rule levels allow administrators to specify the level at which they want to trust their applications. This level of trust could be as fine-tuned as the hash of each binary or as general as a CA certificate. You specify file rule levels both when you create a new WDAC policy from a scan and when you create a policy from audit events. In addition, to combine rule levels found in multiple policies, you can merge the policies. When merged, WDAC policies combine their file rules, so that any application that would be allowed by either of the original policies will be allowed by the combined policy. 

Each file rule level has its benefit and disadvantage. Use Table 3 to select the appropriate protection level for your available administrative resources and Windows Defender Application Control deployment scenario.

Table 3. Windows Defender Application Control policy - file rule levels

| Rule level | Description |
|----------- | ----------- |
| **Hash** | Specifies individual hash values for each discovered binary. Although this level is specific, it can cause additional administrative overhead to maintain the current product versions’ hash values. Each time a binary is updated, the hash value changes, therefore requiring a policy update. |
| **FileName** | Specifies individual binary file names. Although the hash values for an application are modified when updated, the file names are typically not. This offers less specific security than the hash level but does not typically require a policy update when any binary is modified. |
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

## Example of file rule levels in use

For example, consider some IT professionals in a department that runs many servers. They decide they want their servers to run only software signed by the providers of their software and drivers, that is, the companies that provide their hardware, operating system, antivirus, and other important software. They know that their servers also run an internally written application that is unsigned but is rarely updated. They want to allow this application to run.

To create the WDAC policy, they build a reference server on their standard hardware, and install all of the software that their servers are known to run. Then they run [New-CIPolicy](https://docs.microsoft.com/powershell/module/configci/new-cipolicy) with **-Level Publisher** (to allow software from their software providers, the "Publishers") and **-Fallback Hash** (to allow the internal, unsigned application). They enable the policy in auditing mode and gather information about any necessary software that was not included on the reference server. They merge WDAC policies into the original policy to allow that additional software to run. Then they enable the WDAC policy in enforced mode for their servers.

As part of normal operations, they will eventually install software updates, or perhaps add software from the same software providers. Because the "Publisher" remains the same on those updates and software, they will not need to update their WDAC policy. If they come to a time when the internally-written, unsigned application must be updated, they must also update the WDAC policy so that the hash in the policy matches the hash of the updated internal application.

They could also choose to create a catalog that captures information about the unsigned internal application, then sign and distribute the catalog. Then the internal application could be handled by WDAC policies in the same way as any other signed application. An update to the internal application would only require that the catalog be regenerated, signed, and distributed (no restarts would be required).

## Create path-based rules 

Beginning with Windows 10 version 1903, Windows Defender Application Control (WDAC) policies can contain path-based rules.

- New-CIPolicy parameters
  - FilePath: create path rules under path \<path to scan> for anything not user-writeable (at the individual file level)

    ```powershell
    New-CIPolicy -f .\mypolicy.xml -l FilePath -s <path to scan> -u
    ```

    Optionally, add -UserWriteablePaths to ignore user writeability

  - FilePathRule: create a rule where filepath string is directly set to value of \<any path string>

    ```powershell
    New-CIPolicyRule -FilePathRule <any path string>
    ```

    Useful for wildcards like C:\foo\\*

- Usage follows the same flow as per-app rules:

  ```powershell
  $rules = New-CIPolicyRule …
  $rules += New-CIPolicyRule …
  …
  New-CIPolicyRule -f .\mypolicy.xml -u
  ```

- Wildcards supported
  - Suffix (ex. C:\foo\\*) OR Prefix (ex. *\foo\bar.exe)
    - One or the other, not both at the same time
    - Does not support wildcard in the middle (ex. C:\\*\foo.exe)
  - Examples:
    - %WINDIR%\\...
    - %SYSTEM32%\\...
    - %OSDRIVE%\\...

- Disable default FilePath rule protection of enforcing user-writeability. For example, to add “Disabled:Runtime FilePath Rule Protection” to the policy:

  ```powershell
  Set-RuleOption -o 18 .\policy.xml
  ```

