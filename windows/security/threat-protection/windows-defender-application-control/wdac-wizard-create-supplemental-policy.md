---
title: Windows Defender Application Control Wizard Supplemental Policy Creation
description: Creating supplemental application control policies with the WDAC Wizard.
keywords: allowlisting, blocklisting, security, malware, supplemental policy
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jgeurten
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.topic: conceptual
ms.date: 10/14/2020
---

# Creating a new Supplemental Policy with the Wizard

**Applies to**
-   Windows 10
-   Windows Server 2016 and above

Beginning in Windows 10 version 1903, WDAC supports the creation of multiple active policies on a device. One or more supplemental policies allow customers to expand a [WDAC base policy](wdac-wizard-create-base-policy.md) to increase the circle of trust of the policy. A supplemental policy can expand only one base policy, but multiple supplementals can expand the same base policy. When using supplemental policies, applications allowed by the base or its supplemental policy/policies will be allowed to execute. 

Prerequisite information about application control can be accessed through the [WDAC design guide](windows-defender-application-control-design-guide.md). This page outlines the steps to create a supplemental application control policy, configure the policy options, and the signer and file rules. 

## Expanding a Base Policy

Once the Supplemental Policy type is chosen on the New Policy page, policy name and file dialog fields can be used to name and save the supplemental policy. The next step requires selecting a base policy to expand. To expand a base policy, the base must allow supplemental policies. The WDAC Wizard will verify if the base policy allows supplementals and will show the following confirmation. 

![Base policy allows supplemental policies](images/wdac-wizard-supplemental-expandable.png)

If the base policy is not configured for supplemental policies, first edit the base policy to allow supplementals using the [WDAC Wizard edit workflow](edac-wizard-editing-policy.md).

## Configuring Policy Rules

Upon page launch, policy rules will be automatically enabled/disabled depending on the chosen template from the previous page. Choose to enable or disable the desired policy rule options by pressing the slider button next to the policy rule titles. A short description of the rule will be shown at the bottom of the page when the cursor is placed on the rule title. 

### Policy Rules Description

A description of each policy rule, beginning with the left-most column, is provided below. 

