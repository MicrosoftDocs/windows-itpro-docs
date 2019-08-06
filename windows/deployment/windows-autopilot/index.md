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
<tr><td><a href="windows-autopilot-whats-new.md">What's new</a> <td>Windows Autopilot is always being updated with new features! Check this topic to read about the latests capabilities.
</table>

### Understanding Windows Autopilot

<table>
<tr><td><a href="windows-autopilot.md">Overview of Windows Autopilot</a><td>A review of Windows Autopilot is provided with a video walkthrough. Benefits and general requirements are discussed.
<tr><td><a href="windows-autopilot-requirements.md">Requirements</a><td>Detailed software, network, licensiing, and configuration requirments are provided.
<tr><td><a href="windows-autopilot-scenarios.md">Scenarios and Capabilities</a><td>A summary of Windows Autopilot deployment scenarios and capabilities.
<tr><td><a href="demonstrate-deployment-on-vm.md">Get started</a><td>Interested in trying out Autopilot? See this step-by-step walkthrough to test Windows Autopilot on a virtual machine or physical device with a free 30-day trial premium Intune account.
</table>

### Deployment scenarios

<table>
<tr><td><a href="user-driven.md">User-driven mode</a><td>Requirements and validation steps for deploying a new Azure Active Directory (AAD) joined or hybrid AAD-joined Windows 10 device are provided.
<tr><td><a href="self-deploying.md">Self-deploying mode</a><td>Requirements and validation steps for deploying a new Windows 10 device with little to no user interaction are provided.
<tr><td><a href="windows-autopilot-reset.md">Windows Autopilot Reset</a><td>Using Windows Autopilot Reset, a device can be restored to its original settings, taking it back to a business-ready state. Both local and remote reset scenarios are discussed.
<tr><td><a href="white-glove.md">Windows Autopilot for white glove deployment</a><td>Requirements and procedures are described that enable additional policies and apps to be delivered to a Windows Autopilot device.
<tr><td><a href="existing-devices.md">Support for existing devices</a><td>This topic describes how Windows Autopilot can be used to convert Windows 7 or Windows 8.1 domain-joined computers to AAD-joined computers running Windows 10.
</table>

### Using Windows Autopilot

<table>
<tr><td><a href="add-devices.md">Registering devices</a><td>The process of registering a device with the Windows Autopilot deployment service is described.
<tr><td><a href="profiles.md">Configuring device profiles</a><td>The device profile settings that specifie its behavior when it is deployed are described.
<tr><td><a href="enrollment-status.md">Enrollment status page</a><td>Settings that are available on the Enrollment Status Page are described.
<tr><td><a href="bitlocker.md">Bitlocker encryption</a><td> Available options for configuring BitLocker on Windows Autopilot devices are described.
<tr><td><a href="troubleshooting.md">Troubleshooting Windows Autopilot</a><td>Diagnotic event information and troubleshooting procedures are provided.
<tr><td><a href="known-issues.md">Known issues</a><td>A list of current known issues and solutions is provided.
</table>

### Support topics

<table>
<tr><td><a href="autopilot-faq.md">FAQ</a><td>Frequently asked questions on several topics are provided.
<tr><td><a href="autopilot-support.md">Support contacts</a><td>Support information is provided.
<tr><td><a href="registration-auth.md">Registration authorization</a><td>This article discusses how a CSP partner or OEM can obtain customer authorization to register Windows Autopilot devices.
<tr><td><a href="autopilot-mbr.md">Motherboard replacement</a><td>Information about how to deal with Autopilot registration and device repair issues is provided.
</table>

## Related topics

[Windows Autopilot](https://www.microsoft.com/windowsforbusiness/windows-autopilot)