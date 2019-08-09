---
title: Install VAMT (Windows 10)
description: Install VAMT
ms.assetid: 2eabd3e2-0a68-43a5-8189-2947e46482fc
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
audience: itproauthor: greg-lindsay
ms.localizationpriority: medium
ms.date: 03/11/2019
ms.topic: article
---

# Install VAMT

This topic describes how to install the Volume Activation Management Tool (VAMT).

## Install VAMT

You install VAMT as part of the Windows Assessment and Deployment Kit (ADK) for Windows 10.

>[!IMPORTANT]
>VAMT requires local administrator privileges on all managed computers in order to deposit confirmation IDs (CIDs), get the client products’ license status, and install product keys. If VAMT is being used to manage products and product keys on the local host computer and you do not have administrator privileges, start VAMT with elevated privileges. For Active Directory-Based Activation use, for best results we recommend running VAMT while logged on as a domain administrator. 

>[!NOTE]
>The VAMT Microsoft Management Console snap-in ships as an x86 package. 

### Requirements

- [Windows Server with Desktop Experience](https://docs.microsoft.com/windows-server/get-started/getting-started-with-server-with-desktop-experience), with internet access and all updates applied
- [Windows 10, version 1809 ADK](https://go.microsoft.com/fwlink/?linkid=2026036)
- [SQL Server 2017 Express](https://www.microsoft.com/sql-server/sql-server-editions-express)

### Install SQL Server 2017 Express

1. Download and open the [SQL Server 2017 Express](https://www.microsoft.com/sql-server/sql-server-editions-express) package.
2. Select **Basic**.
3. Accept the license terms.
4. Enter an install location or use the default path, and then select **Install**.
5. On the completion page, note the instance name for your installation, select **Close**, and then select **Yes**. 
    ![In this example, the instance name is SQLEXPRESS01](images/sql-instance.png)

### Install VAMT using the ADK

1. Download and open the [Windows 10, version 1809 ADK](https://go.microsoft.com/fwlink/?linkid=2026036) package.
2. Enter an install location or use the default path, and then select **Next**.
3. Select a privacy setting, and then select **Next**.
4. Accept the license terms.
5. On the **Select the features you want to install** page, select **Volume Activation Management Tool (VAMT)**, and then select **Install**. (You can select additional features to install as well.)
6. On the completion page, select **Close**.

### Configure VAMT to connect to SQL Server 2017 Express

1. Open **Volume Active Management Tool 3.1** from the Start menu.
2. Enter the server instance name and a name for the database, select **Connect**, and then select **Yes** to create the database. See the following image for an example.

    ![Server name is .\SQLEXPRESS and database name is VAMT](images/vamt-db.png)




## Uninstall VAMT

To uninstall VAMT using the **Programs and Features** Control Panel:
1.  Open **Control Panel** and select **Programs and Features**.
2.  Select **Assessment and Deployment Kit** from the list of installed programs and click **Change**. Follow the instructions in the Windows ADK installer to remove VAMT.


 
 
