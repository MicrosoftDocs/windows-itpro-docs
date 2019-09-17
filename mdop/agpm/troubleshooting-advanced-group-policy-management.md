---
title: Troubleshooting Advanced Group Policy Management
description: Troubleshooting Advanced Group Policy Management
author: dansimp
ms.assetid: f58849cf-6c5b-44d8-b356-0ed7a5b24cee
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Troubleshooting Advanced Group Policy Management


This section lists a few common issues you may encounter when using Advanced Group Policy Management (AGPM) to manage Group Policy objects (GPOs).

## What problems are you having?


-   [I am unable to access an archive](#bkmk-access-an-archive)

-   [The GPO state varies for different Group Policy administrators](#bkmk-state-varies)

-   [I am unable to modify the AGPM Server connection](#bkmk-modify-archive-location)

-   [I am unable to change the default template or view, create, edit, rename, deploy, or delete GPOs](#bkmk-perform-task)

-   [I am unable to use a particular GPO name](#bkmk-use-particular-name)

-   [I am not receiving AGPM e-mail notifications](#bkmk-email)

-   [I cannot use port 4600 for the AGPM Service](#bkmk-port)

-   [The AGPM Service will not start](#bkmk-not-start)

-   [Group Policy Software Installation fails to install software](#bkmk-software-installation)

### <a href="" id="bkmk-access-an-archive"></a>I am unable to access an archive

-   **Cause**: You have not selected the correct server and port for the archive.

-   **Solution**:

    -   If you are an AGPM Administrator: See [Configure the AGPM Server Connection](configure-the-agpm-server-connection.md).

    -   If you are not an AGPM Administrator: Request connection details for the AGPM Server from an AGPM Administrator. See [Configure the AGPM Server Connection](configure-the-agpm-server-connection-reviewer.md).

-   **Cause**: The Advanced Group Policy Management Service is not running.

-   **Solution**:

    -   If you are an AGPM Administrator: Start the AGPM Service. For more information, see [Start and Stop the AGPM Service](start-and-stop-the-agpm-service.md).

    -   If you are not an AGPM Administrator: Contact an AGPM Administrator for assistance.

### <a href="" id="bkmk-state-varies"></a>The GPO state varies for different Group Policy administrators

-   **Cause**: Different Group Policy administrators have selected different AGPM Servers for the same archive.

-   **Solution**:

    -   If you are an AGPM Administrator: See [Configure the AGPM Server Connection](configure-the-agpm-server-connection.md).

    -   If you are not an AGPM Administrator: Request connection details for the AGPM Server from an AGPM Administrator. See [Configure the AGPM Server Connection](configure-the-agpm-server-connection-reviewer.md).

### <a href="" id="bkmk-modify-archive-location"></a>I am unable to modify the AGPM Server connection

-   **Cause**: If the settings on the **AGPM Server** tab are unavailable, the AGPM Server has been centrally configured using an Administrative template.

-   **Solution**:

    -   If you are an AGPM Administrator: If the settings on the **AGPM Server** tab are unavailable, see [Configure the AGPM Server Connection](configure-the-agpm-server-connection.md).

    -   If you are not an AGPM Administrator: If the settings on the **AGPM Server** tab are unavailable, you do not need to modify the AGPM Server.

### <a href="" id="bkmk-perform-task"></a>I am unable to change the default template or view, create, edit, rename, deploy, or delete GPOs

-   **Cause**: You have not been assigned a role with the permissions required to perform the task or tasks.

-   **Solution**:

    -   If you are an AGPM Administrator: See [Delegate Domain-Level Access](delegate-domain-level-access.md) and [Delegate Access to an Individual GPO](delegate-access-to-an-individual-gpo.md). AGPM permissions will cascade from the domain to all GPOs currently in the archive. As new Group Policy administrators are added at the domain level, their permissions must be set to apply to **This object and nested objects**. For details about which roles can perform a task and what permissions are necessary to perform a task, refer to the help for that task.

    -   If you are not an AGPM Administrator and you require additional roles or permissions: Contact an AGPM Administrator for assistance. Note that if you are an Editor, you can begin the process of creating a GPO, deploying a GPO, or deleting a GPO from the production environment, but an Approver or AGPM Administrator must approve your request.

### <a href="" id="bkmk-use-particular-name"></a>I am unable to use a particular GPO name

-   **Cause**: Either the GPO name is already in use or you lack permission to list the GPO.

-   **Solution**:

    -   If the GPO name appears on the **Controlled**, **Uncontrolled**, or **Pending** tab, choose another name. If a GPO that has been deployed is renamed but not yet redeployed, it will be displayed under its old name in the production environment—therefore, the old name is still in use. Redeploy the GPO to update its name in the production environment and release that name for use by another GPO.

    -   If the GPO name does not appear on the **Controlled**, **Uncontrolled**, or **Pending** tab, you may lack permission to list the GPO. To request permission, contact an AGPM Administrator.

### <a href="" id="bkmk-email"></a>I am not receiving AGPM e-mail notifications

-   **Cause**: A valid SMTP e-mail server and e-mail address has not been provided, or no action has been taken that generates an e-mail notification.

-   **Solution**:

    -   If you are an AGPM Administrator: For e-mail notifications about pending actions to be sent by AGPM, an AGPM Administrator must provide a valid SMTP e-mail server and e-mail addresses for Approvers on the **Domain Delegation** tab. For more information, see [Configure E-Mail Notification](configure-e-mail-notification.md).

    -   E-mail notifications are generated only when an Editor, Reviewer, or other Group Policy administrator who lacks the permission necessary to create, deploy, or delete a GPO submits a request for one of those actions to occur. There is no automatic notification of approval or rejection of a request.

### <a href="" id="bkmk-port"></a>I cannot use port 4600 for the AGPM Service

-   **Cause**: By default, the port on which the AGPM Service listens is port 4600.

-   **Solution**: If port 4600 is not available for the AGPM Service, modify each archive index file to use another port and then update the AGPM Server for all Group Policy administrators. For more information, see [Modify the Port on Which the AGPM Service Listens](modify-the-port-on-which-the-agpm-service-listens.md).

### <a href="" id="bkmk-not-start"></a>The AGPM Service will not start

-   **Cause**: You have modified settings for the AGPM Service in the operating system under **Administrative Tools** and **Services**.

-   **Solution**: Modify the settings for **Microsoft Advanced Group Policy Management - Server** under **Add or Remove Programs**. For more information, see [Modify the AGPM Service Account](modify-the-agpm-service-account.md).

### <a href="" id="bkmk-software-installation"></a>Group Policy Software Installation fails to install software

-   **Cause**: AGPM preserves the integrity of Group Policy Software Installation packages. Although GPOs are edited offline, links between packages as well as cached client information are preserved. This is by design.

-   **Solution**: When editing a GPO offline with AGPM, configure any Group Policy Software Installation upgrade of a package in another GPO to reference the deployed GPO, not the checked-out copy. The Editor must have **Read** permission for the deployed GPO.

 

 





