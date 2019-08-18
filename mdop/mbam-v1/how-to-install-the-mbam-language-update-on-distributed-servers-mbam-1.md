---
title: How to Install the MBAM Language Update on Distributed Servers
description: How to Install the MBAM Language Update on Distributed Servers
author: msfttracyp
ms.assetid: 5ddc64c6-0417-4a04-843e-b5e18d9f1a52
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install the MBAM Language Update on Distributed Servers


Microsoft BitLocker Administration and Monitoring (MBAM) includes four server roles that can be run on one or more computers. However, only two MBAM Server features require the update to support the installation of the MBAM 1.0 language release and the MBAM Policy Template. In configurations with the MBAM Server features installed on multiple computers, only the following server features need to be updated:

-   The MBAM Compliance and Audit Reports

-   The MBAM Administration and Monitoring Server

**Important**  
The MBAM server features must be updated in this order: Compliance and Audit Reports first, and then the Administration and Monitoring Server. The MBAM Group Policy templates can be updated at any time without concern for sequence.

 

**To install the MBAM Language Update on the MBAM Compliance and Audit Report Server feature**

1.  On the computer running the MBAM Compliance and Audit Report feature, locate and run the MBAM Language Update setup wizard (MBAMsetup.exe).

2.  Complete the wizard for the Compliance and Audit Reports and then close the wizard.

**To install the MBAM Language Update on the MBAM Administration and Monitoring Server feature**

1.  On the computer that is running the MBAM Administration and Monitoring feature, open the Internet Information Services (IIS) management console, go to **Sites**, and then shut down the Microsoft BitLocker Administration and Monitoring website.

2.  Choose to edit the bindings for the MBAM website, and then modify the bindings of the site. For example, change the port from 443 to 9443.

3.  Locate and run the MBAM Language Update setup wizard (MBAMsetup.exe). Complete the wizard for the Administration and Monitoring Server feature and then close the wizard.

4.  After you upgrade the server database, open IIS Management Console and review the bindings of the Microsoft BitLocker Administration and Monitoring website.

5.  Delete the old binding and ensure that the remaining binding has the correct host name, certificate, and port number for the MBAM enterprise configuration.

6.  Restart the MBAM web site.

7.  Test the MBAM web site functionality:

    -   Open the MBAM web interface and ensure that you can obtain a recovery key for a client.

    -   Enforce encryption of a new or manually decrypted client computer.

        **Note**  
        The MBAM client opens only if it can communicate with the Recovery and Hardware database.

         

## Related topics


[Deploying the MBAM 1.0 Language Release Update](deploying-the-mbam-10-language-release-update.md)

 

 





