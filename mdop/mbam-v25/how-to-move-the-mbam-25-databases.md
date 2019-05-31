---
title: How to Move the MBAM 2.5 Databases
description: How to Move the MBAM 2.5 Databases
author: dansimp
ms.assetid: 34b46f2d-0add-4377-8e4e-04b628fdfcf1
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/15/2018
---

# How to Move the MBAM 2.5 Databases

Use these procedures to move the following databases from one computer to another; from Server A to Server B, for example:

-   Compliance and Audit Database

-   Recovery Database

>[!NOTE]
>It is important that the databases be restored to Machine B PRIOR to running the MBAM Configuration Wizard to update/configure them.

If the databases are NOT present, the Configuration Wizard creates NEW, empty, databases. When your existing databases are then restored, this process will break the MBAM configuration.

Restore the databases FIRST, then run the MBAM Configuration Wizard, choose the database option, and the Configuration Wizard will “connect” to the databases you restored; upgrading them if needed as part of the process.

**If you are moving multiple features, move them in the following order:**

1.  Recovery Database

2.  Compliance and Audit Database

3.  Reports

4.  Administration and Monitoring Website

5.  Self-Service Portal

>[!Note]
>To run the example Windows PowerShell scripts provided in this topic, you must update the Windows PowerShell execution policy to enable scripts to be run. See [Running Windows PowerShell Scripts](https://technet.microsoft.com/library/ee176949.aspx) for instructions.

## Move the Recovery Database

The high-level steps for moving the Recovery Database are:

1.  Stop all instances of the MBAM Administration and Monitoring Website

2.  Back up the Recovery Database on Server A

3.  Move the Recovery Database from Server A to Server B

4.  Restore the Recovery Database on Server B

5.  Configure access to the Database on Server B and update connection data

6.  Install MBAM Server software and run the MBAM Server Configuration wizard on Server B

7.  Resume the instance of the Administration and Monitoring Website

### How to move the Recovery Database

**Stop all instances of the MBAM Administration and Monitoring Website.** On each server that is running the MBAM Administration and Monitoring Server Website, use the Internet Information Services (IIS) Manager console to stop the Administration and Monitoring Website.

To automate this procedure, you can use Windows PowerShell to enter a command that is similar to the following:

```powershell
Stop-Website "Microsoft BitLocker Administration and Monitoring"

```

>[!NOTE]
>To run this command, you must add the Internet Information Services (IIS) module for Windows PowerShell to the current instance of Windows PowerShell.

### Back up the Recovery Database on Server A

1.  Use the **Back Up** task in SQL Server Management Studio to back up the Recovery Database on Server A.  By default, the database name is **MBAM Recovery Database**.

2.  To automate this procedure, create a SQL file (.sql) that contains the following SQL script, and change the MBAM Recovery Database to use the full recovery mode:

    ```
    USE master;

    GO

    ALTER DATABASE "MBAM Recovery and Hardware"

    SET RECOVERY FULL;

    GO

    -- Create MBAM Recovery Database Data and MBAM Recovery logical backup devices.

    USE master

    GO

    EXEC sp_addumpdevice 'disk', 'MBAM Recovery and Hardware Database Data Device',

    'Z:\MBAM Recovery Database Data.bak';

    GO

    -- Back up the full MBAM Recovery Database.

    BACKUP DATABASE [MBAM Recovery and Hardware] TO [MBAM Recovery and Hardware Database Data Device];

    GO

    BACKUP CERTIFICATE [MBAM Recovery Encryption Certificate]

    TO FILE = 'Z:\SQLServerInstanceCertificateFile'

    WITH PRIVATE KEY

    (

    FILE = ' Z:\SQLServerInstanceCertificateFilePrivateKey',

    ENCRYPTION BY PASSWORD = '$PASSWORD$'

    );

    GO
    ```

3.  Use the following value to replace the values in the code example with values that match your environment:

    **$PASSWORD$** - password that you use to encrypt the Private Key file.

4.  In Windows PowerShell, run the script that is stored in the file and similar to the following:

    ```powershell
    Invoke-Sqlcmd -InputFile
    'Z:\BackupMBAMRecoveryandHardwarDatabaseScript.sql' -ServerInstance $SERVERNAME$\$SQLINSTANCENAME$
    ```
5.  Use the following value to replace the values in the code example with values that match your environment:

    **$SERVERNAME$\$SQLINSTANCENAME$** - server name and instance from which the Recovery Database will be backed up.

### Move the Recovery Database from Server A to Server B

Use Windows Explorer to move the **MBAM Compliance Status Database Data.bak** file from Server A to Server B.

To automate this procedure, you can use Windows PowerShell to run a command that is similar to the following:

```powershell
Copy-Item "Z:\MBAM Recovery Database Data.bak"
\\$SERVERNAME$\$DESTINATIONSHARE$

Copy-Item "Z:\SQLServerInstanceCertificateFile"
\\$SERVERNAME$\$DESTINATIONSHARE$

Copy-Item "Z:\SQLServerInstanceCertificateFilePrivateKey"
\\$SERVERNAME$\$DESTINATIONSHARE$

```
Use the information in the following table to replace the values in the code example with values that match your environment.

| **Parameter**        | **Description**  |
|----------------------|------------------|
| $SERVERNAME$       | Name of the server to which the files will be copied. |
| $DESTINATIONSHARE$ | Name of the share and path to which the files will be copied. |


### Restore the Recovery Database on Server B

1.  Restore the Recovery Database on Server B by using the **Restore Database** task in SQL Server Management Studio.

2.  When the previous task finishes, select **From Device**, and then select the database backup file.

3.  Use the **Add** command to select the **MBAM Recovery Database Data.bak** file, and click **OK** to complete the restoration process.

4.  To automate this procedure, create a SQL file (.sql) that contains the following SQL script:

    ```
    -- Restore MBAM Recovery Database.

    USE master

    GO

    -- Drop certificate created by MBAM Setup.

    DROP CERTIFICATE [MBAM Recovery Encryption Certificate]

    GO

    --Add certificate

    CREATE CERTIFICATE [MBAM Recovery Encryption Certificate]

    FROM FILE = 'Z:\SQLServerInstanceCertificateFile'

    WITH PRIVATE KEY

    (

    FILE = ' Z:\SQLServerInstanceCertificateFilePrivateKey',

    DECRYPTION BY PASSWORD = '$PASSWORD$'

    );

    GO

    -- Restore the MBAM Recovery Database data and log files.

    RESTORE DATABASE [MBAM Recovery and Hardware]

    FROM DISK = 'Z:\MBAM Recovery Database Data.bak'

    WITH REPLACE
    ```

5.  Use the following value to replace the values in the code example with values that match your environment.

    **$PASSWORD$** - password that you used to encrypt the Private Key file.

6.  In Windows PowerShell, run the script that is stored in the file and similar to the following:

    ```powershell
    Invoke-Sqlcmd -InputFile 'Z:\RestoreMBAMRecoveryandHardwarDatabaseScript.sql' -ServerInstance $SERVERNAME$\$SQLINSTANCENAME$
    ```
7.  Use the following value to replace the values in the code example with values that match your environment.

    **$SERVERNAME$\$SQLINSTANCENAME$** - Server name and instance to which the Recovery Database will be restored.

### Configure access to the Database on Server B and update connection data

1.  Verify that the Microsoft SQL Server user login that enables Recovery Database access on the restored database is mapped to the access account that you provided during the configuration process.

    >[!NOTE]
    >If the login is not the same, create a login by using SQL Server Management Studio, and map it to the existing database user.

2.  On the server that is running the Administration and Monitoring Website, use the Internet Information Services (IIS) Manager console to update the connection string information for the MBAM websites.

3.  Edit the following registry key:

    **HKLM\\Software\\Microsoft\\MBAM Server\\Web\\RecoveryDBConnectionString**

4.  Update the **Data Source** value with the name of the server and instance (for example, \$SERVERNAME\$\\\$SQLINSTANCENAME) to which the Recovery Database was moved.

5.  Update the **Initial Catalog** value with the recovered database name.

6.  To automate this process, you can use the Windows PowerShell command prompt to enter a command line on the Administration and Monitoring Server that is similar to the following:

    ```powershell
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\\Microsoft\MBAM Server\\Web" /v
    RecoveryDBConnectionString /t REG_SZ /d "Integrated Security=SSPI;Initial
    Catalog=$DATABASE$;Data Source=$SERVERNAME$\$SQLINSTANCENAME$" /f

    Set-WebConfigurationProperty
    'connectionStrings/add[@name="KeyRecoveryConnectionString"]' -PSPath
    "IIS:\sites\Microsoft Bitlocker Administration and
    Monitoring\MBAMAdministrationService" -Name "connectionString" -Value "Data
    Source=$SERVERNAME$\$SQLINSTANCENAME$;Initial Catalog=MBAM Recovery and
    Hardware;Integrated Security=SSPI;"

    Set-WebConfigurationProperty
    'connectionStrings/add[\@name="Microsoft.Mbam.RecoveryAndHardwareDataStore.ConnectionString"]'
    -PSPath "IIS:\sites\Microsoft Bitlocker Administration and
    Monitoring\MBAMRecoveryAndHardwareService" -Name "connectionString" -Value
    "Data Source=$SERVERNAME$\$SQLINSTANCENAME$;Initial Catalog=MBAM Recovery
    and Hardware;Integrated Security=SSPI;"
    ```

    >[!Note]
    >This connection string is shared by all local MBAM web applications. Therefore, it needs to be updated only once per server.


7.  Use the following table to replace the values in the code example with values that match your environment.

   |Parameter|Description|
   |---------|-----------|
   |$SERVERNAME$/\$SQLINSTANCENAME$|Server name and instance of SQL Server where the Recovery Database is located.|
   |$DATABASE$|Name of the Recovery database.|


### Install MBAM Server software and run the MBAM Server Configuration wizard on Server B

1.  Install the MBAM 2.5 Server software on Server B. For details, see [Installing the MBAM 2.5 Server Software](https://docs.microsoft.com/microsoft-desktop-optimization-pack/mbam-v25/installing-the-mbam-25-server-software).

2.  On Server B, start the MBAM Server Configuration wizard, click **Add New Features**, and then select only the **Recovery Database** feature. For details on how to configure the databases, see [How to Configure the MBAM 2.5 Databases](https://docs.microsoft.com/microsoft-desktop-optimization-pack/mbam-v25/how-to-configure-the-mbam-25-databases).

    >[!TIP]
    >Alternatively, you can use the **Enable-MbamDatabase** Windows PowerShell cmdlet to configure the Recovery Database.


### Resume the instance of the Administration and Monitoring Website

On the server that is running the Administration and Monitoring Website, use the Internet Information Services (IIS) Manager console to start the Administration and Monitoring Website.

To automate this procedure, you can use Windows PowerShell to run a command that is similar to the following:

```powershell
Start-Website "Microsoft BitLocker Administration and Monitoring"
```

>[!NOTE]
>To run this command, you must add the IIS module for Windows PowerShell to the current instance of Windows PowerShell.

## Move the Compliance and Audit Database

The high-level steps for moving the Compliance and Audit Database are:

1.  Stop all instances of the MBAM Administration and Monitoring Website

2.  Back up the Compliance and Audit Database on Server A

3.  Move the Compliance and Audit Database from Server A to Server B

4.  Restore the Compliance and Audit Database on Server B

5.  Configure access to the Database on Server B and update connection data

6.  Install MBAM Server software and run the MBAM Server Configuration wizard on
    Server B

7.  Resume the instance of the Administration and Monitoring Website

### How to move the Compliance and Audit Database

**Stop all instances of the MBAM Administration and Monitoring Website.**  On each server that is running the MBAM Administration and Monitoring Server Website, use the Internet Information Services (IIS) Manager console to stop the Administration and Monitoring Website.

To automate this procedure, you can use Windows PowerShell to enter a command that is similar to the following:

```powershell
Stop-Website "Microsoft BitLocker Administration and Monitoring"

```

>[!NOTE]
>To run this command, you must add the Internet Information Services (IIS) module for Windows PowerShell to the current instance of Windows PowerShell.

### Back up the Compliance and Audit Database on Server A

1.  Use the **Back Up** task in SQL Server Management Studio to back up the Compliance and Audit Database on Server A. By default, the database name is **MBAM Compliance Status Database**.

2.  To automate this procedure, create a SQL file (.sql) that contains the following SQL script:

    ```
    USE master;

    GO

    ALTER DATABASE "MBAM Compliance Status"

    SET RECOVERY FULL;

    GO

    -- Create MBAM Compliance Status Data logical backup devices.

    USE master

    GO

    EXEC sp_addumpdevice 'disk', 'MBAM Compliance Status Database Data Device',

    'Z: \MBAM Compliance Status Database Data.bak';

    GO

    -- Back up the full MBAM Compliance Recovery database.

    BACKUP DATABASE [MBAM Compliance Status] TO [MBAM Compliance Status Database Data Device];

    GO

    ```

3.  Run the script that is stored in the .sql file by using a Windows PowerShell command that is similar to the following:

    ```powershell
    Invoke-Sqlcmd -InputFile "Z:\BackupMBAMComplianceStatusDatabaseScript.sql" –ServerInstance     $SERVERNAME$\$SQLINSTANCENAME$

    ```

4.  Using the following value, replace the values in the code example with values that match your environment:

    **$SERVERNAME$\$SQLINSTANCENAME$** - server name and instance from which the Compliance and Audit Database will be backed up.

### Move the Compliance and Audit Database from Server A to Server B**

1.  Use Windows Explorer to move the **MBAM Compliance Status Database Data.bak** file from Server A to Server B.

2.  To automate this procedure, you can use Windows PowerShell to run a command that is similar to the following:

    ```powershell
    Copy-Item "Z:\MBAM Compliance Status Database Data.bak"
    \\$SERVERNAME$\$DESTINATIONSHARE$
    ```

3.  Using the following table, replace the values in the code example with values that match your environment.

    | **Parameter**        | **Description**                                               |
    |----------------------|---------------------------------------------------------------|
    | $SERVERNAME$       | Name of the server to which the files will be copied.         |
    | $DESTINATIONSHARE$ | Name of the share and path to which the files will be copied. |


### Restore the Compliance and Audit Database on Server B

1.  Restore the Compliance and Audit Database on Server B by using the **Restore Database** task in SQL Server Management Studio.

2.  When the previous task finishes, select **From Device**, and then select the database backup file.

3.  Use the **Add** command to select the **MBAM Compliance Status Database Data.bak** file and click **OK** to complete the restoration process.

4.  To automate this procedure, create a SQL file (.sql) that contains the following SQL script:

    ```
    -- Create MBAM Compliance Status Database Data logical backup devices.

    Use master

    GO

    -- Restore the MBAM Compliance Status database data files.

    RESTORE DATABASE [MBAM Compliance Status]

    FROM DISK = 'C:\test\MBAM Compliance Status Database Data.bak'

    WITH REPLACE

    ```

5.  In Windows PowerShell, run the script that is stored in the file and similar to the following:

    ```powershell
    Invoke-Sqlcmd -InputFile "Z:\RestoreMBAMComplianceStatusDatabaseScript.sql" -ServerInstance $SERVERNAME$\$SQLINSTANCENAME$

    ```

6.  Using the following value, replace the values in the code example with values that match your environment.

    **$SERVERNAME$\$SQLINSTANCENAME$** - Server name and instance to which the Compliance and Audit Database will be restored.

### Configure access to the Database on Server B and update connection data

1.  Verify that the Microsoft SQL Server user login that enables Compliance and Audit Database access on the restored database is mapped to the access account that you provided during the configuration process.

    >[!NOTE]
    >If the login is not the same, create a login by using SQL Server Management Studio, and map it to the existing database user.

2.  On the server that is running the Administration and Monitoring Website, use the Internet Information Services (IIS) Manager console to update the connection string information for the Website.

3.  Edit the following registry key:

    **HKLM\\Software\\Microsoft\\MBAM Server\\Web\\ComplianceDBConnectionString**

4.  Update the **Data Source** value with the name of the server and instance (for example, \$SERVERNAME\$\\\$SQLINSTANCENAME) to which the Recovery Database was moved.

5.  Update the **Initial Catalog** value with the recovered database name.

6.  To automate this process, you can use the Windows PowerShell command prompt to enter a command line on the Administration and Monitoring Server that is similar to the following:

    ```powershell
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MBAM Server\Web" /v
    ComplianceDBConnectionString /t REG_SZ /d "Integrated Security=SSPI;Initial
    Catalog=$DATABASE$;Data Source=$SERVERNAME$\$SQLINSTANCENAME$" /f

    ```
    >[!NOTE]
    >This connection string is shared by all local MBAM web applications. Therefore, it needs to be updated only once per server.


7.  Using the following table, replace the values in the code example with values that match your environment.

   |Parameter | Description |
   |---------|------------|
   |$SERVERNAME$\$SQLINSTANCENAME$ | Server name and instance of SQL Server where the Recovery Database is located.|
   |$DATABASE$|Name of the recovered database.|

### Install MBAM Server software and run the MBAM Server Configuration wizard on Server B

1.  Install the MBAM 2.5 Server software on Server B. For details, see [Installing the MBAM 2.5 Server Software](https://docs.microsoft.com/microsoft-desktop-optimization-pack/mbam-v25/installing-the-mbam-25-server-software).

2.  On Server B, start the MBAM Server Configuration wizard, click **Add New Features**, and then select only the **Compliance and Audit Database** feature. For details on how to configure the databases, see [How to Configure the MBAM 2.5 Databases](https://docs.microsoft.com/microsoft-desktop-optimization-pack/mbam-v25/how-to-configure-the-mbam-25-databases).

    >[!TIP]
    >Alternatively, you can use the **Enable-MbamDatabase** Windows PowerShell cmdlet to configure the Compliance and Audit Database.


### Resume the instance of the Administration and Monitoring Website

On the server that is running the Administration and Monitoring Website, use the Internet Information Services (IIS) Manager console to start the Administration and Monitoring Website.

To automate this procedure, you can use Windows PowerShell to run a command that is similar to the following:

```powershell
Start-Website "Microsoft BitLocker Administration and Monitoring"

```

>[!NOTE]
>To run this command, you must add the IIS module for Windows PowerShell to the current instance of Windows PowerShell.
