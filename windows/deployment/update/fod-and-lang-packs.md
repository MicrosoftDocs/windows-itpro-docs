---
title: FoD and language packs for WSUS and Configuration Manager
description: Learn how to make FoD and language packs available to clients when you're using WSUS or Configuration Manager.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: reference
ms.author: mstewart
author: mestew
ms.localizationpriority: medium
manager: aaroncz
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/mem/configmgr/ > Microsoft Configuration Manager</a>
- ✅ <a href=https://learn.microsoft.com/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus > WSUS </a>
ms.date: 10/01/2024
---

# How to make Features on Demand and language packs available when you're using WSUS or Configuration Manager
 
This reference article describes how to make Features on Demand (FoDs) and language packs available when you're using Windows Server Update Services (WSUS) or Configuration Manager for specific versions of Windows.

## High-level changes affecting Features on Demand and language pack content

The following changes for FoD and language pack content affected how client policy needs to be configured:
  
- Starting in Windows 10 version 1709, you can't use WSUS to host [Features on Demand](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities) (FoDs) locally.
- Starting with Windows 10 version 1803, language packs can no longer be hosted on WSUS.

Due to these changes, the **Specify settings for optional component installation and component repair** ([ADMX_Servicing](/windows/client-management/mdm/policy-csp-admx-servicing)) policy, located under `Computer Configuration\Administrative Templates\System` was used to specify alternate ways to acquire FoDs and language packs, along with content for corruption repair. This policy allows specifying one alternate location. It's important to note the policy behaves differently across OS versions. For more information, see the [Version specific information for Features on Demand and language packs](#version-specific-information-for-features-on-demand-and-language-packs) section. 

The introduction of the **Specify source service for specific classes of Windows Updates** ([SetPolicyDrivenUpdateSourceFor<UpdateClass\>](/windows/client-management/mdm/policy-csp-update#setpolicydrivenupdatesourceforfeatureupdates)) policy in Windows 10, version 2004 further complicated configuring settings for FoD and language pack content. 

Starting in Windows 11, version 22H2, on-premises Unified Update Platform (UUP) updates were introduced. FoDs and language packs are available from WSUS again. It's no longer necessary to use the **Specify settings for optional component installation and component repair** policy for FoD and language pack content. This policy was modified starting in Windows 11, version 24H2 and the following options were removed:<!--8914508-->
- Never attempt to download payload from Windows Update
- Download repair content and optional features directly from Windows Update instead of Windows Server Update Services (WSUS)

## Version specific information for Features on Demand and language packs

Windows 11, version 22H2, and later clients use on-premises Unified Update Platform (UUP) updates with WSUS and Microsoft Configuration Manager. These clients don't need to use **Specify settings for optional component installation and component repair** for FoDs and language packs since the content is available in WSUS due to on-premises UUP. The policy was modified starting in Windows 11, version 24H2 to remove the unneeded options.<!--8914508--> 

For Windows 10, version 2004 through Windows 11, version 21H2, clients can't download FoDs or language packs when **Specify settings for optional component installation and component repair** is set to Windows Update and **Specify source service for specific classes of Windows Updates** ([SetPolicyDrivenUpdateSourceFor<FeatureUpdates/QualityUpdates>](/windows/client-management/mdm/policy-csp-update#setpolicydrivenupdatesourceforfeatureupdates)) for either feature or quality updates is set to WSUS. If you need this content, you can set **Specify settings for optional component installation and component repair** to Windows Update and then either:
- Change the source selection for feature and quality updates to Windows Update 
- Allow all classes of updates to come from WSUS by not configuring any source selections <!--8907933-->

> [!Note]
> In Windows 10 version 21H2 and later, non-Administrator user accounts can add both a display language and its corresponding language features.

In Windows 10 version 1809 and later, changing the **Specify settings for optional component installation and component repair** policy also influences how language packs are acquired, however language packs can only be acquired directly from Windows Update (until Windows 11 version 22H2). It's currently not possible to acquire them from a network share. Specifying a network location works for FoD packages or corruption repair, depending on the content at that location.

In Windows 10 versions 1709 and 1803, changing the **Specify settings for optional component installation and component repair** policy to download content from Windows Update enables acquisition of FoD packages while also enabling corruption repair. Specifying a network location works for either, depending on the content is found at that location. Changing this policy on these OS versions doesn't influence how language packs are acquired.

For all OS versions, changing the **Specify settings for optional component installation and component repair** policy doesn't affect how OS updates are distributed. They continue to come from WSUS, Configuration Manager, or other sources as you have scheduled them, even while optional content is sourced from Windows Update or a network location.

Learn about other client management options, including using Group Policy and administrative templates, in [Manage Windows clients](/windows/client-management/).

## More resources

- [WSUS documentation](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus)
- [Configuration Manager documentation](/mem/configmgr/)
