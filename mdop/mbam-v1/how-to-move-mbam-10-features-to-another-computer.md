---
title: How to Move MBAM 1.0 Features to Another Computer
description: How to Move MBAM 1.0 Features to Another Computer
author: msfttracyp
ms.assetid: e1907d92-6b42-4ba3-b0e4-60a9cc8285cc
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Move MBAM 1.0 Features to Another Computer


This topic describes the steps that you should take to move one or more Microsoft BitLocker Administration and Monitoring (MBAM) features to a different computer. When you move more than one MBAM feature to another computer, you should move them in the following order:

1.  Recovery and Hardware Database

2.  Compliance and Audit Database

3.  Compliance and Audit Reports

4.  Administration and Monitoring

## To move the Recovery and Hardware Database


You can use the following procedure to move the MBAM Recovery and Hardware Database from one computer to another (you can move this MBAM Server feature from Server A to Server B):

****

1.  Stop all instances of the MBAM Administration and Monitoring web site.

2.  Run the MBAM Setup on Server B.

3.  Back up the MBAM Recovery and Hardware database on Server A.

4.  MBAM Recovery and Hardware database from Server A to B

5.  Restore the MBAM Recovery and Hardware database on Server B

6.  Configure the access to the MBAM Recovery and Hardware database on Server B

7.  Update the database connection data on MBAM Administration and Monitoring servers

8.  Resume all instances of the MBAM Administration and Monitoring web site

**To stop all instances of the MBAM Administration and Monitoring website**

1.  Use the Internet Information Services (IIS) Manager console to stop the MBAM website on each of the servers that run the MBAM Administration and Monitoring feature. The MBAM website is named **Microsoft BitLocker Administration and Monitoring**.

2.  To automate this procedure, you can use a command at the command prompt that is similar to the following, by using Windows PowerShell:

    `PS C:\> Stop-Website “Microsoft BitLocker Administration and Monitoring”`

    **Note**  
    To run this PowerShell command prompt, you must add the IIS Module for PowerShell to the current instance of PowerShell. In addition, you must update the PowerShell execution policy to enable the execution of scripts.

     

**To run MBAM setup on Server B**

1.  Run the MBAM setup on Server B and select the Recovery and Hardware Database for installation.

2.  To automate this procedure, you can use a command at the command prompt that is similar to the following, by using Windows PowerShell:

    `PS C:\> MbamSetup.exe /qn I_ACCEPT_ENDUSER_LICENSE_AGREEMENT=1 AddLocal=KeyDatabase ADMINANDMON_MACHINENAMES=$DOMAIN$\$SERVERNAME$$ RECOVERYANDHWDB_SQLINSTANCE=$SERVERNAME$\$SQLINSTANCENAME$`

    **Note**  
    Replace the following values in the example above with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the name of the server and instance to which the Recovery and Hardware database will be moved.

    -   $DOMAIN$\\$SERVERNAME$ - Enter the domain and server names of each MBAM Application and Monitoring Server that will contact the Recovery and Hardware database. If there are multiple domain and server names, use a semicolon to separate each one of them in the list. For example, $DOMAIN\\SERVERNAME$;$DOMAIN\\$SERVERNAME$$. Additionally, each server name must be followed by a **$**. For example, MyDomain\\MyServerName1$, MyDomain\\MyServerName2$.

     

**To back up the Database on Server A**

1.  To back up the Recovery and Hardware database on Server A, use SQL Server Management Studio and the Task named **Back Up…**. By default, the database name is **MBAM Recovery and Hardware Database**.

