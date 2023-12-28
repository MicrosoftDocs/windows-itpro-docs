---
title: Windows Hello for Business cloud-only deployment
description: Learn how to configure Windows Hello for Business in a cloud-only deployment scenario.
ms.date: 10/03/2023
ms.topic: how-to
---
# Cloud-only deployment

[!INCLUDE [apply-to-cloud](includes/apply-to-cloud.md)]

[!INCLUDE [requirements](includes/requirements.md)]

> [!div class="checklist"]
>
> - [Authentication](index.md#authentication)
> - [Device configuration](index.md#device-configuration)
> - [Licensing for cloud services](index.md#licensing-for-cloud-services)
> - [Prepare users to use Windows Hello](index.md#prepare-users-to-use-windows-hello)

## Configure and enroll in Windows Hello for Business

When you Microsoft Entra join a device, the system attempts to automatically enroll you in Windows Hello for Business, by default. If you want to use Windows Hello for Business in a cloud-only environment with its default settings, there's no additional configuration needed.

If you want to disable the automatic Windows Hello for Business enrollment prompt, you can configure your devices with a policy setting or registry key. For more information, see [Disable Windows Hello for Business]([Disable Windows Hello for Business enrollment](../configure.md#disable-windows-hello-for-business-enrollment).

> [!NOTE]
> During the out-of-box experience (OOBE) flow of a Microsoft Entra join, you are guided to enroll in Windows Hello for Business when you don't have Intune. You can cancel the PIN screen and configure this cancellation with registry keys to prevent future prompts.

Cloud-only deployments use Microsoft Entra multifactor authentication (MFA) during Windows Hello for Business enrollment, and there's no additional MFA configuration needed. If you aren't already registered in MFA, you'll be guided through the MFA registration as part of the Windows Hello for Business enrollment process.
