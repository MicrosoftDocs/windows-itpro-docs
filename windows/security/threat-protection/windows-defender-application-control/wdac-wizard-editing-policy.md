---
title: Windows Defender Application Control Wizard Base Policy Creation
description: Editing existing base and supplemental policies with the Microsoft WDAC Wizard.
keywords: allowlisting, blocklisting, security, malware
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

# Editing exisiting base and supplemental WDAC policies with the Wizard

**Applies to**
-   Windows 10
-   Windows Server 2016 and above

The WDAC Wizard makes editing and viewing base and supplemental WDAC policies much easier than by hand or using the PowerShell Cmdlets. The Wizard currently supports the following editing capbilities: 
<ul>
<li>[Configuring policy rules](#Configuring-Policy-Rules)</li>
<li>[Adding new allow or block file rules to existing policies](#Adding-File-Rules)</li>
<li>[Removing allow or block file rules on existing policies](#Removing-File-Rules)</li>
<li></li>
</ul>

# Configuring Policy Rules

The `Policy Rules` page will load with the in-edit policy rules configured per the set rules. Selecting the `+ Advanced Options` button will reveal the advanced policy rule options panel. This grouping of rules contains additional policy rule options which are less common to the majority of users. To edit any of the rules, flip the corresponding policy rule state.  For instance, to disable Audit Mode and enable Enforcement Mode in the figure below, the button beside the `Audit Mode` label needs only to be pressed. Once the policy rules are configured, select the Next button to continue the next stage of editing: [Adding File Rules](#Adding-File-Rules).

![Configuring the policy rules](images/wdac-wizard-edit-policy-rules.png)

Hovering the mouse over the policy rule names will display a short description of the ruleat the bottom of the page.For a complete list of the policy rules and their capabilities see the [Windows Defender Application Control policy rules table](select-types-of-rules-to-create.md#windows-defender-application-control-policy-rules).

## Adding File Rules

Previously, to add rules to an existing policy, users would be required to create a new policy and merge it with their existing policy, or edit the policy by hand. The WDAC Wizard allows users to add rules to their exising policy seamlessly. 

Selecting the `+ Custom Rules` button will open the Custom Rules panel. For more information on creating new policy file rules, see the guidelines provided in the [creating policy file rules section](wdac-wizard-create-base-policy.md#Creating-custom-file-rules).

## Removing File Rules

The WDAC Wizard makes deleting file rules from an existing policy quick and easy. To remove any type of file rule: publisher rule, path rule, filename rule or a hash rule, simply click on the rule in the `Policy Signing Rules List` table on the lefthand side of the page. Selecting the rule will highlight the entire row. Once the row is highlighted, select the remove icon underneath the table. The Wizard will prompt for user confirmation before removing the file rule. Once removed, the rule will no longer appear in the policy or the table. 

![Removing file rule from policy during edit](image/wdac-wizard-edit-remove-file-rule.png)

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

Once the WDAC Wizard finalizes creation of your edited policy, the new policy will be written to the same file path and name as the in-edit policy with the new version appended to the end of the file name. For instance, if the in-edit policy is saved at MyDocuments\BasePolicy.xml, after edit, the new policy will be saved at MyDocuments\BasePolicy_v10.0.0.1.xml. 

## Up next

- [Merging WDAC policies using the Wizard](wdac-wizard-merging-policies.md)