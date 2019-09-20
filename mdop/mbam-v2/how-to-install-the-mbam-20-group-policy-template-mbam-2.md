---
title: How to Install the MBAM 2.0 Group Policy Template
description: How to Install the MBAM 2.0 Group Policy Template
author: dansimp
ms.assetid: bc193232-d060-4285-842e-d194a74dd3c9
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install the MBAM 2.0 Group Policy Template


In addition to the server-related Microsoft BitLocker Administration and Monitoring (MBAM) features, the server setup application includes an Microsoft BitLocker Administration and Monitoring Group Policy template. This template can be installed on any computer capable of running the Group Policy Management Console (GPMC) or Advanced Group Policy Management (AGPM).

The following steps describe how to install the MBAM Group Policy template.

**Note**  
Make sure that you use the 32-bit setup on 32-bit servers and the 64-bit setup on 64-bit servers.

 

**To install the MBAM Group Policy template**

1.  On the server where you want to install MBAM, run **MBAMSetup.exe** to start the MBAM installation wizard.

2.  On the **Welcome** page, optionally select the **Customer Experience Improvement Program**, and then click **Start**.

3.  Read and accept the Microsoft Software License Terms, and then click **Next** to continue the installation.

4.  By default, all Microsoft BitLocker Administration and Monitoring features are selected for installation. Clear all feature options except for **Policy Template**, and then click **Next** to continue the installation.

    **Note**  
    The installation wizard checks the prerequisites for your installation and displays prerequisites that are missing. If all the prerequisites are met, the installation continues. If a missing prerequisite is detected, you have to resolve the missing prerequisites, and then click **Check prerequisites again**. Once all prerequisites are met, the installation will resume.

     

5.  For specific steps about how and where to install the templates, see [How to Download and Deploy MDOP Group Policy (.admx) Templates](https://technet.microsoft.com/library/dn659707.aspx).

6.  After the Microsoft BitLocker Administration and Monitoring Setup wizard displays installation pages for the selected features, click **Finish** to close MBAM Setup.

## Related topics


[Deploying MBAM 2.0 Group Policy Objects](deploying-mbam-20-group-policy-objects-mbam-2.md)

 

 





