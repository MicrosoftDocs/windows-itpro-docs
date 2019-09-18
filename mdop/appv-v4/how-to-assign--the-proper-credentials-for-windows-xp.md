---
title: How to Assign the Proper Credentials for Windows XP
description: How to Assign the Proper Credentials for Windows XP
author: dansimp
ms.assetid: cddbd556-d8f9-4981-a947-6e8e3f552b70
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Assign the Proper Credentials for Windows XP


Use the following procedure to configure the App-V Desktop Client for proper Windows XP credentials.

**Note**  
After finishing this procedure, the non-domain joined client can perform a publishing refresh without being joined to a domain.

 

**To assign the proper credentials for App-V clients running Windows XP**

1.  With administrator privileges on the App-V Client running Windows XP, open the **User Accounts** control panel (Classic Control Panel).

2.  Click the **Advanced Tab**, and select **Manage Passwords**.

3.  On the **Stored User Names and Passwords** screen, click **Add**.

4.  On the **Logon Information Properties** screen, fill out the following fields with information from the App-V infrastructure:

    1.  **Server:** Name of publishing server external name.

    2.  **User name:** User name for external user in the form Domain\\username.

    3.  **Password:** Password for the user account entered in the **User name** field.

5.  Click **OK**. The credentials will be stored on the client.

## Related topics


[Domain-Joined and Non-Domain-Joined Clients](domain-joined-and-non-domain-joined-clients.md)

[How to Assign the Proper Credentials for Windows Vista](how-to-assign--the-proper-credentials-for-windows-vista.md)

 

 





