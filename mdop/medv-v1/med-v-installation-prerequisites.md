---
title: MED-V Installation Prerequisites
description: MED-V Installation Prerequisites
author: dansimp
ms.assetid: cf3c0906-23eb-4c4a-8951-a65741720f95
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# MED-V Installation Prerequisites


The following are prerequisites for installing MED-V:

[Active Directory Requirements](#bkmk-activedirectoryrequirements)

[Report Database](#bkmk-howtoinstallthereportdatabase)

[Antivirus/Backup Software Configuration](#bkmk-antivirusbackupsoftwareconfiguration)

[Microsoft Virtual PC 2007 SP1](#bkmk-howtoinstallandconfiguremicrosoftvirtualpc2007sp1)

## <a href="" id="bkmk-activedirectoryrequirements"></a>Active Directory Requirements


When configuring the MED-V server, if users are not part of the same domain the server belongs to, a trust must be set between the domains.

## <a href="" id="bkmk-howtoinstallthereportdatabase"></a>How to Install the Report Database


The report database is required for storing all MED-V workspace logs. The log database is then used for generating MED-V reports. For information about reports, see [MED-V Reporting](med-v-reporting.md).

SQL Server can be installed on the same server as the MED-V server or on a remote server. If installing on a remote server, see [Installing SQL Server on a Remote Server](#bkmk-installingsqlserveronaremoteserver).

### <a href="" id="bkmk-installingsqlserveronaremoteserver"></a>Installing SQL Server on a Remote Server

**To install SQL Server on a remote server**

1.  Configure the following on the remote server:

    -   Instance name—Default instance

    -   Authentication mode—Mixed mode

    -   User—The default user created is “sa”

    -   Password—Desired password

    -   Collation Settings—Default

    -   Error in usage report settings—Default

2.  Install the following files on the MED-V server:

    -   To install the prerequisites for the management pack objects collection for Microsoft SQL Server 2008, download [Microsoft SQL Server 2008 Native Client](https://go.microsoft.com/fwlink/?LinkId=164039) from the Microsoft Download Center.

    -   To install the prerequisites for the management pack objects collection for Microsoft SQL Server 2005, download [Microsoft SQL Server 2005 Native Client](https://go.microsoft.com/fwlink/?LinkId=164038) from the Microsoft Download Center.

    -   To install the required dll files for Microsoft SQL Server 2008, download [Microsoft SQL Server 2008 Management Objects Collection](https://go.microsoft.com/fwlink/?LinkId=164041) from the Microsoft Download Center.

    -   To install the required dll files for Microsoft SQL Server 2005, download [Microsoft SQL Server 2005 Management Objects](https://go.microsoft.com/fwlink/?LinkId=164040) from the Microsoft Download Center.

    -   To install the stand-alone install packages that provide additional value for SQL Server 2008, download the [Microsoft SQL Server 2008 Feature Pack](https://go.microsoft.com/fwlink/?LinkId=163960) from the Microsoft Download Center.

    -   To install the stand-alone install packages that provide additional value for SQL Server 2005, download the [Feature Pack for Microsoft SQL Server 2005]( https://go.microsoft.com/fwlink/?LinkId=163961) from the Microsoft Download Center.

    For more information about these files, see [Microsoft SQL Server 2008 Feature Pack](https://go.microsoft.com/fwlink/?LinkId=163960) on the Microsoft Download Center (https://go.microsoft.com/fwlink/?LinkId=163960) or [Feature Pack for Microsoft SQL Server 2005](https://go.microsoft.com/fwlink/?LinkId=163961) on the Microsoft Download Center (https://go.microsoft.com/fwlink/?LinkId=163961).

## <a href="" id="bkmk-antivirusbackupsoftwareconfiguration"></a>Antivirus/Backup Software Configuration


To prevent antivirus activity from affecting the performance of the virtual desktop, it is recommended where possible to exclude the following virtual machine file types from any antivirus or backup processing running on the host:

-   \*.VMC

-   \*.VUD

-   \*.VSV

-   \*.CKM

-   \*.EVHD

## <a href="" id="bkmk-howtoinstallandconfiguremicrosoftvirtualpc2007sp1"></a>How to Install and Configure Microsoft Virtual PC 2007 SP1


**Important**  
If Virtual PC for Windows exists on the host computer, uninstall it before installing Virtual PC 2007 SP1.

 

**To install Microsoft Virtual PC 2007 SP1**

1.  Download Virtual PC 2007 SP1 from the Microsoft Download Center [Virtual PC 2007 SP1](https://go.microsoft.com/fwlink/?LinkId=142994).

2.  Run the installation file on the host computer, and follow the wizard.

3.  Install Virtual PC 2007 SP1 update on the host computer in elevated mode.

    For more information, see [the description of the hotfix package for Virtual PC 2007 SP1](https://go.microsoft.com/fwlink/?LinkId=150575).

    **Note**  
    The Virtual PC 2007 SP1 update is required for running Virtual PC 2007 SP1.

     

## Related topics


[Supported Configurations](supported-configurationsmedv-orientation.md)

 

 





