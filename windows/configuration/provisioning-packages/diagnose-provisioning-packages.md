---
title: Diagnose Provisioning Packages
description: Diagnose general failures in provisioning.
ms.reviewer: 
manager: aaroncz
ms.author: lizlong 
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: lizgt2000
ms.date: 01/18/2023
ms.collection: highpri
---

# Diagnose Provisioning Packages

This article helps diagnose common issues with applying provisioning packages. You can use the [MdmDiagnosticsTool](/windows/client-management/diagnose-mdm-failures-in-windows-10) to diagnose general provisioning failures.

## Unable to apply power settings

When applying a provisioning package (PPKG) containing power settings, elevated permissions are required. Because elevated permissions are required, power settings applied using the user context after the [initial setup](/windows/configuration/provisioning-packages/provisioning-apply-package#after-initial-setup) results in the error `STATUS_PRIVILEGE_NOT_HELD (HRESULT=0xc0000061)` because an incorrect security context was used.

To apply the power settings successfully with the [correct security context](/windows/win32/services/localsystem-account), place the PPKG in `%WINDIR%/Provisioning/Packages` directory, and reboot the device. For more information, see [Configure power settings](/windows-hardware/customize/power-settings/configure-power-settings).

## Unable to perform bulk enrollment in Azure AD

When [enrolling devices into Azure AD using provisioning packages](https://techcommunity.microsoft.com/t5/intune-customer-success/bulk-join-a-windows-device-to-azure-ad-and-microsoft-endpoint/ba-p/2381400), the bulk token request will be rejected, if the user requesting a bulk token is not authorized to grant application consent. For more information, see [Configure how users consent to applications](/azure/active-directory/manage-apps/configure-user-consent).

> [!NOTE]
> When obtaining the bulk token, you should select "No, sign in to this app only" when prompted for authentication. If you select "OK" instead without also selecting "Allow my organization to manage my device", the bulk token request may be rejected.

## Unable to apply a multivariant provisioning package

When applying a [multivariant package](/windows/configuration/provisioning-packages/provisioning-multivariant), it may be difficult to diagnose why a certain target did not get applied. There may have been improperly authored conditions that did not evaluate as expected.

Starting in Windows 11, version 22H2, [MdmDiagnosticsTool](/windows/client-management/diagnose-mdm-failures-in-windows-10) includes multivariant condition values to diagnose problems with multivariant packages to determine why the package was not applied.

You can use the following PowerShell example to review the multivariant conditions in the `MDMDiagReport.xml` report:

```powershell
([XML](Get-Content MDMDiagReport.xml)).SelectNodes('//Multivariant') | Select -ExpandProperty Condition
```
