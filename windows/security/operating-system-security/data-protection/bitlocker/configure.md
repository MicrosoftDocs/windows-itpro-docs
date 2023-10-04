---
title: BitLocker settings and configuration
description: Learn about the available options to configure BitLocker and how to configure them via Configuration Service Providers (CSP) or group policy (GPO).
ms.topic: how-to
ms.date: 10/03/2023
---

# BitLocker settings and configuration

This article describes the Personal Data Encryption (BitLocker) settings and how to configure them via Microsoft Intune or Configuration Service Providers (CSP).

## BitLocker settings

## Configure BitLocker with Microsoft Intune

## Configure BitLocker with CSP

## Disable BitLocker

### Disable BitLocker with a settings catalog policy in Intune

### Disable BitLocker with CSP

## Decrypt BitLocker-encrypted content

## Next steps

- Review the [Personal Data Encryption (BitLocker) FAQ](faq.yml)




## Configure Credential Guard

This article describes how to configure Credential Guard using Microsoft Intune, Group Policy, or the registry.

## Enable Credential Guard

Credential Guard should be enabled before a device is joined to a domain or before a domain user signs in for the first time. If Credential Guard is enabled after domain join, the user and device secrets may already be compromised.

To enable Credential Guard, you can use:

- Microsoft Intune/MDM
- Group policy
- Registry

### Configure Credential Guard with group policy

### Configure Credential Guard with registry settings

### Verify if Credential Guard is enabled

#### System Information

#### PowerShell

#### Event viewer

## Disable Credential Guard

### Disable Credential Guard with Intune

### Disable  Credential Guard with group policy

### Disable Credential Guard with registry settings

## Next steps


# BitLocker management

The ideal solution for BitLocker management is to eliminate the need for IT administrators to set management policies using tools or other mechanisms by having Windows perform tasks that are more practical to automate. This vision leverages modern hardware developments. The growth of TPM 2.0, secure boot, and other hardware improvements, for example, have helped to alleviate the support burden on help desks and a decrease in support-call volumes, yielding improved user satisfaction. Windows continues to be the focus for new features and improvements for built-in encryption management, such as automatically enabling encryption on devices that support Modern Standby beginning with Windows 8.1.

Though much Windows [BitLocker documentation](index.md) has been published, customers frequently ask for recommendations and pointers to specific, task-oriented documentation that is both easy to digest and focused on how to deploy and manage BitLocker. This article links to relevant documentation, products, and services to help answer this and other related frequently asked questions, and also provides BitLocker recommendations for different types of computers.

[!INCLUDE [bitlocker](../../../../../includes/licensing/bitlocker-management.md)]

## Managing domain-joined computers and moving to cloud  

