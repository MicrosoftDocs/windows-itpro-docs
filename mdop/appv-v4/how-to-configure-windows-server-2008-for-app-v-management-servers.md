---
title: How to Configure Windows Server 2008 for App-V Management Servers
description: How to Configure Windows Server 2008 for App-V Management Servers
author: dansimp
ms.assetid: 38b4016f-de82-4209-9159-387d20ddee25
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Configure Windows Server 2008 for App-V Management Servers


The Windows Server 2008 server on which you install the Microsoft Application Virtualization (App-V) Management Web Service requires Internet Information Services (IIS) to be installed as a role on the server. Use the following procedure to configure Windows Server 2008 to support App-V server installation.

**To install IIS on a Windows Server 2008 computer**

1.  On the Windows Server 2008 computer, click **Start**, click **All Programs**, click **Administrative Tools**, and then click **Server Manager** to start Server Manager. In Server Manager, right-click the **Roles** node, and click **Add Roles** to start the **Add Roles Wizard**.

2.  In the **Add Roles Wizard**, on the **Select Server Roles** page, select **Web Server (IIS)**. When prompted, click **Add Required Features** to add the dependent features.

3.  On the **Select Server Roles** page, Click **Next**, and then click **Next** again.

4.  In the **Add Roles Wizard**, on the **Select Role Services** page:

    1.  Under **Application Development**, select **ASP.NET** and, when prompted, click **Add Required Role Services** to add the dependent roles services and features.

    2.  Under **Security**, select **Windows Authentication**.

    3.  In the **Management Tools** node, select **IIS Management Scripts and Tools**. Under **IIS 6 Management Compatibility**, ensure that both **IIS 6 Metabase Compatibility** and **IIS 6 WMI Compatibility** are selected, and then click **Next**.

5.  On the **Confirm Installation Selections** page, click **Install**, and then complete the rest of the wizard.

6.  Click **Close** to exit the **Add Roles Wizard**, and then close Server Manager.

## Related topics


[Application Virtualization Deployment Requirements](application-virtualization-deployment-requirements.md)

[Application Virtualization Deployment and Upgrade Checklists](application-virtualization-deployment-and-upgrade-checklists.md)

 

 





