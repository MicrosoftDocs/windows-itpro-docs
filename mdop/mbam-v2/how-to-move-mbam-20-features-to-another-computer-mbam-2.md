---
title: How to Move MBAM 2.0 Features to Another Computer
description: How to Move MBAM 2.0 Features to Another Computer
author: dansimp
ms.assetid: 49bc0792-60a4-473f-89cc-ada30191e04a
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Move MBAM 2.0 Features to Another Computer


This topic describes the steps that you should take to move one or more Microsoft BitLocker Administration and Monitoring (MBAM) features to a different computer. When moving more than one Microsoft BitLocker Administration and Monitoring feature, you should move them in the following order:

1.  Recovery Database

2.  Compliance and Audit Database

3.  Compliance and Audit Reports

4.  Administration and Monitoring

## Moving the Recovery Database


To move the Recovery Database from one computer to another (for example, from Server A to Server B), use the following procedure.

1.  Stop all instances of the Administration and Monitoring web site.

2.  Run MBAM Setup on Server B.

3.  Back up the MBAM Recovery Database on Server A.

4.  Move the MBAM Recovery Database from Server A to B.

5.  Restore the MBAM Recovery Database on Server B.

6.  Configure access to the MBAM Recovery Database on Server B.

7.  Update the database connection data on MBAM Administration and Monitoring servers.

8.  Resume all instances of the MBAM Administration and Monitoring website.

**Stop All Instances of the MBAM Administration and Monitoring Website**

1.  On each of the servers running the MBAM Administration and Monitoring feature, use the Internet Information Services (IIS) Manager console to stop the MBAM website, which is named **Microsoft BitLocker Administration and Monitoring**.

2.  To automate this procedure, you can use Windows PowerShell to enter command line that is similar to the:

    `PS C:\> Stop-Website “Microsoft BitLocker Administration and Monitoring”`

    **Note**  
    To run this PowerShell command line, the IIS Module for PowerShell must be added to current instance of PowerShell. In addition, you must update the PowerShell execution policy to enable execution of scripts.



**Run MBAM Setup on Server B**

1.  Run MBAM Setup on Server B and select only the **Recovery Database** for installation.

2.  To automate this procedure, you can use Windows PowerShell to enter command line that is similar to the following:

    `PS C:\> MbamSetup.exe /qn I_ACCEPT_ENDUSER_LICENSE_AGREEMENT=1 AddLocal=KeyDatabase ADMINANDMON_MACHINENAMES=$DOMAIN$\$SERVERNAME$$ RECOVERYANDHWDB_SQLINSTANCE=$SERVERNAME$\$SQLINSTANCENAME$ TOPOLOGY=$X$`

    **Note**  
    Replace the following values in the example above with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the name of the server and instance to which the Recovery Database will be moved.

    -   $DOMAIN$\\$SERVERNAME$ - Enter the domain and server names of each MBAM Administration and Monitoring Server that will contact the Recovery Database. Use a semi-colon to separate each domain and server pairs in the list (for example, $DOMAIN\\SERVERNAME$;$DOMAIN\\$SERVERNAME$$). Each server name must be followed by a “$” symbol, as shown in the example (MyDomain\\MyServerName1$; MyDomain\\MyServerName2$).

    -   $X$ - Enter **0** if you are installing the MBAM Stand-alone topology, or **1** if you are installing the MBAM Configuration Manager topology.



**Back Up the Recovery Database on Server A**

1.  To back up the Recovery Database on Server A, use SQL Server Management Studio and the Task named Back Up. By default, the database name is **MBAM Recovery Database**.

