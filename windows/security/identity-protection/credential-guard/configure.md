---
ms.date: 06/20/2024
title: Configure Credential Guard
description: Learn how to configure Credential Guard using MDM, Group Policy, or the registry.
ms.topic: how-to
---

# Configure Credential Guard

This article describes how to configure Credential Guard using Microsoft Intune, Group Policy, or the registry.

## Default enablement

[!INCLUDE [windows-server-2025-preview](../../includes/windows-server-2025-preview.md)]

Starting in Windows 11, 22H2 and Windows Server 2025 (preview), Credential Guard is [enabled by default on devices which meet the requirements](index.md#default-enablement).

System administrators can explicitly [enable](#enable-credential-guard) or [disable](#disable-credential-guard) Credential Guard using one of the methods described in this article. Explicitly configured values overwrite the default enablement state after a reboot.

If a device has Credential Guard explicitly turned off before updating to a newer version of Windows where Credential Guard is enabled by default, it will remain disabled even after the update.

> [!IMPORTANT]
> For information about known issues related to default enablement, see [Credential Guard: known issues](considerations-known-issues.md).

## Enable Credential Guard

Credential Guard should be enabled before a device is joined to a domain or before a domain user signs in for the first time. If Credential Guard is enabled after domain join, the user and device secrets may already be compromised.

To enable Credential Guard, you can use:

- Microsoft Intune/MDM
- Group policy
- Registry

[!INCLUDE [tab-intro](../../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../../images/icons/intune.svg" border="false"::: **Intune/CSP**](#tab/intune)

### Configure Credential Guard with Intune

[!INCLUDE [intune-settings-catalog-1](../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| Device Guard | Credential Guard | Select one of the options:<br>&emsp;- **Enabled with UEFI lock**<br>&emsp;- **Enabled without lock** |

>[!IMPORTANT]
> If you want to be able to turn off Credential Guard remotely, choose the option **Enabled without lock**.

[!INCLUDE [intune-settings-catalog-2](../../../../includes/configure/intune-settings-catalog-2.md)]

> [!TIP]
> You can also configure Credential Guard by using an *account protection* profile in endpoint security. For more information, see [Account protection policy settings for endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security-account-protection-profile-settings).

Alternatively, you can configure devices using a [custom policy][INT-1] with the [DeviceGuard Policy CSP][CSP-1].

| Setting |
|--------|
| **Setting name**: Turn On Virtualization Based Security<br>**OMA-URI**: `./Device/Vendor/MSFT/Policy/Config/DeviceGuard/EnableVirtualizationBasedSecurity`<br>**Data type**: int<br>**Value**: `1`|
| **Setting name**: Credential Guard Configuration<br>**OMA-URI**: `./Device/Vendor/MSFT/Policy/Config/DeviceGuard/LsaCfgFlags`<br>**Data type**: int<br>**Value**:<br>&emsp;**Enabled with UEFI lock**: `1`<br>&emsp;**Enabled without lock**: `2`|

Once the policy is applied, restart the device.

#### [:::image type="icon" source="../../images/icons/group-policy.svg" border="false"::: **GPO**](#tab/gpo)

### Configure Credential Guard with group policy

[!INCLUDE [gpo-settings-1](../../../../includes/configure/gpo-settings-1.md)]

| Group policy path | Group policy setting | Value |
| - | - | - |
| **Computer Configuration\Administrative Templates\System\Device Guard** |Turn On Virtualization Based Security | **Enabled** and select one of the options listed under the **Credential Guard Configuration** dropdown:<br>&emsp;- **Enabled with UEFI lock**<br>&emsp;- **Enabled without lock**|

>[!IMPORTANT]
> If you want to be able to turn off Credential Guard remotely, choose the option **Enabled without lock**.

[!INCLUDE [gpo-settings-2](../../../../includes/configure/gpo-settings-2.md)]

Once the policy is applied, restart the device.

#### [:::image type="icon" source="../../images/icons/registry.svg" border="false"::: **Registry**](#tab/reg)

### Configure Credential Guard with registry settings

To configure devices using the registry, use the following settings:

| Setting |
|--|
| **Key path**: `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceGuard` <br>**Key name**: `EnableVirtualizationBasedSecurity`<br>**Type**: `REG_DWORD`<br>**Value**: `1` (to enable Virtualization Based Security)|
| **Key path**: `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceGuard` <br>**Key name**: `RequirePlatformSecurityFeatures`<br>**Type**: `REG_DWORD`<br>**Value**:<br>&emsp;`1` (to use Secure Boot)<br>&emsp;`3` (to use Secure Boot and DMA protection) |
| **Key path**: `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa` <br>**Key name**: `LsaCfgFlags`<br>**Type**: `REG_DWORD`<br>**Value**:<br>&emsp;`1` (to enable Credential Guard with UEFI lock)<br>&emsp;`2` (to enable Credential Guard without lock)|

Restart the device to apply the change.

> [!TIP]
> You can enable Credential Guard by setting the registry entries in the [*FirstLogonCommands*](/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-firstlogoncommands) unattend setting.

---

### Verify if Credential Guard is enabled

Checking Task Manager if `LsaIso.exe` is running isn't a recommended method for determining whether Credential Guard is running. Instead, use one of the following methods:

- System Information
- PowerShell
- Event Viewer

#### System Information

You can use *System Information* to determine whether Credential Guard is running on a device.

1. Select **Start**, type `msinfo32.exe`, and then select **System Information**
1. Select **System Summary**
1. Confirm that **Credential Guard** is shown next to **Virtualization-based Security Services Running**

#### PowerShell

You can use PowerShell to determine whether Credential Guard is running on a device. From an elevated PowerShell session, use the following command:

```powershell
(Get-CimInstance -ClassName Win32_DeviceGuard -Namespace root\Microsoft\Windows\DeviceGuard).SecurityServicesRunning
```

The command generates the following output:

- **0**: Credential Guard is disabled (not running)
- **1**: Credential Guard is enabled (running)

#### Event viewer

Perform regular reviews of the devices that have Credential Guard enabled, using security audit policies or WMI queries.\
Open the Event Viewer (`eventvwr.exe`) and go to `Windows Logs\System` and filter the event sources for *WinInit*:

:::row:::
  :::column span="1":::
  **Event ID**
  :::column-end:::
  :::column span="3":::
  **Description**
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
  13 (Information)
  :::column-end:::
  :::column span="3":::
  ```logging
  Credential Guard (LsaIso.exe) was started and will protect LSA credentials.
  ```
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
  `14` (Information)
  :::column-end:::
  :::column span="3":::
  ```logging
  Credential Guard (LsaIso.exe) configuration: [**0x0** | **0x1** | **0x2**], **0**
  ```
  - The first variable: **0x1** or **0x2** means that Credential Guard is configured to run. **0x0** means that it's not configured to run.
  - The second variable: **0** means that it's configured to run in protect mode. **1** means that it's configured to run in test mode. This variable should always be **0**.
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
  `15` (Warning)
  :::column-end:::
  :::column span="3":::
  ```logging
  Credential Guard (LsaIso.exe) is configured but the secure kernel isn't running;
  continuing without Credential Guard.
  ```
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
  `16` (Warning)
  :::column-end:::
  :::column span="3":::
  ```logging
  Credential Guard (LsaIso.exe) failed to launch: [error code]
  ```
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
  `17`
  :::column-end:::
  :::column span="3":::
  ```logging
  Error reading Credential Guard (LsaIso.exe) UEFI configuration: [error code]
  ```
  :::column-end:::
:::row-end:::

The following event indicates whether TPM is used for key protection. Path: `Applications and Services logs > Microsoft > Windows > Kernel-Boot`

:::row:::
  :::column span="1":::
  **Event ID**
  :::column-end:::
  :::column span="3":::
  **Description**
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
  51 (Information)
  :::column-end:::
  :::column span="3":::
  ```logging
  VSM Master Encryption Key Provisioning. Using cached copy status: 0x0. Unsealing cached copy status: 0x1. New key generation status: 0x1. Sealing status: 0x1. TPM PCR mask: 0x0.
  ```
  :::column-end:::
:::row-end:::

If you're running with a TPM, the TPM PCR mask value is something other than 0.

## Disable Credential Guard

There are different options to disable Credential Guard. The option you choose depends on how Credential Guard is configured:

- Credential Guard running in a virtual machine can be [disabled by the host](#disable-credential-guard-for-a-virtual-machine)
- If Credential Guard is enabled **with UEFI Lock**, follow the procedure described in [disable Credential Guard with UEFI Lock](#disable-credential-guard-with-uefi-lock)
- If Credential Guard is enabled **without UEFI Lock**, or as part of the [default enablement update](index.md#default-enablement), use one of the following options to disable it:
  - Microsoft Intune/MDM
  - Group policy
  - Registry

[!INCLUDE [tab-intro](../../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../../images/icons/intune.svg" border="false"::: **Intune/CSP**](#tab/intune)

### Disable Credential Guard with Intune

If Credential Guard is enabled via Intune and without UEFI Lock, disabling the same policy setting disables Credential Guard.

[!INCLUDE [intune-settings-catalog-1](../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| Device Guard | Credential Guard | **Disabled** |

[!INCLUDE [intune-settings-catalog-2](../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the [DeviceGuard Policy CSP][CSP-1].

| Setting |
|--------|
| **Setting name**: Credential Guard Configuration<br>**OMA-URI**: `./Device/Vendor/MSFT/Policy/Config/DeviceGuard/LsaCfgFlags`<br>**Data type**: int<br>**Value**: `0`|

Once the policy is applied, restart the device.

#### [:::image type="icon" source="../../images/icons/group-policy.svg" border="false"::: **GPO**](#tab/gpo)

### Disable Credential Guard with group policy

If Credential Guard is enabled via Group Policy and without UEFI Lock, disabling the same group policy setting disables Credential Guard.

[!INCLUDE [gpo-settings-1](../../../../includes/configure/gpo-settings-1.md)]

| Group policy path | Group policy setting | Value |
| - | - | - |
| **Computer Configuration\Administrative Templates\System\Device Guard** |Turn On Virtualization Based Security | **Disabled** |

[!INCLUDE [gpo-settings-2](../../../../includes/configure/gpo-settings-2.md)]

Once the policy is applied, restart the device.

#### [:::image type="icon" source="../../images/icons/registry.svg" border="false"::: **Registry**](#tab/reg)

### Disable Credential Guard with registry settings

If Credential Guard is enabled without UEFI Lock and without Group Policy, it's sufficient to edit the registry keys to disable it.

| Setting |
|-|
| **Key path**: `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa` <br>**Key name**: `LsaCfgFlags`<br>**Type**: `REG_DWORD`<br>**Value**: `0`|
| **Key path**: `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard` <br>**Key name**: `LsaCfgFlags`<br>**Type**: `REG_DWORD`<br>**Value**: `0`|

> [!NOTE]
> Deleting these registry settings may not disable Credential Guard. They must be set to a value of 0.

Restart the device to apply the change.

---

For information on disabling Virtualization-based Security (VBS), see [disable Virtualization-based Security](#disable-virtualization-based-security).

### Disable Credential Guard with UEFI lock

If Credential Guard is enabled with UEFI lock, follow this procedure since the settings are persisted in EFI (firmware) variables.

> [!NOTE]
> This scenario requires physical presence at the machine to press a function key to accept the change.

1. Follow the steps in [Disable Credential Guard](#disable-credential-guard)
1. Delete the Credential Guard EFI variables by using bcdedit. From an elevated command prompt, type the following commands:

   ```cmd
   mountvol X: /s
   copy %WINDIR%\System32\SecConfig.efi X:\EFI\Microsoft\Boot\SecConfig.efi /Y
   bcdedit /create {0cb3b571-2f2e-4343-a879-d86a476d7215} /d "DebugTool" /application osloader
   bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} path "\EFI\Microsoft\Boot\SecConfig.efi"
   bcdedit /set {bootmgr} bootsequence {0cb3b571-2f2e-4343-a879-d86a476d7215}
   bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} loadoptions DISABLE-LSA-ISO
   bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} device partition=X:
   mountvol X: /d
   ```

1. Restart the device. Before the OS boots, a prompt appears notifying that UEFI was modified, and asking for confirmation. The prompt must be confirmed for the changes to persist.

### Disable Credential Guard for a virtual machine

From the host, you can disable Credential Guard for a virtual machine with the following command:

```powershell
Set-VMSecurity -VMName <VMName> -VirtualizationBasedSecurityOptOut $true
```

## Disable Virtualization-based Security

If you disable Virtualization-based Security (VBS), you'll automatically disable Credential Guard and other features that rely on VBS.

> [!IMPORTANT]
> Other security features beside Credential Guard rely on VBS. Disabling VBS may have unintended side effects.

Use one of the following options to disable VBS:

- Microsoft Intune/MDM
- Group policy
- Registry

[!INCLUDE [tab-intro](../../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../../images/icons/intune.svg" border="false"::: **Intune/CSP**](#tab/intune)

### Disable VBS with Intune

If VBS is enabled via Intune and without UEFI Lock, disabling the same policy setting disables VBS.

[!INCLUDE [intune-settings-catalog-1](../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| Device Guard | Enable Virtualization Based Security | **Disabled** |

[!INCLUDE [intune-settings-catalog-2](../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the [DeviceGuard Policy CSP][CSP-1].

| Setting |
|--------|
| **Setting name**: Turn On Virtualization Based Security<br>**OMA-URI**: `./Device/Vendor/MSFT/Policy/Config/DeviceGuard/EnableVirtualizationBasedSecurity`<br>**Data type**: int<br>**Value**: `0`|

Once the policy is applied, restart the device.

#### [:::image type="icon" source="../../images/icons/group-policy.svg" border="false"::: **GPO**](#tab/gpo)

### Disable  VBS with group policy

Configure the policy used to enable VBS to **Disabled**.

[!INCLUDE [gpo-settings-1](../../../../includes/configure/gpo-settings-1.md)]

| Group policy path | Group policy setting | Value |
| - | - | - |
| **Computer Configuration\Administrative Templates\System\Device Guard\Turn on Virtualization Based Security** |Turn On Virtualization Based Security | **Disabled** |

[!INCLUDE [gpo-settings-2](../../../../includes/configure/gpo-settings-2.md)]

Once the policy is applied, restart the device

#### [:::image type="icon" source="../../images/icons/registry.svg" border="false"::: **Registry**](#tab/reg)

### Disable VBS with registry settings

Delete the following registry keys:

| Setting |
|--|
| Key path: `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceGuard` <br>Key name: `EnableVirtualizationBasedSecurity` |
| Key path: `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceGuard` <br>Key name: `RequirePlatformSecurityFeatures`|

> [!IMPORTANT]
> If you manually remove the registry settings, make sure to delete them all, otherwise the device might go into BitLocker recovery.

Restart the device to apply the change.

---

If Credential Guard is enabled with UEFI Lock, the EFI variables stored in firmware must be cleared using the command `bcdedit.exe`. From an elevated command prompt, run the following commands:

```cmd
bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} loadoptions DISABLE-LSA-ISO,DISABLE-VBS
bcdedit /set vsmlaunchtype off
```

## Next steps

- Review the advice and sample code for making your environment more secure and robust with Credential Guard in the [Additional mitigations](additional-mitigations.md) article
- Review [considerations and known issues when using Credential Guard](considerations-known-issues.md)

<!--links-->

[CSP-1]: /windows/client-management/mdm/policy-csp-deviceguard#enablevirtualizationbasedsecurity
[INT-1]: /mem/intune/configuration/settings-catalog
