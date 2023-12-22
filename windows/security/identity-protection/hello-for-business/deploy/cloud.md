---
title: Windows Hello for Business cloud-only deployment
description: Learn how to configure Windows Hello for Business in a cloud-only deployment scenario.
ms.date: 10/03/2023
ms.topic: how-to
---
# Cloud-only deployment

[!INCLUDE [apply-to-cloud](includes/apply-to-cloud.md)]

## Introduction

When you Microsoft Entra join a Windows device, the system prompts you to enroll in Windows Hello for Business by default. If you want to use Windows Hello for Business in a cloud-only environment, there's no additional configuration needed.

You may wish to disable the automatic Windows Hello for Business enrollment prompts if you aren't ready to use it in your environment. This article describes how to disable Windows Hello for Business enrollment in a cloud only environment.

> [!NOTE]
> During the out-of-box experience (OOBE) flow of a Microsoft Entra join, you will see a provisioning PIN when you don't have Intune. You can always cancel the PIN screen and set this cancellation with registry keys to prevent future prompts.

## Prerequisites

Cloud only deployments will use Microsoft Entra multifactor authentication (MFA) during Windows Hello for Business enrollment, and there's no additional MFA configuration needed. If you aren't already registered in MFA, you'll be guided through the MFA registration as part of the Windows Hello for Business enrollment process.

The necessary Windows Hello for Business prerequisites are located at [Cloud Only Deployment](requirements.md#microsoft-entra-cloud-only-deployment).

It's possible for federated domains to configure the *FederatedIdpMfaBehavior* flag. The flag instructs Microsoft Entra ID to accept, enforce, or reject the MFA challenge from the federated IdP. For more information, see [federatedIdpMfaBehavior values](/graph/api/resources/internaldomainfederation#federatedidpmfabehavior-values). To check this setting, use the following PowerShell command:

```powershell
Connect-MgGraph
$DomainId = "<your federated domain name>"
Get-MgDomainFederationConfiguration -DomainId $DomainId |fl
```

To reject the MFA claim from the federated IdP, use the following command. This change impacts all MFA scenarios for the federated domain.

```powershell
Update-MgDomainFederationConfiguration -DomainId $DomainId -FederatedIdpMfaBehavior rejectMfaByFederatedIdp
```

If you use configure the flag with a value of either `acceptIfMfaDoneByFederatedIdp` (default) or `enforceMfaByFederatedIdp`, you must verify that your federated IDP is correctly configured and working with the MFA adapter and provider used by your IdP.

## Use Intune to disable Windows Hello for Business enrollment

We recommend that you disable or manage Windows Hello for Business provisioning behavior through an Intune policy. For more specific information, see [Integrate Windows Hello for Business with Microsoft Intune](/mem/intune/protect/windows-hello).

### Disable Windows Hello for Business using Intune Enrollment policy

The following method explains how to disable Windows Hello for Business enrollment using Intune.

1. Sign into the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Go to **Devices** > **Enrollment** > **Enroll devices** > **Windows enrollment** > **Windows Hello for Business**. The Windows Hello for Business pane opens.
3. If you don't want to enable Windows Hello for Business during device enrollment, select **Disabled** for **Configure Windows Hello for Business**.

    When disabled, users can't provision Windows Hello for Business. When set to Disabled, you can still configure the subsequent settings for Windows Hello for Business even though this policy won't enable Windows Hello for Business.

> [!NOTE]
> This policy is only applied during new device enrollments. For currently enrolled devices, you can [set the same settings in a device configuration policy](../hello-manage-in-organization.md).


