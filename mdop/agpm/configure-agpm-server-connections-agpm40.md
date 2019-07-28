---
title: Configure AGPM Server Connections
description: Configure AGPM Server Connections
author: mjcaparas
ms.assetid: bbbb15e8-35e7-403c-b695-7a6ebeb87839
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Configure AGPM Server Connections


All versions of each controlled Group Policy Object (GPO) are stored in a central archive so that Group Policy administrators can view and modify GPOs offline without immediately impacting the deployed version of each GPO.

A user account with the AGPM Administrator (Full Control) role, the user account of the Approver who created the GPO used in these procedures, or a user account with the necessary permissions in Advanced Group Policy Management (AGPM) is required to complete these procedures for centrally configuring archive locations for all Group Policy administrators. Review the details in "Additional considerations" in this topic.

## Configuring AGPM Server connections


As an AGPM Administrator, you can ensure that all Group Policy administrators connect to the same AGPM Server by centrally configuring the associated setting. If your environment requires separate AGPM Servers for some or all domains, configure those additional AGPM Servers as exceptions to the default. If you do not centrally configure AGPM Server connections, each Group Policy administrator must manually configure the AGPM Server to be displayed for each domain.

-   [Configure an AGPM Server connection for all Group Policy administrators](#bkmk-defaultarchiveloc)

-   [Configure additional AGPM Server connections for all Group Policy administrators](#bkmk-additionalarchiveloc)

-   [Manually configure an AGPM Server connection for your account](#bkmk-manuallyconfigurearchiveloc)

### <a href="" id="bkmk-defaultarchiveloc"></a>

**To configure an AGPM Server connection for all Group Policy administrators**

1.  In the **Group Policy Management Console** tree, edit a GPO that is applied to all Group Policy administrators. (For more information, see [Editing a GPO](editing-a-gpo-agpm40.md).)

2.  In the **Group Policy Management Editor** window, click **User Configuration**, **Policies**, **Administrative Templates**, **Windows Components**, and **AGPM**.

3.  In the details pane, double-click **AGPM: Specify default AGPM Server (all domains)**.

4.  In the **Properties** window, select the **Enabled** check box, and type the fully-qualified computer name and port (for example, server.contoso.com:4600).

5.  Click **OK**. Unless you want to configure additional AGPM Server connections, close the **Group Policy Management Editor** window and deploy the GPO. (For more information, see [Deploy a GPO](deploy-a-gpo-agpm40.md).) When Group Policy is updated, the AGPM Server connection is configured for all Group Policy administrators.

### <a href="" id="bkmk-additionalarchiveloc"></a>

**To configure additional AGPM Server connections for all Group Policy administrators**

1.  If no AGPM Server connection has been configured, follow the preceding procedure to configure a default AGPM Server for all domains.

2.  To configure separate AGPM Servers for some or all domains (overriding the default AGPM Server), in the **Group Policy Management Console** tree, edit a GPO that is applied to all Group Policy administrators. (For more information, see [Editing a GPO](editing-a-gpo-agpm40.md).)

3.  In the **Group Policy Management Editor** window, click **User Configuration**, **Policies**, **Administrative Templates**, **Windows Components**, and then **AGPM**.

4.  In the details pane, double-click **AGPM: Specify AGPM Servers**.

5.  In the **Properties** window, select the **Enabled** check box, and click **Show**.

6.  In the **Show Contents** window:

    1.  Click **Add**.

    2.  For **Value Name**, type the domain name (for example, server1.contoso.com).

    3.  For **Value**, type the AGPM Server name and port to use for this domain (for example, server2.contoso.com:4600), and then click **OK**. (By default, the AGPM Service listens on port 4600. To use a different port, see [Modify the AGPM Service](modify-the-agpm-service-agpm40.md).)

    4.  Repeat for each domain not using the default AGPM Server.

7.  Click **OK** to close the **Show Contents** and **Properties** windows.

8.  Close the **Group Policy Management Editor** window. (For more information, see [Deploy a GPO](deploy-a-gpo-agpm40.md).) When Group Policy is updated, the new AGPM Server connections are configured for all Group Policy administrators.

### <a href="" id="bkmk-manuallyconfigurearchiveloc"></a>

If you have centrally configured the AGPM Server connection, the option to manually configure it is unavailable for all Group Policy administrators.

**To manually configure which AGPM Server to display for your account**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  In the details pane, click the **AGPM Server** tab.

3.  Enter the fully-qualified computer name for the AGPM Server that manages the archive used for this domain (for example, server.contoso.com) and the port on which the AGPM Service listens (by default, port 4600).

4.  Click **Apply**, then click **Yes** to confirm.

### Additional considerations

-   You must be able to edit and deploy a GPO to perform the procedures for centrally configuring AGPM Server connections for all Group Policy administrators. See [Editing a GPO](editing-a-gpo-agpm40.md) and [Deploy a GPO](deploy-a-gpo-agpm40.md) for additional detail.

-   The selected AGPM Server determines which GPOs are displayed on the **Contents** tab and to what location the **Domain Delegation** tab settings are applied. If not centrally managed through the Administrative template, each Group Policy administrator must configure this setting to point to the AGPM Server for the domain.

-   Membership in the Group Policy Creator Owners group should be restricted, so it is not used to circumvent AGPM management of access to GPOs. (In the **Group Policy Management Console**, click **Group Policy Objects** in the forest and domain in which you want to manage GPOs, click **Delegation**, and then configure the settings to meet the needs of your organization.)

### Additional references

-   [Configuring Advanced Group Policy Management](configuring-advanced-group-policy-management-agpm40.md)

 

 