2.  To automate this procedure, create a SQL file (.sql) that contains the following SQL script:

    Modify the MBAM Recovery and Hardware Database to use the full recovery mode.

    `USE master;`

    `GO`

    `ALTER DATABASE "MBAM Recovery and Hardware"`

    `   SET RECOVERY FULL;`

    `GO`

    Create MBAM Recovery and Hardware Database Data and MBAM Recovery logical backup devices.

    `USE master`

    `GO`

    `EXEC sp_addumpdevice 'disk', 'MBAM Recovery and Hardware Database Data Device',`

    `'Z:\MBAM Recovery and Hardware Database Data.bak';`

    `GO`

    Back up the full MBAM Recovery and Hardware database.

    `BACKUP DATABASE [MBAM Recovery and Hardware] TO [MBAM Recovery and Hardware Database Data Device];`

    `GO`

    `BACKUP CERTIFICATE [MBAM Recovery Encryption Certificate]`

    `TO FILE = 'Z:\SQLServerInstanceCertificateFile'`

    `WITH PRIVATE KEY`

    `(`

    `    FILE = ' Z:\SQLServerInstanceCertificateFilePrivateKey',`

    `    ENCRYPTION BY PASSWORD = '$PASSWORD$'`

    `);`

    `GO`

    **Note**  
    Replace the values from the preceding example with those that match your environment:

    -   $PASSWORD$ - Enter a password that you will use to encrypt the Private Key file.

     

3.  Execute the SQL file by using SQL Server PowerShell and a command that is similar to the following:

    `PS C:\> Invoke-Sqlcmd -InputFile 'Z:\BackupMBAMRecoveryandHardwarDatabaseScript.sql' -ServerInstance $SERVERNAME$\$SQLINSTANCENAME$`

    **Note**  
    Replace the value in the previous example with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the name of the server and the instance from which you back up the Recovery and Hardware database.

     

**To move the Database and Certificate from Server A to B**

1.  Move the MBAM Recovery and Hardware database data.bak from Server A to Server B by using Windows Explorer.

2.  To move the certificate for the encrypted database, you will need to use the following automation steps. To automate this procedure, you can use Windows PowerShell to enter a command that is similar to the following:

    `PS C:\> Copy-Item “Z:\MBAM Recovery and Hardware Database Data.bak” \\$SERVERNAME$\$DESTINATIONSHARE$`

    `PS C:\> Copy-Item “Z:\SQLServerInstanceCertificateFile” \\$SERVERNAME$\$DESTINATIONSHARE$`

    `PS C:\> Copy-Item “Z:\SQLServerInstanceCertificateFilePrivateKey” \\$SERVERNAME$\$DESTINATIONSHARE$`

    **Note**  
    Replace the value from the preceding example with those that match your environment:

    -   $SERVERNAME$ - Enter the name of the server to which the files will be copied.

    -   $DESTINATIONSHARE$ - Enter the name of the share and path to which the files will be copied.

     

**To restore the Database on Server B**

1.  Restore the Recovery and Hardware database on Server B by using the SQL Server Management Studio and the Task named **Restore Database**.

2.  Once the task has been executed, choose the database backup file by selecting the **From Device** option, and then use the **Add** command to choose the MBAM Recovery and Hardware database **Data.bak** file.

3.  Select **OK** to complete the restoration process.

4.  To automate this procedure, create a SQL file (.sql) that contains the following SQL script:

    `-- Restore MBAM Recovery and Hardware Database. `

    `USE master`

    `GO`

    Drop the certificate created by MBAM Setup.

    `DROP CERTIFICATE [MBAM Recovery Encryption Certificate]`

    `GO`

    Add certificate

    `CREATE CERTIFICATE [MBAM Recovery Encryption Certificate]`

    `FROM FILE = 'Z: \SQLServerInstanceCertificateFile'`

    `WITH PRIVATE KEY`

    `(`

    `    FILE = ' Z:\SQLServerInstanceCertificateFilePrivateKey',`

    `    DECRYPTION BY PASSWORD = '$PASSWORD$'`

    `);`

    `GO`

    Restore the MBAM Recovery and Hardware database data and the log files.

    `RESTORE DATABASE [MBAM Recovery and Hardware]`

    `   FROM DISK = 'Z:\MBAM Recovery and Hardware Database Data.bak'`

    `   WITH REPLACE`

    **Note**  
    Replace the values from the preceding example with those that match your environment:

    -   $PASSWORD$ - Enter the password that you used to encrypt the Private Key file.

     

