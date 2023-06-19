---
title: Troubleshoot app deployment issues in Windows SE
description: Troubleshoot common issues when deploying apps to Windows SE devices.
ms.date: 06/19/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

# Troubleshoot app deployment issues in Windows SE

The following table lists common app deployment issues on Windows 11 SE, and options to resolve them:

| **Problem** | **Potential solution** |
|---|---|
| **App hasn't installed** | <li>Check the type of app:<ul><li>Win32 apps should be able to install with no problem</li><li>UWP LOB apps apps aren't supported</li></ul></li><li>It's possible the app is trying to execute a blocked binary. Check the AppLocker and CodeIntegrity logs in the Event Viewer and verify if any executables related to the app are blocked. If so, you'll need to write a supplemental policy to support the app</li><li> Check the Intune Management Extension logs to see if there was an attempt to install your app</li>|
| **App has problems when running** | It's possible the app is trying to execute a blocked binary<br> Check the **AppLocker** and **CodeIntegrity** logs in Event Viewer to see if any executables related to the app are being blocked. If so, you'll need to write a supplemental policy to support the app. |
| **My supplemental policy hasn't deployed** |<li>Your XML policy is malformed. Double-check to see if all markup is tagged correctly</li><li>Check that your policy is correctly applied|

<!--
The following table lists common app deployment issues on Windows 11 SE, and options to resolve them:

| **Problem** | **Potential solution** |
|---|---|
| **App hasn't installed** | <li>Check the type of app:<ul><li>Win32 apps should be able to install with no problem</li><li>UWP LOB apps require writing an additional supplemental policy</li><li>Microsoft Sore apps aren't supported</li></ul></li><li>Check that the managed installer policies are deployed correctly</li><li>It's possible the app is trying to execute a blocked binary. Check the AppLocker and CodeIntegrity logs in the Event Viewer and verify if any executables related to the app are blocked. If so, you'll need to write a supplemental policy to support the app</li><li> Check the Intune Management Extension logs to see if there was an attempt to install your app</li>|
| **App has problems when running** | It's possible the app is trying to execute a blocked binary<br> Check the **AppLocker** and **CodeIntegrity** logs in Event Viewer to see if any executables related to the app are being blocked. If so, you'll need to write a supplemental policy to support the app. |
| **My supplemental policy hasn't deployed** |<li>Your XML policy is malformed. Double-check to see if all markup is tagged correctly</li><li>Check that your policy is correctly applied|


## WDAC Supplemental policy validation

Use the Event Viewer to see if a supplemental policy is deployed correctly. These rules apply to both the policy that allows managed installers and any supplemental policies that you deploy.

1. Open the **Event viewer** on a target device
1. Expand **Applications and Services > Microsoft > Windows > CodeIntegrity > Operational**
1. Check for **event ID 3099**: *the policy was Refreshed and activated*
    - For example: `Refreshed and activated Code Integrity policy {GUID} . id . Status 0x0`
    - The policy that allows managed installers is **`C0DB889B-59C5-453C-B297-399C851934E4`**. Checking that this policy is applied correctly, indicates that a device is setup to allow managed installers (and therefore, can allow installation of Win32 apps via the Intune Management Extension).\
    You can check that the **Managed Installer policy** rule was set in the policy, by checking the **Options** field in the **details** pane. For more information, see: [Understanding Application Control event IDs][WIN-1]

    :::image type="content" source="images/troubleshoot-managed-installer-policy.png" alt-text="Screenshot of the CodeIntegrity operational log" lightbox="images/troubleshoot-managed-installer-policy.png":::

    You can also verify that the policy has been activated by running the following from the <kbd>Win</kbd> + <kbd>R</kbd> *Run dialog* on a target device as an Administrator (hold <kbd>CTRL</kbd> + <kbd>Shift</kbd> when pressing Enter to run the command):

    ```
    citool.exe -lp
    ```
    
    - For the policy that allows managed installers to run, a policyID `C0DB889B-59C5-453C-B297-399C851934E4` and Friendly Name *[Win-EDU] Microsoft Apps Supplemental Policy - Prod* should be present, and have **Is Currently Enforced** showing as **true**
    - For any additional policies that you deploy, check that a policy with a matching ID and Friendly Name is shown in the list and the **Is Currently Enforced** and **Is Authorized** properties are both showing as **true**
    
    :::image type="content" source="images/troubleshoot-citool.png" alt-text="Screenshot of the output of citool.exe with the Win-EDU supplemental policy.":::