2.  To automate this procedure, create a SQL file (.sql) that contains the following SQL script:

    Modify the MBAM Recovery Database to use the full recovery mode.

    ```sql
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

    **Note**  
    Replace the following values in the example above with those that match your environment:

    -   $PASSWORD$ - Enter a password that you will use to encrypt the Private Key file.



3.  Run the SQL File by using SQL Server PowerShell and a command line that is similar to the following:

    `PS C:\> Invoke-Sqlcmd -InputFile 'Z:\BackupMBAMRecoveryandHardwarDatabaseScript.sql' -ServerInstance $SERVERNAME$\$SQLINSTANCENAME$`

    **Note**  
    Replace the following values in the example above with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the name of the server and instance from which the Recovery Database will be backed up.



**Move the Recovery Database and Certificate from Server A to Server B**

1.  Move the following file from Server A to Server B by using Windows Explorer.

    -   MBAM Recovery Database data.bak

2.  To move the certificate for the encrypted database, use the following automation steps. To automate this procedure, you can use Windows PowerShell to enter a command line that is similar to the following:

    `PS C:\> Copy-Item “Z:\MBAM Recovery Database Data.bak” \\$SERVERNAME$\$DESTINATIONSHARE$`

    `PS C:\> Copy-Item “Z:\SQLServerInstanceCertificateFile” \\$SERVERNAME$\$DESTINATIONSHARE$`

    `PS C:\> Copy-Item “Z:\SQLServerInstanceCertificateFilePrivateKey” \\$SERVERNAME$\$DESTINATIONSHARE$`

    **Note**  
    Replace the following value in the example above with those that match your environment:

    -   $SERVERNAME$ - Enter the name of the server to which the files will be copied.

    -   $DESTINATIONSHARE$ - Enter the name of the share and path to which the files will be copied.



**Restore the Recovery Database on Server B**

1.  Restore the Recovery Database on Server B by using SQL Server Management Studio and the task named **Restore Database**.

2.  Once the task has been completed, select the database backup file by selecting the **From Device** option and then use the **Add** command to select the MBAM Recovery database **Data.bak** file.

3.  Select **OK** to complete the restoration process.

4.  To automate this procedure, create a SQL file (.sql) that contains the following-SQL script:

    ```sql
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

    **Note**  
    Replace the following values in the example above with those that match your environment:

    -   $PASSWORD$ - Enter a password that you used to encrypt the Private Key file.



5.  You can use Windows PowerShell to enter a command line that is similar to the following:

    `PS C:\> Invoke-Sqlcmd -InputFile 'Z:\RestoreMBAMRecoveryandHardwarDatabaseScript.sql' -ServerInstance $SERVERNAME$\$SQLINSTANCENAME$`

    **Note**  
    Replace the following value in the example above with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the name of the server and instance to which the Recovery Database will be restored.



**Configure Access to the Recovery Database on Server B**

1.  On Server B, use the Local user and Groups snap-in from Server Manager to add the computer accounts from each server that is running the MBAM Administration and Monitoring feature to the Local Group named **MBAM Recovery and Hardware DB Access**.

2.  Verify that the SQL login **MBAM Recovery and Hardware DB Access** on the restored database is mapped to the login name **$MachineName$\\MBAM Recovery and Hardware DB Access**. If it is not mapped as described, create another login with similar group memberships, and map it to the login name **$MachineName$\\MBAM Recovery and Hardware DB Access**.

3.  To automate this procedure, you can use Windows PowerShell on Server B to enter a command line that is similar to the following:

    `PS C:\> net localgroup "MBAM Recovery and Hardware DB Access" $DOMAIN$\$SERVERNAME$$  /add`

    **Note**  
    Replace the following values in the example above with the applicable values for your environment:

    -   $DOMAIN$\\$SERVERNAME$$ - Enter the domain and machine name of the MBAM Administration and Monitoring Server. The server name must be followed by a $, as shown in the example (for example, MyDomain\\MyServerName1$).



~~~
This command line must be run for each Administration and Monitoring Server that will be accessing the database in your environment.
~~~

**Update the Recovery Database Connection Data on the MBAM Administration and Monitoring Servers**

1. On each of the servers running the MBAM Administration and Monitoring feature, use the Internet Information Services (IIS) Manager console to update the Connection String information for the following applications, which are hosted in the Administration and Monitoring website:

   -   MBAMAdministrationService

   -   MBAMRecoveryAndHardwareService

2. Select each application and use the **Configuration Editor** feature, which is located under the **Management** section of the **Feature View**.

3. Select the **configurationStrings** option from the **Section list** control.

4. Select the row named **(Collection)** and open the **Collection Editor** by selecting the button on the right side of the row.

5. In the **Collection Editor**, select the row named **KeyRecoveryConnectionString** when updating the configuration for the MBAMAdministrationService application or the row named <strong>Microsoft.Mbam.RecoveryAndHardwareDataStore.</strong>ConnectionString when updating the configuration for the MBAMRecoveryAndHardwareService.