5.  Use Windows PowerShell to enter a command line that is similar to the following:

    `PS C:\> Invoke-Sqlcmd -InputFile 'Z:\RestoreMBAMRecoveryandHardwarDatabaseScript.sql' -ServerInstance $SERVERNAME$\$SQLINSTANCENAME$`

    **Note**  
    Replace the value from the receding example with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the name of the server and the instance to which the Recovery and Hardware Database will be restored.

     

**Configure the access to the Database on Server B**

1.  On Server B, use the Local user and Groups snap-in from Server Manager, to add the computer accounts from each server that runs the MBAM Administration and Monitoring feature to the Local Group named **MBAM Recovery and Hardware DB Access**.

2.  To automate this procedure, you can use Windows PowerShell on Server B to enter a command that is similar to the following:

    `PS C:\> net localgroup "MBAM Recovery and Hardware DB Access" $DOMAIN$\$SERVERNAME$$  /add`

    **Note**  
    Replace the values from the preceding example with the applicable values for your environment:

    -   $DOMAIN$\\$SERVERNAME$$ - Enter the domain name and machine name of the MBAM Administration and Monitoring Server. The server name must be followed by a **$**, for example, MyDomain\\MyServerName1$.

     

    You must run the command for each Administration and Monitoring Server that will be accessing the database in your environment.

**To update the Database Connection data on MBAM Administration and Monitoring Servers**

1.  On each of the servers that run the MBAM Administration and Monitoring feature, use the Internet Information Services (IIS) Manager console to update the Connection String information for the following applications, which are hosted in the Microsoft BitLocker Administration and Monitoring website:

    -   MBAM Administration Service

    -   MBAM Recovery And Hardware Service

2.  Select each application and use the **Configuration Editor** feature, which is located under the **Management** section of the **Feature View**.

3.  Select the **configurationStrings** option from the Section list control.

4.  Choose the row named **(Collection)**, and open the **Collection Editor** by selecting the button on the right side of the row.

5.  In the **Collection Editor**, choose the row named **KeyRecoveryConnectionString** when you updated the configuration for the ‘MBAMAdministrationService’ application, or choose the row named **Microsoft.Mbam.RecoveryAndHardwareDataStore.**ConnectionString, when updating the configuration for the ‘MBAMRecoveryAndHardwareService’.

6.  Update the **Data Source=** value for the **configurationStrings** property to list the server name and the instance where the Recovery and Hardware Database was moved to. For example, $SERVERNAME$\\$SQLINSTANCENAME$.

7.  To automate this procedure, you can use a command that is similar to the following one, by using Windows PowerShell on each Administration and Monitoring Server:

    `PS C:\> Set-WebConfigurationProperty '/connectionStrings/add[@name="KeyRecoveryConnectionString"]' -PSPath "IIS:\sites\Microsoft BitLocker Administration and Monitoring\MBAMAdministrationService" -Name "connectionString" -Value “Data Source=$SERVERNAME$\$SQLINSTANCENAME$;Initial Catalog=MBAM Recovery and Hardware;Integrated Security=SSPI;”`

    `PS C:\> Set-WebConfigurationProperty '/connectionStrings/add[@name="Microsoft.Mbam.RecoveryAndHardwareDataStore.ConnectionString"]' -PSPath "IIS:\sites\Microsoft BitLocker Administration and Monitoring\MBAMRecoveryAndHardwareService" -Name "connectionString" -Value "Data Source=$SERVERNAME$\$SQLINSTANCENAME$;Initial Catalog=MBAM Recovery and Hardware;Integrated Security=SSPI;"`

    **Note**  
    Replace the value from the preceding example with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the server name and instance where the Recovery and Hardware database is.

     

