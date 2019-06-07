---
title: How to Assign the Proper Credentials for Windows Vista
description: How to Assign the Proper Credentials for Windows Vista
author: dansimp
ms.assetid: cc11d2af-a350-4d16-ba7b-f9c1d89e14b4
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Assign the Proper Credentials for Windows Vista


Use the following procedure to configure the App-V Desktop Client for proper Windows Vista credentials.

**Note**  
This procedure must be completed on each non-domain joined computer. Depending on the number of non-domain joined computers in your environment, this could be a very tedious operation. You can use scripts and the command-line interface for Credential Manager to help administrators automate this process.

 

**To assign the proper credentials for App-V clients running Windows Vista**

1.  With administrator privileges on the App-V Desktop Client running Windows Vista, open the **User Accounts** control panel (Classic Control Panel).

2.  Select **Manage your network passwords** from **User Accounts** in the left tasks pane.

3.  Select **Add** on the **Stored User Names and Passwords** screen.

4.  On the **Stored Credential Properties** screen, provide the information for the App-V infrastructure:

    1.  **Log on to:** External name of the publishing server.

    2.  **User name:** User name for the external user in the form Domain\\Username.

    3.  **Password:** Password for the user account entered in the **User name** field.

    4.  Leave **Credential Type** selected, and click **OK**.

5.  Click **Close**. The credentials are stored in the credential store for proper authentication to the App-V infrastructure.

## Related topics


[Domain-Joined and Non-Domain-Joined Clients](domain-joined-and-non-domain-joined-clients.md)

[How to Assign the Proper Credentials for Windows XP](how-to-assign--the-proper-credentials-for-windows-xp.md)

 

 





