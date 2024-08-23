---
title: Install VAMT
description: Learn how to install Volume Activation Management Tool (VAMT) as part of the Windows Assessment and Deployment Kit (ADK) for Windows.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.localizationpriority: medium
ms.date: 03/29/2024
ms.topic: how-to
ms.service: windows-client
ms.subservice: activation
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2022</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2019</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016</a>
---

# Install VAMT

This article describes how to install the Volume Activation Management Tool (VAMT). VAMT is installed as part of the Windows Assessment and Deployment Kit (ADK) for Windows.

> [!IMPORTANT]
>
> VAMT requires local administrator privileges on all managed computers in order to deposit confirmation IDs (CIDs), get the client products' license status, and install product keys. If VAMT is being used to manage products and product keys on the local host computer but administrator privileges aren't available, start VAMT with elevated privileges. For best results when using Active Directory-based activation, we recommend running VAMT while logged on as a domain administrator.

> [!NOTE]
>
> The VAMT Microsoft Management Console snap-in ships as an x86 package.

## Requirements

- [Windows Server with Desktop Experience](/windows-server/get-started/getting-started-with-server-with-desktop-experience), with internet access (for the main VAMT console) and all updates applied.

- Latest version of the [Windows ADK](/windows-hardware/get-started/adk-install).

- Any supported [SQL Server Express](https://www.microsoft.com/sql-server/sql-server-downloads) version. The latest is recommended.

- Alternatively, any supported **full** SQL instance.

## Install SQL Server Express / alternatively use any full SQL instance

1. Download and open the [SQL Server Express](https://aka.ms/sqlexpress) package.

1. For **Select an installation type:**, select **Basic**.

1. In the **Microsoft SQL Server Server License Terms** screen, accept the license terms by selecting the **Accept** button.

1. In the **Specify SQL Server install location** screen under **INSTALL LOCATION \*:**, specify an install location or use the default path, and then select the **Install** button.

1. Once the installation is complete, in the **Installation Has completed successfully!** page, under **INSTANCE NAME**, note the instance name for the installation. The instance name is used later in the [Configure VAMT to connect to SQL Server Express or full SQL Server](#configure-vamt-to-connect-to-sql-server-express-or-full-sql-server) section.

1. Once the instance name is noted, select the **Close** button, and then select the **Yes** button to confirm exiting the installer.

## Install VAMT using the ADK

1. Download the latest version of [Windows ADK](/windows-hardware/get-started/adk-install).

   If an older version is already installed, it's recommended to first uninstall the older ADK before installing the latest version. Existing VAMT data is maintained in the VAMT database.

1. Open the ADK installer that was downloaded in the previous step. The **Windows Assessment and Deployment Kit** window opens.

1. In the **Windows Assessment and Deployment Kit** window:

   1. At the **Specify Location** page, under **Install Path:**, enter an install location or use the default path. It's recommended to install at the default path. Once done, select the **Next** button.

   1. In the **Windows Kits Privacy** page, select a privacy setting, and then select the **Next** button.

   1. In the **License Agreement** page, accept the license terms by selecting the **Accept** button.

   1. In the **Select the features you want to install** page, select **Volume Activation Management Tool (VAMT)**. If desired, select any additional features to install. Once done, select the **Install** button.

   1. Once installation is complete, the **Welcome to the Windows Assessment and Deployment Kit!** page is displayed. Select the **Close** button.

## Configure VAMT to connect to SQL Server Express or full SQL Server

1. In the Start Menu under **Windows Kits**, select **Volume Active Management Tool 3.1**. The **Database Connection Settings** window opens.

1. In the **Database Connection Settings** window:

   1. Next to **Server:**, enter the server instance name as determined in the [Install SQL Server Express / alternatively use any full SQL instance](#install-sql-server-express--alternatively-use-any-full-sql-instance) section. If SQL is remote, make sure to use the FQDN.

   1. Next to **Database:**, add a name for the database.

   1. Once the database server and database names are entered, select the **Connect** button.

   1. Select the **Yes** button to create the database.

## Uninstall VAMT

To uninstall VAMT:

1. Right-click on the Start Menu and select **Settings**.

1. Select **Apps** in the left hand pane.

1. In the right hand pane under **Apps**, select **Installed apps**.

   Alternatively, select the following link to automatically open the **Settings** app to the **Installed apps** page:

   > [!div class="nextstepaction"]
   > [Installed apps](ms-settings:appsfeatures)

1. Scroll through the list of installed apps and find **Windows Assessment and Deployment Kit**.

1. Select the three dots **...** next to **Windows Assessment and Deployment Kit** and then select **Modify**. The **Windows Assessment and Deployment Kit** window opens.

1. In the **Windows Assessment and Deployment Kit** window:

   1. In the **Maintain your Windows Assessment and Deployment Kit features** page, select **Change**, and then select the **Next** button.

   1. In the **Select the features you want to change** page, uncheck **Volume Activation Management Tool (VAMT)**, and then select the **Change** button.

   1. Once the uninstall is complete, the **Change is complete.** page is displayed. Select the **Close** button.