Companies that image their own computers using Configuration Manager can use an existing task sequence to [pre-provision BitLocker](/configmgr/osd/understand/task-sequence-steps#BKMK_PreProvisionBitLocker) encryption while in Windows Preinstallation Environment (WinPE) and can then [enable protection](/configmgr/osd/understand/task-sequence-steps#BKMK_EnableBitLocker). These steps during an operating system deployment can help ensure that computers are encrypted from the start, even before users receive them. As part of the imaging process, a company could also decide to use Configuration Manager to pre-set any desired [BitLocker policy settings](policy-settings.md).

Enterprises can use [Microsoft BitLocker Administration and Monitoring (MBAM)](/microsoft-desktop-optimization-pack/mbam-v25/) to manage client computers with BitLocker that are domain-joined on-premises until [mainstream support ends in July 2019](/lifecycle/products/?alpha=Microsoft%20BitLocker%20Administration%20and%20Monitoring%202.5%20Service%20Pack%201%2F) or they can receive extended support until April 2026. Thus, over the next few years, a good strategy for enterprises will be to plan and move to cloud-based management for BitLocker. Refer to the [PowerShell examples](#powershell-examples) to see how to store recovery keys in Azure Active Directory (Azure AD).

> [!IMPORTANT]
> Microsoft BitLocker Administration and Monitoring (MBAM) capabilities are offered through Configuration Manager BitLocker Management. See [Plan for BitLocker management](/mem/configmgr/protect/plan-design/bitlocker-management) in the Configuration Manager documentation for additional information.

## Managing devices joined to Azure Active Directory

Devices joined to Azure AD are managed using Mobile Device Management (MDM) policy from an MDM solution such as Microsoft Intune. Prior to Windows 10, version 1809, only local administrators can enable BitLocker via Intune policy. Starting with Windows 10, version 1809, Intune can enable BitLocker for standard users. [BitLocker Device Encryption](bitlocker-device-encryption.md) status can be queried from managed machines via the [Policy Configuration Settings Provider (CSP)](/windows/client-management/mdm/policy-configuration-service-provider/), which reports on whether BitLocker Device Encryption is enabled on the device. Compliance with BitLocker Device Encryption policy can be a requirement for [Conditional Access](https://www.microsoft.com/cloud-platform/conditional-access/) to services like Exchange Online and SharePoint Online.

Starting with Windows 10 version 1703, the enablement of BitLocker can be triggered over MDM either by the [Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider/) or the [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp/). The BitLocker CSP adds policy options that go beyond ensuring that encryption has occurred, and is available on computers that run Windows 11, Windows 10, and on Windows phones.

For hardware that is compliant with Modern Standby and HSTI, when using either of these features, [BitLocker Device Encryption](bitlocker-device-encryption.md) is automatically turned on whenever the user joins a device to Azure AD. Azure AD provides a portal where recovery keys are also backed up, so users can retrieve their own recovery key for self-service, if necessary. For older devices that aren't yet encrypted, beginning with Windows 10 version 1703, admins can use the [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp/) to trigger encryption and store the recovery key in Azure AD. This process and feature is applicable to Azure Hybrid AD as well.

## Managing workplace-joined PCs and phones

For Windows PCs and Windows Phones that are enrolled using **Connect to work or school account**, BitLocker Device Encryption is managed over MDM, the same as devices joined to Azure AD.

## Manage servers

Servers are often installed, configured, and deployed using PowerShell; therefore, the recommendation is to also use [PowerShell to enable BitLocker on a server](manage.md#bitlocker-cmdlets-for-windows-powershell), ideally as part of the initial setup. BitLocker is an Optional Component (OC) in Windows Server; therefore, follow the directions in [BitLocker: How to deploy on Windows Server 2012 and later](bitlocker-how-to-deploy-on-windows-server.md) to add the BitLocker OC.

The Minimal Server Interface is a prerequisite for some of the BitLocker administration tools. On a [Server Core](/windows-server/get-started/getting-started-with-server-core/) installation, the necessary GUI components must be added first. The steps to add shell components to Server Core are described in [Using Features on Demand with Updated Systems and Patched Images](/archive/blogs/server_core/using-features-on-demand-with-updated-systems-and-patched-images) and [How to update local source media to add roles and features](/archive/blogs/joscon/how-to-update-local-source-media-to-add-roles-and-features).  

If a server is being installed manually, such as a stand-alone server, then choosing [Server with Desktop Experience](/windows-server/get-started/getting-started-with-server-with-desktop-experience/) is the easiest path because it avoids performing the steps to add a GUI to Server Core.

 Additionally, lights-out data centers can take advantage of the enhanced security of a second factor while avoiding the need for user intervention during reboots by optionally using a combination of BitLocker (TPM+PIN) and BitLocker Network Unlock. BitLocker Network Unlock brings together the best of hardware protection, location dependence, and automatic unlock, while in the trusted location. For the configuration steps, see [BitLocker: How to enable Network Unlock](network-unlock.md).
 For more information, see the BitLocker FAQs article and other useful links in [Related Articles](#related-articles).


