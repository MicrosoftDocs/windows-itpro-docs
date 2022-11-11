---
title: Guidelines for troubleshooting BitLocker
description: Describes approaches for investigating BitLocker issues, including how to gather diagnostic information
ms.reviewer: kaushika
ms.technology: itpro-security
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.collection: Windows Security Technologies\BitLocker
ms.topic: troubleshooting
ms.date: 11/08/2022
ms.custom: bitlocker
---

# Guidelines for troubleshooting BitLocker

This article addresses common issues in BitLocker and provides guidelines to troubleshoot these issues. This article also provides information such as what data to collect and what settings to check. This information makes your troubleshooting process much easier.

## Review the event logs

Open Event Viewer and review the following logs under Applications and Services logs\\Microsoft\\Windows:

- **BitLocker-API**. Review the management log, the operational log, and any other logs that are generated in this folder. The default logs have the following unique names:

  - Microsoft-Windows-BitLocker-API/BitLocker Operational
  - Microsoft-Windows-BitLocker-API/BitLocker Management

- **BitLocker-DrivePreparationTool**. Review the admin log,  the operational log, and any other logs that are generated in this folder. The default logs have the following unique names:

  - Microsoft-Windows-BitLocker-DrivePreparationTool/Operational
  - Microsoft-Windows-BitLocker-DrivePreparationTool/Admin

Additionally, review the Windows logs\\System log for events that were produced by the TPM and TPM-WMI event sources.

To filter and display or export logs, you can use the [wevtutil.exe](/windows-server/administration/windows-commands/wevtutil) command-line tool or the [Get-WinEvent](/powershell/module/microsoft.powershell.diagnostics/get-winevent?view=powershell-6&preserve-view=true) cmdlet.

For example, to use `wevtutil.exe` to export the contents of the operational log from the BitLocker-API folder to a text file that is named `BitLockerAPIOpsLog.txt`, open a Command Prompt window, and run the following command:

``` syntax
wevtutil.exe qe "Microsoft-Windows-BitLocker/BitLocker Operational" /f:text > BitLockerAPIOpsLog.txt
```

To use the **Get-WinEvent** cmdlet to export the same log to a comma-separated text file, open a Windows PowerShell window and run the following command:

``` powershell
Get-WinEvent -logname "Microsoft-Windows-BitLocker/BitLocker Operational"  | Export-Csv -Path Bitlocker-Operational.csv
```

You can use Get-WinEvent in an elevated PowerShell window to display filtered information from the system or application log by using the following syntax:

- To display BitLocker-related information:

   ``` powershell
   Get-WinEvent -FilterHashtable @{LogName='System'} | Where-Object -Property Message -Match 'BitLocker' | fl
   ```

   The output of such a command resembles the following.

   ![Display of events that is produced by using Get-WinEvent and a BitLocker filter.](./images/psget-winevent-1.png)

- To export BitLocker-related information:

   ``` powershell
   Get-WinEvent -FilterHashtable @{LogName='System'} | Where-Object -Property Message -Match 'BitLocker' | Export-Csv -Path System-BitLocker.csv
   ```

- To display TPM-related information:

   ``` powershell
   Get-WinEvent -FilterHashtable @{LogName='System'} | Where-Object -Property Message -Match 'TPM' | fl
   ```

- To export TPM-related information:

   ``` powershell
   Get-WinEvent -FilterHashtable @{LogName='System'} | Where-Object -Property Message -Match 'TPM' | Export-Csv -Path System-TPM.csv
   ```

   The output of such a command resembles the following.

   ![Display of events that is produced by using Get-WinEvent and a TPM filter.](./images/psget-winevent-2.png)

> [!NOTE]
> If you intend to contact Microsoft Support, it is recommended that you export the logs listed in this section.

## Gather status information from the BitLocker technologies

Open an elevated Windows PowerShell window, and run each of the following commands.

