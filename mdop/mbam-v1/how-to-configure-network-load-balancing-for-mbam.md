---
title: How to Configure Network Load Balancing for MBAM
description: How to Configure Network Load Balancing for MBAM
author: dansimp
ms.assetid: df2208c3-352b-4a48-9722-237b0c8cd6a5
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Configure Network Load Balancing for MBAM


To verify that you have met the prerequisites and hardware and software requirements to install the Administration and Monitoring Server feature, see [MBAM 1.0 Deployment Prerequisites](mbam-10-deployment-prerequisites.md) and [MBAM 1.0 Supported Configurations](mbam-10-supported-configurations.md).

**Note**  
To obtain the setup log files, you must install Microsoft BitLocker Administration and Monitoring (MBAM) by using the **msiexec** package and the **/l** &lt;location&gt; option. The Log files are created in the location that you specify.

Additional setup log files are created in the %temp% folder of the user who installs MBAM.

 

The Network Load Balancing (NLB) clusters for the Administration and Monitoring Server feature provides scalability in MBAM and it should support more than 55,000 MBAM client computers.

**Note**  
Windows Server Network Load Balancing distributes client requests across a set of servers that are configured into a single server cluster. When Network Load Balancing is installed on each of the servers (hosts) in a cluster, the cluster presents a virtual IP address or fully qualified domain name (FQDN) to client requests. The initial client requests go to all the hosts in the cluster, but only one host accepts and handles the request.

All computers that will be part of a NLB cluster have the following requirements:

-   All computers in the NLB cluster must be in the same domain.

-   Each computer in the NLB cluster must use a static IP address.

-   Each computer in the NLB cluster must have Network Load Balancing enabled.

-   The NLB cluster requires a static IP address, and a host record must be manually created in the domain name system (DNS).

 

## Configuring Network Load Balancing for MBAM Administration and Monitoring Servers


The following steps describe how to configure an NLB cluster virtual name and IP address for two MBAM Administration and Monitoring servers, and how to configure MBAM Clients to use the NLB Cluster.

Before you begin the procedures described in this topic, you must have the MBAM Administration and Monitoring Server feature successfully installed by using the same IIS port binding on two separate server computers that meet the prerequisites for both MBAM Server feature installation and NLB Cluster configuration.

**Note**  
This topic describes the basic process of using Network Load Balancing Manager to create an NLB Cluster. The exact steps to configure a Windows Server as part of an NLB cluster depend on the Windows Server version in use.. For more information about how to create NLBs on Windows Server 2008, see [Creating Network Load Balancing Clusters](https://go.microsoft.com/fwlink/?LinkId=197176) in the Windows Server 2008 TechNet library.

 

**To configure an NLB Cluster Virtual Name and IP address for two MBAM Administration and Monitoring Servers**

1.  Click **Start**, click **All Programs**, click **Administrative Tools**, and then click **Network Load Balancing Manager**.

    **Note**  
    If the NLB Manager is not present, you can install it as a Windows Server feature. You must install this feature on both MBAM Administration and Monitoring servers if you want to configure it into the NLB cluster.

     

2.  On the menu bar, click **Cluster**, and then click **New** to open the **Cluster Parameters** dialog box.

3.  In the **Cluster Parameters** dialog box, enter the information for the NLB cluster IP configuration:

    -   **IP address:** NLB cluster IP address registered in DNS

    -   **Subnet mask:** NLB cluster IP address subnet mask registered in DNS

    -   **Full Internet name:** FQDN of NLB cluster name registered in DNS

4.  Ensure that **Unicast** is selected in **Cluster operation mode**, and then click **Next**.

5.  On the **Cluster IP Addresses** page, click **Next**.

6.  On the **Port Rules** page, click **Edit** to define the ports that the NLB cluster will respond to and configure the ports that are used for client-to-site system communication as they are defined for the site, or click **Next** to enable the NLB cluster IP address to respond to all TCP/IP ports.

    **Note**  
    Ensure that **Affinity** is set to **Single**.

     

7.  On the **Connect** page, enter an MBAM Administration and Monitoring server instance host name that will be part of the NLB cluster in **Host**, and then click **Connect**.

8.  In **Interfaces available for configuring a new cluster**, select the networking interface that will be configured to respond to NLB cluster communication, and then click **Next**.

9.  On the **Host Parameters** page, review the information displayed to ensure that the **Dedicated IP configuration** settings display the dedicated host IP configuration for the correct NLB cluster host, check that the Initial host state **Default state:** is **Started**, and then click **Finish**.

    **Note**  
    The **Host Parameters** page also displays the NLB cluster host priority, which is 1 through 32. As new hosts are added to the NLB cluster, the host priority must differ from the previously added hosts. The priority is automatically incremented when you use the Network Load Balancing Manager.

     

10. Click **&lt;NLB cluster name&gt;** and ensure that the NLB host interface **Status** displays **Converged** before you continue. This step might require that you refresh the NLB cluster display as the host TCP/IP configuration that is being modified by the NLB Manager.

11. To add additional hosts to the NLB cluster, right-click **&lt;NLB cluster name&gt;**, click **Add Host to Cluster,** and then repeat steps 7 through 10 for each site system that will be part of the NLB cluster.

12. On a computer that has MBAM Group Policy template installed, modify the MBAM Group Policy settings to configure the MBAM services endpoints to use the NLB Cluster name and the appropriate IIS port binding to access the MBAM Administration and Monitoring Server features that are installed on the NLB Cluster computers. For more information about how to edit MBAM GPO settings, see [How to Edit MBAM 1.0 GPO Settings](how-to-edit-mbam-10-gpo-settings.md). If the MBAM Administration and Monitoring servers are new to your environment, ensure that the required local security group memberships have been properly configured. For more information about security group requirements, see [Planning for MBAM 1.0 Administrator Roles](planning-for-mbam-10-administrator-roles.md).

13. When the NLB Cluster configuration is complete, we recommend that you validate that the MBAM Administration and Monitoring NLB Cluster is functional. To do this, open a web browser on a computer other than the servers that are configured in the NLB, and ensure that you can access the MBAM Administration and Monitoring web site by using the NLB FQDN.

## Related topics


[Deploying the MBAM 1.0 Server Infrastructure](deploying-the-mbam-10-server-infrastructure.md)

 

 





