---
title: Understanding Application Control event IDs (Windows)
description: Learn what different Windows Defender Application Control event IDs signify.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
ms.author: dansimp
manager: dansimp
ms.date: 02/01/2022
ms.technology: windows-sec
---

# Understanding Application Control events

A Windows Defender Application Control (WDAC) policy logs events locally in Windows Event Viewer in either enforced or audit mode. These events are generated under two locations:

- Events about WDAC policy activation and the control of executables, dlls, and drivers appear in **Applications and Services logs** > **Microsoft** > **Windows** > **CodeIntegrity** > **Operational**

- Events about the control of MSI installers, scripts, and COM objects appear in **Applications and Services logs** > **Microsoft** > **Windows** > **AppLocker** > **MSI and Script**

> [!NOTE]
> These event IDs are not included on Windows Server Core edition.

## WDAC events found in the Microsoft Windows CodeIntegrity Operational log

| Event ID | Explanation |
|--------|-----------|
| 3004 | This event isn't common and may occur with or without a WDAC policy present. It typically indicates a kernel driver tried to load with an invalid signature. For example, the file may not be WHQL-signed on a system where WHQL is required. |
| 3033 | This event isn't common. It often means the file's signature is revoked or expired. Try using option *20 Enabled:Revoked Expired As Unsigned* in your policy along with a non-signature rule (for example, hash) to address issues with revoked or expired certs. |
| 3034 | This event isn't common. It is the audit mode equivalent of event 3033 described above. |
| 3076 | This event is the main WDAC block event for audit mode policies. It indicates that the file would have been blocked if the WDAC policy was enforced. |
| 3077 | This event is the main WDAC block event for enforced policies. It indicates that the file did not pass your WDAC policy and was blocked. |
| 3089 | This event contains signature information for files that were blocked or would have been blocked by WDAC. One 3089 event is created for each signature of a file. The event shows the total number of signatures found and an index value to identify the current signature. Unsigned files produce a single 3089 event with TotalSignatureCount 0. 3089 events are correlated with 3004, 3033, 3034, 3076 and 3077 events. You can match the events using the "Correlation ActivityID" found in the "System" portion of the event. |
| 3099 | Indicates that a policy has been loaded. This event also includes information about the policy options that were specified by the policy. Refer to the  |

## WDAC events found in the Microsoft Windows AppLocker MSI and Script log

| Event ID | Explanation |
|--------|-----------|
| 8028 | This event indicates that a script host, such as PowerShell, queried WDAC about a file the script host was about to run. Since the WDAC policy was in audit mode, the script or MSI file should have run. Some script hosts may have additional information in their logs. Note: Most third-party script hosts do not integrate with WDAC. Consider the risks from unverified scripts when choosing which script hosts you allow to run. |
| 8029 | This event is the enforcement mode equivalent of event 8028 described above. Note: While this event says that a script was blocked, the actual script enforcement behavior is implemented by the script host. The script host may allow the file to run with restrictions and not block the file outright. For example, PowerShell will allow a script to run but only in [Constrained Language Mode](/powershell/module/microsoft.powershell.core/about/about_language_modes.md). |
| 8036| COM object was blocked. To learn more about COM object authorization, see [Allow COM object registration in a Windows Defender Application Control policy](allow-com-object-registration-in-windows-defender-application-control-policy.md). |
| 8038 | Signing information event correlated with either an 8028 or 8029 event. One 8038 event is generated for each signature of a script file. Contains the total number of signatures on a script file and an index as to which signature it is. Unsigned script files will generate a single 8038 event with TotalSignatureCount 0. 8038 events are correlated with 8028 and 8029 events and can be matched using the "Correlation ActivityID" found in the "System" portion of the event. |

## Diagnostic events for Intelligent Security Graph (ISG) and Managed Installer (MI)

Events 3090, 3091 and 3092 prove helpful diagnostic information when the ISG or MI option is enabled by any WDAC policy. These events can help you debug why something was allowed/denied based on managed installer or ISG. These events do not necessarily indicate a problem but should be reviewed in context with other events like 3076 or 3077 described above.

| Event ID | Explanation |
|--------|---------|
| 3090 | *Optional* This event indicates that a file was allowed to run based purely on ISG or managed installer. |
| 3091 | This event indicates that a file did not have ISG or managed installer authorization and the policy is in audit mode. |
| 3092 | This event is the enforcement mode equivalent of 3091. |

The above events are reported per active policy on the system, so you may see multiple events for the same file.

### ISG and MI diagnostic event details

The following information is found in the details for 3090, 3091, and 3092 events.

| Name | Explanation |
|------|------|
| ManagedInstallerEnabled | Indicates whether the specified policy enables managed installer trust |
| PassesManagedInstaller | Indicates whether the file originated from a MI |
| SmartlockerEnabled | Indicates whether the specified policy enables ISG trust |
| PassesSmartlocker | Indicates whether the file had positive reputation according to the ISG |
| AuditEnabled | True if the policy is in audit mode, otherwise it is in enforce mode |
| PolicyName | The name of the policy to which the event applies |

### Enabling ISG and MI diagnostic events

To enable 3090 allow events, create a TestFlags regkey with a value of 0x300 as shown in the following PowerShell command. Then restart your computer.

```powershell
reg add hklm\system\currentcontrolset\control\ci -v TestFlags -t REG_DWORD -d 0x300
```

3091 and 3092 events are inactive on some versions of Windows. The above steps will also turn on those events.

## Event ID 3099 Options

The WDAC policy rule-option values can be derived from the "Options" field in the Details section of the Code integrity 3099 event. To parse the values, first convert the hex value to binary. To derive and parse these values, follow the below workflow.

