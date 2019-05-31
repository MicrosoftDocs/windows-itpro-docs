---
title: How to Install and Configure MBAM on a Single Server
description: How to Install and Configure MBAM on a Single Server
author: msfttracyp
ms.assetid: 55841c63-bad9-44e7-b7fd-ea7037febbd7
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Install and Configure MBAM on a Single Server


The procedures in this topic describe the full installation of the Microsoft BitLocker Administration and Monitoring (MBAM) features on a single server.

Each server feature has certain prerequisites. To verify that you have met the prerequisites and the hardware and software requirements, see [MBAM 1.0 Deployment Prerequisites](mbam-10-deployment-prerequisites.md) and [MBAM 1.0 Supported Configurations](mbam-10-supported-configurations.md). In addition, some features also have information that must be provided during the installation process to successfully deploy the feature. You should also review [Preparing your Environment for MBAM 1.0](preparing-your-environment-for-mbam-10.md) before you begin the MBAM deployment.

**Note**  
To obtain the setup log files, you must install MBAM by using the **msiexec** package and the **/l** &lt;location&gt; option. Log files are created in the location that you specify.

Additional setup log files are created in the %temp% folder of the user who is installing MBAM.

 

## To install MBAM Server features on a single server


The following steps describe how to install general MBAM features.

**Note**  
Make sure that you use the 32-bit setup on 32-bit servers and the 64-bit setup on 64-bit servers.

 

**To start MBAM Server features installation**

1.  Start the MBAM installation wizard. Click **Install** at the Welcome page.

2.  Read and accept the Microsoft Software License Terms, and then click **Next** to continue the installation.

3.  By default, all MBAM features are selected for installation. Features that will be installed on the same computer must be installed together at the same time. Clear the features that you want to install elsewhere. You must install the MBAM features in the following order:

    -   Recovery and Hardware Database

    -   Compliance and Audit Database

    -   Compliance Audit and Reports

    -   Administration and Monitoring Server

    -   MBAM Group Policy Template

    **Note**  
    The installation wizard checks the prerequisites for your installation and displays the prerequisites that are missing. If all the prerequisites are met, the installation continues. If a missing prerequisite is detected, you must resolve the missing prerequisites, and then click **Check prerequisites again**. After all prerequisites are met, the installation resumes.

     

4.  You are prompted to configure the network communication security. MBAM can encrypt the communication between the Recovery and Hardware Database, the Administration and Monitoring Server, and the clients. If you decide to encrypt the communication, you are asked to select the authority-provisioned certificate that will be used for encryption.

5.  Click **Next** to continue.

6.  The MBAM Setup wizard will display the installation pages for the selected features.

**To deploy MBAM Server features**

1.  In the **Configure the Recovery and Hardware database** window, specify the instance of SQL Server and the name of the database that will store the recovery and hardware data. You must also specify both the database files location and the log information location.

2.  Click **Next** to continue.

3.  In the **Configure the Compliance and Audit database** window, specify the instance of the SQL Server and the name of the database that will store the compliance and audit data. Then, specify the database files location and the log information location.

4.  Click **Next** to continue.

5.  In the **Compliance and Audit Reports** window, specify the report service instance that will be used and provide a domain user account for accessing the database. This should be a user account that is provisioned specifically for this use. The user account should be able to access all data available to the MBAM Reports Users group.

6.  Click **Next** to continue.

7.  In the **Configure the Administration and Monitoring Server** window, enter the **Port Binding**, the **Host Name** (optional), and the **Installation Path** for the MBAM Administration and Monitoring server.

    **Warning**  
    The port number that you specify must be an unused port number on the Administration and Monitoring server, unless a unique host header name is specified.

     

8.  Click **Next** to continue.

9.  Specify whether to use Microsoft Updates to help keep your computer secure, and then click **Next**. The Microsoft Updates option does not turn on the Automatic Updates in Windows.

10. When the Setup wizard has collected the necessary feature information, the MBAM installation is ready to start. Click **Back** to move back through the wizard if you want to review or change your installation settings. Click **Install** to begin the installation. Click **Cancel** to exit Setup. Setup installs the MBAM features and notifies you that the installation is completed.

11. Click **Finish** to exit the wizard.

12. After you install MBAM server features, you must add users to the MBAM roles. For more information, see [Planning for MBAM 1.0 Administrator Roles](planning-for-mbam-10-administrator-roles.md).

**To perform post installation configuration**

