---
title: How to Configure a Read-only Cache on the App-V Client (RDS)
description: How to Configure a Read-only Cache on the App-V Client (RDS)
author: dansimp
ms.assetid: b6607fe2-6f92-4567-99f1-d8e3c8a591e0
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# How to Configure a Read-only Cache on the App-V Client (RDS)


**Important**  
You must be running App-V 4.6, SP1 to use this procedure.

 

You can deploy the App-V client by using a shared cache that is populated with all the applications required for all users. Then you configure the App-V Remote Desktop Services (RDS) Clients to use the same cache file. Users are granted access to specific applications by using the App-V publishing process. Because the cache is already preloaded with all applications, no streaming occurs when a user starts an application. However, the packages used to prepopulate the cache must be put on an App-V server that supports Real Time Streaming Protocol (RTSP) streaming and that grants access permissions to the App-V Clients. If you publish the applications by using an App-V Management Server, you can use it to provide this streaming function.

**Note**  
The details outlined in these procedures are intended as examples only. You might use different methods to complete the overall process.

 

## Deploying the App-V Client in an RDS Scenario


The deployment process consists of four primary tasks:

-   Creating and populating the master shared cache file

-   Copying the shared cache file to the server storage

-   Configuring the App-V client software

-   Managing the update deployment cycle for the shared cache file after the initial deployment

These tasks require careful planning. We recommend that you prepare and document a methodical, reproducible process for your organization to follow. This is especially important for the preparation and deployment of the master shared cache file, and for the ongoing management of application updates, each of which require an update to the master shared cache. Use the following procedures to complete these primary tasks.

**Note**  
Although you can publish the applications by using several different methods, the following procedures are based on your using an App-V Management Server for publishing.

 

**To configure the read-only cache for initial deployment**

1.  Set up and configure an App-V Management Server to provide user authentication and publishing support.

2.  Populate the Content folder of this Management Server with all the application packages required for all users.

3.  Set up a staging computer that has the App-V Client installed. Log on to the staging computer by using an account that has access to all applications so that the complete set of applications are published to the computer, and then stream the applications to cache so that they are fully loaded.

    **Important**  
    The staging computer must use the same operating system type and system architecture as those used by the VMs on which the App-V Client will run.

     

4.  Restart the staging computer in safe mode to make sure that the drivers are not started, because this would lock the cache file.

    **Note**  
    Or, you can stop and disable the Application Virtualization service, and then restart the computer. After the file is copied, remember to enable and start the service again.

     

5.  Copy the Sftfs.fsd cache file to a SAN where all the RDS servers can access it, such as in a shared folder. Set the folder access permissions to Read-only for the group Everyone and to Full Control for administrators who will manage the cache file updates. The location of the cache file can be obtained from the registry AppFS\\FileName.

    **Important**  
    You must put the FSD file in a location that has the responsiveness and reliability equal to locally attached storage performance, for example, a SAN.

     

6.  Install the App-V RDS Client on each RDS server, and then configure it to use the read-only cache by adding the following registry key values to the AppFS key on the client. The AppFS key is located at HKEY\_LOCAL\_MACHINE\\SOFTWARE\\\]Microsoft\\SoftGrid\\4.5\\Client\\AppFS for 32-bit computers and at HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\SoftGrid\\4.5\\Client\\AppFS for 64-bit computers.

    <table>
    <colgroup>
    <col width="25%" />
    <col width="25%" />
    <col width="25%" />
    <col width="25%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Key</th>
    <th align="left">Type</th>
    <th align="left">Value</th>
    <th align="left">Purpose</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>FileName</p></td>
    <td align="left"><p>String</p></td>
    <td align="left"><p>path of FSD</p></td>
    <td align="left"><p>Specifies the path of the shared cache file, for example, \\RDSServername\Sharefolder\SFTFS.FSD (Required).</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>ReadOnlyFSD</p></td>
    <td align="left"><p>DWORD</p></td>
    <td align="left"><p>1</p></td>
    <td align="left"><p>Configures the client to operate in Read-Only mode. This ensures that the client will not try to stream updates to the package cache. (Required)</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>ErrorLogLocation</p></td>
    <td align="left"><p>String</p></td>
    <td align="left"><p>path of error log (.etl) file</p></td>
    <td align="left"><p>Entry used to specify the path of the error log. (Recommended. Use a local path such as C:\Logs\Sftfs.etl).</p></td>
    </tr>
    </tbody>
    </table>

     