| Rule option | Description |
|------------ | ----------- |
| **Advanced Boot Options Menu** | The F8 preboot menu is disabled by default for all WDAC policies. Setting this rule option allows the F8 menu to appear to physically present users. |
| **Allow Supplemental Policies** | Use this option on a base policy to allow supplemental policies to expand it. |
| **Disable Script Enforcement** | This option disables script enforcement options. Unsigned PowerShell scripts and interactive PowerShell are no longer restricted to [Constrained Language Mode](https://docs.microsoft.com/powershell/module/microsoft.powershell.core/about/about_language_modes). NOTE: This option is only supported with the Windows 10 May 2019 Update (1903) and higher. Using it on earlier versions of Windows 10 is not supported and may have unintended results. |
|**[Hypervisor-protected code integrity (HVCI)](https://docs.microsoft.com/en-us/windows/security/threat-protection/device-guard/enable-virtualization-based-protection-of-code-integrity)**| When enabled, policy enforcement uses virtualization-based security to run the code integrity service inside a secure environment. HVCI provides stronger protections against kernel malware.|
| **Intelligent Security Graph Authorization** | Use this option to automatically allow applications with "known good" reputation as defined by Microsoft’s Intelligent Security Graph (ISG). |
| **Managed Installer** | Use this option to automatically allow applications installed by a software distribution solution, such as Microsoft Endpoint Configuration Manager, that has been defined as a managed installer. |
| **Require WHQL** | By default, legacy drivers that are not Windows Hardware Quality Labs (WHQL) signed are allowed to execute. Enabling this rule requires that every executed driver is WHQL signed and removes legacy driver support. Going forward, every new Windows 10–compatible driver must be WHQL certified. |
| **Update Policy without Rebooting** | Use this option to allow future WDAC policy updates to apply without requiring a system reboot. |
| **Unsigned System Integrity Policy** | Allows the policy to remain unsigned. When this option is removed, the policy must be signed and have UpdatePolicySigners added to the policy to enable future policy modifications. |
| **User Mode Code Integrity** | WDAC policies restrict both kernel-mode and user-mode binaries. By default, only kernel-mode binaries are restricted. Enabling this rule option validates user mode executables and scripts. |

### Advanced Policy Rules Description

Selecting the **+ Advanced Options** label will show another column of policy rules; advanced policy rules. A description of each policy rule is provided below. 

| Rule option | Description |
|------------ | ----------- |
| **Boot Audit on Failure** | Used when the WDAC policy is in enforcement mode. When a driver fails during startup, the WDAC policy will be placed in audit mode so that Windows will load. Administrators can validate the reason for the failure in the CodeIntegrity event log. |
| **Disable Flight Signing** | If enabled, WDAC policies will not trust flightroot-signed binaries. This setting should be used in scenarios where organizations only want to run production binaries, not flight/preivew-signed builds. |
| **Disable Runtime FilePath Rule Protection** | Disable default FilePath rule protection (apps and executables allowed based on file path rules must come from a file path that’s only writable by an administrator) for any FileRule that allows a file based on FilePath. |
| **Dynamic Code Security** | Enables policy enforcement for .NET applications and dynamically loaded libraries. |
| **Invalidate EAs on Reboot** | When the Intelligent Security Graph option (14) is used, WDAC sets an extended file attribute that indicates that the file was authorized to run. This option will cause WDAC to periodically revalidate the reputation for files that were authorized by the ISG.| 
| **Require EV Signers** | In addition to being WHQL signed, this rule requires that drivers must have been submitted by a partner that has an Extended Verification (EV) certificate. All Windows 10 and later drivers will meet this requirement. |


![Rule options UI for Windows Allowed mode](images/wdac-wizard-rule-options-UI.png)


> [!NOTE]
> We recommend that you **enable Audit Mode** initially because it allows you to test new WDAC policies before you enforce them. With audit mode, no application is blocked—instead the policy logs an event whenever an application outside the policy is started. For this reason, all templates have Audit Mode enabled by default. 

## Creating custom file rules

File rules in an application control policy will specify the level at which applications will be identified and trusted. File rules are the main mechanism for defining trust in the application control policy. Selecting the **+ Custom Rules** will open the custom file rule conditions panel to create and customize targeted file rules for your policy. The Wizard supports four types of file rules: 

### Publisher Rules

The Publisher file rule type uses properties in the code signing certificate chain to base file rules. Once the file to base the rule off of, called the *reference file*, is selected, use the slider to indicate the specificity of the rule.  The table below shows the relationship between the slider placement, the corresponding WDAC rule level, and its description. The lower the placement on the table and the UI slider, the greater the specificity of the rule. 

| Rule Condition | WDAC Rule Level | Description |
|------------ | ----------- | ----------- |
| **Issuing CA** | PCACertificate | Highest available certificate is added to the signers. This certificate is typically the PCA certificate, one level below the root certificate. Any file signed by this certificate will be affected. |
| **Publisher** | Publisher | This rule is a combination of the PCACertificate rule and the common name (CN) of the leaf certificate. Any file signed by a major CA but with a leaf from a specific company, for example a device driver publisher, is affected. |
| **File version** | SignedVersion | This rule is a combination of the PCACertificate and Publisher rule, and a version number. Anything from the specified publisher with a version at or above the one specified is affected. |
| **File name** | FilePublisher | Most specific. Combination of the file name, publisher and PCA certificate as well as a minimum version number. Files from the publisher with the specified name and greater or equal to the specified version are affected. |


![Custom filepublisher file rule creation](images/wdac-wizard-custom-publisher-rule.png)

### Filepath Rules

Filepath rules do not provide the same security guarantees that explicit signer rules do, as they are based on mutable access permissions. To create a filepath rule, select the file using the *Browse* button. 

### File Attribute Rules

The Wizard supports the creation of [file name rules](select-types-of-rules-to-create#windows-defender-application-control-filename-rules) based on authenticated file attributes. File name rules are useful when an application and its dependencies (for example, DLLs) may all share the same product name, for instance. This rule level allows users to easily create targeted policies based on the Product Name file name. To select the file attribute to create the rule, move the slider on the Wizard to the desired attribute. The table below describes each of the supported file attributes off which to create a rule. 

| Rule level | Description |
|------------ | ----------- |
| **Original Filename** | Specifies the original file name, or the name with which the file was first created, of the binary. |
| **File description** | Specifies the file description provided by the developer of the binary. |
| **Product name** | Specifies the name of the product with which the binary ships. |
| **Internal name** | Specifies the internal name of the binary. |


![Custom file attributes rule](images/wdac-wizard-custom-file-attribute-rule.png)

### File Hash Rules

Lastly, the Wizard supports creating file rules using the hash of the file. Although this level is specific, it can cause additional administrative overhead to maintain the current product versions’ hash values. Each time a binary is updated, the hash value changes, therefore requiring a policy update. By default, the Wizard will use file hash as the fallback in case a file rule cannot be created using the specified file rule level. 


#### Deleting Signing Rules 
  
The table on the left of the page will document the allow and deny rules in the template, as well as any custom rules you create. Rules can be deleted from the policy by selecting the rule from the rules list table. Once the rule is highlighted, press the delete button underneath the table. you will be prompted for additional confirmation. Select `Yes` to remove the rule from the policy and the rules table. 

## Up next

- [Editing a WDAC policy using the Wizard](wdac-wizard-editing-policy.md)
