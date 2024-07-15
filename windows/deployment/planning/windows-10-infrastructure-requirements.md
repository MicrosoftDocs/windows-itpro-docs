---
title: Windows 10 infrastructure requirements (Windows 10)
description: Review the infrastructure requirements for deployment and management of Windows 10,  prior to significant Windows 10 deployments within your organization.
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
ms.localizationpriority: medium
author: frankroj
ms.topic: article
ms.subservice: itpro-deploy
ms.date: 10/28/2022
---

# Windows 10 infrastructure requirements

**Applies to**

-   Windows 10

There are specific infrastructure requirements that should be in place for the deployment and management of Windows 10. Fulfill these requirements before any Windows 10-related deployments take place.

## High-level requirements

For initial Windows 10 deployments, and for subsequent Windows 10 upgrades, ensure that sufficient disk space is available for distribution of the Windows 10 installation files (about 3 GB for Windows 10 x64 images, slightly smaller for x86). Also, be sure to take into account the network impact of moving these large images to each PC; you may need to use local server storage.

For persistent VDI environments, carefully consider the I/O impact from upgrading large numbers of PCs in a short period of time. Ensure that upgrades are performed in smaller numbers, or during off-peak time periods. (For pooled VDI environments, a better approach is to replace the base image with a new version.)

## Deployment tools

The latest version of the Windows Assessment and Deployment Toolkit (ADK) is available for download [here](/windows-hardware/get-started/adk-install).

Significant enhancements in the ADK for Windows 10 include new runtime provisioning capabilities, which use the Windows Imaging and Configuration Designer (Windows ICD). There's also updated versions of existing deployment tools (DISM, USMT, Windows PE, and more).

The latest version of the Microsoft Deployment Toolkit (MDT) is available for download [here](/mem/configmgr/mdt/release-notes).

For Configuration Manager, Windows 10 version specific support is offered with [various releases](/mem/configmgr/core/plan-design/configs/support-for-windows-10).

For more information about Microsoft Configuration Manager support for Windows 10, see [Prepare for Zero Touch Installation of Windows 10 with Configuration Manager](../deploy-windows-cm/prepare-for-zero-touch-installation-of-windows-10-with-configuration-manager.md).

## Management tools

In addition to Microsoft Configuration Manager, Windows 10 also uses other tools for management. For Windows Server and Active Directory, existing supported versions are fully supported for Windows 10. New Group Policy templates will be needed to configure new settings available in Windows 10; these templates are available in the Windows 10 media images, and are available as a separate download [here](https://go.microsoft.com/fwlink/p/?LinkId=625081). See [Group Policy settings reference](https://go.microsoft.com/fwlink/p/?LinkId=625082) for a list of the new and modified policy settings. If you're using a central policy store, follow the steps outlined [here](/troubleshoot/windows-server/group-policy/create-central-store-domain-controller) to update the ADMX files stored in that central store.

No new Active Directory schema updates or specific functional levels are currently required for core Windows 10 product functionality, although subsequent upgrades could require these schema updates to support new features.

Microsoft Desktop Optimization Pack (MDOP) has been updated to support Windows 10. The minimum versions required to support Windows 10 are as follows:

| Product                                                  | Required version         |
|----------------------------------------------------------|--------------------------|
| Advanced Group Policy Management (AGPM)                  | AGPM 4.0 Service Pack 3  |
| Application Virtualization (App-V)                       | App-V 5.1                |
| Diagnostics and Recovery Toolkit (DaRT)                  | DaRT 10                  |
| Microsoft BitLocker Administration and Monitoring (MBAM) | MBAM 2.5 SP1 (2.5 is OK) |
| User Experience Virtualization (UE-V)                    | UE-V 2.1 SP1             |

For more information, see the [MDOP TechCenter](/microsoft-desktop-optimization-pack/).

For devices you manage with mobile device management (MDM) solutions such as Microsoft Intune, existing capabilities (provided initially in Windows 8.1) are fully supported in Windows 10. New Windows 10 MDM settings and capabilities will require updates to the MDM services. For more information, see [Mobile device management](/windows/client-management/mdm/).

Windows Server Update Services (WSUS) requires some more configuration to receive updates for Windows 10. Use the Windows Server Update Services admin tool and follow these instructions:

1.  Select the **Options** node, and then select **Products and Classifications**.
2.  In the **Products** tree, select the **Windows 10** and **Windows 10 LTSB** products and any other Windows 10-related items that you want. Select **OK**.
3.  From the **Synchronizations** node, right-click and choose **Synchronize Now**.

![figure 1.](images/fig4-wsuslist.png)

WSUS product list with Windows 10 choices

Because Windows 10 updates are cumulative in nature, each month's new update will supersede the previous month's update. Consider using "express installation" packages to reduce the size of the payload that needs to be sent to each PC each month. For more information, see [Express installation files](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd939908(v=ws.10)).

> [!NOTE]
> The usage of "express installation" packages will increase the amount of disk storage needed by WSUS, and impacts all operating systems being managed with WSUS.

## Activation

Windows 10 volume license editions of Windows 10 will continue to support all existing activation methods (KMS, MAK, and AD-based activation). An update will be required for existing KMS servers:

| Product                                | Required update                                                                             |
|----------------------------------------|---------------------------------------------------------------------------------------------|
| Windows 10                             | None                                                                                        |
| Windows Server 2012 R2 and Windows 8.1 | [https://support.microsoft.com/kb/3058168](https://go.microsoft.com/fwlink/p/?LinkId=625087) |
| Windows Server 2012 and Windows 8      | [https://support.microsoft.com/kb/3058168](https://go.microsoft.com/fwlink/p/?LinkId=625087) |
| Windows Server 2008 R2 and Windows 7   | [https://support.microsoft.com/kb/3079821](https://support.microsoft.com/kb/3079821)                                                                   |

Also see: [Windows Server 2016 Volume Activation Tips](/archive/blogs/askcore/windows-server-2016-volume-activation-tips)

Additionally, new product keys will be needed for all types of volume license activation (KMS, MAK, and AD-based Activation). These keys are available on the Volume Licensing Service Center (VLSC) for customers with rights to the Windows 10 operating system. To find the needed keys:

-   Sign into the [Volume Licensing Service Center (VLSC)](https://go.microsoft.com/fwlink/p/?LinkId=625088) at with a Microsoft account that has appropriate rights.
-   For KMS keys, select **Licenses** and then select **Relationship Summary**. Select the appropriate active license ID, and then select **Product Keys** near the right side of the page. For KMS running on Windows Server, find the **Windows Srv 2012R2 DataCtr/Std KMS for Windows 10** product key; for KMS running on client operating systems, find the **Windows 10** product key.
-   For MAK keys, select **Downloads and Keys**, and then filter the list by using **Windows 10** as a product. Select the **Key** link next to an appropriate list entry (for example, **Windows 10 Enterprise** or **Windows 10 Enterprise LTSB**) to view the available MAK keys. (You can also find keys for KMS running on Windows 10 in this list. These keys won't work on Windows servers running KMS.)

Windows 10 Enterprise and Windows 10 Enterprise LTSC installations use different MAK keys. But you can use the same KMS server or Active Directory-based activation environment for both; the KMS keys obtained from the Volume Licensing Service Center will work with both.

## Related articles

[Windows 10 servicing options](../update/waas-servicing-strategy-windows-10-updates.md)<br>
[Windows 10 deployment considerations](windows-10-deployment-considerations.md)<br>
