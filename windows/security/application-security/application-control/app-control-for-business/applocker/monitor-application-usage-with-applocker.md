---
title: Monitor app usage with AppLocker
description: This article for IT professionals describes how to monitor app usage when AppLocker policies are applied.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Monitor app usage with AppLocker

This article for IT professionals describes how to monitor app usage when AppLocker policies are applied.

After you deploy AppLocker policies, monitor its effect on devices to ensure the results are what you expected.

## Discover the effect of an AppLocker policy

You can evaluate how the AppLocker policy is currently implemented for documentation or audit purposes, or before you modify the policy. Updating your AppLocker Policy Deployment Planning document helps you track your findings. You can perform one or more of the following steps to understand what application controls are currently enforced through AppLocker rules.

- **Analyze the AppLocker logs in Event Viewer**

    When AppLocker policy enforcement is set to **Enforce rules**, any files that aren't allowed by your policy are blocked. In that case, an event is raised in the AppLocker event log for the rule collection. When AppLocker policy enforcement is set to **Audit only**, rules aren't enforced but are still evaluated to generate audit event data that is written to the AppLocker logs.

    For more information on the procedure to access the log, see [View the AppLocker Log in Event Viewer](#view-the-applocker-log-in-event-viewer).

- **Enable the Audit only AppLocker enforcement setting**

    By using the **Audit only** enforcement setting, you can ensure that the AppLocker rules are properly configured for your organization. When AppLocker policy enforcement is set to **Audit only**, rules are only evaluated but all events generated from that evaluation are written to the AppLocker log.

    For more information on the procedure to do this configuration, see [Configure an AppLocker policy for audit only](configure-an-applocker-policy-for-audit-only.md).

- **Review AppLocker events with Get-AppLockerFileInformation**

    For both event subscriptions and local events, you can use the **Get-AppLockerFileInformation** Windows PowerShell cmdlet to determine which files were blocked or would be blocked (if you're using the audit-only enforcement mode) and how many times the block event occurred for each file.

    For more information on the procedure to do this verification, see [Review AppLocker Events with Get-AppLockerFileInformation](#review-applocker-events-with-get-applockerfileinformation).

- **Review AppLocker events with Test-AppLockerPolicy**

    You can use the **Test-AppLockerPolicy** Windows PowerShell cmdlet to determine whether any of the rules in your rule collections affect files run on your reference device or the device on which you maintain policies.

    For more information on the procedure to do this testing, see [Test an AppLocker policy by using Test-AppLockerPolicy](test-an-applocker-policy-by-using-test-applockerpolicy.md).

## Review AppLocker events with Get-AppLockerFileInformation

For both event subscriptions and local events, you can use the **Get-AppLockerFileInformation** Windows PowerShell cmdlet to determine which files were blocked or would be blocked (if the **Audit only** enforcement setting is applied) and how many times the block event occurred for each file.

Membership in the local **Administrators** group, or equivalent, is the minimum required to complete this procedure.

> [!NOTE]
> If the AppLocker logs are not on your local device, you will need permission to view the logs. If the output is saved to a file, you will need permission to read that file.

### To review AppLocker events with Get-AppLockerFileInformation

1. At the command prompt, type **PowerShell**, and then select ENTER.
2. Run the following command to review how many times your AppLocker policy didn't allow a file:

    ```powershell
    Get-AppLockerFileInformation -EventLog -EventType Audited -Statistics
    ```

3. Run the following command to review how many times a file was allowed to run or prevented from running:

    ```powershell
    Get-AppLockerFileInformation -EventLog -EventType Allowed -Statistics
    ```

## View the AppLocker Log in Event Viewer

When AppLocker policy enforcement is set to **Enforce rules**, any files that aren't allowed by your policy are blocked. In that case, an event is raised in the AppLocker event log for the rule collection. When AppLocker policy enforcement is set to **Audit only**, rules aren't enforced but are still evaluated to generate audit event data that is written to the AppLocker logs.

Membership in the local **Administrators** group, or equivalent, is the minimum required to complete this procedure.

### To view events in the AppLocker log by using Event Viewer

1. To open Event Viewer, go to the **Start** menu, type **eventvwr.msc**, and then select ENTER.
2. In the console tree under **Application and Services Logs\\Microsoft\\Windows**, double-click **AppLocker**.

AppLocker events are listed in either the **EXE and DLL** log, the **MSI and Script** log, or the **Packaged app-Deployment** or **Packaged app-Execution** log. Event information includes the enforcement setting, file name, date and time, and user name. The logs can be exported to other file formats for further analysis.

## Related articles

- [AppLocker](applocker-overview.md)
