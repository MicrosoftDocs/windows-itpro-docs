---
title: Windows upgrade paths 
description: Upgrade to current versions of Windows from a previous version of Windows
ms.service: windows-client
ms.localizationpriority: medium
author: frankroj
manager: aaroncz
ms.author: frankroj
ms.topic: conceptual
ms.collection:
  - highpri
  - tier2
ms.subservice: itpro-deploy
ms.date: 10/02/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
---

# Windows upgrade paths

## Upgrade paths

This article provides a summary of available upgrade paths to currently supported versions of Windows. You can upgrade to currently supported versions of Windows from previous versions of Windows that are also still supported. Paths include upgrading from one release of Windows to a later release of the same version of Windows. Migrating from one edition of Windows to a different edition of the same release is also supported.

> [!NOTE]
>
> If you're also migrating to a different edition of Windows, see [Windows edition upgrade](windows-edition-upgrades.md). The [Windows edition upgrade](windows-edition-upgrades.md) article describes methods and supported paths to change the edition of Windows. These methods require that you input a license or product key for the new Windows edition prior to starting the upgrade process. Edition downgrade is also supported for some paths. However, applications and settings aren't always maintained when the Windows edition is downgraded.

- **Windows version upgrade**: You can directly upgrade any General Availability Channel version of Windows to a newer, supported General Availability Channel version of Windows, even if it involves skipping versions. Work with your account representative if your current version of Windows is out of support. See the [Windows lifecycle fact sheet](/lifecycle/faq/windows) for availability and service information.

- **Upgrade from Windows LTSC to Windows General Availability Channel**: Upgrade from Windows LTSC to Windows General Availability Channel is available when upgrading to the same or a newer build version. For example, Windows 10 Enterprise 2016 LTSB can be upgraded to Windows 10 Enterprise 22H2. Upgrade is supported using the in-place upgrade process using Windows setup. The Product Key switch needs to be used if apps need to be kept. If the switch isn't used, the option **Keep personal files and apps** option is grayed out. The command line to perform the upgrade is:
  
  ```cmd
  setup.exe /pkey xxxxx-xxxxx-xxxxx-xxxxx-xxxxx
  ```

  where **xxxxx-xxxxx-xxxxx-xxxxx-xxxxx** is the Windows General Availability Channel product key. For example, if using a KMS, the command line for Windows Enterprise would be:
  
  ```cmd
  setup.exe /pkey NPPR9-FWDCX-D2C8J-H872K-2YT43
  ```

  For additional product keys for use with KMS, see [Key Management Services (KMS) client activation and product keys:Generic Volume License Keys (GVLK)](/windows-server/get-started/kms-client-activation-keys#generic-volume-license-keys-gvlk).

  > [!IMPORTANT]
  > In-place upgrade from Windows General Availability Channel to Windows LTSC isn't supported.
  >
  >
  > Windows 10 LTSC 2015 didn't block this in-place upgrade path even though it isn't supported. This issue was corrected in the Windows 10 LTSC 2016 release. Windows 10 LTSC 2016 only allows data-only and clean install options.

- **Windows N/KN**: **Windows N** and **Windows KN** SKUs (editions without media-related functionality) follow the same upgrade paths shown in the following tables. If the pre-upgrade and post-upgrade editions aren't the same type, for example, Windows 10 Pro N to Windows 11 Pro, personal data is kept but applications and settings are removed during the upgrade process.

## Supported Windows upgrade paths

| Windows Edition | **Windows Home** | **Windows Pro** | **Windows Pro Education** | **Windows Education** | **Windows Enterprise** |
|---|---|---|---|---|---|
| **Windows Home**  | ❌ | ✅  | ✅  | ✅  | ❌ |
| **Windows Pro**   | ⬇️ | ❌ | ✅   | ✅  | ✅  |
| **Windows Education**  | ❌ | ❌ | ❌ | ❌ | ⬇️  |
| **Windows Enterprise**  | ❌ | ❌ | ❌ | ✅ | ❌ |

- ✅ = Full upgrade is supported including personal data, settings, and applications.
- ❌ = Upgrade isn't supported or not applicable.
- ⬇️ = Edition downgrade; personal data is maintained, applications and settings are removed.

## Related articles

- [Windows 10 deployment scenarios](../windows-10-deployment-scenarios.md)
- [Windows upgrade and migration considerations](windows-upgrade-and-migration-considerations.md)
- [Windows edition upgrade](windows-edition-upgrades.md)