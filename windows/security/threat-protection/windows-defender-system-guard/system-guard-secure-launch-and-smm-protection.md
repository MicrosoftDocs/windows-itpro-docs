---
title: System Guard Secure Launch and SMM protection (Windows 10)
description: Explains how System Guard Secure Launch and System Management Mode (SMM protection) improve the startup security of Windows 10 devices.
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

This topic explains how System Guard Secure Launch and System Management Mode (SMM) protection improve the startup security of Windows 10 devices.

## Static Root of Trust for Measurement (SRTM)

Starting with Windows 8-certified hardware, a hardware-based root of trust helps ensure that no unauthorized firmware or software (such as a bootkit) can start before the Windows bootloader. 
This hardware-based root of trust comes from the device’s Secure Boot feature, which is part of the Unified Extensible Firmware Interface (UEFI). 
This technique of measuring the static early boot UEFI components is called the Static Root of Trust for Measurement (SRTM). 

As there are thousands of PC vendors that produce numerous models with different UEFI BIOS versions, there becomes an incredibly large number of SRTM measurements upon bootup. 
Two techniques exist to establish trust here—either maintain a list of known 'bad' SRTM measurements (also known as a blacklist), or a list of known 'good' SRTM measurements (also known as a whitelist). 
Each option has a drawback:

- A list of known 'bad' SRTM measurements allows a hacker to change just 1 bit in a component to create an entirely new SRTM hash that needs to be listed.
- A list of known 'good' SRTM measurements requires each new BIOS/PC combination measurement to be carefully added, which is slow. 
In addition, a bug fix for UEFI code can take a long time to design, build, retest, validate, and redeploy.

## Secure Launch—the Dynamic Root of Trust for Measurement (DRTM)

Windows Defender System Guard Secure Launch, first introduced in Windows 10 version 1809, aims to alleviate this issue by leveraging a technology known as the Dynamic Root of Trust for Measurement (DRTM). 
DRTM lets the system freely boot into untrusted code initially, but shortly after launches the system into a trusted state by taking control of all CPUs and forcing them down a well-known and measured code path. 
This has the benefit of allowing untrusted early UEFI code to boot the system, but then securely transitioning into a trusted state.

![System Guard Secure Launch](images/system-guard-secure-launch.png)

Secure Launch simplifies management of SRTM measurements because the launch code is now unrelated to a specific hardware configuration. This means the number of valid code measurements is small, and future updates can be deployed more widely and quickly.

## System Management Mode (SMM) protection

System Management Mode (SMM) is a special-purpose CPU mode in x86 microcontrollers that handles power management, hardware configuration, thermal monitoring, and anything else the manufacturer deems useful. 
Whenever one of these system operations is requested, a non-maskable interrupt (SMI) is invoked at runtime, which executes SMM code installed by the BIOS. 
SMM code executes in the highest privilege level and is invisible to the OS, which makes it an attractive target for malicious activity. Even if DRTM is used to late launch, SMM code can potentially access hypervisor memory and change the hypervisor. 
To defend against this, two techniques are used:

1. Paging protection to prevent inappropriate access to code and data
2. SMM hardware supervision and attestation

Paging protection can be implemented to lock certain code tables to be read-only to prevent tampering. 
This prevents access to any memory that has not been specifically assigned. 

A hardware-enforced processor feature known as a supervisor SMI handler can monitor the SMM and make sure it does not access any part of the address space that it is not supposed to. 

SMM protection is built on top of the Secure Launch technology and requires it to function. 
In the future, Windows will also measure this SMI Handler’s behavior and attest that no OS-owned memory has been tampered with. 

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








