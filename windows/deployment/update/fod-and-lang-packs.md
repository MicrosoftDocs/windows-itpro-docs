---
title: FoD and language packs for WSUS and Configuration Manager
description: Learn how to make FoD and language packs available to clients when you're using WSUS or Configuration Manager.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
ms.author: mstewart
author: mestew
ms.localizationpriority: medium
manager: aaroncz
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/mem/configmgr/ > Microsoft Configuration Manager</a>
- ✅ <a href=https://learn.microsoft.com/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus > WSUS </a>
ms.date: 03/13/2019
---

# How to make Features on Demand and language packs available when you're using WSUS or Configuration Manager

This article describes how to make Features on Demand and language packs available when you're using WSUS or Configuration Manager for specific versions of Windows.

## Version information for Features on Demand and language packs

In Windows 10 version 21H2 and later, non-Administrator user accounts can add both a display language and its corresponding language features.

As of Windows 10 version 1709, you can't use Windows Server Update Services (WSUS) to host [Features on Demand](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities) (FODs) locally. Starting with Windows 10 version 1803, language packs can no longer be hosted on WSUS.

The **Specify settings for optional component installation and component repair** policy, located under `Computer Configuration\Administrative Templates\System` in the Group Policy Editor, can be used to specify alternate ways to acquire FOD packages, language packages, and content for corruption repair. However, it's important to note this policy only allows specifying one alternate location and behaves differently across OS versions.

In Windows 10 versions 1709 and 1803, changing the **Specify settings for optional component installation and component repair** policy to download content from Windows Update enables acquisition of FOD packages while also enabling corruption repair. Specifying a network location works for either, depending on the content is found at that location.  Changing this policy on these OS versions doesn't influence how language packs are acquired.

In Windows 10 version 1809 and beyond, changing the **Specify settings for optional component installation and component repair** policy also influences how language packs are acquired, however language packs can only be acquired directly from Windows Update. It's currently not possible to acquire them from a network share. Specifying a network location works for FOD packages or corruption repair, depending on the content at that location.

For all OS versions, changing the **Specify settings for optional component installation and component repair** policy doesn't affect how OS updates are distributed. They continue to come from WSUS, Configuration Manager, or other sources as you have scheduled them, even while optional content is sourced from Windows Update or a network location.

Learn about other client management options, including using Group Policy and administrative templates, in [Manage clients in Windows 10](/windows/client-management/).

## More resources

- [WSUS documentation](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus)
- [Configuration Manager documentation](/mem/configmgr/)