6. Update the **Data Source=** value for the **configurationStrings** property to list the server name and instance (for example, $SERVERNAME$\\$SQLINSTANCENAME$) where the Recovery Database was moved to.

7. To automate this procedure, you can use Windows to enter a command line, that is similar to the following, on each Administration and Monitoring Server:

   `PS C:\> Set-WebConfigurationProperty '/connectionStrings/add[@name="KeyRecoveryConnectionString"]' -PSPath "IIS:\sites\Microsoft Bitlocker Administration and Monitoring\MBAMAdministrationService" -Name "connectionString" -Value “Data Source=$SERVERNAME$\$SQLINSTANCENAME$;Initial Catalog=MBAM Recovery and Hardware;Integrated Security=SSPI;”`

   `PS C:\> Set-WebConfigurationProperty '/connectionStrings/add[@name="Microsoft.Mbam.RecoveryAndHardwareDataStore.ConnectionString"]' -PSPath "IIS:\sites\Microsoft Bitlocker Administration and Monitoring\MBAMRecoveryAndHardwareService" -Name "connectionString" -Value "Data Source=$SERVERNAME$\$SQLINSTANCENAME$;Initial Catalog=MBAM Recovery and Hardware;Integrated Security=SSPI;"`

   **Note**  
   Replace the following value in the example above with those that match your environment:

   -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the server name and instance where the Recovery Database is.



**Resume all Instances of the MBAM Administration and Monitoring Website**

1.  On each server that is running the MBAM Administration and Monitoring feature, use the Internet Information Services (IIS) Manager console to start the MBAM website, which is named **Microsoft BitLocker Administration and Monitoring**.

2.  To automate this procedure, you can use Windows PowerShell to enter a command line that is similar to the:

    `PS C:\> Start-Website “Microsoft BitLocker Administration and Monitoring”`

## Moving the Compliance and Audit Database Feature


If you want to move the MBAM Compliance and Audit Database from one computer to another (that is, move the database from Server A to Server B), use the following procedure. The process includes the following high-level steps:

1.  Stop all instances of the Administration and Monitoring website.

2.  Run MBAM setup on Server B.

3.  Back up the Database on Server A.

4.  Move the Database from Server A to B.

5.  Restore the Database on Server B.

6.  Configure access to the Database on Server B.

7.  Update the database connection data on the MBAM Administration and Monitoring servers.

8.  Update the SSRS reports data source connection string with the new location of the Compliance and Audit Database.

9.  Resume all instances of the Administration and Monitoring website.

**Stop All Instances of the Administration and Monitoring Website**

1.  On each server that is running the MBAM Administration and Monitoring feature, use the Internet Information Services (IIS) Manager console to stop the MBAM website named **Microsoft BitLocker Administration and Monitoring**.

2.  To automate this procedure, you can use Windows PowerShell to enter a command line that is similar to the following:

    `PS C:\> Stop-s “Microsoft BitLocker Administration and Monitoring”`

    **Note**  
    To run this command line, you must add the IIS Module for PowerShell to the current instance of PowerShell. In addition, you must update the PowerShell execution policy to enable scripts to be run.



**Run MBAM Setup on Server B**

1.  Run MBAM Setup on Server B and select only the **Compliance and Audit Database** for installation.

2.  To automate this procedure, you can use Windows PowerShell to enter a command line that is similar to the following:

    `PS C:\> MbamSetup.exe /qn I_ACCEPT_ENDUSER_LICENSE_AGREEMENT=1 AddLocal= ReportsDatabase ADMINANDMON_MACHINENAMES=$DOMAIN$\$SERVERNAME$ COMPLIDB_SQLINSTANCE=$SERVERNAME$\$SQLINSTANCENAME$ REPORTS_USERACCOUNT=$DOMAIN$\$USERNAME$ TOPOLOGY=$X$`

    **Note**  
    Note: Replace the following values in the example above with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the server name and instance where the Compliance and Audit Database will be moved to.

    -   $DOMAIN$\\$SERVERNAME$ - Enter the domain and server names of each MBAM Administration and Monitoring Server that will contact the Compliance and Audit Database. Use a semi-colon to separate each domain and server pair in the list (for example, $DOMAIN\\SERVERNAME$;$DOMAIN\\$SERVERNAME$$). Each server name must be followed by a “$” symbol, as shown in the example (MyDomain\\MyServerName1$; MyDomain\\MyServerName2$).

    -   $DOMAIN$\\$USERNAME$ - Enter the domain and user name that will be used by the Compliance and Audit Reports feature to connect to the Compliance and Audit Database.

    -   $X$ - Enter **0** if you are installing the MBAM Stand-alone topology, or **1** if you are installing the MBAM Configuration Manager topology.



