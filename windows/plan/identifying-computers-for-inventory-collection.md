---
title: Identifying Computers for Inventory Collection (Windows 10)
ms.assetid: f5bf2d89-fff2-4960-a153-dc1146b442fb
description: 
ms.prod: w10
ms.mktglfcycl: plan
ms.sitesec: library
author: TrudyHa
---

# Identifying Computers for Inventory Collection


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

An inventory-collector package gathers inventory data from the computers on which it is installed. This data includes the following:

-   **System inventory.** Information about the client computer. This information includes the memory capacity, the processor speed, and the processor architecture.

-   **Device inventory.** Information about the devices that are installed on the client computer. This information includes the model, the manufacturer, and the device class.

-   **Software inventory.** An inventory of the applications that are installed on the computer. This information includes system technologies such as Windows® Installer.

To generate a complete inventory and obtain a comprehensive view of your organization, inventory all computers. However, remember that deploying inventory-collector packages to all computers in your organization will require the additional work of analyzing and reducing a larger list of applications. If you do not have the resources to deploy to all computers or you cannot process a larger list of applications, consider deploying inventory-collector packages to representative subsets of computers instead.

If you decide to deploy inventory-collector packages to representative subsets of computers in your organization, consider the following:

-   [Managed and Unmanaged Environments](#bmk-managedunmanaged)

-   [Role-Based Applications](#bmk-rolebasedapplications)

-   [Software Distribution](#bmk-softwaredistribution)

-   [Geographic Distribution](#bmk-geographicdistribution)

-   [Computer Types](#bmk-computertypes)

## <a href="" id="bmk-managedunmanaged"></a>Managed and Unmanaged Environments


In your organization, you may have managed environments and unmanaged environments.

In a managed environment, IT administrators strictly control and manage the installation and use of applications. In this environment, you can discover the full inventory by deploying inventory-collector packages to a limited subset of computers.

In an unmanaged environment, users have administrator permissions and can install applications at their own discretion. To obtain the full inventory, you must deploy your inventory-collector packages to more computers.

## <a href="" id="bmk-rolebasedapplications"></a>Role-Based Applications


Your organization may use role-based applications that relate to job function. For example, accountants may use finance-related applications. Reviewing application use together with job function helps you better identify which subsets of computers need inventory-collector packages.

## <a href="" id="bmk-softwaredistribution"></a>Software Distribution


You can distribute applications in various ways within an organization. For example, you can use Group Policy, Microsoft® IntelliMirror®, Microsoft System Center Configuration Manager, or a customized distribution method. Reviewing the policies for your software distribution system helps you better identify which subsets of computers need inventory-collector packages.

## <a href="" id="bmk-geographicdistribution"></a>Geographic Distribution


While you plan for inventory collection, consider the geographic distribution of your organization, and consider application use within each region. Be sure to account for divisional applications, localized applications, and applications that are specific to the geographic location and export restrictions. Consult with technical and business leaders from each region to understand the differences and determine which subsets of computers need inventory-collector packages.

## <a href="" id="bmk-computertypes"></a>Computer Types


Computer types can be an important factor in the deployment of inventory-collector packages. The following sections describe common computer types.

### Mobile Computers

Mobile users are frequently offline, occasionally synchronizing with the corporate network through a LAN or VPN connection. The user must be online for the inventory-collector package to be downloaded and installed, and must be online again for the logged data to be uploaded.

### Multiuser Computers

Multiuser computers are typically in university computer labs, libraries, and organizations that enable job sharing. These computers include a core set of applications that are always available, in addition to many applications that can be installed and removed as necessary. Because these computers typically have a core set of applications, you can identify a narrow subset of computers to receive the inventory-collector package.

### AppStations and TaskStations

AppStations that run vertical applications are typically for marketing, claims and loan processing, and customer service. TaskStations are typically dedicated to running a single application in a location such as a manufacturing floor (as an entry terminal) or a call center. Because AppStations and TaskStations do not typically enable users to add or remove applications, you can identify a narrow subset of computers to receive the inventory-collector package.

### Kiosks

Kiosks are generally in public areas. These computers run unattended. They also generally run a single application by using a single-use account and automatic logon. Because these computers typically run a single application, you can identify a narrow subset of computers to receive the inventory-collector package.

## Related topics


[Creating an Inventory-Collector Package](creating-an-inventory-collector-package.md)

[Deploying an Inventory-Collector Package](deploying-an-inventory-collector-package.md)

 

 





