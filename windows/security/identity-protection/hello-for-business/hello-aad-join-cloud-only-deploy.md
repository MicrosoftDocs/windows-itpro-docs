---
title: Azure Active Directory join cloud only deployment
description: Use this deployment guide to successfully use Azure Active Directory to join a Windows 10 device. 
keywords: identity, Hello, Active Directory, cloud, 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 06/03/2021
ms.reviewer: 
---
# Azure Active Directory Join Cloud Only Deployment

## Introduction

When you Azure Active Directory (Azure AD) join a Windows 10 device, the system prompts you to enroll in Windows Hello for Business by default. However, you may wish to disable the automatic Windows Hello for Business enrollment prompts.

> [!NOTE}
> During the out-of-box experience (OOBE) flow of an Azure AD join, you will see a provisioning PIN when you don’t have Intune. You can always cancel the PIN screen and set this cancellation with registry keys to prevent future prompts.

## Prerequisites  

This cloud only deployment will use Azure AD multi-factor authentication (MFA) during the Windows Hello for Business enrollment and there is no additional MFA configuration needed.  If you are not already registered in Azure AD MFA, you will be guided though the MFA registration as part of the Windows Hello for Business deployment enrollment process. The necessary Windows Hello for Business prerequisites for are located at [Cloud Only Deployment](hello-identity-verification.md#cloud-only-deployment).

> [!NOTE]
> It's possible for federated domains to enable the “Supports MFA” flag in your federated domain settings. This tells Azure AD that the federated IDP will perform the MFA challenge.

You can check and view this setting with the following MSOnline PowerShell command:

`Get-MsolDomainFederationSettings –DomainName <your federated domain name>`

## Use Intune to disable Windows Hello for Business enrollment  

We recommend that you disable or manage this behavior through an Intune policy using the steps in [Integrate Windows Hello for Business with Microsoft Intune](/mem/intune/protect/windows-hello).

However, not everyone uses Intune. The following method explains how to disable Windows Hello for Business enrollment without Intune, or through a third-party mobile device management (MDM).  If you are not running Intune in your organization, you can disable Windows Hello for Business via the registry. We have provided the underlying registry subkeys for disabling Windows Hello for Business.  

To disable this, run the following command.  Note that this impacts **all** Azure AD MFA scenarios for this federated domain.

`Set-MsolDomainFederationSettings -DomainName <your federated domain name> -SupportsMfa $false`

Example:

`Set-MsolDomainFederationSettings -DomainName contoso.com -SupportsMfa $false`

If you use this Supports MFA switch with value True, you will need to verify your federated IDP is correctly configured and working with the MFA adapter and provider used by your IDP.

## Create a Windows Hello for Business policy

1. Sign into the Microsoft Endpoint Manager admin center.
2. Go to **Devices** > **Enrollment** > **Enroll devices** > **Windows enrollment** > **Windows Hello for Business**. The Windows Hello for Business pane opens.
3. Select from the following options for Configure Windows Hello for Business:

   1. **Disabled**: If you do not want to enable Windows Hello for Business during device enrollment, select this option. When disabled, users cannot provision Windows Hello for Business. When set to Disabled, you can still configure the subsequent settings for Windows Hello for Business even though this policy won't enable Windows Hello for Business.

## Disable Windows Hello for Business enrollment without Intune

The information below can be pushed out to the devices through a third-party MDM, or some other method that you use to manage these devices, if you do not manage them with Intune.  This can also be set manually on the specific device(s).

These are Azure AD joined only systems and not domain joined systems, so these settings could be made in the registry on the device(s) when Intune is not used.

These are the registry settings an Intune policy would set. If you are not using Intune, it is recommended to use the Intune Device Policy registry settings manually to disable this.

Intune Device Policy: **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Policies\PassportForWork\<Tenant-ID>\Device\Policies**

These are the registry settings pushed from Intune for user policies for your reference.

Intune User Policy: **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Policies\PassportForWork\<Tenant-ID>\UserSid\Policies**
DWORD: **UsePassportForWork**
Value = **0** for Disable, or Value = **1** for Enable

These are the registry settings for Local or Group Policies for your reference.

Local/GPO User Policy: **HKEY_USERS\UserSID\SOFTWARE\Policies\Microsoft\PassportForWork**
Local/GPO Device Policy: **HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\PassportForWork**
DWORD: **Enabled**
Value = **0** for Disable or Value = **1** for Enable

If there is a conflicting Device policy and User policy, the device policy or computer policy would take precedence.  We do  not recommend creating Local/GPO registry settings that could conflict with an Intune policy. This could lead to unexpected results.  

## Related reference documents for Azure AD join scenarios

- [Azure AD joined devices](/azure/active-directory/devices/concept-azure-ad-join)
- [Plan your Azure Active Directory device deployment](/azure/active-directory/devices/plan-device-deployment)
- [How to: Plan your Azure AD join implementation](/azure/active-directory/devices/azureadjoin-plan)
- [How to manage the local administrators group on Azure AD joined devices](/azure/active-directory/devices/assign-local-admin)
- [Manage device identities using the Azure portal](/azure/active-directory/devices/device-management-azure-portal)
