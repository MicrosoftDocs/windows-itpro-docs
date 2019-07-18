---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Use the topics in this section to learn about how to use the Enterprise Mode Site List Portal.
ms.prod: ie11
title: Use the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
ms.reviewer: 
manager: dansimp
ms.author: lomayor
author: lomayor
---

# Use the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Enterprise Mode is a compatibility mode that runs on Internet Explorer 11, letting websites render using a modified browser configuration that’s designed to emulate either Windows Internet Explorer 8 or Windows Internet Explorer 7, avoiding the common compatibility problems associated with web apps written and tested on older versions of Internet Explorer.

The Enterprise Mode Site List Portal is an open-source web tool on GitHub that allows you to manage your Enterprise Mode Site List, hosted by the app, with multiple users. The portal is designed to use IIS and a SQL Server backend, leveraging Active Directory (AD) for employee management. Updates to your site list are made by submitting new change requests, which are then approved by a designated group of people, put into a pre-production environment for testing, and then deployed immediately, or scheduled for deployment later.

You can use IE11 and the Enterprise Mode Site List Portal to manage your Enterprise Mode Site List, hosted by the app, with multiple users.

## Minimum system requirements for portal and test machines
Some of the components in this table might also need additional system resources. Check the component's documentation for more information.

|Item |Description |
|-----|------------|
|Operating system |Windows 7 or later |
|Memory |16 GB RAM |
|Hard drive space |At least 8 GB of free space, formatted using the NTFS file system for better security |
|Active Directory (AD) |Devices must be domain-joined |
|SQL Server |Microsoft SQL Server Enterprise Edition 2012 or later |
|Visual Studio |Visual Studio 2015 or later |
|Node.js® package manager |npm Developer version or higher |
|Additional server infrastructure |Internet Information Service (IIS) 6.0 or later |

## Role assignments and available actions
Admins can assign roles to employees for the Enterprise Mode Site List Portal, allowing the employees to perform specific actions, as described in this table.

|Role assignment |Available actions |
|----------------|------------------|
|Requester |<ul><li>Create a change request</li><br><br><li>Validate changes in the pre-production environment</li><br><br><li>Rollback pre-production and production changes in case of failure</li><br><br><li>Send approval requests</li><br><br><li>View own requests</li><br><br><li>Sign off and close own requests</li></ul> |
|Approver<br><br>(includes the App Manager and Group Head roles) |<ul><li>All of the Requester actions, plus:</li><br><br><li>Approve requests</li></ul> |
|Administrator |<ul><li>All of the Requester and Approver actions, plus:</li><br><br><li>Add employees to the portal</li><br><br><li>Assign employee roles</li><br><br><li>Approve registrations to the portal</li><br><br><li>Configure portal settings (for example, determine the freeze schedule, determine the pre-production and production XML paths, and determine the attachment upload location)</li><br><br><li>Use the standalone Enterprise Mode Site List Manager page</li><br><br><li>View reports</li></ul> |

## Enterprise Mode Site List Portal workflow by employee role
The following workflow describes how to use the Enterprise Mode Site List Portal.

1. [The Requester submits a change request for an app](create-change-request-enterprise-mode-portal.md)

2. [The Requester tests the change request info, verifying its accuracy](verify-changes-preprod-enterprise-mode-portal.md)

3. [The Approver(s) group accepts the change request](approve-change-request-enterprise-mode-portal.md)

4. [The Requester schedules the change for the production environment](schedule-production-change-enterprise-mode-portal.md)

5. [The change is verified against the production site list and signed off](verify-changes-production-enterprise-mode-portal.md)


## Related topics
- [Set up the Enterprise Mode Site List Portal](set-up-enterprise-mode-portal.md)

- [Workflow-based processes for employees using the Enterprise Mode Site List Portal](workflow-processes-enterprise-mode-portal.md)

- [How to use the Enterprise Mode Site List Manager tool or page](use-the-enterprise-mode-site-list-manager.md) 

- [Enterprise Mode Site List Portal source code](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal)

- [Enterprise Mode and the Enterprise Mode Site List](what-is-enterprise-mode.md)
 

 