1.  After Setup is finished, you must add user roles so that you can give users access to features in the MBAM administration website. On the Administration and Monitoring Server, add users to the following local groups:

    -   **MBAM Hardware Users**: Members of this local group can access the Hardware feature in the MBAM administration website.

    -   **MBAM Helpdesk Users**: Members of this local group can access the Drive Recovery and Manage TPM features in the MBAM administration website. All fields in Drive Recovery and Manage TPM are required fields for a Helpdesk User.

    -   **MBAM Advanced Helpdesk Users**: Members of this local group have advanced access to the Drive Recovery and Manage TPM features in the MBAM administration website. For Advanced Helpdesk Users, only the Key ID field is required in Drive Recovery. For Manage TPM users, only the Computer Domain field and Computer Name field are required.

2.  On the Administration and Monitoring Server, Compliance and Audit Database, and on the computer that hosts the Compliance and Audit Reports, add users to the following local group to enable them to access the Reports feature in the MBAM administration website:

    -   **MBAM Report Users**: Members of this local group can access the Reports features in the MBAM administration website.

    **Note**  
    Identical user membership or group membership of the **MBAM Report Users** local group must be maintained on all computers where the Administration and Monitoring Server features, Compliance and Audit Database, and Compliance and Audit Reports are installed.

    To maintain identical memberships on all computers, you should create a domain security group and add that domain group to each local MBAM Report Users group. When you do this, you can manage the group memberships by using the domain group.

     

## Validating the MBAM Server feature installation


When the MBAM installation is complete, validate that the installation has successfully set up all the necessary MBAM features that are required for BitLocker management. Use the following procedure to confirm that the MBAM service is functional:

**To validate MBAM Server feature installation**

1.  On each server where an MBAM feature is deployed, open **Control Panel**. Click **Programs**, and then click **Programs and Features**. Verify that **Microsoft BitLocker Administration and Monitoring** appears in the **Programs and Features** list.

    **Note**  
    To validate the installation, you must use a Domain Account that has local computer administrative credentials on each server.

     

2.  On the server where the Recovery and Hardware Database is installed, open SQL Server Management Studio and verify that the **MBAM Recovery and Hardware** database is installed.

3.  On the server where the Compliance and Audit Database is installed, open SQL Server Management Studio and verify that the **MBAM Compliance and Audit Database** is installed.

4.  On the server where the Compliance and Audit Reports are installed, open a web browser with administrative privileges and browse to the “Home” of the SQL Server Reporting Services site.

    The default Home location of a SQL Server Reporting Services site instance is at http://*&lt;NameofMBAMReportsServer&gt;*/Reports. To find the actual URL, use the Reporting Services Configuration Manager tool and select the instances specified during setup.

    Confirm that a folder named **Malta Compliance Reports** is listed and that it contains five reports and one data source.

    **Note**  
    If SQL Server Reporting Services was configured as a named instance, the URL should resemble the following:http://*&lt;NameofMBAMReportsServer&gt;*/Reports\_*&lt;SRSInstanceName&gt;*

     

5.  On the server where the Administration and Monitoring feature is installed, run **Server Manager** and browse to **Roles**, select **Web Server (IIS)**, and click **Internet Information Services (IIS) Manager**

6.  In **Connections**, browse to *&lt;computername&gt;*, select **Sites**, and select **Microsoft BitLocker Administration and Monitoring**. Verify that **MBAMAdministrationService**, **MBAMComplianceStatusService**, and **MBAMRecoveryAndHardwareService** are listed.

7.  On the server where the Administration and Monitoring feature is installed, open a web browser with administrative privileges, and then browse to the following locations in the MBAM website to verify that they load successfully:

    -   *http://&lt;computername&gt;/default.aspx* and confirm each of the links for navigation and reports

    -   *http://&lt;computername&gt;/MBAMAdministrationService/AdministrationService.svc*

    -   *http://&lt;computername&gt;/MBAMComplianceStatusService/StatusReportingService.svc*

    -   *http://&lt;computername&gt;/MBAMRecoveryAndHardwareService/CoreService.svc*

    **Note**  
    Typically, the services are installed on the default port 80 without network encryption. If the services are installed on a different port, change the URLs to include the appropriate port. For example, http://*&lt;computername&gt;:&lt;port&gt;*/default.aspx or http://*&lt;hostheadername&gt;/*default.aspx.

    If the services are installed with network encryption, change http:// to https://.

     

## Related topics


[Deploying the MBAM 1.0 Server Infrastructure](deploying-the-mbam-10-server-infrastructure.md)

 

 





