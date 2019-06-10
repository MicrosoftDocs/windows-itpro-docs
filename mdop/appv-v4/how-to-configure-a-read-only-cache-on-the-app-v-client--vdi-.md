---
title: How to Configure a Read-only Cache on the App-V Client (VDI)
description: How to Configure a Read-only Cache on the App-V Client (VDI)
author: dansimp
ms.assetid: 7a41e017-9e23-4a6a-a659-04d23f008b83
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# How to Configure a Read-only Cache on the App-V Client (VDI)


In Microsoft Application Virtualization (App-V) 4.6 the Client supports using a shared read-only cache. The shared read-only cache enables the Client to use disk space efficiently in a Virtual Desktop Infrastructure (VDI) system, where users run applications on Virtual Machines (VM) that are hosted in a data center server environment and share network storage on a Storage Area Network (SAN). The following procedures provide an overview of the process that is required to implement the App-V Client in either of the primary VDI architectures, known as “Pooled VM” or “Static VM”. It is assumed that you are familiar with the planning, deployment, and operation of the App-V system and its components, and also the operation and management of the VDI server. For more information about App-V, see [Application Virtualization](https://go.microsoft.com/fwlink/?LinkId=122939) (https://go.microsoft.com/fwlink/?LinkId=122939)

**Note**  
The details outlined in these procedures are intended as examples only. You might use different methods to complete the overall process.

 

## Deploying the App-V Client in a VDI Scenario


You can deploy the App-V Client in a VDI scenario by using a shared read-only cache that has been populated with all the applications required for all users. You then configure the VDI Master VM Image so that all the App-V Clients use the same cache file. Users are granted access to specific applications by using the App-V publishing process. Since the cache is already preloaded with all applications, no streaming occurs when a user starts an application. However, the packages used to prepopulate the cache must be put on an App-V server that supports Real Time Streaming Protocol (RTSP) streaming and that grants access permissions to the App-V Clients. If you publish the applications by using an App-V Management Server, you can use it to provide this streaming function.

The deployment process consists of four primary tasks:

-   Creating and populating the master shared cache file

-   Copying the shared cache file to the VDI server storage

-   Configuring the App-V client software on the VDI Master Image

-   Managing the update deployment cycle for the shared cache file after the initial deployment

These tasks require careful planning. We recommend that you prepare and document a methodical, reproducible process for your organization to follow. This is especially important for the initial preparation and deployment of the master shared cache file, and for the on-going management of application updates, each of which require an update to the master shared cache. Use the following procedures to complete these primary tasks.

**Note**  
Although you can publish the applications by using several different methods, the following procedures are based on the use of an App-V Management Server for publishing.

 

**To configure the read-only cache for initial deployment in a Pooled VM VDI or Static VM VDI scenario**

1. Set up and configure an App-V Management Server in a VM on the VDI server to provide user authentication and publishing support.

2. Populate the Content folder of this Management Server with all the application packages required for all users.

3. Set up a staging computer that has the App-V Client installed. Log on to the staging computer with an account that has access to all applications so that the complete set of applications are published to the computer, and then stream the applications to cache so that they are fully loaded.

   **Important**  
   The staging computer must use the same operating system type and system architecture as those used by the VMs on which the App-V Client will run.

     

4. Restart the staging computer in Safe Mode to ensure the drivers are not started, which would lock the cache file.

   **Note**  
   Alternatively, you can stop and disable the Application Virtualization service, and then restart the computer. After the file has been copied, remember to enable and start the service again.

     

5. Copy the Sftfs.fsd cache file to the VDI server’s SAN where all the VMs can access it, such as in a shared folder. Set the folder access permissions to Read-only for the group Everyone and to Full Control for administrators who will manage the cache file updates. The location of the cache file can be obtained from the registry AppFS\\FileName.

   **Important**  
   You must put the FSD file in a location that has the responsiveness and reliability equivalent to locally attached storage performance, for example, a SAN.

     

6. Install the App-V Desktop Client on the VDI Master VM Image, and then configure it to use the read-only cache by adding the following registry key values to the AppFS key on the client. The AppFS key is located at HKEY\_LOCAL\_MACHINE\\SOFTWARE\\\[Wow6432Node\\\]Microsoft\\SoftGrid\\4.5\\Client\\AppFS.

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
   <td align="left"><p>path to FSD</p></td>
   <td align="left"><p>Specifies the path to the shared cache file, for example, \VDIServername\Sharefolder\SFTFS.FSD (Required).</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>ReadOnlyFSD</p></td>
   <td align="left"><p>DWORD</p></td>
   <td align="left"><p>1</p></td>
   <td align="left"><p>Configures the client to operate in Read-Only mode. This ensures that the client will not attempt to stream updates to the package cache. (Required)</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p>ErrorLogLocation</p></td>
   <td align="left"><p>String</p></td>
   <td align="left"><p>path to error log (.etl) file</p></td>
   <td align="left"><p>Entry used to specify the path to the error log. (Recommended. Use a local path such as C:\Logs\Sftfs.etl).</p></td>
   </tr>
   </tbody>
   </table>

     

7. Configure the Master VM Image client to use the publishing server and to use publishing refresh at logon. As users log on to the VDI system and their VM is built from the Master VM Image, a publishing refresh cycle occurs and publishes all the applications for which their account is authorized. These applications are run from the shared cache.

**To configure the client for package upgrade in a Pooled VM scenario**

1.  Complete the upgrade and testing of the application package.

2.  Upgrade the package on the App-V server. Then, publish and stream the new version of the applications to the client on the staging computer so that they are fully loaded into cache.

3.  Restart the staging computer in Safe Mode to ensure the drivers are not started.

    **Note**  
    Alternatively, you can stop and disable the Application Virtualization service in the Services.msc, and then restart the computer. After the file has been copied, remember to enable and start the service again.

     

4.  Copy the Sftfs.fsd cache file to the VDI server’s SAN where all the VMs can access it, such as in a shared folder. You can use a different filename, for example, SFTFS\_V2.FSD, to distinguish the new version.

5.  To configure the App-V Desktop Client on the VDI Master VM Image to use the updated shared cache file, change the AppFS registry key FILENAME value to point to the location of the updated file, for example, \\\\VDIServername\\Sharefolder\\SFTFS\_V2.FSD. When users log off and then log on again, a new VM is created for them by using the updated Master Image. All their user settings will be retained and applied to the new VM. Then they have access to the updated applications.

**To configure the client for package upgrade in a Static VM scenario**

1.  Complete the upgrade and testing of the application package.

2.  Upgrade the package on the App-V server. Then, publish and stream the new version of the applications to the client on the staging computer so that the applications are fully loaded into cache.

3.  Restart the staging computer in Safe Mode to ensure that the drivers are not started.

    **Note**  
    Alternatively, you can stop and disable the Application Virtualization service in the Services.msc, and then restart the computer. After the file has been copied, remember to enable and start the service again.

     

4.  Copy the Sftfs.fsd cache file to the VDI server’s SAN where all the VMs can access it, such as in a shared folder. You can use a different filename, for example, SFTFS\_V2.FSD, to distinguish the new version.

5.  To configure the App-V Desktop Client on the VDI Master VM Image to use the updated shared cache file, change the AppFS registry key FILENAME value to point to the location of the updated file, for example, \\\\VDIServername\\Sharefolder\\SFTFS\_V2.FSD. This ensures that new users get the new version.

6.  Create a script that edits the AppFS key FILENAME value to set it to the location of the updated cache, for example, \\\\VDIServername\\Sharefolder\\SFTFS\_V2.FSD. Configure this script to run when the user logs off or logs on so that it runs before the App-V client drivers start, for example, by using Group Policy settings. When users log off and log on again, their existing VM is updated, and they will use the updated copy of the cache. Then, they have access to the updated applications.

## How to Use Symbolic Links when Upgrading the Cache


Instead of modifying the AppFS key FILENAME value every time that a new cache file is deployed that contains new or upgraded packages, you can use a symbolic link in the following operating systems: Windows Vista, Windows 7, and Windows Server 2008. For more information about symbolic links, see [Symbolic Links](https://go.microsoft.com/fwlink/?LinkId=157626) (https://go.microsoft.com/fwlink/?LinkId=157626). In contrast, Windows XP does not support the use of symbolic links, and you must use junction points instead. For more information about junctions, see [article 205524](https://go.microsoft.com/fwlink/?LinkId=182553) in the Microsoft Knowledge Base (https://go.microsoft.com/fwlink/?LinkId=182553), and also the tool [Junction v1.05](https://go.microsoft.com/fwlink/?LinkId=182554) (https://go.microsoft.com/fwlink/?LinkId=182554).

**To configure a symbolic link to reference the cache**

1.  During the initial deployment stage, open a Command Prompt window as a local administrator on the VDI server host operating system.

2.  Create a symbolic link by using the MKLINK command, and then configure it to point to the Sftfs.fsd file.

    **     mklink symlinkname \\\\vdihostserver\\sharefolder\\sftfs.fsd**

3.  On the VDI Master VM Image, open a Command Prompt window by using the **Run as administrator** option and grant remote link permissions so that the VM can access the symbolic link on the VDI Host operating system. By default, remote link permissions are disabled.

    **     fsutil behavior set SymlinkEvaluation R2R:1**

    **Note**  
    On the storage server, appropriate link permissions must be enabled. Depending on the location of link and the Sftfs.fsd file, the permissions are **L2L:1** or **L2R:1** or **R2L:1** or **R2R:1**.

     

4.  When you configure the App-V Desktop Client on the VDI Master VM Image, set the AppFS key FILENAME value equal to the UNC path of the FSD file that is using the symbolic link; for example, set it to \\\\VDIHostserver\\Symlinkname. When the App-V client first accesses the cache, the symbolic link passes to the client a handle to the cache file. The client continues to use that handle as long as the client is running. The value of the symbolic link can safely be updated even if existing clients have the old shared cache open.

5.  When you must upgrade a package or to add a new package to the cache, follow steps 1 through 5 of the upgrade procedure for either the Static VM or Pooled VM scenario. Then, delete the symbolic link and re-create it to point to the new version of the shared cache file. When the VM is restarted, the client receives a handle to the updated copy of the cache because the VM uses the path that contains the updated symbolic link. Then, the users have access to the new and updated applications.

## Related topics


[How to Install Application Virtualization Management Server](how-to-install-application-virtualization-management-server.md)

[How to Manually Install the Application Virtualization Client](how-to-manually-install-the-application-virtualization-client.md)

[How to Install the Client by Using the Command Line](how-to-install-the-client-by-using-the-command-line-new.md)

 

 





