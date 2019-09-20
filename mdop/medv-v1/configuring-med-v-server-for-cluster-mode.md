---
title: Configuring MED-V Server for Cluster Mode
description: Configuring MED-V Server for Cluster Mode
author: dansimp
ms.assetid: 41f0b2a3-4ce9-48e1-a6fb-4c13c4228515
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Configuring MED-V Server for Cluster Mode


You can configure the MED-V server in cluster mode. In cluster mode, two servers are used and all files identified as mutual to both servers are placed on a file system. The server accesses the files from the file system rather than storing the files locally.

## <a href="" id="bkmk-howtoconfigurethemedvserverinclustermode"></a>


**To configure the MED-V server in cluster mode**

1.  Install and configure MED-V on one of the servers.

2.  Create a shared network in a central location where all of the servers can access it.

3.  Copy the contents of the *&lt;InstallDir&gt;/Servers/ConfigurationServer* folder to the shared network.

4.  Install MED-V server on all designated servers.

5.  On the shared network, assign full access to all MED-V server system accounts.

6.  On each server, do the following:

    1.  In the *&lt;InstallDir&gt;/Servers/ServerConfiguration.xml* file, set the value of *&lt;StorePath&gt;* to the shared network path.

    2.  Copy the *&lt;InstsallDir&gt;/Servers/KeyPair.xml* file from the original server to all MED-V servers.

    3.  Restart the MED-V service.

**Note**  
If all servers have the same local settings (such as listening ports, IIS server, management permissions, report database, and so on), the *&lt;InstallDir&gt;/Servers/ServerSettings.xml* can be shared by all servers as well.

 

## Related topics


[MED-V Infrastructure Planning and Design](med-v-infrastructure-planning-and-design.md)

 

 





