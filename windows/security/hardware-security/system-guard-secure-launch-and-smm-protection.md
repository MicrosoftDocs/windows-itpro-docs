---
title: System Guard Secure Launch and SMM protection
description: Explains how to configure System Guard Secure Launch and System Management Mode (SMM protection) to improve the startup security of Windows devices.
ms.date: 07/10/2024
ms.topic: conceptual
---

# System Guard Secure Launch and SMM protection

This article explains how to configure [System Guard Secure Launch and System Management Mode (SMM) protection](how-hardware-based-root-of-trust-helps-protect-windows.md) to improve the startup security of Windows 10 and Windows 11 devices. The information below is presented from a client perspective.

> [!NOTE]
> System Guard Secure Launch feature requires a supported processor. For more information, see [System requirements for System Guard](how-hardware-based-root-of-trust-helps-protect-windows.md#system-requirements-for-system-guard).

## How to enable System Guard Secure Launch

You can enable System Guard Secure Launch by using any of these options:

- [Mobile Device Management (MDM)](#mobile-device-management)
- [Group Policy](#group-policy)
- [Windows Security settings](#windows-security)
- [Registry](#registry)

### Mobile Device Management

System Guard Secure Launch can be configured for Mobile Device Management (MDM) by using DeviceGuard policies in the Policy CSP, [DeviceGuard/ConfigureSystemGuardLaunch](/windows/client-management/mdm/policy-csp-deviceguard#deviceguard-configuresystemguardlaunch).

### Group Policy

1. Select **Start** > type and then select **Edit group policy**.
1. Select **Computer Configuration** > **Administrative Templates** > **System** > **Device Guard** > **Turn On Virtualization Based Security** > **Secure Launch Configuration**.

   :::image type="content" alt-text="Secure Launch Configuration." source="images/secure-launch-group-policy.png" lightbox="images/secure-launch-group-policy.png":::

### Windows Security

Select **Start** > **Settings** > **Update & Security** > **Windows Security** > **Open Windows Security** > **Device security** > **Core isolation** > **Firmware protection**.

  ![Windows Security settings.](images/secure-launch-security-app.png)

### Registry

1. Open Registry editor.
1. Select **HKEY_LOCAL_MACHINE** > **SYSTEM** > **CurrentControlSet** > **Control** > **DeviceGuard** > **Scenarios**.
1. Right-click **Scenarios** > **New** > **Key** and name the new key **SystemGuard**.
1. Right-click **SystemGuard** > **New** > **DWORD (32-bit) Value** and name the new DWORD **Enabled**.
1. Double-click **Enabled**, change the value to **1**, and click **OK**.

    ![Secure Launch Registry.](images/secure-launch-registry.png)

## How to verify System Guard Secure Launch is configured and running

To verify that Secure Launch is running, use System Information (MSInfo32). Select **Start**, search for **System Information**, and look under **Virtualization-based Security Services Running** and **Virtualization-based Security Services Configured**.

:::image type="content" alt-text="Verifying Secure Launch is running in the Windows Security settings." source="images/secure-launch-msinfo.png" lightbox="images/secure-launch-msinfo.png":::

> [!NOTE]
> To enable System Guard Secure launch, the platform must meet all the baseline requirements for [System Guard](how-hardware-based-root-of-trust-helps-protect-windows.md), [Device Guard](../application-security/application-control/introduction-to-virtualization-based-security-and-appcontrol.md), [Credential Guard](../identity-protection/credential-guard/index.md), and [Virtualization Based Security](/windows-hardware/design/device-experiences/oem-vbs).

> [!NOTE]
> For more information around AMD processors, see [Microsoft Security Blog: Force firmware code to be measured and attested by Secure Launch on Windows 10](https://www.microsoft.com/security/blog/2020/09/01/force-firmware-code-to-be-measured-and-attested-by-secure-launch-on-windows-10/).
