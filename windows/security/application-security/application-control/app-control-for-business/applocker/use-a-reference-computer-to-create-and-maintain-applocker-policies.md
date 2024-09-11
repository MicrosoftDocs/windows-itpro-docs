---
title: Use a reference device to create and maintain AppLocker policies
description: This article for the IT professional describes the steps to create and maintain AppLocker policies by using a reference computer.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Use a reference device to create and maintain AppLocker policies

This article for the IT professional describes the steps to create and maintain AppLocker policies by using a reference computer.

## Background and prerequisites

An AppLocker reference device is a baseline device you can use to configure policies and can then be used to maintain AppLocker policies. For the procedure to configure a reference device, see [Configure the AppLocker reference device](configure-the-appLocker-reference-device.md).

An AppLocker reference device that is used to create and maintain AppLocker policies should contain the corresponding apps for each organizational unit (OU) to mimic your production environment.

You can perform AppLocker policy testing on the reference device by using the **Audit only** enforcement mode setting or Windows PowerShell cmdlets.

## Step 1: Automatically generate rules on the reference device

With AppLocker, you can automatically generate rules for all files within a folder. AppLocker scans the specified folder and creates the condition types that you choose for each file in that folder. For information on how to automatically generate rules, see [Run the Automatically Generate Rules wizard](run-the-automatically-generate-rules-wizard.md).

> [!NOTE]
> If you run this wizard to create your first rules for a Group Policy Object (GPO), you will be prompted to create the default rules which allow critical system files to run. You can edit the default rules at any time. If your organization uses custom rules to allow the Windows system files to run, ensure that you delete the default rules after you create your custom rules.

## Step 2: Create the default rules on the reference device

AppLocker includes default rules for each rule collection. These rules are intended to help ensure that the files that are required for Windows to operate properly are allowed in an AppLocker rule collection. You must run the default rules for each rule collection. For info about default rules and considerations for using them, see [Understanding AppLocker default rules](understanding-applocker-default-rules.md). For the procedure to create default rules, see [Create AppLocker default rules](create-applocker-default-rules.md).

> [!IMPORTANT]
> You can use the default rules as a template when you create your own rules. This allows files within the Windows directory to run. However, these rules are only meant to function as a starter policy when you are first testing AppLocker rules.

## Step 3: Modify rules and the rule collection on the reference device

If AppLocker policies are currently running in your production environment, export the policies from the corresponding GPOs and save them to the reference device. For information on how to export and save the policies, see [Export an AppLocker policy from a GPO](export-an-applocker-policy-from-a-gpo.md). If no AppLocker policies are deployed, create the rules and develop the policies by using the following procedures:

- [Create a rule that uses a publisher condition](create-a-rule-that-uses-a-publisher-condition.md)
- [Create a rule that uses a file hash condition](create-a-rule-that-uses-a-file-hash-condition.md)
- [Create a rule that uses a path condition](create-a-rule-that-uses-a-path-condition.md)
- [Edit AppLocker rules](edit-applocker-rules.md)
- [Add exceptions for an AppLocker rule](configure-exceptions-for-an-applocker-rule.md)
- [Delete an AppLocker rule](delete-an-applocker-rule.md)
- [Enable the DLL rule collection](enable-the-dll-rule-collection.md)
- [Enforce AppLocker rules](enforce-applocker-rules.md)

## Step 4: Test and update AppLocker policy on the reference device

You should test each set of rules to ensure that they perform as intended. The **Test-AppLockerPolicy** Windows PowerShell cmdlet can be used to determine whether any apps on your reference device are blocked by the rules in your rule collections. Perform the steps on each reference device that you used to define the AppLocker policy. Ensure that the reference device is joined to the domain and that it's receiving the AppLocker policy from the appropriate GPO. Because AppLocker rules are inherited from linked GPOs, you should deploy all of the rules to simultaneously test all of your test GPOs. Use the following procedures to complete this step:

- [Test an AppLocker Policy with Test-AppLockerPolicy](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/ee791772(v=ws.10))
- [Discover the Effect of an AppLocker Policy](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/ee791823(v=ws.10))

> [!WARNING]
> If you have set the enforcement mode setting on the rule collection to **Enforce rules** or **Not configured**, the policy will be enforced upon completing the next step. Set the enforcement mode setting on the rule collection to **Audit only** if you aren't ready to block any files from running.

## Step 5: Export and import the policy into production

After you test your AppLocker policy, you can import it into the GPO (or imported into individual computers not managed by Group Policy) and checked for its intended effectiveness. To do these tasks, perform the following procedures:

- [Export an AppLocker policy to an XML file](export-an-applocker-policy-to-an-xml-file.md)
- [Import an AppLocker policy into a GPO](import-an-applocker-policy-into-a-gpo.md) or
- [Discover the Effect of an AppLocker Policy](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/ee791823(v=ws.10))

If the AppLocker policy enforcement setting is **Audit only** and you're satisfied that the policy is fulfilling your intent, you can change it to **Enforce rules**. For info about how to change the enforcement setting, see [Configure an AppLocker policy for enforce rules](configure-an-applocker-policy-for-enforce-rules.md).

## Step 6: Monitor the effect of the policy in production

If more refinements or updates are necessary after a policy is deployed, use the appropriate following procedures to monitor and update the policy:

- [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md)
- [Edit an AppLocker policy](edit-an-applocker-policy.md)
- [Refresh an AppLocker policy](refresh-an-applocker-policy.md)

## See also

- [Deploy the AppLocker policy into production](deploy-the-applocker-policy-into-production.md)