**To resume all instances of the MBAM Administration and Monitoring website**

1.  On each of the servers that run the MBAM Administration and Monitoring feature, use the Internet Information Services (IIS) Manager console to Start the MBAM website, which is named **Microsoft BitLocker Administration and Monitoring**.

2.  To automate this procedure, you can use a command that is similar to the following one, by using Windows PowerShell:

    `PS C:\> Start-Website “Microsoft BitLocker Administration and Monitoring”`

## To move the Compliance Status Database feature


If you choose to move the MBAM Compliance Status Database feature from one computer to another, such as from Server A to Server B, you should use the following procedure:

1.  Stop all instances of the MBAM Administration and Monitoring website

2.  Run MBAM setup on Server B

3.  Backup the Database on Server A

4.  Move the Database from Server A to B

5.  Restore the Database on Server B

6.  Configure Access to the Database on Server B

7.  Update database connection data on MBAM Administration and Monitoring servers

8.  Resume all instances of the MBAM Administration and Monitoring website

**To stop all instances of the MBAM Administration and Monitoring website**

1.  On each of the servers that run the MBAM Administration and Monitoring feature, use the Internet Information Services (IIS) Manager console to Stop the MBAM website, which is named **Microsoft BitLocker Administration and Monitoring**.

2.  To automate this procedure, you can use a command that is similar to the following one,by using Windows PowerShell:

    `PS C:\> Stop-Website “Microsoft BitLocker Administration and Monitoring”`

    **Note**  
    To execute this command, you must add the IIS Module for PowerShell to current instance of PowerShell. In addition, you must update the PowerShell execution policy to enable the execution of scripts.

     

**To run MBAM Setup on Server B**

1.  Run MBAM Setup on Server B and select the Compliance Status Database feature for installation.

2.  To automate this procedure, you can use a command that is similar to the following one, by using Windows PowerShell:

    `PS C:\> MbamSetup.exe /qn I_ACCEPT_ENDUSER_LICENSE_AGREEMENT=1 AddLocal= ReportsDatabase ADMINANDMON_MACHINENAMES=$DOMAIN$\$SERVERNAME$ COMPLIDB_SQLINSTANCE=$SERVERNAME$\$SQLINSTANCENAME$ REPORTS_USERACCOUNT=$DOMAIN$\$USERNAME$`

    **Note**  
    Replace the values from the preceding example with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the server name and instance where the Compliance Status Database will be moved to.

    -   $DOMAIN$\\$SERVERNAME$ - Enter the domain names and server names of each MBAM Application and Monitoring Server that will contact the Compliance Status Database. If there are multiple domain names and server names, use a semicolon to separate each one of them in the list. For example, $DOMAIN\\SERVERNAME$;$DOMAIN\\$SERVERNAME$$. Each server name must be followed by a **$** as shown in the example. For example, MyDomain\\MyServerName1$, MyDomain\\MyServerName2$.

    -   $DOMAIN$\\$USERNAME$ - Enter the domain and user name that will be used by the Compliance and Audit reports feature to connect to the Compliance Status Database.

     

**To back up the Compliance Database on Server A**

1.  To back up the Compliance Database on Server A, use SQL Server Management Studio and the Task named **Back Up…**. By default, the database name is **MBAM Compliance Status Database**.

2.  To automate this procedure, create a SQL file (.sql) that contains the following-SQL script:

    `-- Modify the MBAM Compliance Status Database to use the full recovery model.`

    `USE master;`

    `GO`

    `ALTER DATABASE "MBAM Compliance Status"`

    `   SET RECOVERY FULL;`

    `GO`

    `-- Create MBAM Compliance Status Data logical backup devices.`

    `USE master`

    `GO`

    `EXEC sp_addumpdevice 'disk', 'MBAM Compliance Status Database Data Device',`

    `'Z: \MBAM Compliance Status Database Data.bak';`

    `GO`

    -- Back up the full MBAM Recovery and Hardware database.

    `BACKUP DATABASE [MBAM Compliance Status] TO [MBAM Compliance Status Database Data Device];`

    `GO`

