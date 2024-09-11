---
title: Windows subscription activation
description: Learn how to step up from Windows Pro to a Windows Enterprise subscription or from Windows Eduction Pro to a Windows Education subscription.
ms.service: windows-client
ms.subservice: activation
ms.localizationpriority: medium
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.topic: concept-article
zone_pivot_groups: windows-versions-11-10
ms.date: 09/03/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Windows subscription activation

The subscription activation feature enables a "step-up" from Windows Pro edition to Enterprise edition or from Windows Pro Education edition to Education edition. This feature can be used with a subscription to Windows Enterprise E3 or E5 licenses.

> [!TIP]
>
> Windows Pro Education is analogous to Windows Pro, while Windows Education is analogous to Windows Enterprise. In other words, Windows Education is a step-up from Windows Pro Education, similar to how Windows Enterprise is a step-up from Windows Pro.

The subscription activation feature eliminates the need to manually deploy Enterprise or Education edition images on each target device, then later:

- Standing up on-premises key management services such as KMS or MAK based activation.
- Entering Generic Volume License Keys (GVLKs).
- Rebooting client devices.

For more information on how to deploy Enterprise licenses, see [Deploy Windows Enterprise licenses](deploy-enterprise-licenses.md).

## Subscription activation for Enterprise

Windows Enterprise E3 and E5 are available as online services via subscription. Windows Enterprise can be deployed in an organization without keys and reboots.

- Devices with a current Windows Pro edition license can be seamlessly upgraded to Windows Enterprise.
- Product key-based Windows Enterprise software licenses can be transitioned to Windows Enterprise subscriptions.

Organizations that have an enterprise agreement can also benefit from the service, using traditional Active Directory-joined devices. In this scenario, the Active Directory user that signs in on their device must be synchronized with Microsoft Entra ID using [Microsoft Entra Connect Sync](/azure/active-directory/hybrid/how-to-connect-sync-whatis).

> [!NOTE]
>
> Subscription activation is available for qualifying devices running currently supported versions of Windows. Subscription activation can't be used to upgrade to a newer version of Windows.

### Adding Conditional Access policy

Organizations that use the Subscription Activation feature to enable users to "step-up" from one version of Windows to another and use Conditional Access policies to control access need to exclude one of the following cloud apps from their Conditional Access policies using **Select Excluded Cloud Apps**:

