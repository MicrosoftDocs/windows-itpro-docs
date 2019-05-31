---
title: How to Install and Configure the MED-V Server Component
description: How to Install and Configure the MED-V Server Component
author: dansimp
ms.assetid: 2d3c5b15-df2c-4ab6-bf78-f47ef8ae7418
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# How to Install and Configure the MED-V Server Component


This section explains how to [install](#bkmk-howtoinstallthemedvserver) and [configure](#bkmk-howtoconfigurethemedvserver) the MED-V server.

## <a href="" id="bkmk-howtoinstallthemedvserver"></a>How to Install the MED-V Server


**To install the MED-V server**

1.  Install the MED-V Server .msi package.

    The MED-V Server .msi package is called *MED-V\_Server\_x.msi*, where x is the version number.

    For example, *MED-V\_Server\_1.0.65.msi*.

2.  When the **InstallShield Wizard Welcome** screen appears, click **Next**.

3.  On the **License Agreement** screen, read the license agreement, click **I accept the terms in the license agreement**, and then click **Next**.

    The **Destination Folder** screen appears, with the default installation folder displayed.

    The default installation folder is *%systemdrive%\\Program Files\\Microsoft Enterprise Desktop Virtualization\\*.

    -   To change the folder where MED-V should be installed, click **Change** and browse to an existing folder.

4.  Click **Next**.

5.  On the **Ready to Install the Program** screen, click **Install**.

    The MED-V server installation starts. This can take several minutes, and the screen might not display text. During installation, several progress screens appear. If a message appears, follow the instructions provided.

6.  When the **InstallShield Wizard Completed** screen appears, click **Finish** to complete the wizard.

**Note**  
If you are installing the MED-V server via Microsoft Remote Desktop, use the following syntax: **mstsc/admin**. Ensure that your RDP session is directed to the console.

 

## <a href="" id="bkmk-howtoconfigurethemedvserver"></a>How to Configure the MED-V Server


The following server settings can be configured:

-   [Connections](#bkmk-configuringconnections)

-   [Images](#bkmk-configuringimages)

-   [Permissions](#bkmk-configuringpermissions)

-   [Reports](#bkmk-configuringreports)

### <a href="" id="bkmk-configuringconnections"></a>Configuring Connections

**To configure connections**

1.  On the Windows Start menu, select **All Programs &gt; MED-V &gt; MED-V Server Configuration Manager**.

    **Note**  
    Note: If you selected the **Launch MED-V Server Configuration Manager** check box during the server installation, the MED-V server configuration manager starts automatically after the server installation is complete.

     

    The MED-V Server Configuration Manager appears.

2.  On the **Connections** tab, configure the following client connections settings:

    -   **Enable unencrypted connections (http), using port**—Select this check box to enable unencrypted connections using a specified port. In the port box, enter the server port on which to accept unencrypted connections (http).

    -   **Enable encrypted connections (https), using port**—Select this check box to enable encrypted connections using a specified port. In the port box, enter the server port on which to accept encrypted connections (https).

        Https is an optional configuration which can be set to ensure secure transactions between the MED-V server and MED-V clients. To configure https, you must perform the following procedures:

        -   Configure a certificate on the server.

        -   Associate the server certificate with the port specified using netsh. For information, see the following:

            -   [Netsh Commands for Hypertext Transfer Protocol (HTTP)](https://go.microsoft.com/fwlink/?LinkId=183314)

            -   [How to: Configure a Port with an SSL Certificate](https://go.microsoft.com/fwlink/?LinkID=183315)

            -   [How to: Configure a Port with an SSL Certificate](https://msdn.microsoft.com/library/ms733791.aspx)

3.  Click **OK**.

### <a href="" id="bkmk-configuringimages"></a>Configuring Images

**To configure images**

1.  Click the **Images** tab.

2.  Configure the following image management settings:

    -   **VMs Directory**—The virtual machine directory (the directory where the images are stored). This field contains a UNC path to the image directory on the image distribution server that should be accessible from the MED-V server.

    -   **VMs URL**—The location of the server where the images are stored.

3.  Click **OK**.

### <a href="" id="bkmk-configuringpermissions"></a>Configuring Permissions

**To configure permissions**

1.  Click the **Permissions** tab.

2.  A list of all users who can log in is provided. To apply read and write permissions to a user, select the check box next to the user. To apply read-only permissions to a user, clear the check box.

3.  To add domain users or groups, click **Add**.

    The **Enter User or Group names** dialog box appears.

    1.  Select domain users or groups by doing one of the following:

        -   In the **Enter User or Group names** field, type a user or group that exists in the domain or exists as a local user or group on the computer. Then click **Check Names** to resolve it to the full existent name.

        -   Click **Find** to open the standard **Select Users or Groups** dialog box. Then select domain users or groups.

    2.  Click **OK**.

4.  To remove domain users or groups, select a user or group and click **Remove**.

5.  Click **OK**.

### <a href="" id="bkmk-configuringreports"></a>Configuring Reports

**To configure reports**

1.  Click the **Reports** tab.

2.  To support reports, select **Enable reports**.

3.  In the **Connection String** box, enter a connection string for the MSSQL database.

    -   When SQL Server is installed on a remote server, use the following connection string:

        `Data Source=<ServerName>;Initial Catalog=<DBName>;uid=sa;pwd=<Password>;`

        **Note**  
        Note: To connect to SQL Express, use: `Data Source=<ServerName>\sqlexpress.`

         

4.  To create the database, click **Create Database**.

5.  To test the connection, click **Test Connection**.

6.  To configure database clearing options, click **Clear Options**.

    The **Clear Database Options** dialog box appears.

    1.  Choose one of the following options:

        -   **Clear data older than**—Clear all data older than the number of days specified; in the number box, enter a number of days.

        -   **Clear all data from database**—Clear all existent data in the database.

        -   **Drop database**—Delete the database.

    2.  Click **OK** to apply changes and close the dialog box.

7.  Click **OK** to save the changes, or click **Cancel** to close the dialog box without saving changes.

8.  If prompted, restart the MED-V server service to apply changes to the network settings.

## Related topics


[Supported Configurations](supported-configurationsmedv-orientation.md)

[Design the MED-V Server Infrastructure](design-the-med-v-server-infrastructure.md)

 

 





