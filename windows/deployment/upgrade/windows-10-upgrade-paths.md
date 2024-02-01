---
title: Windows 10 upgrade paths
description: You can upgrade to Windows 10 from a previous version of Windows if the upgrade path is supported.
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
ms.date: 02/01/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Windows 10 upgrade paths

> [!IMPORTANT]
>
> This article deals with upgrading from Windows versions that are out of support. For a current version of this article, please see [Windows upgrade paths](windows-upgrade-paths.md) that deals with currently supported versions of Windows.
>
> For more information, see:
>
> - [Windows 8.1 support ended on January 10, 2023](https://support.microsoft.com/windows/windows-8-1-support-ended-on-january-10-2023-3cfd4cde-f611-496a-8057-923fba401e93).
> - [Windows 7 support ended on January 14, 2020](https://support.microsoft.com/windows/windows-7-support-ended-on-january-14-2020-b75d4580-2cc7-895a-2c9c-1466d9a53962).
> - [FAQ about Windows 7 ESU](/troubleshoot/windows-client/windows-7-eos-faq/windows-7-extended-security-updates-faq).

## Upgrade paths

This article provides a summary of available upgrade paths to Windows 10. You can upgrade to Windows 10 from Windows 7 or a later operating system. Paths include upgrading from one release of Windows 10 to later release of Windows 10. Migrating from one edition of Windows 10 to a different edition of the same release is also supported.

If you're also migrating to a different edition of Windows, see [Windows edition upgrade](windows-edition-upgrades.md). Methods and supported paths are described on this page to change the edition of Windows. These methods require that you input a license or product key for the new Windows edition prior to starting the upgrade process. Edition downgrade is also supported for some paths. However, applications and settings aren't maintained when the Windows edition is downgraded.

- **Windows 10 version upgrade**: You can directly upgrade any General Availability Channel version of Windows 10 to a newer, supported General Availability Channel version of Windows 10, even if it involves skipping versions. Work with your account representative if your current version of Windows is out of support. See the [Windows lifecycle fact sheet](/lifecycle/faq/windows) for availability and service information.

- **In-place upgrade from Windows 7, Windows 8.1, or [Windows 10 General Availability Channel](/windows/release-health/release-information)** to Windows 10 LTSC isn't supported. Windows 10 LTSC 2015 didn't block this in-place upgrade path. This issue was corrected in the Windows 10 LTSC 2016 release, which only allows data-only and clean install options.

  You can upgrade from Windows 10 LTSC to Windows 10 General Availability Channel if you upgrade to the same or a newer build version. For example, Windows 10 Enterprise 2016 LTSB can be upgraded to Windows 10 Enterprise version 1607 or later. Upgrade is supported using the in-place upgrade process using Windows setup. The Product Key switch needs to be used if you want to keep your apps. If you don't use the switch, the option **Keep personal files and apps** option is grayed out. The command line would be `setup.exe /pkey xxxxx-xxxxx-xxxxx-xxxxx-xxxxx`, using your relevant Windows 10 GA Channel product key. For example, if using a KMS, the command line would be `setup.exe /pkey NPPR9-FWDCX-D2C8J-H872K-2YT43`.

- **Windows N/KN**: Windows "N" and "KN" SKUs (editions without media-related functionality) follow the same upgrade paths shown in the following tables. If the pre-upgrade and post-upgrade editions aren't the same type (for example, Windows 8.1 Pro N to Windows 10 Pro), personal data is kept but applications and settings are removed during the upgrade process.

- **Windows 8.0**: You can't upgrade directly from Windows 8.0 to Windows 10. To upgrade from Windows 8.0, you must first install the [Windows 8.1 update](https://support.microsoft.com/help/15356/windows-8-install-update-kb-2919355).

## Windows 10

✔ = Full upgrade is supported including personal data, settings, and applications.

D = Edition downgrade; personal data is maintained, applications and settings are removed.

---
| | Windows 10 Home | Windows 10 Pro | Windows 10 Pro Education | Windows 10 Education | Windows 10 Enterprise |
|---|---|---|---|---|---|
| **Home**  | | ✔  | ✔  | ✔  | |
| **Pro**   | D | | ✔   | ✔  | ✔  |
| **Education**  | | | | | D  |
| **Enterprise**  | | | | ✔ | |

---

## Windows 8.1

✔ = Full upgrade is supported including personal data, settings, and applications.

D = Edition downgrade; personal data is maintained, applications and settings are removed.

---
|  | Windows 10 Home | Windows 10 Pro | Windows 10 Pro Education | Windows 10 Education | Windows 10 Enterprise |
|---|---|---|---|---|---|
| **(Core)**  | ✔  | ✔  | ✔  | ✔  | |
| **Connected**   | ✔  | ✔  | ✔  | ✔  | |
| **Pro**  | D   | ✔  | ✔   | ✔  | ✔  |
| **Pro Student**  | D | ✔  | ✔  | ✔  | ✔  |
| **Pro WMC**  | D  | ✔  | ✔  | ✔  | ✔  |
| **Enterprise**  | | | | ✔  | ✔  |
| **Embedded Industry** | | | | | ✔  |

---

## Windows 7

✔ = Full upgrade is supported including personal data, settings, and applications.

D = Edition downgrade; personal data is maintained, applications and settings are removed.

---
|  | Windows 10 Home | Windows 10 Pro | Windows 10 Pro Education | Windows 10 Education | Windows 10 Enterprise |
|---|---|---|---|---|---|
| **Starter**   | ✔  | ✔  | ✔  | ✔  | |
| **Home Basic**  | ✔  | ✔  | ✔  | ✔  | |
| **Home Premium**  | ✔  | ✔  | ✔  | ✔  | |
| **Professional**  | D  | ✔  | ✔ | ✔  | ✔  |
| **Ultimate**  | D  | ✔   | ✔   | ✔  | ✔  |
| **Enterprise**  |  |  |  | ✔  | ✔  |

---

## Related articles

- [Windows 10 deployment scenarios](../windows-deployment-scenarios.md).
- [Windows upgrade and migration considerations](windows-upgrade-and-migration-considerations.md).
- [Windows 10 edition upgrade](windows-edition-upgrades.md).