**Back Up the Compliance and Audit Database on Server A**

1.  To back up the Compliance and Audit Database on Server A, use SQL Server Management Studio and the task named **Back Up**. By default, the database name is **MBAM Compliance Status Database**.

2.  To automate this procedure, create a SQL file (.sql) that contains the following-SQL script:

    ```sql
    -- Modify the MBAM Compliance Status Database to use the full recovery model.

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

    -- Back up the full MBAM Recovery database.

    BACKUP DATABASE [MBAM Compliance Status] TO [MBAM Compliance Status Database Data Device];

    GO
    ```

3.  Run the SQL file by using a Windows PowerShell command line that is similar to the following:

    `PS C:\> Invoke-Sqlcmd -InputFile "Z:\BackupMBAMComplianceStatusDatabaseScript.sql" –ServerInstance $SERVERNAME$\$SQLINSTANCENAME$`

    **Note**  
    Replace the following value in the example above with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the server name and instance where the Compliance and Audit database will be backed up from.



**Move the Compliance and Audit Database from Server A to B**

1.  Move the following files from Server A to Server B using Windows Explorer.

    -   MBAM Compliance Status Database Data.bak

2.  To automate this procedure, you can use Windows PowerShell to enter a command line that is similar to the following:

    `PS C:\> Copy-Item “Z:\MBAM Compliance Status Database Data.bak” \\$SERVERNAME$\$DESTINATIONSHARE$`

    **Note**  
    Replace the following values in the example above with those that match your environment:

    -   $SERVERNAME$ - Enter the server name where the files will be copied to.

    -   $DESTINATIONSHARE$ - Enter the name of share and path where the files will be copied to.



**Restore the Compliance and Audit Database on Server B**

1.  Restore the Compliance and Audit Database on Server B by using SQL Server Management Studio and the task named **Restore Database**.

2.  Once the task has been completed, select the database backup file by selecting the **From Device** option and then use the **Add** command to select the MBAM Compliance Status Database Data.bak file. Select **OK** to complete the restoration process.

3.  To automate this procedure, create a SQL file (.sql) that contains the following-SQL script:

    ```sql
    -- Create MBAM Compliance Status Database Data logical backup devices. 

    Use master

    GO

    -- Restore the MBAM Compliance Status database data files.

    RESTORE DATABASE [MBAM Compliance Status]

       FROM DISK = 'C:\test\MBAM Compliance Status Database Data.bak'

       WITH REPLACE
    ```

4.  Run the SQL File by using a Windows PowerShell command line that is similar to the following:

    `PS C:\> Invoke-Sqlcmd -InputFile "Z:\RestoreMBAMComplianceStatusDatabaseScript.sql" -ServerInstance $SERVERNAME$\$SQLINSTANCENAME$`

    **Note**  
    Replace the following value in the example above with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the server name and instance where the Compliance and Audit Database will be restored to.



**Configure Access to the Compliance and Audit Database on Server B**

1.  On Server B, use the Local user and Groups snap-in from Server Manager to add the computer accounts from each server that is running the MBAM Administration and Monitoring feature to the local group named **MBAM Compliance Status DB Access**.

2.  Verify that the SQL login **MBAM Compliance Auditing DB Access** on the restored database is mapped to the login name **$MachineName$\\ MBAM Compliance Auditing DB Access**. If it is not mapped as described, create another login with similar group memberships, and map it to the login name **$MachineName$\\ MBAM Compliance Auditing DB Access**.

