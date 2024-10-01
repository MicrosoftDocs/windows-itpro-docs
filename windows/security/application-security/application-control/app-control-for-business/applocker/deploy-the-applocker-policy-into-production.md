---
title: Deploy the AppLocker policy into production
description: This article for the IT professional describes the tasks that should be completed before you deploy AppLocker application control settings.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Deploy the AppLocker policy into production

This article for the IT professional describes the tasks that should be completed before you deploy AppLocker application control settings.

After successfully testing and modifying the AppLocker policy for each Group Policy Object (GPO), you're ready to deploy the enforcement settings into production. For most organizations, this means switching the AppLocker enforcement mode setting from **Audit only** to **Enforce rules** for a rule collection. Be sure to follow the deployment plan that you created earlier. For more info, see the [AppLocker Design Guide](applocker-policies-design-guide.md). Depending on the needs of different business groups in your organization, you might deploy different enforcement mode settings for linked GPOs.

## Understand your design decisions

Before you deploy an AppLocker policy, you should determine:

- For each business group, which applications to control and in what manner. For more info, see [Create a list of apps deployed to each business group](create-list-of-applications-deployed-to-each-business-group.md).
- How to handle requests for application access. For info about what to consider when developing your support policies, see [Plan for AppLocker policy management](plan-for-applocker-policy-management.md).
- How to manage events, including forwarding events. For info about event management in AppLocker, see [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md).
- Your GPO structure, including how to include AppLocker policies. For more info, see [Determine the Group Policy structure and rule enforcement](determine-group-policy-structure-and-rule-enforcement.md).

For info about how AppLocker deployment is dependent on design decisions, see [Understand AppLocker policy design decisions](understand-applocker-policy-design-decisions.md).

## AppLocker deployment methods

If you configure a reference device, you can create and update your AppLocker policies on this device, test the policies, and then export the policies to the appropriate GPO for distribution. Another method is to create the policies and set the enforcement setting on **Audit only**, then observe the events that are generated.

- [Use a reference device to create and maintain AppLocker policies](use-a-reference-computer-to-create-and-maintain-applocker-policies.md)

    This article describes the steps to use an AppLocker reference computer to prepare application control policies for deployment by using Group Policy or other means.

- [Deploy AppLocker policies by using the enforce rules setting](deploy-applocker-policies-by-using-the-enforce-rules-setting.md)

    This article describes the steps to deploy the AppLocker policy by changing the enforcement mode setting to **Audit only** or to **Enforce rules**.

## See also

- [AppLocker deployment guide](applocker-policies-deployment-guide.md)
