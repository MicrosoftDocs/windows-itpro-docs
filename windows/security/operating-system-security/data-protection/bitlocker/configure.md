---
title: BitLocker configuration
description: Learn about the available options to configure BitLocker and how to configure them via Configuration Service Providers (CSP) or group policy (GPO).
ms.topic: how-to
ms.date: 10/03/2023
---

# BitLocker configuration

To configure BitLocker, you can use one of the following options:

- Configuration Service Provider (CSP): this option is usually used for devices that are managed by a Mobile Device Management (MDM) solution, like Microsoft Intune
- Group policy (GPO): this option can be used for devices that are joined to an Active Directory domain or managed by Microsoft Configuration Manager. GPO can also be used for devices that are not joined to an Active Directory domain, using the local group policy editor

The following table describes the common options to configure BitLocker, depending on the devices' join type:

| Join type | Configuration option |
|-|-|
| *Microsoft Entra joined* | CSP |
| *Microsoft Entra registered* | CSP |
| *Microsoft Entra hybrid joined* | CSP if the devices are enrolled in a MDM solution, otherwise GPO |
| *Active Directory joined devices* | GPO |

> [!NOTE]
> Windows Server doesn't support the configuration of BitLocker using CSP. Use GPO instead.

While many of the BitLocker policy settings can be configure using both CSP and GPO, there are some settings that are only available using one of the options. To learn about the policy settings available for both CSP and GPO, review the reference article [BitLocker policy settings](policy-settings.md).

[!INCLUDE [bitlocker](../../../../../includes/licensing/bitlocker-management.md)]

## Configure devices using CSP

The configuration of devices using CSP is a good option for devices that are managed by a MDM solution, like Microsoft Intune. These are usually devices that are *Microsoft Entra joined*, *Microsoft Entra registered* or *Microsoft Entra hybrid joined*.

The [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp) is used to configure BitLocker, and to report the status of different BitLocker functions to the MDM solution. With Microsoft Intune, you can leverage the BitLocker status in [compliance polices](/mem/intune/protect/device-compliance-get-started). Compliance policies can then be combined with [Conditional Access](/azure/active-directory/conditional-access/overview), which can prevent access to services like Exchange Online and SharePoint Online, based on the status of BitLocker.

> [!NOTE]
> For hardware that is compliant with Modern Standby and HSTI, [device encryption](device-encryption.md) is automatically turned on whenever a user Microsoft Entra joins a device. Microsoft Entra ID provides a portal where recovery keys are also backed up, so users can retrieve their own recovery keys for self-service, if necessary.

To learn more about the Intune options to configure and monitor BitLocker, check the following articles:

- [Manage BitLocker policy for Windows devices with Intune](/mem/intune/protect/encrypt-devices#rotate-bitlocker-recovery-keys)
- [Monitor device encryption with Intune](/mem/intune/protect/encryption-monitor)

## Configure devices using GPO

Organizations that image their device using Configuration Manager can use an existing task sequence to [pre-provision BitLocker](/configmgr/osd/understand/task-sequence-steps#BKMK_PreProvisionBitLocker) encryption while in Windows Preinstallation Environment (WinPE), and can then [enable protection](/configmgr/osd/understand/task-sequence-steps#BKMK_EnableBitLocker). These steps during an operating system deployment can help ensure that computers are encrypted from the start, even before users receive them. As part of the imaging process, an organization could also decide to use Configuration Manager to pre-set any desired [BitLocker policy settings](policy-settings.md).


### Configure and manage servers

Servers are often installed, configured, and deployed using PowerShell; therefore, the recommendation is to also use [PowerShell to enable BitLocker on a server](operations-guide.md), ideally as part of the initial setup. BitLocker is an Optional Component (OC) in Windows Server; therefore, follow the directions in [BitLocker: How to deploy on Windows Server](bitlocker-how-to-deploy-on-windows-server.md) to add the BitLocker OC.

The Minimal Server Interface is a prerequisite for some of the BitLocker administration tools. On a [Server Core](/windows-server/get-started/getting-started-with-server-core/) installation, the necessary GUI components must be added first. The steps to add shell components to Server Core are described in [Using Features on Demand with Updated Systems and Patched Images](/archive/blogs/server_core/using-features-on-demand-with-updated-systems-and-patched-images) and [How to update local source media to add roles and features](/archive/blogs/joscon/how-to-update-local-source-media-to-add-roles-and-features).  

If a server is being installed manually, such as a stand-alone server, then choosing [Server with Desktop Experience](/windows-server/get-started/getting-started-with-server-with-desktop-experience/) is the easiest path because it avoids performing the steps to add a GUI to Server Core.

 Additionally, lights-out data centers can take advantage of the enhanced security of a second factor while avoiding the need for user intervention during reboots by optionally using a combination of BitLocker (TPM+PIN) and BitLocker Network Unlock. BitLocker Network Unlock brings together the best of hardware protection, location dependence, and automatic unlock, while in the trusted location. For the configuration steps, see [BitLocker: How to enable Network Unlock](network-unlock.md).

