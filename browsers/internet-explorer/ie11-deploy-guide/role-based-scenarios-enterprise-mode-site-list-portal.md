---
localizationpriority: low
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Details about what each user-assigned role can do on the Enterprise Mode Site List Portal.
author: eross-msft
ms.prod: ie11
title: Role-based scenarios for the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
---

# Role-based scenarios for the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

The Enterprise Mode Site List Portal is an open-source web tool on GitHub that allows you to manage your Enterprise Mode Site List, hosted by the app, with multiple users. The portal is designed to use IIS and a SQL Server backend, leveraging Active Directory (AD) for employee management. Updates to your site list are made by submitting new change requests, which are then approved by a designated group of people, put into a pre-production environment for testing, and then deployed immediately, or scheduled for deployment later.

Role operations
Requester role
An employee with a role of Requester will be able to perform the following operations:
Create a change request
Validate change with the pre-production environment
Roll back change in case of failure
Send request for approval
View requests created by himself/herself
Sign off and close request
Creating a change request
The employee signs into the portal with a Requester role and navigates to the Create new request page.
After filling at least all the mandatory fields, the employee clicks Save and continue.
A success message with the Request ID will be displayed, and the change request will be made to the pre-production site list.
An e-mail notification is sent with next steps.
The employee will have to set up a test machine to verify the change with the pre-production environment. The detailed steps for verification are sent with the e-mail notification, along with a batch script for configuration.
If the validation passes, the employee will send the change request for approval by selecting Successful and clicking Send for approval.
If the validation fails, the employee can roll back the change in pre-production or ask for help from an administrator.
The employee can navigate to each stage of the ticket using the workflow links provided at the top of the page.
Scheduling a production change
The employee can see who has approved his/her request. A reminder can be sent to those who have not yet approved the change.
Once everyone has approved, the employee can schedule the production change.
The production change can be made immediately, or set for a future date. To make the change immediately, the employee will click Now then Save. To schedule for a future date, the employee will click Schedule and choose the desired date and time, then click Save.
Following the production change, another round of validation will take place for the production environment.
If validation passes, the employee can sign off.
If validation fails, the employee can contact an administrator for help.
Approver role
An employee with a role of App Manager or Group Head will be able to perform the following operations:
Approve requests for his/her group
Validate change with the pre-production environment
Roll back change in case of failure
Send request for approval
View requests created by himself/herself
Sign off and close request
Approving a change request
An e-mail will be sent to the list of approvers.
After signing in, the employee will land on the My approvals page, or can navigate to the page by clicking Approvals pending in the sidebar.
The employee can select individual ticket IDs and verify the information provided in the change request.
The employee can approve or reject the ticket.
An e-mail will be sent to the Requester, Approvers, and Administrators with the status of the ticket.
The employee can also view the status of other tickets in his/her group by clicking the In progress, Closed, and Rolled back links in the sidebar.
Administrator role
An employee with a role of Administrator will be able to perform the following operations:
Add employees to the portal
Assign roles to employees
Approve registrations to the portal
Configure portal settings (e.g. set freeze schedule, set pre-production and production XML paths, set attachment upload location, etc.)
Use the Enterprise Mode Site List Manager standalone page
View reports
Approve requests
Validate change with the pre-production environment
Roll back change in case of failure
Send request for approval
View requests created by himself/herself
Sign off and close request
Roll back changes in pre-production
If validation fails in pre-production, the Requester will have sent failure details to the administrators.
The employee can click Roll back to roll back the changes in pre-production.
Once the request has been rolled back, the Requester can re-submit the ticket.
Roll back changes in production
Once a production change has been made, an e-mail will be sent asking for sign-off.
The Requester will navigate to the Production validation page for that ticket.
If the verification fails in production, the Requester will report the failure details. Screenshots or any relevant attachments can be uploaded with the details.
The employee can click Roll back to roll back the changes in production.
The change will be appropriately handled in the production site list.
Grant access to the portal
When a request to gain access to the portal is submitted, an e-mail will be sent to the administrators.
In the Employee management page, select the individual employee and click Edit.
Approve the request by checking Active, then click Save.
An administrator can also add the employee to the portal by clicking Add a new employee .
An administrator can deactivate an account by un-checking Active on the Edit employee page.
Configure the settings
Navigate to the Settings page.
The employee can update the pre-production and production XMLs, as well as the attachments location, by providing the appropriate credentials to access the file paths.
The freeze dates define a window of time in which no changes can be made to the production site list.
A new group can be created by clicking Group details and filling out the fields in the Add group tab. An existing group can be edited by filling out the fields in the Edit group tab on that same screen.
The role names for App Manager and Group Head can be renamed by clicking the edit icon next to their name. You can also toggle whether that role is required for approvals on that same screen by checking/un-checking Mandatory.