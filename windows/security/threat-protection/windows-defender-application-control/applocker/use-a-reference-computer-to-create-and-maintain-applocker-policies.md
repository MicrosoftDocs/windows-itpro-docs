ms.assetid: 10c3597f-f44c-4c8e-8fe5-105d4ac016a6
ms.reviewer: 
---
title: Use a reference device to create and maintain AppLocker policies (Windows 10)
description: This topic for the IT professional describes the steps to create and maintain AppLocker policies by using a reference computer.

ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mjcaparas
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Use a reference device to create and maintain AppLocker policies

**Applies to**
 -   Windows 10
 -   Windows Server

This topic for the IT professional describes the steps to create and maintain AppLocker policies by using a reference computer.

## Background and prerequisites

An AppLocker reference device is a baseline device you can use to configure policies and can subsequently be used to maintain AppLocker policies. For the procedure to configure a reference device, see [Configure the AppLocker reference device](configure-the-appLocker-reference-device.md).

An AppLocker reference device that is used to create and maintain AppLocker policies should contain the corresponding apps for each organizational unit (OU) to mimic your production environment.

>**Important:**  The reference device must be running one of the supported editions of Windows. For information about operating system requirements for AppLocker, see [Requirements to use AppLocker](requirements-to-use-applocker.md).
 
You can perform AppLocker policy testing on the reference device by using the **Audit only** enforcement setting or Windows PowerShell cmdlets. You can also use the reference device as part of a testing configuration that includes policies that are created by using Software Restriction Policies.

## Step 1: Automatically generate rules on the reference device

With AppLocker, you can automatically generate rules for all files within a folder. AppLocker scans the specified folder and creates the condition types that you choose for each file in that folder. For the procedure to do this, see [Run the Automatically Generate Rules wizard](run-the-automatically-generate-rules-wizard.md).

>**Note:**  If you run this wizard to create your first rules for a Group Policy Object (GPO), after you complete the wizard, you will be prompted to create the default rules, which allow critical system files to run. You can edit the default rules at any time. If your organization has decided to edit the default rules or create custom rules to allow the Windows system files to run, ensure that you delete the default rules after you replace them with your custom rules.
 
## Step 2: Create the default rules on the reference device

AppLocker includes default rules for each rule collection. These rules are intended to help ensure that the files that are required for Windows to operate properly are allowed in an AppLocker rule collection. You must run the default rules for each rule collection. For info about default rules and considerations for using them, see [Understanding AppLocker default rules](understanding-applocker-default-rules.md). For the procedure to create default rules, see [Create AppLocker default rules](create-applocker-default-rules.md).

>**Important:**  You can use the default rules as a template when you create your own rules. This allows files within the Windows directory to run. However, these rules are only meant to function as a starter policy when you are first testing AppLocker rules.
 
## Step 3: Modify rules and the rule collection on the reference device

If AppLocker policies are currently running in your production environment, export the policies from the corresponding GPOs and save them to the reference device. For the procedure to do this, see [Export an AppLocker policy from a GPO](export-an-applocker-policy-from-a-gpo.md). If no AppLocker policies have been deployed, create the rules and develop the policies by using the following procedures:

-   [Create a rule that uses a publisher condition](create-a-rule-that-uses-a-publisher-condition.md)
-   [Create a rule that uses a file hash condition](create-a-rule-that-uses-a-file-hash-condition.md)
-   [Create a rule that uses a path condition](create-a-rule-that-uses-a-path-condition.md)
-   [Edit AppLocker rules](edit-applocker-rules.md)
-   [Add exceptions for an AppLocker rule](configure-exceptions-for-an-applocker-rule.md)
-   [Delete an AppLocker rule](delete-an-applocker-rule.md)
-   [Enable the DLL rule collection](enable-the-dll-rule-collection.md)
-   [Enforce AppLocker rules](enforce-applocker-rules.md)

## Step 4: Test and update AppLocker policy on the reference device

You should test each set of rules to ensure that they perform as intended. The **Test-AppLockerPolicy** Windows PowerShell cmdlet can be used to determine whether any of the rules in your rule collection will be blocked on your reference device. Perform the steps on each reference device that you used to define the AppLocker policy. Ensure that the reference device is joined to the domain and that it is receiving the AppLocker policy from the appropriate GPO. Because AppLocker rules are inherited from linked GPOs, you should deploy all of the rules to simultaneously test all of your test GPOs. Use the following procedures to complete this step:

-   [Test an AppLocker Policy with Test-AppLockerPolicy](https://technet.microsoft.com/library/ee791772(WS.10).aspx)
-   [Discover the Effect of an AppLocker Policy](https://technet.microsoft.com/library/ee791823(WS.10).aspx)

>**Caution:**  If you have set the enforcement setting on the rule collection to **Enforce rules** or you have not configured the rule collection, the policy will be implemented when the GPO is updated in the next step. If you have set the enforcement setting on the rule collection to **Audit only**, application access events are written to the AppLocker log, and the policy will not take effect.
 
## Step 5: Export and import the policy into production

When the AppLocker policy has been tested successfully, it can be imported into the GPO (or imported into individual computers that are not managed by Group Policy) and checked for its intended effectiveness. To do this, perform the following procedures:

-   [Export an AppLocker policy to an XML file](export-an-applocker-policy-to-an-xml-file.md)
-   [Import an AppLocker policy into a GPO](import-an-applocker-policy-into-a-gpo.md) or
-   [Discover the Effect of an AppLocker Policy](https://technet.microsoft.com/library/ee791823(WS.10).aspx)

If the AppLocker policy enforcement setting is **Audit only** and you are satisfied that the policy is fulfilling your intent, you can change it to **Enforce rules**. For info about how to change the enforcement setting, see [Configure an AppLocker policy for enforce rules](configure-an-applocker-policy-for-enforce-rules.md).

## Step 6: Monitor the effect of the policy in production

If additional refinements or updates are necessary after a policy is deployed, use the appropriate following procedures to monitor and update the policy:

-   [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md)
-   [Edit an AppLocker policy](edit-an-applocker-policy.md)
-   [Refresh an AppLocker policy](refresh-an-applocker-policy.md)

## See also

- [Deploy the AppLocker policy into production](deploy-the-applocker-policy-into-production.md)
