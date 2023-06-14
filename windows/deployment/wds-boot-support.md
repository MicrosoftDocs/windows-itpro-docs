---
title: Windows Deployment Services (WDS) boot.wim support
description: This article provides details on the support capabilities of WDS for end to end operating system deployment.
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.topic: article
ms.date: 11/23/2022
ms.technology: itpro-deploy
---

# Windows Deployment Services (WDS) boot.wim support

*Applies to:*

- Windows 10
- Windows 11

The operating system deployment functionality of [Windows Deployment Services](/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/hh831764(v=ws.11)) (WDS) is being partially deprecated. Starting with Windows 11, workflows that rely on **boot.wim** from installation media or on running Windows Setup in WDS mode will no longer be supported.

When you PXE-boot from a WDS server that uses the **boot.wim** file from installation media as its boot image, Windows Setup automatically launches in WDS mode. This workflow is deprecated for Windows 11 and newer boot images. The following deprecation message is displayed:

  ![WDS deprecation notice](images/wds-deprecation.png)

## Deployment scenarios affected

The table below provides support details for specific deployment scenarios. Boot.wim is the `boot.wim` file obtained from the Windows source files for each specified version of Windows.

|Windows Version being deployed |Boot.wim from Windows 10|Boot.wim from Windows Server 2016|Boot.wim from Windows Server 2019|Boot.wim from Windows Server 2022|Boot.wim from Windows 11|
|--- |--- |--- |--- |--- |--- |
|**Windows 10**|Supported, using a boot image from matching or newer version.|Supported, using a boot image from Windows 10, version 1607 or later.|Supported, using a boot image from Windows 10, version 1809 or later.|Not supported.|Not supported.|
|**Windows Server 2016**|Supported, using a boot image from Windows 10, version 1607 or later.|Supported.|Not supported.|Not supported.|Not supported.|
|**Windows Server 2019**|Supported, using a boot image from Windows 10, version 1809 or later.|Supported.|Supported.|Not supported.|Not supported.|
|**Windows Server 2022**|Deprecated, with a warning message.|Deprecated, with a warning message.|Deprecated, with a warning message.|Deprecated, with a warning message.|Not supported.|
|**Windows 11**|Not supported, blocked.|Not supported, blocked.|Not supported, blocked.|Not supported, blocked.|Not supported, blocked.|

## Reason for the change

Alternatives to WDS, such as [Microsoft Configuration Manager](/mem/configmgr/) and [Microsoft Deployment Toolkit](/mem/configmgr/mdt/) (MDT) provides a better, more flexible, and feature-rich experience for deploying Windows images in certain scenarios. [Utilizing MDT with Windows 11 is not supported.](/mem/configmgr/mdt/known-issues.md).

## Not affected

WDS PXE boot isn't affected by this change. You can still use WDS to PXE boot devices with custom boot images, but you can't use **boot.wim** as the boot image and run Windows Setup in WDS mode.

You can still run Windows Setup from a network share. Workflows that use a custom boot.wim, such as MDT or Configuration Manager aren't affected by this change.

## Summary

- Windows 11 workflows that rely on **boot.wim** from installation media will be blocked. You can't perform an end to end deployment of Windows 11 using only WDS.
- Windows 10, Windows Server 2019, and previous operating system versions aren't affected by this change.
- Windows Server 2022 workflows that rely on **boot.wim** from installation media will show a non-blocking deprecation notice. The notice can be dismissed, and currently the workflow isn't blocked.
- Windows Server workflows after Windows Server 2022 that rely on **boot.wim** from installation media are blocked.

If you currently use WDS with **boot.wim** from installation media for end-to-end operating system deployment, and your OS version isn't supported, deprecated, or blocked, it's recommended that you use deployment tools such as MDT, Configuration Manager, or a non-Microsoft solution with a custom boot.wim image.

## Also see

[Features removed or no longer developed starting with Windows Server 2022](/windows-server/get-started/removed-deprecated-features-windows-server-2022#features-were-no-longer-developing)<br>
[Create a custom Windows PE boot image with Configuration Manager](deploy-windows-cm/create-a-custom-windows-pe-boot-image-with-configuration-manager.md)<br>
[Prepare for deployment with MDT](deploy-windows-mdt/prepare-for-windows-deployment-with-mdt.md)<br>
