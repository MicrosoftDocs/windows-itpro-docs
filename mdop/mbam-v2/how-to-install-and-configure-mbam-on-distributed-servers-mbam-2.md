---
title: How to Install and Configure MBAM on Distributed Servers
description: How to Install and Configure MBAM on Distributed Servers
author: dansimp
ms.assetid: 67b91e6b-ae2e-4e47-9ef2-6819aba95976
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Install and Configure MBAM on Distributed Servers


The procedures in this topic describe how to install Microsoft BitLocker Administration and Monitoring (MBAM) 2.0 in the Stand-alone topology on distributed servers. To see a diagram of the recommended architecture, along with a description of the databases and features, see [Deploying the MBAM 2.0 Server Infrastructure](deploying-the-mbam-20-server-infrastructure-mbam-2.md). To install Microsoft BitLocker Administration and Monitoring with the Configuration Manager topology, see [Deploying MBAM with Configuration Manager](deploying-mbam-with-configuration-manager-mbam2.md).

Each server feature has certain prerequisites. To verify that you have met the prerequisites and hardware and software requirements, see [MBAM 2.0 Deployment Prerequisites](mbam-20-deployment-prerequisites-mbam-2.md) and [MBAM 2.0 Supported Configurations](mbam-20-supported-configurations-mbam-2.md). In addition, some features require that you provide certain information during the installation process to successfully deploy the feature. You should also review [Planning for MBAM 2.0 Server Deployment](planning-for-mbam-20-server-deployment-mbam-2.md) before you start the MBAM deployment.

**Note**  
To obtain the setup log files, you have to use the Msiexec package and the **/L** &lt;location&gt; option to install MBAM. Log files are created in the location that you specify.

Additional setup log files are created in the %temp% folder on the server of the user who is installing MBAM.



## <a href="" id="deploying-mbam-server-features-"></a>Deploying MBAM Server Features


The following steps describe how to install general MBAM features.

**To start the MBAM Server installation wizard**

1.  On the server where you want to install Microsoft BitLocker Administration and Monitoring, run **MBAMSetup.exe** to start the MBAM installation wizard.

2.  On the **Welcome** page, optionally select the **Customer Experience Improvement Program**, and then click **Start**.

3.  Read and accept the Microsoft Software License Agreement, and then click **Next** to continue the installation.

4.  On the **Topology Selection** page, select the **Stand-alone** topology, and then click **Next**.

    **Note**  
    If you want to install MBAM with the Configuration Manager integrated topology, see [Deploying MBAM with Configuration Manager](deploying-mbam-with-configuration-manager-mbam2.md).



5.  Select the features that you want to install. By default, all MBAM features are selected for installation. Clear the features that you want to install elsewhere. Features that will be installed on the same computer must be installed together at the same time. You must install MBAM features in the following order:

    -   Recovery Database

    -   Compliance and Audit Database

    -   Compliance and Audit Reports

    -   Self-Service Portal

    -   Administration and Monitoring Server

    -   MBAM Group Policy template

    **Note**  
    The installation wizard checks the prerequisites for your installation and displays the prerequisites that are missing. If all of the prerequisites are met, the installation continues. If a missing prerequisite is detected, you have to resolve the missing prerequisites, and then click **Check prerequisites again**. If all prerequisites are met this time, the installation resumes.



~~~
The MBAM Setup wizard displays installation pages for the features that you select. The following sections describe the installation procedures for each feature.

**Note**  
For the following instructions, it is assumed that each feature is to be installed on a separate server. If you install multiple features on a single server, you can change or eliminate some steps.
~~~



**To install the Recovery Database**

1.  On the **Configure the Recovery database** page, specify the names of the computers that will be running the Administration and Monitoring Server feature. After the Administration and Monitoring Server feature is deployed, it uses its domain account to connect to the database.

2.  Click **Next** to continue.

3.  Specify the SQL Server instance name and the name of the database that will store the recovery data. You must also specify both where the database will be located and where the log information will be located.

4.  Click **Next** to continue with the MBAM Setup wizard.

**To install the Compliance and Audit Database**

1.  On the **Configure the Compliance and Audit Database** page, specify the user account that will be used to access the database for reports.

2.  Specify the computer names of the computers that will be running the Administration and Monitoring Server and the Compliance and Audit Reports. After the Administration and Monitoring and the Compliance and Audit Reports Server are deployed, they use their domain accounts to connect to the databases.

    **Note**  
    If you are installing the Compliance and Audit Database without the Compliance and Audit Reports feature, you must add an exception on the Compliance and Audit Database computer to enable inbound traffic on the Microsoft SQL Server port. The default port number is 1433.



3.  Specify the SQL Server instance name and the name of the database that will store the compliance and audit data. You must also specify where the database and log information will be located.

