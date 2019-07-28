---
title: Use the Volume Activation Management Tool (Windows 10)
description: The Volume Activation Management Tool (VAMT) provides several useful features, including the ability to perform VAMT proxy activation and to track and monitor several types of product keys.
ms.assetid: b11f0aee-7b60-44d1-be40-c960fc6c4c47
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: vamt, volume activation, activation, windows activation
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
author: greg-lindsay
ms.localizationpriority: medium
ms.date: 07/27/2017
ms.topic: article
---

# Use the Volume Activation Management Tool

**Applies to**
-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2012
-   Windows Server 2008 R2

**Looking for retail activation?**
-   [Get Help Activating Microsoft Windows](https://go.microsoft.com/fwlink/p/?LinkId=618644)

The Volume Activation Management Tool (VAMT) provides several useful features, including the ability to perform VAMT proxy activation and to track and monitor several types of product keys.

By using the VAMT, you can automate and centrally manage the volume, retail, and MAK activation process for Windows, Office, and select other Microsoft products. The VAMT can manage volume activation by using MAKs or KMS. It is a standard Microsoft Management Console snap-in, and it can be 
installed on any computer running Windows 10, Windows 8.1, Windows 8, Windows 7, Windows Server 2012 R2, Windows Server 2012, or Windows Server 2008 R2.

The VAMT is distributed as part of the Windows Assessment and Deployment Kit (Windows ADK), which is a free download available from Microsoft Download Center. For more information, see [Windows Assessment and Deployment Kit (Windows ADK) for Windows 10](https://go.microsoft.com/fwlink/p/?LinkId=526740).

In Windows Server 2012 R2, you can install the VAMT directly from Server Manager without downloading the Windows ADK by selecting the Volume Activation Services role or the Remote Server Administration Tools/Role Administration Tools/Volume Activation Tools feature.

## Activating with the Volume Activation Management Tool

You can use the VAMT to complete the activation process in products by using MAK and retail keys, and you can work with computers individually or in groups. The VAMT enables two activation scenarios:
-   **Online activation**. Online activation enables you to activate over the Internet any products that are installed with MAK, KMS host, or retail product keys. You can activate one or more connected computers within a network. This process requires that each product communicate activation information directly to Microsoft.
-   **Proxy activation**. This activation method enables you to perform volume activation for products that are installed on client computers that do not have Internet access. The VAMT host computer distributes a MAK, KMS host key, or retail product key to one or more client products and collects the installation ID from each client product. The VAMT host sends the installation IDs to Microsoft on behalf of the client products and obtains the corresponding confirmation IDs. The VAMT host then installs the confirmation IDs on the client products to complete their activation.
    By using this method, only the VAMT host computer requires Internet access. Proxy activation by using the VAMT is beneficial for isolated network segments and for cases where your organization has a mix of retail, MAK, and KMS-based activations.

## Tracking products and computers with the Volume Activation Management Tool

The VAMT provides an overview of the activation and licensing status of computers across your network, as shown in Figure 18. Several prebuilt reports are also available to help you proactively manage licensing.

![VAMT showing the licensing status of multiple computers](../images/volumeactivationforwindows81-18.jpg)

**Figure 18**. The VAMT showing the licensing status of multiple computers

## Tracking key usage with the Volume Activation Management Tool

The VAMT makes it easier to track the various keys that are issued to your organization. You can enter each key into VAMT, and then the VAMT can use those keys for online or proxy activation of clients. The tool can also describe what type of key it is and to which product group it belongs. The VAMT is the most convenient way to quickly determine how many activations remain on a MAK. Figure 19 shows an example of key types and usage.

![VAMT showing key types and usage](../images/volumeactivationforwindows81-19.jpg)

**Figure 19**. The VAMT showing key types and usage

## Other Volume Activation Management Tool features

The VAMT stores information in a Microsoft SQL Server database for performance and flexibility, and it provides a single graphical user interface for managing activations and performing other activation-related tasks, such as:
-   **Adding and removing computers**. You can use the VAMT to discover computers in the local environment. The VAMT can discover computers by querying AD DS, workgroups, or individual computer names or IP addresses, or through a general LDAP query.
-   **Discovering products**. You can use the VAMT to discover Windows, Windows Server, Office, and select other products that are installed on the client computers.
-   **Managing activation data**. The VAMT stores activation data in a SQL Server database. The tool can export this data in XML format to other VAMT hosts or to an archive.

For more information, see:
-   [Volume Activation Management Tool (VAMT) Overview](https://go.microsoft.com/fwlink/p/?LinkId=618266)
-   [VAMT Step-by-Step Scenarios](https://go.microsoft.com/fwlink/p/?LinkId=618267)

## See also
-   [Volume Activation for Windows 10](volume-activation-windows-10.md)
 
 
