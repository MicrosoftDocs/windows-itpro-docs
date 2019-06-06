---
title: Configure E-Mail Notification
description: Configure E-Mail Notification
author: mjcaparas
ms.assetid: 06f19556-f296-4a80-86a4-4f446c992204
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Configure E-Mail Notification


When an Editor or a Reviewer attempts to create, deploy, or delete a Group Policy Object (GPO), a request for this action is sent to a designated e-mail address or addresses so that an Approver can evaluate the request and implement or deny it. You determine the e-mail address or addresses to which notifications are sent, as well as the alias from which notifications are sent.

A user account with the AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To configure e-mail notification for AGPM**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  In the details pane, click the **Domain Delegation** tab.

3.  In the **From e-mail address** field, type the e-mail alias for AGPM from which notifications should be sent.

4.  In the **To e-mail address** field, type a comma-delimited list of e-mail addresses of Approvers who should receive requests for approval.

5.  In the **SMTP server** field, type a valid SMTP mail server.

6.  In the **User name** and **Password** fields, type the credentials of a user with access to the SMTP service.

7.  Click **Apply**.

### Additional considerations

-   By default, you must be an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and **Modify Options** permissions for the domain.

-   E-mail notification for AGPM is a domain-level setting. You can provide different Approver e-mail addresses or AGPM e-mail aliases on each domain's **Domain Delegation** tab, or use the same e-mail addresses throughout your environment.

-   By default, e-mail messages sent as a result of actions in Advanced Group Policy Management (AGPM) are not encrypted. However, you can configure e-mail security for AGPM using registry settings to specify whether to use Secure Sockets Layer (SSL) encryption and which SMTP port to use. For more information, see [Configure E-Mail Security for AGPM](configure-e-mail-security-for-agpm-agpm40.md).

### Additional references

-   [Configuring Advanced Group Policy Management](configuring-advanced-group-policy-management-agpm40.md)

 

 