|Command |Notes |
| --- | --- |
|[**get-tpm \> C:\\TPM.txt**](/powershell/module/trustedplatformmodule/get-tpm?view=win10-ps&preserve-view=true) |Exports information about the local computer's Trusted Platform Module (TPM). This cmdlet shows different values depending on whether the TPM chip is version 1.2 or 2.0. This cmdlet isn't supported in Windows 7. |
|[**manage-bde.exe -status \>&nbsp;C:\\BDEStatus.txt**](/windows-server/administration/windows-commands/manage-bde-status) |Exports information about the general encryption status of all drives on the computer. |
|[**manage-bde.exe c: <br />-protectors -get \>&nbsp;C:\\Protectors**](/windows-server/administration/windows-commands/manage-bde-protectors) |Exports information about the protection methods that are used for the BitLocker encryption key.  |
|[**reagentc.exe&nbsp;/info&nbsp;\>&nbsp;C:\\reagent.txt**](/windows-hardware/manufacture/desktop/reagentc-command-line-options) |Exports information about an online or offline image about the current status of the Windows Recovery Environment (WindowsRE) and any available recovery image. |
|[**get-BitLockerVolume \| fl**](/powershell/module/bitlocker/get-bitlockervolume?view=win10-ps&preserve-view=true) |Gets information about volumes that BitLocker Drive Encryption can protect. |

## Review the configuration information

1. Open an elevated Command Prompt window, and run the following commands.

   |Command |Notes |
   | --- | --- |
   |[**gpresult.exe /h \<Filename>**](/windows-server/administration/windows-commands/gpresult) |Exports the Resultant Set of Policy information, and saves the information as an HTML file. |
   |[**msinfo.exe /report \<Path> /computer&nbsp;\<ComputerName>**](/windows-server/administration/windows-commands/msinfo32) |Exports comprehensive information about the hardware, system components, and software environment on the local computer. The **/report** option saves the information as a .txt file. |

1. Open Registry Editor, and export the entries in the following subkeys:

   - **HKLM\\SOFTWARE\\Policies\\Microsoft\\FVE**
   - **HKLM\\SYSTEM\\CurrentControlSet\\Services\\TPM\\**

## Check the BitLocker prerequisites

Common settings that can cause issues for BitLocker include the following scenarios:

- The TPM must be unlocked. You can check the output of the **get-tpm** command for the status of the TPM.

- Windows RE must be enabled. You can check the output of the **reagentc** command for the status of WindowsRE.

- The system-reserved partition must use the correct format.

  - On Unified Extensible Firmware Interface (UEFI) computers, the system-reserved partition must be formatted as FAT32.
  - On legacy computers, the system-reserved partition must be formatted as NTFS.

- If the device that you're troubleshooting is a slate or tablet PC, use <https://gpsearch.azurewebsites.net/#8153> to verify the status of the **Enable use of BitLocker authentication requiring preboot keyboard input on slates** option.

For more information about the BitLocker prerequisites, see [BitLocker basic deployment: Using BitLocker to encrypt volumes](./bitlocker-basic-deployment.md#using-bitlocker-to-encrypt-volumes)

## Next steps

If the information that you've examined so far indicates a specific issue (for example, WindowsRE isn't enabled), the issue may have a straightforward fix.

Resolving issues that don't have obvious causes depends on exactly which components are involved and what behavior you see. The information that you've gathered helps you narrow down the areas to investigate.

- If you're working on a device that is managed by Microsoft Intune, see [Enforcing BitLocker policies by using Intune: known issues](ts-bitlocker-intune-issues.md).

- If BitLocker doesn't start or can't encrypt a drive and you notice errors or events that are related to the TPM, see [BitLocker can't encrypt a drive: known TPM issues](ts-bitlocker-cannot-encrypt-tpm-issues.md).

- If BitLocker doesn't start or can't encrypt a drive, see [BitLocker can't encrypt a drive: known issues](ts-bitlocker-cannot-encrypt-issues.md).

- If BitLocker Network Unlock doesn't behave as expected, see [BitLocker Network Unlock: known issues](ts-bitlocker-network-unlock-issues.md).

- If BitLocker doesn't behave as expected when you recover an encrypted drive, or if you didn't expect BitLocker to recover the drive, see [BitLocker recovery: known issues](ts-bitlocker-recovery-issues.md).

- If BitLocker or the encrypted drive doesn't behave as expected, and you notice errors or events that are related to the TPM, see [BitLocker and TPM: other known issues](ts-bitlocker-tpm-issues.md).

- If BitLocker or the encrypted drive doesn't behave as expected, see [BitLocker configuration: known issues](ts-bitlocker-config-issues.md).

It's recommended to keep the gathered information handy in case Microsoft Support is contacted for help with resolving the issue.
