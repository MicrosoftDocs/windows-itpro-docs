---
title: Install VAMT
description: Learn how to install Volume Activation Management Tool (VAMT) as part of the Windows Assessment and Deployment Kit (ADK) for Windows.
ms.reviewer: nganguly
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.localizationpriority: medium
ms.date: 10/11/2023
ms.topic: article
ms.technology: itpro-fundamentals
---

# Install VAMT

This article describes how to install the Volume Activation Management Tool (VAMT).

## Installing VAMT

You install VAMT as part of the Windows Assessment and Deployment Kit (ADK) for Windows.

>[!IMPORTANT]
>
> VAMT requires local administrator privileges on all managed computers in order to deposit confirmation IDs (CIDs), get the client products' license status, and install product keys. If VAMT is being used to manage products and product keys on the local host computer and you don't have administrator privileges, start VAMT with elevated privileges. For best results when using Active Directory-based activation, we recommend running VAMT while logged on as a domain administrator.

>[!NOTE]
>
> The VAMT Microsoft Management Console snap-in ships as an x86 package.

### Requirements

- [Windows Server with Desktop Experience](/windows-server/get-started/getting-started-with-server-with-desktop-experience), with internet access (for the main VAMT console) and all updates applied.

- Latest version of the [Windows ADK](/windows-hardware/get-started/adk-install).

- Any supported [SQL Server Express](https://www.microsoft.com/sql-server/sql-server-downloads) version. The latest is recommended.

- Alternatively, any supported **full** SQL instance.

### Install SQL Server Express / alternatively use any full SQL instance

1. Download and open the [SQL Server Express](https://aka.ms/sqlexpress) package.

1. Select **Basic**.

1. Accept the license terms.

1. Enter an install location or use the default path, and then select **Install**.

1. On the completion page, note the instance name for your installation, select **Close**, and then select **Yes**.

    ![Screenshot that shows that in this example, the instance name is SQLEXPRESS01.](images/sql-instance.png)

### Install VAMT using the ADK

1. Download the latest version of [Windows ADK](/windows-hardware/get-started/adk-install).

   If an older version is already installed, it's recommended to uninstall the older ADK and install the latest version. Existing VAMT data is maintained in the VAMT database.

1. Enter an install location or use the default path, and then select **Next**.

1. Select a privacy setting, and then select **Next**.

1. Accept the license terms.

1. On the **Select the features you want to install** page, select **Volume Activation Management Tool (VAMT)**, and then select **Install**. If desired, you can select additional features to install as well.

1. On the completion page, select **Close**.

### Configure VAMT to connect to SQL Server Express or full SQL Server

1. In the Start Menu under, **Windows Kits**, **Volume Active Management Tool 3.1**.

1. Enter the server instance name (for a remote SQL use the FQDN) and a name for the database, select **Connect**, and then select **Yes** to create the database. See the following image for an example for SQL.

   ![Screenshot that shows that the Server name is .\SQLEXPRESS and database name is VAMT.](images/vamt-db.png)

   For remote SQL Server, use `servername.yourdomain.com`.

## Uninstall VAMT

To uninstall VAMT using the **Programs and Features** Control Panel:

1. Open **Control Panel** and select **Programs and Features**.

1. Select **Assessment and Deployment Kit** from the list of installed programs and select **Change**. Follow the instructions in the Windows ADK installer to remove VAMT.
