---
title: Editing Windows Defender Application Control Policies with the Wizard
description: Editing existing base and supplemental policies with the Microsoft WDAC Wizard.
keywords: allowlisting, blocklisting, security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
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
ms.technology: mde
---

# Editing existing base and supplemental WDAC policies with the Wizard

**Applies to**
-   Windows 10
-   Windows Server 2016 and above

The WDAC Wizard makes editing and viewing WDAC policies easier than the PowerShell cmdlets or manually. The Wizard currently supports the following editing capabilities: 
<ul>
<li>[Configuring policy rules](#configuring-policy-rules)</li>
<li>[Adding new allow or block file rules to existing policies](#adding-file-rules)</li>
<li>[Removing allow or block file rules on existing policies](#removing-file-rules)</li>
</ul>

## Configuring Policy Rules

The `Policy Rules` page will load with the in-edit policy rules configured per the set rules. Selecting the `+ Advanced Options` button will reveal the advanced policy rule options panel. This grouping of rules contains additional policy rule options that are less common to the majority of users. To edit any of the rules, flip the corresponding policy rule state.  For instance, to disable Audit Mode and enable Enforcement Mode in the figure below, the button beside the `Audit Mode` label needs only to be pressed. Once the policy rules are configured, select the Next button to continue the next stage of editing: [Adding File Rules](#adding-file-rules).

![Configuring the policy rules](images/wdac-wizard-edit-policy-rules.png)

A description of the policy rule is shown at the bottom of the page when the cursor is placed over the rule title. For a complete list of the policy rules and their capabilities, see the [Windows Defender Application Control policy rules table](select-types-of-rules-to-create.md#windows-defender-application-control-policy-rules).

## Adding File Rules

The WDAC Wizard allows users to add rules to their existing policy seamlessly. Previously, this would have involved creating a new policy with the new rules and merging it with the existing policy. 

Selecting the `+ Custom Rules` button will open the Custom Rules panel. For more information on creating new policy file rules, see the guidelines provided in the [creating policy file rules section](wdac-wizard-create-base-policy.md#creating-custom-file-rules).

## Removing File Rules

The WDAC Wizard makes deleting file rules from an existing policy quick and easy. To remove any type of file rule: publisher rule, path rule, filename rule, or a hash rule, select the rule in the `Policy Signing Rules List` table on the left-hand side of the page. Selecting the rule will highlight the entire row. Once the row is highlighted, select the remove icon underneath the table. The Wizard will prompt for user confirmation before removing the file rule. Once removed, the rule will no longer appear in the policy or the table. 

![Removing file rule from policy during edit](images/wdac-wizard-edit-remove-file-rule.png)

**Note:** removing a publisher rule will also remove the associated File Attribute rules. For instance, in the xml block below, removing ID_SIGNER_CONTOSO_PUBLISHER would also remove the rules ID_FILEATTRIB_LOB_APP_1 and ID_FILEATTRIB_LOB_APP_2. 

```xml
    <Signer ID="ID_SIGNER_CONTOSO_PUBLISHER" Name="Contoso LOB Publisher CA">
      <CertRoot Type="TBS" Value="0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF" />
      <CertPublisher Value="Contoso IT Dept App Publisher" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LOB_APP_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LOB_APP_2" />
```

[comment]: <> (## Editing File Rules Coming soon!)

### Policy Creation

Once the policy is created, the new policy will be written to the same path as the in-edit policy. The new policy file name will have the policy version appended to the end of the file name. For instance, if the in-edit policy is saved at MyDocuments\BasePolicy.xml, after edit, the new policy will be saved at MyDocuments\BasePolicy_v10.0.0.1.xml. 

## Up next

- [Merging WDAC policies using the Wizard](wdac-wizard-merging-policies.md)