3.  Run the SQL file with a command that is similar to the following one, by using the SQL Server PowerShell:

    `PS C:\> Invoke-Sqlcmd -InputFile "Z:\BackupMBAMComplianceStatusDatabaseScript.sql" –ServerInstance $SERVERNAME$\$SQLINSTANCENAME$`

    **Note**  
    Replace the value from the preceding example with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the server name and the instance from where the Compliance Status database will be backed up.

     

**To move the Database from Server A to B**

1.  Move the following files from Server A to Server B, by using Windows Explorer:

    -   MBAM Compliance Status Database Data.bak

2.  To automate this procedure, you can use a command that is similar to the following using Windows PowerShell:

    `PS C:\> Copy-Item “Z:\MBAM Compliance Status Database Data.bak” \\$SERVERNAME$\$DESTINATIONSHARE$`

    **Note**  
    Replace the value from the preceding example with those that match your environment:

    -   $SERVERNAME$ - Enter the server name where the files will be copied to.

    -   $DESTINATIONSHARE$ - Enter the name of share and path where the files will be copied to.

     

**To restore the Database on Server B**

1.  Restore the Compliance Status database on Server B by using SQL Server Management Studio and the Task named **Restore Database…**.

2.  Once the task is executed, select the database backup file, by selecting the From Device option, and then use the Add command to choose the MBAM Compliance Status Database Data.bak file. Click OK to complete the restoration process.

3.  To automate this procedure, create a SQL file (.sql) that contains the following-SQL script:

    `-- Create MBAM Compliance Status Database Data logical backup devices. `

    `Use master`

    `GO`

    -- Restore the MBAM Compliance Status database data files.

    `RESTORE DATABASE [MBAM Compliance Status Database]`

    `   FROM DISK = 'C:\test\MBAM Compliance Status Database Data.bak'`

    `   WITH REPLACE`

4.  Run the SQL File with a command that is similar to the following one, by using the SQL Server PowerShell:

    `PS C:\> Invoke-Sqlcmd -InputFile "Z:\RestoreMBAMComplianceStatusDatabaseScript.sql" -ServerInstance $SERVERNAME$\$SQLINSTANCENAME$`

    **Note**  
    Replace the value from the preceding example with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the server name and instance where the Compliance Status Database will be restored to.

     

**To configure the Access to the Database on Server B**

1.  On Server B use the Local user and Groups snap-in from Server Manager to add the machine accounts from each server that runs the MBAM Administration and Monitoring feature to the Local Group named **MBAM Compliance Status DB Access**.

2.  To automate this procedure, you can use a command that is similar to the following one, by using Windows PowerShell on Server B:

    `PS C:\> net localgroup "MBAM Compliance Auditing DB Access" $DOMAIN$\$SERVERNAME$$  /add`

    `PS C:\> net localgroup "MBAM Compliance Auditing DB Access" $DOMAIN$\$REPORTSUSERNAME$  /add`

    **Note**  
    Replace the value from the preceding example with the applicable values for your environment:

    -   $DOMAIN$\\$SERVERNAME$$ - Enter the domain and machine name of the MBAM Administration and Monitoring Server. The server name must be followed by a **$**.For example, MyDomain\\MyServerName1$.

    -   $DOMAIN$\\$REPORTSUSERNAME$ - Enter the user account name that was used to configure the data source for the Compliance and Audit reports

     

    For each Administration and Monitoring Server that will access the database of your environment, you must run the command that will add the servers to the MBAM Compliance Auditing DB Access local group.

**To update the database connection data on MBAM Administration and Monitoring servers**

