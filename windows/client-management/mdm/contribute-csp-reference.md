---
title: Contributing to CSP reference articles
description: Learn more about contributing to the CSP reference articles.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/11/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

# Contributing to the CSP reference articles

CSP reference articles are automatically generated using the [device description framework (DDF)](configuration-service-provider-ddf.md) v2 files that define the CSP. When applicable, the CSP definition includes a mapping to a group policy. The automation uses this mapping, when possible, to provide a friendly description for the CSP policies.

> [!IMPORTANT]
> Each automated CSP article provides editable sections to provide additional information about the CSP or the policies within the CSP. Any edits outside the designated editable sections are overwritten by the automation.

## CSP article structure

Each automated CSP article is broken into three sections.

> [!NOTE]
> To view these sections, visit the article that you want to update, then select the **Pencil** icon
>
> :::image type="content" source="images/csp-pencil-edit-icon.png" alt-text="Screenshot showing the Pencil icon to edit a published article":::

1. **Header**: The header includes the CSP name, and provides an editable section where additional information about the CSP can be provided.

   :::image type="content" source="images/csp-header.png" alt-text="Screenshot of the CSP header section":::

1. **Policies**: The policies section contains a list of policies, where each policy has an editable section for providing additional information and examples.

   :::image type="content" source="images/csp-policy.png" alt-text="Screenshot of the CSP policy section":::

1. **Footer**: The footer indicates the end of the CSP article, and provides an editable section where more information about the CSP can be provided.

   :::image type="content" source="images/csp-footer.png" alt-text="Screenshot of the CSP footer section":::

## Provide feedback on documentation

As most of the CSP articles are automated, the feedback for these articles is best addressed when submitted using [Feedback Hub app](https://support.microsoft.com/windows/send-feedback-to-microsoft-with-the-feedback-hub-app-f59187f8-8739-22d6-ba93-f66612949332). However for nonautomated content, use the [Microsoft Learn documentation contributor guide][CONTRIB-1].

Use these sections to determine where you should submit feedback.

### Feedback for policy description

Policy descriptions are sourced from DDF or ADMX files and are located within the `<[CSP-Name]-Description-Begin>` section for the policy in the markdown file. `<[CSP-Name]-Description-Begin>` also includes a reference to the source that was used to provide the policy description.

- `Description-Source-ADMX` or `Description-Source-ADMX-Forced`: The description was captured from the group policy that the CSP setting maps to. If this description is incorrect, [Send feedback to Microsoft with the Feedback Hub app](https://support.microsoft.com/windows/send-feedback-to-microsoft-with-the-feedback-hub-app-f59187f8-8739-22d6-ba93-f66612949332).
- `Description-Source-DDF` or `Description-Source-DDF-Forced`: The description was captured from the DDF file that defines the CSP. If this description is incorrect, [Send feedback to Microsoft with the Feedback Hub app](https://support.microsoft.com/windows/send-feedback-to-microsoft-with-the-feedback-hub-app-f59187f8-8739-22d6-ba93-f66612949332).
- `Description-Source-Manual-Forced`: The description is defined in the automation code. If this description is incorrect, [submit an issue](/contribute/#create-quality-issues).

Any additional information about the policy setting can be provided in the `[Policy-Name]-Editable-Begin` section that immediately follows the `<[CSP-Name]-Description-End>` section. This section allows further expansion of the policy description, and is generated manually. For any feedback for the editable content, use the [Microsoft Learn documentation contributor guide][CONTRIB-1] to update the section or submit an issue.

### Feedback for policy examples

Policy examples aren't provided by the automation. Each policy node in the markdown file includes a `[Policy-Name]-Examples-Begin` section that contains the examples. If the example is incorrect or needs to be updated, use the [Microsoft Learn documentation contributor guide][CONTRIB-1] to update the example or submit an issue.

### Feedback for policy applicability

Policy applicability is defined in the DDF v2 file for the CSP. Each policy node in the markdown file includes a `[Policy-Name]-Applicability-Begin` section that contains the operating system applicability.

If it's incorrect or needs to be updated, [Send feedback to Microsoft with the Feedback Hub app](https://support.microsoft.com/windows/send-feedback-to-microsoft-with-the-feedback-hub-app-f59187f8-8739-22d6-ba93-f66612949332).

### Feedback for policy allowed values

Policy allowed values are defined in the DDF v2 file for the CSP. When applicable, each policy node in the markdown file includes a `[Policy-Name]-AllowedValues-Begin` section that contains the operating system applicability.

If these values are incorrect or need to be updated, [Send feedback to Microsoft with the Feedback Hub app](https://support.microsoft.com/windows/send-feedback-to-microsoft-with-the-feedback-hub-app-f59187f8-8739-22d6-ba93-f66612949332).

### Feedback for group policy mapping

Group policy mappings are defined in the DDF v2 file for the CSP. When applicable, each policy node in the markdown file includes a `[Policy-Name]-AdmxBacked-Begin` or `[Policy-Name]-GpMapping-Begin` section that contains the group policy mapping.

If this mapping is incorrect, [Send feedback to Microsoft with the Feedback Hub app](https://support.microsoft.com/windows/send-feedback-to-microsoft-with-the-feedback-hub-app-f59187f8-8739-22d6-ba93-f66612949332).

### Other feedback

For any other feedback, use the [Microsoft Learn documentation contributor guide][CONTRIB-1].

## Related articles

- [Contributor guide overview][CONTRIB-1]

<!-- Links -->

[CONTRIB-1]: /contribute