---
title: Use the Volume Activation Management Tool
description: The Volume Activation Management Tool (VAMT) provides several useful features, including the ability to track and monitor several types of product keys.
ms.reviewer: nganguly
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.localizationpriority: medium
ms.date: 03/29/2024
ms.topic: conceptual
ms.subservice: itpro-fundamentals
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2022</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2019</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016</a>
---

# Use the Volume Activation Management Tool

> [!TIP]
>
> Looking for information on retail activation?
>
> - [Activate Windows](https://support.microsoft.com/help/12440/).
> - [Product activation for Windows](https://go.microsoft.com/fwlink/p/?LinkId=618644).

The Volume Activation Management Tool (VAMT) provides several useful features, including the ability to perform VAMT proxy activation and to track and monitor several types of product keys.

Volume, retail, and Multiple Activation Keys (MAK) activation process for Windows, Office, and select other Microsoft products can be automated and centrally managed using VAMT. The VAMT can manage volume activation by using MAK or Key Management Service (KMS). It's a standard Microsoft Management Console snap-in.

For currently supported versions of Windows Server, VAMT can be installed directly from Server Manager by selecting the Volume Activation Services role or the Remote Server Administration Tools/Role Administration Tools/Volume Activation Tools feature.

For currently supported versions of Windows client, VAMT can be installed as part of the Windows Assessment and Deployment Kit (Windows ADK). The Windows ADK is a free download. For more information, including links to download the Windows ADK, see [Download and install the Windows ADK](/windows-hardware/get-started/adk-install).

## Activating with the Volume Activation Management Tool

VAMT can be used to complete the activation process in products by using MAK and retail keys. Computers can be activated either individually or in groups. The VAMT enables two activation scenarios:

- **Online activation**. Online activation enables activation over the Internet any products that are installed with MAK, KMS host, or retail product keys. One or more connected computers can be activated within a network. This process requires each product communicate activation information directly to Microsoft.

- **Proxy activation**. This activation method enables volume activation for products that are installed on client computers that don't have Internet access. The VAMT host computer distributes a MAK, KMS host key, or retail product key to one or more client products and collects the installation ID from each client product. The VAMT host sends the installation IDs to Microsoft on behalf of the client products and obtains the corresponding confirmation IDs. The VAMT host then installs the confirmation IDs on the client products to complete their activation.

    When this method is used, only the VAMT host computer requires Internet access. Proxy activation by using the VAMT is beneficial for isolated network segments and for cases where the organization has a mix of retail, MAK, and KMS-based activations.

## Tracking products and computers with the Volume Activation Management Tool

The VAMT provides an overview of the activation and licensing status of computers across an organization's network, as shown in Figure 18. Several prebuilt reports are also available to help proactively manage licensing.

![VAMT showing the licensing status of multiple computers.](../images/volumeactivationforwindows81-18.jpg)

**Figure 18**. The VAMT showing the licensing status of multiple computers

## Tracking key usage with the Volume Activation Management Tool

The VAMT makes it easier to track the various keys that are issued to an organization. Each key can be entered into VAMT, and then the VAMT can use those keys for online or proxy activation of clients. The tool can also describe what type of key it's and to which product group it belongs. The VAMT is the most convenient way to quickly determine how many activations remain on a MAK. Figure 19 shows an example of key types and usage.

![VAMT showing key types and usage.](../images/volumeactivationforwindows81-19.jpg)

**Figure 19**. The VAMT showing key types and usage

## Other Volume Activation Management Tool features

The VAMT stores information in a Microsoft SQL Server database for performance and flexibility, and it provides a single graphical user interface for managing activations and performing other activation-related tasks, such as:

- **Adding and removing computers**. VAMT can be used to discover computers in the local environment. The VAMT can discover computers by querying AD DS, workgroups, or individual computer names or IP addresses, or through a general LDAP query.

- **Discovering products**. VAMT can be used to discover Windows, Windows Server, Office, and select other products that are installed on the client computers.

- **Managing activation data**. The VAMT stores activation data in a SQL Server database. The tool can export this data in XML format to other VAMT hosts or to an archive.

For more information, see:

- [Volume Activation Management Tool (VAMT) Overview](./volume-activation-management-tool.md).
- [VAMT Step-by-Step Scenarios](./vamt-step-by-step.md).

## Related content

- [Volume Activation for Windows](volume-activation-windows.md).
