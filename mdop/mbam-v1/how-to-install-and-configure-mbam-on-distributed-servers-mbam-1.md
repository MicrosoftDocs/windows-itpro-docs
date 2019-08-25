---
title: How to Install and Configure MBAM on Distributed Servers
description: How to Install and Configure MBAM on Distributed Servers
author: msfttracyp
ms.assetid: 9ee766aa-6339-422a-8d00-4f58e4646a5e
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install and Configure MBAM on Distributed Servers


The procedures in this topic describe the full installation of the Microsoft BitLocker Administration and Monitoring (MBAM) features on distributed servers.

Each server feature has certain prerequisites. To verify that you have met the prerequisites and hardware and software requirements, see [MBAM 1.0 Deployment Prerequisites](mbam-10-deployment-prerequisites.md) and [MBAM 1.0 Supported Configurations](mbam-10-supported-configurations.md). In addition, some features require that you provide certain information during the installation process to successfully deploy the feature.

**Note**  
To obtain the setup log files, you have to install MBAM by using the **msiexec** package and the **/l &lt;location&gt;** option. Log files are created in the location that you specify.

Additional setup log files are created in the %temp% folder of the user that runs the MBAM installation.



## <a href="" id="deploy-the-mbam-server-features-"></a>Deploy the MBAM Server features


The following steps describe how to install the general MBAM features.

**Note**  
Make sure that you use the 32-bit setup on 32-bit servers and the 64-bit setup on 64-bit servers.



**To Deploy MBAM Server features**

1.  Start the MBAM installation wizard, and click **Install** at the Welcome page.

2.  Read and accept the Microsoft Software License Terms, and then click **Next** to continue the installation.

3.  By default, all MBAM features are selected for installation. Clear the features that you want to install elsewhere. Features that you want to install on the same computer must be installed all at the same time. MBAM features must be installed in the following order:

    -   Recovery and Hardware Database

    -   Compliance and Audit Database

    -   Compliance Audit and Reports

    -   Administration and Monitoring Server

    -   MBAM Group Policy Template

    **Note**  
    The installation wizard checks the prerequisites for your installation and displays the prerequisites that are missing. If all the prerequisites are met, the installation continues. If a missing prerequisite is detected, you have to resolve the missing prerequisites, and then click **Check prerequisites again**. If all prerequisites are met this time, the installation will resume.



4.  The MBAM Setup wizard will display the installation pages for the selected features. The following sections describe the installation procedures for each feature.

    **Note**  
    Typically, each feature is installed on a separate server. If you want to install multiple features on a single server, you may change or eliminate some of the following steps.



~~~
**To install the Recovery and Hardware Database**

1.  Choose an option for MBAM communication encryption. MBAM can encrypt the communication between the Recovery and Hardware Database and the Administration and Monitoring servers. If you choose the option to encrypt communication, you are asked to select the authority-provisioned certificate that is used for encryption.

2.  Click **Next** to continue.

3.  Specify the names of the computers that will be running the Administration and Monitoring Server feature, to configure access to the Recovery and Hardware Database.. Once the Administration and Monitoring Server feature is deployed, it connects to the database by using its domain account.

4.  Click **Next** to continue.

5.  Specify the **Database Configuration** for the SQL Server instance that stores the recovery and hardware data. You must also specify where the database will be located and where the log information will be located.

6.  Click **Next** to continue with the MBAM Setup wizard.

**To install the Compliance and Audit Database**

1.  Choose an option for the MBAM communication encryption. MBAM can encrypt the communication between the Compliance and Audit Database and the Administration and Monitoring servers. If you choose the option to encrypt communication, you are asked to select the authority-provisioned certificate that will be used for encryption.

2.  Click **Next** to continue.

3.  Specify the user account that will be used to access the database for reports.

4.  Click **Next** to continue.

