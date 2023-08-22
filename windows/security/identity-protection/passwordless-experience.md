---
title: Passwordless experience
description: Learn how Passworless experience enables your organization to move away from passwords.
ms.collection: 
  - highpri
  - tier1
ms.date: 08/15/2023
ms.topic: how-to
---

# Passwordless experience

## Overview

Starting in Windows 11, version 22H2 with [KB5030310](https://support.microsoft.com/kb/5030310)

Starting in Windows 11, version 23H2, Passwordless experience is a security feature that enables your organization to move away from passwords. Once enable, Windows users can sign in to their devices using Windows Hello for Business or a FIDO2 security key only. This feature is available for Azure Active Directory (Azure AD) joined devices only.

This article explains how to enable Passwordless experience for your organization and describes the user experience.

## Enable Passwordless experience with Intune

<!--[!INCLUDE [intune-settings-catalog-1](../../../includes/configure/intune-settings-catalog-1.md)]-->

| Category | Setting name | Value |
|--|--|--|
| **Authentication** | Enable Passwordless Experience | Enabled |

<!--[!INCLUDE [intune-settings-catalog-2](../../../includes/configure/intune-settings-catalog-2.md)]-->

Alternatively, you can configure devices using a [custom policy][INT-3] with the [Policy CSP][CSP-1]. 

| Setting |
|--------|
| <li> OMA-URI:**`./Device/Vendor/MSFT/Policy/Config/Authentication/EnablePasswordlessExperience`**</li><li>Data type:**int**</li><li>Value:**`1`**</li>|

<!--links used in this document-->

[CSP-1]: /windows/client-management/mdm/policy-csp-localpoliciessecurityoptions

[MEM-1]: /mem/intune/configuration/settings-catalog
[MEM-2]: /mem/intune/configuration/custom-settings-windows-10