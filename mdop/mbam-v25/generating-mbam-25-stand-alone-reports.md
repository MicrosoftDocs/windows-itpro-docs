---
title: Generating MBAM 2.5 Stand-alone Reports
description: Generating MBAM 2.5 Stand-alone Reports
author: dansimp
ms.assetid: 0ec623ff-5155-4906-aef2-20cdc0f84667
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 11/01/2016
---


# Generating MBAM 2.5 Stand-alone Reports


When you configure Microsoft BitLocker Administration and Monitoring (MBAM) with the Stand-alone topology, you can generate reports to monitor BitLocker drive encryption usage and compliance. This topic contains the following procedures:

-   [To open the Administration and Monitoring Website](#bkmk-openadmin)

-   [To generate an Enterprise Compliance Report](#bkmk-enterprise)

-   [To generate a Computer Compliance Report](#bkmk-computercomp)

-   [To generate a Recovery Key Audit Report](#bkmk-recoverykey)

For descriptions of the Stand-alone reports, see [Understanding MBAM 2.5 Stand-alone Reports](understanding-mbam-25-stand-alone-reports.md).

**Note**  
To run the reports, you must be a member of the **MBAM Report Users** group, which you configure in Active Directory Domain Services. For more information, see [Planning for MBAM 2.5 Groups and Accounts](planning-for-mbam-25-groups-and-accounts.md).

 

<a href="" id="bkmk-openadmin"></a>**To open the Administration and Monitoring Website**

1.  Open a web browser and navigate to the Administration and Monitoring Website. The default URL for the Administration and Monitoring Website is:

    *http(s)://&lt;MBAMAdministrationServerName&gt;:&lt;port&gt;/Helpdesk*

2.  In the left pane, click **Reports**. From the top menu bar, select the report you want to run.

    MBAM client data is retained in the Compliance and Audit Database for historical reference in case a computer is lost or stolen. When running enterprise reports, we recommend that you use appropriate start and end dates to scope the time frames for the reports from one to two weeks to increase reporting data accuracy.

    After you generate a report, you can save the results in different formats, such as HTML, Microsoft Word, and Microsoft Excel.

    **Note**  
    Configure SQL Server Reporting Services (SSRS) to use Secure Sockets Layer (SSL) before configuring the Administration and Monitoring Website. If, for any reason, SSRS is not configured to use SSL, the URL for the Reports will be set to HTTP instead of to HTTPS when you configure the Administration and Monitoring Website. If you then go to the Administration and Monitoring Website and select a report, the following message displays: “Only Secure Content is Displayed.” To show the report, click **Show All Content**.

     

<a href="" id="bkmk-enterprise"></a>**To generate an Enterprise Compliance Report**

1.  From the Administration and Monitoring Website, select the **Reports** node from the left navigation pane, select **Enterprise Compliance Report**, and select the filters that you want to use. The available filters for the Enterprise Compliance Report are:

    -   **Compliance Status**. Use this filter to specify the compliance status types of the report (for example, Compliant or Noncompliant).

    -   **Error State**. Use this filter to specify the error state types of the report (for example, No Error or Error).

2.  Click **View Report** to display the selected report.

3.  Select a computer name to view information about the computer in the Computer Compliance Report.

4.  Select the plus sign (+) next to the computer name to view information about the volumes on the computer.

<a href="" id="bkmk-computercomp"></a>**To generate a Computer Compliance Report**

1.  From the Administration and Monitoring Website, select the **Report** node from the left navigation pane, and then select **Computer Compliance Report**. Use the Computer Compliance Report to search for **User name** or **Computer name**.

2.  Click **View Report** to view the Computer Compliance Report.

3.  Select a computer name to display more information about the computer in the Computer Compliance Report.

4.  Select the plus sign (+) next to the computer name to view information about the volumes on the computer.

    **Note**  
    An MBAM client computer is considered compliant if the computer matches or exceeds the requirements of the MBAM Group Policy settings.

<a href="" id="bkmk-recoverykey"></a>**To generate a Recovery Key Audit Report**

1.  From the Administration and Monitoring Website, select the **Report** node in the left navigation pane, and then select **Recovery Audit Report**. Select the filters for your Recovery Key Audit Report. The available filters for recovery key audits are as follows:

    -   **Helpdesk User**. This filter enables users to specify the user name of the requester. The requester is the person in the Help Desk who accessed the key on behalf of an end user.

    -   **End User**. This filter enables users to specify the user name of the requestee. The requestee is the end user who called the Help Desk to obtain a recovery key.

    -   **Request Result**. This filter enables users to specify the request result types (for example, Success or Failed) that they want to base the report on. For example, users may want to view failed key access attempts.

    -   **Key Type**. This filter enables users to specify the key type (for example, Recovery Key Password or TPM Password Hash) that they want to base the report on.

    -   **Start Date**. This filter is used to define the Start Date part of the date range that the user wants to report on.

    -   **End Date**. This filter is used to define the End Date part of the date range that the users want to report on.

2.  Click **View Report** to view the report.



## Related topics


[Monitoring and Reporting BitLocker Compliance with MBAM 2.5](monitoring-and-reporting-bitlocker-compliance-with-mbam-25.md)

[Understanding MBAM 2.5 Stand-alone Reports](understanding-mbam-25-stand-alone-reports.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