1.  On each of the servers that run the MBAM Administration and Monitoring feature, use the Internet Information Services (IIS) Manager console to update the Connection String information for the following Applications, which are hosted in the Microsoft BitLocker Administration and Monitoring website:

    -   MBAMAdministrationService

    -   MBAMComplianceStatusService

2.  Select each application and use the **Configuration Editor** feature, which is located under the **Management** section of the **Feature View**.

3.  Select the **configurationStrings** option from the Section list control.

4.  Select the row named **(Collection)**, and open the Collection Editor by selecting the button on the right side of the row.

5.  In the **Collection Editor**, select the row named **ComplianceStatusConnectionString**, when you update the configuration for the MBAMAdministrationService application, or the row named **Microsoft.Windows.Mdop.BitLockerManagement.StatusReportDataStore.ConnectionString**, when you update the configuration for the MBAMComplianceStatusService.

6.  Update the **Data Source=** value for the **configurationStrings** property to list the server name and the instance name. For example, $SERVERNAME$\\$SQLINSTANCENAME, to which the Recovery and Hardware Database was moved.

7.  To automate this procedure, you can use Windows PowerShell to enter a command that is similar to the following one on each Administration and Monitoring Server:

    `PS C:\> Set-WebConfigurationProperty '/connectionStrings/add[@name="ComplianceStatusConnectionString"]' -PSPath "IIS:\sites\Microsoft BitLocker Administration and Monitoring\MBAMAdministrationService" -Name "connectionString" -Value "Data Source=$SERVERNAME$\$SQLINSTANCENAME$;Initial Catalog=MBAM Compliance Status;Integrated Security=SSPI;"`

    `PS C:\> Set-WebConfigurationProperty '/connectionStrings/add[@name="Microsoft.Windows.Mdop.BitLockerManagement.StatusReportDataStore.ConnectionString"]' -PSPath "IIS:\sites\Microsoft BitLocker Administration and Monitoring\MBAMComplianceStatusService" -Name "connectionString" -Value "Data Source=$SERVERNAME$\$SQLINSTANCENAME;Initial Catalog=MBAM Compliance Status;Integrated Security=SSPI;"`

    **Note**  
    Replace the value from the preceding example with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the server name and instance name where the Recovery and Hardware Database is located.

     

**To resume all instances of the MBAM Administration and Monitoring website**

1.  On each of the servers running the MBAM Administration and Monitoring feature, use the Internet Information Services (IIS) Manager console to start the MBAM web site named **Microsoft BitLocker Administration and Monitoring**.

2.  To automate this procedure, you can use Windows PowerShell to enter a command that is similar to the following:

    **PS C:\\&gt; Start-Website “Microsoft BitLocker Administration and Monitoring”**

## To moving the Compliance and Audit Reports


If you choose to move the MBAM Compliance and Audit Reports from one computer to another (specifically, if you move feature from Server A to Server B), you should use the following procedure and steps:

1.  Run MBAM setup on Server B

2.  Configure Access to the Compliance and Audit Reports on Server B

3.  Stop all instances of the MBAM Administration and Monitoring website

4.  Update the reports connection data on MBAM Administration and Monitoring servers

5.  Resume all instances of the MBAM Administration and Monitoring website

**To run MBAM setup on Server B**

1.  Run MBAM setup on Server B and only select the Compliance and Audit feature for installation.

2.  To automate this procedure, you can use a command that is similar to the following, by using Windows PowerShell:

    `PS C:\> MbamSetup.exe /qn I_ACCEPT_ENDUSER_LICENSE_AGREEMENT=1 AddLocal=Reports COMPLIDB_SQLINSTANCE=$SERVERNAME$\$SQLINSTANCENAME$ REPORTS_USERACCOUNTPW=$PASSWORD$`

    **Note**  
    Replace the values from the preceding example with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - Enter the server name and instance where the Compliance Status Database is located.

    -   $DOMAIN$\\$USERNAME$ - Enter the domain name and user name that will be used by the Compliance and Audit reports feature to connect to the Compliance Status Database.

    -   $PASSWORD$ - Enter the password of the user account that will be used to connect to the Compliance Status Database.

     

