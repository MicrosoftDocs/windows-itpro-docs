---
title: Install VAMT (Windows 10)
description: Install VAMT
ms.assetid: 2eabd3e2-0a68-43a5-8189-2947e46482fc
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
author: jdeckerms
ms.localizationpriority: medium
ms.date: 04/25/2018
ms.topic: article
---

# Install VAMT

This topic describes how to install the Volume Activation Management Tool (VAMT).

## Install VAMT

You can install VAMT as part of the [Windows Assessment and Deployment Kit (ADK)](https://go.microsoft.com/fwlink/p/?LinkId=526740) for Windows 10.

>[!IMPORTANT]  
>VAMT requires local administrator privileges on all managed computers in order to deposit confirmation IDs (CIDs), get the client products’ license status, and install product keys. If VAMT is being used to manage products and product keys on the local host computer and you do not have administrator privileges, start VAMT with elevated privileges. For Active Directory-Based Activation use, for best results we recommend running VAMT while logged on as a domain administrator. 

>[!NOTE]  
>The VAMT Microsoft Management Console snap-in ships as an x86 package. 

To install SQL Server Express:
1.  Install the Windows ADK.
2.  Ensure that **Volume Activation Management Tool** is selected to be installed.
3.  Click **Install**.

## Select a Database

VAMT requires a SQL database. After you install VAMT, if you have a computer information list (CIL) that was created in a previous version of VAMT, you must import the list into a SQL database. If you do not have SQL installed, you can [download a free copy of Microsoft SQL Server Express](https://www.microsoft.com/sql-server/sql-server-editions-express) and create a new database into which you can import the CIL. 

You must configure SQL installation to allow remote connections and you must provide the corresponding server name in the format: *Machine Name\\SQL Server Name*. If a new VAMT database needs to be created, provide a name for the new database.

## Uninstall VAMT

To uninstall VAMT via the **Programs and Features** Control Panel:
1.  Open the **Control Panel** and select **Programs and Features**.
2.  Select **Assessment and Deployment Kit** from the list of installed programs and click **Change**. Follow the instructions in the Windows ADK installer to remove VAMT.

## Related topics
- [Install and Configure VAMT](install-configure-vamt.md)
 
 
