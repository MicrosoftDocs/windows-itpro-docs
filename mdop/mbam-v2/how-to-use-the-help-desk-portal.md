---
title: How to Use the Help Desk Portal
description: How to Use the Help Desk Portal
author: dansimp
ms.assetid: c27f7737-10c8-4164-9de8-57987292c89c
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Use the Help Desk Portal


The MBAM Administration and Monitoring website, also referred to as the Help Desk Portal, is an administrative interface to BitLocker drive encryption that is installed as part of the Microsoft BitLocker Administration and Monitoring (MBAM) server infrastructure. The following sections describe how you can use this website to review reports, recover end users’ drives, and manage end users’ TPMs.

## <a href="" id="bkmk-reports"></a>Reports


MBAM collects information from Active Directory and client computers, which enables you to run different reports to monitor BitLocker usage and compliance. Using the **Reports** section of the Administration and Monitoring website, you can generate reports on enterprise compliance, individual computers, and key recovery activity. For a description of each report, see [Understanding MBAM Reports](understanding-mbam-reports-mbam-2.md).

**To access reports**

1.  Open a web browser and navigate to the MBAM Administration and Monitoring website.

2.  Select **Reports** in the left pane.

3.  From the top menu bar, select the report type you want to generate. To save reports, click the **Export** button on the Reports menu bar.

For additional information about how to run MBAM reports, see [How to Generate MBAM Reports](how-to-generate-mbam-reports-mbam-2.md).

## <a href="" id="bkmk-drirec"></a>Drive Recovery


The **Drive Recovery** feature of the Administration and Monitoring website allows users with specific administrator roles (for example, Help Desk Users) to access recovery key data that has been collected by the MBAM Client. This data can be used to access a BitLocker-protected drive when BitLocker goes into recovery mode. For instructions on how to recover a drive that is in recovery mode, see [How to Recover a Drive in Recovery Mode](how-to-recover-a-drive-in-recovery-mode-mbam-2.md).

You can also recover drives that have been moved or that are corrupted:

-   [How to Recover a Moved Drive](how-to-recover-a-moved-drive-mbam-2.md)

-   [How to Recover a Corrupted Drive](how-to-recover-a-corrupted-drive-mbam-2.md)

For additional information about how to recover a BitLocker-protected drive, see [Performing BitLocker Management with MBAM](performing-bitlocker-management-with-mbam-mbam-2.md).

## <a href="" id="bkmk-manatpm"></a>Manage TPM


The Manage TPM feature of the Administration and Monitoring website gives users with certain administrator roles (for example, “MBAM Helpdesk Users”) access to TPM data that has been collected by the MBAM Client. In a TPM lockout, an administrator can use the Administration and Monitoring website to retrieve the necessary password file to unlock the TPM. For instructions on how to reset a TPM after a TPM lockout, see [How to Reset a TPM Lockout](how-to-reset-a-tpm-lockout-mbam-2.md).

## <a href="" id="bkmk-helpdesk"></a> MBAM Help Desk Tasks


You can use the Administration and Monitoring website for many administrative tasks, such as managing BitLocker-protected hardware, recovering drives, and running reports. By default, the URL for the Administration and Monitoring website is http://&lt;*MBAMAdministrationServername*&gt;, although you can customize it during the installation process.

**Note**  
To access the various features offered by the Administration and Monitoring website, you must have the appropriate roles associated with your user account. For more information about understanding user roles, see [How to Manage MBAM Administrator Roles](how-to-manage-mbam-administrator-roles-mbam-2.md).

 

Use the following links to find information about the tasks that you can perform by using the Administration and Monitoring website:

-   [How to Reset a TPM Lockout](how-to-reset-a-tpm-lockout-mbam-2.md)

-   [How to Recover a Drive in Recovery Mode](how-to-recover-a-drive-in-recovery-mode-mbam-2.md)

-   [How to Recover a Moved Drive](how-to-recover-a-moved-drive-mbam-2.md)

-   [How to Recover a Corrupted Drive](how-to-recover-a-corrupted-drive-mbam-2.md)

-   [How to Determine BitLocker Encryption State of Lost Computers](how-to-determine-bitlocker-encryption-state-of-lost-computers-mbam-2.md)

 

 





