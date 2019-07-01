---
title: Upgrading from Previous Versions of MBAM
description: Upgrading from Previous Versions of MBAM
author: dansimp
ms.assetid: 73b425cf-9cd9-4ebc-a35e-1b3bf18596ce
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Upgrading from Previous Versions of MBAM


You can upgrade Microsoft BitLocker Administration and Monitoring (MBAM) to MBAM 2.0, with the Stand-alone topology or Configuration Manager topology, by doing the following:

-   **Manual in-place server replacement** – To upgrade the MBAM Server, manually uninstall MBAM by using either the installer or Control Panel, and then install the MBAM 2.0 infrastructure. You do not have to remove the databases. Uninstalling the MBAM 1.0 Server leaves the MBAM databases intact. If you specify the same databases that MBAM 1.0 was using, the MBAM 2.0 installation retains MBAM 1.0 data in the databases and converts the databases to work with MBAM 2.0.

-   **Distributed Client Upgrade** - If you are using the Stand-alone MBAM topology, you can upgrade the MBAM Clients gradually after you install the MBAM 2.0 Server infrastructure. The MBAM 2.0 Server detects the version of the existing Client and performs the required steps to upgrade to the 2.0 Client.

    After you upgrade the MBAM 2.0 Server infrastructure, MBAM 1.0 Clients continue to report to the MBAM 2.0 Server successfully, escrowing recovery data, but compliance will be based on the policies in MBAM 1.0. You must upgrade clients to MBAM 2.0 to have client computers accurately report compliance against the MBAM 2.0 policies. You can upgrade the clients to the MBAM 2.0 Client without uninstalling the previous client, and the client will start to apply and report MBAM 2.0 policies.

    If you are using MBAM with Configuration Manager, you must upgrade the MBAM 1.0 clients to MBAM 2.0.

## Upgrading MBAM from a Two-Server Architecture


Use the following instructions to upgrade from a previous version of MBAM when you are using a two-server architecture, where one server is hosting the Microsoft SQL Server components, and the other server is hosting the websites and services.

**To upgrade MBAM from a two-server architecture**

1.  On the server with the SQL Server features, in Control Panel, select **Programs and Features**, and then uninstall **Microsoft BitLocker Administration and Monitoring**. The Recovery Database and Compliance and Audit database remain unchanged.

2.  Run **MBAMSetup.exe** for version MBAM 2.0, optionally select the **Customer Experience Improvement Program**, and then click **Start**.

3.  Read and accept the Microsoft Software License Agreement, and then click **Next** to continue the installation.

4.  On the **Topology Selection** page, select the **Stand-alone** or **System Center Configuration Manager Integration** topology, and then click **Next**.

5.  On the **Select features to install** page, clear the **Self-Service Server** and **Administration and Monitoring Server** features, and then click **Next**.

6.  Wait for the prerequisite checks to finish, and then click **Next**. If a missing prerequisite is detected, resolve the missing prerequisites, and then click **Check prerequisites again**.

7.  On the **Provide account used to access the MBAM databases** page, provide the computer name for the server that will host the sites and services, and then click **Next**.

8.  On the **Configure the Recovery database** page, specify the SQL Server instance name and the name of the database that will store the recovery data. You must also specify where the database files and log information will be located.

9.  Click **Next** to continue.

10. On the **Configure the Compliance and Audit database** page, specify the SQL Server instance name and the name of the database that will store the compliance and audit data.

11. Click **Next** to continue.

12. On the **Configure the Compliance and Audit Reports** page, specify the SQL Server Reporting Services instance where the Compliance and Audit reports will be installed, and provide a domain user account and password to access the Compliance and Audit database. Configure the password for this account to never expire. The user account can access all data available to the MBAM Reports Users group.

13. Click **Next** to continue.

14. Specify whether to use Microsoft Updates to help keep your computer secure, and then click **Next**. This does not turn on Automatic Updates in Windows. If you previously chose to use Microsoft Update for this product or another product, the Microsoft Update page does not appear.

15. On the **Installation Summary** page, review the features that will be installed, and then click **Install** to start the installation.

**To uninstall the Administration and Monitoring Server features and to complete the upgrade**

1.  On the computer that hosts the Administration and Monitoring Server features, in Control Panel, select **Programs and Features**, and then uninstall MBAM to remove the previously installed websites and services.

2.  Run the **MBAMSetup.exe** for version 2.0, optionally select the **Customer Experience Improvement Program**, and then click **Start**.

3.  Read and accept the Microsoft Software License Agreement, and then click **Next** to continue the installation.

4.  On the **Topology Selection** page, select the **Stand-alone** or **System Center Configuration Manager Integration** topology, and then click **Next**.

5.  On the **Select features to install** page, clear the **Recovery Database** and **Compliance and Audit Database** and **Compliance and Audit Reports** features, and then click **Next**.

6.  Wait for the prerequisite checks to finish, and then click **Next**. If a missing prerequisite is detected, resolve the missing prerequisites first, and then click **Check prerequisites again**.

7.  On the **Configure network communication security** page, choose whether to use Secure Socket Layer (SSL) encryption for the websites and services. If you decide to encrypt the communication, select the certification authority (CA) certificate to use for encryption.

    **Note**  
    The certificate must be created before this step to enable you to select it on this page.

     

8.  On the **Configure the location of the Compliance Status database** page, specify the SQL Server instance name and the name of the database that stores the compliance and audit data. You must also specify where the database files and log information will be located.

9.  Click **Next** to continue.

10. On the **Configure the location of the Recovery Database** page, specify the SQL Server instance name and the name of the database that stores the recovery data.

11. Click **Next** to continue.

12. On the **Configure the Compliance and Audit Reports** page, enter the URL for the reporting instance that you configured on the other server. Use the **Test** button to verify that you can reach the site.

13. Click **Next** to continue.

14. On the **Configure the Self-Service Portal** page, enter the port number, host name, virtual directory name, and installation path for the Self-Service Portal.

    **Note**  
    The port number that you specify must be an unused port number on the Administration and Monitoring Server unless you specify a unique host header name.

     

15. On the **Configure the Administration and Monitoring Server** page, specify the desired virtual directory for the Help Desk website.

16. Specify whether to use Microsoft Updates to help keep your computer secure, and then click **Next**. This step does not turn on Automatic Updates in Windows. If you previously chose to use Microsoft Update for this product or another product, the Microsoft Update page does not appear.

17. On the **Installation Summary** page, review the features that will be installed, and then click **Install** to start the installation.

18. To validate that the upgrade was successful, verify that you can reach each site from another computer in the domain.

## Upgrading the MBAM Client on End-User Computers


To upgrade end-user computers to the MBAM 2.0 Client, run **MbamClientSetup.exe** on each client computer. The installer automatically updates the Client to the MBAM 2.0 Client. You can install the MBAM Client through an electronic software distribution system, tools such as Active Directory Domain Services or System Center Configuration Manager.

To validate the Client upgrade, do the following:

1.  Wait until the configured reporting cycle is finished, and then start **SQL Server Management Studio** on the SQL Server computer.

2.  On the SQL Server computer, start **SQL Server Management Studio**.

3.  Verify that the **RecoveryAndHardwareCore.Machines** table contains a row that shows the end-user’s computer name.

## Related topics


[Deploying MBAM 2.0](deploying-mbam-20-mbam-2.md)

 

 





