---
title: Create Your AppLocker policies
description: This overview article for the IT professional describes the steps to create an AppLocker policy and prepare it for deployment.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Create Your AppLocker policies

This overview article for the IT professional describes the steps to create an AppLocker policy and prepare it for deployment.

Creating effective application control policies with AppLocker starts by creating the rules for each app. Rules are grouped into one of five rule collections. The rule collection is configured to enforce or to audit only. An AppLocker policy includes the rules in the five rule collections and the enforcement mode settings for each rule collection.

## Step 1: Use your plan

You can develop an application control policy plan to guide you in making successful deployment decisions. For more information about how to develop this policy and what you should consider, see the [AppLocker Design Guide](applocker-policies-design-guide.md). This guide is intended for security architects, security administrators, and system administrators. It contains the following articles to help you create an AppLocker policy deployment plan for your organization that addresses your specific application control requirements by department, organizational unit, or business group:

1. [Understand the AppLocker policy deployment process](understand-the-applocker-policy-deployment-process.md)
2. [Understand AppLocker policy design decisions](understand-applocker-policy-design-decisions.md)
3. [Determine your application control objectives](../appcontrol-and-applocker-overview.md)
4. [Create a list of apps deployed to each business group](create-list-of-applications-deployed-to-each-business-group.md)
5. [Select the types of rules to create](select-types-of-rules-to-create.md)
6. [Determine the Group Policy structure and rule enforcement](determine-group-policy-structure-and-rule-enforcement.md)
7. [Plan for AppLocker policy management](plan-for-applocker-policy-management.md)

## Step 2: Create your rules and rule collections

Each rule applies to one or more apps, and it imposes a specific rule condition on them. Rules can be created individually or by using the Automatically Generate Rules Wizard. For the steps to create the rules, see [Create Your AppLocker rules](create-your-applocker-rules.md).

## Step 3: Configure the enforcement setting

An AppLocker policy is a set of rule collections that are configured with a rule enforcement mode setting. The enforcement mode setting can be **Enforce rules**, **Audit only**, or **Not configured**. If an AppLocker rule collection has at least one rule, and is set to **Not configured**, the rules in that rule collection are enforced. For info about configuring the rule enforcement setting, see [Configure an AppLocker policy for audit only](configure-an-applocker-policy-for-audit-only.md) and [Configure an AppLocker policy for enforce rules](configure-an-applocker-policy-for-enforce-rules.md).

## Step 4: Update the GPO

AppLocker policies can be defined locally on a device or applied through Group Policy. To use Group Policy to apply AppLocker policies, you must create a new Group Policy Object (GPO), or you must update an existing GPO. You can create or modify AppLocker policies by using the Group Policy Management Console (GPMC), or you can import an AppLocker policy into a GPO. For the procedure to import this policy into a GPO, see [Import an AppLocker policy into a GPO](import-an-applocker-policy-into-a-gpo.md).

## Step 5: Test the effect of the policy

In a test environment or with the enforcement setting set at **Audit only**, verify that the results of the policy are what you intended. For info about testing a policy, see [Test and update an AppLocker policy](test-and-update-an-applocker-policy.md).

## Step 6: Implement the policy

Depending on your deployment method, import the AppLocker policy to the GPO in your production environment, or if the policy is already deployed, change the enforcement setting to your production environment value-**Enforce rules** or **Audit only**.

## Step 7: Test the effect of the policy and adjust

Validate the effect of the policy by analyzing the AppLocker logs for application usage, and then modify the policy as necessary. For information on how to do these tasks, see [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md).

## Next steps

Follow the steps described in the following articles to continue the deployment process:

1. [Create Your AppLocker rules](create-your-applocker-rules.md)
2. [Test and update an AppLocker policy](test-and-update-an-applocker-policy.md)
3. [Deploy the AppLocker policy into production](deploy-the-applocker-policy-into-production.md)

## See also

- [AppLocker deployment guide](applocker-policies-deployment-guide.md)
