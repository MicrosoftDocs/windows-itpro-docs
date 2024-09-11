---
title: Test and update an AppLocker policy
description: This article discusses the steps required to test an AppLocker policy prior to deployment.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Test and update an AppLocker policy

This article discusses the steps required to test an AppLocker policy prior to deployment.

You should test each set of rules to ensure that the rules perform as intended. If you use Group Policy to manage AppLocker policies, complete the following steps for each Group Policy Object (GPO) containing AppLocker rules. Because AppLocker rules are inherited from linked GPOs, you should deploy all of the rules for simultaneous testing in all of your test GPOs.

## Step 1: Enable the Audit only enforcement setting

Use the **Audit only** enforcement mode setting to verify your AppLocker rules are properly configured for your organization without blocking any code. This setting can be enabled on the **Enforcement** tab of the **AppLocker Properties** dialog box. For information on the procedure to do this configuration, see [Configure an AppLocker policy for audit only](configure-an-applocker-policy-for-audit-only.md).

## Step 2: Configure the Application Identity service to start automatically

Because AppLocker uses the Application Identity service to verify the attributes of a file, you must configure it to start automatically in any one GPO that applies AppLocker rules. For more information, see [Configure the Application Identity Service](configure-the-application-identity-service.md). If you don't deploy your AppLocker policies using a GPO, you must ensure that the service is running on each PC in order for the policies to apply.

## Step 3: Test the policy

Test the AppLocker policy to determine if your rule collection needs to be modified. Your AppLocker policy should be active in audit mode only on all client PCs configured to receive your AppLocker policy.

The **Test-AppLockerPolicy** Windows PowerShell cmdlet can be used to determine whether any of the code run on your reference PCs is blocked by the rules in your rule collection. For information on the procedure to do this testing, see [Test an AppLocker policy by using Test-AppLockerPolicy](test-an-applocker-policy-by-using-test-applockerpolicy.md).

## Step 4: Analyze AppLocker events

You can either manually analyze AppLocker events or use the **Get-AppLockerFileInformation** Windows PowerShell cmdlet to automate the analysis.

### To manually analyze AppLocker events

Use Event Viewer or a text editor to view and sort your AppLocker events for analysis. You might look for patterns in application usage events, access frequencies, or access by user groups. If you don't have an event subscription configured, you can review the logs on a sampling of computers in your organization. For more information about using Event Viewer, see [Monitor application usage with AppLocker](monitor-application-usage-with-applocker.md).

### To analyze AppLocker events by using Get-AppLockerFileInformation

You can use the **Get-AppLockerFileInformation** Windows PowerShell cmdlet to analyze AppLocker events from a remote computer. If an app is being blocked and should be allowed, you can use the AppLocker cmdlets to help troubleshoot the problem.

For both event subscriptions and local events, you can use the **Get-AppLockerFileInformation** cmdlet to determine which files weren't allowed by your policy and how many times the event occurred for each file. For information on the procedure to do this monitoring, see [Monitor Application Usage with AppLocker](monitor-application-usage-with-applocker.md).

Next, you should review your rule list to determine whether a new rule should be created for the blocked file or whether an existing rule is too strictly defined. Ensure that you check which GPO is currently preventing the file from running. To determine this blocker GPO, you can use the Group Policy Results Wizard to view rule names.

## Step 5: Modify the AppLocker policy

Once you know what rules you want to edit or add to the policy, use the Group Policy Management Console to modify the AppLocker rules in the relevant GPOs. If you don't manage your AppLocker policies by a GPO, you can use the Local Security Policy snap-in (secpol.msc). For info how to modify an AppLocker policy, see, [Edit an AppLocker policy](edit-an-applocker-policy.md).

## Step 6: Repeat policy testing, analysis, and policy modification

Repeat the previous steps 3-5 until all the rules perform as intended before applying enforcement.

## Other resources

- For steps to perform other AppLocker policy tasks, see [Administer AppLocker](administer-applocker.md).
