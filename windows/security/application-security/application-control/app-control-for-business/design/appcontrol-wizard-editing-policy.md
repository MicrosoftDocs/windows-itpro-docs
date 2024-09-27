---
title: Editing App Control for Business Policies with the Wizard
description: Editing existing base and supplemental policies with the Microsoft App Control Wizard.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Editing existing base and supplemental App Control policies with the Wizard

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

The App Control for Business Wizard makes editing and viewing App Control policies easier than the PowerShell cmdlets or manually. The Wizard currently supports the following editing capabilities:

- Configuring policy rules
- Adding new allow or block file rules to existing policies
- Removing allow or block file rules on existing policies

## Configuring Policy Rules

The `Policy Rules` page loads with the in-edit policy rules configured per the set rules. Selecting the `+ Advanced Options` button reveals the advanced policy rule options panel. This grouping of rules contains other policy rule options that are less common to most users. To edit any of the rules, flip the corresponding policy rule state. For instance, to disable Audit Mode and enable Enforcement Mode in the figure below, the button beside the `Audit Mode` label needs only to be pressed. Once the policy rules are configured, select the Next button to continue the next stage of editing: [Adding File Rules](#adding-file-rules).

![Configuring the policy rules.](../images/appcontrol-wizard-edit-policy-rules.png)

A description of the policy rule is shown at the bottom of the page when the cursor is placed over the rule title. For a complete list of the policy rules and their capabilities, see the [App Control for Business policy rules table](select-types-of-rules-to-create.md#app-control-for-business-policy-rules).

## Adding File Rules

The App Control for Business Wizard allows users to add rules to their existing policy seamlessly. Previously, this rule-adding task would have involved creating a new policy with the new rules and merging it with the existing policy.

Selecting the `+ Custom Rules` button opens the Custom Rules panel. For more information on creating new policy file rules, see the guidelines provided in the [creating policy file rules section](appcontrol-wizard-create-base-policy.md#creating-custom-file-rules).

## Removing File Rules

The App Control Wizard makes deleting file rules from an existing policy quick and easy. To remove any type of file rule: publisher rule, path rule, filename rule, or a hash rule, select the rule in the `Policy Signing Rules List` table on the left-hand side of the page. Selecting the rule highlights the entire row. Once the row is highlighted, select the remove icon underneath the table. The Wizard prompts for user confirmation before removing the file rule. Once removed, the rule no longer appears in the policy or the table.

:::image type="content" alt-text="Removing file rule from policy during edit." source="../images/appcontrol-wizard-edit-remove-file-rule.png":::

> [!NOTE]
> Removing a publisher rule will also remove the associated File Attribute rules. For instance, in the xml block below, removing ID_SIGNER_CONTOSO_PUBLISHER would also remove the rules ID_FILEATTRIB_LOB_APP_1 and ID_FILEATTRIB_LOB_APP_2.

```xml
<Signer ID="ID_SIGNER_CONTOSO_PUBLISHER" Name="Contoso LOB Publisher CA">
  <CertRoot Type="TBS" Value="0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF" />
  <CertPublisher Value="Contoso IT Dept App Publisher" />
  <FileAttribRef RuleID="ID_FILEATTRIB_LOB_APP_1" />
  <FileAttribRef RuleID="ID_FILEATTRIB_LOB_APP_2" />
```

### Policy Creation

Once the policy is created, the new policy is written to the same path as the in-edit policy. The new policy file name has the policy version appended to the end of the file name. For instance, if the in-edit policy is saved at `MyDocuments\BasePolicy.xml`, after edit, the new policy will be saved at `MyDocuments\BasePolicy_v10.0.0.1.xml`.

## Up next

- [Merging App Control for Business policies using the Wizard](appcontrol-wizard-merging-policies.md)
