---
title: WDAC debugging and troubleshooting guide
description: Learn how to debug and troubleshoot app and script failures when using WDAC
author: valemieux
ms.author: jogeurte
ms.reviewer: jsuther1974
ms.topic: how-to
ms.date: 03/23/2023
ms.custom: template-how-to
ms.prod: windows-client
ms.technology: itpro-security
---

# WDAC debugging and troubleshooting

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](feature-availability.md).

This article describes how to debug and troubleshoot app and script failures when using Windows Defender Application Control (WDAC).

## 1 - Gather WDAC diagnostic data

Before debugging and troubleshooting WDAC issues, you must collect information from a device exhibiting the problem behavior. Run the following commands from an elevated PowerShell window to collect the diagnostic information you may need:

1. Gather general WDAC diagnostic data and copy it to %userprofile%\AppData\Local\Temp\DiagOutputDir\CiDiag by running:

    ```powershell
    cidiag.exe /stop
    ```

    If CiDiag.exe is not present in your version of Windows, gather this information manually:

    - WDAC policy binaries from the [Windows and EFI system partitions](known-issues.md#wdac-policy-file-locations)
    - WDAC event logs
    - AppLocker event logs
    - Other event logs that may contain useful information from other Windows apps and services
    - A text file containing only critical error events found in the WDAC event logs
    - A text file containing full event details for critical error events found in the WDAC event logs

2. Save the device's System Information to the CiDiag folder by running `msinfo32.exe /report $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\SystemInformation.txt`.
3. Use [CiTool.exe](citool-commands.md) to inventory the list of WDAC policies on the device by running `citool.exe -lp -json > $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\CiToolOutput.json`. Skip this step if CiTool.exe is not present in your version of Windows.
4. Export AppLocker registry key data to the CiDiag folder by running the following commands:

    `reg.exe query HKLM\Software\Policies\Microsoft\Windows\SrpV2 /s > $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerRegistry.txt`<br>
    `reg.exe query HKLM\Software\Policies\Microsoft\Windows\AppidPlugins /s >> $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerRegistry.txt`<br>
    `reg.exe query HKLM\System\CurrentControlSet\Control\Srp\ /s >> $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerRegistry.txt`

5. Copy any AppLocker policy files from  %windir%System32\AppLocker to the CiDiag folder by running `Copy-Item -Path $env:windir\System32\AppLocker -Destination $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\ -Recurse -Force`
6. Collect file information for the AppLocker policy files collected in the previous step by running `Get-ChildItem -Path $env:windir\System32\AppLocker\ -Recurse | select Mode,LastWriteTime,CreationTime,Length,Name >> $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerPolicyFiles.txt`
7. Export the effective AppLocker policy by running `Get-AppLockerPolicy -xml -Effective > $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLocker.xml`
8. Collect AppLocker services configuration and state information by running the following commands:

    `sc.exe query appid > $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerServices.txt`<br>
    `sc.exe query appidsvc >> $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerServices.txt`<br>
    `sc.exe query applockerfltr > $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerServices.txt`

### Core WDAC event logs

WDAC events are generated under two locations:

- Applications and Services logs – Microsoft – Windows – CodeIntegrity – Operational
- Applications and Services logs – Microsoft – Windows – AppLocker – MSI and Script

Within the CiDiag output directory, these event logs are called CIOperational.evtx and ALMsiAndScript.evtx, respectively.

### Other Windows event logs that may be useful

Sometimes, you may be able to supplement the information contained in the core WDAC event logs with information found in these other event logs. The ones shown in *italics* are not collected by cidiag.exe.

- Applications and Services logs – Microsoft – Windows – CodeIntegrity – Verbose
- Applications and Services logs – Microsoft – Windows – AppLocker – EXE and DLL
- Applications and Services logs – Microsoft – Windows – AppLocker – Packaged app-Deployment
- Applications and Services logs – Microsoft – Windows – AppLocker – Packaged app-Execution
- Applications and Services logs – Microsoft – Windows – AppID - Operational
- Applications and Services logs – Microsoft – Windows – CAPI2 - Operational
- Applications and Services logs – Microsoft – Windows – DeviceGuard - Operational
- *Applications and Services logs – Microsoft – Windows – PowerShell - \**
- *Windows - Application*
- *Windows - System*

## 2 - Use the diagnostic and log data to identify problems

Having gathered the necessary diagnostic information from a device, you're ready to begin your analysis of the diagnostic data collected in the previous step.

1. Verify the set of WDAC policies that are active and enforced. Confirm that only those policies you expect to be active are currently active. Be aware that [Windows includes inbox policies](inbox-wdac-policies.md) that may also be active. You can use either of these methods:

    - Review the output from *CiTool.exe -lp*, if applicable, which was saved to the CIDiag output directory as CiToolOutput.json. See [use Microsoft Edge to view the formatted json file](/microsoft-edge/devtools-guide-chromium/json-viewer/json-viewer).
    - Review all [policy activation events](../event-id-explanations.md#wdac-policy-activation-events) from the core WDAC event log found at  **Applications and Services logs – Microsoft – Windows – CodeIntegrity – Operational**. Within the CIDiag output directory, this event log is called CIOperational.evtx.

2. Review any [block events for executables, dlls, and drivers](../event-id-explanations.md#wdac-block-events-for-executables-dlls-and-drivers) from the core WDAC event log found at  **Applications and Services logs – Microsoft – Windows – CodeIntegrity – Operational**. Within the CIDiag output directory, this event log is called CIOperational.evtx. Use information from the block events and their correlated 3089 signature details event(s) to investigate any blocks that are unexplained or unexpected. See the blocked executable example described later in this article for reference.
3. Review any [block events for packaged apps, MSI installers, scripts, and COM objects](../event-id-explanations.md#wdac-block-events-for-packaged-apps-msi-installers-scripts-and-com-objects) from the core script enforcement event log found at  **Applications and Services logs – Microsoft – Windows – AppLocker – MSI and Script**. Within the CIDiag output directory, this event log is called ALMsiAndScript.evtx. Use information from the block events and their correlated 8038 signature details event(s) to investigate any blocks that are unexplained or unexpected.

Most WDAC-related issues, including app and script failures, can be diagnosed using the preceding steps.

### Event analysis for an example blocked executable

<!-- To be completed -->

## 3 - Resolve common problems

### A file was blocked that you want to allow

- Use data from the core WDAC event logs to add rules to allow the blocked file.
- Re-deploy the file or app using a managed installer if your policy trusts managed installers.

### A policy is active that is unexpected

This condition may exist if:

- A policy was removed but the system hasn't been rebooted.
- A policy was partially removed, but a copy of the policy still exists in either the System or EFI partition.
- A policy with PolicyId {A244370E-44C9-4C06-B551-F6016E563076} (single-policy format) was copied to the multiple-policy format policy location before activation, resulting in a duplicate policy binary on disk. Check for both SiPolicy.p7b and \{A244370E-44C9-4C06-B551-F6016E563076\}.cip files in the System and EFI partitions.
- A policy was incorrectly deployed to the device.
- An attacker with administrator access has applied a policy to cause denial of service for some critical processes.

To resolve such an issue, follow the instructions to [Remove WDAC policies](../disable-windows-defender-application-control-policies.md) for the identified policy.

### An unhandled app failure is occurring and no WDAC events are observed

Some apps alter their behavior when a user mode WDAC policy is active which can result in unexpected failures. This can also be seen as a side-effect of script enforcement, since the script enforcement behaviors are implemented by the individual script hosts and may not be handled by apps that interact with those script hosts.

Try to isolate the root cause by doing the following:

- Check for events in [other event logs](#other-windows-event-logs-that-may-be-useful) corresponding with the app failures.
- Temporarily replace the WDAC policy with another policy that [disables script enforcement](../design/script-enforcement.md) and re-test.
- Temporarily replace the WDAC policy with another policy that [allows all COM objects](../allow-com-object-registration-in-windows-defender-application-control-policy.md) and re-test.
- Temporarily replace the WDAC policy with another policy that relaxes other [policy rules](../select-types-of-rules-to-create.md#windows-defender-application-control-policy-rules) and re-test.

### An app deployed by a managed installer is not working

To debug issues using managed installer, try the following:

- Check that the effective AppLocker policy $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLocker.xml is correct as described in 
- Check that the AppLocker services are running. These should be found in $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerServices.txt created earlier.
- Check that an AppLocker file exists called MANAGEDINSTALLER.APPLOCKER 
- Check if the app is encountering a [known limitation with managed installer](../configure-authorized-apps-deployed-with-a-managed-installer.md#known-limitations-with-managed-installer). If so, you must authorize the app using other means.
- 
