---
title: How to Install the MBAM 1.0 Group Policy Template
description: How to Install the MBAM 1.0 Group Policy Template
author: dansimp
ms.assetid: 451a50b0-939c-47ad-9248-a138deade550
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install the MBAM 1.0 Group Policy Template


In addition to the server-related features of Microsoft BitLocker Administration and Monitoring (MBAM), the server setup application includes an MBAM Group Policy template. You can install this template on any computer that is capable of running the Group Policy Management Console (GPMC) or Advanced Group Policy Management (AGPM).

The following steps describe how to install the MBAM Group Policy template.

**Note**  
Make sure that you use the 32-bit setup on 32-bit servers and the 64-bit setup on 64-bit servers.

 

**To install the MBAM Group Policy template**

1.  Start the MBAM installation wizard; then, click **Install** on the Welcome page.

2.  Read and accept the Microsoft Software License Terms, and then click **Next** to continue the installation.

3.  By default, all MBAM features are selected for installation. Clear all feature options except for **Policy Template**, and then click **Next** to continue the installation.

    **Note**  
    The installation wizard checks the prerequisites for your installation and displays the prerequisites that are missing. If all the prerequisites are met, the installation continues. If a missing prerequisite is detected, you must resolve the missing prerequisite and then click **Check prerequisites again**. Once all prerequisites are met, the installation will resume.

     

4.  After the MBAM Setup wizard displays installation pages for the selected features, click **Finish** to close MBAM Setup.

## Related topics


[Deploying MBAM 1.0 Group Policy Objects](deploying-mbam-10-group-policy-objects.md)

 

 





