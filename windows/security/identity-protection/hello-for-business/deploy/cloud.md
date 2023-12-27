---
title: Windows Hello for Business cloud-only deployment
description: Learn how to configure Windows Hello for Business in a cloud-only deployment scenario.
ms.date: 10/03/2023
ms.topic: how-to
---
# Cloud-only deployment

[!INCLUDE [apply-to-cloud](includes/apply-to-cloud.md)]

## Introduction

When you Microsoft Entra join a device, the system attempts to automatically enroll you in Windows Hello for Business, by default. If you want to use Windows Hello for Business in a cloud-only environment, there's no additional configuration needed.

If you want to disable the automatic Windows Hello for Business enrollment prompt, you can configure your devices with a policy setting or registry key. For more information, see [Disable Windows Hello for Business]([Disable Windows Hello for Business enrollment](../configure.md#disable-windows-hello-for-business-enrollment).

> [!NOTE]
> During the out-of-box experience (OOBE) flow of a Microsoft Entra join, you are guided to enroll in Windows Hello for Business when you don't have Intune. You can cancel the PIN screen and configure this cancellation with registry keys to prevent future prompts.

## Prerequisites

> [!div class="checklist"]
> The following prerequisites must be met for a cloud-only deployment:
>
> - Authentication to Microsoft Entra ID
> - Microsoft Entra multifactor authentication
> - Microsoft Entra ID P1 or P2 subscription - optional, needed for automatic MDM enrollment when the device joins Microsoft Entra ID

Cloud-only deployments use Microsoft Entra multifactor authentication (MFA) during Windows Hello for Business enrollment, and there's no additional MFA configuration needed. If you aren't already registered in MFA, you'll be guided through the MFA registration as part of the Windows Hello for Business enrollment process.

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

If you configure the flag with a value of either `acceptIfMfaDoneByFederatedIdp` (default) or `enforceMfaByFederatedIdp`, you must verify that your federated IDP is correctly configured and working with the MFA adapter and provider used by your IdP.