3.  To automate this procedure, you can use Windows PowerShell to enter a command line on Server B that is similar to the following:

    `PS C:\> net localgroup "MBAM Compliance Auditing DB Access" $DOMAIN$\$SERVERNAME$$  /add`

    `PS C:\> net localgroup "MBAM Compliance Auditing DB Access" $DOMAIN$\$REPORTSUSERNAME$  /add`

    **Note**  
    Replace the following values in the example above with the applicable values for your environment:

    -   $DOMAIN$\\$SERVERNAME$$ - Enter the domain and machine name of the MBAM Administration and Monitoring Server. The server name must be followed by a “$” as shown in the example. (for example, MyDomain\\MyServerName1$)

    -   $DOMAIN$\\$REPORTSUSERNAME$ - Enter the user account name that was used to configure the data source for the Compliance and Audit Reports.



~~~
The command line for adding the servers to the MBAM Compliance and Audit Database access local group must be run for each Administration and Monitoring Server that will be accessing the database in your environment.
~~~

**Update the Database Connection Data on MBAM Administration and Monitoring Servers**

1.  On each server that is running the MBAM Administration and Monitoring feature, use the Internet Information Services (IIS) Manager console to update the connection string information for the following applications, which are hosted in the Administration and Monitoring website:

    -   MBAMAdministrationService

    -   MBAMComplianceStatusService

2.  Select each application and use the **Configuration Editor** feature, which is located under the **Management** section of the **Feature View**.

3.  Select the **configurationStrings** option from the **Section list** control.

4.  Select the row named **(Collection)**, and open the **Collection Editor** by selecting the button on the right side of the row.

5.  In the **Collection Editor**, select the row named **ComplianceStatusConnectionString** when updating the configuration for the MBAMAdministrationService application, or the row named **Microsoft.Windows.Mdop.BitLockerManagement.StatusReportDataStore.ConnectionString** when updating the configuration for the MBAMComplianceStatusService.

6.  Update the **Data Source=** value for the **configurationStrings** property to list the name of the server and instance (for example, $SERVERNAME$\\$SQLINSTANCENAME) to which the Recovery Database was moved.

7.  To automate this procedure, you can use Windows to enter a command line on each Administration and Monitoring Server that is similar to the following:

    `PS C:\> Set-WebConfigurationProperty '/connectionStrings/add[@name="ComplianceStatusConnectionString"]' -PSPath "IIS:\sites\Microsoft Bitlocker Administration and Monitoring\MBAMAdministrationService" -Name "connectionString" -Value "Data Source=$SERVERNAME$\$SQLINSTANCENAME$;Initial Catalog=MBAM Compliance Status;Integrated Security=SSPI;"`

    `PS C:\> Set-WebConfigurationProperty '/connectionStrings/add[@name="Microsoft.Windows.Mdop.BitLockerManagement.StatusReportDataStore.ConnectionString"]' -PSPath "IIS:\sites\Microsoft Bitlocker Administration and Monitoring\MBAMComplianceStatusService" -Name "connectionString" -Value "Data Source=$SERVERNAME$\$SQLINSTANCENAME;Initial Catalog=MBAM Compliance Status;Integrated Security=SSPI;"`

    **Note**  
    Replace the following values in the example above with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the server name and instance where the Recovery Database is located.



**Resume All Instances of the MBAM Administration and Monitoring Website**

1.  On each server that is running the MBAM Administration and Monitoring feature, use the Internet Information Services (IIS) Manager console to start the MBAM website named **Microsoft BitLocker Administration and Monitoring**.

2.  To automate this procedure, you can use Windows PowerShell to enter a command line that is similar to the following:

    `PS C:\> Start-Website “Microsoft BitLocker Administration and Monitoring”`

## Moving the Compliance and Audit Reports


If you want to move the MBAM Compliance and Audit Reports from one computer to another (that is, move the reports from Server A to Server B), use the following procedure, which includes the following high-level steps:

1.  Run MBAM setup on Server B.

2.  Configure access to the Compliance and Audit Reports on Server B.

3.  Stop all instances of the MBAM Administration and Monitoring website.

4.  Update the reports connection data on MBAM Administration and Monitoring servers.

5.  Resume all instances of the MBAM Administration and Monitoring website.

**Run MBAM Setup on Server B**

1.  Run MBAM Setup on Server B and select only the **Compliance and Audit Reports** feature for installation.