7.  Configure each RDS server in the farm to use the publishing server and to use publishing update when users log on. As users log on to the RDS servers, a publishing update cycle occurs and publishes all the applications for which their account is authorized. These applications are run from the shared cache.

**To configure the RDS client for package upgrade**

1.  Complete the upgrade and testing of the application package.

2.  Upgrade the package on the App-V server. Then, publish and stream the new version of the applications to the client on the staging computer so that they are fully loaded into cache.

3.  Restart the staging computer in safe mode to ensure the drivers are not started.

    **Note**  
    Or, you can first stop and then disable the Application Virtualization service in the Services.msc, and restart the computer. After the file has been copied, remember to enable and start the service again.

     

4.  Copy the Sftfs.fsd cache file to a SAN where all the RDS servers can access it, such as in a shared folder. You can use a different file name, for example, SFTFS\_V2.FSD, to distinguish the new version.

5.  To configure the App-V RDS Client on each RDS server in the farm to use the updated shared cache file, change the AppFS registry key FILENAME value to point to the location of the updated file, for example, \\\\RDSServername\\Sharefolder\\SFTFS\_V2.FSD. This guarantees that each RDS server receives the updated copy of the cache when the App-Vclient drivers restart.

    **Important**  
    You must restart the RDS servers in order to use the updated shared cache file.

     

## How to Use Symbolic Links when Upgrading the Cache


Instead of changing the AppFS key FILENAME value every time that a new cache file is deployed that contains new or upgraded packages, you can use a symbolic link in the following operating systems: Windows Vista, Windows 7, and Windows Server 2008. For more information about symbolic links, see [Symbolic Links](https://go.microsoft.com/fwlink/?LinkId=157626) (https://go.microsoft.com/fwlink/?LinkId=157626). In contrast, Windows XP does not support the use of symbolic links, and you must use junction points instead. For more information about junctions, see [article 205524](https://go.microsoft.com/fwlink/?LinkId=182553) in the Microsoft Knowledge Base (https://go.microsoft.com/fwlink/?LinkId=182553), and also the tool [Junction v1.05](https://go.microsoft.com/fwlink/?LinkId=182554) (https://go.microsoft.com/fwlink/?LinkId=182554).

**To configure a symbolic link to reference the cache**

1.  During the initial deployment stage, open a Command Prompt window as a local administrator on the RDS server host operating system.

2.  Create a symbolic link by using the MKLINK command, and then configure it to point to the Sftfs.fsd file.

    **     mklink symlinkname \\\\rdshostserver\\sharefolder\\sftfs.fsd**

3.  On the VDI Master VM Image, open a Command Prompt window by using the **Run as administrator** option and grant remote link permissions so that the VM can access the symbolic link on the VDI Host operating system. By default, remote link permissions are disabled.

    **     fsutil behavior set SymlinkEvaluation R2R:1**

    **Note**  
    On the storage server, appropriate link permissions must be enabled. Depending on the location of link and the Sftfs.fsd file, the permissions are **L2L:1** or **L2R:1** or **R2L:1** or **R2R:1**.

     

4.  When you configure the App-V RDS Client, set the AppFS key FILENAME value equal to the UNC path of the FSD file that is using the symbolic link. For example, set the file name to \\\\VDIHostserver\\Symlinkname. When the App-V client first accesses the cache, the symbolic link passes to the client a handle to the cache file. The client continues to use that handle as long as the client is running. The value of the symbolic link can safely be updated even if existing clients have the old shared cache open.

5.  When you must upgrade a package or to add a new package to the cache, follow steps 1 through 4 of the upgrade procedure. Then, delete the symbolic link and re-create it to point to the new version of the shared cache file. This guarantees that each RDS server receives the updated copy of the cache when the App-V client drivers restart. When the RDS server is restarted, the App-V client receives a handle to the updated copy of the cache because the client uses the path that contains the updated symbolic link. Then, the users have access to the new and updated applications.

## Related topics


[How to Install Application Virtualization Management Server](how-to-install-application-virtualization-management-server.md)

[How to Manually Install the Application Virtualization Client](how-to-manually-install-the-application-virtualization-client.md)

[How to Install the Client by Using the Command Line](how-to-install-the-client-by-using-the-command-line-new.md)

 

 





