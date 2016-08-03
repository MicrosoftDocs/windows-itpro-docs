---
title: Deploy code integrity policies - policy rules and file rules (Windows 10)
description: This article provides information about two elements in code integrity policies, called policy rules and file rules. Code integrity policies are part of Device Guard in Windows 10. 
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
localizationpriority: high
author: brianlic-msft
---

# Deploy code integrity policies: policy rules and file rules

**Applies to**
-   Windows 10
-   Windows Server 2016

Code integrity policies maintain the standards by which a computer running Windows 10 determines whether an application is trustworthy and can be run. For an overview of code integrity, see:
- [How Device Guard features help protect against threats](introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies.md#how-device-guard-features-help-protect-against-threats) in "Introduction to Device Guard: virtualization-based security and code integrity policies."
- [Code integrity policy formats and signing](requirements-and-deployment-planning-guidelines-for-device-guard.md#code-integrity-policy-formats-and-signing) in "Requirements and deployment planning guidelines for Device Guard."

If you already understand the basics of code integrity policy and want procedures for creating, auditing, and merging code integrity policies, see [Deploy code integrity policies: steps](deploy-code-integrity-policies-steps.md).

This topic includes the following sections:

- [Overview of the process of creating code integrity policies](#overview-of-the-process-of-creating-code-integrity-policies): Helps familiarize you with the process described in this and related topics.
- [Code integrity policy rules](#code-integrity-policy-rules): Describes one key element you specify in a policy, the *policy rules*, which control options such as audit mode or whether UMCI is enabled in a code integrity policy.
- [Code integrity file rule levels](#code-integrity-file-rule-levels): Describes the other key element you specify in a policy, the *file rules* (or *file rule levels*), which specify the level at which applications will be identified and trusted.

## Overview of the process of creating code integrity policies

A common system imaging practice in today’s IT organization is to establish a “golden” image as a reference for what an ideal system should look like, and then use that image to clone additional company assets. Code integrity policies follow a similar methodology, that begins with the establishment of a golden computer. As with imaging, you can have multiple golden computers based on model, department, application set, and so on. Although the thought process around the creation of code integrity policies is similar to imaging, these policies should be maintained independently. Assess the necessity of additional code integrity policies based on what should be allowed to be installed and run and for whom. For more details on doing this assessment, see the planning steps in [Planning and getting started on the Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md).

> **Note**&nbsp;&nbsp;Each computer can have only **one** code integrity policy at a time. Whichever way you deploy this policy, it is renamed to SIPolicy.p7b and copied to C:\\Windows\\System32\\CodeIntegrity. Keep this in mind when you create your code integrity policies.

Optionally, code integrity policies can align with your software catalog as well as any IT department–approved applications. One straightforward method to implement code integrity policies is to use existing images to create one master code integrity policy. You do so by creating a code integrity policy from each image, and then by merging the policies. This way, what is installed on all of those images will be allowed to run, if the applications are installed on a computer based on a different image. Alternatively, you may choose to create a base applications policy and add policies based on the computer’s role or department. Organizations have a choice of how their policies are created, merged or serviced, and managed.

If you plan to use an internal CA to sign catalog files or code integrity policies, see the steps in [Optional: Create a code signing certificate for code integrity policies](optional-create-a-code-signing-certificate-for-code-integrity-policies.md). 

## Code integrity policy rules

Code integrity policies include *policy rules*, which control options such as audit mode or whether UMCI is enabled in a code integrity policy. You can modify these options in a new or existing code integrity policy. (For information about *file rules*, which specify the level at which applications will be identified and trusted, see the next section, [Code integrity file rule levels](#code-integrity-file-rule-levels).)

To modify the policy rule options of an existing code integrity policy, use the [Set-RuleOption](https://technet.microsoft.com/library/mt634483.aspx) Windows PowerShell cmdlet. Note the following examples of how to use this cmdlet to add and remove a rule option on an existing code integrity policy:

-   To enable UMCI, add rule option 0 to an existing policy by running the following command:

    ` Set-RuleOption -FilePath <Path to policy> -Option 0`

-   To disable UMCI on an existing code integrity policy, delete rule option 0 by running the following command:

    ` Set-RuleOption -FilePath <Path to policy> -Option 0 -Delete`

You can set several rule options within a code integrity policy. To display a list of rule options, you can type **Set-
RuleOption -Help** in a Windows PowerShell session. Table 2 describes each rule option. 

> **Note**&nbsp;&nbsp;**Enabled:Audit Mode** is an important rule option. We recommend that you use this option for a period of time with all new code integrity policies, because it allows you to test them before you enforce them. With audit mode, no application is blocked—the policy just logs an event whenever an application outside the policy is started. To expand the policy so that (when enforced) it will allow these applications, you can use Windows PowerShell commands to capture the needed policy information from the event log, and then merge that information into the existing policy.

> The mode—audit mode or enforced mode—is set by including or deleting **Enabled:Audit Mode** in the code integrity policy. When this option is deleted, the policy runs in enforced mode.

**Table 2. Code integrity policy - policy rule options**

| Rule option | Description |
|------------ | ----------- |
| **0 Enabled:UMCI** | Code integrity policies restrict both kernel-mode and user-mode binaries. By default, only kernel-mode binaries are restricted. Enabling this rule option validates user mode executables and scripts. |
| **1 Enabled:Boot Menu Protection** | This option is not currently supported. |
| **2 Required:WHQL** | By default, legacy drivers that are not Windows Hardware Quality Labs (WHQL) signed are allowed to execute. Enabling this rule requires that every executed driver is WHQL signed and removes legacy driver support. Going forward, every new Windows 10–compatible driver must be WHQL certified. |
| **3 Enabled:Audit Mode (Default)** | Enables the execution of binaries outside of the code integrity policy but logs each occurrence in the CodeIntegrity event log, which can be used to update the existing policy before enforcement. To begin enforcing a code integrity policy, delete this option. |
| **4 Disabled:Flight Signing** | If enabled, code integrity policies will not trust flightroot-signed binaries. This would be used in the scenario in which organizations only want to run released binaries, not flighted builds. |
| **5 Enabled:Inherent Default Policy** | This option is not currently supported. |
| **6 Enabled:Unsigned System Integrity Policy (Default)** | Allows the policy to remain unsigned. When this option is removed, the policy must be signed and have UpdatePolicySigners added to the policy to enable future policy modifications. |
| **7 Allowed:Debug Policy Augmented** | This option is not currently supported. |
| **8 Required:EV Signers** | In addition to being WHQL signed, this rule requires that drivers must have been submitted by a partner that has an Extended Verification (EV) certificate. All future Windows 10 and later drivers will meet this requirement. |
| **9 Enabled:Advanced Boot Options Menu** | The F8 preboot menu is disabled by default for all code integrity policies. Setting this rule option allows the F8 menu to appear to physically present users. |
| **10 Enabled:Boot Audit on Failure** | Used when the code integrity policy is in enforcement mode. When a driver fails during startup, the code integrity policy will be placed in audit mode so that Windows will load. Administrators can validate the reason for the failure in the CodeIntegrity event log. |

## Code integrity file rule levels

File rule levels allow administrators to specify the level at which they want to trust their applications. This level of trust could be as fine-tuned as the hash of each binary or as general as a CA certificate. You specify file rule levels both when you create a new code integrity policy from a scan and when you create a policy from audit events. In addition, to combine rule levels found in multiple policies, you can merge the policies. When merged, code integrity policies combine their file rules, so that any application that would be allowed by either of the original policies will be allowed by the combined policy. 

Each file rule level has its benefit and disadvantage. Use Table 3 to select the appropriate protection level for your available administrative resources and Device Guard deployment scenario.

<!-- Need to confirm these updated table rows:
    | **SignedVersion** | This combines the publisher rule with a version number. This option allows anything from the specified publisher, with a version at or above the specified version number, to run. |
    | **FilePublisher** | This is a combination of the “FileName” attribute of the signed file, plus “Publisher” (PCA certificate with CN of leaf), plus a minimum version number. This option trusts specific files from the specified publisher, with a version at or above the specified version number. |
--> 

Table 3. Code integrity policy - file rule levels

| Rule level | Description |
|----------- | ----------- |
| **Hash** | Specifies individual hash values for each discovered binary. Although this level is specific, it can cause additional administrative overhead to maintain the current product versions’ hash values. Each time a binary is updated, the hash value changes, therefore requiring a policy update. |
| **FileName** | Specifies individual binary file names. Although the hash values for an application are modified when updated, the file names are typically not. This offers less specific security than the hash level but does not typically require a policy update when any binary is modified. |
| **SignedVersion** | This combines the publisher rule with a version number. This option allows anything from the specified publisher, with a version at or above the specified version number, to run. |
| **Publisher** | This is a combination of the PcaCertificate level (typically one certificate below the root) and the common name (CN) of the leaf certificate. This rule level allows organizations to trust a certificate from a major CA (such as Symantec), but only if the leaf certificate is from a specific company (such as Intel, for device drivers). |
| **FilePublisher** | This is a combination of the “FileName” attribute of the signed file, plus “Publisher” (PCA certificate with CN of leaf), plus a minimum version number. This option trusts specific files from the specified publisher, with a version at or above the specified version number. |
| **LeafCertificate** | Adds trusted signers at the individual signing certificate level. The benefit of using this level versus the individual hash level is that new versions of the product will have different hash values but typically the same signing certificate. Using this level, no policy update would be needed to run the new version of the application. However, leaf certificates have much shorter validity periods than CA certificates, so additional administrative overhead is associated with updating the code integrity policy when these certificates expire. |
| **PcaCertificate** | Adds the highest available certificate in the provided certificate chain to signers. This is typically one certificate below the root certificate, because the scan does not validate anything beyond the certificates included in the provided signature (it does not go online or check local root stores). |
| **RootCertificate** | Currently unsupported. |
| **WHQL** | Trusts binaries if they have been validated and signed by WHQL. This is primarily for kernel binaries. |
| **WHQLPublisher** | This is a combination of the WHQL and the CN on the leaf certificate and is primarily for kernel binaries. |
| **WHQLFilePublisher** | Specifies that the binaries are validated and signed by WHQL, with a specific publisher (WHQLPublisher), and that the binary is the specified version or newer. This is primarily for kernel binaries. |

> **Note**&nbsp;&nbsp;When you create code integrity policies with the [New-CIPolicy](https://technet.microsoft.com/library/mt634473.aspx) cmdlet, you can specify a primary file rule level by including the **–Level** parameter. For discovered binaries that cannot be trusted based on the primary file rule criteria, use the **–Fallback** parameter. For example, if the primary file rule level is PCACertificate but you would like to trust the unsigned applications as well, using the Hash rule level as a fallback adds the hash values of binaries that did not have a signing certificate.

## Related topics

- [How Device Guard features help protect against threats](introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies.md#how-device-guard-features-help-protect-against-threats)
- [Deploy code integrity policies: steps](deploy-code-integrity-policies-steps.md)

