---
title: How to Install the Application Virtualization Streaming Server
description: How to Install the Application Virtualization Streaming Server
author: dansimp
ms.assetid: a3065257-fb5a-4d92-98f8-7ef996c61db9
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Install the Application Virtualization Streaming Server


The Application Virtualization Streaming Server publishes its applications to clients. In a load-balanced environment, which is typical of large deployments, all servers in a server group should stream the same applications. If Application Virtualization Streaming Servers are to stream different applications, assign the servers to different server groups. In this case, you might also have to increase a server group's capacity.

If you have designated a target computer on the network, with a logon account having local administrative privileges, you can use the following procedure to install the Application Virtualization Streaming Server and assign it to the appropriate server group.

**Note**  
The Installation Wizard can create a server group record, if one does not exist, and a record of the Application Virtualization Streaming Server membership in this group.

 

After you complete the installation process, restart the server.

**To install an Application Virtualization Streaming Server**

1.  Verify that no earlier versions of the Application Virtualization Streaming Server are installed on your target computer.

    **Important**  
    Make sure that the App-V Management Server is not installed on this computer. The two products cannot be installed on the same computer.

     

2.  Navigate to the location of the Application Virtualization System Setup program on the network, either run this program from the network or copy its directory to the target computer, and then double-click the **Setup.exe** file.

3.  On the **Welcome** page, click **Next**.

4.  On the **License Agreement** page, to accept the license terms, select **I accept the licensing terms and conditions**, and then click **Next**.

5.  On the **Customer Information** page, specify the **User name** and the organization, and then click **Next**.

6.  On the **Installation Path** page, click **Browse**, specify the location where you want to install the Streaming Server, and then click **Next**.

7.  On the **Connection Security Mode** page, select the desired certificate from the drop-down list, and then click **Next**.

    **Note**  
    The **Secure Connection Mode** setting requires the server to have a server certificate provisioned to it from a public key infrastructure. If a server certificate is not installed on the server, this option is unavailable and cannot be selected. You must grant the Network Service account read access to the certificate being used.

     

8.  On the **TCP Port Configuration** page, to use the standard port (554), select **Use default port (554)**. To specify a custom port, select **Use custom port**, specify the port number in the field provided, and then click **Next**.

    **Note**  
    When you install the server in a nonsecure scenario, you can use the default port (554), or you can define a custom port.

     

9.  On the **Content Root** page, specify the location on the target computer where SFT files will be saved, and then click **Next**.

    **Note**  
    If the HTTP or RTSP port for the Virtual Application Streaming Server is already allocated, you will be prompted to select a new port. Specify the desired port, and then click **Next**.

     

10. On the **Advanced Setting** screen, enter the following information:

    1.  **Max client connections**

    2.  **Connection timeout (sec)**

    3.  **RTSP thread pool size**

    4.  **RTSP timeout (sec)**

    5.  **Number of core processes**

    6.  **Core timeout (sec)**

    7.  **Enable User authentication**

    8.  **Enable User authorization**

    9.  **Cache block size (KB)**

    10. **Maximum cache size (MB)**

    **Note**  
    The App-V Streaming Server uses NTFS file system permissions to control access to the applications under the Content share. Use **Enable User authentication** and **Enable User authorization** to control whether the server checks and enforces those access control lists (ACLs) or not.

     

11. On the **Ready to Install the Program** page, to start the installation, click **Install**.

12. On the **Installation Wizard Completed** screen, to close the wizard, click **Finish**.

    **Important**  
    The installation can take several minutes to finish. A status message will flash above the Windows desktop notification area, indicating that the installation succeeded.

    It is not required to restart the computer when you are prompted. However, to optimize system performance, we recommend a restart.

     

13. Repeat Steps 1–12 for each Virtual Application Server that you have to install.

## Related topics


[How to Install the Servers and System Components](how-to-install-the-servers-and-system-components.md)

 

 





