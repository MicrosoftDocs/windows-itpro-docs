---
title: Windows Autopilot
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


# Windows Autopilot

**Applies to**

-   Windows 10

Windows Autopilot modernizes Windows deployment with a zero-touch, self-service process that runs immediately after powering on a new computer for the first time. With Windows Autopilot, and employee can receive a new device and configure it to be business-ready with just a few clicks.  

## In this guide

This guide is intended for use by an IT-specialist, system architect, or business decision maker. The guide provides an overview of how Windows Autopilot deployment works with detailed requirements, deployment scenarios, and platform capabilities. The document highlights options that are available to you when planning a modern, cloud-joined Windows 10 deployment strategy. Before you read this guide, you should have a good understanding of your organizational requirements.

When you are ready to deploy client devices with Windows Autopilot, see the detailed configuration procedures documented for the [platform](windows-autopilot-platforms.md) that you have chosen (recommended platform: [Intune](https://docs.microsoft.com/en-us/intune/enrollment-autopilot)).

The following topics are available in this guide:

<table><tr><td colspan=2><center>**Understanding Windows Autopilot**</center></td></tr>

<tr><td>[Overview of Windows Autopilot](windows-autopilot.md)<td>A review of Windows Autopilot is provided with a video walkthrough. Benefits and general requirements are discussed.<br>
<tr><td>[Requirements](windows-autopilot-requirements.md)<td> Detailed software, network, licensiing, and configuration requirments are provided.<br>
<tr><td>[What's new](windows-autopilot-whats-new.md)<td> Information is provided about new features of Windows Autopilot.<br>
<tr><td>[Platforms](windows-autopilot-platforms.md)<td> The platforms available for registering Windows Autopilot devices are summarized.<br>
<tr><td>[Scenarios and Capabilities](windows-autopilot-scenarios.md)<td> A summary is provided of Windows Autopilot deployment scenarios and capabilities.<br>
<tr><td>[Get started](demonstrate-deployment-on-vm.md)<td> A step-by-step walkthrough is provided for testing Windows Autopilot on a virtual machine or physical device with a free 30-day trial premium Intune account. <br>
</table>

**Deployment scenarios**<br>
[User-driven mode](user-driven.md): Requirements and validation steps for deploying a new Azure Active Directory (AAD) joined or hybrid AAD-joined Windows 10 device are provided.<br>
[Self-deploying mode](self-deploying.md):Requirements and validation steps for deploying a new Windows 10 device device with little to no user interaction are provided.<br>
[Windows Autopilot Reset](windows-autopilot-reset.md): Using Windows Autopilot Reset, a device can be restored to its original settings, taking it back to a business-ready state. Both local and remote reset scenarios are discussed.<br>
[Windows Autopilot for white glove deployment](white-glove.md): Requirements and procedures are described that enable additional policies and apps to be delivered to a Windows Autopilot device.<br>
[Support for existing devices](existing-devices.md): This topic describes how Windows Autopilot can be used to convert Windows 7 or Windows 8.1 domain-joined computers to AAD-joined computers running Windows 10.<br>

**Using Windows Autopilot**<br>
[Registering devices](add-devices.md): The process of registering a device with the Windows Autopilot deployment service is described.<br>
[Configuring device profiles](profiles.md): The device profile settings that specifie its behavior when it is deployed are described.<br>
[Enrollment status page](enrollment-status.md): Settings that are available on the Enrollment Status Page are described.<br>
[Bitlocker encryptions](bitlocker.md): Available options for configuring BitLocker on Windows Autopilot devices are described.<br>
[Troubleshooting Windows Autopilot](troubleshooting.md): Diagnotic event information and troubleshooting procedures are provided.<br>
[Known issues](known-issues.md): A list of current known issues and solutions is provided.<br>

**Support topics**<br>
[FAQ](autopilot-faq.md): Frequently asked questions on several topics are provided.<br>
[Support contacts](autopilot-support.md): Support information is provided.<br>
[Registration authorization](registration-auth.md): This article discusses how a CSP partner or OEM can obtain customer authorization to register Windows Autopilot devices.<br>

## Related topics

