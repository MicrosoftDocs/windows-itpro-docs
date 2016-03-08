---
title: Install VAMT (Windows 10)
description: Install VAMT
ms.assetid: 2eabd3e2-0a68-43a5-8189-2947e46482fc
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: CFaw
---

# Install VAMT


This topic describes how to install the Volume Activation Management Tool (VAMT).

## Install VAMT


You can install VAMT as part of the [Windows Assessment and Deployment Kit (ADK)](http://go.microsoft.com/fwlink/p/?LinkId=526740) for Windows 10.

**Important**  
VAMT requires local administrator privileges on all managed computers in order to deposit confirmation IDs (CIDs), get the client products’ license status, and install product keys. If VAMT is being used to manage products and product keys on the local host computer and you do not have administrator privileges, start VAMT with elevated privileges. For Active Directory-Based Activation use, for best results we recommend running VAMT while logged on as a domain administrator.

 

**Note**  
The VAMT Microsoft Management Console snap-in ships as an x86 package.

 

**Note**  
After you install VAMT, if you have a computer information list (CIL) that was created in a previous version of VAMT, you must import the list into a SQL database. If you do not have SQL installed, you can download a free copy of Microsoft SQL Server Express and create a new database into which you can import the CIL. To install SQL Server Express:

1.  Install the Windows ADK.

2.  Ensure that **Volume Activation Management Tool** and **Microsoft® SQL Server® 2012 Express** are selected to be installed.

3.  Click **Install**.

 

## Select a Database


**Using a SQL database installed during ADK setup**

If SQL Server 2012 Express was installed during ADK setup, the default database name will be **ADK**.By default, VAMT is configure to use a SQL database that is installed on the local machine during ADK setup and displays the server name as **.\\ADK**. If the SQL database was installed on another machine, you must configure the database to allow remote connections and you must provide the corresponding server name. If a new VAMT database needs to be created, provide a name for the new database.

**Using a SQL database installed outside of ADK setup**

You must configure SQL installation to allow remote connections and you must provide the corresponding server name in the format: *Machine Name\\SQL Server Name*. If a new VAMT database needs to be created, provide a name for the new database.

## Uninstall VAMT


To uninstall VAMT via the **Programs and Features** Control Panel:

1.  Open the **Control Panel** and select **Programs and Features**.

2.  Select **Assessment and Deployment Kit** from the list of installed programs and click **Change**. Follow the instructions in the Windows ADK installer to remove VAMT.

## Related topics


[Install and Configure VAMT](install-and-configure-vamt-vamt-30-win8.md)

 

 