- Access Event Viewer.
- Access the Code integrity 3099 event.
- Access the details pane.
- Identify the hex code listed in the “Options” field.
- Convert the hex code to binary

:::image type="content" source="images/event-3099-options.png" alt-text="Event 3099 Policy Rule Options":::

For a simple solution for converting hex to binary, follow these steps.
- Open the Calculator app
- Click on the menu icon :::image type="content" source="images/calculator-menu-icon.png" alt-text="calculator menu icon example":::
- Click Programmer mode
- Click HEX  :::image type="content" source="images/hex-icon.png" alt-text="HEX icon example":::
- Enter your hex code
- Click Bit Toggling Keyboard :::image type="content" source="images/bit-toggling-keyboard-icon.png" alt-text="Bit Toggling Keyboard icon example":::

:::image type="content" source="images/calculator-with-hex-in-binary.png" alt-text="An example of the calculator app in programmer mode, with a hex code converted into binary":::

This view will provide the hex code in binary form, with each bit address shown separately.  The bit addresses start at 0 in the bottom right.  Each bit address correlates to a specific event policy-rule option.  If the bit address holds a value of 1, the setting is in the policy.

Next, use the bit addresses and their values from the table below to determine the state of each [policy rule-option](/select-types-of-rules-to-create.md#table-1-windows-defender-application-control-policy---rule-options). For example, if the bit address of 16 holds a value of 1, then the “Enabled:Audit Mode (Default)” is in the policy meaning the policy is in audit mode.

| Bit Address | Policy Rule Option |
|-------|------|
| 2 | `Enabled:UMCI` |
| 3 | `Enabled:Boot Menu Protection` |
| 4 | `Enabled:Intelligent Security Graph Authorization` |
| 5 | `Enabled:Invalidate EAs on Reboot` |
| 7 | `Required:WHQL` |
| 10 | `Enabled:Allow Supplemental Policies` |
| 11 | `Disabled:Runtime FilePath Rule Protection` |
| 13 | `Enabled:Revoked Expired As Unsigned` |
| 16 | `Enabled:Audit Mode (Default)` |
| 17 | `Disabled:Flight Signing` |
| 18 | `Enabled:Inherit Default Policy` |
| 19 | `Enabled:Unsigned System Integrity Policy (Default)` |
| 20 | `Enabled:Dynamic Code Security` |
| 21 | `Required:EV Signers` |
| 22 | `Enabled:Boot Audit on Failure` |
| 23 | `Enabled:Advanced Boot Options Menu` |
| 24 | `Disabled:Script Enforcement` |
| 25 | `Required:Enforce Store Applications` |
| 27 | `Enabled:Managed Installer`  |
| 28 | `Enabled:Update Policy No Reboot` |

## Appendix

A list of other relevant event IDs and their corresponding description.

| Event ID | Description |
|-------|------|
| 3001 | An unsigned driver was attempted to load on the system. |
| 3002 | Code Integrity could not verify the boot image as the page hash could not be found. |
| 3004 | Code Integrity could not verify the file as the page hash could not be found. |
| 3010 | The catalog containing the signature for the file under validation is invalid. |
| 3011 | Code Integrity finished loading the signature catalog. |
| 3012 | Code Integrity started loading the signature catalog. |
| 3023 | The driver file under validation did not meet the requirements to pass the application control policy. |
| 3024 | Windows application control was unable to refresh the boot catalog file. |
| 3026 | The catalog loaded is signed by a signing certificate that has been revoked by Microsoft and/or the certificate issuing authority. |
| 3033 | The file under validation did not meet the requirements to pass the application control policy. |
| 3034 | The file under validation would not meet the requirements to pass the application control policy if the policy was enforced. The file was allowed since the policy is in audit mode. |
| 3036 | The signed file under validation is signed by a code signing certificate that has been revoked by Microsoft or the certificate issuing authority. |
| 3064 | If the policy was enforced, a user mode DLL under validation would not meet the requirements to pass the application control policy. The DLL was allowed since the policy is in audit mode. |
| 3065 | [Ignored] If the policy was enforced, a user mode DLL under validation would not meet the requirements to pass the application control policy. |
| 3074 | Page hash failure while hypervisor-protected code integrity was enabled. |
| 3075 | This event monitors the performance of the Code Integrity policy check a file. |
| 3079 | The file under validation did not meet the requirements to pass the application control policy. |
| 3080 | If the policy was in enforced mode, the file under validation would not have met the requirements to pass the application control policy. |
| 3081 | The file under validation did not meet the requirements to pass the application control policy. |
| 3082 | If the policy was in enforced mode, the non-WHQL driver would have been denied by the policy. |
| 3084 | Code Integrity will enforce the WHQL Required policy setting on this session. |
| 3085 | Code Integrity will not enforce the WHQL Required policy setting on this session. |
| 3086 | The file under validation does not meet the signing requirements for an isolated user mode (IUM) process. |
| 3095 | This Code Integrity policy cannot be refreshed and must be rebooted instead. |
| 3097 | The Code Integrity policy cannot be refreshed. |
| 3100 | The application control policy was refreshed but was unsuccessfully activated. Retry. |
| 3101 | Code Integrity started refreshing the policy. |
| 3102 | Code Integrity finished refreshing the policy. |
| 3103 | Code Integrity is ignoring the policy refresh. |
| 3104 | The file under validation does not meet the signing requirements for a PPL (protected process light) process. |
| 3105 | Code Integrity is attempting to refresh the policy. |
| 3108 | Windows mode change event was successful. |
| 3110 | Windows mode change event was unsuccessful. |
| 3111 | The file under validation did not meet the hypervisor-protected code integrity (HVCI) policy. |