4.  Click **Next** to continue with the Microsoft BitLocker Administration and Monitoring Setup wizard.

**To install the Compliance and Audit Reports**

1.  On the **Configure the Compliance and Audit Reports** page, specify the remote SQL Server instance name (for example, &lt;ServerName&gt;) where the Compliance and Audit Database was installed.

    **Note**  
    If you are installing the Compliance and Audit Reports without the Administration and Monitoring Server, you must add an exception on the Compliance and Audit Report computer to enable inbound traffic on the Reporting Server port (the default port is 80).



2.  Specify the name of the Compliance and Audit Database. By default, the database name is MBAM Compliance Status, although you can change the name when you install the Compliance and Audit Database.

3.  Click **Next** to continue.

4.  Select the instance of SQL Server Reporting Services where the Compliance and Audit Reports will be installed. Provide a domain user account and password to access the Compliance and Audit Database. Configure the password for this account to never expire. The user account should be able to access all data that is available to the MBAM Reports Users group.

5.  Click **Next** to continue with the Microsoft BitLocker Administration and Monitoring Setup wizard.

**To install the Self-Service Portal**

1.  On the **Configure the Self-Service Portal** page, you can optionally encrypt the communication between the Self-Service Portal and the Administration and Monitoring servers. If you choose the option to encrypt the communication, you are prompted to select the certification authority-provisioned certificate to use for encryption.

2.  Click **Next** to continue.

3.  Specify the remote instance of SQL Server (for example, *&lt;ServerName&gt;*) where the Compliance and Audit Database was installed.

4.  Specify the name of the Compliance and Audit Database. By default, the database name is MBAM Compliance Status. However, you can change the name when you install the Compliance and Audit Database.

5.  Click **Next** to continue.

6.  Specify the remote instance of SQL Server (for example, *&lt;ServerName&gt;*) where the Recovery Database was installed.

7.  Specify the name of the Recovery Database. By default, the database name is **MBAM Recovery and Hardware**. However, you can change the name when you install the Recovery Database feature.

8.  Click **Next** to continue.

9.  Enter the **Port Number**, the **Host Name** (optional), and the **Installation Path** for the MBAM Administration and Monitoring Server.

    **Note**  
    The port number that you specify must be an unused port number on the Administration and Monitoring server unless you specify a unique host header name. If you are using Windows Firewall, the port will be opened automatically.



