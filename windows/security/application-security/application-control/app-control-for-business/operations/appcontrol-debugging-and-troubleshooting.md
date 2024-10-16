---
title: App Control debugging and troubleshooting guide
description: Learn how to debug and troubleshoot app and script failures when using App Control
ms.topic: how-to
ms.date: 09/11/2024
---

# App Control debugging and troubleshooting

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

This article describes how to debug and troubleshoot app and script failures when using App Control for Business.

## 1 - Gather App Control diagnostic data

Before debugging and troubleshooting App Control issues, you must collect information from a device exhibiting the problem behavior.

Run the following commands from an elevated PowerShell window to collect the diagnostic information you may need:

1. Gather general App Control diagnostic data and copy it to %userprofile%\AppData\Local\Temp\DiagOutputDir\CiDiag:

    ```powershell
    cidiag.exe /stop
    ```

    If CiDiag.exe isn't present in your version of Windows, gather this information manually:

    - App Control policy binaries from the [Windows and EFI system partitions](known-issues.md#app-control-policy-file-locations)
    - [App Control event logs](#core-app-control-event-logs)
    - [AppLocker event logs](#core-app-control-event-logs)
    - [Other event logs that may contain useful information](#other-windows-event-logs-that-may-be-useful) from other Windows apps and services

2. Save the device's System Information to the CiDiag folder:

    ```powershell
    msinfo32.exe /report $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\SystemInformation.txt
    ```

3. Use [CiTool.exe](citool-commands.md) to inventory the list of App Control policies on the device. Skip this step if CiTool.exe isn't present in your version of Windows.

    ```powershell
    citool.exe -lp -json > $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\CiToolOutput.json
    ````

4. Export AppLocker registry key data to the CiDiag folder:

    ```powershell
    reg.exe query HKLM\Software\Policies\Microsoft\Windows\SrpV2 /s > $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerRegistry.txt; reg.exe query HKLM\Software\Policies\Microsoft\Windows\AppidPlugins /s >> $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerRegistry.txt; reg.exe query HKLM\System\CurrentControlSet\Control\Srp\ /s >> $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerRegistry.txt
    ```

   > [!NOTE]
   > You may see an error that the system was unable to find the specified registry key or value. This error doesn't indicate a problem and can be ignored.

5. Copy any AppLocker policy files from  %windir%System32\AppLocker to the CiDiag folder:

    ```powershell
    Copy-Item -Path $env:windir\System32\AppLocker -Destination $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\ -Recurse -Force -ErrorAction Ignore
    ```

6. Collect file information for the AppLocker policy files collected in the previous step:

    ```powershell
    Get-ChildItem -Path $env:windir\System32\AppLocker\ -Recurse | select Mode,LastWriteTime,CreationTime,Length,Name >> $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerPolicyFiles.txt
    ```

7. Export the effective AppLocker policy:

    ```powershell
    Get-AppLockerPolicy -xml -Effective > $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLocker.xml
    ```

8. Collect AppLocker services configuration and state information:

    ```powershell
    sc.exe query appid > $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerServices.txt; sc.exe query appidsvc >> $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerServices.txt; sc.exe query applockerfltr >> $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerServices.txt
    ```

### Core App Control event logs

App Control events are generated under two locations:

- Applications and Services logs - Microsoft - Windows - CodeIntegrity - Operational
- Applications and Services logs - Microsoft - Windows - AppLocker - MSI and Script

Within the CiDiag output directory, these event logs are called CIOperational.evtx and ALMsiAndScript.evtx, respectively.

### Other Windows event logs that may be useful

Sometimes, you may be able to supplement the information contained in the core App Control event logs with information found in these other event logs. CIDiag.exe doesn't collect the ones shown in *italics*.

- Applications and Services logs - Microsoft - Windows - CodeIntegrity - Verbose
- Applications and Services logs - Microsoft - Windows - AppLocker - EXE and DLL
- Applications and Services logs - Microsoft - Windows - AppLocker - Packaged app-Deployment
- Applications and Services logs - Microsoft - Windows - AppLocker - Packaged app-Execution
- Applications and Services logs - Microsoft - Windows - AppID - Operational
- Applications and Services logs - Microsoft - Windows - CAPI2 - Operational
- Applications and Services logs - Microsoft - Windows - DeviceGuard - Operational
- *Applications and Services logs - Microsoft - Windows - PowerShell - \**
- *Windows - Application*
- *Windows - System*

## 2 - Use the diagnostic and log data to identify problems

Having gathered the necessary diagnostic information from a device, you're ready to begin your analysis of the diagnostic data collected in the previous section.

1. Verify the set of App Control policies that are active and enforced. Confirm that only those policies you expect to be active are currently active. Be aware of the [Windows inbox policies](inbox-appcontrol-policies.md) that may also be active. You can use either of these methods:

    - Review the output from *CiTool.exe -lp*, if applicable, which was saved to the CIDiag output directory as CiToolOutput.json. See [use Microsoft Edge to view the formatted json file](/microsoft-edge/devtools-guide-chromium/json-viewer/json-viewer).
    - Review all [policy activation events](event-id-explanations.md#app-control-policy-activation-events) from the core App Control event log found at  **Applications and Services logs - Microsoft - Windows - CodeIntegrity - Operational**. Within the CIDiag output directory, this event log is called CIOperational.evtx.

2. Review any [block events for executables, dlls, and drivers](event-id-explanations.md#app-control-block-events-for-executables-dlls-and-drivers) from the core App Control event log found at  **Applications and Services logs - Microsoft - Windows - CodeIntegrity - Operational**. Within the CIDiag output directory, this event log is called CIOperational.evtx. Use information from the block events and their correlated 3089 signature details event(s) to investigate any blocks that are unexplained or unexpected. See the blocked executable example described later in this article for reference.
3. Review any [block events for packaged apps, MSI installers, scripts, and COM objects](event-id-explanations.md#app-control-block-events-for-packaged-apps-msi-installers-scripts-and-com-objects) from the core script enforcement event log found at  **Applications and Services logs - Microsoft - Windows - AppLocker - MSI and Script**. Within the CIDiag output directory, this event log is called ALMsiAndScript.evtx. Use information from the block events and their correlated 8038 signature details event(s) to investigate any blocks that are unexplained or unexpected.

Most App Control-related issues, including app and script failures, can be diagnosed using the preceding steps.

### Event analysis for an example blocked executable

Here's an example of detailed EventData from a typical App Control enforcement mode block event 3077, and one of its correlated 3089 signature information events. The tables that follow each event screenshot describe some of the elements contained in the events. Following the event descriptions is a step-by-step walkthrough explaining how to use the events to understand why the block occurred.

#### Event 3077 - App Control enforcement block event

![Example 3077 block event for PowerShell.exe.](../images/event-3077.png)

| Element name | Description |
| ----- | ----- |
| System - Correlation - \[ActivityID\] | **Not shown in screenshot** <br> Use the correlation ActivityID to match an App Control block event with one or more 3089 signature events. |
| File Name | The file's path and name on disk that was blocked from running. Since the name on disk is mutable, this value **isn't** the one used when creating App Control file rules with `-Level FileName`. Instead, see the OriginalFileName element later in this table. |
| Process Name | The path and name of the file that attempted to run the blocked file. Also called the parent process. |
| Requested Signing Level | The Windows signing authorization level the code needed to pass in order to run. See [Requested and validated signing level](event-tag-explanations.md#requested-and-validated-signing-level). |
| Validated Signing Level | The Windows signing authorization level the code was given. See [Requested and validated signing level](event-tag-explanations.md#requested-and-validated-signing-level). |
| Status | Windows NT status code. You can use `certutil.exe -error <status>` to look up the meaning of the status code. |
| SHA1 Hash | The SHA1 Authenticode hash for the blocked file. |
| SHA256 Hash | The SHA256 Authenticode hash for the blocked file. |
| SHA1 Flat Hash | The SHA1 flat file hash for the blocked file. |
| SHA256 Flat Hash | The SHA256 flat file hash for the blocked file. |
| PolicyName | The friendly name of the App Control policy that caused the block event. A separate 3077 block event (or 3076 audit block event) is shown for each policy that blocks the file from running. |
| PolicyId | The friendly ID value of the App Control policy that caused the block event. |
| PolicyHash | The SHA256 Authenticode hash of the App Control policy binary that caused the block event. |
| OriginalFileName | The immutable file name set by the developer in the blocked file's resource header. This value is the one used when creating App Control file rules with `-Level FileName`. |
| InternalName | Another immutable value set by the developer in the blocked file's resource header. You can substitute this value for the OriginalFileName in file rules with `-Level FileName -SpecificFileNameLevel InternalName`. |
| FileDescription | Another immutable value set by the developer in the blocked file's resource header. You can substitute this value for the OriginalFileName in file rules with `-Level FileName -SpecificFileNameLevel FileDescription`. |
| ProductName | Another immutable value set by the developer in the blocked file's resource header. You can substitute this value for the OriginalFileName in file rules with `-Level FileName -SpecificFileNameLevel ProductName`. |
| FileVersion | The policy's VersionEx value used to enforce version control over signed policies. |
| PolicyGUID | The PolicyId of the App Control policy that caused the block event. |
| UserWriteable | A boolean value indicating if the file was in a user-writeable location. This information is useful for diagnosing issues when allowing by FilePath rules. |
| PackageFamilyName | The Package Family Name for the packaged app (MSIX) that includes the blocked file. |

#### Event 3089 - App Control signature information event

![Example 3089 signature information event for PowerShell.exe.](../images/event-3089.png)

| Element name | Description |
| ----- | ----- |
| System - Correlation - \[ActivityID\] | Use the correlation ActivityID to match an App Control signature event with its block event. |
| TotalSignatureCount | The total number of signatures detected for the blocked file. |
| Signature | The index count, starting at 0, of the current signature shown in this 3089 event. If the file had multiple signatures, you'll find other 3089 events for the other signatures. |
| Hash | The hash value that App Control used to match the file. This value should match one of the four hashes shown on the 3077 or 3076 block event. If no signatures were found for the file (TotalSignatureCount = 0), then only the hash value is shown. |
| SignatureType | The [type of signature](event-tag-explanations.md#signaturetype). |
| ValidatedSigningLevel | The Windows signing authorization level the signature met. See [Requested and validated signing level](event-tag-explanations.md#requested-and-validated-signing-level). |
| VerificationError | The reason this particular signature failed to pass the App Control policy. See [VerificationError](event-tag-explanations.md#verificationerror). |
| PublisherName | The common name (CN) value from the leaf certificate. |
| IssuerName | The CN value from the highest available certificate in the certificate chain. This level is typically one certificate below the root. |
| PublisherTBSHash | The TBS hash of the leaf certificate. |
| IssuerTBSHash | The TBS hash of the highest available certificate in the certificate chain. This level is typically one certificate below the root. |

#### Step-by-step walkthrough of the example 3077 and 3089 events

Now let's walk through how to use the event data in the example 3077 and 3089 events to understand why the App Control policy blocked this file.

##### Understand what file is being blocked and the block context

Referring to the 3077 event, locate the information that identifies the policy, the file being blocked, and the parent process that tried to run it. Consider this context information to determine whether the block is expected and wanted.

In the example, the file being blocked is PowerShell.exe, which is part of Windows and would normally be expected to run. However, in this case, the policy was based off of the Windows in S mode policy template, which doesn't allow script hosts to run as a way to limit the attack surface. For S mode, this block event is a success. But let's assume the policy author was unaware of that constraint when they chose the template, and treat this block as unexpected.

##### Determine why App Control rejected the file

Again referring to the 3077 event, we see the Requested Signing Level of 2 means the code must pass the App Control policy. But the Validated Signing Level of 1 means the code was treated as though unsigned. "Unsigned" could mean the file was truly unsigned, signed but with an invalid certificate, or signed but without any certificates allowed by the App Control policy.

Now, let's inspect the correlated 3089 event(s) for the blocked file. In the example, we're looking at only the first signature (Signature index 0) found on a file that had multiple signatures. For this signature, the ValidatedSigningLevel is 12, meaning it has a Microsoft Windows product signature. The VerificationError of 21 means that the signature didn't pass the App Control policy.

It's important to review the information for each correlated 3089 event as each signature may have a different ValidatedSigningLevel and VerificationError.

> [!IMPORTANT]
> Notice how the Validated Signing Level on the 3077 event is interpreted very differently from the ValidatedSigningLevel on the 3089 event.
>
> In the case of the 3077 event, Validated Signing Level tells us how the binary was actually treated by Windows.
>
> In the case of the 3089 event, on the other hand, ValidatedSigningLevel tells us the potential **maximum** level the signature could receive. We must use the VerificationError to understand why the signature was rejected.

## 3 - Resolve common problems

Having analyzed the App Control diagnostic data, you can take steps to resolve the issue or do more debugging steps. Following are some common problems and steps you can try to resolve or further isolate the root issue:

### Issue: A file was blocked that you want to allow

- Use data from the core App Control event logs to add rules to allow the blocked file.
- Redeploy the file or app using a managed installer if your policy trusts managed installers.

### Issue: A policy is active that is unexpected

This condition may exist if:

- A policy was removed but the system hasn't been rebooted.
- A policy was partially removed, but a copy of the policy still exists in either the System or EFI partition.
- A policy with PolicyId {A244370E-44C9-4C06-B551-F6016E563076} (single-policy format) was copied to the multiple-policy format policy location before activation, resulting in a duplicate policy binary on disk. Check for both SiPolicy.p7b and \{A244370E-44C9-4C06-B551-F6016E563076\}.cip files in the System and EFI partitions.
- A policy was incorrectly deployed to the device.
- An attacker with administrator access has applied a policy to cause denial of service for some critical processes.

To resolve such an issue, follow the instructions to [Remove App Control policies](../deployment/disable-appcontrol-policies.md) for the identified policy.

### Issue: An unhandled app failure is occurring and no App Control events are observed

Some apps alter their behavior when a user mode App Control policy is active, which can result in unexpected failures. It can also be a side-effect of script enforcement for apps that don't properly handle the enforcement behaviors implemented by the script hosts.

Try to isolate the root cause by doing the following actions:

- Check the other event logs listed in section 1 of this article for events corresponding with the unexpected app failures.
- Temporarily replace the App Control policy with another policy that [disables script enforcement](../design/script-enforcement.md) and retest.
- Temporarily replace the App Control policy with another policy that [allows all COM objects](../design/allow-com-object-registration-in-appcontrol-policy.md) and retest.
- Temporarily replace the App Control policy with another policy that relaxes other [policy rules](../design/select-types-of-rules-to-create.md#app-control-for-business-policy-rules) and retest.

### Issue: An app deployed by a managed installer isn't working

To debug issues using managed installer, try these steps:

- Check that the App Control policy that is blocking the app includes the option to enable managed installer.
- Check that the effective AppLocker policy $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLocker.xml is correct as described in [Automatically allow apps deployed by a managed installer](../design/configure-authorized-apps-deployed-with-a-managed-installer.md#create-and-deploy-an-applocker-policy-that-defines-your-managed-installer-rules-and-enables-services-enforcement-for-executables-and-dlls).
- Check that the AppLocker services are running. This information is found in $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerServices.txt created in section 1 of this article.
- Check that an AppLocker file exists called MANAGEDINSTALLER.APPLOCKER exists in the CiDiag folder created earlier. If not, repeat the steps to deploy and enable the managed installer AppLocker configuration.
- Restart the managed installer process and check that an 8002 event is observed in the **AppLocker - EXE and DLL** event log for the managed installer process with PolicyName = MANAGEDINSTALLER. If instead you see an event with 8003 or 8004 with PolicyName = MANAGEDINSTALLER, then check the ManagedInstaller rules in the AppLocker policy XML and ensure a rule matches the managed installer process.
- [Use fsutil.exe](configure-appcontrol-managed-installer.md#using-fsutil-to-query-extended-attributes-for-managed-installer-mi) to verify files written by the managed installer process have the managed installer origin extended attribute. If not, redeploy the files with the managed installer and check again.
- Test installation of a different app using the managed installer.
- Add another managed installer to your AppLocker policy and test installation using the other managed installer.
- Check if the app is encountering a [known limitation with managed installer](../design/configure-authorized-apps-deployed-with-a-managed-installer.md#known-limitations-with-managed-installer). If so, you must authorize the app using other means.

### Issue: An app you expected the Intelligent Security Graph (ISG) to allow isn't working

To debug issues using ISG, try these steps:

- Check that the App Control policy that is blocking the app includes the option to enable the intelligent security graph.
- Check that the AppLocker services are running. This information is found in $env:USERPROFILE\AppData\Local\Temp\DiagOutputDir\CiDiag\AppLockerServices.txt created in section 1 of this article.
- [Use fsutil.exe](configure-appcontrol-managed-installer.md#using-fsutil-to-query-extended-attributes-for-intelligent-security-graph-isg) to verify files have the ISG origin extended attribute. If not, redeploy the files with the managed installer and check again.
- Check if the app is encountering a [known limitation with ISG](../design/use-appcontrol-with-intelligent-security-graph.md#known-limitations-with-using-the-isg).

## 4 - Report issues to Microsoft, if appropriate

If after following the guidance covered by this article you believe you've identified a product issue, report the issue to Microsoft.

- Customers with Microsoft Premier Support should log a service request through normal channels.
- All other customers can report issues directly to the App Control product team via the Windows [Feedback Hub](feedback-hub:?contextid=790&tabid=2&newFeedback=true). Select the category **Security & Privacy - Application Control** to ensure the issue is properly routed to the App Control product team.

When reporting issues, be sure to provide the following information:

- All [App Control diagnostic data](#1---gather-app-control-diagnostic-data) described earlier.
- If possible, the blocked file(s).
- Clear instructions to reproduce the problem.
