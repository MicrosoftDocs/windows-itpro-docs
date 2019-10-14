---
title: Guidelines for troubleshooting BitLocker
description: Describes approaches for investigating BitLocker issues, including how to gather diagnostic information
ms.reviewer: kaushika
ms.prod: w10
ms.sitesec: library
ms.localizationpriority: medium
author: Teresa-Motiv
ms.author: v-tea
manager: kaushika
audience: ITPro
ms.collection: Windows Security Technologies\BitLocker
ms.topic: troubleshooting
ms.date: 10/14/2019
---

# Guidelines for troubleshooting BitLocker

This section addresses common issues and provides troubleshooting guidelines for BitLocker. This article provides pointers for starting the troubleshooting process, including what data to collect and what settings to check to narrow down where the issue may have occurred.

## Review the event logs

Open Event Viewer and review the following logs under **Applications and Services logs\\Microsoft\\Windows**:

- **BitLocker-API**. Review the Management log and the Operational log, and any other logs that are generated in this folder.
- **BitLocker-DrivePreparationTool**. Review the Admin log and the Operational log, and any other logs that are generated in this folder.

Additionally, review the **Windows logs\\System** log for events that were produced by the event sources **TCM** and **TCM-WMI**.

To filter and display or export logs, you can use the [wevtutil.exe](https://docs.microsoft.com/windows-server/administration/windows-commands/wevtutil) command-line tool or the [Get-WinEvent](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent?view=powershell-6) cmdlet.

To use the wevtutil tool, open an elevated Command Prompt window and run the following command:

```cmd
wevtutil qe "logname" /f:text > logname.txt
```

To use the Get-WinEvent cmdlet, open an elevated Windows Powershell window and run the following command:

```ps
Get-WinEvent -logname "Microsoft-Windows-BitLocker/BitLocker Management"  | Export-Csv -Path Bitlocker-Management.csv
```
```ps
Get-WinEvent -FilterHashtable @{LogName='System'} | Where-Object -Property Message -Match 'Bitlocker' | fl
Get-WinEvent -FilterHashtable @{LogName='System'} | Where-Object -Property Message -Match 'Bitlocker' | Export-Csv -Path System-Bitlocker.csv 
```

> [!NOTE]
> If you intend to contact Microsoft Support, we recommend that you export the logs listed in this section.

## Gather status information from the BitLocker technologies

Open an elevated Windows PowerShell window, and run each of the following commands:

|Command |Notes |
| - | - |
|[**get-tpm \> C:\\TPM.txt**](https://docs.microsoft.com/powershell/module/trustedplatformmodule/get-tpm?view=win10-ps) |Exports information about the local computer's Trusted Platform Module (TPM). This cmdlet shows different values depending on whether the TPM chip is version 1.2 or 2.0. This cmdlet is not supported in Windows 7. |
|[**manage-bde –status \>&nbsp;C:\\BDEStatus.txt**](https://docs.microsoft.com/windows-server/administration/windows-commands/manage-bde-status) |Exports information about the general encryption status of all drives on the computer. |
|[**manage-bde c: <br />-protectors -get \>&nbsp;C:\\Protectors**](https://docs.microsoft.com/windows-server/administration/windows-commands/manage-bde-protectors) |Exports information about the protection methods that are used for the BitLocker encryption key.  |
|[**reagentc&nbsp;/info&nbsp;\>&nbsp;C:\\reagent.txt**](https://docs.microsoft.com/windows-hardware/manufacture/desktop/reagentc-command-line-options) |Exports information about the current status of the Windows Recovery Environment (Windows RE) and any available recovery image on an online or offline image |

## Review the configuration information

1. Open an elevated Command Prompt window, and run the following commands:

   |Command |Notes |
   | - | - |
   |[**gpresult /h \<Filename>**](https://docs.microsoft.com/windows-server/administration/windows-commands/gpresult) |Exports the resultant set of Group Policy, and saves the information as an HTML file. |
   |[**msinfo /report \<Path> /computer&nbsp;\<ComputerName>**](https://docs.microsoft.com/windows-server/administration/windows-commands/msinfo32) |Exports comprehensive information about the hardware, system components, and software environment on the local computer. The **/report** option saves the information as a TXT file. |

1. Open Registry Editor, and export the entries in the following subkeys:

   - **HKLM\\SOFTWARE\\Policies\\Microsoft\\FVE**
   - **HKLM\\SYSTEM\\CurrentControlSet\\Services\\TPM\\**

## Check the BitLocker prerequisites

Common settings that can cause problems for BitLocker&mdash;or may help you narrow down the cause of the problem&mdash;include the following:

- The TPM must be unlocked. You can check the output of the **get-tpm** command for the status of the TPM.
- Windows RE must be enabled. You can check the output of the **reagentc** command for the status of Windows RE.
- The system reserved partition must use the correct format.
  - On Unified Extensible Firmware Interface (UEFI) computers, the system reserved partition must be formatted as FAT32.
  - On legacy computers, the system reserved partition must be formatted as NTFS.
- If the device that you are troubleshooting is a Slate, use <https://gpsearch.azurewebsites.net/#8153> to verify the status of the **Enable use of BitLocker authentication requiring preboot keyboard input on slates**.

For more information about the BitLocker prerequisites, see [BitLocker basic deployment: Using BitLocker to encrypt volumes](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-basic-deployment#using-bitlocker-to-encrypt-volumes)

## Next steps

If the information that you have examined so far indicates a specific problem (for example, if Windows RE is not enabled), the problem that you have may have a straightforward fix.

Resolving issues that do not have obvious causes depends on exactly which components are involved and what behavior you see. The information you have gathered can help you narrow down the areas to investigate.

- If you are working with a device that is managed by Microsoft Intune, see [Enforcing BitLocker policies by using Intune: known issues](ts-bitlocker-intune-issues.md).
- If BitLocker does not encrypt a drive and you note errors or events that are related to the TPM, see [BitLocker and TPM: known issues](ts-bitlocker-tpm-issues.md).
- If BitLocker does not start or cannot encrypt a drive, see [BitLocker cannot encrypt a drive: known issues](ts-bitlocker-cannot-encrypt-issues.md).
- If BitLocker Network Unlock does not behave as expected, see [BitLocker Network Unlock: known issues](ts-bitlocker-network-unlock-issues.md).
- If BitLocker does not behave as expected when you recover an encrypted drive, or if you did not expect BitLocker to recover the drive, see [BitLocker recovery: known issues](ts-bitlocker-recovery-issues.md).
- If BitLocker does not behave as expected or the encrypted drive does not behave as expected, see [BitLocker configuration: known issues](ts-bitlocker-config-issues.md).

If you decide to contact Microsoft Support to resolve your issue, remember to keep the information that you have gathered handy.
