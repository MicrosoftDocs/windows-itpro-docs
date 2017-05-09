---
localizationpriority: low
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Details about how to create a change request within the Enterprise Mode Site List Portal.
author: eross-msft
ms.prod: ie11
title: Create a change request using the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
---

# Create a change request using the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Employees assigned to the Requester role all have the ability to create a change request. A change request is used to tell the Approvers and the Administrator that a website needs to be added or removed from the Enterprise Mode Site List. The employee can navigate to each stage of the process by using the workflow links provided at the top of each page of the portal.

>[!Important]
>Each requester must have a test machine that lets them use the pre-production environment to ensure that the requested change is correct. 

**To create a new change request**
1. The Requester (an employee that has been assigned the Requester role) signs into the Enterprise Mode Site List Portal, and clicks **Create new request**.

   The **Create new request** screen appears.

2. Fill out all of the required fields, based on your group and the app, including:

    - **Group name.** Select the name of your group from the dropdown box.
    
    - **App name.** Type the name of the app you want to add, delete, or update in the Enterprise Mode Site List.

        - **Search all apps.** If you can't remember the name of your app, you can click **Search all apps** and search the list.

        - **Add new app.** If your app isn't listed, you can click **Add new app** to add it to the list.

    - **Requested by.** Automatically filled in with your name.

    - **Description.** An optional area where you can add descriptive info about the app.

    - **Requested change.** Select whether you want to **Add to EMIE**, **Delete from EMIE**, or **Update to EMIE**.

    - **Reason for request.** Select the best reason for why you want to update, delete, or add the app.

    - **Business impact (optional).** An optional area where you can provide info about the business impact of this app and the change.

    - **App location (URL).** The full URL location to the app, starting with http:// or https://.

    - **App best viewed in.** Select the best browser experience for the app. This can be Internet Explorer 5 through Internet Explorer 11 or one of the IE7Enterprise or IE8Enterprise modes.

    - **Is an x-ua tag used?** Select **Yes** or **No** whether an x-ua-compatible tag is used by the app. For more info about x-ua-compatible tags, see the topcis in [Defining document compatibility](https://msdn.microsoft.com/en-us/library/cc288325(v=vs.85).aspx).
    
4. Click **Save and continue** to save your request and get the app info sent to the pre-production environment site list for testing.
    
    A message appears that the request was successful, including a **Request ID** number, saying that the change is being made to the pre-production environment site list.

5. The Requester gets an email with a batch script, that when run, configures their test machine for the pre-production environment, along with the necessary steps to make sure the changed info is correct.

    - **If the change is correct.** The Requester asks the approvers to approve the change request by selecting **Successful** and clicking **Send for approval**.
        
    - **If the change is incorrect.** The Requester can rollback the change in pre-production or ask for help from the Administrator.


**To edit an existing change request**
1. The Requester (an employee that has been assigned the Requester role) signs into the Enterprise Mode Site List Portal, and clicks the **Request ID** for their active request.

2. Update any of the info, and then click **Save and continue**.

    A message appears that the request was successful, including a **Request ID** number, and saying that the change is being made to the pre-production environment site list.

3. The requester gets an email that includes:

    - A batch script, that when run, configures the test machine for the pre-production environment.
    
    - The necessary steps to make sure that the changed info is correct. 

        - **If the change is correct.** The Requester asks the approvers to approve the change request by selecting **Successful** and clicking **Send for approval**. 
        
        - **If the change is incorrect.** The Requester can rollback the change in pre-production or ask for help from the Administrator.


**To delete an unapproved or no longer relevant change request**
1. The Requester (an employee that has been assigned the Requester role) signs into the Enterprise Mode Site List Portal, and clicks **Create new request**.

2. Update any of the request fields, and then click **Save and continue**.

    A message appears that the update was successful, including a **Request ID** number, and saying that the change is being made to the pre-production environment site list.

3. The requester gets an email that includes:

    - A batch script, that when run, configures the test machine for the pre-production environment.
    
    - The necessary steps to make sure that the changed info is correct. 

        - **If the change is correct.** The Requester asks the approvers to approve the change request by selecting **Successful** and clicking **Send for approval**. 
        
        - **If the change is incorrect.** The Requester can rollback the change in pre-production or ask for help from the Administrator.
