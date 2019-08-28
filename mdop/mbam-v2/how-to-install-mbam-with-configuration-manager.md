---
title: How to Install MBAM with Configuration Manager
description: How to Install MBAM with Configuration Manager
author: msfttracyp
ms.assetid: fd0832e4-3b79-4e56-9550-d2f396be6d09
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install MBAM with Configuration Manager


This section describes the steps to install MBAM with Configuration Manager by using the recommended configuration, which is illustrated in [Getting Started - Using MBAM with Configuration Manager](getting-started---using-mbam-with-configuration-manager.md). The steps are divided into the following tasks:

-   Install and configure MBAM on the Configuration Manager Server

-   Install the Recovery and Audit Databases on the Database Server

-   Install the Administration and Monitoring Server features on the Administration and Monitoring Server

Before you begin the installation, ensure that you have edited or created the necessary mof files. For instructions, see [How to Create or Edit the mof Files](how-to-create-or-edit-the-mof-files.md).

**Important**  
If you are using a non-default SQL Server Reporting Services (SSRS) instance, you must start the MBAM Setup by using the following command line to specify the SSRS named instance:

`MbamSetup.exe CM_SSRS_INSTANCE_NAME=<NamedInstance>`

 

**To install MBAM on the Configuration Manager Server**

1.  On the Configuration Manager Server, run **MBAMSetup.exe** to start the MBAM installation wizard.

    **Note**  
    To obtain the setup log files, you have to use the Msiexec package and the **/L** &lt;location&gt; option to install Configuration Manager. Log files are created in the location that you specify.

    Additional setup log files are created in the %temp% folder on the computer of the user who is installing Configuration Manager.

     

2.  On the **Welcome** page, optionally select the **Customer Experience Improvement Program**, and then click **Start**.

3.  Read and accept the Microsoft Software License Agreement, and then click **Next** to continue the installation.

4.  On the **Topology Selection** page, select **System Center Configuration Manager Integration**, and then click **Next**.

5.  On the **Select features to install** page, select **System Center Configuration Manager Integration**.

    **Note**  
    On the **Checking Prerequisites** page, click **Next** after the installation wizard checks the prerequisites for your installation and confirms that none are missing. If a missing prerequisite is detected, you have to resolve the missing prerequisites, and then click **Check prerequisites again.**

     

6.  Specify whether to use Microsoft Updates to help keep your computer secure, and then click **Next**. Using Microsoft Updates does not turn on Automatic Updates in Windows.

7.  Click **Next** to continue.

8.  On the **Installation Summary** page, review the list of features that will be installed, and click **Install** to start installing the MBAM features. Click **Back** to move back through the wizard if you have to review or change your installation settings, or click **Cancel** to exit Setup. Setup installs the MBAM features and notifies you that the installation is completed.

9.  Click **Finish** to exit the wizard.

**To install the Recovery and Audit Databases on the Database Server**

1.  On the Database Server, run **MBAMSetup.exe** to start the MBAM installation wizard.

2.  On the **Welcome** page, optionally select the **Customer Experience Improvement Program**, and then click **Start**.

3.  Read and accept the Microsoft Software License Agreement, and then click **Next** to continue the installation.

4.  On the **Topology Selection** page, select the **System Center Configuration Manager Integration** topology, and then click **Next**.

5.  From the list of features to install, select **Recovery Database** and **Audit Database**, and clear the remaining features.

    **Note**  
    The installation wizard checks the prerequisites for your installation and displays the prerequisites that are missing. If all of the prerequisites are met, the installation continues. If a missing prerequisite is detected, you have to resolve the missing prerequisites, and then click **Check prerequisites again**. If all prerequisites are met this time, the installation resumes.

     

6.  On the **Configure the Recovery Database** page, specify the names of the computers that will be running the Administration and Monitoring Server feature. After the Administration and Monitoring Server feature is deployed, it uses its domain account to connect to the database.

7.  Click **Next** to continue.

8.  Specify the SQL Server instance name and the name of the database that will store the recovery data. You must also specify both where the database will be located and where the log information will be located.

9.  Click **Next** to continue with the MBAM Setup installation wizard.

10. On the **Configure the Audit Database** page, specify the user account that will be used to access the database for reports.

11. Specify the computer names of the computers that will be running the Administration and Monitoring Server and the Audit Reports. After the Administration and Monitoring and the Audit Reports features are deployed, their domain accounts will be used to connect to the databases.

    **Note**  
    If you are installing the Audit Database without the Audit Reports feature, you must add an exception on the Audit Database computer to enable inbound traffic on the Microsoft SQL Server port. The default port number is 1433.

     

12. Specify the SQL Server instance name and the name of the database that will store the audit data. You must also specify where the database and log information will be located.

13. Click **Install** to start the installation, and then click **Finish** to complete the installation.

**To install the Administration and Monitoring Server features on the Administration and Monitoring Server**

1.  On the Administration and Monitoring Server, run **MBAMSetup.exe** to start the MBAM installation wizard.

2.  On the **Welcome** page, optionally select the **Customer Experience Improvement Program**, and then click **Start**.

3.  Read and accept the Microsoft Software License Agreement, and then click **Next** to continue the installation.

4.  On the **Topology Selection** page, select the **System Center Configuration Manager Integration** topology, and then click **Next**.

5.  From the list of features to install, select **Administration and Monitoring Server** and **Self-Service Portal**, and clear the remaining features.

    **Note**  
    The installation wizard checks the prerequisites for your installation and displays the prerequisites that are missing. If all of the prerequisites are met, the installation continues. If a missing prerequisite is detected, you have to resolve the missing prerequisites, and then click **Check prerequisites again**. If all prerequisites are met this time, the installation resumes.

     

6.  Install the Self-Service Portal by following the steps in the **To install the Self-Service Portal** section in [How to Install and Configure MBAM on Distributed Servers](how-to-install-and-configure-mbam-on-distributed-servers-mbam-2.md).

    **Note**  
    If the client computers will not have access to the Microsoft Content Delivery Network (CDN), which gives the Self-Service Portal the required access to certain JavaScript files, complete the steps in the **To configure the Self-Service Portal when end users cannot access the Microsoft Content Delivery Network** section [How to Install and Configure MBAM on Distributed Servers](how-to-install-and-configure-mbam-on-distributed-servers-mbam-2.md) to configure the Self-Service Portal to reference the JavaScript files from an accessible source.

     

7.  Install the Administration and Monitoring Server features by following the steps in the **To install the Administration and Monitoring Server feature** section in [How to Install and Configure MBAM on Distributed Servers](how-to-install-and-configure-mbam-on-distributed-servers-mbam-2.md).

8.  Click **Finish** to complete the installation.

## Related topics


[How to Validate the MBAM Installation with Configuration Manager](how-to-validate-the-mbam-installation-with-configuration-manager.md)

[Deploying MBAM with Configuration Manager](deploying-mbam-with-configuration-manager-mbam2.md)

 

 





