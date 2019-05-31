---
title: Troubleshooting Advanced Group Policy Management
description: Troubleshooting Advanced Group Policy Management
author: mjcaparas
ms.assetid: f7ece97c-e9f8-4b18-8c7a-a615c98d5c60
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


This section lists common issues that you may encounter when you use Advanced Group Policy Management (AGPM) to manage Group Policy Objects (GPOs). To diagnose issues not listed here, it may be helpful for an AGPM Administrator (Full Control) to use logging and tracing. For more information, see [Configure Logging and Tracing](configure-logging-and-tracing-agpm30ops.md).

**Note**  
-   For information about rolling back to an earlier version of a GPO if there are problems, see [Roll Back to a Previous Version of a GPO](roll-back-to-a-previous-version-of-a-gpo-agpm30ops.md).

-   For information about how to recover from a disaster by restoring the complete archive from a backup, see [Restore the Archive from a Backup](restore-the-archive-from-a-backup.md).

 

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

-   [An error occurred when I restored the archive to a new AGPM Server](#bkmk-error-on-restore)

### <a href="" id="bkmk-access-an-archive"></a>I am unable to access an archive

-   **Cause**: You have not selected the correct server and port for the archive.

-   **Solution**:

    -   If you are an AGPM Administrator: See [Configure AGPM Server Connections](configure-agpm-server-connections-agpm30ops.md).

    -   If you are not an AGPM Administrator: Request connection details for the AGPM Server from an AGPM Administrator. See [Configure an AGPM Server Connection](configure-an-agpm-server-connection-reviewer-agpm30ops.md).

-   **Cause**: The AGPM Service is not running.

-   **Solution**:

    -   If you are an AGPM Administrator: Start the AGPM Service. For more information, see [Start and Stop the AGPM Service](start-and-stop-the-agpm-service-agpm30ops.md).

    -   If you are not an AGPM Administrator: Contact an AGPM Administrator for assistance.

### <a href="" id="bkmk-state-varies"></a>The GPO state varies for different Group Policy administrators

-   **Cause**: Different Group Policy administrators have selected different AGPM Servers for the same archive.

-   **Solution**:

    -   If you are an AGPM Administrator: See [Configure AGPM Server Connections](configure-agpm-server-connections-agpm30ops.md).

    -   If you are not an AGPM Administrator: Request connection details for the AGPM Server from an AGPM Administrator. See [Configure an AGPM Server Connection](configure-an-agpm-server-connection-reviewer-agpm30ops.md).

### <a href="" id="bkmk-modify-archive-location"></a>I am unable to modify the AGPM Server connection

-   **Cause**: If the settings on the **AGPM Server** tab are unavailable, the AGPM Server has been centrally configured using an Administrative template.

-   **Solution**:

    -   If you are an AGPM Administrator: If the settings on the **AGPM Server** tab are unavailable, see [Configure AGPM Server Connections](configure-agpm-server-connections-agpm30ops.md).

    -   If you are not an AGPM Administrator: If the settings on the **AGPM Server** tab are unavailable, you do not need to modify the AGPM Server.

### <a href="" id="bkmk-perform-task"></a>I am unable to change the default template or view, create, edit, rename, deploy, or delete GPOs

-   **Cause**: You have not been assigned a role with the permissions required to perform the task or tasks.

-   **Solution**:

    -   If you are an AGPM Administrator: See [Delegate Domain-Level Access to the Archive](delegate-domain-level-access-to-the-archive-agpm30ops.md) and [Delegate Access to an Individual GPO in the Archive](delegate-access-to-an-individual-gpo-in-the-archive-agpm30ops.md). AGPM permissions will cascade from the domain to all GPOs currently in the archive. For details about which roles can perform a task and which permissions are necessary to perform a task, refer to the help for that task.

    -   If you are not an AGPM Administrator and you require additional roles or permissions: Contact an AGPM Administrator for assistance. Be aware that if you are an Editor, you can begin the process of creating a GPO, deploying a GPO, or deleting a GPO from the production environment, but an Approver or AGPM Administrator must approve your request.

### <a href="" id="bkmk-use-particular-name"></a>I am unable to use a particular GPO name

-   **Cause**: Either the GPO name is already in use or you lack permission to list the GPO.

-   **Solution**:

    -   If the GPO name appears on the **Controlled**, **Uncontrolled**, or **Pending** tab, choose another name. If a GPO that was deployed is renamed but not yet redeployed, it will be displayed under its old name in the production environment. Therefore, the old name is still being used. Redeploy the GPO to update its name in the production environment and release that name for use by another GPO.

    -   If the GPO name does not appear on the **Controlled**, **Uncontrolled**, or **Pending** tab, you may lack permission to list the GPO. To request permission, contact an AGPM Administrator.

### <a href="" id="bkmk-email"></a>I am not receiving AGPM e-mail notifications

-   **Cause**: A valid SMTP e-mail server and e-mail address has not been provided, or no action has been taken that generates an e-mail notification.

-   **Solution**:

    -   If you are an AGPM Administrator: For e-mail notifications about pending actions to be sent by AGPM, an AGPM Administrator must provide a valid SMTP e-mail server and e-mail addresses for Approvers on the **Domain Delegation** tab. For more information, see [Configure E-Mail Notification](configure-e-mail-notification-agpm30ops.md).

    -   E-mail notifications are generated only when an Editor, Reviewer, or other Group Policy administrator who lacks the permission necessary to create, deploy, or delete a GPO submits a request for one of those actions to occur. There is no automatic notification of approval or rejection of a request.

### <a href="" id="bkmk-port"></a>I cannot use port 4600 for the AGPM Service

-   **Cause**: By default, the port on which the AGPM Service listens is port 4600.

-   **Solution**: If port 4600 is not available for the AGPM Service, modify the port configuration on the AGPM Server to use another port and then update the port in the AGPM Server connection for AGPM Clients. For more information, see [Modify the AGPM Service](modify-the-agpm-service-agpm30ops.md).

### <a href="" id="bkmk-not-start"></a>The AGPM Service will not start

-   **Cause**: You have modified settings for the AGPM Service in the operating system under **Administrative Tools** and **Services**.

-   **Solution**: Modify the settings for **Microsoft Advanced Group Policy Management - Server** under **Programs and Features** in Control Panel. For more information, see [Modify the AGPM Service](modify-the-agpm-service-agpm30ops.md).

### <a href="" id="bkmk-software-installation"></a>Group Policy Software Installation fails to install software

-   **Cause**: AGPM preserves the integrity of Group Policy Software Installation packages. Although GPOs are edited offline, links between packages in addition to cached client information are preserved. This is by design.

-   **Solution**: When you edit a GPO offline with AGPM, configure any Group Policy Software Installation upgrade of a package in another GPO to reference the deployed GPO, not the checked-out copy. The Editor must have **Read** permission for the deployed GPO.

### <a href="" id="bkmk-error-on-restore"></a>An error occurred when I restored the archive to a new AGPM Server

-   **Cause**: For security reasons, the encryption protecting the password entered on the **Domain Delegation** tab causes the password to fail if the archive is moved to another computer.

-   **Solution**: Re-enter and confirm the password on the **Domain Delegation** tab. For more information, see [Configure E-Mail Notification](configure-e-mail-notification-agpm30ops.md).

 

 





