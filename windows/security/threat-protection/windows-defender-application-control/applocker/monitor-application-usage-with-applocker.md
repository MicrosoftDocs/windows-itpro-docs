---
title: Monitor app usage with AppLocker (Windows)
description: This topic for IT professionals describes how to monitor app usage when AppLocker policies are applied.
ms.assetid: 0516da6e-ebe4-45b4-a97b-31daba96d1cf
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: conceptual
ms.date: 09/21/2017
ms.technology: itpro-security
---

# Monitor app usage with AppLocker

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic for IT professionals describes how to monitor app usage when AppLocker policies are applied.

Once you set rules and deploy the AppLocker policies, it's a good practice to determine if the policy implementation is what you expected.

### <a href="" id="bkmk-applkr-disc-effect-pol"></a>Discover the effect of an AppLocker policy

You can evaluate how the AppLocker policy is currently implemented for documentation or audit purposes, or before you modify the policy. Updating your AppLocker Policy Deployment Planning document will help you track your findings. You can perform one or more of the following steps to understand what application controls are currently enforced through AppLocker rules.

-   **Analyze the AppLocker logs in Event Viewer**

    When AppLocker policy enforcement is set to **Enforce rules**, rules are enforced for the rule collection and all events are audited. When AppLocker policy enforcement is set to **Audit only**, rules aren't enforced but are still evaluated to generate audit event data that is written to the AppLocker logs.

    For more information on the procedure to access the log, see [View the AppLocker Log in Event Viewer](#bkmk-applkr-view-log).

-   **Enable the Audit only AppLocker enforcement setting**

    By using the **Audit only** enforcement setting, you can ensure that the AppLocker rules are properly configured for your organization. When AppLocker policy enforcement is set to **Audit only**, rules are only evaluated but all events generated from that evaluation are written to the AppLocker log.

    For more information on the procedure to do this configuration, see [Configure an AppLocker policy for audit only](configure-an-applocker-policy-for-audit-only.md).

-   **Review AppLocker events with Get-AppLockerFileInformation**

    For both event subscriptions and local events, you can use the **Get-AppLockerFileInformation** Windows PowerShell cmdlet to determine which files have been blocked or would have been blocked (if you're using the audit-only enforcement mode) and how many times the event has occurred for each file.

    For more information on the procedure to do this verification, see [Review AppLocker Events with Get-AppLockerFileInformation](#bkmk-applkr-review-events).

-   **Review AppLocker events with Test-AppLockerPolicy**

    You can use the **Test-AppLockerPolicy** Windows PowerShell cmdlet to determine whether any of the rules in your rule collections will be blocked on your reference device or the device on which you maintain policies.

    For more information on the procedure to do this testing, see [Test an AppLocker policy by using Test-AppLockerPolicy](test-an-applocker-policy-by-using-test-applockerpolicy.md).

### <a href="" id="bkmk-applkr-review-events"></a>Review AppLocker events with Get-AppLockerFileInformation

For both event subscriptions and local events, you can use the **Get-AppLockerFileInformation** Windows PowerShell cmdlet to determine which files have been blocked or would have been blocked (if the **Audit only** enforcement setting is applied) and how many times the event has occurred for each file.

Membership in the local **Administrators** group, or equivalent, is the minimum required to complete this procedure.

> [!NOTE]
> If the AppLocker logs are not on your local device, you will need permission to view the logs. If the output is saved to a file, you will need permission to read that file.
 
**To review AppLocker events with Get-AppLockerFileInformation**

1.  At the command prompt, type **PowerShell**, and then press ENTER.
2.  Run the following command to review how many times a file would have been blocked from running if rules were enforced:

    ```powershell
    Get-AppLockerFileInformation –EventLog –EventType Audited –Statistics
    ```

3.  Run the following command to review how many times a file has been allowed to run or prevented from running:

    ```powershell
    Get-AppLockerFileInformation –EventLog –EventType Allowed –Statistics
    ```

### <a href="" id="bkmk-applkr-view-log"></a>View the AppLocker Log in Event Viewer

When AppLocker policy enforcement is set to **Enforce rules**, rules are enforced for the rule collection and all events are audited. When AppLocker policy enforcement is set to **Audit only**, rules are only evaluated but all events generated from that evaluation are written to the AppLocker log.

Membership in the local **Administrators** group, or equivalent, is the minimum required to complete this procedure.

**To view events in the AppLocker log by using Event Viewer**

1.  To open Event Viewer, go to the **Start** menu, type **eventvwr.msc**, and then select ENTER.
2.  In the console tree under **Application and Services Logs\\Microsoft\\Windows**, double-click **AppLocker**.

AppLocker events are listed in either the **EXE and DLL** log, the **MSI and Script** log, or the **Packaged app-Deployment** or **Packaged app-Execution** log. Event information includes the enforcement setting, file name, date and time, and user name. The logs can be exported to other file 
formats for further analysis.

## Related topics

- [AppLocker](applocker-overview.md)