1. Check for **error events** with code **3077**: and reference [Understanding Application Control event IDs][WIN-1]

    :::image type="content" source="images/troubleshoot-codeintegrity-log.png" alt-text="Screenshot of the error in the CodeIntegrity operational log showing that PowerShell execution is prevented by policy." lightbox="images/troubleshoot-codeintegrity-log.png":::

    When checking an error event, you can observe that the information in the *General* tab may show something like the following:

    ```
    Code Integrity determined that a process (\Device\HarddiskVolume3\Windows\System32\svchost.exe) attempted to load **\Device\HarddiskVolume3\Windows\System32\WindowsPowerShell\v1.0\powershell.exe** that did not meet the Enterprise signing level requirements or violated code integrity policy (Policy ID:**{82443e1e-8a39-4b4a-96a8-f40ddc00b9f3}**).
    ```

    The important things to parse are:

    - **Failing application**: the path and executable here inform you which application failed. It's important to check that this executable is expected for the application you're validating. (for example. You would expect zoom.exe to fail for Zoom as opposed to cmd.exe.)
    - **Error reason**: indicates why the application was unable to run. `...did not meet the Enterprise signing level requirements or violated code integrity policy` is what should be seen
    - **Policy ID**: is the policy that is being violated, meaning that a rule in the policy is preventing the application from running

    > [!NOTE]
    > **{82443e1e-8a39-4b4a-96a8-f40ddc00b9f3}** is the base policy, which is what restricts most third-party apps from running. If you see another policy ID, it's worth taking note of that.

    Alternatively you can use `cidiag.exe /stop`, which copies all potentially relevant logs and policy files to a folder. The command also parses the critical events from the **CodeIntegrity** and **AppLocker** logs to a text file.

-->

## AppLocker policy validation

To query AppLocker policies and validate that they're configured correctly, follow these steps:

1. Open the **Local Security Policy** mmc console (`secpol.msc`)
1. Select **Security Settings > Application Control Policies**
1. Right-click **AppLocker** and select **Export Policy…**
  :::image type="content" source="images/applocker-export-policy.png" alt-text="Screenshot of the export of the AppLocker policies from the Local Security Policy mmc console." lightbox="images/applocker-export-policy.png" border="false":::
1. For the policy that sets the Intune Management Extension as a Managed installer, *MICROSOFT.MANAGEMENT.SERVICES.INTUNEWINDOWSAGENT.EXE* should be nested under a RuleCollection section of Type *ManagedInstaller*
  :::image type="content" source="images/applocker-policy-validation.png" alt-text="Screenshot of the xml file generated by the get-applockerpolicy PowerShell cmdlet." lightbox="images/applocker-policy-validation.png":::
1. For any policies you added to set other executables you want to be managed installers, look for the rules you defined nested under a RuleCollection section of Type *ManagedInstaller*

### AppLocker service

To verify that the AppLocker service is running, follow these steps:

1. Open the **Services** mmc console (`services.msc`)
1. Verify that the service **Application Identity** has a status of **Running**

### AppLocker event log validation

1. Open the **Event Viewer** on a target device
1. Expand **Applications and Services > Microsoft > Windows > AppLocker > MSI and Script**
1. Check for **error events** with code **8040**, and reference [Understanding Application Control event IDs][WIN-2]

## Intune Management Extension

- [Collect diagnostics from a Windows device][MEM-1]
- Logs can be collected from `%programdata%\Microsoft\IntuneManagementExtension\Logs`

[MEM-1]: /mem/intune/remote-actions/collect-diagnostics
[WIN-1]: /windows/security/threat-protection/windows-defender-application-control/event-tag-explanations#policy-activation-event-options
[WIN-2]: /windows/security/threat-protection/windows-defender-application-control/event-id-explanations
