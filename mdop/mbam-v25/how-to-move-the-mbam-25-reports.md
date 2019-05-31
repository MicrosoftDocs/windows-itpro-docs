---
title: How to Move the MBAM 2.5 Reports
description: How to Move the MBAM 2.5 Reports
author: dansimp
ms.assetid: c8223656-ca9d-41c8-94a3-64d07a6b99e9
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Move the MBAM 2.5 Reports


Use these procedures to move the Reports feature from one computer to another, that is, to move the Reports feature from Server A to Server B.

The high-level steps for moving the Reports feature are:

1.  Stop all instances of the MBAM Administration and Monitoring Website.

2.  Install the MBAM 2.5 Server software on Server B and configure the Reports feature on Server B.

3.  Update the reports connection data on the MBAM Administration and Monitoring servers.

4.  Resume the instance of the MBAM Administration and Monitoring Website.

**Note**  
To run the example Windows PowerShell scripts in this topic, you must update the Windows PowerShell execution policy to enable scripts to be run. See [Running Windows PowerShell Scripts](https://technet.microsoft.com/library/ee176949.aspx) for instructions.

 

**Stop the MBAM Administration and Monitoring Website**

-   On the server that is running the Administration and Monitoring Website, use the Internet Information Services (IIS) Manager console to stop the Administration and Monitoring Website.

    To automate this procedure, you can use Windows PowerShell to enter a command that is similar to the following:

    ``` syntax
    PS C:\> Stop-Website "Microsoft BitLocker Administration and Monitoring"
    ```

**Install MBAM Server software and run the MBAM Server Configuration wizard on Server B**

1.  Install the MBAM Server software on Server B. For instructions, see [Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md).

2.  On Server B, start the MBAM Server Configuration wizard, click **Add New Features**, and then select only the **Reports** feature.

    Alternatively, you can use the **Enable-MbamReport** Windows PowerShell cmdlet to configure the Reports.

    For instructions on how to configure the Reports, see [How to Configure the MBAM 2.5 Reports](how-to-configure-the-mbam-25-reports.md).

**Update the reports connection data on the Administration and Monitoring Server**

1.  On the server that is running the Reports feature, use the Internet Information Services (IIS) Manager console to update the Reports URL.

2.  Expand **Microsoft BitLocker Administration and Monitoring**, and then select the **HelpDesk** node.

3.  In the **Management** section of the **Features View**, select **Configuration Editor**.

4.  In the **Section** field, select **appSettings**.

5.  Select the **Collection** row, and then click the "ellipses" button **(…)** at the far right of the pane to open the **Collection Editor**.

6.  In the **Collection Editor**, select the row that contains **Microsoft.Mbam.Reports.Url**, and update the value for **Microsoft.Mbam.Reports.Url** to reflect the server name for Server B.

    If you previously configured the Reports feature on a named instance of SQL Server Reporting Services, add or update the name of the instance to the URL, for example:

    `http://$SERVERNAME$/ReportServer_$SQLSRSINSTANCENAME$/Pages....)`

7.  To automate this procedure, you can use Windows PowerShell to run a command on the Administration and Monitoring Server that is similar to the following code example.

    ``` syntax
    PS C:\> Set-WebConfigurationProperty '/appSettings/add[@key="Microsoft.Mbam.Reports.Url"]' -PSPath "IIS:\\sites\Microsoft Bitlocker Administration and Monitoring\HelpDesk" -Name "Value" -Value "http://$SERVERNAME$/ReportServer[_$SRSINSTANCENAME$]/Pages/ReportViewer.aspx?/Microsoft+BitLocker+Administration+and+Monitoring/"
    ```

    Using the descriptions in the following table, replace the values in the code example with values that match your environment.

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
    <td align="left"><p>Name of the server to which the Reports were moved.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>$SRSINSTANCENAME$</p></td>
    <td align="left"><p>Name of the instance of SQL Server Reporting Services to which the Reports were moved.</p></td>
    </tr>
    </tbody>
    </table>

     

**Resume the instance of the Administration and Monitoring Website**

1.  On the server that is running the Administration and Monitoring Website, use the Internet Information Services (IIS) Manager console to start the Administration and Monitoring Website.

2.  To automate this procedure, you can use Windows PowerShell to run a command that is similar to the following:

    ``` syntax
    PS C:\> Start-Website "Microsoft BitLocker Administration and Monitoring"
    ```

    **Note**  
    To run this command, you must add the IIS module for Windows PowerShell to the current instance of Windows PowerShell.

     



## Related topics


[How to Configure the MBAM 2.5 Reports](how-to-configure-the-mbam-25-reports.md)

[Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md)

[Moving MBAM 2.5 Features to Another Server](moving-mbam-25-features-to-another-server.md)

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring).
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).
 





