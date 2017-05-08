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

2. Fill out the required fields, including:

    - **Group name.** Select your group name.
    
    - **App name.** Provide the name of the app, search for the app, or add a new app name.

    - **Description.** Optionally, you can add a description about the app.

    - **Requested change.** 

    - **Reason for request.**

    - **Business impact (Optional).**

    - **App location (URL).** Provide the full URL to the app.

    - **App best viewed in.** Select the best browser or compatibility mode for this app.
 
    - **Is an X-UA tag used?** Choose either **Yes** or **No**, depending on whether the app uses the X-UA tag.

    A message appears that the request was successful, including a **Request ID** number, and saying that the change is being made to the pre-production environment site list.

3. The requester gets an email that includes:

    - A batch script, that when run, configures their test machine for the pre-production environment.
    
    - The necessary steps to make sure that the changed info is correct. 

        - **If the change is correct.** The Requester asks the approvers to approve the change request by selecting **Successful** and clicking **Send for approval**. 
        
        - **If the change is incorrect.** The Requester can rollback the change in pre-production or ask for help from the Administrator.


**To edit an existing change request** (start here, copied text for edit and delete, need to see actual screens)
1. The Requester (an employee that has been assigned the Requester role) signs into the Enterprise Mode Site List Portal, and clicks their active request.

2. Type blah into blah, and then click **Save and continue**.

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
