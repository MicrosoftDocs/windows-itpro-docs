---
title: Troubleshoot problems with attack surface reduction rules
description: Check pre-requisites, use audit mode, add exclusions, or collect diagnostic data to help troubleshoot issues
keywords: troubleshoot, error, fix, windows defender eg, asr, rules, hips, troubleshoot, audit, exclusion, false positive, broken, blocking
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: dansimp
ms.author: dansimp
ms.date: 03/27/2019
ms.reviewer: 
manager: dansimp
---

# Troubleshoot attack surface reduction rules

**Applies to:**

* [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

When you use [attack surface reduction rules](attack-surface-reduction.md) you may encounter issues, such as:

* A rule blocks a file, process, or performs some other action that it should not (false positive)
* A rule does not work as described, or does not block a file or process that it should (false negative)

There are four steps to troubleshooting these problems:

1. Confirm prerequisites
2. Use audit mode to test the rule
3. Add exclusions for the specified rule (for false positives)
4. Submit support logs

## Confirm prerequisites

Attack surface reduction rules will only work on devices with the following conditions:

> [!div class="checklist"]
> * Endpoints are running Windows 10 Enterprise, version 1709 (also known as the Fall Creators Update).
> * Endpoints are using Windows Defender Antivirus as the sole antivirus protection app. [Using any other antivirus app will cause Windows Defender AV to disable itself](../windows-defender-antivirus/windows-defender-antivirus-compatibility.md).
> * [Real-time protection](../windows-defender-antivirus/configure-real-time-protection-windows-defender-antivirus.md) is enabled.
> * Audit mode is not enabled. Use Group Policy to set the rule to **Disabled** (value: **0**) as described in [Enable attack surface reduction rules](enable-attack-surface-reduction.md).

If these pre-requisites have all been met, proceed to the next step to test the rule in audit mode.

## Use audit mode to test the rule

You can visit the Windows Defender Testground website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm attack surface reduction rules are generally working for pre-configured scenarios and processes on a device, or you can use audit mode, which enables rules for reporting only.

Follow these instructions in [Use the demo tool to see how attack surface reduction rules work](evaluate-attack-surface-reduction.md) to test the specific rule you are encountering problems with.

1. Enable audit mode for the specific rule you want to test. Use Group Policy to set the rule to **Audit mode** (value: **2**) as described in [Enable attack surface reduction rules](enable-attack-surface-reduction.md). Audit mode allows the rule to report the file or process, but will still allow it to run.
2. Perform the activity that is causing an issue (for example, open or execute the file or process that should be blocked but is being allowed).
3. [Review the attack surface reductio rule event logs](attack-surface-reduction.md) to see if the rule would have blocked the file or process if the rule had been set to **Enabled**.

>
>If a rule is not blocking a file or process that you are expecting it should block, first check if audit mode is enabled.
>
>Audit mode may have been enabled for testing another feature, or by an automated PowerShell script, and may not have been disabled after the tests were completed.

If you've tested the rule with the demo tool and with audit mode, and attack surface reduction rules are working on pre-configured scenarios, but the rule is not working as expected, proceed to either of the following sections based on your situation:

1. If the attack surface reduction rule is blocking something that it should not block (also known as a false positive), you can [first add an attack surface reduction rule exclusion](#add-exclusions-for-a-false-positive).
2. If the attack surface reduction rule is not blocking something that it should block (also known as a false negative), you can proceed immediately to the last step, [collecting diagnostic data and submitting the issue to us](#collect-diagnostic-data-for-file-submissions).

## Add exclusions for a false positive

If the attack surface reduction rule is blocking something that it should not block (also known as a false positive), you can add exclusions to prevent attack surface reduction rules from evaluating the excluded files or folders.

To add an exclusion, see [Customize Attack surface reduction](customize-attack-surface-reduction.md).

>[!IMPORTANT]
>You can specify individual files and folders to be excluded, but you cannot specify individual rules.
>This means any files or folders that are excluded will be excluded from all ASR rules.

## Report a false positive or false negative

Use the [Windows Defender Security Intelligence web-based submission form](https://www.microsoft.com/en-us/wdsi/filesubmission) to report a false negative or false positive for network protection. With an E5 subscription, you can also [provide a link to any associated alert](../microsoft-defender-atp/alerts-queue.md).

## Collect diagnostic data for file submissions

When you report a problem with attack surface reduction rules, you are asked to collect and submit diagnostic data that can be used by Microsoft support and engineering teams to help troubleshoot issues.

1. Open an elevated command prompt and change to the Windows Defender directory:

   ```console
   cd c:\program files\windows defender
   ```

2. Run this command to generate the diagnostic logs:

   ```console
   mpcmdrun -getfiles
   ```

3. By default, they are saved to C:\ProgramData\Microsoft\Windows Defender\Support\MpSupportFiles.cab. Attach the file to the submission form.

## Related topics

* [Attack surface reduction rules](attack-surface-reduction.md)
* [Enable attack surface reduction rules](enable-attack-surface-reduction.md)
* [Evaluate attack surface reduction rules](evaluate-attack-surface-reduction.md)