5.  Specify the computer names of the computers that you want to run the Administration and Monitoring Server and the Compliance and Audit Reports, to configure the access to the Compliance and Audit Database.. After the Administration and Monitoring and the Compliance and Audit Reports Server are deployed, they will connect to the databases by using their domain accounts.

6.  Specify the **Database Configuration** for the SQL Server instance that will store the compliance and audit data. You must also specify where the database will be located and where the log information will be located.

7.  Click **Next** to continue with the MBAM Setup wizard.

**To install the Compliance and Audit Reports**

1.  Specify the remote SQL Server instance. For example, *&lt;ServerName&gt;*,where the Compliance and Audit Database are installed.

2.  Specify the name of the Compliance and Audit Database. By default, the database name is “MBAM Compliance Status”, but you can change the name when you install the Compliance and Audit Database.

3.  Click **Next** to continue.

4.  Select the SQL Server Reporting Services instance where the Compliance and Audit Reports will be installed. Provide the username and password used to access the compliance database.

5.  Click **Next** to continue with the MBAM Setup wizard.

**To install the Administration and Monitoring Server feature**

1.  Choose an option for the MBAM communication encryption. MBAM can encrypt the communication between the Recovery and Hardware Database and the Administration and Monitoring servers. If you choose the option to encrypt communication, you are asked to select the authority-provisioned certificate that is used for encryption.

2.  Click **Next** to continue.

3.  Specify the remote SQL Server instance, For example, *&lt;ServerName&gt;*, where the Compliance and Audit Database are installed.

4.  Specify the name of the Compliance and Audit Database. By default, the database name is MBAM Compliance Status, but, you can change the name when you install the Compliance and Audit Database.

5.  Click **Next** to continue.

6.  Specify the remote SQL Server instance. For example, *&lt;ServerName&gt;*,where the Recovery and Hardware Database are installed.

7.  Specify the name of the Recovery and Hardware Database. By default, the database name is **MBAM Recovery and Hardware**, but you can change the name when you install the Recovery and Hardware Database feature.

8.  Click **Next** to continue.

9.  Specify the URL for the “Home” of the SQL Server Reporting Services (SRS) site. The default Home location of a SQL Server Reporting Services site instance is at:

    http://*&lt;NameofMBAMReportsServer&gt;/*ReportServer

    **Note**  
    If you configured the SQL Server Reporting Services as a named instance, the URL resembles the following:http://*&lt;NameofMBAMReportsServer&gt;*/ReportServer\_*&lt;SRSInstanceName&gt;*



10. Click **Next** to continue.

11. Enter the **Port Number**, the **Host Name** (optional), and the **Installation Path** for the MBAM Administration and Monitoring server

    **Warning**  
    The port number that you specify must be an unused port number on the Administration and Monitoring server, unless you specify a unique host header name.



12. Click **Next** to continue with the MBAM Setup wizard.
~~~

5. 

   Specify whether to use Microsoft Updates to help keep your computer secure, and then click **Next**.

6. When the selected MBAM feature information is complete, you are ready to start the MBAM installation by using the Setup wizard. Click **Back** to move through the wizard if you have to review or change your installation settings. Click **Install** to begin the installation. Click **Cancel** to exit the Wizard. Setup installs the MBAM features that you selected and notifies you that the installation is finished.

7. Click **Finish** to exit the wizard.

8. Add users to appropriate MBAM roles, after the MBAM server features are installed.. For more information, see [Planning for MBAM 1.0 Administrator Roles](planning-for-mbam-10-administrator-roles.md).

**Post-installation configuration**

1.  After MBAM Setup is finished, you must add user Roles before users can access to features in the MBAM administration website. On the Administration and Monitoring Server, add users to the following local groups.

    -   **MBAM Hardware Users**: Members of this local group can access the Hardware feature in the MBAM administration website.

    -   **MBAM Helpdesk Users**: Members of this local group can access the Drive Recovery and Manage Trusted Platform Modules (TPM) features in the MBAM administration website. All fields in Drive Recovery and Manage TPM are required fields for a Helpdesk User.

    -   **MBAM Advanced Helpdesk Users**: Members of this local group have advanced access to the Drive Recovery and Manage TPM features in the MBAM administration website. For Advanced Helpdesk Users, only the Key ID field is required in Drive Recovery. In Manage TPM, only the Computer Domain field and Computer Name field are required.

