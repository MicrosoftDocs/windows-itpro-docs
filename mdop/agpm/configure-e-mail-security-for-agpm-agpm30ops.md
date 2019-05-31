---
title: Configure E-Mail Security for AGPM
description: Configure E-Mail Security for AGPM
author: mjcaparas
ms.assetid: 4850ed8e-a1c6-43f0-95c5-853aa66a94ae
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Configure E-Mail Security for AGPM


By default, e-mail notifications sent because of actions in Advanced Group Policy Management (AGPM) are not encrypted and are sent through SMTP port 25. However, you can configure e-mail security for AGPM by using registry settings to specify whether to use Secure Sockets Layer (SSL) encryption and which SMTP port to use.

By encrypting AGPM e-mail notifications, you can better protect those that could reveal sensitive information about your organization’s security. Encrypting e-mail notifications is recommended when they are being relayed through remote mail servers, and may be required by some compliance regulations.

**Caution**  
Incorrectly editing the registry may severely damage your system. Before making changes to the registry, you should back up any valued data on the computer.

 

A user account that has the AGPM Administrator (Full Control) role, the user account of the Approver who created the Group Policy Object (GPO) used in these procedures, or a user account that has the necessary permissions in AGPM is required to complete these procedures. Review the details in "Additional considerations" in this topic.

**To configure e-mail security for AGPM by using Group Policy preferences**

1.  In the **Group Policy Management Console** tree, edit a GPO that is applied to all AGPM Servers for which you want to configure e-mail security. (For more information, see [Editing a GPO](editing-a-gpo-agpm30ops.md).)

2.  In the **Group Policy Management Editor** window, expand the **Computer Configuration**, **Preferences**, **Windows Settings**, and **Registry** folders.

3.  In the console tree, right-click **Registry**, point to **New**, click **Collection Item**, and type **AGPM e-mail security**.

4.  Create a Registry preference item to turn on encryption:

    1.  In the console tree, right-click **AGPM e-mail security**, point to **New**, and then click **Registry Item**.

    2.  In the **New Registry Properties** dialog box, select the **Update** action.

    3.  For **Hive**, select **HKEY\_LOCAL\_MACHINE**.

    4.  For **Key Path**, type **SOFTWARE\\Microsoft\\AGPM**.

    5.  For **Value name**, type **EncryptSmtp**.

    6.  For **Value type**, select **REG\_DWORD**.

    7.  For **Base**, select **Decimal**, and for **Value data**, type **1** to use SSL encryption, or **0** to let e-mail to be sent without encryption. By default, e-mail is sent without encryption.

    8.  Click **OK**.

5.  Create a Registry preference item to specify the SMTP port:

    1.  In the console tree, right-click **AGPM E-mail security**, point to **New**, and then click **Registry Item**.

    2.  In the **New Registry Properties** dialog box, select the **Update** action.

    3.  For **Hive**, select **HKEY\_LOCAL\_MACHINE**.

    4.  For **Key Path** dialog box, type **SOFTWARE\\Microsoft\\AGPM**.

    5.  For **Value name**, type **SmtpPort**.

    6.  For **Value type**, select **REG\_DWORD**.

    7.  For **Base**, select **Decimal**, and for **Value data**, type a port number for the SMTP port. By default, the SMTP port is port 25 if encryption is not enabled or port 587 if SSL encryption is enabled.

    8.  Click **OK**.

6.  Close the **Group Policy Management Editor** window, and then check in and deploy the GPO. For more information, see [Deploy a GPO](deploy-a-gpo-agpm30ops.md).

### Additional considerations

-   You must be able to edit and deploy a GPO to configure registry settings by using Group Policy Preferences. See [Editing a GPO](editing-a-gpo-agpm30ops.md) and [Deploy a GPO](deploy-a-gpo-agpm30ops.md) for additional detail.

### Additional references

-   [Configuring Advanced Group Policy Management](configuring-advanced-group-policy-management.md)

 

 