2.  To automate this procedure, you can use Windows PowerShell to enter a command line that is similar to the following:

    `PS C:\> MbamSetup.exe /qn I_ACCEPT_ENDUSER_LICENSE_AGREEMENT=1 AddLocal=Reports COMPLIDB_SQLINSTANCE=$SERVERNAME$\$SQLINSTANCENAME$ REPORTS_USERACCOUNTPW=$PASSWORD$ TOPOLOGY=$X$`

    **Note**  
    Replace the following values in the example above with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the server name and instance where the Compliance and Audit Database is located.

    -   $DOMAIN$\\$USERNAME$ - Enter the domain and user name that will be used by the Compliance and Audit Reports feature to connect to the Compliance and Audit Database.

    -   $PASSWORD$ - Enter the password of the user account that will be used to connect to the Compliance and Audit Database.

    -   $X$ - Enter **0** if you are installing the MBAM Stand-alone topology, or **1** if you are installing the MBAM Configuration Manager topology.



**Configure Access to the Compliance and Audit Reports on Server B**

1.  On Server B, use the Local user and Groups snap-in from Server Manager to add the user accounts that will have access to the Compliance and Audit Reports. Add the user accounts to the local group named MBAM Report Users.

2.  To automate this procedure, you can use Windows PowerShell to enter a command line on Server B that is similar to the following:

    `PS C:\> net localgroup "MBAM Report Users" $DOMAIN$\$REPORTSUSERNAME$  /add`

    **Note**  
    Replace the following values in the example above with the applicable values for your environment:

    -   $DOMAIN$\\$REPORTSUSERNAME$ - Enter the user account name that was used to configure the data source for the Compliance and Audit reports.



~~~
The command line for adding the users to the MBAM Report Users local group must be run for each user that will be accessing the reports in your environment.
~~~

**Stop All Instances of the MBAM Administration and Monitoring Website**

1.  On each server that is running the MBAM Administration and Monitoring Server feature, use the Internet Information Services (IIS) Manager console to stop the MBAM website named **Microsoft BitLocker Administration and Monitoring**.

2.  To automate this procedure, you can use Windows PowerShell to enter a command line that is similar to the following:

    `PS C:\> Stop-Website “Microsoft BitLocker Administration and Monitoring”`

**Update the Database Connection Data on the MBAM Administration and Monitoring Servers**

1. On each server that is running the MBAM Administration and Monitoring Server feature, use the Internet Information Services (IIS) Manager console to update the Compliance and Audit Reports URL.

2. Select the **Microsoft BitLocker Administration and Monitoring** website, and use the **Configuration Editor** feature that is location under the **Management** section of the **Feature View**.

3. Select the **appSettings** option from the **Section list** control.

4. Select the row named **(Collection)** and open the **Collection Editor** by selecting the button on the right side of the row.

5. In the **Collection Editor**, select the row named **Microsoft.Mbam.Reports.Url**.

