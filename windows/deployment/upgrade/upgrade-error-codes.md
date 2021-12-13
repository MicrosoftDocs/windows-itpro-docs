---
title: Upgrade error codes - Windows IT Pro
manager: dougeby
ms.author: greglin
description: Understand the error codes that may come up if something goes wrong during the Windows 10 upgrade process.
keywords: deploy, error, troubleshoot, windows, 10, upgrade, code, rollback, ITPro
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
audience: itpro
author: greg-lindsay
ms.localizationpriority: medium
ms.topic: article
ms.collection: highpri
---

# Upgrade error codes

**Applies to**
-   Windows 10

>[!NOTE]
>This is a 400 level topic (advanced).
>See [Resolve Windows 10 upgrade errors](resolve-windows-10-upgrade-errors.md) for a full list of topics in this article.

If the upgrade process is not successful, Windows Setup will return two codes:

1. **A result code**: The result code corresponds to a specific Win32 or NTSTATUS error.
2. **An extend code**: The extend code contains information about both the *phase* in which an error occurred, and the *operation* that was being performed when the error occurred.

For example, a result code of **0xC1900101** with an extend code of **0x4000D** will be returned as: **0xC1900101 - 0x4000D**.

Note: If only a result code is returned, this can be because a tool is being used that was not able to capture the extend code. For example, if you are using the [Windows 10 Upgrade Assistant](https://support.microsoft.com/kb/3159635) then only a result code might be returned.

>[!TIP]
>If you are unable to locate the result and extend error codes, you can attempt to find these codes using Event Viewer.  For more information, see [Windows Error Reporting](windows-error-reporting.md).

## Result codes

A result code of **0xC1900101** is generic and indicates that a rollback occurred. In most cases, the cause is a driver compatibility issue. To troubleshoot a failed upgrade that has returned a result code of 0xC1900101, analyze the extend code to determine the Windows Setup phase, and see the [Resolution procedures](resolution-procedures.md) section later in this article.

The following set of result codes are associated with [Windows Setup](/windows-hardware/manufacture/desktop/windows-setup-command-line-options) compatibility warnings:

| Result code | Message  | Description |
| --- | --- | --- |
| 0xC1900210 | MOSETUP_E_COMPAT_SCANONLY | Setup did not find any compat issue |
| 0xC1900208 | MOSETUP_E_COMPAT_INSTALLREQ_BLOCK | Setup found an actionable compat issue, such as an incompatible app |
| 0xC1900204 | MOSETUP_E_COMPAT_MIGCHOICE_BLOCK | The migration choice selected is not available (ex: Enterprise to Home) |
| 0xC1900200 | MOSETUP_E_COMPAT_SYSREQ_BLOCK | The computer is not eligible for Windows 10 |
| 0xC190020E | MOSETUP_E_INSTALLDISKSPACE_BLOCK | The computer does not have enough free space to install |

A list of modern setup (mosetup) errors with descriptions in the range is available in the [Resolution procedures](resolution-procedures.md#modern-setup-errors) topic in this article.

Other result codes can be matched to the specific type of error encountered. To match a result code to an error:

1. Identify the error code type as either Win32 or NTSTATUS using the first hexadecimal digit:
        <br>**8** = Win32 error code (ex: 0x**8**0070070)
        <br>**C** = NTSTATUS value (ex: 0x**C**1900107)
2. Write down the last 4 digits of the error code (ex: 0x8007**0070** = 0070). These digits are the actual error code type as defined in the [HRESULT](/openspecs/windows_protocols/ms-erref/0642cb2f-2075-4469-918c-4441e69c548a) or the [NTSTATUS](/openspecs/windows_protocols/ms-erref/87fba13e-bf06-450e-83b1-9241dc81e781) structure. Other digits in the code identify things such as the device type that produced the error.
3. Based on the type of error code determined in the first step (Win32 or NTSTATUS), match the 4 digits derived from the second step to either a Win32 error code or NTSTATUS value using the following links:
    - [Win32 error code](/openspecs/windows_protocols/ms-erref/18d8fbe8-a967-4f1c-ae50-99ca8e491d2d)
    - [NTSTATUS value](/openspecs/windows_protocols/ms-erref/596a1078-e883-4972-9bbc-49e60bebca55)

Examples:
- 0x80070070 
    - Based on the "8" this is a Win32 error code 
    - The last four digits are 0070, so look up 0x00000070 in the [Win32 error code](/openspecs/windows_protocols/ms-erref/18d8fbe8-a967-4f1c-ae50-99ca8e491d2d) table
    - The error is: **ERROR_DISK_FULL**
- 0xC1900107 
    - Based on the "C" this is an NTSTATUS error code
    - The last four digits are 0107, so look up 0x00000107 in the [NTSTATUS value](/openspecs/windows_protocols/ms-erref/596a1078-e883-4972-9bbc-49e60bebca55) table 
    - The error is: **STATUS_SOME_NOT_MAPPED**

Some result codes are self-explanatory, whereas others are more generic and require further analysis. In the examples shown above, ERROR_DISK_FULL indicates that the hard drive is full and additional room is needed to complete Windows upgrade. The message STATUS_SOME_NOT_MAPPED is more ambiguous, and means that an action is pending. In this case, the action pending is often the cleanup operation from a previous installation attempt, which can be resolved with a system reboot. 

## Extend codes

>[!IMPORTANT]
>Extend codes reflect the current Windows 10 upgrade process, and might change in future releases of Windows 10. The codes discussed in this section apply to Windows 10 version 1607, also known as the Anniversary Update.

Extend codes can be matched to the phase and operation when an error occurred. To match an extend code to the phase and operation:

1. Use the first digit to identify the phase (ex: 0x4000D  = 4).
2. Use the last two digits to identify the operation (ex: 0x4000D  = 0D).
3. Match the phase and operation to values in the tables provided below.

The following tables provide the corresponding phase and operation for values of an extend code:

### Extend code: phase

|Hex|Phase|
|--- |--- |
|0|SP_EXECUTION_UNKNOWN|
|1|SP_EXECUTION_DOWNLEVEL|
|2|SP_EXECUTION_SAFE_OS|
|3|SP_EXECUTION_FIRST_BOOT|
|4|SP_EXECUTION_OOBE_BOOT|
|5|SP_EXECUTION_UNINSTALL|

### Extend code: Operation

|Hex|Operation|
|--- |--- |
|0|SP_EXECUTION_OP_UNKNOWN|
|1|SP_EXECUTION_OP_COPY_PAYLOAD|
|2|SP_EXECUTION_OP_DOWNLOAD_UPDATES|
|3|SP_EXECUTION_OP_INSTALL_UPDATES|
|4|SP_EXECUTION_OP_INSTALL_RECOVERY_ENVIRONMENT|
|5|SP_EXECUTION_OP_INSTALL_RECOVERY_IMAGE|
|6|SP_EXECUTION_OP_REPLICATE_OC|
|7|SP_EXECUTION_OP_INSTALL_DRIVERS|
|8|SP_EXECUTION_OP_PREPARE_SAFE_OS|
|9|SP_EXECUTION_OP_PREPARE_ROLLBACK|
|A|SP_EXECUTION_OP_PREPARE_FIRST_BOOT|
|B|SP_EXECUTION_OP_PREPARE_OOBE_BOOT|
|C|SP_EXECUTION_OP_APPLY_IMAGE|
|D|SP_EXECUTION_OP_MIGRATE_DATA|
|E|SP_EXECUTION_OP_SET_PRODUCT_KEY|
|F|SP_EXECUTION_OP_ADD_UNATTEND|

|Hex|Operation|
|--- |--- |
|10|SP_EXECUTION_OP_ADD_DRIVER|
|11|SP_EXECUTION_OP_ENABLE_FEATURE|
|12|SP_EXECUTION_OP_DISABLE_FEATURE|
|13|SP_EXECUTION_OP_REGISTER_ASYNC_PROCESS|
|14|SP_EXECUTION_OP_REGISTER_SYNC_PROCESS|
|15|SP_EXECUTION_OP_CREATE_FILE|
|16|SP_EXECUTION_OP_CREATE_REGISTRY|
|17|SP_EXECUTION_OP_BOOT|
|18|SP_EXECUTION_OP_SYSPREP|
|19|SP_EXECUTION_OP_OOBE|
|1A|SP_EXECUTION_OP_BEGIN_FIRST_BOOT|
|1B|SP_EXECUTION_OP_END_FIRST_BOOT|
|1C|SP_EXECUTION_OP_BEGIN_OOBE_BOOT|
|1D|SP_EXECUTION_OP_END_OOBE_BOOT|
|1E|SP_EXECUTION_OP_PRE_OOBE|
|1F|SP_EXECUTION_OP_POST_OOBE|
|20|SP_EXECUTION_OP_ADD_PROVISIONING_PACKAGE|

For example: An extend code of **0x4000D**, represents a problem during phase 4 (**0x4**) with data migration (**000D**).

## Related topics

[Windows 10 FAQ for IT professionals](../planning/windows-10-enterprise-faq-itpro.yml)  
[Windows 10 Enterprise system requirements](https://technet.microsoft.com/windows/dn798752.aspx)  
[Windows 10 Specifications](https://www.microsoft.com/windows/windows-10-specifications)  
[Microsoft Windows Q & A](/answers/products/windows)  
[Fix Windows Update errors by using the DISM or System Update Readiness tool](https://support.microsoft.com/kb/947821)
