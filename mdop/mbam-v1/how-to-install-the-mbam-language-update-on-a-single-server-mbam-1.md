---
title: How to Install the MBAM Language Update on a Single Server
description: How to Install the MBAM Language Update on a Single Server
author: msfttracyp
ms.assetid: e6fe59a3-a3e1-455c-a059-1f23ee083cf6
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Install the MBAM Language Update on a Single Server


Microsoft BitLocker Administration and Monitoring (MBAM) includes four server roles that can be run on one or more computers. However, only two MBAM Server features require the update to support installation of the MBAM 1.0 language release and the MBAM Policy Template. To update all three of the required MBAM features to be installed on one computer, perform the steps described in this topic.

**To install the MBAM language update on a single server**

1.  Open the Internet Information Services (IIS) Management Console, go to **Sites**, and then shut down the Microsoft BitLocker Administration and Monitoring website.

2.  Edit the bindings for the MBAM website, and then temporarily modify the bindings of the site. For example, change the port from 443 to 9443.

3.  Locate and run the MBAM setup wizard (MBAMsetup.exe) and select the following three features:

    1.  Compliance and Audit Reports

    2.  Administration and Monitoring Server

    3.  Group Policy Templates

    **Important**  
    The MBAM server features must be updated in the following order: Compliance and Audit Reports first, then Administration and Monitoring Server. The Group Policy templates can be updated at any time without concern for sequence.

     

4.  After you upgrade the server database, open the IIS Management Console and review the bindings of the Microsoft BitLocker Administration and Monitoring website.

5.  Delete one of the bindings and ensure that the remaining binding has the correct host name, certificate, and port number for the MBAM enterprise configuration.

6.  Restart the MBAM website.

7.  Test the MBAM website functionality:

    -   Open the MBAM web interface and ensure you can fetch a recovery key for a client.

    -   Enforce encryption of a new or manually decrypted client computer.

        **Note**  
        The MBAM client opens only if it can communicate with the Recovery and Hardware database.

         

## Related topics


[Deploying the MBAM 1.0 Language Release Update](deploying-the-mbam-10-language-release-update.md)

 

 





