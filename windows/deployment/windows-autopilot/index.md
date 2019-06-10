---
title: Windows Autopilot deployment
description: Windows Autopilot deployment
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.reviewer: mniehaus
manager: laurawi
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot deployment

**Applies to**

-   Windows 10

Windows Autopilot is a zero-touch, self-service Windows deployment platform introduced with Windows 10, version 1703. The Windows Autopilot process runs immediately after powering on a new computer for the first time, enabling employees to configure new devices to be business-ready with just a few clicks.  

This guide is intended for use by an IT-specialist, system architect, or business decision maker. The guide provides information about how Windows Autopilot deployment works, including detailed requirements, deployment scenarios, and platform capabilities. The document highlights options that are available to you when planning a modern, cloud-joined Windows 10 deployment strategy. Links are provided to detailed step by step configuration procedures.

## In this guide

<table border="0">
<tr><td>[What's new](windows-autopilot-whats-new.md)<td>Windows Autopilot is always being updated with new features! Check this topic to read about the latests capabilities.
</table>

### Understanding Windows Autopilot

<table>
<tr><td>[Overview of Windows Autopilot](windows-autopilot.md)<td>A review of Windows Autopilot is provided with a video walkthrough. Benefits and general requirements are discussed.
<tr><td>[Requirements](windows-autopilot-requirements.md)<td>Detailed software, network, licensiing, and configuration requirments are provided.
<tr><td>[Scenarios and Capabilities](windows-autopilot-scenarios.md)<td>A summary of Windows Autopilot deployment scenarios and capabilities.
<tr><td>[Get started](demonstrate-deployment-on-vm.md)<td>Interested in trying out Autopilot? See this step-by-step walkthrough to test Windows Autopilot on a virtual machine or physical device with a free 30-day trial premium Intune account.
</table>

### Deployment scenarios

<table>
<tr><td>[User-driven mode](user-driven.md)<td>Requirements and validation steps for deploying a new Azure Active Directory (AAD) joined or hybrid AAD-joined Windows 10 device are provided.
<tr><td>[Self-deploying mode](self-deploying.md)<td>Requirements and validation steps for deploying a new Windows 10 device device with little to no user interaction are provided.
<tr><td>[Windows Autopilot Reset](windows-autopilot-reset.md)<td>Using Windows Autopilot Reset, a device can be restored to its original settings, taking it back to a business-ready state. Both local and remote reset scenarios are discussed.
<tr><td>[Windows Autopilot for white glove deployment](white-glove.md)<td>Requirements and procedures are described that enable additional policies and apps to be delivered to a Windows Autopilot device.
<tr><td>[Support for existing devices](existing-devices.md)<td>This topic describes how Windows Autopilot can be used to convert Windows 7 or Windows 8.1 domain-joined computers to AAD-joined computers running Windows 10.
</table>

### Using Windows Autopilot

<table>
<tr><td>[Registering devices](add-devices.md)<td>The process of registering a device with the Windows Autopilot deployment service is described.
<tr><td>[Configuring device profiles](profiles.md)<td>The device profile settings that specifie its behavior when it is deployed are described.
<tr><td>[Enrollment status page](enrollment-status.md)<td>Settings that are available on the Enrollment Status Page are described.
<tr><td>[Bitlocker encryptions](bitlocker.md)<td> Available options for configuring BitLocker on Windows Autopilot devices are described.
<tr><td>[Troubleshooting Windows Autopilot](troubleshooting.md)<td>Diagnotic event information and troubleshooting procedures are provided.
<tr><td>[Known issues](known-issues.md)<td>A list of current known issues and solutions is provided.
</table>

### Support topics

<table>
<tr><td>[FAQ](autopilot-faq.md)<td>Frequently asked questions on several topics are provided.
<tr><td>[Support contacts](autopilot-support.md)<td>Support information is provided.
<tr><td>[Registration authorization](registration-auth.md)<td>This article discusses how a CSP partner or OEM can obtain customer authorization to register Windows Autopilot devices.
</table>

## Related topics

[Windows Autopilot](https://www.microsoft.com/windowsforbusiness/windows-autopilot)