**To configure the access to the Compliance and Audit Reports on Server B**

1.  On Server B, use the Local user and Groups snap-in from Server Manager to add the user accounts that will have access to the Compliance and Audit Reports. Add the user accounts to the local group named “MBAM Report Users”.

2.  To automate this procedure, you can use a command that is similar to the following, by using Windows PowerShell on Server B.

    `PS C:\> net localgroup "MBAM Report Users" $DOMAIN$\$REPORTSUSERNAME$  /add`

    **Note**  
    Replace the following value from the preceding example with the applicable values for your environment:

    -   $DOMAIN$\\$REPORTSUSERNAME$ - Enter the user account name that was used to configure the data source for the Compliance and Audit reports

     

    The command to add the users to the MBAM Report Users local group must be run for each user that will be accessing the reports in your environment.

**To stop all instances of the MBAM Administration and Monitoring website**

1.  On each of the servers that run the MBAM Administration and Monitoring Feature use the Internet Information Services (IIS) Manager console to Stop the MBAM website named **Microsoft BitLocker Administration and Monitoring**.

2.  To automate this procedure, you can use a command that is similar to the following one, by using Windows PowerShell:

    `PS C:\> Stop-Website “Microsoft BitLocker Administration and Monitoring”`

**To update the Database Connection Data on MBAM Administration and Monitoring Servers**

1.  On each of the servers that run the MBAM Administration and Monitoring Feature, use the Internet Information Services (IIS) Manager console to update the Compliance Reports URL.

2.  Select the **Microsoft BitLocker Administration and Monitoring** website and use the **Configuration Editor** feature which can be found under the **Management** section of the **Feature View**.

3.  Select the **appSettings** option from the Section list control.

4.  From here, select the row named **(Collection)**, and open the **Collection Editor** by selecting the button on the right side of the row.

5.  In the **Collection Editor**, select the row named “Microsoft.Mbam.Reports.Url”.

6.  Update the value for Microsoft.Mbam.Reports.Url to reflect the server name for Server B. If the Compliance and Audit reports feature was installed on a named SQL Reporting Services instance, make sure that you add or update the name of the instance to the URL. For example, http://$SERVERNAME$/ReportServer\_$SQLSRSINSTANCENAME$/Pages....

7.  To automate this procedure, you can use Windows PowerShell to enter a command that is similar to the following one on each Administration and Monitoring Server:

    `PS C:\> Set-WebConfigurationProperty '/appSettings/add[@key="Microsoft.Mbam.Reports.Url"]' -PSPath "IIS:\sites\Microsoft BitLocker Administration and Monitoring" -Name "Value" -Value “http://$SERVERNAME$/ReportServer_$SRSINSTANCENAME$/Pages/ReportViewer.aspx?/Malta+Compliance+Reports/”`

    **Note**  
    Replace the value from the preceding example with those that match your environment:

    -   $SERVERNAME$ - Enter the name of the server to which the Compliance and Audit Reports were installed.

    -   $SRSINSTANCENAME$ - Enter the name of the SQL Reporting Services instance to which the Compliance and Audit Reports were installed.

     

**To resume all instances of the MBAM Administration and Monitoring website**

1.  On each of the servers that run the MBAM Administration and Monitoring feature, use the Internet Information Services (IIS) Manager console to Start the MBAM web site named **Microsoft BitLocker Administration and Monitoring**.

2.  To automate this procedure, you can use a command that is similar to the following one, by using Windows PowerShell:

    `PS C:\> Start-Website “Microsoft BitLocker Administration and Monitoring”`

    **Note**  
    To execute this command, the IIS Module for PowerShell must be added to the current instance of PowerShell. In addition, you must update the PowerShell execution policy to enable execution of scripts.

     

