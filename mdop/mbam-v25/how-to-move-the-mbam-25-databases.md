---
title: How to Move the MBAM 2.5 Databases
description: How to Move the MBAM 2.5 Databases
ms.assetid: 34b46f2d-0add-4377-8e4e-04b628fdfcf1
author: MaggiePucciEvans
---

# How to Move the MBAM 2.5 Databases


Use these procedures to move the following databases from one computer to another, that is, to move the databases from Server A to Server B:

-   Compliance and Audit Database

-   Recovery Database

If you are moving multiple features, move them in the following order:

1.  Recovery Database

2.  Compliance and Audit Database

3.  Reports

4.  Administration and Monitoring Website

5.  Self-Service Portal

**Note**  
To run the example Windows PowerShell scripts provided in this topic, you must update the Windows PowerShell execution policy to enable scripts to be run. See [Running Windows PowerShell Scripts](http://technet.microsoft.com/library/ee176949.aspx) for instructions.

 

## Moving the Recovery Database


The high-level steps for moving the Recovery Database are:

1.  Stop all instances of the MBAM Administration and Monitoring Website

2.  Back up the Recovery Database on Server A

3.  Install MBAM Server software and run the MBAM Server Configuration wizard on Server B

4.  Move the Recovery Database from Server A to Server B

5.  Restore the Recovery Database on Server B

6.  Configure access to the Database on Server B and update connection data

7.  Resume the instance of the Administration and Monitoring Website

**How to move the Recovery Database**

1.  **Stop all instances of the MBAM Administration and Monitoring Website**

    -   On each server that is running the MBAM Administration and Monitoring Server Website, use the Internet Information Services (IIS) Manager console to stop the Administration and Monitoring Website.

        To automate this procedure, you can use Windows PowerShell to enter a command that is similar to the following:

        ``` syntax
        PS C:\> Stop-Website "Microsoft BitLocker Administration and Monitoring"
        ```

        **Note**  
        To run this command, you must add the Internet Information Services (IIS) module for Windows PowerShell to the current instance of Windows PowerShell.

         

2.  **Install MBAM Server software and run the MBAM Server Configuration wizard on Server B**

    1.  Install the MBAM 2.5 Server software on Server B. For instructions, see [Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md).

    2.  On Server B, start the MBAM Server Configuration wizard, click **Add New Features**, and then select only the **Recovery Database** feature.

        Alternatively, you can use the **Enable-MbamDatabase** Windows PowerShell cmdlet to configure the Recovery Database.

        For instructions on how to configure the databases, see [How to Configure the MBAM 2.5 Databases](how-to-configure-the-mbam-25-databases.md).

3.  **Back up the Recovery Database on Server A**

    1.  Use the **Back Up** task in SQL Server Management Studio to back up the Recovery Database on Server A. By default, the database name is **MBAM Recovery Database**.

        To automate this procedure, create a SQL file (.sql) that contains the following SQL script, and change the MBAM Recovery Database to use the full recovery mode:

        ``` syntax
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

        Use the following value to replace the values in the code example with values that match your environment.

        **$PASSWORD$** - password that you will use to encrypt the Private Key file.

    2.  Run the script that is stored in the .sql file by using a Windows PowerShell command that is similar to the following:

        ``` syntax
        PS C:\> Invoke-Sqlcmd -InputFile 'Z:\BackupMBAMRecoveryandHardwarDatabaseScript.sql' -ServerInstance $SERVERNAME$\$SQLINSTANCENAME$
        ```

        Use the following value to replace the values in the code example with values that match your environment:

        **$SERVERNAME$\\$SQLINSTANCENAME$** - server name and instance from which the Recovery Database will be backed up.

4.  **Move the Recovery Database from Server A to Server B**

    -   Use Windows Explorer to move the **MBAM Compliance Status Database Data.bak** file from Server A to Server B.

        To automate this procedure, you can use Windows PowerShell to run a command that is similar to the following:

        ``` syntax
        PS C:\> Copy-Item “Z:\MBAM Recovery Database Data.bak” \\$SERVERNAME$\$DESTINATIONSHARE$ 
        PS C:\> Copy-Item “Z:\SQLServerInstanceCertificateFile” \\$SERVERNAME$\$DESTINATIONSHARE$ 
        PS C:\> Copy-Item “Z:\SQLServerInstanceCertificateFilePrivateKey” \\$SERVERNAME$\$DESTINATIONSHARE$
        ```

        Use the information in the following table to replace the values in the code example with values that match your environment.

        <table>
        <colgroup>
        <col width="50%" />
        <col width="50%" />
        </colgroup>
        <thead>
        <tr class="header">
        <th align="left">Parameter</th>
        <th align="left">Description</th>
        </tr>
        </thead>
        <tbody>
        <tr class="odd">
        <td align="left"><p>$SERVERNAME$</p></td>
        <td align="left"><p>Name of the server to which the files will be copied.</p></td>
        </tr>
        <tr class="even">
        <td align="left"><p>$DESTINATIONSHARE$</p></td>
        <td align="left"><p>Name of the share and path to which the files will be copied.</p></td>
        </tr>
        </tbody>
        </table>

         

5.  **Restore the Recovery Database on Server B**

    1.  Restore the Recovery Database on Server B by using the **Restore Database** task in SQL Server Management Studio.

    2.  When the previous task finishes, select **From Device**, and then select the database backup file.

    3.  Use the **Add** command to select the **MBAM Recovery Database Data.bak** file, and click **OK** to complete the restoration process.

        To automate this procedure, create a SQL file (.sql) that contains the following SQL script:

        ``` syntax
        -- Restore MBAM Recovery Database. 
        USE master 
        GO 
        -- Drop certificate created by MBAM Setup. 
        DROP CERTIFICATE [MBAM Recovery Encryption Certificate] 
        GO 
        --Add certificate
        CREATE CERTIFICATE [MBAM Recovery Encryption Certificate] 
        FROM FILE = 'Z: \SQLServerInstanceCertificateFile' 
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

        Use the following value to replace the values in the code example with values that match your environment.

        **$PASSWORD$** - password that you used to encrypt the Private Key file.

    4.  Run the script that is stored in the .sql file by using a Windows PowerShell command that is similar to the following:

        ``` syntax
        PS C:\> Invoke-Sqlcmd -InputFile 'Z:\RestoreMBAMRecoveryandHardwarDatabaseScript.sql' -ServerInstance $SERVERNAME$\$SQLINSTANCENAME$
        ```

        Use the following value to replace the values in the code example with values that match your environment.

        **$SERVERNAME$\\$SQLINSTANCENAME$** - Server name and instance to which the Recovery Database will be restored.

6.  **Configure access to the Database on Server B and update connection data**

    1.  Verify that the Microsoft SQL Server user login that enables Recovery Database access on the restored database is mapped to the access account that you provided during the configuration process.

        If the login is not the same, create a login by using SQL Server Management Studio, and map it to the existing database user.

    2.  On the server that is running the Administration and Monitoring Website, use the Internet Information Services (IIS) Manager console to update the connection string information for the MBAM websites.

    3.  Edit the following registry key: **HKLM\\Software\\Microsoft\\MBAM Server\\Web\\RecoveryDBConnectionString**

    4.  Update the **Data Source** value with the name of the server and instance (for example, $SERVERNAME$\\$SQLINSTANCENAME) to which the Recovery Database was moved.

    5.  Update the **Initial Catalog** value with the recovered database name.

        To automate this process, you can use the Windows PowerShell command prompt to enter a command line on the Administration and Monitoring Server that is similar to the following:

        ``` syntax
        PS C:\> reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MBAM Server\Web" /v RecoveryDBConnectionString /t REG_SZ /d "Integrated Security=SSPI;Initial Catalog=$DATABASE$;Data Source=$SERVERNAME$\$SQLINSTANCENAME$" /f
        PS C:\> Set-WebConfigurationProperty '/connectionStrings/add[@name="KeyRecoveryConnectionString"]' -PSPath "IIS:\sites\Microsoft Bitlocker Administration and Monitoring\MBAMAdministrationService" -Name "connectionString" -Value “Data Source=$SERVERNAME$\$SQLINSTANCENAME$;Initial Catalog=MBAM Recovery and Hardware;Integrated Security=SSPI;” 
        PS C:\> Set-WebConfigurationProperty '/connectionStrings/add[@name="Microsoft.Mbam.RecoveryAndHardwareDataStore.ConnectionString"]' -PSPath "IIS:\sites\Microsoft Bitlocker Administration and Monitoring\MBAMRecoveryAndHardwareService" -Name "connectionString" -Value "Data Source=$SERVERNAME$\$SQLINSTANCENAME$;Initial Catalog=MBAM Recovery and Hardware;Integrated Security=SSPI;”
        ```

        **Note**  
        This connection string is shared by all local MBAM web applications. Therefore, it needs to be updated only once per server.

         

        Use the following table to replace the values in the code example with values that match your environment.

        <table>
        <colgroup>
        <col width="50%" />
        <col width="50%" />
        </colgroup>
        <thead>
        <tr class="header">
        <th align="left">Parameter</th>
        <th align="left">Description</th>
        </tr>
        </thead>
        <tbody>
        <tr class="odd">
        <td align="left"><p>$SERVERNAME$\$SQLINSTANCENAME$</p></td>
        <td align="left"><p>Server name and instance of SQL Server where the Recovery Database is located.</p></td>
        </tr>
        <tr class="even">
        <td align="left"><p>$DATABASE$</p></td>
        <td align="left"><p>Name of the Recovery database.</p></td>
        </tr>
        </tbody>
        </table>

         

7.  **Resume the instance of the Administration and Monitoring Website**

    1.  On the server that is running the Administration and Monitoring Website, use the Internet Information Services (IIS) Manager console to start the Administration and Monitoring Website.

    2.  To automate this procedure, you can use Windows PowerShell to run a command that is similar to the following:

        ``` syntax
        PS C:\> Start-Website "Microsoft BitLocker Administration and Monitoring"
        ```

        **Note**  
        To run this command, you must add the IIS module for Windows PowerShell to the current instance of Windows PowerShell.

         

## Moving the Compliance and Audit Database


The high-level steps for moving the Compliance and Audit Database are:

1.  Stop all instances of the MBAM Administration and Monitoring Website

2.  Install MBAM Server software and run the MBAM Server Configuration wizard on Server B

3.  Back up the Compliance and Audit Database on Server A

4.  Move the Compliance and Audit Database from Server A to Server B

5.  Restore the Compliance and Audit Database on Server B

6.  Configure access to the Database on Server B and update connection data

7.  Resume the instance of the Administration and Monitoring Website

**How to move the Compliance and Audit Database**

1.  **Stop all instances of the MBAM Administration and Monitoring Website**

    -   On each server that is running the MBAM Administration and Monitoring Server Website, use the Internet Information Services (IIS) Manager console to stop the Administration and Monitoring Website.

        To automate this procedure, you can use Windows PowerShell to enter a command that is similar to the following:

        ``` syntax
        PS C:\> Stop-Website "Microsoft BitLocker Administration and Monitoring"
        ```

        **Note**  
        To run this command, you must add the Internet Information Services (IIS) module for Windows PowerShell to the current instance of Windows PowerShell.

         

2.  **Install MBAM Server software and run the MBAM Server Configuration wizard on Server B**

    1.  Install the MBAM 2.5 Server software on Server B. For instructions, see [Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md).

    2.  On Server B, start the MBAM Server Configuration wizard, click **Add New Features**, and then select only the **Compliance and Audit Database** feature.

        Alternatively, you can use the **Enable-MbamDatabase** Windows PowerShell cmdlet to configure the Compliance and Audit Database.

        For instructions on how to configure the databases, see [How to Configure the MBAM 2.5 Databases](how-to-configure-the-mbam-25-databases.md).

3.  **Back up the Compliance and Audit Database on Server A**

    1.  Use the **Back Up** task in SQL Server Management Studio to back up the Compliance and Audit Database on Server A. By default, the database name is **MBAM Compliance Status Database**.

        To automate this procedure, create a SQL file (.sql) that contains the following SQL script:

        ``` syntax
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

    2.  Run the script that is stored in the .sql file by using a Windows PowerShell command that is similar to the following:

        ``` syntax
        PS C:\> Invoke-Sqlcmd -InputFile "Z:\BackupMBAMComplianceStatusDatabaseScript.sql" –ServerInstance $SERVERNAME$\$SQLINSTANCENAME$
        ```

        Using the following value, replace the values in the code example with values that match your environment:

        **$SERVERNAME$\\$SQLINSTANCENAME$** - server name and instance from which the Compliance and Audit Database will be backed up.

4.  **Move the Compliance and Audit Database from Server A to Server B**

    -   Use Windows Explorer to move the **MBAM Compliance Status Database Data.bak** file from Server A to Server B.

        To automate this procedure, you can use Windows PowerShell to run a command that is similar to the following:

        ``` syntax
        PS C:\> Copy-Item "Z:\MBAM Compliance Status Database Data.bak" \\$SERVERNAME$\$DESTINATIONSHARE$
        ```

        Using the following table, replace the values in the code example with values that match your environment.

        <table>
        <colgroup>
        <col width="50%" />
        <col width="50%" />
        </colgroup>
        <thead>
        <tr class="header">
        <th align="left">Parameter</th>
        <th align="left">Description</th>
        </tr>
        </thead>
        <tbody>
        <tr class="odd">
        <td align="left"><p>$SERVERNAME$</p></td>
        <td align="left"><p>Name of the server to which the files will be copied.</p></td>
        </tr>
        <tr class="even">
        <td align="left"><p>$DESTINATIONSHARE$</p></td>
        <td align="left"><p>Name of the share and path to which the files will be copied.</p></td>
        </tr>
        </tbody>
        </table>

         

5.  **Restore the Compliance and Audit Database on Server B**

    1.  Restore the Compliance and Audit Database on Server B by using the **Restore Database** task in SQL Server Management Studio.

    2.  When the previous task finishes, select **From Device**, and then select the database backup file.

    3.  Use the **Add** command to select the **MBAM Compliance Status Database Data.bak** file, and click **OK** to complete the restoration process.

        To automate this procedure, create a SQL file (.sql) that contains the following SQL script:

        ``` syntax
        -- Create MBAM Compliance Status Database Data logical backup devices. 
        Use master 
        GO 
        -- Restore the MBAM Compliance Status database data files. 
        RESTORE DATABASE [MBAM Compliance Status] 
        FROM DISK = 'C:\test\MBAM Compliance Status Database Data.bak' 
        WITH REPLACE
        ```

    4.  Run the script that is stored in the .sql file by using a Windows PowerShell command that is similar to the following:

        ``` syntax
        PS C:\> Invoke-Sqlcmd -InputFile "Z:\RestoreMBAMComplianceStatusDatabaseScript.sql" -ServerInstance $SERVERNAME$\$SQLINSTANCENAME$
        ```

        Using the following value, replace the values in the code example with values that match your environment.

        **$SERVERNAME$\\$SQLINSTANCENAME$** - Server name and instance to which the Compliance and Audit Database will be restored.

6.  **Configure access to the Database on Server B and update connection data**

    1.  Verify that the Microsoft SQL Server user login that enables Compliance and Audit Database access on the restored database is mapped to the access account that you provided during the configuration process.

        If the login is not the same, create a login by using SQL Server Management Studio, and map it to the existing database user.

    2.  On the server that is running the Administration and Monitoring Website, use the Internet Information Services (IIS) Manager console to update the connection string information for the Website.

    3.  Edit the following registry key: **HKLM\\Software\\Microsoft\\MBAM Server\\Web\\ComplianceDBConnectionString**

    4.  Update the **Data Source** value with the name of the server and instance (for example, $SERVERNAME$\\$SQLINSTANCENAME) to which the Recovery Database was moved.

    5.  Update the **Initial Catalog** value with the recovered database name.

        To automate this process, you can use the Windows PowerShell command prompt to enter a command line on the Administration and Monitoring Server that is similar to the following:

        ``` syntax
        PS C:\> reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MBAM Server\Web" /v ComplianceDBConnectionString /t REG_SZ /d "Integrated Security=SSPI;Initial Catalog=$DATABASE$;Data Source=$SERVERNAME$\$SQLINSTANCENAME$" /f
        ```

        **Note**  
        This connection string is shared by all local MBAM web applications. Therefore, it needs to be updated only once per server.

         

        Using the following table, replace the values in the code example with values that match your environment.

        <table>
        <colgroup>
        <col width="50%" />
        <col width="50%" />
        </colgroup>
        <thead>
        <tr class="header">
        <th align="left">Parameter</th>
        <th align="left">Description</th>
        </tr>
        </thead>
        <tbody>
        <tr class="odd">
        <td align="left"><p>$SERVERNAME$\$SQLINSTANCENAME$</p></td>
        <td align="left"><p>Server name and instance of SQL Server where the Recovery Database is located.</p></td>
        </tr>
        <tr class="even">
        <td align="left"><p>$DATABASE$</p></td>
        <td align="left"><p>Name of the recovered database.</p></td>
        </tr>
        </tbody>
        </table>

         

7.  **Resume the instance of the Administration and Monitoring Website**

    1.  On the server that is running the Administration and Monitoring Website, use the Internet Information Services (IIS) Manager console to start the Administration and Monitoring Website.

    2.  To automate this procedure, you can use Windows PowerShell to run a command that is similar to the following:

        ``` syntax
        PS C:\> Start-Website "Microsoft BitLocker Administration and Monitoring"
        ```

        **Note**  
        To run this command, you must add the IIS module for Windows PowerShell to the current instance of Windows PowerShell.

         

**Got a suggestion for MBAM**? Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). **Got a MBAM issue**? Use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).

## Related topics


[How to Configure the MBAM 2.5 Databases](how-to-configure-the-mbam-25-databases.md)

[Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md)

[Moving MBAM 2.5 Features to Another Server](moving-mbam-25-features-to-another-server.md)

 

 





