---
title: Log files and resolving upgrade errors
description: Learn how to interpret and analyze the log files that are generated during the Windows upgrade process.
ms.service: windows-client
author: frankroj
manager: aaroncz
ms.author: frankroj
ms.localizationpriority: medium
ms.topic: troubleshooting
ms.collection:
  - highpri
  - tier2
ms.subservice: itpro-deploy
ms.date: 01/18/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Windows upgrade log files

> [!NOTE]
>
> This article is a 400-level article (advanced).
>
> See [Resolve Windows upgrade errors](resolve-windows-upgrade-errors.md) for a full list of articles in this section.

Several log files are created during each phase of the upgrade process. These log files are essential for troubleshooting upgrade problems. By default, the folders that contain these log files are hidden on the upgrade target computer. To view the log files, configure Windows Explorer to view hidden items, or use a tool to automatically gather these logs. The most useful log is **setupact.log**. The log files are located in a different folder depending on the Windows Setup phase. Recall that the phase can be determined from the extend code.

> [!NOTE]
>
> Also see the [Windows Error Reporting](windows-error-reporting.md) article in this section for help with locating error codes and log files.

The following table describes some log files and how to use them for troubleshooting purposes:

|Log file |Phase: Location |Description |When to use|
|---|---|---|---|
|**setupact.log**|Down-Level:<br>$Windows.~BT\Sources\Panther|Contains information about setup actions during the downlevel phase. |All down-level failures and starting point for rollback investigations.<br> Setup.act is the most important log for diagnosing setup issues.|
|**setupact.log**|OOBE:<br>$Windows.~BT\Sources\Panther\UnattendGC|Contains information about actions during the OOBE phase.|Investigating rollbacks that failed during OOBE phase and operations - 0x4001C, 0x4001D, 0x4001E, 0x4001F.|
|**setupact.log**|Rollback:<br>$Windows.~BT\Sources\Rollback|Contains information about actions during rollback.|Investigating generic rollbacks - 0xC1900101.|
|**setupact.log**|Pre-initialization (prior to downlevel):<br>Windows|Contains information about initializing setup.|If setup fails to launch.|
|**setupact.log**|Post-upgrade (after OOBE):<br>Windows\Panther|Contains information about setup actions during the installation.|Investigate post-upgrade related issues.|
|**setuperr.log**|Same as setupact.log|Contains information about setup errors during the installation.|Review all errors encountered during the installation phase.|
|**miglog.xml**|Post-upgrade (after OOBE):<br>Windows\Panther|Contains information about what was migrated during the installation.|Identify post upgrade data migration issues.|
|**BlueBox.log**|Down-Level:<br>Windows\Logs\Mosetup|Contains information communication between `setup.exe` and Windows Update.|Use during WSUS and Windows Update down-level failures or for 0xC1900107.|
|Supplemental rollback logs:<br>**Setupmem.dmp**<br>**setupapi.dev.log**<br>Event logs (*.evtx)|$Windows.~BT\Sources\Rollback|Additional logs collected during rollback.|Setupmem.dmp: If OS bug checks during upgrade, setup attempts to extract a mini-dump.<br>Setupapi: Device install issues - 0x30018<br>Event logs: Generic rollbacks (0xC1900101) or unexpected reboots.|

## Log entry structure

A `setupact.log` or `setuperr.log` entry includes the following elements:

1. **The date and time** - 2023-09-08 09:20:05

1. **The log level** - Info, Warning, Error, Fatal Error

1. **The logging component** - CONX, MOUPG, PANTHR, SP, IBSLIB, MIG, DISM, CSI, CBS

  The logging components SP (setup platform), MIG (migration engine), and CONX (compatibility information) are useful for troubleshooting Windows Setup errors.

1. **The message** - Operation completed successfully.

See the following example:

| Date/Time | Log level | Component | Message |
|------|------------|------------|------------|
|2023-09-08 09:23:50,|  Warning |         MIG  |   Couldn't replace object C:\Users\name\Cookies. Target Object can't be removed.|

## Analyze log files

