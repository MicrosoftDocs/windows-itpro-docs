---
title: Configure Personal Data Encryption (PDE) using Intune
description: Configuring and enabling Personal Data Encryption (PDE) required and recommended policies in Intune
author: frankroj
ms.author: frankroj
ms.reviewer: rhonnegowda
manager: aaroncz
ms.topic: how-to
ms.prod: windows-client
ms.technology: itpro-security
ms.localizationpriority: medium
ms.date: 03/10/2023
---

<!-- Max 5963468 OS 32516487 -->
<!-- Max 6946251 -->

# Configure Personal Data Encryption (PDE) policies using Intune

The various required and recommended policies needed for Personal Data Encryption (PDE) can be configured in Intune. The following links for both required and recommended policies contain step by step instructions on how to configure these policies in Intune.

## Required prerequisites

1. [Enable Personal Data Encryption (PDE)](pde-in-intune/intune-enable-pde.md)

1. [Disable Winlogon automatic restart sign-on (ARSO)](pde-in-intune/intune-disable-arso.md)

## Security hardening recommendations

1. [Disable kernel-mode crash dumps and live dumps](pde-in-intune/intune-disable-memory-dumps.md)

1. [Disable Windows Error Reporting (WER)/Disable user-mode crash dumps](pde-in-intune/intune-disable-wer.md)

1. [Disable hibernation](pde-in-intune/intune-disable-hibernation.md)

1. [Disable allowing users to select when a password is required when resuming from connected standby](pde-in-intune/intune-disable-password-connected-standby.md)

## See also

- [Personal Data Encryption (PDE)](overview-pde.md)
- [Personal Data Encryption (PDE) FAQ](faq-pde.yml)
