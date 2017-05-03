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

## Role assignments and available actions
Admins can assign roles to employees for the Enterprise Mode Site List Portal, allowing the employees to perform specific actions, as described in this table.

|Role assignment |Available actions |
|----------------|------------------|
|Requestor |<ul><li>Create a change request</li><br><br><li>Validate changes in the pre-production environment</li><br><br><li>Rollback changes in case of failure</li><br><br><li>Send personal requests for approval</li><br><br><li>View personal requests</li><br><br><li>Sign off and close personal requests</li></ul> |
|Approver<br><br>(can also be the App Manager role or the Group Head role) |<ul><li>Approve requests from the assigned group</li><br><br><li>Validate changes in the pre-production environment</li><br><br><li>Rollback changes in case of failure</li><br><br><li>Send requests for approval</li><br><br><li>View personal requests</li><br><br><li>Sign off and close requests</li></ul> |
|Administrator |<ul><li>Add employees to the portal</li><br><br><li>Assign employee roles</li><br><br><li>Approve registrations to the portal</li><br><br><li>Configure portal settings (for example, determine the freeze schedule, determine the pre-production and production XML paths, and determine the attachment upload location)</li><br><br><li>Use the standalone Enterprise Mode Site List Manager page</li><br><br><li>View reports</li><br><br><li>Approve requests</li><br><br><li>Validate changes in the pre-production environment</li><br><br><li>Rollback changes in case of failure</li><br><br><li>Send requests for approval</li><br><br><li>View personal requests</li><br><br><li>Sign off and close requests</li><br><br><li>Rollback changes in the pre-production environment</li></ul> |

## Enterprise Mode Site List Portal workflow
The following workflow describes how to use the Enterprise Mode Site List Portal.

1. [A Requestor submits a change request](create-change-request-enterprise-mode-portal.md)

2. The change is verified against the pre-production site list.

3. [The Approvers group accepts the change request](approve-change-request-enterprise-mode-portal.md)

4. The change is scheduled for the production environment.

5. The change is verified against the production site list.

6. The change request is signed off and closed.
