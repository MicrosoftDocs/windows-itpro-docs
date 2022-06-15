---
title: System Guard Secure Launch and SMM protection (Windows 10)
description: Explains how to configure System Guard Secure Launch and System Management Mode (SMM protection) to improve the startup security of Windows 10 devices.
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.technology: windows-sec
---

# System Guard Secure Launch and SMM protection

**Applies to:**

- Windows 11
- Windows 10

This topic explains how to configure [System Guard Secure Launch and System Management Mode (SMM) protection](system-guard-how-hardware-based-root-of-trust-helps-protect-windows.md) to improve the startup security of Windows 10 and Windows 11 devices. The information below is presented from a client perspective.

## How to enable System Guard Secure Launch

You can enable System Guard Secure Launch by using any of these options:

- [Mobile Device Management (MDM)](#mobile-device-management)
- [Group Policy](#group-policy)
- [Windows Security app](#windows-security-app)
- [Registry](#registry)

### Mobile Device Management

System Guard Secure Launch can be configured for Mobile Device Management (MDM) by using DeviceGuard policies in the Policy CSP, [DeviceGuard/ConfigureSystemGuardLaunch](/windows/client-management/mdm/policy-csp-deviceguard#deviceguard-configuresystemguardlaunch).

### Group Policy

1. Click **Start** > type and then click **Edit group policy**.

2. Click **Computer Configuration** > **Administrative Templates** > **System** > **Device Guard** > **Turn On Virtualization Based Security** > **Secure Launch Configuration**.

    ![Secure Launch Configuration.](images/secure-launch-group-policy.png)

### Windows Security app

Click **Start** > **Settings** > **Update & Security** > **Windows Security** > **Open Windows Security** > **Device security** > **Core isolation** > **Firmware protection**.

  ![Windows Security app.](images/secure-launch-security-app.png)
  
### Registry

1. Open Registry editor.

2. Click **HKEY_LOCAL_MACHINE** > **SYSTEM** > **CurrentControlSet** > **Control** > **DeviceGuard** > **Scenarios**.

3. Right-click **Scenarios** > **New** > **Key** and name the new key **SystemGuard**.

4. Right-click **SystemGuard** > **New** > **DWORD (32-bit) Value** and name the new DWORD **Enabled**.

5. Double-click **Enabled**, change the value to **1**, and click **OK**.

    ![Secure Launch Registry.](images/secure-launch-registry.png)

## How to verify System Guard Secure Launch is configured and running

To verify that Secure Launch is running, use System Information (MSInfo32). Click **Start**, search for **System Information**, and look under **Virtualization-based Security Services Running** and **Virtualization-based Security Services Configured**.

![Verifying Secure Launch is running in the Windows Security app.](images/secure-launch-msinfo.png)

> [!NOTE]
> To enable System Guard Secure launch, the platform must meet all the baseline requirements for [Device Guard](../device-guard/introduction-to-device-guard-virtualization-based-security-and-windows-defender-application-control.md), [Credential Guard](../../identity-protection/credential-guard/credential-guard-requirements.md), and [Virtualization Based Security](/windows-hardware/design/device-experiences/oem-vbs).

## System requirements for System Guard

|For Intel&reg; vPro&trade; processors starting with Intel&reg; Coffeelake, Whiskeylake, or later silicon|Description|
|--------|-----------|
|64-bit CPU|A 64-bit computer with minimum four cores (logical processors) is required for hypervisor and virtualization-based security (VBS). For more information about Hyper-V, see [Hyper-V on Windows Server 2016](/windows-server/virtualization/hyper-v/hyper-v-on-windows-server) or [Introduction to Hyper-V on Windows 10](/virtualization/hyper-v-on-windows/about/). For more information about hypervisor, see [Hypervisor Specifications](/virtualization/hyper-v-on-windows/reference/tlfs).|
|Trusted Platform Module (TPM) 2.0|Platforms must support a discrete TPM 2.0. Integrated/firmware TPMs aren't supported, except Intel chips that support Platform Trust Technology (PTT), which is a type of integrated hardware TPM that meets the TPM 2.0 spec.|
|Windows DMA Protection|Platforms must meet the Windows DMA Protection Specification (all external DMA ports must be off by default until the OS explicitly powers them).|
|SMM communication buffers| All SMM communication buffers must be implemented in EfiRuntimeServicesData, EfiRuntimeServicesCode, EfiACPIMemoryNVS, or EfiReservedMemoryType memory types. |
|SMM Page Tables| Must NOT contain any mappings to EfiConventionalMemory (for example no OS/VMM owned memory). <br/>Must NOT contain any mappings to code sections within EfiRuntimeServicesCode. <br/>Must NOT have execute and write permissions for the same page <br/>Must allow ONLY that TSEG pages can be marked executable and the memory map must report TSEG EfiReservedMemoryType. <br/>BIOS SMI handler must be implemented such that SMM page tables are locked on every SMM entry.  |
|Modern/Connected Standby|Platforms must support Modern/Connected Standby.|
|TPM AUX Index|Platform must set up a AUX index with index, attributes, and policy that exactly corresponds to the AUX index specified in the TXT DG with a data size of exactly 104 bytes (for SHA256 AUX data). (NameAlg = SHA256) <br/> Platforms must set up a PS (Platform Supplier) index with: <ul><li> Exactly the "TXT PS2" style Attributes on creation as follows: <ul><li>AuthWrite</li><li>PolicyDelete</li><li>WriteLocked</li><li>WriteDefine</li><li>AuthRead</li><li>WriteDefine</li><li>NoDa</li><li>Written</li><li>PlatformCreate</li></ul> <li>A policy of exactly PolicyCommandCode(CC = TPM2_CC_UndefineSpaceSpecial) (SHA256 NameAlg and Policy)</li><li> Size of exactly 70 bytes </li><li> NameAlg = SHA256 </li><li> Also, it must have been initialized and locked (TPMA_NV_WRITTEN = 1, TPMA_NV_WRITELOCKED = 1) at time of OS launch. </li></ul> PS index data DataRevocationCounters, SINITMinVersion, and PolicyControl must all be 0x00 |
|AUX Policy|The required AUX policy must be as follows: <ul><li> A = TPM2_PolicyLocality (Locality 3 & Locality 4) </li><li>B = TPM2_PolicyCommandCode (TPM_CC_NV_UndefineSpecial)</li><li>authPolicy = \{A} OR {{A} AND \{B}}</li><li>authPolicy digest = 0xef, 0x9a, 0x26, 0xfc, 0x22, 0xd1, 0xae, 0x8c, 0xec, 0xff, 0x59, 0xe9, 0x48, 0x1a, 0xc1, 0xec, 0x53, 0x3d, 0xbe, 0x22, 0x8b, 0xec, 0x6d, 0x17, 0x93, 0x0f, 0x4c, 0xb2, 0xcc, 0x5b, 0x97, 0x24</li></ul>|
|TPM NV Index|Platform firmware must set up a TPM NV index for use by the OS with: <ul><li>Handle: 0x01C101C0 </li><li>Attributes: <ul><li>TPMA_NV_POLICYWRITE</li><li>TPMA_NV_PPREAD </li><li>TPMA_NV_OWNERREAD</li><li>TPMA_NV_AUTHREAD</li><li>TPMA_NV_POLICYREAD</li><li>TPMA_NV_NO_DA</li><li>TPMA_NV_PLATFORMCREATE</li><li>TPMA_NV_POLICY_DELETE</li></ul> <li>A policy of: </li><ul><li>A = TPM2_PolicyAuthorize(MSFT_DRTM_AUTH_BLOB_SigningKey)</li><li>B = TPM2_PolicyCommandCode(TPM_CC_NV_UndefineSpaceSpecial) </li><li> authPolicy = \{A} OR {{A} AND \{B}} </li><li> Digest value of 0xcb, 0x45, 0xc8, 0x1f, 0xf3, 0x4b, 0xcf, 0x0a, 0xfb, 0x9e, 0x1a, 0x80, 0x29, 0xfa, 0x23, 0x1c, 0x87, 0x27, 0x30, 0x3c, 0x09, 0x22, 0xdc, 0xce, 0x68, 0x4b, 0xe3, 0xdb, 0x81, 0x7c, 0x20, 0xe1 </li></ul></ul> |
|Platform firmware|Platform firmware must carry all code required to execute an Intel&reg; Trusted Execution Technology secure launch: <ul><li>Intel&reg; SINIT ACM must be carried in the OEM BIOS</li><li>Platforms must ship with a production ACM signed by the correct production Intel&reg; ACM signer for the platform</li></ul>|
|Platform firmware update|System firmware is recommended to be updated via UpdateCapsule in Windows Update. |

|For AMD&reg; processors starting with Zen2 or later silicon|Description|
|--------|-----------|
|64-bit CPU|A 64-bit computer with minimum four cores (logical processors) is required for hypervisor and virtualization-based security (VBS). For more information about Hyper-V, see [Hyper-V on Windows Server 2016](/windows-server/virtualization/hyper-v/hyper-v-on-windows-server) or [Introduction to Hyper-V on Windows 10](/virtualization/hyper-v-on-windows/about/). For more information about hypervisor, see [Hypervisor Specifications](/virtualization/hyper-v-on-windows/reference/tlfs).|
|Trusted Platform Module (TPM) 2.0|Platforms must support a discrete TPM 2.0 OR Microsoft Pluton TPM.|
|Windows DMA Protection|Platforms must meet the Windows DMA Protection Specification (all external DMA ports must be off by default until the OS explicitly powers them).|
|SMM communication buffers| All SMM communication buffers must be implemented in EfiRuntimeServicesData, EfiRuntimeServicesCode, EfiACPIMemoryNVS, or EfiReservedMemoryType memory types. |
|SMM Page Tables| Must NOT contain any mappings to EfiConventionalMemory (for example no OS/VMM owned memory). <br/>Must NOT contain any mappings to code sections within EfiRuntimeServicesCode. <br/>Must NOT have execute and write permissions for the same page <br/>BIOS SMI handler must be implemented such that SMM page tables are locked on every SMM entry.  |
|Modern/Connected Standby|Platforms must support Modern/Connected Standby.|
|TPM NV Index|Platform firmware must set up a TPM NV index for use by the OS with: <ul><li>Handle: 0x01C101C0 </li><li>Attributes: <ul><li>TPMA_NV_POLICYWRITE</li><li>TPMA_NV_PPREAD </li><li>TPMA_NV_OWNERREAD</li><li>TPMA_NV_AUTHREAD</li><li>TPMA_NV_POLICYREAD</li><li>TPMA_NV_NO_DA</li><li>TPMA_NV_PLATFORMCREATE</li><li>TPMA_NV_POLICY_DELETE</li></ul> <li>A policy of: </li><ul><li>A = TPM2_PolicyAuthorize(MSFT_DRTM_AUTH_BLOB_SigningKey)</li><li>B = TPM2_PolicyCommandCode(TPM_CC_NV_UndefineSpaceSpecial) </li><li> authPolicy = \{A} OR {{A} AND \{B}} </li><li> Digest value of 0xcb, 0x45, 0xc8, 0x1f, 0xf3, 0x4b, 0xcf, 0x0a, 0xfb, 0x9e, 0x1a, 0x80, 0x29, 0xfa, 0x23, 0x1c, 0x87, 0x27, 0x30, 0x3c, 0x09, 0x22, 0xdc, 0xce, 0x68, 0x4b, 0xe3, 0xdb, 0x81, 0x7c, 0x20, 0xe1 </li></ul></ul> |
|Platform firmware|Platform firmware must carry all code required to execute Secure Launch: <ul><li>AMD&reg; Secure Launch platforms must ship with AMD&reg; DRTM driver devnode exposed and the AMD&reg; DRTM driver installed</li></ul><br/>Platform must have AMD&reg; Secure Processor Firmware Anti-Rollback protection enabled <br/> Platform must have AMD&reg; Memory Guard enabled.|
|Platform firmware update|System firmware is recommended to be updated via UpdateCapsule in Windows Update. |

|For Qualcomm&reg; processors with SD850 or later chipsets|Description|
|--------|-----------|
|Monitor Mode Communication|All Monitor Mode communication buffers must be implemented in either EfiRuntimeServicesData (recommended), data sections of EfiRuntimeServicesCode as described by the Memory Attributes Table, EfiACPIMemoryNVS, or EfiReservedMemoryType memory types|
|Monitor Mode Page Tables|All Monitor Mode page tables must: <ul><li>NOT contain any mappings to EfiConventionalMemory (for example no OS/VMM owned memory) </li><li>They must NOT have execute and write permissions for the same page </li><li>Platforms must only allow Monitor Mode pages marked as executable </li><li>The memory map must report Monitor Mode as EfiReservedMemoryType</li><li>Platforms must provide mechanism to protect the Monitor Mode page tables from modification</li></ul> |
|Modern/Connected Standby|Platforms must support Modern/Connected Standby.|
|Platform firmware|Platform firmware must carry all code required to launch.|
|Platform firmware update|System firmware is recommended to be updated via UpdateCapsule in Windows Update. |

> [!NOTE]
> For more information around AMD processors, see [Microsoft Security Blog: Force firmware code to be measured and attested by Secure Launch on Windows 10](https://www.microsoft.com/security/blog/2020/09/01/force-firmware-code-to-be-measured-and-attested-by-secure-launch-on-windows-10/).