- [Universal Store Service APIs and Web Application, AppID 45a330b1-b1ec-4cc1-9161-9f03992aa49f](/troubleshoot/azure/active-directory/verify-first-party-apps-sign-in#application-ids-of-commonly-used-microsoft-applications).

- [Windows Store for Business, AppID 45a330b1-b1ec-4cc1-9161-9f03992aa49f](/troubleshoot/azure/active-directory/verify-first-party-apps-sign-in#application-ids-of-commonly-used-microsoft-applications).

     > [!NOTE]
     > The Microsoft Store for Business and Microsoft Store for Education are retired. For more information, see [Microsoft Store for Business and Education retiring March 31, 2023](/lifecycle/announcements/microsoft-store-for-business-education-retiring).

Although the app ID is the same in both instances, the name of the cloud app depends on the tenant.

For more information about configuring exclusions in Conditional Access policies, see [Application exclusions](/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa#application-exclusions).

<!-- 8605089 -->

When a device has been offline for an extended period of time, the device might not reactivate automatically if this Conditional Access exclusion isn't in place. Setting this Conditional Access exclusion ensures that Subscription Activation continues to work seamlessly.

Starting with Windows 11, version 23H2 with [KB5034848](https://support.microsoft.com/help/5034848) or later, users are prompted for authentication with a toast notification when Subscription Activation needs to reactivate. The toast notification will show the following message:

> **Your account requires authentication**
>
> **Please sign in to your work or school account to verify your information.**

Additionally, in the [**Activation**](ms-settings:activation) pane, the following message might appear:

> **Please sign in to your work or school account to verify your information.**

The prompt for authentication usually occurs when a device has been offline for an extended period of time. This change eliminates the need for an exclusion in the Conditional Access policy for Windows 11, version 23H2 with [KB5034848](https://support.microsoft.com/help/5034848) or later. A Conditional Access policy can still be used with Windows 11, version 23H2 with [KB5034848](https://support.microsoft.com/help/5034848) or later if the prompt for user authentication via a toast notification isn't desired.

## Subscription activation for Education

Subscription activation for Education works the same as the Enterprise edition. However, in order to use subscription activation for Education, the device must have Windows Pro Education and an active subscription plan with an Enterprise license. For more information, see the [requirements](#windows-education-requirements) section.

## Inherited activation

Inherited activation allows Windows virtual machines to inherit activation state from their Windows client host. When a user with a Windows E3/E5 or A3/A5 license assigned creates a new Windows virtual machine (VM) using a Windows host, the VM inherits the activation state from a host machine. This behavior is independent of whether the user signs on with a local account or uses a Microsoft Entra account on a VM.

To support inherited activation, both the host computer and the VM must be running a currently supported version of Windows. The hypervisor platform must also be Windows Hyper-V.

## Requirements

### Windows Enterprise requirements

For Microsoft customers with Enterprise Agreements (EA) or Microsoft Products & Services Agreements (MPSA), the following requirements must be met:

- A supported version of Windows Pro or Enterprise edition installed on the devices to be upgraded.
- Microsoft Entra available for identity management.
- Devices must be Microsoft Entra joined or Microsoft Entra hybrid joined. Workgroup-joined or Microsoft Entra registered devices aren't supported.

For Microsoft customers that don't have EA or MPSA, Windows Enterprise E3/E5 or A3/A5 licenses can be obtained through a cloud solution provider (CSP). Identity management and device requirements are the same when using CSP to manage licenses. For more information about getting Windows Enterprise E3 through a CSP, see [Windows Enterprise E3 in CSP](windows-enterprise-e3-overview.md).

> [!NOTE]
>
> These requirements don't apply to general Windows client activation on Azure. Azure activation requires a connection to Azure KMS only. Azure KMS supports workgroup, hybrid, and Microsoft Entra joined VMs. In most scenarios, activation of Azure VMs happens automatically. For more information, see [Understanding Azure KMS endpoints for Windows product activation of Azure virtual machines](/troubleshoot/azure/virtual-machines/troubleshoot-activation-problems#understanding-azure-kms-endpoints-for-windows-product-activation-of-azure-virtual-machines).

> [!IMPORTANT]
>
> As of October 1, 2022, subscription activation is available for *commercial* and *GCC* tenants. It's currently not available on GCC High or DoD tenants. <!-- 6783128 --> For more information, see [Enable subscription activation with an existing EA](deploy-enterprise-licenses.md#enable-subscription-activation-with-an-existing-ea).

### Windows Education requirements

- A supported version of Windows Pro Education installed on the devices to be upgraded.

::: zone pivot="windows-11"

- A device with a Windows Pro Education digital license. This information can be confirmed in the [**Activation**](ms-settings:activation)pane of the **Settings** app under **Settings > System > Activation**.

::: zone-end

::: zone pivot="windows-10"

- A device with a Windows Pro Education digital license. This information can be confirmed in the [**Activation**](ms-settings:activation)pane of the **Settings** app under **Settings > Update & Security > Activation**.

::: zone-end

- The Education tenant must have an active subscription to Microsoft 365 with a Windows Enterprise license, or a Windows Enterprise or Education subscription.

- Devices must be Microsoft Entra joined or Microsoft Entra hybrid joined. Workgroup-joined or Microsoft Entra registered devices aren't supported.

> [!IMPORTANT]
>
> If Windows Pro is converted to Windows Pro Education, then subscription activation doesn't work. The device needs to be reimaged to Windows Pro Education for subscription activation to work. Alternatively, reimage the device directly to Windows Education.

## Benefits

With Windows Enterprise or Education editions, an organization can benefit from enterprise-level security and control. Previously, only organizations with a Microsoft Volume Licensing Agreement could deploy Education or Enterprise editions to their users. With Windows Enterprise E3/E5 or A3/A5 being available as an online service, it's available in select channels thus allowing all organizations to take advantage of enterprise-grade Windows features.

To compare Windows editions and review pricing, see the following sites:

- [Compare Windows editions](https://www.microsoft.com/en-us/windows/business/windows-10-pro-vs-windows-11-pro) <!-- Leaving in language reference in URL because URL without it doesn't redirect properly-->
- [Enterprise Mobility + Security Pricing Options](https://www.microsoft.com/microsoft-365/enterprise-mobility-security/compare-plans-and-pricing)

Benefits of moving to Windows as an online service include:

- Licenses for Windows Enterprise and Education are checked based on Microsoft Entra credentials. There's a systematic way to assign licenses to end users and groups in an organization.

- User sign-in triggers a silent edition upgrade, with no reboot required.

- Support for mobile worker and "Bring Your Own Device" (BYOD) or "Choose Your Own Device" (CYOD) activation. This support transitions away from on-premises KMS and MAK keys.

- Compliance support via license assignment.

- Licenses can be updated to different users dynamically, which allows optimization of the licensing investment against changing needs.

## How it works

The device is Microsoft Entra joined, for example from the [Access work or school](ms-settings:workplace) pane in the **Settings** app that can be found under **Settings** > **Accounts** > **Access work or school**.

Windows Enterprise is assigned to a user, for example through the Microsoft 365 admin center. When a licensed user signs in to a device that meets requirements using their Microsoft Entra credentials, Windows steps up from Pro edition to Enterprise, or from Pro Education to Education. Once the edition is stepped up, Enterprise/Education features are unlocked. When a user's subscription expires or is transferred to another user, the device reverts seamlessly to Windows Pro or Windows Pro Education edition, once the current subscription validity expires.

> [!NOTE]
>
> - Devices running a supported version of Windows Pro can get Windows Enterprise general availability channel on up to five devices for each user covered by the license. This limit also applies when stepping up from Windows Pro Education to Windows Education. This benefit doesn't include the long term servicing channel.
>
> - A Windows Pro device only steps up to Windows Enterprise edition when a **Windows Enterprise** license is assigned from the Microsoft 365 admin center.
>
> - A Windows Pro Education device only steps up to Windows Education edition a **Windows Enterprise** license is assigned from the Microsoft 365 admin center.

### Scenarios

#### Scenario #1

A supported version of Windows is being used. A Windows Enterprise E3 or E5 subscription is purchased, or there's an existing E3 or E5 subscription but Windows Enterprise isn't yet deployed.

All of the Windows Pro devices step-up to Windows Enterprise. When a subscription activation-enabled user signs in, devices that are already running Windows Enterprise migrate from KMS or MAK activated Enterprise edition to subscription activated Enterprise edition.

#### Scenario #2

Microsoft Entra joined devices or Active Directory-joined devices running a supported version of Windows are being used. Microsoft Entra synchronization is configured. The steps in [Deploy Windows Enterprise licenses](deploy-enterprise-licenses.md) are followed to get a $0 SKU and a new Windows Enterprise E3 or E5 license in Microsoft Entra ID. The license is then assigned to all of the Microsoft Entra users, which can be Active Directory-synced accounts. When that user signs in, the device automatically steps up from Windows Pro to Windows Enterprise or from Windows Pro Education to Windows Education.

#### Earlier versions of Windows

If devices are running Windows 7 or Windows 8.1, more steps are required. A wipe-and-load approach still works, but it can be easier to upgrade from Windows 7 Pro directly to a currently supported Windows 10 Enterprise edition. This path is supported, and completes the move in one step. However, versions of Windows newer than Windows 10 don't support upgrading from Windows 7 or Windows 8.1. For versions of Windows newer than Windows 10, an upgrade to Windows 10 would first be required, followed by upgrading to the version of Windows Enterprise newer than Windows 10. In this scenario, a wipe-and-load might be more practical.

### Licenses

The following policies apply to acquisition and renewal of licenses on devices:

- Upgraded devices attempt to renew licenses about every 30 days. They must be connected to the internet to successfully acquire or renew a license.

- If a device is disconnected from the internet, until its current subscription expires Windows reverts to Pro or Pro Education. As soon as the device is connected to the internet again, the license automatically renew.

- Up to five devices can be upgraded for each user license. If the user license is used for a sixth device, the computer where the user hasn't signed in for the longest time reverts to Pro or Pro Education.

- If a device meets the requirements and a licensed user signs in on that device, the device is upgraded.

Licenses can be reallocated from one user to another user, allowing optimization of the licensing investment against changing needs.

With a Microsoft Entra subscription, group-based licensing is the preferred method to assign Enterprise E3 and E5 licenses to users. For more information, see [Group-based licensing basics in Microsoft Entra ID](/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).

### Existing Enterprise deployments

With currently supported versions of Windows, subscription activation automatically pulls the firmware-embedded Windows activation key and activates the underlying Pro license. The license then steps up to Enterprise using subscription activation. This behavior automatically migrates devices from KMS or MAK activated Enterprise to subscription activated Enterprise.

Subscription activation doesn't remove the need to activate the underlying OS. This requirement still exists for running a genuine installation of Windows.

> [!CAUTION]
>
> Firmware-embedded Windows activation happens automatically only during Windows Setup out of box experience (OOBE).

If the computer has never been activated with a Pro key, use the following script from an elevated PowerShell console:

```powershell
$(Get-WmiObject SoftwareLicensingService).OA3xOriginalProductKey | foreach{ if ( $null -ne $_ ) { Write-Host "Installing"$_;changepk.exe /Productkey $_ } else { Write-Host "No key present" } }
```

### Obtaining a Microsoft Entra ID license

If an organization has an Enterprise Agreement (EA) or Software Assurance (SA):

- Organizations with a traditional EA must order a $0 SKU, process e-mails sent to the license administrator for the company, and assign licenses using Microsoft Entra ID. Ideally, licenses are assigned to groups using the Microsoft Entra ID P1 or P2 feature for group assignment. For more information, see [Enable subscription activation with an existing EA](./deploy-enterprise-licenses.md#enable-subscription-activation-with-an-existing-ea).

- The license administrator can assign licenses to Microsoft Entra users with the same process used for Microsoft 365 Apps.

- New EA/SA Windows Enterprise customers can acquire both an SA subscription and an associated $0 cloud subscription.

If an organization has a Microsoft Products & Services Agreement (MPSA):

- New customers are automatically emailed the details of the service. Follow the instructions and steps found in the email.

- Existing MPSA customers receive service activation emails that allow their customer administrator to assign users to the service.

- New MPSA customers who purchase the Software Subscription Windows Enterprise E3 and E5 are enabled for both the traditional key-based and new subscriptions activation method.

### Deploying licenses

For more information, see [Deploy Windows Enterprise licenses](deploy-enterprise-licenses.md).

## Virtual Desktop Access (VDA)

Subscriptions to Windows Enterprise are also available for virtualized clients. Enterprise E3 and E5 are available for Virtual Desktop Access (VDA) in Microsoft Azure or in another qualified multitenant hoster (QMTH).

Virtual machines (VMs) must be configured to enable Windows Enterprise subscriptions for VDA. Active Directory-joined and Microsoft Entra joined clients are supported. See [Enable VDA for Subscription Activation](vda-subscription-activation.md).

## Related content

- [Deploy Windows Enterprise licenses](deploy-enterprise-licenses.md).
- [Plan your Microsoft Entra hybrid join implementation](/entra/identity/devices/hybrid-join-plan).
- [Compare Windows editions](https://www.microsoft.com/windows/business/compare-windows-11).
- [Windows for business](https://www.microsoft.com/windows/business).
