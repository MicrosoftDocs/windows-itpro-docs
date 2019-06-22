---
title: MED-V 1.0 SP1 Upgrade Checklist
description: MED-V 1.0 SP1 Upgrade Checklist
author: dansimp
ms.assetid: 1a462b37-8c7a-4826-9175-0b1b701d345b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# MED-V 1.0 SP1 Upgrade Checklist


To upgrade Microsoft Enterprise Desktop Virtualization (MED-V) 1.0 to MED-V 1.0 Service Pack 1 (SP1), the client must be upgraded. The server can optionally be upgraded.

## Server Upgrade


**To upgrade the MED-V 1.0 server to MED-V 1.0 SP1**

1.  Back up the following files that are located in the *&lt;InstallDir&gt; / Servers / ConfigurationServer* directory:

    -   OrganizationalPolicy.XML

    -   ClientPolicy.XML

    -   WorkspaceKeys.XML

2.  Back up the *&lt;InstallDir&gt; / Servers / ServerSettings.xml* file.

3.  Uninstall the MED-V 1.0 server.

4.  Install the MED-V 1.0 SP1 server.

5.  Restore the backup files to the appropriate directories.

6.  Restart the MED-V server service.

**Note**  
If the server configuration has been changed from the default, the files might be stored in a different location.

 

## Client Upgrade


To upgrade the MED-V 1.0 client to MED-V 1.0 SP1, install the .msp file on a MED-V 1.0 client. The client and MED-V are automatically upgraded.

 

 





