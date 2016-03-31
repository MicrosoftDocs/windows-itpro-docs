---
title: Windows Update for Business (Windows 10)
description: Get an overview of how you can implement and deploy a Windows Update for Business solution and how to maintain enrolled systems.
ms.assetid: DF61F8C9-A8A6-4E83-973C-8ABE090DB8C6
keywords: ["update", "upgrade", "deployment", "WSUS"]
ms.prod: w10
ms.mktglfcycl: plan
ms.sitesec: library
author: TrudyHa
---

# Windows Update for Business


**Applies to**

-   Windows 10

Get an overview of how you can implement and deploy a Windows Update for Business solution and how to maintain enrolled systems.

## Introduction


Windows Update for Business enables information technology administrators to keep the Windows 10-based devices in their organization always up to date with the latest security defenses and Windows features by directly connecting these systems to Microsoft’s Windows Update service. By using [Group Policy Objects](http://go.microsoft.com/fwlink/p/?LinkId=699279), Windows Update for Business is an easily established and implemented system which enables organizations and administrators to exercise control on how their Windows 10-based devices are updated, by allowing:

-   **Deployment and validation groups**; where administrators can specify which devices go first in an update wave, and which devices will come later (to ensure any quality bars are met).

-   **Peer-to-peer delivery**, which administrators can enable to make delivery of updates to branch offices and remote sites with limited bandwidth very efficient.

-   **Use with existing tools** such as System Center Configuration Manager and the [Enterprise Mobility Suite](http://go.microsoft.com/fwlink/p/?LinkId=699281).

Together, these Windows Update for Business features help reduce device management costs, provide controls over update deployment, offer quicker access to security updates, as well as provide access to the latest innovations from Microsoft on an ongoing basis. Windows Update for Business is a free service for all Windows 10 Pro, Enterprise, and Education editions, and can be used independent of, or in conjunction with, existing device management solutions such as [Windows Server Update Services (WSUS)](http://go.microsoft.com/fwlink/p/?LinkId=734043) and [System Center Configuration Manager](http://go.microsoft.com/fwlink/p/?LinkId=734044).

## Deploy Windows Update for Business in your organization


For Windows 10, version 1511, Windows Update for Business is enabled using a set of client-side configurations, allowing you to manage how and when Windows-based devices receive updates and upgrades. These capabilities use the Windows Update service like any other Windows 10 clients, but provides controls to help businesses validate update quality as well as time their update deployments to machines through the use of Group Policy Objects. Windows Update for Business also incorporates smart peer-to-peer networking for distribution of Windows updates, which will help maintain bandwidth efficiency in the absence of a WSUS solution.

## Eligible devices


All devices running Windows 10 Pro, Enterprise, and Education on the Current Branch for Business (CBB) are Windows Update for Business eligible.

## OS upgrades and updates


In Windows 10, Windows Update for Business recognizes three deployment categories that clients receive from Windows Update:

-   **Upgrades**

    -   Examples: Windows 10 (Build 10240) to Windows 10, version 1511; CBB 1 to CBB 2

        **Note**  
        In the Windows 10 servicing model, new CBBs will be declared 2-3 times per year.

         

-   **Updates**

    -   General OS updates, typically released the second Tuesday of each month. These include Security, Critical, and Driver updates.

-   **Other/non-deferrable**

    -   Definition updates (these cannot be deferred)

Both upgrades and updates can be deferred from deployment to client machines by a Windows Update for Business administrator within a bounded rage of time from when those updates are first made available on the Windows Update service. This deferral capability allows administrators to validate deployments as they are pushed to all their Windows Update for Business enrolled clients. The following table defines maximum deferral periods allowed by deployment type:

Category
Maximum deferral
Deferral increments
Classification type
Classification GUID
OS upgrades
8 months
1 month
Upgrade
3689BDC8-B205-4AF4-8D4A-A63924C5E9D5
OS updates
4 weeks
1 week
Security updates
0FA1201D-4330-4FA8-8AE9-B877473B6441
Drivers
EBFC1FC5-71A4-4F7B-9ACA-3B9A503104A0
Updates
CD5FFD1E-E932-4E3A-BF74-18BF0B1BBD83
Other/non-deferrable
No deferral
No deferral
Definition updates
E0789628-CE08-4437-BE74-2495B842F43B
 

## Related topics


[Setup and deployment](setup-and-deployment.md)

[Integration with management solutions](integration-with-management-solutions-.md)

[Windows 10 servicing options for updates and upgrades](../manage/introduction-to-windows-10-servicing.md)

 

 





