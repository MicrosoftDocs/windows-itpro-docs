---
title: System Guard Secure Launch and SMM protection (Windows 10)
description: Explains how to configure System Guard Secure Launch and System Management Mode (SMM protection) to improve the startup security of Windows 10 devices.
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: justinha
ms.date: 12/15/2018
---

# System Guard Secure Launch and SMM protection

This topic explains how to configure System Guard Secure Launch and System Management Mode (SMM) protection to improve the startup security of Windows 10 devices.

## How to enable System Guard Secure Launch

You can enable System Guard Secure Launch by using any of these options:

- [Mobile Device Management (MDM)](#mobile-device-management)
- [Group Policy](#group-policy)
- [Windows Security app](#windows-security-app)
- [Registry](#registry)

### Mobile Device Management

System Guard Secure Launch can be configured for Mobile Device Management (MDM) by using DeviceGuard policies in the Policy CSP, specifically [DeviceGuard/ConfigureSystemGuardLaunch](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceguard#deviceguard-configuresystemguardlaunch).

### Group Policy

1. Click **Start** > type and then click **Edit group policy**. 
2. Click **Computer Configuration** > **Administrative Templates** > **System** > **Device Guard** > **Turn On Virtualization Based Security** > **Secure Launch Configuration**.

![Secure Launch Group Policy](images/secure-launch-group-policy.png)

### Windows Security app

Click **Start** > **Settings** > **Update & Security** > **Windows Security** > **Open Windows Security** > **Device security** > **Core isolation** > **Firmware protection**.

![Secure Launch Security App](images/secure-launch-security-app.png)

### Registry

1. Open Registry editor.
2. Click **HKEY_LOCAL_MACHINE** > **SYSTEM** > **CurrentControlSet** > **Control** > **DeviceGuard** > **Scenarios**.
3. Right-click **Scenarios** > **New** > **Key** and name the new key **SystemGuard**.
4. Right-click **SystemGuard** > **New** > **DWORD (32-bit) Value** and name the new DWORD **Enabled**. 
5. Double-click **Enabled**, change the value to **1**, and click **OK**.

![Secure Launch Registry](images/secure-launch-registry.png)

## How to verify System Guard Secure Launch is configured and running

To verify that Secure Launch is running, use System Information (MSInfo32). Click **Start**, search for **System Information**, and look under **Virtualization-based Security Services Running** and **Virtualization-based Security Services Configured**.

![Secure Launch Security App](images/secure-launch-msinfo.png)








