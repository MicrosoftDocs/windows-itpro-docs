---
title: Windows 10 - How to make FoD and language packs available when you're using WSUS/SCCM
description: Learn how to make FoD and language packs available when you're using WSUS/SCCM
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: article
ms.author: greglin
audience: itpro
author: greg-lindsay
ms.localizationpriority: medium
ms.date: 03/13/2019
ms.reviewer: 
manager: laurawi
ms.topic: article
---
# How to make Features on Demand and language packs available when you're using WSUS/SCCM

> Applies to: Windows 10

As of Windows 10 version 1709, you cannot use Windows Server Update Services (WSUS) to host [Features on Demand](https://docs.microsoft.com/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities) (FOD) locally.  Starting with Windows 10 version 1803, language packs can no longer be hosted on WSUS. 

The **Specify settings for optional component installation and component repair** policy, located under `Computer Configuration\Administrative Templates\System` in the Group Policy Editor, can be used to specify alternate ways to acquire Feature on Demand packages, language packages, as well as where to source content for corruption repair. However, it’s important to note this policy only allows specifying one alternate location and will behave differently based on OS version.

In Windows 10 version 1709 and 1803, changing the **Specify settings for optional component installation and component repair** policy to download content from Windows Update will enable acquisition of Feature on Demand packages while also enabling corruption repair.  Specifying a network location will work for either, depending on the content is found at that location.  Changing this policy on these OS versions will not influence how language packs are acquired.

In Windows 10 version 1809 and beyond, changing the **Specify settings for optional component installation and component repair** policy will also influence how language packs are acquired, however language packs can only be acquired directly from Windows Update—it’s currently not possible to acquire them from a network share.  Specifying a network location will work for either Feature on Demand packages or corruption repair, depending on the content stored at that location.

For all OS versions, changing the **Specify settings for optional component installation and component repair** policy will not affect how OS updates are distributed.  They will continue to come from WSUS or SCCM as you have scheduled them, even while optional content is sourced from Windows Update or a network location.

Learn about other client management options, including using Group Policy and administrative templates, in [Manage clients in Windows 10](https://docs.microsoft.com/windows/client-management/).
