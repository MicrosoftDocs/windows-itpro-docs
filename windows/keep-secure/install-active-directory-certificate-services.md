---
title: Install Active Directory Certificate Services (Windows 10)
description: Install Active Directory Certificate Services
ms.assetid: 6f2ed8ac-b8a6-4819-9c21-be91dedfd619
author: brianlic-msft
---

# Install Active Directory Certificate Services


To use certificates in a server isolation or domain isolation design, you must first set up the infrastructure to deploy the certificates. This is called a public key infrastructure (PKI). The services required for a PKI are available in Windows Server 2012 in the form of the Active Directory Certificate Services (AD CS) role.

**Caution**  
Creation of a full PKI for an enterprise environment with all of the appropriate security considerations included in the design is beyond the scope of this guide. The following procedure shows you only the basics of installing an issuing certificate server; it is appropriate for a test lab environment only. For more information about deploying AD CS in a production environment, see [Active Directory Certificate Services Overview](e37b2335-0796-449f-aaf4-0520e508f47d) in the Windows Server 2012 Technical Library (http://technet.microsoft.com/library/hh831740.aspx).

 

To perform this procedure, the computer on which you are installing AD CS must be joined to an Active Directory domain.

**Administrative credentials**

To complete this procedure, you must be a member of both the Domain Admins group in the root domain of your forest, and a member of the Enterprise Admins group.

**To install AD CS**

1.  Log on as a member of both the Enterprise Admins group and the root domain's Domain Admins group.

2.  Click **Server Manager** in the taskbar. The Server Manager console opens. Click **Add roles and features**.

3.  On the **Before you begin** page, click **Next**.

4.  On the **Select installation type** page, ensure **Role-based or feature-based installation** is selected and click **Next**.

5.  On the **Select destination server** page, ensure your server is selected and click **Next**.

6.  On the **Select Server Roles** page, select **Active Directory Certificate Services**, and then click **Add Features** and then click **Next**.

7.  On the **Select features** page, click **Next**.

8.  On the **Active Directory Certificate Services** page, click **Next**.

9.  On the **Select role services** page, ensure **Certification Authority** is selected and click **Next**.

10. On the **Confirm installation selections** page, click **Install**.

    After installation completes, click close.

11. On the Server Manager Dashboard, click the Notifications flag icon and then click **Configure Active Directory Certificate Services on the destination server**.

12. On the **Credentials** page, ensure the default user account is a member of both the local Administrators group and the Enterprise Admins group and then click **Next**.

13. On the **Role Services** page, click **Certification Authority**, and click **Next**.

14. On the **Setup Type** page, ensure **Enterprise CA** is selected, and click **Next**.

15. On the **CA Type** page, ensure **Root CA** is selected, and then click **Next**.

16. On the **Private Key** page, ensure **Create a new private key** is selected, and then click **Next**.

17. On the **Cryptography for CA** page, keep the default settings for CSP (**RSA\#Microsoft Software Key Storage Provider**) and hash algorithm (**sha1**), and determine the best key character length for your deployment. Large key character lengths provide optimal security, but they can affect server performance. It is recommended that you keep the default setting of 2048 or, if appropriate for your deployment, reduce key character length to 1024. Click **Next**.

18. On the **CA Name** page, keep the suggested common name for the CA or change the name according to your requirements, and then click **Next**.

19. On the **Validity Period** page, in **Specify the validity period**, type the number and select a time value (Years, Months, Weeks, or Days). The default setting of five years is recommended. Click **Next**.

20. On the **CA Database** page, in **Certificate database location** and **Certificate database log location**, specify the folder location for these items. If you specify locations other than the default locations, make sure that the folders are secured with access control lists (ACLs) that prevent unauthorized users or computers from accessing the CA database and log files.

21. Click **Next**, click **Configure**, and then click **Close**.

 

 





