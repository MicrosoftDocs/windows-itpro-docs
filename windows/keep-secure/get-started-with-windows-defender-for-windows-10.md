---
title: Update and manage Windows Defender in Windows 10 (Windows 10)
description: IT professionals can manage Windows Defender on Windows 10 endpoints in their organization using Microsoft Active Directory or Windows Server Update Services (WSUS), and apply updates to endpoints.
ms.assetid: 045F5BF2-87D7-4522-97E1-C1D508E063A7
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: brianlic-msft
---

# Update and manage Windows Defender in Windows 10


**Applies to**

-   Windows 10

**In this article**

-   [Manage Windows Defender endpoints through Active Directory and WSUS](#manage-windows-defender-endpoints-through-active-directory-and-wsus)
-   [Apply updates to Windows Defender endpoints](#apply-updates-to-windows-defender-endpoints)
-   [Related topics](#related-topics)

IT professionals can manage Windows Defender on Windows 10 endpoints in their organization using Microsoft Active Directory or Windows Server Update Services (WSUS), and apply updates to endpoints.

## Manage Windows Defender endpoints through Active Directory and WSUS


All Windows 10 endpoints are installed with Windows Defender and include support for management through:

-   Active Directory
-   WSUS

You can use the Active Directory to configure the settings; Group policies can be used for centralized configuration and enforcement of many Windows Defender settings including client user interface, scan settings, and exclusions.

WSUS can be used to view basic update compliance and deploy updates manually or through automatic rules.

Note that System Center 2012 R2 Configuration Manager SP1, System Center 2012 Configuration Manager SP2, and Microsoft Intune can provide centralized management of Windows Defender, including:

-   Settings management
-   Definition update management
-   Alerts and alert management
-   Reports and reporting

When you enable *Endpoint Protection* on your clients, it will install an additional management layer on Windows Defender to manage the in-box Windows Defender agent. While the client user interface will still appear as Windows Defender, the management layer for System Center Endpoint Protection or Intune will be listed in the **Add/Remove Programs** control panel, though it will appear as if the full product is installed. Learn more about managing *Endpoint Protection*:
-   [Help secure Windows PCs with Endpoint Protection for Microsoft Intune](https://technet.microsoft.com/library/dn646970.aspx)
-   [Endpoint Protection in Configuration Manager](https://technet.microsoft.com/library/hh508760.aspx)

Read more about System Center Configuration Manager in [Introduction to Endpoint Protection in Configuration Manager](https://technet.microsoft.com/library/hh508781.aspx).

**Important**  You must be licensed to use *Endpoint Protection* to manage clients in your Configuration Manager hierarchy.

 

## Apply updates to Windows Defender endpoints


It is important to keep Windows Defender endpoints updated to ensure they are protected. All Windows Defender updates, including General Distribution Release (GDR) updates, are now applied as operating system updates.

You can manage the distribution of updates through the [Windows Server Update Services (WSUS)](https://technet.microsoft.com/windowsserver/bb332157).

## Related topics


[Configure Windows Defender in Windows 10](configure-windows-defender-for-windows-10.md)

[Troubleshoot Windows Defender in Windows 10](troubleshoot-windows-defender-for-windows-10.md)

 

 