6. Update the value for **Microsoft.Mbam.Reports.Url** to reflect the server name for Server B. If the Compliance and Audit Reports feature was installed on a named SQL Reporting Services instance, be sure to add or update the name of the instance to the URL (for example, http://$SERVERNAME$/ReportServer\_$SQLSRSINSTANCENAME$/Pages....)

7. To automate this procedure, you can use Windows PowerShell to enter a command line on each Administration and Monitoring Server that is similar to the following:

   `PS C:\> Set-WebConfigurationProperty '/appSettings/add[@key="Microsoft.Mbam.Reports.Url"]' -PSPath "IIS:\ \sites\Microsoft Bitlocker Administration and Monitoring\HelpDesk" -Name "Value" -Value “http://$SERVERNAME$/ReportServer_$SRSINSTANCENAME$/Pages/ReportViewer.aspx?/ Microsoft+BitLocker+Administration+and+Monitoring/”`

   **Note**  
   Replace the following values in the example above with those that match your environment:

   -   $SERVERNAME$ - Enter the name of the server name to which the Compliance and Audit Reports were installed.

   -   $SRSINSTANCENAME$ - Enter the name of the SQL Reporting Services instance to which the Compliance and Audit Reports were installed.



**Resume All Instances of the MBAM Administration and Monitoring Website**

1.  On each server that is running the MBAM Administration and Monitoring Server feature, use the Internet Information Services (IIS) Manager console to Start the MBAM website named **Microsoft BitLocker Administration and Monitoring**.

2.  To automate this procedure, you can use Windows PowerShell to enter a command line that is similar to the following:

    `PS C:\> Start-Website “Microsoft BitLocker Administration and Monitoring”`

    **Note**  
    To run this command line, you must add the IIS Module for PowerShell to current instance of PowerShell. In addition, you must update the PowerShell execution policy to enable scripts to be run.



## Moving the Administration and Monitoring Feature


If you want to move the MBAM Administration and Monitoring Reports feature from one computer to another (that is, move the feature from Server A to Server B), use the following procedure, which includes the following high-level steps:

1.  Run MBAM Setup on Server B.

2.  Configure access to the Database on Server B.

**Run MBAM Setup on Server B**

1.  Run MBAM Setup on Server B and select only the **Administration and Monitoring Server** feature for installation.

2.  To automate this procedure, you can use Windows PowerShell to enter a command line that is similar to the following:

    `PS C:\> MbamSetup.exe /qn I_ACCEPT_ENDUSER_LICENSE_AGREEMENT=1 AddLocal=AdministrationMonitoringServer, COMPLIDB_SQLINSTANCE=$SERVERNAME$\$SQLINSTANCENAME$ RECOVERYANDHWDB_SQLINSTANCE=$SERVERNAME$\$SQLINSTANCENAME$ SRS_REPORTSITEURL=$REPORTSSERVERURL$ TOPOLOGY=$X$`

    **Note**  
    Replace the following values in the example above with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - For the COMPLIDB\_SQLINSTANCE parameter, enter the server name and instance where the Compliance and Audit Database is located. For the RECOVERYANDHWDB\_SQLINSTANCE parameter, enter the server name and instance where the Recovery Database is located.

    -   $DOMAIN$\\$USERNAME$ - Enter the domain and user name that will be used by the Compliance and Audit Reports feature to connect to the Compliance and Audit Database.

    -   $ REPORTSSERVERURL$ - Enter the URL for the Home location of the SQL Reporting Service website. If the reports were installed to a default SRS instance, the URL format will have the format “http:// $SERVERNAME$/ReportServer”. If the reports were installed to a default SRS instance, the URL format will have the format “http://$SERVERNAME$/ReportServer\_$SQLINSTANCENAME$”.

    -   $X$ - Enter **0** if you are installing the MBAM Stand-alone topology, or **1** if you are installing the MBAM Configuration Manager topology.



**Configure Access to the Databases**

1.  On the server or servers where the Recovery Database and Compliance and Audit Database are deployed, use the Local user and Groups snap-in from Server Manager to add the computer accounts from each server that is running the MBAM Administration and Monitoring Server feature to the local groups named **MBAM Recovery and Hardware DB Access** (Recovery DB Server) and **MBAM Compliance Status DB Access** (Compliance and Audit Database Server).

2.  To automate this procedure, you can use Windows PowerShell to enter a command line, that is similar to the following, on the server where the Compliance and Audit Database was deployed.

    `PS C:\> net localgroup "MBAM Compliance Auditing DB Access" $DOMAIN$\$SERVERNAME$$  /add`

3.  On the server where the Recovery database was deployed, you can use Windows PowerShell to enter a command line that is similar to the following:

    `PS C:\> net localgroup "MBAM Recovery and Hardware DB Access" $DOMAIN$\$SERVERNAME$$  /add`

    **Note**  
    Replace the following value in the example above with the applicable values for your environment:

    -   $DOMAIN$\\$SERVERNAME$$ - Enter the domain and machine name of the Administration and Monitoring Server. The server name must be followed by a “$” symbol, as shown in the example (for example, MyDomain\\MyServerName1$).

    -   $DOMAIN$\\$REPORTSUSERNAME$ - Enter the user account name that was used to configure the data source for the Compliance and Audit Reports.



~~~
The command lines that are listed for adding server computer accounts to the MBAM local groups must be run for each Administration and Monitoring Server that will be accessing the databases in your environment.
~~~

## Related topics


[Maintaining MBAM 2.0](maintaining-mbam-20-mbam-2.md)









