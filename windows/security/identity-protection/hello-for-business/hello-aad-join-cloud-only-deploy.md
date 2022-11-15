---
title: Azure Active Directory join cloud only deployment
description: Use this deployment guide to successfully use Azure Active Directory to join a Windows 10 or Windows 11 device.
ms.prod: windows-client
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 06/23/2021
author: paolomatarazzo
ms.author: paoloma
ms.reviewer: prsriva
manager: aaroncz
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
ms.technology: itpro-security
---
# Azure Active Directory join cloud only deployment

## Introduction

When you Azure Active Directory (Azure AD) join a Windows 10 or Windows 11 device, the system prompts you to enroll in Windows Hello for Business by default. If you want to use Windows Hello for Business in your cloud only environment, then there's no additional configuration needed.

You may wish to disable the automatic Windows Hello for Business enrollment prompts if you aren't ready to use it in your environment. Instructions on how to disable Windows Hello for Business enrollment in a cloud only environment are included below.

> [!NOTE]
> During the out-of-box experience (OOBE) flow of an Azure AD join, you will see a provisioning PIN when you don’t have Intune. You can always cancel the PIN screen and set this cancellation with registry keys to prevent future prompts.

## Prerequisites

Cloud only deployments will use Azure AD multi-factor authentication (MFA) during Windows Hello for Business (WHfB) enrollment and there's no additional MFA configuration needed. If you aren't already registered in Azure AD MFA, you'll be guided through the MFA registration as part of the Windows Hello for Business enrollment process.

The necessary Windows Hello for Business prerequisites are located at [Cloud Only Deployment](hello-identity-verification.md#azure-ad-cloud-only-deployment).

Also note that it's possible for federated domains to enable the “Supports MFA” flag in your federated domain settings. This flag tells Azure AD that the federated IDP will perform the MFA challenge.

Check and view this setting with the following MSOnline PowerShell command:

`Get-MsolDomainFederationSettings –DomainName <your federated domain name>`

To disable this setting, run the following command. This change impacts ALL Azure AD MFA scenarios for this federated domain.

`Set-MsolDomainFederationSettings -DomainName <your federated domain name> -SupportsMfa $false`

Example:

`Set-MsolDomainFederationSettings -DomainName contoso.com -SupportsMfa $false`

If you use this Supports MFA switch with value **True**, you must verify that your federated IDP is correctly configured and working with the MFA adapter and provider used by your IDP.

## Use Intune to disable Windows Hello for Business enrollment

We recommend that you disable or manage Windows Hello for Business provisioning behavior through an Intune policy. For more specific information, see [Integrate Windows Hello for Business with Microsoft Intune](/mem/intune/protect/windows-hello).

### Disable Windows Hello for Business using Intune Enrollment policy

The following method explains how to disable Windows Hello for Business enrollment without Intune.

1. Sign into the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Go to **Devices** > **Enrollment** > **Enroll devices** > **Windows enrollment** > **Windows Hello for Business**. The Windows Hello for Business pane opens.
3. If you don't want to enable Windows Hello for Business during device enrollment, select **Disabled** for **Configure Windows Hello for Business**.

    When disabled, users can't provision Windows Hello for Business. When set to Disabled, you can still configure the subsequent settings for Windows Hello for Business even though this policy won't enable Windows Hello for Business.

> [!NOTE]
> This policy is only applied during new device enrollments. For currently enrolled devices, you can [set the same settings in a device configuration policy](hello-manage-in-organization.md).

## Disable Windows Hello for Business enrollment without Intune

If you don't use Intune in your organization, then you can disable Windows Hello for Business using the registry. You can use a third-party MDM, or some other method that you use to manage these devices. Because these systems are Azure AD Joined only, and not domain joined, these settings can also be made manually in the registry.

Intune uses the following registry keys: **`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Policies\PassportForWork\<Tenant-ID>\Device\Policies`**

To look up your Tenant ID, see [How to find your Azure Active Directory tenant ID](/azure/active-directory/fundamentals/active-directory-how-to-find-tenant)

These registry settings are pushed from Intune for user policies:

- Intune User Policy: **`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Policies\PassportForWork\<Tenant-ID>\UserSid\Policies`**
- DWORD: **UsePassportForWork**
- Value = **0** for Disable, or Value = **1** for Enable

These registry settings can be applied from Local or Group Policies:

- Local/GPO User Policy: **`HKEY_USERS\UserSID\SOFTWARE\Policies\Microsoft\PassportForWork`**
- Local/GPO Device Policy: **`HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\PassportForWork`**
- DWORD: **Enabled**
- Value = **0** for Disable or Value = **1** for Enable

If there's a conflicting Device policy and User policy, the User policy would take precedence. We don't recommend creating Local/GPO registry settings that could conflict with an Intune policy. This conflict could lead to unexpected results.

## Related reference documents for Azure AD join scenarios

- [Azure AD-joined devices](/azure/active-directory/devices/concept-azure-ad-join)
- [Plan your Azure Active Directory device deployment](/azure/active-directory/devices/plan-device-deployment)
- [How to: Plan your Azure AD join implementation](/azure/active-directory/devices/azureadjoin-plan)
- [How to manage the local administrators group on Azure AD-joined devices](/azure/active-directory/devices/assign-local-admin)
- [Manage device identities using the Azure portal](/azure/active-directory/devices/device-management-azure-portal)
- [Azure AD Join Single Sign-on Deployment](hello-hybrid-aadj-sso.md)
