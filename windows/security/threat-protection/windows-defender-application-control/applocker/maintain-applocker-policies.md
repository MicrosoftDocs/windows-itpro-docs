---
title: Maintain AppLocker policies (Windows 10)
description: This topic describes how to maintain rules within AppLocker policies.
ms.assetid: b4fbfdfe-ef3d-49e0-a390-f2dfe74602bc
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Maintain AppLocker policies

**Applies to**
- Windows 10
- Windows Server

This topic describes how to maintain rules within AppLocker policies.

Common AppLocker maintenance scenarios include:

-   A new app is deployed, and you need to update an AppLocker policy.
-   A new version of an app is deployed, and you need to either update an AppLocker policy or create a new rule to update the policy.
-   An app is no longer supported by your organization, so you need to prevent it from being used.
-   An app appears to be blocked but should be allowed.
-   An app appears to be allowed but should be blocked.
-   A single user or small subset of users needs to use a specific app that is blocked.

There are three methods you can use to maintain AppLocker policies:

-   [Maintaining AppLocker policies by using Mobile Device Management (MDM)](#bkmk-applkr-use-mdm)
-   [Maintaining AppLocker policies by using Group Policy](#bkmk-applkr-use-gp)
-   [Maintaining AppLocker policies on the local computer](#bkmk-applkr-use-locsnapin)

## <a href="" id="bkmk-applkr-use-mdm"></a>Maintaining AppLocker policies by using Mobile Device Management (MDM)



## <a href="" id="bkmk-applkr-use-gp"></a>Maintaining AppLocker policies by using Group Policy

For every scenario, the steps to maintain an AppLocker policy distributed by Group Policy include the following tasks.

As new apps are deployed or existing apps are removed by your organization or updated by the software publisher, you might need to make revisions to your rules and update the Group Policy Object (GPO) to ensure that your policy is current.

You can edit an AppLocker policy by adding, changing, or removing rules. However, you cannot specify a version for the AppLocker policy by importing additional rules. To ensure version control when modifying an AppLocker policy, use Group Policy management software that allows you to create 
versions of GPOs.

>**Caution:**  You should not edit an AppLocker rule collection while it is being enforced in Group Policy. Because AppLocker controls what files are allowed to run, making changes to a live policy can create unexpected behavior.

### Step 1: Understand the current behavior of the policy

Before modifying a policy, evaluate how the policy is currently implemented. For example, if a new version of the application is deployed, you can use **Test-AppLockerPolicy** to verify the effectiveness of your current policy for that app.

### Step 2: Export the AppLocker policy from the GPO

Updating an AppLocker policy that is currently enforced in your production environment can have unintended results. Therefore, export the policy from the GPO and update the rule or rules by using AppLocker on your AppLocker reference or test computer. To prepare an AppLocker policy for modification, see [Export an AppLocker policy from a GPO](export-an-applocker-policy-from-a-gpo.md).

### Step 3: Update the AppLocker policy by editing the appropriate AppLocker rule

After the AppLocker policy has been exported from the GPO into the AppLocker reference or test computer, or has been accessed on the local computer, the specific rules can be modified as required.

To modify AppLocker rules, see the following:

-   [Edit AppLocker rules](edit-applocker-rules.md)
-   [Merge AppLocker policies by using Set-ApplockerPolicy](merge-applocker-policies-by-using-set-applockerpolicy.md) or [Merge AppLocker policies manually](merge-applocker-policies-manually.md)
-   [Delete an AppLocker rule](delete-an-applocker-rule.md)
-   [Enforce AppLocker rules](enforce-applocker-rules.md)

### Step 4: Test the AppLocker policy

You should test each collection of rules to ensure that the rules perform as intended. (Because AppLocker rules are inherited from linked GPOs, you should deploy all rules for simultaneous testing in all test GPOs.) For steps to perform this testing, see [Test and update an AppLocker policy](test-and-update-an-applocker-policy.md).

### Step 5: Import the AppLocker policy into the GPO

After testing, import the AppLocker policy back into the GPO for implementation. To update the GPO with a modified AppLocker policy, see [Import an AppLocker policy into a GPO](import-an-applocker-policy-into-a-gpo.md).

### Step 6: Monitor the resulting policy behavior
After deploying a policy, evaluate the policy's effectiveness.

## <a href="" id="bkmk-applkr-use-locsnapin"></a>Maintaining AppLocker policies by using the Local Security Policy snap-in
For every scenario, the steps to maintain an AppLocker policy by using the Local Group Policy Editor or the Local Security Policy snap-in include the following tasks.

### Step 1: Understand the current behavior of the policy

Before modifying a policy, evaluate how the policy is currently implemented.

### Step 2: Update the AppLocker policy by modifying the appropriate AppLocker rule

Rules are grouped into a collection, which can have the policy enforcement setting applied to it. By default, AppLocker rules do not allow users to open or run any files that are not specifically allowed.

To modify AppLocker rules, see the appropriate topic listed on [Administer AppLocker](administer-applocker.md).

### Step 3: Test the AppLocker policy

You should test each collection of rules to ensure that the rules perform as intended. For steps to perform this testing, see [Test and update an AppLocker policy](test-and-update-an-applocker-policy.md).

### Step 4: Deploy the policy with the modified rule

You can export and then import AppLocker policies to deploy the policy to other computers running Windows 8 or later. To perform this task, see [Export an AppLocker policy to an XML file](export-an-applocker-policy-to-an-xml-file.md) and [Import an AppLocker policy from another computer](import-an-applocker-policy-from-another-computer.md).

### Step 5: Monitor the resulting policy behavior

After deploying a policy, evaluate the policy's effectiveness.

## Additional resources

-   For steps to perform other AppLocker policy tasks, see [Administer AppLocker](administer-applocker.md).
