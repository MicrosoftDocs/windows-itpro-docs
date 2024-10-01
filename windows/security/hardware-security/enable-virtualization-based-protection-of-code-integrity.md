---
title: Enable memory integrity
description: This article explains the steps to opt in to using memory integrity on Windows devices.
ms.topic: conceptual
ms.date: 07/10/2024
appliesto:
  - "✅ <a href=\"https://learn.microsoft.com/windows/release-health/supported-versions-windows-client\" target=\"_blank\">Windows 11</a>"
  - "✅ <a href=\"https://learn.microsoft.com/windows/release-health/supported-versions-windows-client\" target=\"_blank\">Windows 10</a>"
  - "✅ <a href=\"https://learn.microsoft.com/windows/release-health/windows-server-release-info\" target=\"_blank\">Windows Server 2022</a>"
  - "✅ <a href=\"https://learn.microsoft.com/windows/release-health/windows-server-release-info\" target=\"_blank\">Windows Server 2019</a>"
  - "✅ <a href=\"https://learn.microsoft.com/windows/release-health/windows-server-release-info\" target=\"_blank\">Windows Server 2016</a>"
---

# Enable virtualization-based protection of code integrity

**Memory integrity** is a Virtualization-based security (VBS) feature available in Windows. Memory integrity and VBS improve the threat model of Windows and provide stronger protections against malware trying to exploit the Windows kernel. VBS uses the Windows hypervisor to create an isolated virtual environment that becomes the root of trust of the OS that assumes the kernel can be compromised. Memory integrity is a critical component that protects and hardens Windows by running kernel mode code integrity within the isolated virtual environment of VBS. Memory integrity also restricts kernel memory allocations that could be used to compromise the system.

> [!NOTE]
>
> - Memory integrity is sometimes referred to as *hypervisor-protected code integrity (HVCI)* or *hypervisor enforced code integrity*, and was originally released as part of *Device Guard*. Device Guard is no longer used except to locate memory integrity and VBS settings in Group Policy or the Windows registry.
> - Memory integrity works better with Intel Kabylake and higher processors with *Mode-Based Execution Control*, and AMD Zen 2 and higher processors with *Guest Mode Execute Trap* capabilities. Older processors rely on an emulation of these features, called *Restricted User Mode*, and will have a bigger impact on performance. When nested virtualization is enabled, memory integrity works better when the VM is version >= 9.3.