10. To optionally register a Service Principal Name (SPN) for the Self-Service Portal, select **Register this machine’s Service Principal Names (SPN) with Active Directory (Required for Windows Authentication)**. If you select this check box, MBAM Setup will not try to register the existing SPNs, and you can manually register the SPN before or after the MBAM installation. For instructions on registering the SPN manually, see [Manual SPN Registration](https://go.microsoft.com/fwlink/?LinkId=286758).

11. Click **Next** to continue with the Microsoft BitLocker Administration and Monitoring Setup wizard.

12. Specify whether to use Microsoft Updates to help keep your computer secure, and then click **Next**.

13. When the selected MBAM feature information is completed, you are ready to start the MBAM installation by using the Setup wizard. Click **Back** to move through the wizard if you have to review or change your installation settings. Click **Install** to start the installation. Click **Cancel** to exit the wizard. Setup installs the MBAM features that you selected and notifies you that the installation is finished.

14. Click **Finish** to exit the wizard.

    **Note**  
    To configure the Self-Service Portal after you installed it, brand the Self-Service Portal with your company name and other company-specific information, see [How to Brand the Self-Service Portal](how-to-brand-the-self-service-portal.md) for instructions.



15. If the client computers have access to the Microsoft Content Delivery Network (CDN), which gives the Self-Service Portal the required access to certain JavaScript files, you are finished with the Self-Service Portal installation. If the client computers does not have access to the Microsoft CDN, complete the steps in the next section to configure the Self-Service Portal to reference the JavaScript files from an accessible source.

**To configure the Self-Service Portal when end users cannot access the Microsoft Content Delivery Network**

1. If the client computers have access to the Microsoft Content Delivery Network (CDN), which gives the Self-Service Portal the required access to certain JavaScript files, the Self-Service Portal installation is completed. If the client computers do not have access to the Microsoft CDN, complete the remaining steps in this section to configure the Self-Service Portal to reference the JavaScript files from an accessible source.

2. Download the four JavaScript files from the Microsoft CDN:

   -   jQuery-1.7.2.min.js - [https://go.microsoft.com/p/fwlink/?LinkID=271736](https://go.microsoft.com/fwlink/p/?LinkID=271736)

   -   MicrosoftAjax.js –[https://go.microsoft.com/p/fwlink/?LinkId=272283](https://go.microsoft.com/fwlink/p/?LinkId=272283)

   -   MicrosoftMvcAjax.js - [https://go.microsoft.com/p/fwlink/?LinkId=272284](https://go.microsoft.com/fwlink/p/?LinkId=272284)

   -   MicrosoftMvcValidation.js - <https://go.microsoft.com/fwlink/p/?LinkId=272285>

3. Copy the JavaScript files to the **Scripts** directory of the Self-Service Portal. This directory is located in <em>&lt;MBAM Self-Service Install Directory&gt;\\</em>Self Service Website\\Scripts.

4. Open **Internet Information Services (IIS) Manager**.

5. Expand **Sites** &gt; **Microsoft BitLocker Administration and Monitoring**, and highlight **SelfService**.

   **Note**  
   *SelfService* is the default virtual directory name. If you chose a different name for this directory during installation, remember to replace *SelfService* in the rest of these instructions with the name you chose.



6. In the middle pane, double-click **Application Settings**.

7. For each item in the following list, edit the application settings to reference the new location by replacing &lt;virtual directory&gt; with /SelfService/ (or the name you chose during installation). For example, the virtual directory path will be similar to /selfservice/scripts/jquery-1.7.2.min.js.

   -   jQueryPath: /&lt;virtual directory&gt;/Scripts/ jQuery-1.7.2.min.js

   -   MicrosoftAjaxPath: /&lt;virtual directory&gt;/Scripts/ MicrosoftAjax.js

   -   MicrosoftMvcAjaxPath: /&lt;virtual directory&gt;/Scripts/ MicrosoftMvcAjax.js

   -   MicrosoftMvcValidationPath: /&lt;virtual directory&gt;/Scripts/ MicrosoftMvcValidation.js

**To install the Administration and Monitoring Server feature**

1. MBAM can encrypt the communication between the Web Services and the Administration and Monitoring servers. If you choose the option to encrypt the communication, you are prompted to select the certification authority-provisioned certificate to use for encryption.

2. Click **Next** to continue.

3. Specify the remote instance of SQL Server (for example: *&lt;ServerName&gt;*) where the Compliance and Audit Database was installed.

4. Specify the name of the Compliance and Audit Database. By default, the database name is MBAM Compliance Status. However, you can change the name when you install the Compliance and Audit Database.

5. Click **Next** to continue.

6. Specify the remote instance of SQL Server (for example: *&lt;ServerName&gt;*) where the Recovery Database was installed.

7. Specify the name of the Recovery Database. By default, the database name is **MBAM Recovery and Hardware**. However, you can change the name when you install the Recovery Database feature.

8. Click **Next** to continue.

9. Specify the URL for the “Home” of the SQL Server Reporting Services (SRS) site. The default Home location of a SQL Server Reporting Services site instance is at:

   http://<em>&lt;NameofMBAMReportsServer&gt;/</em>ReportServer

   **Note**  
   If SQL Server Reporting Services was configured as a named instance, the URL resembles the following: http://*&lt;NameofMBAMReportsServer&gt;*/ReportServer\_*&lt;SRSInstanceName&gt;*.



10. Click **Next** to continue.

11. Enter the **Port Number**, the **Host Name** (optional), and the **Installation Path** for the MBAM Administration and Monitoring Server.

    **Note**  
    The port number that you specify must be an unused port number on the Administration and Monitoring server unless you specify a unique host header name. If you are using Windows Firewall, the port will be opened automatically.



12. To optionally register a Service Principal Name (SPN) for the Self-Service Portal, select **Register this machine’s Service Principal Names (SPN) with Active Directory (Required for Windows Authentication)**. If you select this check box, MBAM Setup will not try to register the existing SPNs, and you can manually register the SPN before or after the MBAM installation. For instructions on registering the SPN manually, see [Manual SPN Registration](https://go.microsoft.com/fwlink/?LinkId=286758).

13. Click **Next** to continue with the Microsoft BitLocker Administration and Monitoring Setup wizard.

14. Specify whether to use Microsoft Updates to help keep your computer secure, and then click **Next**.

15. When the selected MBAM feature information is completed, you are ready to start the MBAM installation by using the Setup wizard. Click **Back** to move through the wizard if you have to review or change your installation settings. Click **Install** to being the installation. Click **Cancel** to exit the wizard. Setup installs the MBAM features that you selected and notifies you that the installation is finished.

16. Click **Finish** to exit the wizard.

**To perform post-installation configuration**

1.  On the Administration and Monitoring Server, add users to the following local groups to give them access to the features on the MBAM Administration and Monitoring website.

    -   **MBAM Helpdesk Users**: Members of this local group can access the Drive Recovery and Manage TPM features on the MBAM Administration and Monitoring website. All fields in Drive Recovery and Manage TPM are required fields for a Helpdesk User.

    -   **MBAM Advanced Helpdesk Users**: Members of this local group have advanced access to the Drive Recovery and Manage TPM features on the MBAM Administration and Monitoring website. For Advanced Helpdesk Users, only the Key ID field is required in Drive Recovery. In **Manage TPM**, only the **Computer Domain** field and **Computer Name** field are required.

2.  On the server that hosts Administration and Monitoring Server and the Compliance and Audit Database and on the server that hosts the Compliance and Audit Reports, add users to the following local group to give them access to the Reports feature on the MBAM Administration and Monitoring website.

    -   **MBAM Report Users**: Members of this local group can access the reports on the MBAM Administration and Monitoring website.

    **Note**  
    Identical user or group membership of the **MBAM Report Users** local group must be maintained on all computers where the MBAM Administration and Monitoring Server features, Compliance and Audit Database, and the Compliance and Audit Reports are installed.



## Validating the MBAM Server Feature Installation


When Microsoft BitLocker Administration and Monitoring Server feature installation is completed, we recommend that you validate that the installation has successfully set up all the necessary features for MBAM. Use the following procedure to confirm that the Microsoft BitLocker Administration and Monitoring service is functional.

**To validate an MBAM Server installation**

1. On each server where an MBAM feature is deployed, open **Control Panel**, select **Programs**, and then select **Programs and Features**. Verify that **Microsoft BitLocker Administration and Monitoring** appears in the **Programs and Features** list.

   **Note**  
   To validate the MBAM installation, you must use a domain account that has local computer administrative credentials on each server.



2. On the server where the Recovery Database is installed, open SQL Server Management Studio and verify that the **MBAM Recovery and Hardware** database is installed.

3. On the server where the Compliance and Audit Database is installed, open SQL Server Management Studio and verify that the **MBAM Compliance Status Database** is installed.

4. On the server where the Compliance and Audit Reports are installed, open a web browser with administrative credentials and browse to the “Home” of the SQL Server Reporting Services site.

   The default Home location of a SQL Server Reporting Services site instance can be found is at http://<em>&lt;NameofMBAMReportsServer&gt;</em>/Reports.aspx. To find the actual URL, use the Reporting Services Configuration Manager tool and select the instances that were specified during setup.

   Confirm that a reports folder named **Microsoft BitLocker Administration and Monitoring** contains a data source called **MaltaDataSource** and that an **en-us** folder contains four reports.

   **Note**  
   If SQL Server Reporting Services was configured as a named instance, the URL should resemble the following:http://*&lt;NameofMBAMReportsServer&gt;*/Reports\_*&lt;SRSInstanceName&gt;*



~~~
**Note**  
If SSRS was not configured to use Secure Socket Layer (SSL), the URL for the reports will be set to HTTP instead of HTTPS when you install the MBAM Server. If you then go to the Administration and Monitoring website and select a report, the following message appears: “Only Secure Content is Displayed.” To show the report, click **Show All Content**.
~~~



5. On the server where the Administration and Monitoring feature is installed, run **Server Manager** and browse to **Roles**. Select **Web Server (IIS)**, and then click **Internet Information Services (IIS) Manager**.

6. In **Connections**, browse to *&lt;computername&gt;*, select **Sites**, and select **Microsoft BitLocker Administration and Monitoring**. Verify that **MBAMAdministrationService**, **MBAMComplianceStatusService**, and **MBAMRecoveryAndHardwareService** are listed.

7. On the server where the Administration and Monitoring features and Self-Service Portal are installed, open a web browser with administrative credentials and browse to the following locations to verify that they load successfully.

   **Note**  
   The URLs ending in “.svc” do not display a website. Success is indicated by the message “Metadata publishing for this service is currently disabled” or by information resembling code. If you see some other error message or if the page cannot be found, the page has not loaded successfully.



~~~
-   *http://&lt;hostname&gt;/HelpDesk/default.aspx* and confirm each of the links for navigation and reports

-   *http://&lt;hostname&gt;/SelfService&gt;/*

-   *http://&lt;computername&gt;/MBAMAdministrationService/AdministrationService.svc*

-   *http://&lt;hostname&gt;/MBAMUserSupportService/UserSupportService.svc*

-   *http://&lt;computername&gt;/MBAMComplianceStatusService/StatusReportingService.svc*

-   *http://&lt;computername&gt;/MBAMRecoveryAndHardwareService/CoreService.svc*

**Note**  
It is assumed that the server features were installed on the default port without network encryption. If you installed the server features on a different port or virtual directory, change the URLs to include the appropriate port, for example, *http://&lt;hostname&gt;:&lt;port&gt;/HelpDesk/default.aspx* or*http://&lt;hostname&gt;:&lt;port&gt;/&lt;virtualdirectory&gt;/default.aspx*

If the server features were installed with network encryption, change http:// to https://.
~~~



8. Verify that each webpage loads successfully.

## Related topics


[Deploying the MBAM 2.0 Server Infrastructure](deploying-the-mbam-20-server-infrastructure-mbam-2.md)