2.  On the Administration and Monitoring Server, Compliance and Audit Database, and on the server that hosts the Compliance and Audit Reports, add users to the following local group to give them access to the Reports feature in the MBAM administration website.

    -   **MBAM Report Users**: Members of this local group can access the Reports in the MBAM administration website.

    **Note**  
    Identical user or group membership of the **MBAM Report Users** local group must be maintained on all computers where the MBAM Administration and Monitoring Server features, Compliance and Audit Database, and the Compliance and Audit Reports are installed.



## Validate the MBAM Server feature installation


When the MBAM Server feature installation is complete, you should validate that the installation has successfully set up all the necessary features for MBAM. Use the following procedure to confirm that the MBAM service is functional.

**To validate an MBAM installation**

1. On each server, where an MBAM feature is deployed, open **Control Panel**, click **Programs**, and then click **Programs and Features**. Verify that **Microsoft BitLocker Administration and Monitoring** appears in the **Programs and Features** list.

   **Note**  
   To validate the MBAM installation, you must use a Domain Account that has local computer administrative credentials on each server.



2. On the server where the Recovery and Hardware Database is installed, open SQL Server Management Studio and verify that the **MBAM Recovery and Hardware** database is installed.

3. On the server where the Compliance and Audit Database is installed, open SQL Server Management Studio and verify that the **MBAM Compliance Status** database is installed.

4. On the server where the Compliance and Audit Reports are installed, open a web browser with administrative privileges and browse to the “Home” of the SQL Server Reporting Services site.

   The default Home location of a SQL Server Reporting Services site instance can be found at http://<em>&lt;NameofMBAMReportsServer&gt;</em>/Reports.aspx. To find the actual URL, use the Reporting Services Configuration Manager tool and select the instances specified during setup.

   Confirm that a folder named **Malta Compliance Reports** is listed and that it contains five reports and one data source.

   **Note**  
   If SQL Server Reporting Services was configured as a named instance, the URL should resemble the following:http://*&lt;NameofMBAMReportsServer&gt;*/Reports\_*&lt;SRSInstanceName&gt;*



5. On the server where the Administration and Monitoring feature is installed, run **Server Manager** and browse to **Roles**, select **Web Server (IIS)**, and then click **Internet Information Services (IIS) Manager**. In **Connections** browse to *&lt;computername&gt;*, click **Sites**, and click **Microsoft BitLocker Administration and Monitoring**. Verify that **MBAMAdministrationService**, **MBAMComplianceStatusService**, and **MBAMRecoveryAndHardwareService** are listed.

6. On the server where the Administration and Monitoring feature is installed, open a web browser with administrative privileges and browse to the following locations in the MBAM web site, to verify that they load successfully:

   -   *http://&lt;computername&gt;/default.aspx* and confirm each of the links for navigation and reports

   -   *http://&lt;computername&gt;/MBAMAdministrationService/AdministrationService.svc*

   -   *http://&lt;computername&gt;/MBAMComplianceStatusService/StatusReportingService.svc*

   -   *http://&lt;computername&gt;/MBAMRecoveryAndHardwareService/CoreService.svc*

   **Note**  
   Typically, services are installed on the default port 80 without network encryption. If the services are installed on a different port, change the URLs to include the appropriate port. For example, http://*&lt;computername&gt;:&lt;port&gt;*/default.aspx or http://<em>&lt;hostheadername&gt;/</em>default.aspx

   If the services were installed with network encryption, change http:// to https://.



~~~
Verify that each web page loads successfully.
~~~

## Related topics


[Deploying the MBAM 1.0 Server Infrastructure](deploying-the-mbam-10-server-infrastructure.md)