> [!WARNING]
> Some applications and hardware device drivers may be incompatible with memory integrity. This incompatibility can cause devices or software to malfunction and in rare cases may result in a boot failure (blue screen). Such issues may occur after memory integrity has been turned on or during the enablement process itself. If compatibility issues occur, see [Troubleshooting](#troubleshooting) for remediation steps.

## Memory integrity features

- Protects modification of the Control Flow Guard (CFG) bitmap for kernel mode drivers.
- Protects the kernel mode code integrity process that ensures that other trusted kernel processes have a valid certificate.

## How to turn on memory integrity

To enable memory integrity on Windows devices with supporting hardware throughout an enterprise, use any of these options:

- [Windows Security settings](#windows-security)
- [Microsoft Intune (or another MDM provider)](#enable-memory-integrity-using-intune)
- [Group Policy](#enable-memory-integrity-using-group-policy)
- [Microsoft Configuration Manager](https://cloudblogs.microsoft.com/enterprisemobility/2015/10/30/managing-windows-10-device-guard-with-configuration-manager/)
- [Registry](#use-registry-keys-to-enable-memory-integrity)

### Windows Security

**Memory integrity** can be turned on in **Windows Security** settings and found at **Windows Security** > **Device security** > **Core isolation details** > **Memory integrity**. For more information, see [Device protection in Windows Security](https://support.microsoft.com/help/4096339/windows-10-device-protection-in-windows-defender-security-center).

Beginning with Windows 11 22H2, **Windows Security** shows a warning if memory integrity is turned off. The warning indicator also appears on the Windows Security icon in the Windows Taskbar and in the Windows Notification Center. The user can dismiss the warning from within **Windows Security**.

### Enable memory integrity using Intune

Use the **Virtualization Based Technology** > **Hypervisor Enforced Code Integrity** setting using the [settings catalog](/mem/intune/configuration/settings-catalog) to enable memory integrity. You can also use the HypervisorEnforcedCodeIntegrity node in the [VirtualizationBasedTechnology CSP](/windows/client-management/mdm/policy-csp-virtualizationbasedtechnology).

### Enable memory integrity using Group Policy

1. Use Group Policy Editor (gpedit.msc) to either edit an existing GPO or create a new one.
1. Navigate to **Computer Configuration** > **Administrative Templates** > **System** > **Device Guard**.
1. Double-click **Turn on Virtualization Based Security**.
1. Select **Enabled** and under **Virtualization Based Protection of Code Integrity**, select **Enabled without UEFI lock**. Only select **Enabled with UEFI lock** if you want to prevent memory integrity from being disabled remotely or by policy update. Once enabled with UEFI lock, you must have access to the UEFI BIOS menu to turn off Secure Boot if you want to turn off memory integrity.

   ![Enable memory integrity using Group Policy.](images/enable-hvci-gp.png)

1. Select **Ok** to close the editor.

To apply the new policy on a domain-joined computer, either restart or run `gpupdate /force` in an elevated Command Prompt.

### Use registry keys to enable memory integrity

Set the following registry keys to enable memory integrity. These keys provide similar set of configuration options provided by Group Policy

> [!IMPORTANT]
>
> - Among the commands that follow, you can choose settings for **Secure Boot** and **Secure Boot with DMA**. In most situations, we recommend that you choose **Secure Boot**. This option provides Secure Boot with as much protection as is supported by a given computer's hardware. A computer with input/output memory management units (IOMMUs) will have Secure Boot with DMA protection. A computer without IOMMUs will simply have Secure Boot enabled.
>
> - If you select **Secure Boot with DMA**, memory integrity and the other VBS features will only be turned on for computers that support DMA. That is, for computers with IOMMUs only. Any computer without IOMMUs will not have VBS or memory integrity protection.
>
> - All drivers on the system must be compatible with virtualization-based protection of code integrity; otherwise, your system may fail. We recommend that you enable these features on a group of test computers before you enable them on users' computers.

Recommended settings (to enable memory integrity without UEFI Lock):

```cmd
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "RequirePlatformSecurityFeatures" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "Locked" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Locked" /t REG_DWORD /d 0 /f
```

If you want to customize the preceding recommended settings, use the following registry keys.

**To enable VBS only (no memory integrity)**

```cmd
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d 1 /f
```

**To enable VBS and require Secure boot only (value 1)**

```cmd
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "RequirePlatformSecurityFeatures" /t REG_DWORD /d 1 /f
```

**To enable VBS with Secure Boot and DMA protection (value 3)**

```cmd
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "RequirePlatformSecurityFeatures" /t REG_DWORD /d 3 /f
```

**To enable VBS without UEFI lock (value 0)**

```cmd
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "Locked" /t REG_DWORD /d 0 /f
```

**To enable VBS with UEFI lock (value 1)**

```cmd
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "Locked" /t REG_DWORD /d 1 /f
```

**To enable memory integrity**

```cmd
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d 1 /f
```

**To enable memory integrity without UEFI lock (value 0)**

```cmd
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Locked" /t REG_DWORD /d 0 /f
```

**To enable memory integrity with UEFI lock (value 1)**

```cmd
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Locked" /t REG_DWORD /d 1 /f
```

**To enable VBS (and memory integrity) in mandatory mode**

```cmd
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "Mandatory" /t REG_DWORD /d 1 /f
```

The **Mandatory** setting prevents the OS loader from continuing to boot in case the Hypervisor, Secure Kernel or one of their dependent modules fails to load.

> [!IMPORTANT]
> Special care should be used before enabling this mode, since, in case of any failure of the virtualization modules, the system will refuse to boot.

**To gray out the memory integrity UI and display the message "This setting is managed by your administrator"**
```cmd
reg delete HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity /v "WasEnabledBy" /f
```

**To let memory integrity UI behave normally (Not grayed out)**
```cmd
reg add HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity /v "WasEnabledBy" /t REG_DWORD /d 2 /f
```

### Enable memory integrity using App Control for Business

You can use App Control policy to turn on memory integrity using any of the following techniques:

1. Use the [App Control Wizard](https://aka.ms/wdacwizard) to create or edit your App Control policy and select the option **Hypervisor-protected Code Integrity** on the **Policy Rules** page of the Wizard.
2. Use the [Set-HVCIOptions](/powershell/module/configci/set-hvcioptions) PowerShell cmdlet.
3. Edit your App Control policy XML and modify the value set for the `<HVCIOptions>` element.

> [!NOTE]
> If your App Control policy is set to turn memory integrity on, it will be turned on even if the policy is in audit mode.

### Validate enabled VBS and memory integrity features

#### Use Win32_DeviceGuard WMI class

Windows 10, Windows 11, and Windows Server 2016 and higher have a WMI class for VBS-related properties and features: **Win32_DeviceGuard**. This class can be queried from an elevated Windows PowerShell session by using the following command:

```powershell
Get-CimInstance -ClassName Win32_DeviceGuard -Namespace root\Microsoft\Windows\DeviceGuard
```

> [!NOTE]
> Mode Based Execution Control property will only be listed as available starting with Windows 10 version 1803 and Windows 11 version 21H2. This value is reported for both Intel's *Mode-Based Execution Control* and AMD's *Guest Mode Execute Trap* capabilities.

The output of this command provides details of the available hardware-based security features and those features that are currently enabled.

##### AvailableSecurityProperties

This field helps to enumerate and report state on the relevant security properties for VBS and memory integrity.

| Value | Description                                             |
|-------|---------------------------------------------------------|
| **0** | If present, no relevant properties exist on the device. |
| **1** | If present, hypervisor support is available.            |
| **2** | If present, Secure Boot is available.                   |
| **3** | If present, DMA protection is available.                |
| **4** | If present, Secure Memory Overwrite is available.       |
| **5** | If present, NX protections are available.               |
| **6** | If present, SMM mitigations are available.              |
| **7** | If present, MBEC/GMET is available.                     |
| **8** | If present, APIC virtualization is available.           |

##### InstanceIdentifier

A string that is unique to a particular device and set by WMI.

##### RequiredSecurityProperties

This field describes the required security properties to enable VBS.

| Value | Description                                    |
|-------|------------------------------------------------|
| **0** | Nothing is required.                           |
| **1** | If present, hypervisor support is needed.      |
| **2** | If present, Secure Boot is needed.             |
| **3** | If present, DMA protection is needed.          |
| **4** | If present, Secure Memory Overwrite is needed. |
| **5** | If present, NX protections are needed.         |
| **6** | If present, SMM mitigations are needed.        |
| **7** | If present, MBEC/GMET is needed.               |

##### SecurityServicesConfigured

This field indicates whether Credential Guard or memory integrity is configured.

| Value | Description                                           |
|-------|-------------------------------------------------------|
| **0** | No services are configured.                           |
| **1** | If present, Credential Guard is configured.           |
| **2** | If present, memory integrity is configured.           |
| **3** | If present, System Guard Secure Launch is configured. |
| **4** | If present, SMM Firmware Measurement is configured.   |

##### SecurityServicesRunning

This field indicates whether Credential Guard or memory integrity is running.

| Value | Description                                        |
|-------|----------------------------------------------------|
| **0** | No services running.                               |
| **1** | If present, Credential Guard is running.           |
| **2** | If present, memory integrity is running.           |
| **3** | If present, System Guard Secure Launch is running. |
| **4** | If present, SMM Firmware Measurement is running.   |

##### Version

This field lists the version of this WMI class. The only valid value now is **1.0**.

##### VirtualizationBasedSecurityStatus

This field indicates whether VBS is enabled and running.

| Value | Description                     |
|-------|---------------------------------|
| **0** | VBS isn't enabled.              |
| **1** | VBS is enabled but not running. |
| **2** | VBS is enabled and running.     |

##### PSComputerName

This field lists the computer name. All valid values for computer name.

#### Use msinfo32.exe

Another method to determine the available and enabled VBS features is to run msinfo32.exe from an elevated PowerShell session. When you run this program, the VBS features are displayed at the bottom of the **System Summary** section.

:::image type="content" alt-text="Virtualization-based security features in the System Summary of System Information." source="images/system-information-virtualization-based-security.png" lightbox="images/system-information-virtualization-based-security.png":::

## Troubleshooting

- If a device driver fails to load or crashes at runtime, you might be able to update the driver using **Device Manager**.
- If you experience a critical error during boot or your system is unstable after turning on memory integrity, you can recover using the Windows Recovery Environment (Windows RE).
    1. First, disable any policies that are used to enable VBS and memory integrity, for example Group Policy.
    2. Then, boot to Windows RE on the affected computer, see [Windows RE Technical Reference](/windows-hardware/manufacture/desktop/windows-recovery-environment--windows-re--technical-reference).
    3. After logging in to Windows RE, set the memory integrity registry key to off:

        ```cmd
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d 0 /f
        ```

    4. Finally, restart your device.

> [!NOTE]
> If you turned on memory integrity with UEFI lock, you will need to disable Secure Boot to complete the Windows RE recovery steps.

## Memory integrity deployment in virtual machines

Memory integrity can protect a Hyper-V virtual machine, just as it would a physical machine. The steps to enable memory integrity are the same from within the virtual machine.

Memory integrity protects against malware running in the guest virtual machine. It doesn't provide extra protection from the host administrator. From the host, you can disable memory integrity for a virtual machine:

```powershell
Set-VMSecurity -VMName <VMName> -VirtualizationBasedSecurityOptOut $true
```

### Requirements for running memory integrity in Hyper-V virtual machines

- The Hyper-V host must run at least Windows Server 2016 or Windows 10 version 1607.
- The Hyper-V virtual machine must be Generation 2, and running at least Windows Server 2016 or Windows 10.
- Memory integrity and [nested virtualization](/virtualization/hyper-v-on-windows/user-guide/nested-virtualization) can be enabled at the same time. To enable the Hyper-V role on the virtual machine, you must first install the Hyper-V role in a Windows nested virtualization environment.
- Virtual Fibre Channel adapters aren't compatible with memory integrity. Before attaching a virtual Fibre Channel Adapter to a virtual machine, you must first opt out of Virtualization-based security using `Set-VMSecurity`.
- The AllowFullSCSICommandSet option for pass-through disks isn't compatible with memory integrity. Before configuring a pass-through disk with AllowFullSCSICommandSet, you must first opt out of Virtualization-based security using `Set-VMSecurity`.
