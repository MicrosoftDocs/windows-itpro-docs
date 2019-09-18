---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Details about how to create a change request within the Enterprise Mode Site List Portal.
author: lomayor
ms.prod: ie11
title: Create a change request using the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
---

# Create a change request using the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Employees assigned to the Requester role can create a change request. A change request is used to tell the Approvers and the Administrator that a website needs to be added or removed from the Enterprise Mode Site List. The employee can navigate to each stage of the process by using the workflow links provided at the top of each page of the portal.

>[!Important]
>Each Requester must have access to a test machine with Administrator rights, letting him or her get to the pre-production environment to make sure that the requested change is correct. 

**To create a new change request**
1. The Requester (an employee that has been assigned the Requester role) signs into the Enterprise Mode Site List Portal, and clicks **Create new request**.

   The **Create new request** page appears.

2. Fill out the required fields, based on the group and the app, including:

    - **Group name.** Select the name of your group from the dropdown box.
    
    - **App name.** Type the name of the app you want to add, delete, or update in the Enterprise Mode Site List.

        - **Search all apps.** If you can't remember the name of your app, you can click **Search all apps** and search the list.

        - **Add new app.** If your app isn't listed, you can click **Add new app** to add it to the list.

    - **Requested by.** Automatically filled in with your name.

    - **Description.** Add descriptive info about the app.

    - **Requested change.** Select whether you want to **Add to EMIE**, **Delete from EMIE**, or **Update to EMIE**.

    - **Reason for request.** Select the best reason for why you want to update, delete, or add the app.

    - **Business impact (optional).** An optional area where you can provide info about the business impact of this app and the change.

    - **App location (URL).** The full URL location to the app, starting with https:// or https://.

    - **App best viewed in.** Select the best browser experience for the app. This can be Internet Explorer 5 through Internet Explorer 11 or one of the IE7Enterprise or IE8Enterprise modes.

    - **Is an x-ua tag used?** Select **Yes** or **No** whether an x-ua-compatible tag is used by the app. For more info about x-ua-compatible tags, see the topics in [Defining document compatibility](https://msdn.microsoft.com/library/cc288325(v=vs.85).aspx).
    
4. Click **Save and continue** to save the request and get the app info sent to the pre-production environment site list for testing.
    
    A message appears that the request was successful, including a **Request ID** number, saying that the change is being made to the pre-production environment site list.

5. The Requester gets an email with a batch script, that when run, configures their test machine for the pre-production environment, along with the necessary steps to make sure the changed info is correct.

    - **If the change is correct.** The Requester asks the approvers to approve the change request by selecting **Successful** and clicking **Send for approval**.
        
    - **If the change is incorrect.** The Requester can rollback the change in pre-production or ask for help from the Administrator.

## Next steps
After the change request is created, the Requester must make sure the suggested changes work in the pre-production environment. For these steps, see the [Verify your changes using the Enterprise Mode Site List Portal](verify-changes-preprod-enterprise-mode-portal.md) topic.