The following instructions are meant for IT professionals. Also see the [Upgrade error codes](/troubleshoot/windows-client/deployment/windows-10-upgrade-error-codes?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json) section in this guide to become familiar with [result codes](/troubleshoot/windows-client/deployment/windows-10-upgrade-error-codes?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#result-codes) and [extend codes](/troubleshoot/windows-client/deployment/windows-10-upgrade-error-codes?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#extend-codes).

To analyze Windows Setup log files:

1. Determine the Windows Setup error code. Windows Setup should return an error code if it isn't successful with the upgrade process.

1. Based on the [extend code](/troubleshoot/windows-client/deployment/windows-10-upgrade-error-codes?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#extend-codes) portion of the error code, determine the type and location of a log file to investigate.

1. Open the log file in a text editor, such as notepad.

1. Using the [result code](/troubleshoot/windows-client/deployment/windows-10-upgrade-error-codes?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#result-codes) portion of the Windows Setup error code, search for the result code in the file and find the last occurrence of the code. Alternatively search for the "abort" and abandoning" text strings described in step 7 below.

1. To find the last occurrence of the result code:

    1. Scroll to the bottom of the file and select after the last character.
    1. Select **Edit**.
    1. Select **Find**.
    1. Type the result code.
    1. Under **Direction** select **Up**.
    1. Select **Find Next**.

1. When the last occurrence of the result code is located, scroll up a few lines from this location in the file and review the processes that failed prior to generating the result code.

1. Search for the following important text strings:

   - `Shell application requested abort`
   - `Abandoning apply due to error for object`

1. Decode Win32 errors that appear in this section.

1. Write down the timestamp for the observed errors in this section.

1. Search other log files for additional information matching these timestamps or errors.

For example, assume that the error code for an error is **0x8007042B - 0x2000D**. Searching for **8007042B** reveals the following content from the `setuperr.log` file:

> [!NOTE]
>
> Some lines in the following text are shortened to enhance readability. For example
>
> - The date and time at the start of each line (ex: 2023-10-05 15:27:08) is shortened to minutes and seconds
> - The certificate file name, which is a long text string, is shortened to just "CN."

**setuperr.log** content:

```console
27:08, Error           SP     Error READ, 0x00000570 while gathering/applying object: File, C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18 [CN]. Will return 0[gle=0x00000570]
27:08, Error           MIG    Error 1392 while gathering object C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18 [CN]. Shell application requested abort![gle=0x00000570]
27:08, Error                  Gather failed. Last error: 0x00000000
27:08, Error           SP     SPDoFrameworkGather: Gather operation failed. Error: 0x0000002C
27:09, Error           SP     CMigrateFramework: Gather framework failed. Status: 44
27:09, Error           SP     Operation failed: Migrate framework (Full). Error: 0x8007042B[gle=0x000000b7]
27:09, Error           SP     Operation execution failed: 13. hr = 0x8007042B[gle=0x000000b7]
27:09, Error           SP     CSetupPlatformPrivate::Execute: Execution of operations queue failed, abandoning. Error: 0x8007042B[gle=0x000000b7]
```

The first line indicates there was an error **0x00000570** with the file **C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18 [CN]**:

```console
27:08, Error           SP     Error READ, 0x00000570 while gathering/applying object: File, C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18 [CN]. Will return 0[gle=0x00000570]
```

The error **0x00000570** is a [Win32 error code](/openspecs/windows_protocols/ms-erref/18d8fbe8-a967-4f1c-ae50-99ca8e491d2d) corresponding to: **ERROR_FILE_CORRUPT: The file or directory is corrupted and unreadable**.

Therefore, Windows Setup failed because it wasn't able to migrate the corrupt file **C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18\[CN]**.  This file is a local system certificate and can be safely deleted. After the `setupact.log` file is searched for more details, the phrase **Shell application requested abort** is found in a location with the same timestamp as the lines in `setuperr.log`. This analysis confirms the suspicion that this file is the cause of the upgrade failure:

**setupact.log** content:

```console
27:00, Info                   Gather started at 10/5/2023 23:27:00
27:00, Info [0x080489] MIG    Setting system object filter context (System)
27:00, Info [0x0803e5] MIG    Not unmapping HKCU\Software\Classes; it is not mapped
27:00, Info [0x0803e5] MIG    Not unmapping HKCU; it is not mapped
27:00, Info            SP     ExecuteProgress: Elapsed events:1 of 4, Percent: 12
27:00, Info [0x0802c6] MIG    Processing GATHER for migration unit: &lt;System&gt;\UpgradeFramework (CMXEAgent)
27:08, Error           SP     Error READ, 0x00000570 while gathering/applying object: File, C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18 [CN]. Will return 0[gle=0x00000570]
27:08, Error           MIG    Error 1392 while gathering object C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18 [CN]. Shell application requested abort![gle=0x00000570]
27:08, Info            SP     ExecuteProgress: Elapsed events:2 of 4, Percent: 25
27:08, Info            SP     ExecuteProgress: Elapsed events:3 of 4, Percent: 37
27:08, Info [0x080489] MIG    Setting system object filter context (System)
27:08, Info [0x0803e5] MIG    Not unmapping HKCU\Software\Classes; it is not mapped
27:08, Info [0x0803e5] MIG    Not unmapping HKCU; it is not mapped
27:08, Info            MIG    COutOfProcPluginFactory::FreeSurrogateHost: Shutdown in progress.
27:08, Info            MIG    COutOfProcPluginFactory::LaunchSurrogateHost::CommandLine: -shortened-
27:08, Info            MIG    COutOfProcPluginFactory::LaunchSurrogateHost: Successfully launched host and got control object.
27:08, Error                  Gather failed. Last error: 0x00000000
27:08, Info                   Gather ended at 10/5/2023 23:27:08 with result 44
27:08, Info                   Leaving MigGather method
27:08, Error           SP     SPDoFrameworkGather: Gather operation failed. Error: 0x0000002C
```

**setupapi.dev.log** content:

```console
>>>  [Device Install (UpdateDriverForPlugAndPlayDevices) - PCI\VEN_8086&DEV_8C4F]
>>>  Section start 2023/09/26 20:13:01.623
      cmd: rundll32.exe "C:\WINDOWS\Installer\MSI6E4C.tmp",zzzzInvokeManagedCustomActionOutOfProc SfxCA_95972906 484 ChipsetWiX.CustomAction!Intel.Deployment.ChipsetWiX.CustomActions.InstallDrivers
     ndv: INF path: C:\WINDOWS\TEMP\{15B1CD41-69F5-48EA-9F45-0560A40FE2D8}\Drivers\lynxpoint\LynxPointSystem.inf
     ndv: Install flags: 0x00000000
     ndv: {Update Device Driver - PCI\VEN_8086&DEV_8C4F&SUBSYS_05BE1028&REV_04\3&11583659&0&F8}
     ndv:      Search options: 0x00000081
     ndv:      Searching single INF 'C:\WINDOWS\TEMP\{15B1CD41-69F5-48EA-9F45-0560A40FE2D8}\Drivers\lynxpoint\LynxPointSystem.inf'
     dvi:      {Build Driver List} 20:13:01.643
     dvi:           Searching for hardware ID(s):
     dvi:                pci\ven_8086&dev_8c4f&subsys_05be1028&rev_04
     dvi:                pci\ven_8086&dev_8c4f&subsys_05be1028
     dvi:                pci\ven_8086&dev_8c4f&cc_060100
     dvi:                pci\ven_8086&dev_8c4f&cc_0601
     dvi:           Searching for compatible ID(s):
     dvi:                pci\ven_8086&dev_8c4f&rev_04
     dvi:                pci\ven_8086&dev_8c4f
     dvi:                pci\ven_8086&cc_060100
     dvi:                pci\ven_8086&cc_0601
     dvi:                pci\ven_8086
     dvi:                pci\cc_060100
     dvi:                pci\cc_0601
     sig:           {_VERIFY_FILE_SIGNATURE} 20:13:01.667
     sig:                Key      = lynxpointsystem.inf
     sig:                FilePath = c:\windows\temp\{15b1cd41-69f5-48ea-9f45-0560a40fe2d8}\drivers\lynxpoint\lynxpointsystem.inf
     sig:                Catalog  = c:\windows\temp\{15b1cd41-69f5-48ea-9f45-0560a40fe2d8}\drivers\lynxpoint\LynxPoint.cat
     sig:                Success: File is signed in catalog.
     sig:           {_VERIFY_FILE_SIGNATURE exit(0x00000000)} 20:13:01.683
     dvi:           Created Driver Node:
     dvi:                HardwareID   - PCI\VEN_8086&DEV_8C4F
     dvi:                InfName      - c:\windows\temp\{15b1cd41-69f5-48ea-9f45-0560a40fe2d8}\drivers\lynxpoint\lynxpointsystem.inf
     dvi:                DevDesc      - Intel(R) QM87 LPC Controller - 8C4F
     dvi:                Section      - Needs_ISAPNP_DRV
     dvi:                Rank         - 0x00ff2001
     dvi:                Signer Score - WHQL
     dvi:                DrvDate      - 04/04/2016
     dvi:                Version      - 10.1.1.18
     dvi:      {Build Driver List - exit(0x00000000)} 20:13:01.699
     ndv:      Searching currently installed INF
     dvi:      {Build Driver List} 20:13:01.699
     dvi:           Searching for hardware ID(s):
     dvi:                pci\ven_8086&dev_8c4f&subsys_05be1028&rev_04
     dvi:                pci\ven_8086&dev_8c4f&subsys_05be1028
     dvi:                pci\ven_8086&dev_8c4f&cc_060100
     dvi:                pci\ven_8086&dev_8c4f&cc_0601
     dvi:           Searching for compatible ID(s):
     dvi:                pci\ven_8086&dev_8c4f&rev_04
     dvi:                pci\ven_8086&dev_8c4f
     dvi:                pci\ven_8086&cc_060100
     dvi:                pci\ven_8086&cc_0601
     dvi:                pci\ven_8086
     dvi:                pci\cc_060100
     dvi:                pci\cc_0601
     dvi:           Created Driver Node:
     dvi:                HardwareID   - PCI\VEN_8086&DEV_8C4F
     dvi:                InfName      - C:\WINDOWS\System32\DriverStore\FileRepository\lynxpointsystem.inf_amd64_cd1e518d883ecdfe\lynxpointsystem.inf
     dvi:                DevDesc      - Intel(R) QM87 LPC Controller - 8C4F
     dvi:                Section      - Needs_ISAPNP_DRV
     dvi:                Rank         - 0x00ff2001
     dvi:                Signer Score - WHQL
     dvi:                DrvDate      - 10/03/2016
     dvi:                Version      - 10.1.1.38
     dvi:      {Build Driver List - exit(0x00000000)} 20:13:01.731
     dvi:      {DIF_SELECTBESTCOMPATDRV} 20:13:01.731
     dvi:           Default installer: Enter 20:13:01.735
     dvi:                {Select Best Driver}
     dvi:                     Class GUID of device changed to: {4d36e97d-e325-11ce-bfc1-08002be10318}.
     dvi:                     Selected Driver:
     dvi:                          Description - Intel(R) QM87 LPC Controller - 8C4F
     dvi:                          InfFile     - c:\windows\system32\driverstore\filerepository\lynxpointsystem.inf_amd64_cd1e518d883ecdfe\lynxpointsystem.inf
     dvi:                          Section     - Needs_ISAPNP_DRV
     dvi:                {Select Best Driver - exit(0x00000000)}
     dvi:           Default installer: Exit
     dvi:      {DIF_SELECTBESTCOMPATDRV - exit(0x00000000)} 20:13:01.743
     ndv:      Currently Installed Driver:
     ndv:           Inf Name       - oem1.inf
     ndv:           Driver Date    - 10/03/2016
     ndv:           Driver Version - 10.1.1.38
     ndv: {Update Device Driver - exit(00000103)}
!    ndv: No better matching drivers found for device 'PCI\VEN_8086&DEV_8C4F&SUBSYS_05BE1028&REV_04\3&11583659&0&F8'.
!    ndv: No devices were updated.
<<<  Section end 2019/09/26 20:13:01.759
<<<  [Exit status: FAILURE(0xC1900101)]
```

This analysis indicates that the Windows upgrade error can be resolved by deleting the `C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18\[CN]` file.

> [!NOTE]
>
> In this example, the full file name is `C:\ProgramData\Microsoft\Crypto\RSA\S-1-5-18\be8228fb2d3cb6c6b0ccd9ad51b320b4_a43d512c-69f2-42de-aef9-7a88fabdaa3f`.

## Related articles

- [Fix Windows Update errors by using the DISM or System Update Readiness tool](/troubleshoot/windows-server/deployment/fix-windows-update-errors).