## To move the Administration and Monitoring feature


If you choose to move the MBAM Administration and Monitoring Reports feature from one computer to another, (if you move feature from Server A to Server B), you should use the following procedure. The process includes the following steps:

1.  Run MBAM setup on Server B

2.  Configure Access to the Database on Server B

**To run MBAM setup on Server B**

1.  Run MBAM setup on Server B and only select the Administration feature for installation.

2.  To automate this procedure, you can use a command that is similar to the following one, by using Windows PowerShell:

    `PS C:\> MbamSetup.exe /qn I_ACCEPT_ENDUSER_LICENSE_AGREEMENT=1 AddLocal=AdministrationMonitoringServer,HardwareCompatibility COMPLIDB_SQLINSTANCE=$SERVERNAME$\$SQLINSTANCENAME$ RECOVERYANDHWDB_SQLINSTANCE=$SERVERNAME$\$SQLINSTANCENAME$ SRS_REPORTSITEURL=$REPORTSSERVERURL$`

    **Note**  
    Replace the values from the preceding example with those that match your environment:

    -   $SERVERNAME$\\$SQLINSTANCENAME$ - For the COMPLIDB\_SQLINSTANCE parameter, input the server name and instance where the Compliance Status Database is located. For the RECOVERYANDHWDB\_SQLINSTANCE parameter, input the server name and instance where the Recovery and Hardware Database is located.

    -   $DOMAIN$\\$USERNAME$ - Enter the domain and user name that will be used by the Compliance and Audit reports feature to connect to the Compliance Status Database.

    -   $ REPORTSSERVERURL$ - Enter the URL for the Home location of the SQL Reporting Service website. If the reports were installed to a default SRS instance the URL format will formatted “http:// $SERVERNAME$/ReportServer”. If the reports were installed to a default SRS instance, the URL format will be formatted to “http://$SERVERNAME$/ReportServer\_$SQLINSTANCENAME$”.

     

**To configure the Access to the Databases**

1.  On server or servers where the Recovery and Hardware, and Compliance and Audit databases are deployed, use the Local user and Groups snap-in from Server Manager to add the machine accounts from each server that run the MBAM Administration and Monitoring feature to the Local Groups named “MBAM Recovery and Hardware DB Access” (Recovery and Hardware DB Server) and “MBAM Compliance Status DB Access” (Compliance and Audit DB Server).

2.  To automate this procedure, you can use a command that is similar to the following one, by using Windows PowerShell on the server where the Compliance and Audit databases were deployed.

    `PS C:\> net localgroup "MBAM Compliance Auditing DB Access" $DOMAIN$\$SERVERNAME$$  /add`

    `PS C:\> net localgroup "MBAM Compliance Auditing DB Access" $DOMAIN$\$REPORTSUSERNAME$  /add`

3.  On the server where the Recovery and Hardware databases were deployed, run a command that is similar to the following one, by using Windows PowerShell.

    `PS C:\> net localgroup "MBAM Recovery and Hardware DB Access" $DOMAIN$\$SERVERNAME$$  /add`

    **Note**  
    Replace the value from the preceding example with the applicable values for your environment:

    -   $DOMAIN$\\$SERVERNAME$$ - Enter the domain and machine name of the MBAM Administration and Monitoring Server. The server name must be followed by a **$**. For example, MyDomain\\MyServerName1$)

    -   $DOMAIN$\\$REPORTSUSERNAME$ - Enter the user account name that was used to configure the data source for the Compliance and Audit reports.

     

    The commands listed for adding the server computer accounts to the MBAM local groups must be run for each Administration and Monitoring Server that will be accessing the databases in your environment.

## Related topics


[Administering MBAM 1.0 Features](administering-mbam-10-features.md)

 

 





