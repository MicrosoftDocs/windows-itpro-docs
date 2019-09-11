---
title: Configure the AGPM Server Connection
description: Configure the AGPM Server Connection
author: dansimp
ms.assetid: 9a42b5bc-41be-44ef-a6e2-6f56e2cf1996
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Configure the AGPM Server Connection


Advanced Group Policy Management (AGPM) stores all versions of each controlled Group Policy object (GPO) in a central archive, so Group Policy administrators can view and modify GPOs offline without immediately impacting the deployed version of each GPO.

A user account with the AGPM Administrator (Full Control) role, the user account of the Approver who created the GPO used in these procedures, or a user account with the necessary permissions in Advanced Group Policy Management is required to complete these procedures for centrally configuring archive locations for all Group Policy administrators. Review the details in "Additional considerations" in this topic.

## Configuring the AGPM Server connection


As an AGPM Administrator (Full Control), you can ensure that all Group Policy administrators connect to the same AGPM Server by centrally configuring the setting. If your environment requires separate AGPM Servers for some or all domains, configure those additional AGPM Servers as exceptions to the default. If you do not centrally configure AGPM Server connections, each Group Policy administrator must manually configure the AGPM Server to be displayed for each domain.

-   [Configure an AGPM Server for all Group Policy administrators](#bkmk-defaultarchiveloc)

-   [Configure additional AGPM Servers for all Group Policy administrators](#bkmk-additionalarchiveloc)

-   [Manually configure an AGPM Server for your account](#bkmk-manuallyconfigurearchiveloc)

### <a href="" id="bkmk-defaultarchiveloc"></a>

**To configure an AGPM Server for all Group Policy administrators**

1.  In the **Group Policy Management Console** tree, edit a GPO that is applied to all Group Policy administrators. (For more information, see [Editing a GPO](editing-a-gpo.md).)

2.  In the **Group Policy Object Editor**, click **User Configuration**, **Administrative Templates**, and **Windows Components**.

3.  If **AGPM** is not listed under **Windows Components**:

    1.  Right-click **Administrative Templates** and click **Add/Remove Templates**.

    2.  Click **Add**, select **agpm.admx** or **agpm.adm**, click **Open**, and then click **Close**.

4.  Under **Windows Components**, double-click **AGPM**.

5.  In the details pane, double-click **AGPM Server (all domains)**.

6.  In the **AGPM Server (all domains) Properties** window, select the **Enabled** check box, and type the fully-qualified computer name and port (for example, server.contoso.com:4600).

7.  Click **OK**. Unless you want to configure additional AGPM Server connections, close the **Group Policy Object Editor** and deploy the GPO. (For more information, see [Deploy a GPO](deploy-a-gpo.md).) When Group Policy is updated, the AGPM Server connection is configured for all Group Policy administrators.

### <a href="" id="bkmk-additionalarchiveloc"></a>

**To configure additional AGPM Servers for all Group Policy administrators**

1.  If no AGPM Server connection has been configured, follow the preceding procedure to configure a default AGPM Server for all domains.

2.  To configure separate AGPM Servers for some or all domains (overriding the default AGPM Server), in the **Group Policy Management Console** tree, edit a GPO that is applied to all Group Policy administrators. (For more information, see [Editing a GPO](editing-a-gpo.md).)

3.  Under **User Configuration** in the **Group Policy Object Editor**, double-click **Administrative Templates**, **Windows Components**, and then **AGPM**.

4.  In the details pane, double-click **AGPM Server**.

5.  In the **AGPM Server Properties** window, select the **Enabled** check box, and click **Show**.

6.  In the **Show Contents** window:

    1.  Click **Add**.

    2.  For **Value Name**, type the domain name (for example, server1.contoso.com).

    3.  For **Value**, type the AGPM Server name and port to use for this domain (for example, server2.contoso.com:4600), and then click **OK**. (By default, the AGPM Service listens on port 4600. To use a different port, see [Modify the Port on Which the AGPM Service Listens](modify-the-port-on-which-the-agpm-service-listens.md).)

    4.  Repeat for each domain not using the default AGPM Server.

7.  Click **OK** to close the **Show Contents** and **AGPM Server Properties** windows.

8.  Close the **Group Policy Object Editor**. (For more information, see [Deploy a GPO](deploy-a-gpo.md).) When Group Policy is updated, the new AGPM Server connections are configured for all Group Policy administrators.

### <a href="" id="bkmk-manuallyconfigurearchiveloc"></a>

If you have centrally configured the AGPM Server connection, the option to manually it is unavailable for all Group Policy administrators.

**To manually configure the AGPM Server to display for your account**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  In the details pane, click the **AGPM Server** tab.

3.  Enter the fully-qualified computer name for the AGPM Server that manages the archive used for this domain (for example, server.contoso.com) and the port on which the AGPM Service listens (by default, port 4600).

4.  Click **Apply**, then click **Yes** to confirm.

### Additional considerations

-   You must be able to edit and deploy a GPO to perform the procedures for centrally configuring AGPM Server connections for all Group Policy administrators. See [Editing a GPO](editing-a-gpo.md) and [Deploy a GPO](deploy-a-gpo.md) for additional detail.

-   The AGPM Server selected determines which GPOs are displayed on the **Contents** tab and to what location the **Domain Delegation** tab settings are applied. If not centrally managed through the Administrative Template, each Group Policy administrator must configure this setting to point to the AGPM Server for the domain.

-   Membership in the Group Policy Creator Owners group should be restricted so that it is not used to circumvent the management of access to GPOs by AGPM. (In the **Group Policy Management Console**, click **Group Policy Objects** in the forest and domain in which you want to manage GPOs, click **Delegation**, and then configure the settings to meet the needs of your organization.)

### Additional references

-   [Performing AGPM Administrator Tasks](performing-agpm-administrator-tasks.md)

 

 





