---
title: Deploy AppLocker policies by using the enforce rules setting (Windows 10)
description: This topic for IT professionals describes the steps to deploy AppLocker policies by using the enforcement setting method.
ms.assetid: fd3a3d25-ff3b-4060-8390-6262a90749ba
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

# Deploy AppLocker policies by using the enforce rules setting

**Applies to**
- Windows 10
- Windows Server

This topic for IT professionals describes the steps to deploy AppLocker policies by using the enforcement setting method.

## Background and prerequisites

These procedures assume that you have already deployed AppLocker policies with the enforcement set to **Audit only**, and you have been collecting data through the AppLocker event logs and other channels to determine what effect these policies have on your environment and the policy's adherence to your application control design.

For info about the AppLocker policy enforcement setting, see [Understand AppLocker enforcement settings](understand-applocker-enforcement-settings.md).

For info about how to plan an AppLocker policy deployment, see [AppLocker Design Guide](applocker-policies-design-guide.md).

## Step 1: Retrieve the AppLocker policy

Updating an AppLocker policy that is currently enforced in your production environment can have unintended results. Using Group Policy, you can export the policy from the Group Policy Object (GPO) and then update the rule or rules by using AppLocker on your AppLocker reference or test PC. For the procedure to do this, see [Export an AppLocker policy from a GPO](export-an-applocker-policy-from-a-gpo.md) and [Import an AppLocker policy into a GPO](import-an-applocker-policy-into-a-gpo.md). For local AppLocker policies, you can update the rule or rules by using the Local Security policy snap-in (secpol.msc) on your AppLocker reference or test PC. For the procedures to do this, see [Export an AppLocker policy to an XML file](export-an-applocker-policy-to-an-xml-file.md) and [Import an AppLocker policy from another computer](import-an-applocker-policy-from-another-computer.md).

## Step 2: Alter the enforcement setting

Rule enforcement is applied only to a collection of rules, not to individual rules. AppLocker divides the rules into collections: executable files, Windows Installer files, packaged apps, scripts, and DLL files. By default, if enforcement is not configured and rules are present in a rule collection, those rules are enforced. For information about the enforcement setting, see [Understand AppLocker Enforcement Settings](understand-applocker-enforcement-settings.md). For the procedure to alter the enforcement setting, see [Configure an AppLocker policy for audit only](configure-an-applocker-policy-for-audit-only.md).

## Step 3: Update the policy

You can edit an AppLocker policy by adding, changing, or removing rules. However, you cannot specify a version for the AppLocker policy by importing additional rules. To ensure version control when modifying an AppLocker policy, use Group Policy management software that allows you to create versions of GPOs. An example of this type of software is the [Advanced Group Policy Management](https://go.microsoft.com/fwlink/p/?LinkId=145013) feature from the 
Microsoft Desktop Optimization Pack.

>**Caution:**  You should not edit an AppLocker rule collection while it is being enforced in Group Policy. Because AppLocker controls what files are allowed to run, making changes to a live policy can create unexpected behavior.
 
For the procedure to update the GPO, see [Import an AppLocker policy into a GPO](import-an-applocker-policy-into-a-gpo.md).

For the procedures to distribute policies for local PCs by using the Local Security Policy snap-in (secpol.msc), see [Export an AppLocker policy to an XML file](export-an-applocker-policy-to-an-xml-file.md) and [Import an AppLocker policy from another computer](import-an-applocker-policy-from-another-computer.md).

## Step 4: Monitor the effect of the policy

When a policy is deployed, it is important to monitor the actual implementation of that policy. You can do this by monitoring your support organization's app access request activity and reviewing the AppLocker event logs. To monitor the effect of the policy, see [Monitor Application Usage with AppLocker](monitor-application-usage-with-applocker.md).

## Additional resources

-   For steps to perform other AppLocker policy tasks, see [Administer AppLocker](administer-applocker.md).
 
 
